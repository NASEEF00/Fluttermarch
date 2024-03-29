import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( Myappp());
}

class Myappp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(debugShowCheckedModeBanner: false,
   theme: ThemeData(primarySwatch: Colors.teal),
   home: const FirebaseHomePage(),);
  }
}
class FirebaseHomePage extends StatefulWidget {
  const FirebaseHomePage({Key? key}) : super(key: key);

  @override
  State<FirebaseHomePage> createState() => _FirebaseHomePageState();
}

class _FirebaseHomePageState extends State<FirebaseHomePage> {

  FirebaseStorage storage =  FirebaseStorage.instance;

  Future<void> _upload(String inputSource)async{
    final picker = ImagePicker();
    XFile? pickedImage;

    try {
      pickedImage = await picker.pickImage(
          source: inputSource == 'camera'
              ? ImageSource.camera
              : ImageSource.gallery,
          maxWidth: 1920);

      final String fileName = path.basename(pickedImage!.path);
      File imageFile = File(pickedImage.path);

      try {

        await storage.ref(fileName).putFile(
            imageFile,
            SettableMetadata(
                customMetadata: {
                  'uploaded_by': 'Naseef',
                  'description': 'decription......'
                }));

        setState(() {});

      } on FirebaseException catch (error) {
        if (kDebugMode) {
          print(error);
        }
      }
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
    }

  }

  Future<List<Map<String, dynamic>>> _loadImages() async {
    List<Map<String, dynamic>> files = [];

    final ListResult result = await storage.ref().list();
    final List<Reference> allFiles = result.items;

    await Future.forEach<Reference>(allFiles, (file) async {
      final String fileUrl = await file.getDownloadURL();
      final FullMetadata fileMeta = await file.getMetadata();

      files.add({
        "url": fileUrl,
        "path": file.fullPath,
        "uploaded_by": fileMeta.customMetadata?['uploaded_by'] ?? 'Nobody',
        "description": fileMeta.customMetadata?['description'] ?? 'No description'
      });
    });

    return files;
  }

  Future<void> _delete(String ref) async {
    await storage.ref(ref).delete();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FireBase'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    onPressed: () => _upload('camera'),
                    icon: const Icon(Icons.camera),
                    label: const Text('camera')),
                ElevatedButton.icon(
                    onPressed: () => _upload('gallery'),
                    icon: const Icon(Icons.library_add),
                    label: const Text('Gallery')),
              ],
            ),
            Expanded(
              child: FutureBuilder(
                future: _loadImages(),
                builder: (context,
                    AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        final Map<String, dynamic> image =
                        snapshot.data![index];

                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            dense: false,
                            leading: Image.network(image['url']),
                            title: Text(image['uploaded_by']),
                            subtitle: Text(image['description']),
                            trailing: IconButton(
                              onPressed: () => _delete(image['path']),
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
