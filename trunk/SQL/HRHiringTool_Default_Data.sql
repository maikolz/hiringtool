use HRHiringTool

INSERT INTO [Role]
VALUES (1, 'Admin', 'Administrator')
INSERT INTO [Role]
VALUES (2, 'HRRecluter', 'HR Recluter')
INSERT INTO [Role]
VALUES (3, 'Technical Lead', 'Technical Lead')
INSERT INTO [Role]
VALUES (4, 'Visitor', 'User who only can see data, not modified')
GO 

Select * from [User]

INSERT INTO [User] (ID_User, Name, Lastname, [Password])
VALUES (1, 'Admin', '', '123')
INSERT INTO [User] (ID_User, Name, Lastname, [Password])
VALUES (2, 'HR', 'Recluter', '123')
INSERT INTO [User] (ID_User, Name, Lastname, [Password])
VALUES (3, 'Lead', 'Technical', '123')

/*User Roles*/
Select * from UserRoles
INSERT INTO UserRoles ( ID_UserRoles, ID_User, ID_Role)
VALUES (1, 1, 1)
INSERT INTO UserRoles ( ID_UserRoles, ID_User, ID_Role)
VALUES (2, 2, 2)
INSERT INTO UserRoles ( ID_UserRoles, ID_User, ID_Role)
VALUES (3, 2, 3) 

Select *
from Candidate

INSERT INTO Candidate (ID_Candidate, Name, Lastname, SLastName, SalaryExpectation, Email, Address, ID_JobOpenning)
VALUES (1, 'Javier', 'Ulate', 'Calderon', 3000, 'javier.ulate@gmail.com', 'Heredia', 1)
INSERT INTO Candidate (ID_Candidate, Name, Lastname, SLastName, SalaryExpectation, Email, Address, ID_JobOpenning)
VALUES (2, 'Maykol', 'Zumbado', '', 3500, 'maykol.zumbado@gmail.com', 'Heredia', 1)
INSERT INTO Candidate (ID_Candidate, Name, Lastname, SLastName, SalaryExpectation, Email, Address, ID_JobOpenning)
VALUES (3, 'Rolando', 'Matarrita', '', 4000, 'rolando.matarrita@gmail.com', 'Alajuela', 1)
GO

INSERT INTO PhoneType
VALUES (1, 'Casa')
INSERT INTO PhoneType
VALUES (2, 'Trabajo')
INSERT INTO PhoneType
VALUES (3, 'Celular')
INSERT INTO PhoneType
VALUES (4, 'Otro')
GO 

INSERT INTO CandidatePhones (ID_CandidatePhone, ID_Candidate, Phone, ID_PhoneType)
VALUES (1, 1, '25555555', 1)
INSERT INTO CandidatePhones (ID_CandidatePhone, ID_Candidate, Phone, ID_PhoneType)
VALUES (2, 1, '85555555', 3)
INSERT INTO CandidatePhones (ID_CandidatePhone, ID_Candidate, Phone, ID_PhoneType)
VALUES (3, 2, '25555550', 1)
INSERT INTO CandidatePhones (ID_CandidatePhone, ID_Candidate, Phone, ID_PhoneType)
VALUES (4, 3, '85555550', 3)
GO






