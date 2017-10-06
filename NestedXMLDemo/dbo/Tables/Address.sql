CREATE TABLE [dbo].[Address]
(
	[PersonId] BIGINT NOT NULL,
	[Line1] VARCHAR(50) NULL, 
    [Line2] VARCHAR(50) NULL,
    [InsertedDate] DATETIMEOFFSET NULL DEFAULT sysdatetimeoffset(), 
    [BatchId] INT NOT NULL, 
    CONSTRAINT [FK_dbo.Address_BatchId] FOREIGN KEY (BatchId) REFERENCES dbo.Batch (BatchId) 
)

GO

CREATE INDEX [IX_dbo.Address_PersonId] ON [dbo].[Address] (PersonId)

GO

CREATE INDEX [IX_dbo.Address_BatchId] ON [dbo].[Address] (BatchId)
