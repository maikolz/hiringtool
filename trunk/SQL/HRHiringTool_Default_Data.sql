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

INSERT INTO [User] (ID_User, Name, Lastname, [Password])
VALUES (1, 'Admin', '', '123')
INSERT INTO [User] (ID_User, Name, Lastname, [Password])
VALUES (2, 'HR', 'Recluter', '123')
INSERT INTO [User] (ID_User, Name, Lastname, [Password])
VALUES (3, 'Lead', 'Technical', '123')

/*User Roles*/
INSERT INTO UserRoles ( ID_UserRoles, ID_User, ID_Role)
VALUES (1, 1, 1)
INSERT INTO UserRoles ( ID_UserRoles, ID_User, ID_Role)
VALUES (2, 2, 2)
INSERT INTO UserRoles ( ID_UserRoles, ID_User, ID_Role)
VALUES (3, 2, 3) 

INSERT INTO Candidate (ID_Candidate, Name, Lastname, SLastName, SalaryExpectation, Email, [Address], ID_JobOpenning, [Status])
VALUES (1, 'Javier', 'Ulate', 'Calderon', 3000, 'javier.ulate@gmail.com', 'Heredia', 3, 'Active')
INSERT INTO Candidate (ID_Candidate, Name, Lastname, SLastName, SalaryExpectation, Email, [Address], ID_JobOpenning, [Status])
VALUES (2, 'Maykol', 'Zumbado', '', 3500, 'maykol.zumbado@gmail.com', 'Heredia', 1, 'Active')
INSERT INTO Candidate (ID_Candidate, Name, Lastname, SLastName, SalaryExpectation, Email, [Address], ID_JobOpenning, [Status])
VALUES (3, 'Rolando', 'Matarrita', '', 4000, 'rolando.matarrita@gmail.com', 'Alajuela', 1, 'Active')
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

INSERT INTO [Notes] (ID_Note, ID_Candidate, ID_User, Note, [DateTime])
VALUES (1, 2, 3, 'Tech Lead note about Maykol', '01/05/2011')
INSERT INTO [Notes] (ID_Note, ID_Candidate, ID_User, Note, [DateTime])
VALUES (2, 2, 2, 'HR note about Maykol', '01/12/2011')
INSERT INTO [Notes] (ID_Note, ID_Candidate, ID_User, Note, [DateTime])
VALUES (3, 1, 2, 'HR note about Javier', '02/20/2011')
INSERT INTO [Notes] (ID_Note, ID_Candidate, ID_User, Note, [DateTime])
VALUES (4, 3, 2, 'HR note about Rolando', GETDATE())
GO

INSERT INTO Department (ID_Department, Name, [Description], Phone, ID_User)
VALUES (1, 'Dev Department', 'Department 1', '25444444', 1)
INSERT INTO Department (ID_Department, Name, [Description], Phone, ID_User)
VALUES (2, 'QA Departmen', 'QA Department', '25444444', 1)
INSERT INTO Department (ID_Department, Name, [Description], Phone, ID_User)
VALUES (3, 'HR Department', 'HR Department', '25444444', 1)
INSERT INTO Department (ID_Department, Name, [Description], Phone, ID_User)
VALUES (5, 'IT Department', 'IT Department', '25444444', 1)
GO 

INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (11, 'Junior .Net Developer', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (12, 'Intermediate.Net Developer', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (13, 'Senior .Net Developer', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (21, 'Junior QA', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (22, 'Intermediate QA', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (23, 'Senior QA', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (121, 'Junior Flash Developer', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (122, 'Intermediate Flash Developer', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (123, 'Senior Flash Developer', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (31, 'Junior HR Recluter', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (32, 'Intermediate HR Recluter', 'Open')
INSERT INTO JobPosition (ID_JobPosition, Name, [Status])
VALUES (33, 'Senior HR Recluter', 'Open')
GO 

INSERT INTO JobOpening (ID_Opening, ID_Department, ID_JobPosition, Deadline, Quantity, [Status])
VALUES (1, 1, 13, '09/01/2011', 1,'Open')
INSERT INTO JobOpening (ID_Opening, ID_Department, ID_JobPosition, Deadline, Quantity, [Status])
VALUES (2, 1, 11, '09/15/2011', 4,'Open')
INSERT INTO JobOpening (ID_Opening, ID_Department, ID_JobPosition, Deadline, Quantity, [Status])
VALUES (3, 2, 22, '08/01/2011', 1,'Open')
INSERT INTO JobOpening (ID_Opening, ID_Department, ID_JobPosition, Deadline, Quantity, [Status])
VALUES (4, 3, 31, '08/15/2011', 1,'Open')
GO 

INSERT INTO SkillCategory (ID_SkillCategory, Name, [Description])
VALUES (1, 'Languages', 'Languages')
INSERT INTO SkillCategory (ID_SkillCategory, Name, [Description])
VALUES (2, 'Programing Languages', 'Programing Languages')
INSERT INTO SkillCategory (ID_SkillCategory, Name, [Description])
VALUES (3, 'Software Delovment Skills', 'Software Delovment Skills')
INSERT INTO SkillCategory (ID_SkillCategory, Name, [Description])
VALUES (4, 'Web', 'Knowledge about web tools')
INSERT INTO SkillCategory (ID_SkillCategory, Name, [Description])
VALUES (5, 'Soft Skills', 'Soft Skills')
GO 

INSERT INTO Skill (ID_Skill, ID_SkillCategory, Name, [Description])
VALUES (11, 1, 'English', 'English')
INSERT INTO Skill (ID_Skill, ID_SkillCategory, Name, [Description])
VALUES (12, 1, 'Portuguese', 'English')
INSERT INTO Skill (ID_Skill, ID_SkillCategory, Name, [Description])
VALUES (21, 2, 'Visual Basic .Net', 'Visual Basic .Net')
INSERT INTO Skill (ID_Skill, ID_SkillCategory, Name, [Description])
VALUES (22, 2, 'C# .Net', 'C# .Net')
INSERT INTO Skill (ID_Skill, ID_SkillCategory, Name, [Description])
VALUES (23, 2, 'ASP .Net', 'ASP .Net')
GO 

INSERT INTO JobPositionSkills (ID_PositionSkill, ID_JobPosition, ID_Skill, PositionScore)
VALUES (1, 11, 11, '4.00')
INSERT INTO JobPositionSkills (ID_PositionSkill, ID_JobPosition, ID_Skill, PositionScore)
VALUES (2, 11, 21, '3.00')
INSERT INTO JobPositionSkills (ID_PositionSkill, ID_JobPosition, ID_Skill, PositionScore)
VALUES (3, 12, 21, '4.00')
INSERT INTO JobPositionSkills (ID_PositionSkill, ID_JobPosition, ID_Skill, PositionScore)
VALUES (4, 13, 21, '5.00')
INSERT INTO JobPositionSkills (ID_PositionSkill, ID_JobPosition, ID_Skill, PositionScore)
VALUES (5, 13, 11, '4.00')
GO 

INSERT INTO CandidateSkills (ID_CandidateSkill, ID_Candidate, ID_Skill, Score)
VALUES (1, 1, 11, '4.00')
INSERT INTO CandidateSkills (ID_CandidateSkill, ID_Candidate, ID_Skill, Score)
VALUES (2, 2, 11, '5.00')
INSERT INTO CandidateSkills (ID_CandidateSkill, ID_Candidate, ID_Skill, Score)
VALUES (3, 3, 11, '4.00')
INSERT INTO CandidateSkills (ID_CandidateSkill, ID_Candidate, ID_Skill, Score)
VALUES (4, 2, 23, '4.00')
INSERT INTO CandidateSkills (ID_CandidateSkill, ID_Candidate, ID_Skill, Score)
VALUES (5, 3, 22, '3.00')
INSERT INTO CandidateSkills (ID_CandidateSkill, ID_Candidate, ID_Skill, Score)
VALUES (6, 1, 21, '2.00')
GO 

INSERT INTO OpeningCandidates (ID_OpeningCandidate, ID_Candidate, ID_Opening)
VALUES (1,1,3)
INSERT INTO OpeningCandidates (ID_OpeningCandidate, ID_Candidate, ID_Opening)
VALUES (2,2,1)
INSERT INTO OpeningCandidates (ID_OpeningCandidate, ID_Candidate, ID_Opening)
VALUES (3,3,1)
GO

INSERT INTO OpeningNotes (ID_Note, ID_User, ID_JobOpening, Note, [DateTime] )
VALUES (1, 2, 1, 'HR note about Senior .Net Dev Opening', '07/02/2011' )
INSERT INTO OpeningNotes (ID_Note, ID_User, ID_JobOpening, Note, [DateTime] )
VALUES (2, 3, 2, 'HR note about Junior .Net Dev Opening', '07/01/2011' )
GO