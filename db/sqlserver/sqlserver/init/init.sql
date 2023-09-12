CREATE DATABASE example
GO
USE example
GO
CREATE TABLE [sample] (
    id int IDENTITY(1,1) NOT NULL,
    name nvarchar(100) NOT NULL,
    created_at datetime NOT NULL,
    updated_at datetime NOT NULL,
    CONSTRAINT PK_user PRIMARY KEY (id)
);
GO
