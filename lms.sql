
SELECT * FROM BOOKS;
SELECT * FROM AUTHORS;
SELECT * FROM MEMBERS;
SELECT * FROM BORROWEDBOOKS;


-- 1. Add a New Book--
INSERT INTO Books (Title, AuthorId, Genre, PublishedYear, AvailableCopies) 
VALUES ('A Scope',1, 'Fiction', 1989, 5);
-- CHECK--
SELECT * FROM BOOKS;

-- 2. Issue a Book to a Member-- 
INSERT INTO BorrowedBooks (bookId, memberId, borrowdate) 
VALUES (1, 2, CURDATE());
-- CHECK--
SELECT * FROM BORROWEDBOOKS;

UPDATE Books 
SET AvailableCopies = AvailableCopies - 1 
WHERE bookid = 1;
-- CHECK--
SELECT * FROM BOOKS;


-- 3. Return a Book and Update Database--
UPDATE BorrowedBooks 
SET returndate = CURDATE() 
WHERE borrowid = 1;

SELECT * FROM BORROWEDBOOKS;
 
 
UPDATE Books 
SET availablecopies = availablecopies + 1 
WHERE bookid = 1;
-- CHECK--
SELECT * FROM BOOKS;

