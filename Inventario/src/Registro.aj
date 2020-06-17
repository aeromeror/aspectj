
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;
public aspect Registro {
	File archivo=new File("Registro.txt");
	Calendar cal=Calendar.getInstance();
	
	pointcut executesetCantidad(Producto p, int x):
		execution(* setCantidad(int))&&target(p)&&args(x);
	after(Producto p, int x):executesetCantidad(p,x){
		Anotar("Cambio en la cantidad de "+p.getNombre()+" ahora son "+p.getCantidad()+" en  "+cal.getTime()+"\n");
	}
	pointcut executesetPrecio(Producto p, float x):
		execution(* setPrecio(float))&&target(p)&&args(x);
	after(Producto p,float x):executesetPrecio(p,x){
		Anotar("Cambio en el precio de "+p.getNombre()+" ahora es "+p.getPrecio()+" en  "+cal.getTime()+"\n");
	}
	public void Anotar(String mensaje) {
		try {
			if(!archivo.exists()) {
				archivo.createNewFile();
			}
			FileWriter fw=new FileWriter(archivo.getAbsoluteFile(),true);
			BufferedWriter bw=new BufferedWriter(fw);
			bw.write(mensaje);
			bw.close();
		}
		catch(IOException e) {
			e.printStackTrace();
		}
	}
}
