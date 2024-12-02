package model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;



public class Conexao {
	public static Connection getConn() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/usuario" , "root" , "");
		} catch(ClassNotFoundException e) {
			System.out.println("Erro ao localizar o drive "+e.getMessage());
		} catch(SQLException e) {
			System.out.println("Erro ao localizar o servidor"+e.getMessage());
		}
		
		return conn;
	}
}
//2.0
