psql

CREATE DATABASE my_todo_list;
\c my_todo_list;

CREATE TABLE todos (id SERIAL PRIMARY KEY, task TEXT, complete BOOLEAN, due_date TIMESTAMP);
