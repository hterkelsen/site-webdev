// #docregion
import 'dart:async';
import 'package:angular2/core.dart';

class Villain {
  final int id;
  String name;

  Villain(this.id, this.name);
}

@Injectable()
class VillainsService {
  static final List<Villain> _mockVillains = <Villain>[
    new Villain(1, 'Dr. Evil'),
    new Villain(2, 'Moriarty')
  ];

  Future<List<Villain>> getVillains() async => _mockVillains;
}
