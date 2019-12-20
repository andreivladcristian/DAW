CREATE TABLE [dbo].[tabelproduct] (
    [pro_id]      INT            IDENTITY (1, 1) NOT NULL,
    [pro_name]    NVARCHAR (50)  NOT NULL,
    [pro_image]   NVARCHAR (MAX) NOT NULL,
    [pro_price]   INT            NULL,
    [pro_des]     NVARCHAR (MAX) NOT NULL,
    [pro_fk_cat]  INT            NULL,
    [pro_fk_user] INT            NULL,
    PRIMARY KEY CLUSTERED ([pro_id] ASC),
    FOREIGN KEY ([pro_fk_cat]) REFERENCES [dbo].[tabelcategory] ([cat_id]),
    FOREIGN KEY ([pro_fk_user]) REFERENCES [dbo].[tabeluser] ([u_id])
);