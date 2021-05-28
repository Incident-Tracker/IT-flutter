import 'package:hive/hive.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';

class PostModelAdapter extends TypeAdapter<PostModel> {
  @override
  final int typeId = 1;

  @override
  PostModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostModel(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as bool,
      fields[6] as int,
      fields[7] as int,
      fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PostModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.imageAddress)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.writer)
      ..writeByte(4)
      ..write(obj.categoryName)
      ..writeByte(5)
      ..write(obj.isPopular)
      ..writeByte(6)
      ..write(obj.likeCount)
      ..writeByte(7)
      ..write(obj.viewsCount)
      ..writeByte(8)
      ..write(obj.content);
  }
}