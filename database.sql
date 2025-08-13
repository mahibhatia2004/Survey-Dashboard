-- Users Table
create table users (
    id uuid primary key default gen_random_uuid(),
    name text not null,
    email text unique not null,
    password text not null,
    created_at timestamp default now()
);
 
-- Create banks table
CREATE TABLE banks (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT,
    region TEXT
);

-- Create surveys table
CREATE TABLE surveys (
    id SERIAL PRIMARY KEY,
    bank_id INTEGER REFERENCES banks(id),
    total_surveys INTEGER,
    completion_rate FLOAT,
    status TEXT
);

-- Create responses table
CREATE TABLE responses (
    id SERIAL PRIMARY KEY,
    survey_id INTEGER REFERENCES surveys(id),
    bank_id INTEGER REFERENCES banks(id),
    respondent_name TEXT,
    age INTEGER,
    satisfaction TEXT,
    date DATE,
    feedback TEXT
);

-- Create cities table
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    region TEXT,
    primary_bank_id INTEGER REFERENCES banks(id),
    population TEXT,
    survey_count INTEGER,
    avg_rating FLOAT
);
