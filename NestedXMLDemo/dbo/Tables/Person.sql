CREATE TABLE [dbo].[Person]
(
	[PersonId] BIGINT NULL,
	[FirstName] VARCHAR(50) NULL, 
    [MiddleName] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL, 
    [InsertedDate] DATETIMEOFFSET NULL DEFAULT sysdatetimeoffset(), 
    [BatchId] INT NOT NULL, 
    CONSTRAINT [FK_dbo.Person_BatchId] FOREIGN KEY (BatchId) REFERENCES dbo.Batch (BatchId) 
)

GO

CREATE INDEX [IX_dbo.Person_PersonId] ON [dbo].[Person] (PersonId)

GO

CREATE INDEX [IX_dbo.Person_BatchId] ON [dbo].[Person] (BatchId)
