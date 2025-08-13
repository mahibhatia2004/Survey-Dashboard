# Survey-Dashboard
Smart Survey Dashboard - Track responses, analyze trends, and manage data with Supabase.
A full-stack survey dashboard application built in with Supabase for backend and database, and a clean responsive frontend.
It allows collecting, storing, and analyzing survey responses with proper data structure accross multiple tables.

## Features
SURVEY MANAGEMENT- Create and manage surveys.
USER MANAGEMENT- Register and authenticate user.
RESPONSES TRACKING- Store and view survey responses.
CITY AND BANK DATA- Organise information by location and financial institutions.
ANALYTICS DASHBOARD- Display statistics in a user-friendly format.

# Database Tables
TABLE NAME                      DESCRIPTION
banks                           Stores information about banks covered in the survey.
cities                          Stores information about cities where surveys were conducted.
responses                       Stores individual survey responses.
survey                          Contains details about the surveys conducted.
users                           Stores users account details for login and authentication.

# Tech Stack
FRONTEND- HTML, TailwindCSS, JavaScript (Developed in VS Code)
BACKEND AND DATABASE- Supabase (PostgreSQL)
HOSTING- Supabase (Backend and Databases)

# Project Structure
survey-dashboard/
├── frontend/
│   ├── index.html               # Main dashboard page
│   ├── style.css                # Styling for dashboard
│   ├── script.js                # Frontend JavaScript logic
│   ├── assets/                  # Images, icons, etc.
│   └── components/              # Reusable UI components

├── backend/
│   ├── supabase-schema.sql      # SQL file for database tables (banks, cities, responses, survey, users)
│   ├── api-endpoints.md         # API documentation for data fetching & submission
│   └── config/                  # Supabase configuration files

├── README.md                    # Project documentation
├── .gitignore                   # Files to ignore in Git
└── LICENSE                      # License file (if added)

# Database Schema

### 1. banks
| Column Name  | Data Type | Description |
|--------------|-----------|-------------|
| id           | int       | Primary key |
| name         | text      | Bank name   |
| branch       | text      | Branch name |
| created_at   | timestamp | Record creation time |

### 2. cities
| Column Name  | Data Type | Description |
|--------------|-----------|-------------|
| id           | int       | Primary key |
| name         | text      | City name   |
| state        | text      | State name  |
| created_at   | timestamp | Record creation time |

### 3. responses
| Column Name  | Data Type | Description |
|--------------|-----------|-------------|
| id           | int       | Primary key |
| user_id      | int       | References users table |
| survey_id    | int       | References survey table |
| answers      | json      | Survey answers in JSON format |
| created_at   | timestamp | Response submission time |

### 4. survey
| Column Name  | Data Type | Description |
|--------------|-----------|-------------|
| id           | int       | Primary key |
| title        | text      | Survey title |
| description  | text      | Survey description |
| created_at   | timestamp | Record creation time |

### 5. users
| Column Name  | Data Type | Description |
|--------------|-----------|-------------|
| id           | int       | Primary key |
| name         | text      | User full name |
| email        | text      | User email address |
| created_at   | timestamp | Account creation time |



