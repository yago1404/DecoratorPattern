abstract class Gun{
  
  Gun(){
    print("-- init Gun class --");
  }

  mount();
}
class BaseGun implements Gun{

  @override
  mount(){
    print("-- base to Gun --");
  }
}

class DecoratorGun implements Gun{
  
  var _gun;

  DecoratorGun({Gun gun}){
    this._gun = gun;
  }

  @override
  mount() {
    // TODO: implement mount
    this._gun.mount();
  }

}

class Crosshair extends DecoratorGun{

  Crosshair(Gun gun) : super(gun : gun);

  @override
  void mount(){
    super.mount();
    print("-- add crosshair to gun --");
  }

}

class Silencer extends DecoratorGun{

  Silencer(Gun gun) : super(gun : gun);

  @override
  void mount(){
    super.mount();
    print("-- add silencer to gun --");
  }
  
}

main(){
  /* Monta uma arma com mira e silenciador */
  var fullGun = new Silencer( new Crosshair( new BaseGun() ) );
  fullGun.mount();

  /* Monta uma arma sem acessórios */
  Gun bGun = new BaseGun();
  bGun.mount();

  /* Monta uma Gun com silenciador */
  Gun gunWithSilencer =  Silencer(bGun);
  gunWithSilencer.mount();

  /* Monta uma Gun com mira */
  Gun gunWithCrosshair = new Crosshair( bGun );
  gunWithCrosshair.mount();
}