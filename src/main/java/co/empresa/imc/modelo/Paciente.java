package co.empresa.imc.modelo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Paciente implements Serializable{
	
	private Integer id;
	private String documento;
	private String nombre;
	private String apellido;
	private String email;
	private String genero;
	private String fechaNacimiento;
	private String telefono;
	private String direccion;
	private Integer peso;
	private Integer estatura;
	
	public Paciente(String documento, String nombre, String apellido, String email, String genero,
			String fechaNacimiento, String telefono, String direccion, Integer peso, Integer estatura) {
		
		this.documento = documento;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.genero = genero;
		this.fechaNacimiento = fechaNacimiento;
		this.telefono = telefono;
		this.direccion = direccion;
		this.peso = peso;
		this.estatura = estatura;
	}
	
	
	
	
}
