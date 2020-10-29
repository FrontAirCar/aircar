class AutomobileList {
  final List<Automobile> automobiles;

  AutomobileList({
    this.automobiles,
  });

  factory AutomobileList.fromJson(List<dynamic> parsedJson) {
    List<Automobile> automobiles = new List<Automobile>();
    automobiles = parsedJson.map((i) => Automobile.fromJson(i)).toList();

    return new AutomobileList(automobiles: automobiles);
  }
}

class Automobile {
  int idVehiculo;
  String marca;
  String modelo;
  int aniu;
  String color;
  String placa;
  String descripcion;
  bool estadoVehiculo;

  Automobile(
      {this.idVehiculo,
      this.marca,
      this.modelo,
      this.aniu,
      this.color,
      this.placa,
      this.descripcion,
      this.estadoVehiculo});

  factory Automobile.fromJson(Map<String, dynamic> json) {
    return new Automobile(
      idVehiculo: json['idVehiculo'],
      marca: json['marca'],
      modelo: json['modelo'],
      aniu: json['aniu'],
      color: json['color'],
      placa: json['placa'],
      descripcion: json['descripcion'],
      estadoVehiculo: json['estadoVehiculo'],
    );
  }
}
