
-- 1. Scalar subquery: Find the book with the earliest published year
SELECT Title, PublishedYear
FROM Books
WHERE PublishedYear = (SELECT MIN(PublishedYear) FROM Books);

-- 2. IN subquery: Find members who issued books in the 'Fiction' category
SELECT Name
FROM Members
WHERE MemberID IN (
    SELECT DISTINCT MemberID
    FROM IssuedBooks
    WHERE BookID IN (
        SELECT BookID FROM Books
        WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Fiction')
    )
);

-- 3. EXISTS subquery: List authors who have written at least one book
SELECT AuthorID, Name
FROM Authors a
WHERE EXISTS (
    SELECT 1 FROM Books b WHERE b.AuthorID = a.AuthorID
);

-- 4. Correlated subquery: Get books that are the only book by their author
SELECT Title, AuthorID
FROM Books b1
WHERE 1 = (
    SELECT COUNT(*) FROM Books b2
    WHERE b2.AuthorID = b1.AuthorID
);

-- 5. Subquery in FROM clause (derived table): Count books per category
SELECT CategoryName, BookCount
FROM (
    SELECT c.CategoryName, COUNT(b.BookID) AS BookCount
    FROM Categories c
    LEFT JOIN Books b ON c.CategoryID = b.CategoryID
    GROUP BY c.CategoryName
) AS CategorySummary
WHERE BookCount > 0;

-- 6. Multiple conditions in subquery: Members who borrowed books before 2000
SELECT Name
FROM Members
WHERE MemberID IN (
    SELECT MemberID FROM IssuedBooks
    WHERE BookID IN (
        SELECT BookID FROM Books WHERE PublishedYear < 2000
    )
);
