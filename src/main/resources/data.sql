-- CREATE TABLE USER (
--     ID INTEGER PRIMARY KEY AUTO_INCREMENT,
--     NAME VARCHAR(100)
-- );

-- CREATE TABLE WORKNOTE (
--     ID INTEGER PRIMARY KEY AUTO_INCREMENT,
--     DESCRIBE VARCHAR(255),
--     WORK_LOAD ARRAY,
--     DATE_WORK DATETIME NOT NULL,
--     USER_ID INTEGER REFERENCES USER (ID)
-- );


INSERT INTO USERS(NAME, EMAIL, PASSWORD) VALUES ( 'KAIKE', 'KAIKE@KAIKE.COM', '1234' );
INSERT INTO USERS(NAME, EMAIL, PASSWORD) VALUES ( 'BRUNO', 'BRUNO@BRUNO.COM', '12345' );


-- -- Inserindo dados na tabela WORKNOTE com WORK_LOAD como ARRAY
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (1, 'Treino de força', ARRAY['PUSH UPS', 'BICEPS'], '2024-11-13 10:00:00', 1);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (2, 'Treino de resistência', ARRAY['SQUATS', 'PLANK'], '2024-11-13 12:00:00', 2);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (3, 'Treino cardio', ARRAY['RUNNING', 'CYCLING'], '2024-11-14 09:30:00', 1);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (4, 'Treino abdominal', ARRAY['CRUNCHES', 'LEG RAISES'], '2024-11-14 11:00:00', 2);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (5, 'Treino de força', ARRAY['DEADLIFT', 'BENCH PRESS'], '2024-11-15 08:00:00', 1);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (6, 'Treino funcional', ARRAY['BURPEES', 'KETTLEBELL SWINGS'], '2024-11-15 10:30:00', 2);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (7, 'Treino de mobilidade', ARRAY['YOGA', 'STRETCHING'], '2024-11-16 07:00:00', 1);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (8, 'Treino de alta intensidade', ARRAY['HIIT', 'JUMP SQUATS'], '2024-11-16 09:30:00', 2);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (9, 'Treino de resistência', ARRAY['ROWING', 'CYCLING'], '2024-11-17 08:30:00', 1);
--
-- INSERT INTO WORKNOTE (ID, DESCRIPTION, WORK_LOAD, DATE_WORK, USER_ID)
-- VALUES (10, 'Treino de alongamento', ARRAY['DYNAMIC STRETCHES', 'COOL DOWN'], '2024-11-17 10:00:00', 2);
