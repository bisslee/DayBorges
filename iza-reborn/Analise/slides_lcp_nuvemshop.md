# Otimização de LCP na Nuvemshop via CSS

![Nuvemshop Logo](/home/ubuntu/assets/nuvemshop_logo.png)

## 3 Ações para Acelerar o Carregamento Visual

---

### 1. CSS Crítico (Priorização)
![LCP Icon](/home/ubuntu/assets/lcp_icon.png)
*   **O que é:** Isolar o CSS que estiliza o topo do site (Header e Banner).
*   **Como aplicar:** Mover regras do banner principal para o `<head>` do HTML.
*   **Impacto:** Renderização instantânea da "dobra superior" sem esperar arquivos externos.

---

### 2. Reserva de Espaço (Aspect Ratio)
![SEO Concept](/home/ubuntu/assets/seo_concept.jpg)
*   **O que é:** Definir a proporção da imagem antes dela carregar.
*   **Como aplicar:** Usar `aspect-ratio: 16 / 9;` no container do banner.
*   **Impacto:** Elimina saltos de layout e acelera a prioridade de download da imagem.

---

### 3. Font Display Swap
*   **O que é:** Mostrar texto imediatamente enquanto a fonte carrega.
*   **Como aplicar:** Adicionar `font-display: swap;` no `@font-face` do CSS.
*   **Impacto:** O conteúdo textual do LCP aparece sem atraso, melhorando a percepção de velocidade.

---

### Como Aplicar na Nuvemshop
1.  Acesse **Personalizar Layout** > **Edição Avançada de CSS**.
2.  Identifique as classes do banner (ex: `.js-home-slider`).
3.  Insira as regras otimizadas e salve as alterações.
