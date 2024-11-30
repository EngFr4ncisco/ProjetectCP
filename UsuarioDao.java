import java.sql.SQLException;
import model.Usuario;
import model.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
	
public class UsuarioDao {

	Connection conn = null;
	 String sql = "";
	 PreparedStatement ps;
	
	public void inserir(Usuario usuario) {
		sql = "INSERT INTO cadastro (nome, email, senha) VALUES(?,?,?)";
	
	try {
		conn = Conexao.getConn();
		ps = conn.prepareStatement(sql);
		ps.setString(1, usuario.getNome());
		ps.setString(2, usuario.getEmail());
		ps.setString(3, usuario.getSenha());
		ps.execute();
		ps.close();
	}catch(SQLException e) {
		System.out.println("Erro ao inserir" +e.getMessage());
		}
	}

}
