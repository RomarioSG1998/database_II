# Guia de Execução: Laboratório Semana 6
## Engenharia de Software - Jala University

Este guia orienta a criação de scripts Bash personalizados para o seu banco de dados, automatizando os cálculos de crescimento para as Atividades #1 e #2 e gerando logs que comprovam a execução manual.

---

### 🛠️ Instruções para o Agente (Prompt de Geração)

> [!TIP]
> Copie e cole o comando abaixo no seu chat de IA para obter os scripts ajustados ao seu modelo de dados.

```markdown
Aja como um Engenheiro de Banco de Dados. Com base no meu diagrama (tabelas: Users, Categories, Tasks), crie dois scripts .bash para calcular o crescimento de dados. Considere as seguintes taxas:
- **Users:** 500/mês
- **Categories:** 100/mês
- **Tasks:** 1000/mês

**Script 1:** Calcule o total de registros e tamanho estimado (1 KB/registro) para os períodos de 1, 2 e 5 anos.
**Script 2:** Calcule o total de registros e tamanho estimado para os períodos de 6 meses, 3 anos e 4 anos.

**Requisito de Formatação:** Os scripts devem utilizar o comando `echo` para explicar detalhadamente cada passo do cálculo. Isso permitirá a captura de telas (prints) que comprovem que a lógica foi seguida de forma transparente.
```

---

### 📂 Estrutura das Atividades do Laboratório

#### Atividade #1: Estimativa de Crescimento (1, 2 e 5 anos)
Foco na projeção de longo prazo, conforme solicitado no roteiro oficial.
- **Tabelas de Análise:** `Users` (Clientes), `Categories` (Produtos) e `Tasks` (Pedidos).
- **Log de Execução:** O script deve demonstrar o cálculo multiplicando a taxa mensal pelo número de meses (Ex: $500 \times 12 = 6000$ usuários em 1 ano).

#### Atividade #2: Performance e Escalabilidade (6 meses, 3 e 4 anos)
Além dos cálculos, é necessário responder às questões analíticas presentes no PDF:
- **Impacto de Joins:** Como o crescimento exponencial da tabela `Tasks` impacta a performance de consultas que cruzam dados com `Users` e `Categories`.
- **Estratégias de Otimização:** Sugestão de criação de índices em chaves estrangeiras (`user_id`, `category_id`) e particionamento da tabela `Tasks` por data.
- **Escalabilidade:** Discussão sobre a transição de um upgrade vertical (CPU/RAM) para uma arquitetura distribuída ou em nuvem (Horizontal) ao atingir a marca de 4 anos.

---

### ✅ Checklist de Qualidade (Critério "Muito Bom")

- [ ] **Prints do Terminal:** Capturas de tela mostrando a execução do script com o passo a passo da lógica.
- [ ] **Precisão Logística:** Garantia de que as conversões de unidades (ex: KB para GB) estão corretas.
- [ ] **Reflexão Profunda:** Nas conclusões, mencione como campos de texto longo (ex: `description` do tipo `TEXT`) podem invalidar a estimativa de 1 KB fixo por registro.
- [ ] **Formatação do Arquivo:** Salvar o documento final em PDF utilizando o padrão de nomenclatura: `Atividade 1 - Semana 6 - Romario Galdino.pdf`.