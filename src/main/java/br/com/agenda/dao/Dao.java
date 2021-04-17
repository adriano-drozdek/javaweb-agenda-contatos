package br.com.agenda.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
	// drive que conecta ao banco
	private String driver = "com.mysql.cj.jdbc.Driver";

	// caminho do banco
	private String url = "jdbc:mysql://127.0.0.1:3306/agenda?useTimeZone=true&serverTimezone=UTC";

	// usuario do banco
	private String user = "root";

	// senha do banco
	private String password = "";

	private Connection conectar() {
		Connection conn = null;

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);

			return conn;
		} catch (Exception e) {
			return null;
		}
	}

	public void testaConexao() {
		try {
			Connection connection = conectar();
			System.out.println("Conectado com sucesso " + connection);
			connection.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
