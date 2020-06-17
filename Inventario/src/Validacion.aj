
public aspect Validacion {
	pointcut callsetCantidad(Producto p, int x):
		call(* setCantidad(int)) && target(p)&& args(x);
	after(Producto p, int x):callsetCantidad(p, x){
		if(p.getCantidad()< 0) {
			p.setCantidad(0);
			System.out.println("Cantidad modificada a 0, ya que se ingreso un numero negativo");
		}
	}
	
	pointcut validarPrecio(Producto p, float x):
		call(* setPrecio(float)) && target(p)&& args(x);
	void around(Producto p, float precio):validarPrecio(p, precio){
		if(precio< 0){
			System.out.println("No son validos los precios negativos, manteniendo el precio anterior");
		}else {
			proceed(p,precio);
		}
	}
}
