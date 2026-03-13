package com.jala.database;

import java.sql.*;

public class JdbcManager {
    private static final String URL = "jdbc:mysql://localhost:3306/escola_jala";
    private static final String USER = "root";
    private static final String PASS = "12345678";

    public static void main(String[] args) {
        System.out.println("--- [ JDBC: Testando Conexão e CRUD ] ---");
        
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
            System.out.println("Conexão JDBC estabelecida com sucesso!");

            // 1. Inserção (Create)
            System.out.println("\nExecutando Inserção...");
            String insertSql = "INSERT INTO alunos (nome, idade, email) VALUES (?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(insertSql)) {
                pstmt.setString(1, "JDBC User");
                pstmt.setInt(2, 30);
                pstmt.setString(3, "jdbc@user.com");
                pstmt.executeUpdate();
                System.out.println("Aluno inserido via JDBC.");
            } catch (SQLException e) {
                System.out.println("Nota: Usuário já existe ou erro na inserção.");
            }

            // 2. Consulta (Read)
            System.out.println("\nConsultando Alunos...");
            String selectSql = "SELECT * FROM alunos";
            try (Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery(selectSql)) {
                while (rs.next()) {
                    System.out.printf("ID: %d | Nome: %s | Idade: %d%n", 
                        rs.getInt("id"), rs.getString("nome"), rs.getInt("idade"));
                }
            }

            // 3. Chamada a Procedure (Activity 1 integration)
            System.out.println("\nChamando Procedimento sp_listar_alunos...");
            try (CallableStatement cstmt = conn.prepareCall("{call sp_listar_alunos()}")) {
                try (ResultSet rs = cstmt.executeQuery()) {
                    while (rs.next()) {
                        System.out.println("Procedure Result -> " + rs.getString("nome"));
                    }
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro de Conexão ou SQL: " + e.getMessage());
        }
    }
}
