package controller;

import java.sql.Connection; 

import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;

import model.Usuario;

import model.Conexao;

import java.sql.ResultSet;

public class UsuarioDao {

	Connection conn = null;
	PreparedStatement ps;
	Statement st;
	String sql = "";
	 
	public void inserir(Usuario usuario) {
		sql = "INSERT INTO usuario(nome,email,senha) VALUES(?,?,?)";
	
		try {
			conn = Conexao.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, usuario.getNome());
			ps.setString(2, usuario.getEmail());
			ps.setString(3, usuario.getSenha());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			System.out.println("Erro ao inserir");
		}
	}

	public ArrayList<Usuario> getLista() {
		ArrayList<Usuario> listar = new ArrayList<Usuario>();

		sql = "SELECT * FROM usuario";

		try {
			conn = Conexao.getConn();
			ResultSet resultado = conn.createStatement().executeQuery(sql);

			while (resultado.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setEmail(resultado.getString("email"));
				usuario.setSenha(resultado.getString("senha"));
				listar.add(usuario);
			}
		} catch (SQLException e) {
			System.out.println("Erro ao listar");
		}
		return listar;
	}

	public void atualizar(Usuario usuario) {
		sql = "UPDATE usuario SET nome=?,email=?, senha=? WHERE id=?";

		try {
			conn = Conexao.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, usuario.getNome());
			ps.setString(2, usuario.getEmail());
			ps.setString(3, usuario.getSenha());
			ps.setInt(4, usuario.getId());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			System.out.println("Erro ao atualizar");
		}
	}

	public void deletar(int valor) {
		sql="DELETE FROM usuario WHERE id="+valor;
		
		try {
			conn = Conexao.getConn();
			st = conn.createStatement();
			st.execute(sql);
			st.close();
		}catch(SQLException e) {
			System.out.println("erro ao deletar");
		}
	}
}
