package co.empresa.imc.modelo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Paciente implements Serializable{
	
	private Integer serial;
	private String documento;
	private String nombre;
	private String apellido;
	private String email;
	private String genero;
	private String fechaNacimiento;
	private String telefono;
	private String direccion;
	private Integer peso;
	private Integer statura;
}
