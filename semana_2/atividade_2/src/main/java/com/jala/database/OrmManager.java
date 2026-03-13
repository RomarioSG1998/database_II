package com.jala.database;

import jakarta.persistence.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrmManager {
    static {
        // Silencia os logs do Hibernate no console (aqueles em vermelho no IntelliJ)
        Logger.getLogger("org.hibernate").setLevel(Level.SEVERE);
    }

    public static void main(String[] args) {
        System.out.println("--- [ ORM: Hibernate / Hibernate ] ---");

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("escola_jala_pu");
        EntityManager em = emf.createEntityManager();

        try {
            // 1. Inserção via ORM
            System.out.println("\nInserindo Aluno via Hibernate...");
            em.getTransaction().begin();
            Aluno novo = new Aluno();
            novo.setNome("ORM User");
            novo.setIdade(28);
            novo.setEmail("orm@hibernate.com");
            em.persist(novo);
            em.getTransaction().commit();
            System.out.println("Aluno persistido com sucesso.");

            // 2. Consulta via JPQL
            System.out.println("\nConsultando Alunos via JPQL...");
            List<Aluno> alunos = em.createQuery("SELECT a FROM Aluno a", Aluno.class).getResultList();
            for (Aluno a : alunos) {
                System.out.println("ORM Result -> " + a.getNome() + " (" + a.getEmail() + ")");
            }

        } catch (Exception e) {
            if (em.getTransaction().isActive())
                em.getTransaction().rollback();
            System.err.println("Erro ORM: " + e.getMessage());
        } finally {
            em.close();
            emf.close();
        }
    }
}
