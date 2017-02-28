CREATE TABLE [dbo].[emails] (
    [email]    INT           IDENTITY (1, 1) NOT NULL,
    [mailFrom] VARCHAR (200) NULL,
    [mailTo]   VARCHAR (200) NULL,
    [subj]     VARCHAR (50)  NULL,
    [txt]      VARCHAR (200) NULL,
    [mailDate] DATE          NULL,
    [deleted]  VARCHAR (1)   NULL,
    PRIMARY KEY CLUSTERED ([email] ASC)
);

CREATE TABLE [dbo].[login] (
    [logID] INT           IDENTITY (1, 1) NOT NULL,
    [email] VARCHAR (200) NULL,
    [pwd]   VARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([logID] ASC),
    FOREIGN KEY ([email]) REFERENCES [dbo].[users] ([email]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[users] (
    [email] VARCHAR (200) NOT NULL,
    [name]  VARCHAR (100) NULL,
    [addr]  VARCHAR (200) NULL,
    [secQ]  VARCHAR (100) NULL,
    [secA]  VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([email] ASC)
);

