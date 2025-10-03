-- =============================================================================
-- SCRIPT DE DONNÉES DE TEST - SYSTÈME DE GESTION DE STAGES
-- =============================================================================
-- Ce script insère des données de test complètes pour tester toutes
-- les fonctionnalités de l'application
-- =============================================================================

-- Supprimer les données existantes (dans l'ordre des contraintes FK)
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE tasks;
TRUNCATE TABLE interns;
TRUNCATE TABLE encadreurs;
TRUNCATE TABLE projects;
TRUNCATE TABLE users;
SET FOREIGN_KEY_CHECKS = 1;

-- =============================================================================
-- 1. UTILISATEURS (USERS)
-- =============================================================================
-- Note: Les mots de passe sont hashés avec BCrypt
-- Mot de passe pour tous: "password123"
-- Hash BCrypt: $2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A

INSERT INTO users (email, password, nom, prenom, phone, department, role, account_status, created_at, updated_at) VALUES
-- Admin
('admin@internship.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Admin', 'System', '+212600000000', 'IT', 'ADMIN', 'ACTIVE', NOW(), NOW()),
('admin2@internship.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Alami', 'Fatima', '+212600000001', 'RH', 'ADMIN', 'ACTIVE', NOW(), NOW()),

-- Encadreurs
('encadreur1@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Bennani', 'Mohammed', '+212661234567', 'IT', 'ENCADREUR', 'ACTIVE', NOW(), NOW()),
('encadreur2@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'El Idrissi', 'Amina', '+212662234567', 'Marketing', 'ENCADREUR', 'ACTIVE', NOW(), NOW()),
('encadreur3@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Tazi', 'Karim', '+212663234567', 'Finance', 'ENCADREUR', 'ACTIVE', NOW(), NOW()),
('encadreur4@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Chraibi', 'Salma', '+212664234567', 'Design', 'ENCADREUR', 'ACTIVE', NOW(), NOW()),

-- Stagiaires
('stagiaire1@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Ouardi', 'Youssef', '+212671234567', 'IT', 'STAGIAIRE', 'ACTIVE', NOW(), NOW()),
('stagiaire2@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Mansouri', 'Khadija', '+212672234567', 'IT', 'STAGIAIRE', 'ACTIVE', NOW(), NOW()),
('stagiaire3@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Berrada', 'Omar', '+212673234567', 'Marketing', 'STAGIAIRE', 'ACTIVE', NOW(), NOW()),
('stagiaire4@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Lahlou', 'Imane', '+212674234567', 'Finance', 'STAGIAIRE', 'ACTIVE', NOW(), NOW()),
('stagiaire5@example.com', '$2a$10$8X5Z9Y6W7V8U9T8S7R6Q5O4P3N2M1L0K9J8I7H6G5F4E3D2C1B0A', 'Ziani', 'Mehdi', '+212675234567', 'Design', 'STAGIAIRE', 'ACTIVE', NOW(), NOW()),
('stagiaire6@example.com', NULL, 'Alaoui', 'Sara', '+212676234567', 'IT', 'STAGIAIRE', 'PENDING', NOW(), NOW()),
('stagiaire7@example.com', NULL, 'Fassi', 'Amine', '+212677234567', 'Marketing', 'STAGIAIRE', 'PENDING', NOW(), NOW());

-- =============================================================================
-- 2. ENCADREURS
-- =============================================================================

INSERT INTO encadreurs (user_id, specialization, available, created_at, updated_at) VALUES
(3, 'Développement Web Full Stack', TRUE, NOW(), NOW()),
(4, 'Marketing Digital & Réseaux Sociaux', TRUE, NOW(), NOW()),
(5, 'Analyse Financière & Comptabilité', TRUE, NOW(), NOW()),
(6, 'UX/UI Design & Prototypage', TRUE, NOW(), NOW());

-- =============================================================================
-- 3. PROJETS
-- =============================================================================

INSERT INTO projects (name, description, start_date, end_date, status, encadreur_id, created_at, updated_at) VALUES
('Plateforme E-commerce', 'Développement d\'une plateforme e-commerce moderne avec React et Node.js', '2025-01-15', '2025-06-15', 'IN_PROGRESS', 1, NOW(), NOW()),
('Application Mobile Banking', 'Création d\'une application mobile de gestion bancaire', '2025-02-01', '2025-07-01', 'IN_PROGRESS', 1, NOW(), NOW()),
('Campagne Marketing Digital', 'Stratégie marketing complète sur les réseaux sociaux', '2025-01-20', '2025-05-20', 'IN_PROGRESS', 2, NOW(), NOW()),
('Système de Gestion Financière', 'Développement d\'un ERP pour la gestion financière', '2025-01-10', '2025-06-10', 'IN_PROGRESS', 3, NOW(), NOW()),
('Refonte Site Web Corporate', 'Redesign complet du site web d\'entreprise', '2025-02-15', '2025-05-15', 'PLANNING', 4, NOW(), NOW()),
('Application IoT Smart Home', 'Système de domotique connectée', '2024-11-01', '2025-04-30', 'COMPLETED', 1, NOW(), NOW());

-- =============================================================================
-- 4. STAGIAIRES (INTERNS)
-- =============================================================================

INSERT INTO interns (user_id, encadreur_id, project_id, school, department, start_date, end_date, status, created_at, updated_at) VALUES
-- Stagiaires actifs avec projets
(7, 1, 1, 'ENSIAS', 'Génie Informatique', '2025-01-15', '2025-06-15', 'ACTIVE', NOW(), NOW()),
(8, 1, 2, 'INPT', 'Génie Logiciel', '2025-02-01', '2025-07-01', 'ACTIVE', NOW(), NOW()),
(9, 2, 3, 'ENCG', 'Marketing', '2025-01-20', '2025-05-20', 'ACTIVE', NOW(), NOW()),
(10, 3, 4, 'ISCAE', 'Finance', '2025-01-10', '2025-06-10', 'ACTIVE', NOW(), NOW()),
(11, 4, 5, 'ESAV', 'Design Graphique', '2025-02-15', '2025-05-15', 'ACTIVE', NOW(), NOW()),
-- Stagiaires en attente (PENDING) - pas encore activé leur compte
(12, 1, NULL, 'EMI', 'Informatique', '2025-03-01', '2025-08-01', 'PENDING', NOW(), NOW()),
(13, 2, NULL, 'ENCG', 'Communication', '2025-03-15', '2025-08-15', 'PENDING', NOW(), NOW());

-- =============================================================================
-- 5. TÂCHES (TASKS)
-- =============================================================================

INSERT INTO tasks (title, description, status, priority, due_date, project_id, assigned_to_id, created_by_id, created_at, updated_at) VALUES
-- Tâches Projet 1: Plateforme E-commerce
('Setup environnement de développement', 'Installer Node.js, React, et configurer l\'environnement', 'DONE', 'HIGH', '2025-01-20', 1, 7, 3, NOW(), NOW()),
('Conception base de données', 'Modéliser la base de données pour le e-commerce', 'DONE', 'HIGH', '2025-01-25', 1, 7, 3, NOW(), NOW()),
('Développement API produits', 'Créer les endpoints REST pour la gestion des produits', 'IN_PROGRESS', 'HIGH', '2025-02-10', 1, 7, 3, NOW(), NOW()),
('Interface utilisateur catalogue', 'Développer la page de catalogue avec React', 'IN_PROGRESS', 'MEDIUM', '2025-02-15', 1, 7, 3, NOW(), NOW()),
('Système de panier', 'Implémenter la fonctionnalité de panier d\'achat', 'TODO', 'HIGH', '2025-02-25', 1, 7, 3, NOW(), NOW()),
('Intégration paiement en ligne', 'Intégrer Stripe pour les paiements', 'TODO', 'HIGH', '2025-03-10', 1, 7, 3, NOW(), NOW()),

-- Tâches Projet 2: Application Mobile Banking
('Maquettes UI/UX', 'Créer les maquettes de l\'application mobile', 'DONE', 'HIGH', '2025-02-05', 2, 8, 3, NOW(), NOW()),
('Développement authentification', 'Implémenter le système d\'authentification sécurisé', 'IN_PROGRESS', 'HIGH', '2025-02-20', 2, 8, 3, NOW(), NOW()),
('Module consultation de compte', 'Développer l\'écran de consultation de solde', 'TODO', 'MEDIUM', '2025-03-05', 2, 8, 3, NOW(), NOW()),
('Historique des transactions', 'Afficher l\'historique des opérations bancaires', 'TODO', 'MEDIUM', '2025-03-15', 2, 8, 3, NOW(), NOW()),

-- Tâches Projet 3: Campagne Marketing Digital
('Analyse de marché', 'Étude de la concurrence et du marché cible', 'DONE', 'HIGH', '2025-01-25', 3, 9, 4, NOW(), NOW()),
('Stratégie content marketing', 'Définir la stratégie de contenu pour les réseaux sociaux', 'DONE', 'HIGH', '2025-02-01', 3, 9, 4, NOW(), NOW()),
('Création visuals Instagram', 'Concevoir 20 posts pour Instagram', 'IN_PROGRESS', 'MEDIUM', '2025-02-15', 3, 9, 4, NOW(), NOW()),
('Campagne publicitaire Facebook', 'Lancer une campagne ads sur Facebook', 'TODO', 'HIGH', '2025-03-01', 3, 9, 4, NOW(), NOW()),

-- Tâches Projet 4: Système de Gestion Financière
('Analyse des besoins', 'Recueillir et documenter les besoins métier', 'DONE', 'HIGH', '2025-01-20', 4, 10, 5, NOW(), NOW()),
('Architecture système', 'Concevoir l\'architecture de l\'ERP', 'DONE', 'HIGH', '2025-01-30', 4, 10, 5, NOW(), NOW()),
('Module comptabilité', 'Développer le module de comptabilité générale', 'IN_PROGRESS', 'HIGH', '2025-02-28', 4, 10, 5, NOW(), NOW()),
('Reporting financier', 'Créer les rapports et tableaux de bord', 'TODO', 'MEDIUM', '2025-03-20', 4, 10, 5, NOW(), NOW()),

-- Tâches Projet 5: Refonte Site Web
('Benchmark concurrentiel', 'Analyser les sites web concurrents', 'DONE', 'MEDIUM', '2025-02-20', 5, 11, 6, NOW(), NOW()),
('Wireframes et prototypes', 'Créer les wireframes du nouveau site', 'IN_PROGRESS', 'HIGH', '2025-03-05', 5, 11, 6, NOW(), NOW()),
('Design système', 'Définir la charte graphique et les composants', 'TODO', 'HIGH', '2025-03-15', 5, 11, 6, NOW(), NOW()),
('Développement front-end', 'Intégrer le design en HTML/CSS/JS', 'TODO', 'HIGH', '2025-04-10', 5, 11, 6, NOW(), NOW());

-- =============================================================================
-- VÉRIFICATION DES DONNÉES INSÉRÉES
-- =============================================================================

SELECT 'RÉSUMÉ DES DONNÉES INSÉRÉES' AS '';
SELECT '=============================' AS '';
SELECT CONCAT('Total utilisateurs: ', COUNT(*)) AS 'USERS' FROM users;
SELECT CONCAT('Total encadreurs: ', COUNT(*)) AS 'ENCADREURS' FROM encadreurs;
SELECT CONCAT('Total projets: ', COUNT(*)) AS 'PROJECTS' FROM projects;
SELECT CONCAT('Total stagiaires: ', COUNT(*)) AS 'INTERNS' FROM interns;
SELECT CONCAT('Total tâches: ', COUNT(*)) AS 'TASKS' FROM tasks;

SELECT '' AS '';
SELECT 'COMPTES DE TEST DISPONIBLES' AS '';
SELECT '============================' AS '';
SELECT 'Admin: admin@internship.com / password123' AS 'Compte Admin Principal';
SELECT 'Admin: admin2@internship.com / password123' AS 'Compte Admin Secondaire';
SELECT 'Encadreur: encadreur1@example.com / password123' AS 'Encadreur IT';
SELECT 'Encadreur: encadreur2@example.com / password123' AS 'Encadreur Marketing';
SELECT 'Stagiaire: stagiaire1@example.com / password123' AS 'Stagiaire IT Actif';
SELECT 'Stagiaire: stagiaire6@example.com / (pas de mdp)' AS 'Stagiaire PENDING';

SELECT '' AS '';
SELECT 'STATISTIQUES PAR STATUT' AS '';
SELECT '========================' AS '';
SELECT status, COUNT(*) as total FROM projects GROUP BY status;
SELECT status, COUNT(*) as total FROM interns GROUP BY status;
SELECT status, COUNT(*) as total FROM tasks GROUP BY status;
