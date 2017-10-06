CREATE PROCEDURE [dbo].[InsertBatch]
	@startTime datetimeoffset, 
	@filename varchar(200)
AS
BEGIN
	BEGIN TRANSACTION;

	INSERT INTO dbo.Batch (
		StartTime, [Filename]
	) VALUES (
		@startTime, @filename
	);

	SELECT TOP (1) * FROM dbo.Batch WHERE BatchId = scope_identity();

	COMMIT TRANSACTION;
END
