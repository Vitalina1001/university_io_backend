import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/departmentTeacherLink_repository.dart';

@singleton
class DepartmentTeacherLinkRepositoryImpl extends DepartmentTeacherLinkRepository {
  DepartmentTeacherLinkRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(DepartmentteacherlinksCompanion departmentTeacherLink) async {
    await _db.into(_db.departmentteacherlinks).insert(departmentteacherlink);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteDepartmentteacherlink(id);
  }

  @override
  Future<Departmentteacherlink> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Departmentteacherlink>> getAll() {
    return _db.departmentteacherlinksList;
  }
}