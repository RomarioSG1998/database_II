#!/bin/bash

# Romario Galdino - BD2
# Calculos da Atividade 2

ARQ_SQL="carga_exemplo_ativ2.sql"
echo "-- Scripts de Carga - Atividade 2" > $ARQ_SQL
echo "-- Romario Galdino" >> $ARQ_SQL

echo "Contas de crescimento para 6 meses, 3 e 4 anos"

# 6 meses
echo ""
echo ">>> 6 meses:"
u_6m=$((500 * 6))
c_6m=$((100 * 6))
t_6m=$((1000 * 6))
total_6m=$((u_6m + c_6m + t_6m))
echo "Users: 500 * 6 = $u_6m"
echo "Categories: 100 * 6 = $c_6m"
echo "Tasks: 1000 * 6 = $t_6m"
echo "Total: $total_6m"
echo "KB: $total_6m KB"

echo "-- inserts 6 meses" >> $ARQ_SQL
echo "INSERT INTO Users (name, email) VALUES ('User 6m', 'user6m@email.com');" >> $ARQ_SQL
echo "INSERT INTO Tasks (user_id, category_id, description) VALUES (1, 1, 'Tarefa 6 meses');" >> $ARQ_SQL
echo "" >> $ARQ_SQL

# 3 anos
echo ""
echo ">>> 3 anos (36 meses):"
u3=$((500 * 36))
c3=$((100 * 36))
t3=$((1000 * 36))
total3=$((u3 + c3 + t3))
echo "Users: 500 * 36 = $u3"
echo "Categories: 100 * 36 = $c3"
echo "Tasks: 1000 * 36 = $t3"
echo "Total: $total3"
kb3=$((total3 * 1))
mb3=$(($kb3 / 1024))
echo "Tamanho: $kb3 KB ($mb3 MB)"

echo "-- inserts 3 anos" >> $ARQ_SQL
echo "INSERT INTO Users (name, email) VALUES ('User 3y', 'user3y@email.com');" >> $ARQ_SQL
echo "INSERT INTO Tasks (user_id, category_id, description) VALUES (3, 1, 'Tarefa 3 anos');" >> $ARQ_SQL
echo "" >> $ARQ_SQL

# 4 anos
echo ""
echo ">>> 4 anos (48 meses):"
u4=$((500 * 48))
c4=$((100 * 48))
t4=$((1000 * 48))
total4=$((u4 + c4 + t4))
echo "Users: 500 * 48 = $u4"
echo "Categories: 100 * 48 = $c4"
echo "Tasks: 1000 * 48 = $t4"
echo "Total: $total4"
kb4=$((total4 * 1))
mb4=$(($kb4 / 1024))
echo "Tamanho: $kb4 KB ($mb4 MB)"

echo "-- inserts 4 anos" >> $ARQ_SQL
echo "INSERT INTO Users (name, email) VALUES ('User 4y', 'user4y@email.com');" >> $ARQ_SQL
echo "INSERT INTO Tasks (user_id, category_id, description) VALUES (4, 1, 'Tarefa 4 anos');" >> $ARQ_SQL

echo ""
echo "..."
