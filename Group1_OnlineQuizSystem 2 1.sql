SET SQL_SAFE_UPDATES = 0;
create database IF NOT EXISTS OnlineQuizSystem;
use OnlineQuizSystem;

show tables;

/* User_Role table */
CREATE TABLE User_Role (
    Role_Id INT AUTO_INCREMENT PRIMARY KEY,
    Role_Name VARCHAR(50)
    );

INSERT INTO User_Role (Role_Name)  VALUES
('student'),
('faculty'),
('TA'),
('admin'),
('ITadmin');

select * from user_role;

/* Users Table */
CREATE TABLE IF NOT EXISTS Users (
  User_ID VARCHAR(50) PRIMARY KEY, 
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  FullName VARCHAR(255) UNIQUE,
  EmailID VARCHAR(255) UNIQUE,
  UserPassword VARCHAR(255) NOT NULL,
  Role_Id INT,
  FOREIGN KEY (Role_Id) REFERENCES User_Role(Role_Id)
);

INSERT INTO Users (User_ID, FirstName, LastName, FullName, EmailID, UserPassword, Role_Id) VALUES
('VXG345', 'Vaishnavi', 'Gajula', 'Vaishnavi Gajula', 'vaishnavi@example.com', 'password123', 1),
('JXK123', 'John', 'Doe', 'John Doe', 'john@example.com', 'password456', 4),
('SXM567', 'Sara', 'Miller', 'Sara Miller', 'sara@example.com', 'password789', 2),
('LXT789', 'Luke', 'Taylor', 'Luke Taylor', 'luke@example.com', 'passwordabc', 3),
('RXC244', 'Rachel', 'Clark', 'Rachel Clark', 'rachel@example.com', 'passworddef', 5),
('MXB895', 'Michael', 'Brown', 'Michael Brown', 'michael@example.com', 'passwordghi', 1),
('TXH567', 'Taylor', 'Harris', 'Taylor Harris', 'taylor@example.com', 'passwordjkl', 2),
('CXM123', 'Christopher', 'Moore', 'Christopher Moore', 'christopher@example.com', 'passwordmno', 3),
('JXL567', 'Jessica', 'Lee', 'Jessica Lee', 'jessica@example.com', 'passwordpqr', 4),
('PXR890', 'Patrick', 'Robinson', 'Patrick Robinson', 'patrick@example.com', 'passwordstu', 1),
('RXS234', 'Rebecca', 'Smith', 'Rebecca Smith', 'rebecca@example.com', 'passwordvwx', 2),
('MXT890', 'Megan', 'Taylor', 'Megan Taylor', 'megan@example.com', 'passwordyza', 3),
('LXR567', 'Laura', 'Xu', 'Laura Xu', 'laura@example.com', 'passwordbcd', 4),
('DXY890', 'David', 'Young', 'David Young', 'david@example.com', 'passwordefg', 1),
('IXS234', 'Isabella', 'Smith', 'Isabella Smith', 'isabella@example.com', 'passwordhij', 2),
('RXJ890', 'Ryan', 'Jackson', 'Ryan Jackson', 'ryan@example.com', 'passwordklm', 3),
('NXP567', 'Nathan', 'Xavier', 'Nathan Xavier', 'nathan@example.com', 'passwordnop', 4),
('LXW890', 'Liam', 'Williams', 'Liam Williams', 'liam@example.com', 'passwordqrs', 1),
('TXB234', 'Tyler', 'Brown', 'Tyler Brown', 'tyler@example.com', 'passwordtuv', 2),
('AXM890', 'Ava', 'Miller', 'Ava Miller', 'ava@example.com', 'passwordwxy', 3),
('KXT567', 'Kylie', 'Taylor', 'Kylie Taylor', 'kylie@example.com', 'passwordzab', 4),
('RXR890', 'Robert', 'Reed', 'Robert Reed', 'robert@example.com', 'passwordcde', 1),
('BXB234', 'Bella', 'Brown', 'Bella Brown', 'bella@example.com', 'passwordfgh', 2),
('TXS890', 'Taylor', 'Smith', 'Taylor Smith', 'taylor2@example.com', 'passwordijk', 3),
('LXR569', 'Luna', 'Xu', 'Luna Xu', 'luna@example.com', 'passwordlmn', 4),
('SXS890', 'Sophia', 'Smith', 'Sophia Smith', 'sophia@example.com', 'passwordopq', 1),
('DXG234', 'Dylan', 'Garcia', 'Dylan Garcia', 'dylan@example.com', 'passwordrst', 2),
('MXH890', 'Mia', 'Hernandez', 'Mia Hernandez', 'mia@example.com', 'passworduvw', 3),
('RXM234', 'Ryan', 'Miller', 'Ryan Miller', 'ryan2@example.com', 'passwordxyz', 4),
('LXT890', 'Lily', 'Taylor', 'Lily Taylor', 'lily@example.com', 'passwordabc', 1),
('DXB234', 'Daniel', 'Brown', 'Daniel Brown', 'daniel@example.com', 'passworddef', 2),
('MXG890', 'Madison', 'Green', 'Madison Green', 'madison@example.com', 'passwordghi', 3),
('LXS734', 'Leah', 'Smith', 'Leah Smith', 'leah@example.com', 'passwordjkl', 4),
('JXM890', 'James', 'Miller', 'James Miller', 'james@example.com', 'passwordmno', 1),
('RXT567', 'Riley', 'Taylor', 'Riley Taylor', 'riley@example.com', 'passwordpqr', 2),
('LXR890', 'Logan', 'Roberts', 'Logan Roberts', 'logan@example.com', 'passwordstu', 3),
('BXP234', 'Benjamin', 'Parker', 'Benjamin Parker', 'benjamin@example.com', 'passwordvwx', 4),
('TXB890', 'Taylor', 'Brown', 'Taylor Brown', 'taylor3@example.com', 'passwordyza', 1),
('CXD234', 'Chloe', 'Davis', 'Chloe Davis', 'chloe@example.com', 'passwordbcd', 2),
('TXW890', 'Tristan', 'White', 'Tristan White', 'tristan@example.com', 'passwordefg', 3),
('LXS934', 'Lucas', 'Smith', 'Lucas Smith', 'lucas@example.com', 'passwordhij', 4),
('SXB890', 'Samantha', 'Brown', 'Samantha Brown', 'samantha@example.com', 'passwordklm', 1),
('RXC234', 'Ryan', 'Clark', 'Ryan Clark', 'ryan3@example.com', 'passwordnop', 2),
('MXS890', 'Mila', 'Smith', 'Mila Smith', 'mila@example.com', 'passwordqrs', 3),
('GXT234', 'Gabriel', 'Taylor', 'Gabriel Taylor', 'gabriel@example.com', 'passwordtuv', 4),
('BXH890', 'Brooklyn', 'Harris', 'Brooklyn Harris', 'brooklyn@example.com', 'passwordwxy', 1),
('KXG234', 'Kayla', 'Garcia', 'Kayla Garcia', 'kayla@example.com', 'passwordzab', 2),
('RXC890', 'Reagan', 'Clark', 'Reagan Clark', 'reagan@example.com', 'passwordcde', 3),
('LXM234', 'Liam', 'Miller', 'Liam Miller', 'liam2@example.com', 'passwordfgh', 4),
('CXT890', 'Carter', 'Taylor', 'Carter Taylor', 'carter@example.com', 'passwordijk', 1),
('FXS234', 'Faith', 'Smith', 'Faith Smith', 'faith@example.com', 'passwordlmn', 2),
('NXC890', 'Natalie', 'Clark', 'Natalie Clark', 'natalie@example.com', 'passwordopq', 3),
('SXB234', 'Sophie', 'Brown', 'Sophie Brown', 'sophie@example.com', 'passwordrst', 4),
('PXM890', 'Peyton', 'Miller', 'Peyton Miller', 'peyton@example.com', 'passworduvw', 1),
('TXJ284', 'Thomas', 'Jackson', 'Thomas Jackson', 'thomas@example.com', 'passwordxyz', 2),
('BXT890', 'Brody', 'Taylor', 'Brody Taylor', 'brody@example.com', 'passwordabc', 3),
('DXM234', 'Daisy', 'Miller', 'Daisy Miller', 'daisy@example.com', 'passworddef', 4),
('MXB898', 'Max', 'Brown', 'Max Brown', 'max@example.com', 'passwordghi', 1),
('SXT234', 'Scarlett', 'Taylor', 'Scarlett Taylor', 'scarlett@example.com', 'passwordjkl', 2),
('GXR890', 'Grace', 'Roberts', 'Grace Roberts', 'grace@example.com', 'passwordmno', 3),
('DXT234', 'Dominic', 'Taylor', 'Dominic Taylor', 'dominic@example.com', 'passwordpqr', 4);

INSERT INTO Users (User_ID, FirstName, LastName, FullName, EmailID, UserPassword, Role_Id) VALUES
('DXY891', 'David', 'Cook', 'David Cook', 'davi1d@example.com', 'hello123',2),
('FXS235', 'Faith', 'Collins', 'Faith Collins', 'fait1h@example.com', 'letmein123',2),
('GXR891', 'Grace', 'Foster', 'Grace Foster', 'grac1e@example.com', 'secret',2),
('GXT235', 'Gabriel', 'Reed', 'Gabriel Reed', 'gabr1iel@example.com', 'abc123',2),
('IXS235', 'Isabella', 'Stewart', 'Isabella Stewart', 'isabel1la@example.com', '123456789',2),
('JXK124', 'John', 'Reed', 'John Reed', 'jo1hn@example.com', 'password123',2),
('JXL568', 'Jessica', 'Stewart', 'Jessica Stewart', 'jessic1a@example.com', 'qwerty123',2),
('JXM891', 'James', 'Henderson', 'James Henderson', 'james1@example.com', 'iloveyou123',2),
('KXG235', 'Kayla', 'Warren', 'Kayla Warren', 'kayla1@example.com', 'password1',2),
('KXT568', 'Kylie', 'Fisher', 'Kylie Fisher', 'kylie1@example.com', '12345',2),
('LXM235', 'Liam', 'Porter', 'Liam Porter', 'liam1@example.com', 'abcdef',2),
('LXR568', 'Laura', 'Butler', 'Laura Butler', 'laura1@example.com', '123abc',2),
('LXR570', 'Luna', 'Fisher', 'Luna Fisher', 'luna1@example.com', '456def',2),
('LXR891', 'Logan', 'Henderson', 'Logan Henderson', 'logan1@example.com', '789ghi',2),
('LXS735', 'Leah', 'Simmons', 'Leah Simmons', 'leah1@example.com', 'iloveyou',2),
('LXS935', 'Lucas', 'Graham', 'Lucas Graham', 'lucas1@example.com', 'sunshine123',2),
('LXT790', 'Luke', 'Tucker', 'Luke Tucker', 'luke1@example.com', 'letmein1234',2),
('LXT891', 'Lily', 'Peterson', 'Lily Peterson', 'l1ily@example.com', 'letmein1852',2),
('LXW891', 'Liam', 'Robertson', 'Liam Robertson', 'l1iam@example.com', 'password1234',2),
('MXB896', 'Michael', 'Porter', 'Michael Porter', 'michael1@example.com', 'iloveyou456',2),
('MXB899', 'Max', 'Henderson', 'Max Henderson', 'max1@example.com', 'qwertyuiop',2),
('MXG891', 'Madison', 'Fisher', 'Madison Fisher', 'madison1@example.com', '1234567890',2),
('MXH891', 'Mia', 'Butler', 'Mia Butler', 'mia1@example.com', 'abc123456',2),
('MXS891', 'Mila', 'Fisher', 'Mila Fisher', 'mila1@example.com', '987654321',2),
('MXT891', 'Megan', 'Thompson', 'Megan Thompson', 'megan1@example.com', 'asdfghjkl',2),
('NXC891', 'Natalie', 'Watson', 'Natalie Watson', 'natalie1@example.com', 'zxcvbnm',2),
('NXP568', 'Nathan', 'Wallace', 'Nathan Wallace', 'nathan1@example.com', 'trustno1',2),
('PXM891', 'Peyton', 'Fisher', 'Peyton Fisher', 'peyton1@example.com', 'abcd1234',2),
('PXR891', 'Patrick', 'Butler', 'Patrick Butler', 'patrick1@example.com', 'passw0rd',2),
('RXC235', 'Ryan', 'Murphy', 'Ryan Murphy', 'ryan1@example.com', '1234567890',2),
('RXC245', 'Rachel', 'Henderson', 'Rachel Henderson', 'rachel1@example.com', 'qwerty12345',2),
('RXC891', 'Reagan', 'Foster', 'Reagan Foster', 'reagan1@example.com', 'iloveyou1234',2),
('RXJ891', 'Ryan', 'Wallace', 'Ryan Wallace', 'ryan12@example.com', 'trustno12',2),
('RXM235', 'Ryan', 'Porter', 'Ryan Porter', 'ryan13@example.com', 'abcd123456',2),
('SXB235', 'Sophie', 'Brown', 'Sophie Brownn', 'sophie1@example.com', '123456',2),
('SXB891', 'Samantha', 'Brown', 'Samantha Brownn', 'samantha1@example.com', 'abcdef',2);
 
INSERT INTO Users (User_ID, FirstName, LastName, FullName, EmailID, UserPassword, Role_Id) VALUES
('AXM891', 'Ava', 'Martin', 'Ava Martin', 'ava1@example.com', 'p@ssw0rd', 1),
('BXB235', 'Bella', 'Taylor', 'Bella Taylor', 'bella1@example.com', 'secret123', 1),
('BXH891', 'Brooklyn', 'Robinson', 'Brooklyn Robinson', 'brooklyn1@example.com', 'pass123', 1),
('BXP235', 'Benjamin', 'Hill', 'Benjamin Hill', 'be1n@example.com', 'mypass', 1),
('BXT891', 'Brody', 'Wright', 'Brody Wright', 'brod1y@example.com', 'letmein', 1),
('CXD235', 'Chloe', 'Nelson', 'Chloe Nelson', 'chl1oe@example.com', '123456', 1),
('CXM124', 'Christopher', 'Hall', 'Christopher Hall', 'chris1@example.com', 'qwerty', 1),
('CXT891', 'Carter', 'Turner', 'Carter Turner', 'carter1@example.com', '123abc', 1),
('DXB235', 'Daniel', 'Butler', 'Daniel Butler', 'daniel1@example.com', 'welcome', 1),
('DXG235', 'Dylan', 'Stewart', 'Dylan Stewart', 'dylan1@example.com', 'sunshine', 1),
('DXM235', 'Daisy', 'Powell', 'Daisy Powell', 'daisy1@example.com', 'password', 1),
('DXT235', 'Dominic', 'Ward', 'Dominic Ward', 'do1m@example.com', 'pass1234', 1);

select * from users;

/* Student table */ 
 CREATE TABLE IF NOT EXISTS  student (
    Student_ID VARCHAR(50) UNIQUE NOT NULL,
    Course_year INT,
    Date_enrolled DATE,
    FOREIGN KEY (Student_ID) REFERENCES Users(User_ID)
);

INSERT INTO student (Student_ID, Course_year, Date_enrolled) VALUES
('AXM890', 2022, '2022-03-15'),
('BXB234', 2023, '2023-05-20'),
('BXP234', 2023, '2023-09-05'),
('BXT890', 2022, '2022-11-28'),
('CXD234', 2024, '2024-02-18'),
('CXM123', 2023, '2023-06-30'),
('DXB234', 2024, '2024-04-03'),
('DXG234', 2023, '2023-12-17'),
('DXM234', 2022, '2022-10-12'),
('DXT234', 2024, '2024-07-08'),
('FXS234', 2022, '2022-05-14'),
('GXR890', 2024, '2024-03-19'),
('GXT234', 2023, '2023-07-07'),
('IXS234', 2022, '2022-09-28'),
('JXK123', 2024, '2024-01-21'),
('JXL567', 2023, '2023-04-13'),
('KXG234', 2024, '2024-03-01'),
('KXT567', 2023, '2023-10-24'),
('LXM234', 2022, '2022-12-15'),
('LXR567', 2024, '2024-08-04'),
('LXR569', 2023, '2023-11-09'),
('LXR890', 2022, '2022-07-27'),
('LXS734', 2024, '2024-05-30'),
('LXS934', 2023, '2023-03-05'),
('LXT789', 2022, '2022-01-18'),
('MXG890', 2023, '2023-10-17'),
('MXH890', 2022, '2022-11-28'),
('MXS890', 2024, '2024-04-07'),
('MXT890', 2023, '2023-08-02'),
('NXC890', 2022, '2022-12-23'),
('NXP567', 2024, '2024-07-16'),
('RXC234', 2024, '2024-03-11'),
('RXC244', 2023, '2023-06-24'),
('RXC890', 2022, '2022-08-15'),
('RXJ890', 2024, '2024-02-02'),
('RXM234', 2023, '2023-05-19'),
('RXS234', 2024, '2024-01-31'),
('RXT567', 2023, '2023-09-22');

INSERT INTO student (Student_ID, Course_year, Date_enrolled) VALUES
('AXM891', 2023, '2023-09-21'),
('BXB235', 2023, '2023-08-21'),
('BXH891', 2022, '2022-09-24'),
('BXP235', 2023, '2023-09-21'),
('BXT891', 2023, '2023-09-19'),
('CXD235', 2023, '2023-08-11'),
('CXM124', 2023, '2023-05-21'),
('CXT891', 2023, '2023-09-21'),
('DXB235', 2023, '2023-03-11'),
('DXG235', 2022, '2022-01-21'),
('DXM235', 2024, '2024-03-19'),
('DXT235', 2022, '2022-09-10');
 
 select * from student;
 
/* Faculty Table */
 Create table IF NOT EXISTS faculty (
 Faculty_ID VARCHAR(50) UNIQUE NOT NULL,
 Department VARCHAR(255),
 Office_location VARCHAR(255),
 FOREIGN KEY (Faculty_ID) REFERENCES Users(User_ID) );
 
INSERT INTO faculty (Faculty_ID, Department, Office_Location)
VALUES 
('BXB234', 'Management', '2.223'),
('CXD234', 'Computer Science', '2.112'),
('DXB234', 'Management Science', '2.231'),
('DXG234', 'Computer Science', '2.223'),
('FXS234', 'Management', '2.112'),
('IXS234', 'Computer Science', '2.231'),
('KXG234', 'Management Science', '2.223'),
('RXC234', 'Management', '2.112'),
('RXS234', 'Computer Science', '2.231'),
('RXT567', 'Management Science', '2.223'),
('SXM567', 'Management', '2.112'),
('SXT234', 'Computer Science', '2.231'),
('TXB234', 'Management Science', '2.223'),
('TXH567', 'Management', '2.112'),
('TXJ284', 'Computer Science', '2.231');

INSERT INTO faculty (Faculty_ID, Department, Office_Location)
VALUES 
('DXY891','Management','2.223'),
('FXS235','Computer Science','2.112'),
('GXR891','Management Science','2.231'),
('GXT235','Management','2.223'),
('IXS235','Computer Science','2.112'),
('JXK124','Management Science','2.231'),
('JXL568','Management','2.223'),
('JXM891','Computer Science','2.112'),
('KXG235','Management Science','2.231'),
('KXT568','Management','2.223'),
('LXM235','Computer Science','2.112'),
('LXR568','Management Science','2.231'),
('LXR570','Management','2.223'),
('LXR891','Computer Science','2.112'),
('LXS735','Management Science','2.231'),
('LXS935','Management','2.223'),
('LXT790','Computer Science','2.112'),
('LXT891','Management Science','2.231'),
('LXW891','Management','2.223'),
('MXB896','Computer Science','2.112'),
('MXB899','Management Science','2.231'),
('MXG891','Management','2.223'),
('MXH891','Computer Science','2.112'),
('MXS891','Management Science','2.231'),
('MXT891','Management','2.223'),
('NXC891','Computer Science','2.112'),
('NXP568','Management Science','2.231'),
('PXM891','Management','2.223'),
('PXR891','Computer Science','2.112'),
('RXC235','Management Science','2.231'),
('RXC245','Management','2.223'),
('RXC891','Computer Science','2.112'),
('RXJ891','Management Science','2.231'),
('RXM235','Management','2.223'),
('SXB235','Computer Science','2.112'),
('SXB891','Management Science','2.231');


select * from Faculty;

/* Quiz Difficulty Table */

CREATE TABLE IF NOT EXISTS quizDifficulty ( 
	Quiz_Difficulty_Id INT PRIMARY KEY, 
	QuizDifficultyLevel VARCHAR (255) NOT NULL	 
); 

INSERT INTO quizDifficulty (Quiz_Difficulty_Id, QuizDifficultyLevel) 
VALUES 
(1, 'Easy'),
(2, 'Medium'),
(3, 'Hard');


/* Quiz Table */
CREATE TABLE IF NOT EXISTS Quiz (
    Quiz_ID INT AUTO_INCREMENT PRIMARY KEY,
    User_ID VARCHAR(50),
    Quiz_Title VARCHAR(255),
    Quiz_Description TEXT,
    Quiz_Difficulty_ID INT,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Quiz_Difficulty_Id) REFERENCES quizDifficulty(Quiz_Difficulty_Id)
);


INSERT INTO Quiz (User_ID, Quiz_Title, Quiz_Description, Quiz_Difficulty_ID) VALUES
('AXM890', 'Management Basics', 'Introduction to management principles', 1 ),
('BXB234', 'Marketing Fundamentals', 'Understanding the basics of marketing', 1),
('BXH890', 'Financial Management', 'Overview of financial management concepts', 2),
('BXP234', 'Human Resource Management', 'Introduction to HR management practices', 2),
('BXT890', 'Strategic Management', 'Fundamentals of strategic planning', 3 ),
('CXD234', 'Operations Management', 'Managing business operations effectively', 3),
('CXM123', 'Supply Chain Management', 'Understanding supply chain strategies', 1),
('CXT890', 'Project Management', 'Introduction to project management principles', 2),
('DXB234', 'Entrepreneurship', 'Essentials of entrepreneurship and innovation', 1),
('DXG234', 'Business Ethics', 'Ethical considerations in business decision-making', 2),
('DXM234', 'Leadership Skills', 'Developing effective leadership qualities', 3),
('DXT234', 'Business Communication', 'Enhancing communication skills in business', 1),
('DXY890', 'Organizational Behavior', 'Understanding human behavior in organizations', 2),
('FXS234', 'Strategic Marketing', 'Advanced concepts in strategic marketing', 3),
('GXR890', 'Financial Analysis', 'Analyzing financial statements and ratios', 1),
('GXT234', 'Investment Management', 'Managing investment portfolios effectively', 2),
('IXS234', 'International Business', 'Overview of international business environments', 3),
('JXK123', 'Management Information Systems', 'Understanding MIS and its applications', 1),
('JXL567', 'Consumer Behavior', 'Studying consumer behavior patterns', 2),
('JXM890', 'E-commerce Strategies', 'Developing e-commerce strategies for business', 3),
('KXG234', 'Retail Management', 'Managing retail operations and strategies', 1),
('KXT567', 'Brand Management', 'Creating and managing brand identities', 2),
('LXM234', 'Business Law', 'Fundamentals of business law and regulations', 3),
('LXR567', 'Organizational Development', 'Enhancing organizational effectiveness', 1),
('LXR569', 'Business Analytics ', 'Introduction to business analytics techniques', 2),
('LXR890', 'Quality Management', 'Implementing quality management systems', 3),
('LXS734', 'Digital Marketing', 'Strategies for marketing in the digital age', 1),
('LXS934', 'Corporate Finance', 'Financial decision-making in corporate settings', 2),
('LXT789', 'Business Strategy', 'Formulating and implementing business strategies', 3),
('LXT890', 'Operations Research', 'Applications of OR in business decision-making', 1),
('LXW890', 'Managerial Economics', 'Economic principles applied to managerial decisions', 2),
('MXB895', 'Product Management', 'Managing product life cycles and portfolios', 3),
('MXB898', 'Risk Management', 'Identifying and managing business risks effectively', 1),
('MXG890', 'Change Management', 'Managing organizational change processes', 2),
('MXH890', 'Business Innovation', 'Creating a culture of innovation in business', 3),
('MXS890', 'Sales Management', 'Strategies for effective sales management', 1),
('MXT890', 'Service Marketing', 'Marketing strategies for service-based businesses', 2),
('NXC890', 'Retail Marketing', 'Marketing strategies for retail businesses', 3),
('NXP567', 'Business Negotiation', 'Skills and techniques for effective negotiations', 1),
('PXM890', 'Market Research', 'Conducting market research and analysis', 2),
('PXR890', 'Business Process Reengineering', 'Redesigning business processes for efficiency', 3),
('RXC234', 'Customer Relationship Management', 'Strategies for managing customer relationships', 1),
('RXC244', 'Business Development', 'Strategies for business growth and expansion', 2),
('RXC890', 'Innovation Management', 'Managing innovation processes in organizations', 3),
('RXJ890', 'Supply Chain Optimization', 'Optimizing supply chain operations', 1),
('RXM234', 'Corporate Governance', 'Principles of corporate governance and ethics', 2),
('RXR890', 'Sales Forecasting', 'Forecasting techniques for sales predictions', 3),
('RXS234', 'Product Development', 'Process of developing new products and services', 1),
('RXT567', 'Retail Operations Management', 'Managing retail operations efficiently', 2),
('SXB234', 'Digital Transformation', 'Strategies for digital transformation in business', 3),
('SXB890', 'Business Intelligence', 'Applications of BI in decision-making', 1),
('SXM567', 'Entrepreneurial Finance', 'Financial management for startups and entrepreneurs', 2),
('SXS890', 'Strategic Planning', 'Developing strategic plans for business growth', 3),
('SXT234', 'Global Marketing', 'Marketing strategies for global markets', 1),
('TXB234', 'Business Continuity Planning', 'Developing business continuity plans', 2),
('TXB890', 'Supply Chain Security', 'Securing supply chain operations', 3),
('TXH567', 'Retail Merchandising', 'Merchandising strategies for retail businesses', 1),
('TXS890', 'Leadership Development', 'Developing leadership skills and competencies', 3),
('TXW890', 'Digital Strategy', 'Developing digital strategies for business success', 1),
('VXG345', 'Business Ethics', 'Ethical considerations in business decision-making', 2);

select * from quiz;
 
 
 /* QuizAttempts Table */
 CREATE TABLE IF NOT EXISTS QuizAttempts (
    Attempt_id INT AUTO_INCREMENT PRIMARY KEY,
    Quiz_ID INT,
	User_ID VARCHAR(50), 
    Start_time DATETIME,
    End_time DATETIME,
    No_of_Attempts INT,
    Score DECIMAL(5,2),
    Status_Message VARCHAR(50),
    Due_Date DATETIME,
    FOREIGN KEY (Quiz_ID) REFERENCES Quiz(Quiz_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) 
);


INSERT INTO QuizAttempts (Quiz_ID, User_ID, Start_time, End_time, No_of_Attempts, Score)
VALUES
(1, 'RXT567',  '2023-01-01 08:00:00', '2023-01-01 09:00:00', 1, 90.50),
(2, 'RXT567', '2023-01-02 09:00:00', '2023-01-02 10:00:00', 1, 85.00),
(3, 'RXT567', '2023-01-03 10:00:00', '2023-01-03 11:00:00', 2, 88.75),
(4, 'RXT567', '2023-01-04 11:00:00', '2023-01-04 12:00:00', 3, 65.00),
(5, 'RXT567', '2023-01-05 12:00:00', '2023-01-05 13:00:00', 2, 81.25),
(6, 'RXT567', '2023-01-06 13:00:00', '2023-01-06 14:00:00', 1, 87.50),
(7, 'RXT567', '2023-01-07 14:00:00', '2023-01-07 15:00:00', 1, 92.00),
(8, 'RXT567', '2023-01-08 15:00:00', '2023-01-08 16:00:00', 2, 59.75),
(9, 'RXT567', '2023-01-09 16:00:00', '2023-01-09 17:00:00', 3, 94.25),
(10, 'RXT567', '2023-01-10 17:00:00', '2023-01-10 18:00:00', 2, 70.50),
(11, 'RXS234', '2023-01-11 18:00:00', '2023-01-11 19:00:00', 1, 86.00),
(12, 'RXS234', '2023-01-12 19:00:00', '2023-01-12 20:00:00', 1, 93.50),
(13, 'RXS234', '2023-01-13 20:00:00', '2023-01-13 21:00:00', 2, 68.25),
(14, 'RXS234', '2023-01-14 21:00:00', '2023-01-14 22:00:00', 3, 95.75),
(15, 'RXS234', '2023-01-15 22:00:00', '2023-01-15 23:00:00', 2, 91.00),
(16, 'RXS234', '2023-01-16 23:00:00', '2023-01-16 00:00:00', 1, 87.75),
(17, 'RXS234', '2023-01-17 00:00:00', '2023-01-17 01:00:00', 1, 92.50),
(18, 'RXS234', '2023-01-18 01:00:00', '2023-01-18 02:00:00', 2, 90.25),
(19, 'RXS234', '2023-01-19 02:00:00', '2023-01-19 03:00:00', 3, 94.50),
(20, 'RXS234', '2023-01-20 03:00:00', '2023-01-20 04:00:00', 2, 90.75),
(21, 'RXM234', '2023-01-21 04:00:00', '2023-01-21 05:00:00', 1, 78.00),
(22, 'RXM234', '2023-01-22 05:00:00', '2023-01-22 06:00:00', 1, 93.00),
(23, 'RXM234', '2023-01-23 06:00:00', '2023-01-23 07:00:00', 2, 89.50),
(24, 'RXM234', '2023-01-24 07:00:00', '2023-01-24 08:00:00', 3, 65.25),
(25, 'RXM234', '2023-01-25 08:00:00', '2023-01-25 09:00:00', 2, 91.50),
(26, 'RXM234', '2023-01-26 09:00:00', '2023-01-26 10:00:00', 1, 87.25),
(27, 'RXM234', '2023-01-27 10:00:00', '2023-01-27 11:00:00', 1, 92.25),
(28, 'RXM234', '2023-01-28 11:00:00', '2023-01-28 12:00:00', 2, 89.00),
(29, 'RXM234', '2023-01-29 12:00:00', '2023-01-29 13:00:00', 3, 94.00),
(30, 'RXM234', '2023-01-30 13:00:00', '2023-01-30 14:00:00', 1, 90.00),
(31, 'RXM234', '2023-01-31 14:00:00', '2023-01-31 15:00:00', 1, 93.75),
(32, 'NXP567', '2023-02-01 15:00:00', '2023-02-01 16:00:00', 2, 88.50),
(33, 'NXP567', '2023-02-02 16:00:00', '2023-02-02 17:00:00', 3, 94.75),
(34, 'NXP567', '2023-02-03 17:00:00', '2023-02-03 18:00:00', 2, 90.00),
(35, 'NXP567', '2023-02-04 18:00:00', '2023-02-04 19:00:00', 1, 87.50),
(36, 'NXP567', '2023-02-05 19:00:00', '2023-02-05 20:00:00', 1, 92.75),
(37, 'NXP567', '2023-02-06 20:00:00', '2023-02-06 21:00:00', 2, 89.25),
(38, 'NXP567', '2023-02-07 21:00:00', '2023-02-07 22:00:00', 3, 95.50),
(39, 'NXP567', '2023-02-08 22:00:00', '2023-02-08 23:00:00', 2, 71.75),
(40, 'NXP567', '2023-02-09 23:00:00', '2023-02-09 00:00:00', 1, 88.25),
(41, 'NXP567', '2023-02-10 00:00:00', '2023-02-10 01:00:00', 1, 93.25),
(42, 'LXR890', '2023-02-11 01:00:00', '2023-02-11 02:00:00', 2, 88.00),
(43, 'LXR890', '2023-02-12 02:00:00', '2023-02-12 03:00:00', 3, 94.25),
(44, 'LXR890', '2023-02-13 03:00:00', '2023-02-13 04:00:00', 2, 80.50),
(45, 'LXR890', '2023-02-14 04:00:00', '2023-02-14 05:00:00', 1, 86.75),
(46, 'LXR890', '2023-02-15 05:00:00', '2023-02-15 06:00:00', 1, 92.00),
(47, 'LXR890', '2023-02-16 06:00:00', '2023-02-16 07:00:00', 2, 89.00),
(48, 'LXR890', '2023-02-17 07:00:00', '2023-02-17 08:00:00', 3, 95.00),
(49, 'LXR890', '2023-02-18 08:00:00', '2023-02-18 09:00:00', 2, 91.25),
(50, 'LXR890', '2023-02-19 09:00:00', '2023-02-19 10:00:00', 1, 77.50),
(51, 'LXR890', '2023-02-20 10:00:00', '2023-02-20 11:00:00', 1, 92.50),
(52, 'KXT567', '2023-02-21 11:00:00', '2023-02-21 12:00:00', 2, 89.50),
(53, 'KXT567', '2023-02-22 12:00:00', '2023-02-22 13:00:00', 3, 94.75),
(54, 'KXT567', '2023-02-23 13:00:00', '2023-02-23 14:00:00', 2, 91.00),
(55, 'KXT567', '2023-02-24 14:00:00', '2023-02-24 15:00:00', 1, 87.25),
(56, 'KXT567', '2023-02-25 15:00:00', '2023-02-25 16:00:00', 1, 92.25),
(57, 'KXT567', '2023-02-26 16:00:00', '2023-02-26 17:00:00', 2, 69.25),
(58, 'KXT567', '2023-02-27 17:00:00', '2023-02-27 18:00:00', 3, 95.50),
(59, 'KXT567', '2023-02-28 18:00:00', '2023-02-28 19:00:00', 2, 81.75),
(60, 'KXT567', '2023-03-01 19:00:00', '2023-03-01 20:00:00', 1, 87.50);

select * from quizattempts;

UPDATE quizattempts SET User_ID = (SELECT USER_ID FROM QUIZ WHERE QUIZ.QUIZ_ID = quizattempts.QUIZ_ID);

UPDATE quizattempts SET DUE_DATE = '2024-12-31';

UPDATE quizattempts SET STATUS_MESSAGE = 'ASSIGNED' WHERE ATTEMPT_ID BETWEEN 1 AND 30;

UPDATE quizattempts SET STATUS_MESSAGE = 'COMPLETED' WHERE ATTEMPT_ID BETWEEN 31 AND 60;

INSERT INTO QuizAttempts (Quiz_ID, User_ID, Start_time, End_time, No_of_Attempts, Score, Status_Message, Due_Date)
VALUES (60, 'VXG345', '2023-03-01 19:00:00', '2023-03-01 20:00:00', 2, 95.00, 'COMPLETED', '2024-12-31');


/* Quizattempts Table */
CREATE TABLE quizattempts_history
as select * from quizattempts;

/* ResourceSuggestion Table */
CREATE TABLE IF NOT EXISTS ResourceSuggestion (
    resource_ID INT AUTO_INCREMENT PRIMARY KEY,
    User_ID VARCHAR(50),
    Quiz_ID INT,
    ResourceName VARCHAR(255),
    ResourceType VARCHAR(50),
    ResourceLink VARCHAR(255),
    ResourceDescription TEXT,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Quiz_ID) REFERENCES Quiz(Quiz_ID)
);


INSERT INTO ResourceSuggestion (User_ID, Quiz_ID, ResourceName, ResourceType, ResourceLink, ResourceDescription) VALUES
('AXM890', 1, 'Resource 1', 'Book', 'Link1', 'Description 1'),
('BXB234', 2, 'Resource 2', 'Website', 'Link2', 'Description 2'),
('BXH890', 3, 'Resource 3', 'Book', 'Link3', 'Description 3'),
('BXP234', 4, 'Resource 4', 'Website', 'Link4', 'Description 4'),
('BXT890', 5, 'Resource 5', 'Book', 'Link5', 'Description 5'),
('CXD234', 6, 'Resource 6', 'Website', 'Link6', 'Description 6'),
('CXM123', 7, 'Resource 7', 'Book', 'Link7', 'Description 7'),
('CXT890', 8, 'Resource 8', 'Website', 'Link8', 'Description 8'),
('DXB234', 9, 'Resource 9', 'Book', 'Link9', 'Description 9'),
('DXG234', 10, 'Resource 10', 'Website', 'Link10', 'Description 10'),
('DXM234', 11, 'Resource 11', 'Book', 'Link11', 'Description 11'),
('DXT234', 12, 'Resource 12', 'Website', 'Link12', 'Description 12'),
('DXY890', 13, 'Resource 13', 'Book', 'Link13', 'Description 13'),
('FXS234', 14, 'Resource 14', 'Website', 'Link14', 'Description 14'),
('GXR890', 15, 'Resource 15', 'Book', 'Link15', 'Description 15'),
('GXT234', 16, 'Resource 16', 'Website', 'Link16', 'Description 16'),
('IXS234', 17, 'Resource 17', 'Book', 'Link17', 'Description 17'),
('JXK123', 18, 'Resource 18', 'Website', 'Link18', 'Description 18'),
('JXL567', 19, 'Resource 19', 'Book', 'Link19', 'Description 19'),
('JXM890', 20, 'Resource 20', 'Website', 'Link20', 'Description 20'),
('KXG234', 21, 'Resource 21', 'Book', 'Link21', 'Description 21'),
('KXT567', 22, 'Resource 22', 'Website', 'Link22', 'Description 22'),
('LXM234', 23, 'Resource 23', 'Book', 'Link23', 'Description 23'),
('LXR567', 24, 'Resource 24', 'Website', 'Link24', 'Description 24'),
('LXR569', 25, 'Resource 25', 'Book', 'Link25', 'Description 25'),
('LXR890', 26, 'Resource 26', 'Website', 'Link26', 'Description 26'),
('LXS734', 27, 'Resource 27', 'Book', 'Link27', 'Description 27'),
('LXS934', 28, 'Resource 28', 'Website', 'Link28', 'Description 28'),
('LXT789', 29, 'Resource 29', 'Book', 'Link29', 'Description 29'),
('LXT890', 30, 'Resource 30', 'Website', 'Link30', 'Description 30'),
('LXW890', 31, 'Resource 31', 'Book', 'Link31', 'Description 31'),
('MXB895', 32, 'Resource 32', 'Website', 'Link32', 'Description 32'),
('MXB898', 33, 'Resource 33', 'Book', 'Link33', 'Description 33'),
('MXG890', 34, 'Resource 34', 'Website', 'Link34', 'Description 34'),
('MXH890', 35, 'Resource 35', 'Book', 'Link35', 'Description 35'),
('MXS890', 36, 'Resource 36', 'Website', 'Link36', 'Description 36'),
('MXT890', 37, 'Resource 37', 'Book', 'Link37', 'Description 37'),
('NXC890', 38, 'Resource 38', 'Website', 'Link38', 'Description 38'),
('NXP567', 39, 'Resource 39', 'Book', 'Link39', 'Description 39'),
('PXM890', 40, 'Resource 40', 'Website', 'Link40', 'Description 40'),
('PXR890', 41, 'Resource 41', 'Book', 'Link41', 'Description 41'),
('RXC234', 42, 'Resource 42', 'Website', 'Link42', 'Description 42'),
('RXC244', 43, 'Resource 43', 'Book', 'Link43', 'Description 43'),
('RXC890', 44, 'Resource 44', 'Website', 'Link44', 'Description 44'),
('RXJ890', 45, 'Resource 45', 'Book', 'Link45', 'Description 45'),
('RXM234', 46, 'Resource 46', 'Website', 'Link46', 'Description 46'),
('RXR890', 47, 'Resource 47', 'Book', 'Link47', 'Description 47'),
('RXS234', 48, 'Resource 48', 'Website', 'Link48', 'Description 48'),
('RXT567', 49, 'Resource 49', 'Book', 'Link49', 'Description 49'),
('SXB234', 50, 'Resource 50', 'Website', 'Link50', 'Description 50'),
('SXB890', 51, 'Resource 51', 'Book', 'Link51', 'Description 51'),
('SXM567', 52, 'Resource 52', 'Website', 'Link52', 'Description 52'),
('SXS890', 53, 'Resource 53', 'Book', 'Link53', 'Description 53'),
('SXT234', 54, 'Resource 54', 'Website', 'Link54', 'Description 54'),
('TXB234', 55, 'Resource 55', 'Book', 'Link55', 'Description 55'),
('TXB890', 56, 'Resource 56', 'Website', 'Link56', 'Description 56'),
('TXH567', 57, 'Resource 57', 'Book', 'Link57', 'Description 57'),
('TXJ284', 58, 'Resource 58', 'Website', 'Link58', 'Description 58'),
('TXS890', 59, 'Resource 59', 'Book', 'Link59', 'Description 59'),
('TXW890', 60, 'Resource 60', 'Website', 'Link60', 'Description 60');

select * from ResourceSuggestion;

/* Permissions Table */
CREATE TABLE Permissions (
    User_ID VARCHAR(50),
    Quiz_ID INT,
    Grant_or_Deny ENUM('Grant', 'Deny'),
    Permission_Level ENUM('Read', 'Write', 'Execute', 'Delete', 'Create', 'Modify'),
    Grantor VARCHAR(255),
    Description VARCHAR(255),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Quiz_ID) REFERENCES Quiz(Quiz_ID)
);

INSERT INTO Permissions (User_ID, Quiz_ID, Grant_or_Deny, Permission_Level, Grantor, Description)
VALUES
('AXM890', 1, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('BXB234', 2, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('BXH890', 3, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('BXP234', 4, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('BXT890', 5, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('CXD234', 6, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('CXM123', 7, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('CXT890', 8, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('DXB234', 9, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('DXG234', 10, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('DXM234', 11, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('DXT234', 12, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('DXY890', 13, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('FXS234', 14, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('GXR890', 15, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('GXT234', 16, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('IXS234', 17, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('JXK123', 18, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('JXL567', 19, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('JXM890', 20, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('KXG234', 21, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('KXT567', 22, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('LXM234', 23, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('LXR567', 24, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('LXR569', 25, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('LXR890', 26, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('LXS734', 27, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('LXS934', 28, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('LXT789', 29, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('LXT890', 30, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('LXW890', 31, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('MXB895', 32, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('MXB898', 33, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('MXG890', 34, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('MXH890', 35, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('MXS890', 36, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('MXT890', 37, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('NXC890', 38, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('NXP567', 39, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('PXM890', 40, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('PXR890', 41, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('RXC234', 42, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('RXC244', 43, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('RXC890', 44, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('RXJ890', 45, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('RXM234', 46, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('RXR890', 47, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('RXS234', 48, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('RXT567', 49, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('SXB234', 50, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('SXB890', 51, 'Grant', 'Write', 'Admin', 'Permission to Write quiz'),
('SXM567', 52, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('SXS890', 53, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('SXT234', 54, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('TXB234', 55, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('TXB890', 56, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('TXH567', 57, 'Deny', 'Read', 'Admin', 'Permission to read quiz'),
('TXJ284', 58, 'Grant', 'Modify', 'Admin', 'Permission to Modify quiz'),
('TXS890', 59, 'Grant', 'Read', 'Admin', 'Permission to read quiz'),
('TXW890', 60, 'Deny', 'Read', 'Admin', 'Permission to read quiz');

select * from Permissions;

/* AIfeedback table */
CREATE TABLE AIfeedback (
    Feedback_ID INT AUTO_INCREMENT PRIMARY KEY,
    Attempt_ID INT,
    Score DECIMAL(5,2),
    correct_option INT,
    wrong_option INT,
    wrong_answer_feedback_key_words VARCHAR(255),
    right_answer_feedback_key_words VARCHAR(255),
    feedback_description_wrong_answer VARCHAR(255),
    feedback_description_right_answer VARCHAR(255),
    FOREIGN KEY (Attempt_ID) REFERENCES QuizAttempts(Attempt_ID)
);

INSERT INTO AIfeedback (Attempt_ID, Score, correct_option, wrong_option, wrong_answer_feedback_key_words, right_answer_feedback_key_words, feedback_description_wrong_answer, feedback_description_right_answer)
SELECT 
    Attempt_ID,
    ROUND(RAND() * 100, 2) AS Score,
    FLOOR(RAND() * 4) + 1 AS correct_option,
    FLOOR(RAND() * 4) + 1 AS wrong_option,
    'computer science key words' AS wrong_answer_feedback_key_words,
    'management words' AS right_answer_feedback_key_words,
    CAST(FLOOR(RAND() * 4) + 1 AS CHAR(1)) AS feedback_description_wrong_answer,
    CAST(FLOOR(RAND() * 4) + 1 AS CHAR(1)) AS feedback_description_right_answer
FROM
	QuizAttempts;

ALTER TABLE AIfeedback ADD COLUMN created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

select * from AIfeedback;

/* AIfeedback_history Table */
CREATE TABLE AIfeedback_history
AS SELECT * FROM AIfeedback;

select * from AIfeedback_history;

/* Questions Table */
CREATE TABLE QuestionsTable (
    Question_ID INT AUTO_INCREMENT PRIMARY KEY,
    Quiz_ID INT,
    Question_type VARCHAR(255),
    question_description VARCHAR(255),
    question_score DECIMAL(5,2),
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Quiz_ID) REFERENCES Quiz(Quiz_ID)
);

-- Generate 60 observations for QuestionsTable
INSERT INTO QuestionsTable (Quiz_ID, Question_type, question_description, question_score)
SELECT 
    FLOOR((ROW_NUMBER() OVER () - 1) / 10) + 1 AS Quiz_ID,  -- Generate Quiz_ID starting from 1 to 6
    CASE WHEN RAND() < 0.5 THEN 'Multiple Choice' ELSE 'True/False' END AS Question_type,  -- Randomly select question type
    CONCAT('Question ', ROW_NUMBER() OVER ()) AS question_description,  -- Generate question description
    ROUND(RAND() * 10, 2) AS question_score  -- Generate random question score between 0 and 10
FROM
    INFORMATION_SCHEMA.TABLES
LIMIT 60;

select * from Questionstable;

/* Options table */
CREATE TABLE Options (
    Option_ID INT AUTO_INCREMENT PRIMARY KEY,
    Question_ID INT,
    Option_text VARCHAR(255),
    Option_Seq INT CHECK (Option_Seq >= 1 AND Option_Seq <= 4),
    is_correct ENUM('yes', 'no'),
    FOREIGN KEY (Question_ID) REFERENCES QuestionsTable(Question_ID)
);

-- Generate 60 observations for Options table
INSERT INTO Options (Question_ID, Option_text, Option_Seq, is_correct)
SELECT 
    (ROW_NUMBER() OVER () - 1) % 15 + 1 AS Question_ID,  -- Generate Question_ID starting from 1 to 15, repeating every 15 rows
    CONCAT('Option ', (ROW_NUMBER() OVER () - 1) % 4 + 1) AS Option_text,  -- Generate Option_text as Option 1, 2, 3, 4 repeating every 4 rows
    (ROW_NUMBER() OVER () - 1) % 4 + 1 AS Option_Seq,  -- Generate correct_option as 1, 2, 3, 4 repeating every 4 rows
    CASE WHEN (ROW_NUMBER() OVER () - 1) % 4 + 1 = 1 THEN 'yes' ELSE 'no' END AS is_correct  -- Mark first option as correct, rest as incorrect
FROM
    INFORMATION_SCHEMA.TABLES
LIMIT 60;

select * from options;

/* quiz_notification table */
CREATE TABLE quiz_notification (
    quiz_notification_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(50),
    attempt_id INT, 
    quiz_id INT,
    description TEXT,
    is_read BOOLEAN DEFAULT FALSE,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (attempt_id) REFERENCES Quizattempts(attempt_id),
    FOREIGN KEY (quiz_id) REFERENCES Quizattempts(quiz_id)
);

INSERT INTO quiz_notification (user_id, attempt_id, quiz_id, description, is_read, timestamp) VALUES
('AXM890', '1', '1', 'A quiz 1 has been assigned to AXM890', '0', '2024-04-26 00:00:00'),
('BXB234', '2', '2', 'A quiz 2 has been assigned to BXB234', '0', '2024-04-26 00:00:00'),
('BXH890', '3', '3', 'A quiz 3 has been assigned to BXH890', '0', '2024-04-26 00:00:00'),
('BXP234', '4', '4', 'A quiz 4 has been assigned to BXP234', '0', '2024-04-26 00:00:00'),
('BXT890', '5', '5', 'A quiz 5 has been assigned to BXT890', '0', '2024-04-26 00:00:00'),
('CXD234', '6', '6', 'A quiz 6 has been assigned to CXD234', '0', '2024-04-26 00:00:00'),
('CXM123', '7', '7', 'A quiz 7 has been assigned to CXM123', '0', '2024-04-26 00:00:00'),
('CXT890', '8', '8', 'A quiz 8 has been assigned to CXT890', '0', '2024-04-26 00:00:00'),
('DXB234', '9', '9', 'A quiz 9 has been assigned to DXB234', '0', '2024-04-26 00:00:00'),
('DXG234', '10', '10', 'A quiz 10 has been assigned to DXG234', '0', '2024-04-26 00:00:00'),
('DXM234', '11', '11', 'A quiz 11 has been assigned to DXM234', '0', '2024-04-26 00:00:00'),
('DXT234', '12', '12', 'A quiz 12 has been assigned to DXT234', '0', '2024-04-26 00:00:00'),
('DXY890', '13', '13', 'A quiz 13 has been assigned to DXY890', '0', '2024-04-26 00:00:00'),
('FXS234', '14', '14', 'A quiz 14 has been assigned to FXS234', '0', '2024-04-26 00:00:00'),
('GXR890', '15', '15', 'A quiz 15 has been assigned to GXR890', '0', '2024-04-26 00:00:00'),
('GXT234', '16', '16', 'A quiz 16 has been assigned to GXT234', '0', '2024-04-26 00:00:00'),
('IXS234', '17', '17', 'A quiz 17 has been assigned to IXS234', '0', '2024-04-26 00:00:00'),
('JXK123', '18', '18', 'A quiz 18 has been assigned to JXK123', '0', '2024-04-26 00:00:00'),
('JXL567', '19', '19', 'A quiz 19 has been assigned to JXL567', '0', '2024-04-26 00:00:00'),
('JXM890', '20', '20', 'A quiz 20 has been assigned to JXM890', '0', '2024-04-26 00:00:00'),
('KXG234', '21', '21', 'A quiz 21 has been assigned to KXG234', '0', '2024-04-26 00:00:00'),
('KXT567', '22', '22', 'A quiz 22 has been assigned to KXT567', '0', '2024-04-26 00:00:00'),
('LXM234', '23', '23', 'A quiz 23 has been assigned to LXM234', '0', '2024-04-26 00:00:00'),
('LXR567', '24', '24', 'A quiz 24 has been assigned to LXR567', '0', '2024-04-26 00:00:00'),
('LXR569', '25', '25', 'A quiz 25 has been assigned to LXR569', '0', '2024-04-26 00:00:00'),
('LXR890', '26', '26', 'A quiz 26 has been assigned to LXR890', '0', '2024-04-26 00:00:00'),
('LXS734', '27', '27', 'A quiz 27 has been assigned to LXS734', '0', '2024-04-26 00:00:00'),
('LXS934', '28', '28', 'A quiz 28 has been assigned to LXS934', '0', '2024-04-26 00:00:00'),
('LXT789', '29', '29', 'A quiz 29 has been assigned to LXT789', '0', '2024-04-26 00:00:00'),
('LXT890', '30', '30', 'A quiz 30 has been assigned to LXT890', '0', '2024-04-26 00:00:00'),
('LXW890', '31', '31', 'A quiz 31 has been assigned to LXW890', '0', '2024-04-26 00:00:00'),
('MXB895', '32', '32', 'A quiz 32 has been assigned to MXB895', '0', '2024-04-26 00:00:00'),
('MXB898', '33', '33', 'A quiz 33 has been assigned to MXB898', '0', '2024-04-26 00:00:00'),
('MXG890', '34', '34', 'A quiz 34 has been assigned to MXG890', '0', '2024-04-26 00:00:00'),
('MXH890', '35', '35', 'A quiz 35 has been assigned to MXH890', '0', '2024-04-26 00:00:00'),
('MXS890', '36', '36', 'A quiz 36 has been assigned to MXS890', '0', '2024-04-26 00:00:00'),
('MXT890', '37', '37', 'A quiz 37 has been assigned to MXT890', '0', '2024-04-26 00:00:00'),
('NXC890', '38', '38', 'A quiz 38 has been assigned to NXC890', '0', '2024-04-26 00:00:00'),
('NXP567', '39', '39', 'A quiz 39 has been assigned to NXP567', '0', '2024-04-26 00:00:00'),
('PXM890', '40', '40', 'A quiz 40 has been assigned to PXM890', '0', '2024-04-26 00:00:00'),
('PXR890', '41', '41', 'A quiz 41 has been assigned to PXR890', '0', '2024-04-26 00:00:00'),
('RXC234', '42', '42', 'A quiz 42 has been assigned to RXC234', '0', '2024-04-26 00:00:00'),
('RXC244', '43', '43', 'A quiz 43 has been assigned to RXC244', '0', '2024-04-26 00:00:00'),
('RXC890', '44', '44', 'A quiz 44 has been assigned to RXC890', '0', '2024-04-26 00:00:00'),
('RXJ890', '45', '45', 'A quiz 45 has been assigned to RXJ890', '0', '2024-04-26 00:00:00'),
('RXM234', '46', '46', 'A quiz 46 has been assigned to RXM234', '0', '2024-04-26 00:00:00'),
('RXR890', '47', '47', 'A quiz 47 has been assigned to RXR890', '0', '2024-04-26 00:00:00'),
('RXS234', '48', '48', 'A quiz 48 has been assigned to RXS234', '0', '2024-04-26 00:00:00'),
('RXT567', '49', '49', 'A quiz 49 has been assigned to RXT567', '0', '2024-04-26 00:00:00'),
('SXB234', '50', '50', 'A quiz 50 has been assigned to SXB234', '0', '2024-04-26 00:00:00'),
('SXB890', '51', '51', 'A quiz 51 has been assigned to SXB890', '0', '2024-04-26 00:00:00'),
('SXM567', '52', '52', 'A quiz 52 has been assigned to SXM567', '0', '2024-04-26 00:00:00'),
('SXS890', '53', '53', 'A quiz 53 has been assigned to SXS890', '0', '2024-04-26 00:00:00'),
('SXT234', '54', '54', 'A quiz 54 has been assigned to SXT234', '0', '2024-04-26 00:00:00'),
('TXB234', '55', '55', 'A quiz 55 has been assigned to TXB234', '0', '2024-04-26 00:00:00'),
('TXB890', '56', '56', 'A quiz 56 has been assigned to TXB890', '0', '2024-04-26 00:00:00'),
('TXH567', '57', '57', 'A quiz 57 has been assigned to TXH567', '0', '2024-04-26 00:00:00'),
('TXS890', '58', '58', 'A quiz 58 has been assigned to TXS890', '0', '2024-04-26 00:00:00'),
('TXW890', '59', '59', 'A quiz 59 has been assigned to TXW890', '0', '2024-04-26 00:00:00'),
('VXG345', '60', '60', 'A quiz 60 has been assigned to VXG345', '0', '2024-04-26 00:00:00'),
('VXG345', '61', '60', 'A quiz 61 has been assigned to VXG345', '0', '2024-04-26 00:00:00');

select * from quiz_notification;

/* Badge table */

CREATE TABLE badge (
    user_id VARCHAR(50),
    quiz_id INT,
    attempt_id INT,
    score DECIMAL(10,2),
    badge_type ENUM('Gold', 'Silver', 'Bronze'),
    feedback TEXT,
    date_earned DATE,
    UNIQUE KEY (user_id, quiz_id, badge_type),
	FOREIGN KEY (attempt_id) REFERENCES Quizattempts(attempt_id)
);

INSERT INTO badge (user_id, quiz_id, attempt_id, score, badge_type, feedback, date_earned) VALUES
('AXM890', 1, 1, 95.5, 'Gold', 'Excellent performance!', '2024-04-01'),
('BXP234', 2, 2, 70.2, 'Bronze', 'Good effort!', '2024-04-03'),
('BXT890', 3, 3, 60.5, 'Bronze', 'Keep practicing!', '2024-04-04'),
('CXM123', 4, 4, 88.3, 'Gold', 'Great job!', '2024-04-05'),
('CXT890', 5, 5, 75.8, 'Silver', 'Almost there!', '2024-04-06'),
('DXT234', 6, 6, 68.9, 'Bronze', 'Improvement needed.', '2024-04-08'),
('DXT234', 7, 7, 68.9, 'Gold', 'Excellent performance!', '2024-04-08'),
('GXR890', 8, 8, 95.5, 'Gold', 'Well done!', '2024-04-10'),
('GXR890', 9, 9, 95.5, 'Bronze', 'Good effort!', '2024-04-10'),
('GXT234', 10, 10, 80, 'Silver', 'Well done!', '2024-04-11'),
('GXT234', 11, 11, 80, 'Bronze', 'Good effort!', '2024-04-11'),
('JXK123', 12, 12, 70.2, 'Bronze', 'Good effort!', '2024-04-12'),
('JXL567', 13, 13, 60.5, 'Bronze', 'Keep practicing!', '2024-04-13'),
('JXM890', 14, 14, 88.3, 'Gold', 'Great job!', '2024-04-14'),
('LXM234', 15, 15, 92.7, 'Gold', 'Outstanding!', '2024-04-16'),
('LXR569', 16, 16, 79.1, 'Silver', 'Good effort!', '2024-04-18'),
('LXR890', 17, 17, 95.5, 'Gold', 'Well done!', '2024-04-19'),
('LXS734', 18, 18, 80, 'Silver', 'Well done!', '2024-04-20'),
('LXS934', 19, 19, 70.2, 'Bronze', 'Good effort!', '2024-04-21'),
('LXT789', 20, 20, 60.5, 'Bronze', 'Keep practicing!', '2024-04-22'),
('LXT890', 21, 21, 88.3, 'Gold', 'Great job!', '2024-04-23'),
('LXW890', 22, 22, 75.8, 'Silver', 'Almost there!', '2024-04-24'),
('MXB895', 23, 23, 92.7, 'Gold', 'Outstanding!', '2024-04-25'),
('MXB898', 24, 14, 68.9, 'Bronze', 'Improvement needed.', '2024-04-26'),
('MXG890', 25, 25, 79.1, 'Silver', 'Good effort!', '2024-04-27'),
('MXH890', 26, 26, 95.5, 'Gold', 'Well done!', '2024-04-28'),
('MXS890', 27, 27, 80, 'Silver', 'Well done!', '2024-04-29'),
('MXT890', 28, 28, 70.2, 'Bronze', 'Good effort!', '2024-04-30'),
('NXC890', 29, 29, 60.5, 'Bronze', 'Keep practicing!', '2024-05-01'),
('NXP567', 30, 30, 88.3, 'Gold', 'Great job!', '2024-05-02'),
('PXM890', 31, 31, 75.8, 'Silver', 'Almost there!', '2024-05-03'),
('PXR890', 32, 32, 92.7, 'Gold', 'Outstanding!', '2024-05-04'),
('RXC890', 33, 33, 68.9, 'Bronze', 'Improvement needed.', '2024-05-05'),
('AXM890', 34, 34, 95.5, 'Silver', 'Excellent performance!', '2024-04-01'),
('BXH890', 35, 35, 80, 'Gold', 'Well done!', '2024-04-02'),
('BXP234', 36, 36, 70.2, 'Gold', 'Well done!', '2024-04-03'),
('BXT890', 37, 37, 60.5, 'Silver', 'Good effort!', '2024-04-04'),
('CXM123', 38, 38, 88.3, 'Bronze', 'Good effort!', '2024-04-05'),
('CXT890', 39, 39, 75.8, 'Bronze', 'Almost there!', '2024-04-06'),
('DXM234', 40, 40, 92.7, 'Silver', 'Good effort!', '2024-04-07'),
('DXT234', 41, 41, 68.9, 'Gold', 'Outstanding!', '2024-04-08'),
('DXY890', 42, 42, 79.1, 'Gold', 'Good effort!', '2024-04-09'),
('GXR890', 43, 43, 95.5, 'Silver', 'Well done!', '2024-04-10'),
('GXT234', 44, 44, 80, 'Bronze', 'Well done!', '2024-04-11'),
('GXT234', 45, 45, 80, 'Gold', 'Outstanding!', '2024-04-11'),
('JXK123', 46, 46, 70.2, 'Silver', 'Good effort!', '2024-04-12'),
('JXK123', 47, 47, 70.2, 'Gold', 'Good effort!', '2024-04-12'),
('JXL567', 48, 48, 60.5, 'Gold', 'Outstanding!', '2024-04-13'),
('JXM890', 49, 49, 88.3, 'Silver', 'Good effort!', '2024-04-14'),
('KXT567', 50, 50, 75.8, 'Gold', 'Outstanding!', '2024-04-15');

ALTER TABLE badge
ADD COLUMN badge_id VARCHAR(50) GENERATED ALWAYS AS (CONCAT(User_ID, '_', Quiz_ID, '_', badge_type)) STORED,
ADD PRIMARY KEY (badge_id);

select * from badge;

/* badge_notification table */
CREATE TABLE badge_notification (
    badge_notification_id INT AUTO_INCREMENT PRIMARY KEY,
    badge_id VARCHAR(50),
    user_id VARCHAR(50),
    description TEXT,
    is_read BOOLEAN DEFAULT FALSE,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (badge_id) REFERENCES badge(badge_id)
);

INSERT INTO badge_notification (badge_id, user_id, description, is_read, timestamp) VALUES
('AXM890_1_Gold','AXM890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('AXM890_34_Silver','AXM890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('BXH890_35_Gold','BXH890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('BXP234_2_Bronze','BXP234','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('BXP234_36_Gold','BXP234','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('BXT890_3_Bronze','BXT890','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('BXT890_37_Silver','BXT890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('CXM123_4_Gold','CXM123','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('CXM123_38_Bronze','CXM123','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('CXT890_5_Silver','CXT890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('CXT890_39_Bronze','CXT890','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('DXM234_40_Silver','DXM234','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('DXT234_6_Bronze','DXT234','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('DXT234_7_Gold','DXT234','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('DXT234_41_Gold','DXT234','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('DXY890_42_Gold','DXY890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('GXR890_8_Gold','GXR890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('GXR890_9_Bronze','GXR890','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('GXR890_43_Silver','GXR890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('GXT234_10_Silver','GXT234','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('GXT234_11_Bronze','GXT234','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('GXT234_44_Bronze','GXT234','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('GXT234_45_Gold','GXT234','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('JXK123_12_Bronze','JXK123','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('JXK123_46_Silver','JXK123','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('JXK123_47_Gold','JXK123','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('JXL567_13_Bronze','JXL567','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('JXL567_48_Gold','JXL567','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('JXM890_14_Gold','JXM890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('JXM890_49_Silver','JXM890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('KXT567_50_Gold','KXT567','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXM234_15_Gold','LXM234','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXR569_16_Silver','LXR569','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXR890_17_Gold','LXR890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXS734_18_Silver','LXS734','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXS934_19_Bronze','LXS934','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXT789_20_Bronze','LXT789','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXT890_21_Gold','LXT890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('LXW890_22_Silver','LXW890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('MXB895_23_Gold','MXB895','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('MXB898_24_Bronze','MXB898','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('MXG890_25_Silver','MXG890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('MXH890_26_Gold','MXH890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('MXS890_27_Silver','MXS890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('MXT890_28_Bronze','MXT890','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('NXC890_29_Bronze','NXC890','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00'),
('NXP567_30_Gold','NXP567','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('PXM890_31_Silver','PXM890','A silver badge was assigned to you!!','0','2024-04-26 00:00:00'),
('PXR890_32_Gold','PXR890','A gold badge was assigned to you!!','0','2024-04-26 00:00:00'),
('RXC890_33_Bronze','RXC890','A bronze badge was assigned to you!!','0','2024-04-26 00:00:00');

select * from badge_notification;



/* Trigger 1 -- badge_assignment_notification */
DELIMITER // 

CREATE TRIGGER badge_assignment_notification 
AFTER UPDATE ON QuizAttempts 
FOR EACH ROW 
BEGIN 
    DECLARE user_score INT; 
    DECLARE user_id VARCHAR(20); 
    DECLARE quiz_id INT; 
    DECLARE attempt_id INT; 
    DECLARE status_message VARCHAR(20);     
  
    -- Assigning QuizAttempts table column values 
    SELECT NEW.score INTO user_score; 
    SELECT NEW.user_id INTO user_id; 
    SELECT NEW.quiz_id INTO quiz_id; 
    SELECT NEW.attempt_id INTO attempt_id; 
    SELECT NEW.status_message INTO status_message; 

    -- Check if the status is changed to COMPLETED 
    IF status_message = 'COMPLETED' THEN 
    -- Check if the user's score meets the criteria for earning a badge 
    IF (user_score >= 90) THEN 
        -- Insert a gold badge into the Badges Table 
         INSERT INTO badge (user_id, quiz_id, attempt_id, score, badge_type, feedback, date_earned)  
         VALUES (user_id, quiz_id, attempt_id , user_score, 'Gold', 'Excellent performance!', NOW()); 
		-- Insert notification for above badge assignment 
         INSERT INTO badge_notification (badge_id, user_id, description, is_read, timestamp) 
         VALUES (CONCAT(user_id, '_', quiz_id, '_', 'Gold'), user_id, 'A gold badge was assigned to you!!', 0, now()); 
    ELSEIF  (user_score >= 80 AND  user_score < 90)  THEN    
		-- Insert a silver badge into the Badges Table 
         INSERT INTO badge (user_id, quiz_id, attempt_id, score, badge_type, feedback, date_earned)  
         VALUES (user_id, quiz_id, attempt_id , user_score, 'Silver', 'Well done!', NOW()); 
		-- Insert notification for above badge assignment 
         INSERT INTO badge_notification (badge_id, user_id, description, is_read, timestamp) 
         VALUES (CONCAT(user_id, '_', quiz_id, '_', 'Silver'), user_id, 'A silver badge was assigned to you!!', 0, now()); 
    ELSEIF  (user_score >= 70 AND  user_score < 80)  THEN    
		-- Insert a bronze badge into the Badges Table 
         INSERT INTO badge (user_id, quiz_id, attempt_id, score, badge_type, feedback, date_earned)  
         VALUES (user_id, quiz_id, attempt_id , user_score, 'Bronze', 'Good effort!', NOW()); 
    	-- Insert notification for above badge assignment 
         INSERT INTO badge_notification (badge_id, user_id, description, is_read, timestamp) 
         VALUES (CONCAT(user_id, '_', quiz_id, '_', 'Bronze'), user_id, 'A bronze badge was assigned to you!!', 0, now()); 
	END IF; 
END IF; 
END // 

DELIMITER ; 

/* Checking trigger logic with the below statement */ 

UPDATE QUIZATTEMPTS SET `Status_Message` = 'COMPLETED' WHERE (Attempt_id = 8); 


/* Trigger 2 -- quizdifficulty_adjustment */
DELIMITER // 

CREATE TRIGGER quizdifficulty_adjustment 
AFTER UPDATE ON quizattempts 
FOR EACH ROW 
BEGIN 
    DECLARE avg_score decimal(5,2); 
    -- Calculate the average score of a particular user for a specific quiz 
    SELECT AVG(Score) INTO avg_score 
    FROM quizattempts 
    WHERE quiz_id = NEW.quiz_id and user_id = NEW.user_id; 
    -- Update the difficulty level of quiz for a particular user based on average score 
    IF (avg_score >= 80) THEN 
        UPDATE Quiz 
        SET quiz_difficulty_ID = 3 
        WHERE quiz_id = NEW.quiz_id AND user_id = NEW.user_id;  
    ELSEIF (avg_score >= 60) THEN 
        UPDATE Quiz 
        SET quiz_difficulty_ID = 2 
        WHERE quiz_id = NEW.quiz_id AND user_id = NEW.user_id; 
    ELSE 
        UPDATE Quiz 
        SET quiz_difficulty_ID = 1 
        WHERE quiz_id = NEW.quiz_id AND user_id = NEW.user_id; 
    END IF; 
END // 

DELIMITER ;

/* Checking trigger logic with the below statements */

INSERT INTO Quiz (User_ID, Quiz_Title, Quiz_Description, Quiz_Difficulty_ID) VALUES
('RXT567', 'Business Ethics', 'Ethical considerations in business decision-making', 2);

insert into quizattempts (Quiz_ID, User_ID, Start_time, End_time, No_of_Attempts, Score, Status_Message, Due_Date) 
values (61, 'RXT567',  '2024-04-24 08:00:00', '2024-04-24 09:00:00', 1, 0, 'ASSIGNED', '2024-12-31 00:00:00');

UPDATE quizattempts SET Status_Message = 'COMPLETED', Score = 90 WHERE Quiz_ID = 61 AND USER_ID ='RXT567';

select * from quiz where Quiz_ID = 61 AND User_ID = 'RXT567'; 


/* Trigger 3 -- user_profile_changes */
DELIMITER // 

CREATE TRIGGER user_profile_changes 
AFTER UPDATE ON Users 
FOR EACH ROW 
BEGIN 
    INSERT INTO quiz_notification (user_id, description, is_read, timestamp) 
    VALUES (NEW.user_id, CONCAT('Your profile has been updated. Profile ID: ', NEW.user_id), 0, NOW()); 
END // 

DELIMITER ;

/* Checking trigger logic with the below statement */ 
UPDATE Users set UserPassword = 'p@ssw0rd1' where User_ID = 'AXM891';   

/* Trigger 4 -- quiz_assignment_notification */
DELIMITER // 

CREATE TRIGGER quiz_assignment_notification 
AFTER INSERT ON QuizAttempts 
FOR EACH ROW 
BEGIN 
    INSERT INTO quiz_notification (user_id, attempt_id, quiz_id, description, is_read, timestamp) 
    VALUES (NEW.user_id, NEW.attempt_id, NEW.quiz_id, CONCAT('A quiz ', NEW.quiz_id, ' has been assigned to ', NEW.user_id), 0, NOW()); 
END// 

DELIMITER ;  

/* Checking trigger logic with the below statement */ 
INSERT INTO QuizAttempts (Quiz_ID, User_ID, Start_time, End_time, No_of_Attempts, Score, Status_Message, Due_Date) 
VALUES (50, 'TXW890', '2023-03-01 19:00:00', '2023-03-01 20:00:00', 1, 0.00, 'ASSIGNED', '2024-12-31'); 

/* Procedure 1 -- CreateQuiz */
DELIMITER // 

CREATE PROCEDURE CreateQuiz ( 
  IN User_ID INT,	 
  IN Quiz_Title VARCHAR(255), 
  IN Quiz_Description TEXT, 
  IN Quiz_Difficulty_ID INT, 
  IN Course_ID INT 
) 
BEGIN 
  DECLARE Quiz_ID INT; 
  START TRANSACTION; 
  -- Insert quiz record 
  INSERT INTO Quiz (User_ID, Quiz_Title, Quiz_Description, Quiz_Difficulty_ID, Course_ID) 
  VALUES (User_ID, Quiz_title, Quiz_Description, Quiz_Difficulty_ID, Course_ID); 
  SET quiz_id = LAST_INSERT_ID(); 
  -- Commit the transaction 
  COMMIT; 
  SELECT Quiz_ID AS id; 
END// 

DELIMITER ;


/* Procedure 2 -- AddQuestionToQuiz */
DELIMITER //
CREATE PROCEDURE AddQuestionToQuiz (
  IN Quiz_ID INT,
  IN Question_type TEXT,
  IN question_description TEXT,
  IN question_score INT
)
BEGIN
  DECLARE question_id INT;
  
  INSERT INTO QuestionsTable (QuizID, Question_type, question_description, question_score)
  VALUES (QuizID, Question_type, question_description, question_score);
  
  SET question_id = LAST_INSERT_ID();
  
  COMMIT;
END//

DELIMITER ;


/* Procedure 3 -- GetBadgeCounts */
DELIMITER // 

CREATE PROCEDURE GetBadgeCounts() 
BEGIN 
    -- Declare variables to store badge counts 
    DECLARE gold_count INT; 
    DECLARE silver_count INT; 
    DECLARE bronze_count INT; 
    -- Count the number of students who received gold badges 
    SELECT COUNT(DISTINCT user_id) 
    INTO gold_count 
    FROM badge 
    WHERE badge_type = 'gold'; 
    -- Count the number of students who received silver badges 
    SELECT COUNT(DISTINCT user_id) 
    INTO silver_count 
    FROM badge 
    WHERE badge_type = 'silver'; 
    -- Count the number of students who received bronze badges 
    SELECT COUNT(DISTINCT user_id) 
    INTO bronze_count 
    FROM badge 
    WHERE badge_type = 'bronze'; 
    -- Display the results 
    SELECT gold_count, silver_count, bronze_count; 
END// 

DELIMITER ; 

/* Call the procedure to retrieve badge counts */
CALL GetBadgeCounts(); 

/* Procedure 4 -- GetNumberOfQuizzesByUser */
DELIMITER // 

CREATE PROCEDURE GetNumberOfQuizzesByUser() 
BEGIN 
    SELECT U.FullName, COUNT(QA.Quiz_ID) AS TotalQuizzesTaken 
    FROM Users U 
    LEFT JOIN QuizAttempts QA ON U.User_ID = QA.User_ID 
    GROUP BY U.FullName; 
END// 

DELIMITER ; 

/* Call the procedure to retrieve the number of quizzes taken by each user */
CALL GetNumberOfQuizzesByUser(); 

/* Procedure 5 -- UpdateQuizAttempts */
DELIMITER // 

CREATE PROCEDURE UpdateQuizAttempts(IN user_id VARCHAR(50), IN quiz_id INT) 
BEGIN 
    UPDATE quizattempts 
    SET No_Of_Attempts = No_Of_Attempts + 1 
    WHERE User_ID = user_id AND Quiz_ID = quiz_id 
    LIMIT 1; 
END // 

DELIMITER ; 


/* Function 1 -- GetAverageScore */
DELIMITER //

CREATE FUNCTION GetAverageScore (quiz_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  DECLARE total_users INT;
  DECLARE total_score DECIMAL(10,2);
  DECLARE average_score DECIMAL(10,2);
  -- Get total number of users who attempted the quiz
  SELECT COUNT(DISTINCT User_ID) INTO total_users
  FROM QuizAttempts
  WHERE QuizI_D = quiz_id;
  
  -- Get the sum of scores for all users
  SELECT SUM(Score) INTO total_score
  FROM QuizAttempts
  WHERE Quiz_ID = quiz_id;
  
  -- Calculate average score (total score / total users)
  IF total_users > 0 THEN
    SET average_score = total_score / total_users;
  ELSE
    SET average_score = NULL; -- Handle case where no users attempted the quiz
  END IF;
  
  RETURN average_score;
END//

DELIMITER ;


/* Function 2 -- GetQuizDuration */
DELIMITER //

CREATE FUNCTION GetQuizDuration (Quiz_ID INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  DECLARE start_time DATETIME;
  DECLARE end_time DATETIME;
  DECLARE duration DECIMAL(10,2);
    
    -- Assume the quiz table has a Duration field in minutes
    SELECT Start_time, End_time INTO start_time, end_time
    FROM QuizAttempts
    WHERE Quiz_ID = Quiz_ID;
    IF ROWCOUNT = 0 THEN
    SET duration = NULL; -- Handle case where quiz not found
  ELSE
    SET start_time = (SELECT Start_time);
    SET end_time = (SELECT End_time);
    
    -- Calculate duration as difference between end and start times
    SET duration = end_time - start_time;
  END IF;  
  RETURN duration;
END//

DELIMITER ;


/* Function 3 -- GetAvgScoreByBadgeType */
DELIMITER // 

CREATE FUNCTION GetAvgScoreByBadgeType(badgeType VARCHAR(20)) 
RETURNS DECIMAL(10,2) 
DETERMINISTIC 
READS SQL DATA
BEGIN 
    -- Declare a variable to store the average score 
    DECLARE avg_score DECIMAL(10,2); 
    -- Calculate the average score by querying the badge table 
    SELECT AVG(score) INTO avg_score 
    FROM badge 
    WHERE badge_type = badgeType; 
    RETURN avg_score; 
END// 

DELIMITER ; 

/* Call the function to get the average score for gold, silver, and bronze badges */
SELECT  
	GetAvgScoreByBadgeType('gold') AS avg_gold_score, 
	GetAvgScoreByBadgeType('silver') AS avg_silver_score, 
	GetAvgScoreByBadgeType('bronze') AS avg_bronze_score; 
    

/* Function 4 -- GetUserPermissionsCount */
DELIMITER // 

CREATE FUNCTION GetUserPermissionsCount(permissionLevel VARCHAR(20)) 
RETURNS INT 
DETERMINISTIC 
READS SQL DATA 
BEGIN 
    -- Declare a variable to store the count of users 
    DECLARE user_count INT; 
    -- Count the number of distinct User_IDs with the specified permission level 
    SELECT COUNT(DISTINCT User_ID) INTO user_count 
    FROM Permissions 
    WHERE Permission_Level = permissionLevel; 
    RETURN user_count; 
END// 

DELIMITER ; 

/* Call the function to count users with 'Read', 'Write', and 'Modify' permissions */

SELECT  
    GetUserPermissionsCount('Read') AS Read_Permissions_Count, 
    GetUserPermissionsCount('Write') AS Write_Permissions_Count, 
    GetUserPermissionsCount('Modify') AS Modify_Permissions_Count; 
    

/* Function 5 -- CountDailyQuizAttempts */
DELIMITER // 

CREATE FUNCTION CountDailyQuizAttempts(quiz_id INT, attempt_date DATE)  
RETURNS INT 
DETERMINISTIC 
BEGIN 
    DECLARE attempts_count INT; 
    SELECT COUNT(*) INTO attempts_count 
    FROM quizattempts 
    WHERE Quiz_ID = quiz_id AND DATE(end_time) = attempt_date;  -- Using DATE() to extract date part 
    RETURN attempts_count; 
END // 

DELIMITER ;



/* Query 1 FetchUserScoresAndQuizHighScores */
SELECT FullName, Quiz_Title, User_Score, MAX(User_Score) OVER(PARTITION BY Quiz_Title ) AS Quiz_Highest_Score   
from (select FullName, Quiz_Title, MAX(Score) AS User_Score from quizattempts qa inner join quiz q on qa.quiz_id = q.quiz_id and qa.user_id = q.user_id 
inner join Users us on q.user_id = us.user_id where qa.status_message = 'COMPLETED' 
GROUP BY FullName, Quiz_Title) AS Score_SQL; 

/* Query 2 getStudentQuizPerformance */
SELECT u.FirstName, u.LastName, q.Quiz_Title, q.Quiz_Description, MAX(qa.Score) AS HighestScore 
FROM users u 
JOIN quizattempts qa ON u.User_ID = qa.User_ID 
JOIN quiz q ON qa.Quiz_ID = q.Quiz_ID 
WHERE u.User_ID = 'BXT890'  
GROUP BY u.FirstName, u.LastName, q.Quiz_Title, q.Quiz_Description 
ORDER BY HighestScore DESC;

/* Query3 getStudentBadgeDetails */
SELECT u.FirstName, u.LastName, b.badge_ID, bn.description AS BadgeDescription, bn.timestamp AS BadgeEarnedOn 
FROM users u 
JOIN badge b ON u.User_ID = b.User_ID 
JOIN badge_notification bn ON b.badge_ID = bn.badge_ID AND u.User_ID = bn.User_ID; 

/* Query 4 -- Users with high avg scores*/ 
SELECT u.User_ID, u.FirstName, u.LastName, AVG(qa.Score) AS Average_Score, MAX(qd.QuizDifficultyLevel) AS Max_Difficulty_Level, COUNT(q.Quiz_ID) AS Total_Attempts 
FROM Users u 
JOIN QuizAttempts qa ON u.User_ID = qa.User_ID 
JOIN Quiz q ON qa.Quiz_ID = q.Quiz_ID 
JOIN quizDifficulty qd ON q.Quiz_Difficulty_ID = qd.Quiz_Difficulty_Id 
GROUP BY u.User_ID, u.FirstName, u.LastName 
HAVING Average_Score >= ( SELECT AVG(Score) FROM QuizAttempts) 
ORDER BY Average_Score DESC; 

/* Query 5 -- Analyze user quiz diversity */
SELECT u.User_ID, u.FirstName, u.LastName, COUNT(DISTINCT qd.QuizDifficultyLevel) AS Unique_Difficulty_Levels, GROUP_CONCAT(DISTINCT q.Quiz_Title ORDER BY q.Quiz_Title ASC SEPARATOR ', ') AS Attempted_Quizzes 
FROM Users u 
JOIN QuizAttempts qa ON u.User_ID = qa.User_ID 
JOIN Quiz q ON qa.Quiz_ID = q.Quiz_ID 
JOIN quizDifficulty qd ON q.Quiz_Difficulty_ID = qd.Quiz_Difficulty_Id 
GROUP BY u.User_ID, u.FirstName, u.LastName 
HAVING COUNT(DISTINCT qd.QuizDifficultyLevel) > 1; 

/* Query 6 -- Analyze top user performance with multiple techniques */
-- Step 1: Retrieve top-performing users based on average quiz scores 
SELECT u.User_ID, u.FirstName, u.LastName, AVG(qa.Score) AS Average_Score 
FROM Users u 
JOIN QuizAttempts qa ON u.User_ID = qa.User_ID 
GROUP BY u.User_ID, u.FirstName, u.LastName 
ORDER BY Average_Score DESC 
LIMIT 10; -- Limiting to top 10 users for brevity 
-- Step 2: Calculate the average score of each user's attempts 
SELECT u.User_ID, u.FirstName, u.LastName, AVG(qa.Score) AS Average_Score 
FROM Users u 
JOIN QuizAttempts qa ON u.User_ID = qa.User_ID 
GROUP BY u.User_ID, u.FirstName, u.LastName; 
-- Step 3: Use a stored procedure to categorize users into different performance levels 
DELIMITER // 

CREATE PROCEDURE CategorizeUsersnew() 
BEGIN 
    DECLARE avg_score DECIMAL(5,2); 
    SELECT AVG(Score) INTO avg_score FROM QuizAttempts; 
    IF avg_score >= 80 THEN 
        SELECT 'High Performer' AS Performance_Level; 
    ELSEIF avg_score >= 60 THEN 
        SELECT 'Moderate Performer' AS Performance_Level; 
    ELSE 
        SELECT 'Low Performer' AS Performance_Level; 
    END IF; 
END// 

DELIMITER ; 

CALL CategorizeUsersnew(); 
-- Step 4: Use a function to calculate a weighted average score for each user 
DELIMITER // 

CREATE FUNCTION WeightedAverageScore(user_id VARCHAR(50)) 
RETURNS DECIMAL(5,2) 
DETERMINISTIC 
BEGIN 
    DECLARE total_score DECIMAL(10,2); 
    DECLARE total_attempts INT; 
    SELECT SUM(Score), COUNT(*) INTO total_score, total_attempts FROM QuizAttempts WHERE User_ID = user_id; 
    IF total_attempts > 0 THEN 
        RETURN total_score / total_attempts; 
    ELSE 
        RETURN 0; 
    END IF; 
END// 

DELIMITER ; 

SELECT User_ID, WeightedAverageScore(User_ID) AS Weighted_Average_Score 
FROM Users; 

/* Query 7 -- Analyze performance on high average scoring quizzes */ 
SELECT User_ID, WeightedAverageScore(User_ID) AS Weighted_Average_Score 
FROM Users; 
SELECT q.Quiz_ID, q.Quiz_Title, q.Quiz_Description, AVG(qa.Score) AS Average_Score, GROUP_CONCAT(u.FirstName, ' ', u.LastName SEPARATOR ', ') AS Attempted_By 
FROM Quiz q 
JOIN QuizAttempts qa ON q.Quiz_ID = qa.Quiz_ID 
JOIN Users u ON qa.User_ID = u.User_ID 
WHERE q.Quiz_ID IN (SELECT Quiz_ID FROM QuizAttempts GROUP BY Quiz_ID HAVING AVG(Score) >= (SELECT AVG(Score) FROM QuizAttempts)) 
GROUP BY q.Quiz_ID, q.Quiz_Title, q.Quiz_Description; 

/* Query 8 -- AverageQuizScoreByDifficultyLevel*/
SELECT CONCAT(u.FirstName, ' ', u.LastName) AS FullName, u.EmailID, AVG(qa.Score) AS AverageScore 
FROM Users u 
JOIN Quiz q ON q.User_ID = u.User_ID 
JOIN QuizAttempts qa ON qa.Quiz_ID = q.Quiz_ID 
WHERE q.Quiz_difficulty_id = 3 
GROUP BY u.FirstName, u.LastName, u.EmailID;

/* Query 9 -- TopThreeResourcesForDifficultyLevel2Quizzes  */
SELECT rs.resourcetype, COUNT(rs.resource_id) AS suggestion_count 
FROM resourcesuggestion rs 
JOIN quiz q ON rs.quiz_id = q.quiz_id 
WHERE q.quiz_difficulty_id = 2 
GROUP BY rs.resourcetype 
ORDER BY suggestion_count DESC 
LIMIT 3; 

/* Query 10 -- NumberOfAuthorizedQuizIdsAndQuizAttempts */
SELECT COUNT(DISTINCT qa.quiz_id) AS num_granted_quiz_ids 
FROM permissions p 
JOIN quizattempts qa ON p.quiz_id = qa.quiz_id 
WHERE p.grant_or_deny = 'grant'; 

/* Query 11 -- UsersWithGoldBadgesAndAssociatedQuizIds */
SELECT u.FullName, b.Badge_Type, q.Quiz_ID 
FROM Users u 
JOIN Badge b ON u.User_ID = b.User_ID 
JOIN Quiz q ON b.Quiz_ID = q.Quiz_ID 
WHERE b.Badge_Type = 'Gold'; 

