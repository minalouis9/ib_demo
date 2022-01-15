import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/helpers/helpers_index.dart';
import 'package:ib_demo/models/models_index.dart';
import 'package:ib_demo/providers/providers_index.dart';
import 'package:ib_demo/widgets/widgets_index.dart';

class AddMovieScreen extends StatefulWidget {
  const AddMovieScreen({Key? key}) : super(key: key);

  @override
  State<AddMovieScreen> createState() => _AddMovieScreenState();
}

class _AddMovieScreenState extends State<AddMovieScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController(),
      _overviewController = TextEditingController(),
      _dateController = TextEditingController();
  String? poster;
  late DateTime? date;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () async {
                              poster =
                                  await ImagePickerHelper.cameraImagePicker()
                                      .whenComplete(() {
                                setState(() {});
                                Navigator.pop(context);
                              });
                            },
                            icon: const Icon(Icons.add_a_photo_outlined),
                          ),
                          IconButton(
                            onPressed: () async {
                              poster =
                                  await ImagePickerHelper.galleryImagePicker()
                                      .whenComplete(() {
                                setState(() {});
                                Navigator.pop(context);
                              });
                            },
                            icon: const Icon(Icons.image_outlined),
                          ),
                        ],
                      ),
                    );
                  }).whenComplete(() {});
            },
            icon: const Icon(Icons.add_a_photo_outlined),
          ),
        ],
      ),
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final movies = ref.watch(myMoviesProvider);
          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  if (poster != null)
                    Container(
                      height: 250.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: FileImage(File(poster!)), fit: BoxFit.cover),
                      ),
                    ),
                  const SizedBox(height: 15.0),
                  CTextFiledForm(
                    fieldController: _titleController,
                    label: 'Title',
                  ),
                  const SizedBox(height: 15.0),
                  CTextFiledForm(
                      fieldController: _overviewController, label: 'Overview'),
                  const SizedBox(height: 15.0),
                  CTextFiledForm(
                    fieldController: _dateController,
                    label: 'Date',
                    readOnly: true,
                    suffixIcon: IconButton(
                        onPressed: () {
                          DatePicker.showDateTimePicker(context,
                              onConfirm: (DateTime value) {
                            setState(() {
                              date = value;
                              _dateController.text = value
                                  .toIso8601String()
                                  .replaceAll('T', '\n')
                                  .split('.')[0];
                            });
                          });
                        },
                        icon: const Icon(Icons.date_range_outlined)),
                  ),
                  const SizedBox(height: 15.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(55.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        movies
                            .addMovie(
                                movie: MovieModel(
                                    id: Random().nextInt(10000),
                                    title: _titleController.text,
                                    overview: _titleController.text,
                                    poster: poster!,
                                    date: date!))
                            .then((value) {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    title: const Text(
                                      'Movie added',
                                      textAlign: TextAlign.center,
                                    ),
                                    actionsAlignment: MainAxisAlignment.center,
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Confirm'),
                                      )
                                    ],
                                  ));
                        });
                      }
                    },
                    child: const Text('Add Movie'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
