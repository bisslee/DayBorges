# Feedback – passo a passo no IIS

Resumo: o botão **Enviar feedback** nas páginas envia o comentário para `api/feedback.aspx`, que grava na tabela `feedback_paginas`. Siga os passos abaixo para deixar tudo funcionando.

---

## Passo 1: Criar a tabela no banco (se ainda não fez)

1. Abra o SQL Server Management Studio e conecte no banco **236_iza_reborn**.
2. Execute o script **`feedback-table.sql`** (ele cria a tabela `feedback_paginas` e os índices).
3. Confirme que a tabela existe em **Tabelas** no Object Explorer.

---

## Passo 2: Ajustar a connection string

1. Na raiz do site, abra o arquivo **`Web.config`**.
2. Localize a connection string **FeedbackDb**.
3. Confira/ajuste:
   - **Server** – ex.: `bd.iron.hostazul.com.br,3533`
   - **Database** – `236_iza_reborn`
   - **User Id** – `236_iza_reborn_user`
   - **Password** – senha correta do banco (dados no Objetivo.md).
4. Salve o arquivo.

---

## Passo 3: Publicar o site no IIS

1. Copie **toda** a pasta do projeto para a pasta física do site no IIS (ex.: `C:\inetpub\wwwroot\aprovacao` ou o caminho que você usa).
2. Garanta que foram copiados:
   - **Web.config** (na raiz)
   - Pasta **api/** com os arquivos: `feedback.aspx`, `hello.aspx`, `check.aspx`
   - **feedback.js**, **style.css**, **index.html**
   - Pastas **produtos/** e **blog/** com seus arquivos
3. No **IIS Manager**:
   - Abra o **Site** ou **Application** onde o conteúdo foi publicado.
   - Confirme que o **Application Pool** está com **.NET CLR version** = **v4.0** (ou superior).
   - Se precisar, converta a pasta em **Application** (botão direito na pasta → Convert to Application).

---

## Passo 4: Testar se a API subiu

Use o navegador ou o Postman, trocando pela URL real do seu site:

| URL | O que verifica |
|-----|-----------------|
| `https://izareborn.biss.com.br/api/hello.aspx` | Se a API está no ar. Resposta esperada: `{"ok":true,"message":"hello","api":"up"}` |
| `https://izareborn.biss.com.br/api/check.aspx` | Se o site consegue acessar o banco. Resposta esperada: `"ok":true`, `"message":"Acesso à base OK"` e datas em `data_utc` / `data_local` |

- Se **hello** não responder: confira se a pasta foi publicada, se o pool é .NET 4.x e se a URL está correta.
- Se **check** retornar erro: confira usuário/senha no `Web.config`, firewall e se a tabela existe no banco certo.

---

## Passo 5: Testar o envio de feedback

1. Acesse no navegador uma página que tenha o bloco de feedback (ex.: **Produtos** ou uma página de produto).
2. No campo de texto, digite um comentário de teste.
3. Clique em **Enviar feedback**.
4. Deve aparecer a mensagem de sucesso (ex.: “Feedback enviado com sucesso”).
5. No SQL Server, rode:  
   `SELECT * FROM dbo.feedback_paginas ORDER BY id DESC`  
   e confira se o registro foi gravado.

Se der erro na tela, abra o **F12** do navegador → aba **Rede**, envie de novo e veja a resposta do `feedback.aspx` (status e corpo da resposta) para identificar o problema.

---

## Referência rápida – payload do feedback

O `feedback.js` envia um **POST** para **`/api/feedback.aspx`** com JSON no body:

```json
{
  "pageId": "guid-da-pagina",
  "pageUrl": "https://...",
  "comment": "texto digitado",
  "createdAt": "2025-02-03T12:00:00.000Z"
}
```

O endpoint grava na tabela **feedback_paginas** os campos **page_id**, **page_url** e **comment** (a data de gravação usa o default da tabela).
