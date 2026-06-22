# Validation Fixture: Chinese-English Mixed Text

## Input

这个 AI-native workflow 可以 end-to-end 地 empower 销售团队，让 lead management 更 data-driven，并在不同 touchpoint 形成增长闭环。

## Expected AI Traces

- Decorative English jargon: `AI-native`, `workflow`, `end-to-end`, `empower`,
  `lead management`, `data-driven`, `touchpoint`.
- Startup jargon: `增长闭环`.
- Translated-English sentence order.

## Acceptable Rewrite

这个流程把线索录入、跟进记录和转化结果串在一起。销售可以看到每条线索目前由谁负责、上次联系是什么时候、下一步该做什么。`lead` 如果是团队内部固定术语，可以保留；否则写成“线索”更清楚。

## Gate

- Keep useful domain terms only when justified.
- Translate surrounding logic into natural Chinese.
- Do not over-clean established product or CRM terms.
