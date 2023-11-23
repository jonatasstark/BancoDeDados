package Exercicios;

import java.sql.*;
import java.util.Scanner;

public class BibliotecaManager {

    public static void main(String[] args) {
        try {
            // Conexão com o banco de dados
            Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/Biblioteca", "root", "");

            // Criação do comando SQL
            Statement comando = conexao.createStatement();

            // Criação das tabelas se não existirem
            comando.executeUpdate("CREATE TABLE IF NOT EXISTS Cliente (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(50), email VARCHAR(50), sexo VARCHAR(10))");

            comando.executeUpdate("CREATE TABLE IF NOT EXISTS Livro (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100), autor VARCHAR(100), tipo VARCHAR(100), status VARCHAR(100))");

            comando.executeUpdate("CREATE TABLE IF NOT EXISTS Emprestimo (id INT AUTO_INCREMENT PRIMARY KEY, id_cliente INT NOT NULL, id_livro INT NOT NULL, status VARCHAR(100), data DATE, FOREIGN KEY (id_cliente) REFERENCES Cliente(id), FOREIGN KEY (id_livro) REFERENCES Livro(id))");

            // Trigger para atualizar o status do livro para "emprestado" ao fazer um empréstimo
            comando.executeUpdate("CREATE TRIGGER atualizaStatusEmprestimo AFTER INSERT ON Emprestimo FOR EACH ROW " +
                    "UPDATE Livro SET status = 'emprestado' WHERE id = NEW.id_livro");

            // Trigger para atualizar o status do livro para "disponível" ao devolver um livro
            comando.executeUpdate("CREATE TRIGGER atualizaStatusDevolucao AFTER UPDATE ON Emprestimo FOR EACH ROW " +
                    "IF NEW.status = 'devolvido' THEN " +
                    "UPDATE Livro SET status = 'disponível' WHERE id = NEW.id_livro; " +
                    "END IF");

            // Inicialização do scanner para entrada de dados pelo usuário
            Scanner scanner = new Scanner(System.in);

            // Inserção de um novo cliente
            System.out.println("\nInserir novo cliente:");
            System.out.print("Nome do cliente: ");
            String nomeCliente = scanner.nextLine();
            System.out.print("Email do cliente: ");
            String emailCliente = scanner.nextLine();
            System.out.print("Sexo do cliente: ");
            String sexoCliente = scanner.nextLine();

            // Query para inserir cliente
            String inserirClienteQuery = "INSERT INTO Cliente (nome, email, sexo) VALUES (?, ?, ?)";
            PreparedStatement inserirCliente = conexao.prepareStatement(inserirClienteQuery, Statement.RETURN_GENERATED_KEYS);
            inserirCliente.setString(1, nomeCliente);
            inserirCliente.setString(2, emailCliente);
            inserirCliente.setString(3, sexoCliente);
            inserirCliente.executeUpdate();

            // Obtendo o ID do cliente recém-inserido
            ResultSet chavesGeradas = inserirCliente.getGeneratedKeys();
            int idCliente = 0;
            if (chavesGeradas.next()) {
                idCliente = chavesGeradas.getInt(1);
            }

            // Inserção de um novo livro
            System.out.println("\nInserir novo Livro:");
            System.out.print("Nome do Livro: ");
            String nomeLivro = scanner.nextLine();
            System.out.print("Nome do Autor: ");
            String nomeAutor = scanner.nextLine();
            System.out.print("Tipo do Livro: ");
            String tipoLivro = scanner.nextLine();

            // Query para inserir livro
            String inserirLivroQuery = "INSERT INTO Livro (nome, autor, tipo, status) VALUES (?, ?, ?, ?)";
            PreparedStatement inserirLivro = conexao.prepareStatement(inserirLivroQuery, Statement.RETURN_GENERATED_KEYS);
            inserirLivro.setString(1, nomeLivro);
            inserirLivro.setString(2, nomeAutor);
            inserirLivro.setString(3, tipoLivro);
            inserirLivro.setString(4, "disponível");
            inserirLivro.executeUpdate();

            // Obtendo o ID do livro recém-inserido
            chavesGeradas = inserirLivro.getGeneratedKeys();
            int idLivro = 0;
            if (chavesGeradas.next()) {
                idLivro = chavesGeradas.getInt(1);
            }

            // Inserção de um novo empréstimo
            System.out.println("\nInserir novo empréstimo:");
            System.out.print("Status do empréstimo: ");
            String statusEmprestimo = scanner.nextLine();
            System.out.print("Data do empréstimo: ");
            String dataEmprestimo = scanner.nextLine();

            // Query para inserir empréstimo
            String inserirEmprestimoQuery = "INSERT INTO Emprestimo (id_cliente, id_livro, status, data) VALUES (?, ?, ?, ?)";
            PreparedStatement inserirEmprestimo = conexao.prepareStatement(inserirEmprestimoQuery);
            inserirEmprestimo.setInt(1, idCliente);
            inserirEmprestimo.setInt(2, idLivro);
            inserirEmprestimo.setString(3, statusEmprestimo);
            inserirEmprestimo.setString(4, dataEmprestimo);
            inserirEmprestimo.executeUpdate();

            // Consulta e exibição dos livros
            ResultSet resultadoLivros = comando.executeQuery("SELECT * FROM Livro");
            while (resultadoLivros.next()) {
                System.out.println("Livro ID: " + resultadoLivros.getInt("id") + ", Nome: " + resultadoLivros.getString("nome") + ", Status: " + resultadoLivros.getString("status"));
            }

            // Fechamento de recursos e encerramento da conexão
            resultadoLivros.close();
            inserirCliente.close();
            inserirLivro.close();
            inserirEmprestimo.close();
            scanner.close();
            comando.close();
            conexao.close();

            System.out.println("Operações concluídas com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
