-- Tabela para armazenar feedback da cliente (aprovação das páginas).
-- Base: 236_iza_reborn
-- Executar no banco da cliente para habilitar o recebimento dos feedbacks.

IF OBJECT_ID('dbo.feedback_paginas', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.feedback_paginas (
        id          INT           IDENTITY(1,1) PRIMARY KEY,
        page_id     NVARCHAR(64)  NOT NULL,   -- GUID da página (id do body)
        page_url    NVARCHAR(500) NULL,       -- URL onde o usuário enviou
        comment     NVARCHAR(MAX) NOT NULL,   -- Texto do comentário
        created_at  DATETIME2(0)  NOT NULL DEFAULT GETUTCDATE()
    );

    CREATE INDEX IX_feedback_paginas_page_id ON dbo.feedback_paginas (page_id);
    CREATE INDEX IX_feedback_paginas_created_at ON dbo.feedback_paginas (created_at);
END
GO
