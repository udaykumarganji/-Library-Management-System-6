# -Library-Management-System-6


# Task 6 – Subqueries and Nested Queries

## Overview
This task demonstrates the use of **scalar**, **correlated**, and **nested subqueries** in SQL to perform advanced filtering and data extraction.
The queries are based on the Library Management System schema from Task 1.

## Tools Used
- MySQL Workbench / DB Browser for SQLite
- GitHub for version control

## Description

### SQL Features Demonstrated
1. **Scalar Subquery** – Returns a single value (e.g., earliest published year).
2. **IN Subquery** – Matches a column against a list of values returned by a subquery.
3. **EXISTS Subquery** – Checks if a subquery returns any result.
4. **Correlated Subquery** – Subquery that references a column from the outer query.
5. **Subquery in FROM Clause (Derived Table)** – Treats the subquery result as a table.
6. **Nested Conditions in Subquery** – Multiple WHERE conditions inside a subquery.

### Queries Included
1. Find the book with the earliest published year (scalar subquery).
2. Find members who issued books in the 'Fiction' category (IN subquery).
3. List authors who have written at least one book (EXISTS subquery).
4. Find books that are the only book by their author (correlated subquery).
5. Count books per category using a derived table (subquery in FROM).
6. Find members who borrowed books published before 2000.

### Files Included
- `subqueries.sql` – SQL script with all subquery examples.
- `README.md` – This documentation.

### How to Use
1. Load the database schema from **Task 1** (`library_schema.sql`).
2. Insert sample data from **Task 2** (`data.sql`).
3. Run `subqueries.sql` to execute the queries.
4. Review results to understand subquery logic.

## Key Learning Points
- **Subqueries** can be used in `SELECT`, `FROM`, and `WHERE` clauses.
- **Scalar subqueries** return only one value.
- **Correlated subqueries** run once for each row in the outer query.
- **EXISTS** returns TRUE if the subquery returns any row.
- Derived tables can be filtered using an outer query.

