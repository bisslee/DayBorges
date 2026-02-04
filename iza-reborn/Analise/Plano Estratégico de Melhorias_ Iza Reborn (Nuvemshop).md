# Plano Estratégico de Melhorias: Iza Reborn (Nuvemshop)

**Autor:** Ivana
**Data:** 29 de Janeiro de 2026  
**URL:** <https://www.izareborn.com.br/>

---

## I. Resumo Executivo

Este documento apresenta um roteiro completo para a otimização da loja **Iza Reborn**. O foco está em elevar a visibilidade orgânica (SEO), melhorar a experiência do usuário através da performance (Velocidade) e garantir uma estrutura técnica profissional e fácil de manter.

---

## II. Comparação Estratégica de Impacto

Para priorizar as tarefas, dividimos as melhorias em duas frentes principais:

| Critério | **SEO On-Page (Visibilidade)** | **Código e Performance (Retenção)** |
| :--- | :--- | :--- |
| **Objetivo** | Ser encontrado pelo público certo no Google. | Evitar que o cliente desista por lentidão. |
| **Impacto no Ranking** | **Direto:** Melhora posições para palavras-chave. | **Indireto:** Google prioriza sites rápidos. |
| **Impacto na Venda** | Atrai o tráfego qualificado. | **Altíssimo:** Sites rápidos convertem mais. |
| **Dificuldade** | **Baixa:** Ajustes via painel administrativo. | **Média:** Exige edição de CSS/HTML. |

---

## III. Etapa 1: SEO On-Page (Prioridade Imediata)

Ações focadas em "trazer o cliente até a porta".

### 1. Unificação da Tag H1

* **Problema:** O site possui 3 tags `<h1>`, diluindo a força da palavra-chave.
* **Ação:** Manter apenas "Iza Reborn - Bebê Reborn" como `<h1>`. Mudar títulos de produtos e seções para `<h2>`.

### 2. Otimização de Alt Text (Imagens)

* **Ação:** Adicionar descrições ricas em todas as fotos de produtos.
* **Exemplo:** `alt="Bebê Reborn Menina Kit Lou Lou realista com pintura artística e corpo de pano"`.

---

## IV. Etapa 2: Performance e LCP (Largest Contentful Paint)

Ações focadas em acelerar a primeira impressão visual do site.

### 1. Otimizações de CSS para LCP

* **CSS Crítico:** Isolar o estilo do topo (Header/Banner) no `<head>` para renderização instantânea.
* **Aspect Ratio:** Usar `aspect-ratio: 16 / 9;` no banner para reservar espaço e evitar saltos de layout.
* **Font Display Swap:** Adicionar `font-display: swap;` no `@font-face` para o texto aparecer antes da fonte carregar.

---

## V. Etapa 3: Refatoração Técnica e Limpeza

Ações para garantir um site leve e fácil de manter.

### 1. Refatoração de Estilos Inline (596 ocorrências)

* **Problema:** Estilos aplicados direto nas tags aumentam o peso e impedem o cache.
* **Ação:** Mover estilos para o CSS central da Nuvemshop.
* **Exemplo Prático:**
  * *Antes:* `<h2 style="color: #0052CC;">`
  * *Depois:* `<h2 class="section-title">` (com a regra definida no arquivo CSS).

### 2. Otimização de Scripts (78 scripts)

* **Ação:** Remover scripts desnecessários e aplicar `defer` ou `async` nos essenciais para não travar a página.

### 3. Semântica HTML5

* **Ação:** Implementar as tags `<main>` (conteúdo principal) e `<nav>` (menus) para melhor leitura pelos robôs do Google.

---

## VI. Checklist de Monitoramento Semanal

Execute estas ações toda segunda-feira (tempo estimado: 30 min):

1. **Google Search Console:** Verificar cliques, impressões e se novas páginas foram indexadas.
2. **Google PageSpeed Insights:** Monitorar o LCP (meta: < 2.5s) e o CLS (meta: < 0.1).
3. **SEO Minion:** Validar se novos produtos cadastrados possuem H1 único e Alt Text.
4. **PageSizer:** Garantir que o peso do código HTML da home se mantenha estável.

---

## VII. Ferramentas Recomendadas (Gratuitas)

* **Google Search Console:** Monitoramento de ranking e erros.
* **Google PageSpeed Insights:** Diagnóstico de velocidade.
* **SEO Minion:** Auditoria rápida de SEO On-Page.
* **PageSizer:** Controle de peso da página.

---
**Próximo Passo:** Iniciar a Etapa 1 no painel da Nuvemshop e validar as alterações com o SEO Minion.
