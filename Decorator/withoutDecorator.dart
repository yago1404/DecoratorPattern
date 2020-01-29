
abstract class Gun{

  Gun(){
    print('-- init Gun class --');
  }

  //This is a abstract method
  getName();
}

class GunWithoutCrosshair extends Gun{
  
  var _name;
  GunWithoutCrosshair({String name}){
    this._name = name;
    print('-- init gun without crosshair class --');
  }
  
  @override
  getName() {
    // TODO: implement getName
    return this._name;
  }
}

class GunWithCrosshair extends Gun{

  var _name;

  GunWithCrosshair({String name}){
    this._name = name;
    print('-- init gun with crosshair class --');
  }

  @override
  getName() {
    // TODO: implement getName
    return this._name;
  }
}

class GunWithSilencer extends Gun{

  var _name;

  GunWithSilencer({String name}){
    this._name = name;
    print('-- init gun with silencer class --');
  }

  @override
  getName() {
    // TODO: implement getName
    return this._name;
  }
}

class GunWithSilencerAndCrosshair extends Gun{

  var _name;

  GunWithSilencerAndCrosshair({String name}){
    this._name = name;
    print('-- init gun with crosshair and silencer class --');
  }

  @override
  getName() {
    // TODO: implement getName
    return this._name;
  }
}

main() {
  var gunWithSilencer = GunWithSilencer(name: 'nome');
  var gunWithSilencerAndCrosshair = GunWithSilencerAndCrosshair(name: 'nome');
  var gunWithCrosshair = GunWithCrosshair(name: 'nome');
  return null;
}