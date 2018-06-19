CREATE TABLE [dbo].[MemInfo] (
    [MemId]    INT           NULL,
	
    [Name]     NVARCHAR (50) NOT NULL,
    [Password] NVARCHAR (30) NOT NULL,
    [Sex]      NCHAR (1)     NOT NULL,
    [Email]    NVARCHAR (50) NOT NULL,
    [Phone]    NCHAR (11)    NOT NULL,
    PRIMARY KEY CLUSTERED ([MemId])
);   
 