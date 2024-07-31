

import 'package:trix_score/core/imports/app_imports.dart';

class HiveArchiveDataModelAdapter extends TypeAdapter<HiveArchiveDataModel> {
  @override
  final int typeId = 3; // Replace with a unique identifier for this type

  @override
  HiveArchiveDataModel read(BinaryReader reader) {
    // Implement how to read the object from binary
    return HiveArchiveDataModel(
      // Populate fields from binary
        listArchiveData: reader.readList().cast<ArchiveDataModel>()
    );
  }

  @override
  void write(BinaryWriter writer, HiveArchiveDataModel obj) {
    // Implement how to write the object to binary
    writer.writeList(obj.listArchiveData);

  }
}
