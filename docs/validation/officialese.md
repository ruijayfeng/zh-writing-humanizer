# Validation Fixture: Officialese

## Input

本次专项行动以群众需求为导向，持续推进服务能力建设，切实加强窗口作风管理，进一步优化办理流程，不断提升群众获得感和满意度，为基层治理现代化奠定坚实基础。

## Expected AI Traces

- Officialese padding: `持续推进`, `切实加强`, `进一步优化`, `不断提升`.
- Significance inflation: `奠定坚实基础`.
- Vague actor/action: no concrete service change is named.

## Acceptable Rewrite

这次专项行动主要改窗口服务：压缩办理步骤，公开办理时限，并把投诉处理结果反馈给申请人。原文没有说明具体缩短了多少时间，不能替它补数字。

## Gate

- Preserve that it is a special action about service process.
- Do not invent metrics.
- Keep an institutional but plain register.
