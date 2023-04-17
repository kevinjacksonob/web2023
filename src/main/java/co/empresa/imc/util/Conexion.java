package co.empresa.imc.util;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class Conexion {
	private Connection con = null;
	private static Conexion db;
	private PreparedStatement preparedStatement;
	
	private static final String url= "jdbc:mysql://localhost:3306/";
	private static final String dbName = "testpweb";
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String userName = "student";
	private static final String password = "Student22";
}
