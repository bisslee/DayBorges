# TODO Minucioso - Fase 1: Melhorar a Nuvemshop

## Iza Reborn - Bebê Reborn

**Cliente:** Day Borges | **Loja:** <https://www.izareborn.com.br/>  
**Objetivo:** Melhorar SEO, visibilidade do blog e performance para aumentar visitas e conversões  
**Data:** 31/01/2026

---

## Situação atual (resumo)

- **Visitas:** ~54 únicas/semana
- **Vendas:** 0
- **Conversão:** 0%
- **Blog:** 31 posts publicados, já no menu principal
- **LCP mobile:** 5,4s (meta: < 2,5s)

---

## PARTE 1: Configuração técnica e ferramentas SEO

### 1.1 Google Search Console

- [x] Criar conta no [Google Search Console](https://search.google.com/search-console)
- [x] Adicionar a propriedade `https://www.izareborn.com.br/`
- [x] Verificar propriedade (via DNS ou arquivo HTML)
- [x] Enviar sitemap: `https://www.izareborn.com.br/sitemap.xml`
- [x] Verificar se o sitemap foi indexado sem erros
- [x] Configurar alertas de cobertura (páginas excluídas, erros)
- [x] Registrar variação sem www (ou vice-versa) conforme domínio canônico

### 1.2 Google Analytics (GA4)

- [ ] Criar propriedade GA4 (ou verificar se já existe)
- [ ] Adicionar ID de medição no painel Nuvemshop
- [ ] Configurar conversões (ex.: compra, adicionar ao carrinho)
- [ ] Ativar remarketing (se aplicável)
- [ ] Testar se os eventos estão sendo coletados
- [ ] Vincular GA4 ao Google Search Console

### 1.3 Domínio e HTTPS

- [x] Confirmar redirecionamento www → não-www (ou o contrário)
- [x] Garantir que HTTP redireciona para HTTPS
- [x] Verificar se não há conteúdo misto (HTTP em página HTTPS)
- [x] Definir URL canônica padrão da loja

### 1.4 Sitemap e Robots.txt

- [ ] Acessar Configurações > Loja > SEO na Nuvemshop
- [x] Verificar se o sitemap está gerado automaticamente
- [x] Testar sitemap em: `https://www.izareborn.com.br/sitemap.xml`
- [x] Verificar robots.txt em: `https://www.izareborn.com.br/robots.txt`
- [x] Garantir que o blog está incluído no sitemap

---

## PARTE 2: SEO On-Page – Página inicial e estrutura

### 2.1 Página inicial

- [ ] **Título SEO:** Criar título único (150–160 caracteres)
  - Exemplo: `Boneca Reborn Realista | Bebê Reborn Menino e Menina - Iza Reborn`
- [ ] **Meta Description:** Escrever descrição atrativa (150–160 caracteres)
  - Incluir: o que vende, diferencial, localização e CTA
- [ ] **Tag H1 única:** Manter apenas **uma** H1 na home
  - Sugestão: "Iza Reborn - Bebê Reborn"
  - Alterar demais títulos de destaque para H2
- [ ] **Texto SEO no rodapé:** Adicionar 150–300 palavras
  - O que a loja vende
  - Diferenciais (qualidade, realismo, etc.)
  - Zona de entrega
  - Autoridade da marca

### 2.2 Hierarquia de títulos (H1, H2, H3)

- [ ] Mapear todas as H1 da home e categorias principais
- [ ] Garantir apenas 1 H1 por página
- [ ] Trocar títulos duplicados para H2 ou H3
- [ ] Usar palavras-chave nas H2 (ex.: "Bebê Reborn Menina", "Bebê Reborn Menino")

---

## PARTE 3: SEO On-Page – Categorias

### 3.1 Estrutura de categorias

- [ ] Organizar categorias principais:
  - Bebê Reborn Menina
  - Bebê Reborn Menino
  - Bebê Reborn Gêmeos
  - Acessórios Reborn
- [ ] Remover ou consolidar categorias redundantes

### 3.2 Por categoria

Para **cada** categoria:

- [ ] Título SEO específico (ex.: `Bebê Reborn Menina Realista | Bonecas Silicone - Iza Reborn`)
- [ ] Meta Description única (150–160 caracteres)
- [ ] Texto explicativo no final da página (150–300 palavras)
- [ ] Verificar H1 única por página de categoria

---

## PARTE 4: SEO On-Page – Produtos

### 4.1 Cadastro de produtos

Para **cada** produto:

- [ ] **Título:** Descritivo e longo (ex.: `Boneca Reborn Laura Menina Silicone Realista 55cm`)
- [ ] **Descrição:** Mínimo 300 palavras
- [ ] **Benefícios:** Lista em bullet points
- [ ] **Especificações:** Tamanho, material, peso, etc.
- [ ] **O que acompanha:** Kit, roupas, acessórios
- [ ] **Palavras-chave:** Integrar termos de busca de forma natural

### 4.2 Imagens dos produtos

Para **cada** imagem de produto:

- [ ] **Nome do arquivo:** Ex.: `boneca-reborn-menina-laura-silicone.jpg`
- [ ] **Texto ALT:** Descritivo e otimizado
  - Exemplo: `Bebê Reborn Menina Kit Lou Lou realista com pintura artística e corpo de pano`
- [ ] **Tamanho:** Reduzir para até ~300 KB
- [ ] Usar WebP quando possível (ou ferramentas de otimização da Nuvemshop)

---

## PARTE 5: Blog – visibilidade e SEO

### 5.1 Menu e navegação

- [x] Confirmar que **Blog** está no menu principal (já está)
- [x] Adicionar link do Blog no **menu rodapé** (Painel > Loja online > Menus > Menu rodapé > Adicionar link)
- [X] Colocar o Blog em posição visível (ex.: após categorias principais)

### 5.2 Configuração do blog

- [x] Acessar Blog > Configurações (se houver)
- [x] Definir URL amigável (ex.: `/blog` ou `/artigos`)
- [x] Verificar se os posts aparecem no sitemap

### 5.3 Tags e SEO por post

Para **cada** um dos 31 posts:

- [ ] Clicar em "Editar" na seção **Tags e SEO**
- [ ] Preencher **Meta Title** (50–60 caracteres)
- [ ] Preencher **Meta Description** (150–160 caracteres)
- [ ] Adicionar **tags** relevantes (ex.: bebê reborn, boneca realista, colecionador)
- [ ] Garantir links internos para produtos da loja no texto
- [ ] Usar H2 e H3 no conteúdo para melhor estrutura

### 5.4 Imagem principal dos posts

Para cada post:

- [ ] Verificar tamanho mínimo: **1024 x 630 px**
- [ ] Formato: PNG, JPEG ou GIF
- [ ] Nome do arquivo com palavra-chave
- [ ] Texto ALT descritivo na imagem

### 5.5 Prioridade de posts

- [ ] Priorizar posts com maior potencial de tráfego
- [ ] Revisar os 5–10 posts mais antigos ou mais vistos
- [ ] Adicionar ou melhorar CTAs para produtos
- [ ] Incluir link para categoria ou produto em cada post

---

## PARTE 6: Menu – organização e SEO

### 6.1 Limpeza do menu principal

- [ ] Revisar itens duplicados ou muito semelhantes:
  - "Bebê Reborn" vs "Comprar Bebê Reborn" vs "Comprar o melhor bebê reborn"
  - "Boneca Parecida com Bebê" vs "Boneca Que Imita Bebê de Verdade" vs "Boneca Reborn Realista"
- [ ] Consolidar ou remover itens que causam canibalização
- [ ] Manter estrutura clara: Início, Categorias, Blog, Contato
- [ ] Ordenar itens por importância (arrastar no painel)

### 6.2 Menu rodapé

- [x] Incluir link para o Blog
- [x] Verificar links de políticas (Troca, Privacidade, Reembolso, Termos)
- [x] Incluir "Quem é Iza Reborn" se ainda não estiver

---

## PARTE 7: Páginas institucionais

### 7.1 Páginas de política

Para cada página (Termos, Privacidade, Troca, Reembolso):

- [ ] Título SEO próprio
- [ ] Meta Description curta
- [ ] Conteúdo completo e atualizado

### 7.2 Página "Quem é Iza Reborn"

- [ ] Texto de 200–400 palavras
- [ ] História, missão, diferenciais
- [ ] Palavras-chave integradas
- [ ] Título e Meta Description otimizados
- [ ] Possível link para Blog ou produtos

### 7.3 Páginas de produto genéricas

- [ ] Revisar "Comprar Bebê Reborn", "Comprar o melhor bebê reborn", etc.
- [ ] Avaliar se devem virar landing pages ou redirecionar para categorias
- [ ] Evitar conteúdo muito similar entre páginas

---

## PARTE 8: Performance (LCP e velocidade)

### 8.1 CSS crítico e LCP (mobile)

- [ ] Acessar **Layout** > **Edição avançada de CSS**
- [ ] Identificar classes do banner (ex.: `.js-home-slider`)
- [ ] Incluir CSS crítico do Header/Banner no `<head>` (se a Nuvemshop permitir)
- [ ] Adicionar `aspect-ratio: 16/9` no container do banner
- [ ] Configurar `font-display: swap` nas fontes customizadas

### 8.2 Otimização de imagens

- [ ] Comprimir imagens do banner principal
- [ ] Usar dimensões adequadas (evitar imagens muito grandes)
- [ ] Preferir formato WebP para imagens principais

### 8.3 Scripts (se houver acesso)

- [ ] Avaliar uso de 78 scripts (conforme análise)
- [ ] Remover scripts desnecessários
- [ ] Aplicar `defer` ou `async` em scripts não críticos

---

## PARTE 9: Conversão e UX

### 9.1 Selos e confiança

- [ ] Incluir selos de segurança (ex.: compra segura)
- [ ] Exibir forma de pagamento (cartão, PIX, boleto)
- [ ] Destaque para garantia ou política de troca

### 9.2 Frete e entrega

- [ ] Informação clara sobre prazos de entrega
- [ ] Simulador de frete visível
- [ ] CEP em evidência na página do produto

### 9.3 Parcelamento

- [ ] Exibir parcelamento na página do produto
- [ ] Destaque para "parcele em X vezes"

### 9.4 WhatsApp

- [x] Botão de WhatsApp visível
- [x] Opção "Comprar pelo WhatsApp" onde fizer sentido
- [x] Número configurado corretamente

---

## PARTE 10: Fontes de tráfego e marketing

### 10.1 Google Search Console – Fontes de tráfego

- [ ] Acessar Estatísticas > Fontes de tráfego na Nuvemshop
- [ ] Analisar de onde vêm as visitas
- [ ] Identificar canais com potencial (orgânico, direto, redes sociais)

### 10.2 Marketing básico

- [ ] Avaliar integração com Google Shopping (se aplicável)
- [ ] Revisar campanhas de anúncios (se houver)
- [ ] Verificar integração com Instagram e Facebook

### 10.3 Google Business Profile

- [ ] Verificar se a loja está cadastrada
- [ ] Atualizar endereço, telefone, site e horário
- [ ] Solicitar avaliações de clientes (quando houver vendas)

---

## PARTE 11: Monitoramento e validação

### 11.1 Checklist semanal (30 min)

- [ ] Google Search Console: cliques, impressões, indexação
- [ ] Google Analytics: visitas, páginas mais vistas
- [ ] PageSpeed Insights: LCP e CLS (meta LCP < 2,5s no mobile)
- [ ] Nuvemshop: vendas, carrinhos abandonados

### 11.2 Ferramentas gratuitas

- [ ] Instalar SEO Minion (extensão) para auditoria rápida
- [ ] Usar PageSizer para peso da página
- [ ] Usar Google Search Console para performance de busca

### 11.3 Validação final

- [ ] Revisar H1 única em todas as páginas principais
- [ ] Verificar Alt Text em todas as imagens de produtos
- [ ] Testar sitemap e indexação no Search Console
- [ ] Testar formulários, WhatsApp e fluxo de compra

---

## Resumo de prioridades

| Prioridade | Ação | Impacto |
|------------|------|---------|
| **P0** | Google Search Console + sitemap | Base para indexação |
| **P0** | Tags e SEO em todos os 31 posts do blog | Visibilidade orgânica |
| **P0** | Blog no menu rodapé | Acesso ao conteúdo |
| **P1** | H1 única + Meta Title/Description na home | SEO essencial |
| **P1** | Alt Text em todas as imagens | SEO + acessibilidade |
| **P1** | LCP no mobile (5,4s → &lt; 2,5s) | Core Web Vitals |
| **P2** | Organização do menu (evitar canibalização) | UX + SEO |
| **P2** | Produtos com descrições 300+ palavras | Conversão + SEO |
| **P3** | Selos, frete, parcelamento, WhatsApp | Conversão |

---

**Observação:** SEO é processo contínuo. Resultados de tráfego orgânico costumam aparecer em 30–90 dias após as otimizações.
