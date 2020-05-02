CREATE TABLE [dbo].[M_Person] (
    [ID]          INT          NOT NULL,
    [Name]        VARCHAR (20) NULL,
    [CountryID]   INT          NULL,
    [StateName]   VARCHAR (20) NULL,
    [DateofBirth] DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [F_id_Person] FOREIGN KEY ([ID]) REFERENCES [dbo].[M_Person] ([ID])
);

