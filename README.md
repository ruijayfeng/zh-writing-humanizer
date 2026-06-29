# zh-writing-humanizer

**中文写作人味化技能 | 移除 AI 写作痕迹，让文字更像人写的**

[![GitHub stars](https://img.shields.io/github/stars/ruijayfeng/zh-writing-humanizer?style=social)](https://github.com/ruijayfeng/zh-writing-humanizer/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/ruijayfeng/zh-writing-humanizer?style=social)](https://img.shields.io/github/forks/ruijayfeng/zh-writing-humanizer)
[![GitHub license](https://img.shields.io/github/license/ruijayfeng/zh-writing-humanizer)](https://github.com/ruijayfeng/zh-writing-humanizer/blob/main/LICENSE)
[![npm version](https://img.shields.io/npm/v/zh-writing-humanizer)](https://www.npmjs.com/package/zh-writing-humanizer)
[![GitHub issues](https://img.shields.io/github/issues/ruijayfeng/zh-writing-humanizer)](https://github.com/ruijayfeng/zh-writing-humanizer/issues)
[![GitHub last commit](https://img.shields.io/github/last-commit/ruijayfeng/zh-writing-humanizer)](https://github.com/ruijayfeng/zh-writing-humanizer/commits/main)

> **一句话总结：** 让 AI 写的中文文章，读起来像真人写的。

---

## 🎯 这是什么？

`zh-writing-humanizer` 是一个 **AI Agent 技能（Skill）**，专门用于：

- ✅ 移除中文 AI 写作痕迹
- ✅ 消除官话套话、营销黑话
- ✅ 打破机械式文章结构
- ✅ 处理中英混杂文案
- ✅ 让过度打磨但空洞的文字变得具体

**适用场景：** 编辑、改写、审稿、人味化处理中文或中英混杂文本。

---

## ✨ 效果展示

### Before（AI 味）
> 在当今数字化时代，人工智能技术正在深刻改变着我们的生活方式。本次活动的成功举办，标志着公司在数智化转型道路上迈出了关键一步。我们将持续推进服务能力建设，切实提升群众获得感。未来可期！

### After（人味）
> ChatGPT 火了之后，我身边一半的朋友都在用它写周报。公司这次把报销、采购和合同审批接入了同一个系统。我们会把窗口办理时间从 5 个工作日压到 2 个工作日。

**核心区别：** 去掉了空洞的套话，留下了具体的事实。

---

## 🚀 快速开始

### 安装

```bash
npx zh-writing-humanizer
```

安装后，技能会自动添加到你的 AI Agent 技能目录。

### 使用方式

在支持 Agent 技能的平台（如 Codex、Hermes）中，直接发送需要改写的文本：

```
帮我改写这段话，让它更自然：

在当今数字化时代，人工智能技术正在深刻改变着我们的生活方式...
```

或者使用 `@humanize` 前缀：

```
@humanize 在当今数字化时代，人工智能技术正在深刻改变着我们的生活方式...
```

---

## 🔍 支持识别的 AI 写作痕迹

| 类型 | 示例 | 修改方式 |
|------|------|----------|
| **重要性膨胀** | 具有重要意义、标志着、彰显了 | 说明具体发生了什么 |
| **官话套话** | 高度重视、持续推进、切实加强 | 保留必要术语，删除空话 |
| **营销黑话** | 全链路、生态、闭环、降本增效 | 说明具体功能、用户、成本 |
| **虚假权威** | 行业专家认为、多方关注 | 引用具体来源或删除 |
| **解释性填充** | 可以说、事实上、这意味着 | 删除重复逻辑的过渡词 |
| **机械对比** | 不是...而是...、不仅...更... | 用直接陈述或真实对比 |
| **三连法则** | 创新、协同、共赢 | 保留具体且必要的项目 |
| **翻译腔** | 作为一种...、在...方面发挥作用 | 使用中文动词和可见主语 |
| **隐藏主语** | 被、由、受到、得以 | 明确执行者 |
| **口号式结尾** | 未来可期、行稳致远、共创辉煌 | 在最后一个具体观点结束 |
| **人造金句** | 规则变了。答案没了。新的时代来了。 | 合并为精确句子 |
| **格言公式** | X 是 Y 的 Z、X 不是工具，而是镜子 | 用具体陈述替代 |
| **假坦诚开头** | 说实话、讲真、不得不说 | 直接说事情 |
| **聊天机器人痕迹** | 当然可以、希望这对你有帮助 | 删除助手框架 |
| **格式痕迹** | 机械式加粗、emoji 列表、冒号堆叠 | 转为自然段落 |
| **过度谨慎** | 可能会在一定程度上、潜在地 | 保留真实不确定性，删除堆叠 |

---

## 🎨 为什么选择 zh-writing-humanizer？

### vs 其他方案

| 特性 | zh-writing-humanizer | 其他工具 |
|------|---------------------|----------|
| **中文原生** | ✅ 专门针对中文优化 | ❌ 多数是英文翻译 |
| **16 种 AI 痕迹** | ✅ 完整覆盖 | ❌ 通常只有几种 |
| **语境感知** | ✅ 根据文本类型调整 | ❌ 通用处理 |
| **保留原意** | ✅ 不改变事实 | ❌ 可能过度改写 |
| **质量门控** | ✅ 6 维度评分 | ❌ 无质量检查 |
| **开源免费** | ✅ MIT 许可证 | ❌ 部分收费 |

### 核心优势

1. **中文原生设计** — 不是英文工具的翻译版
2. **语境感知** — 区分官方、技术、学术、营销、个人、口语等不同语境
3. **保留原意** — 只改表达方式，不改事实内容
4. **质量门控** — 改写后自动检查：含义、语境、具体性、节奏、信任度、整洁度

---

## 📚 详细文档

### 语境规则

| 语境 | 改写目标 |
|------|----------|
| 官方或机构 | 平实、负责、具体。保留必要政策术语，删除空洞仪式。 |
| 技术或参考 | 准确，该无聊就无聊，术语稳定，不加个性。 |
| 学术 | 精确谨慎，不回避不膨胀。 |
| 营销 | 具体利益、受众、证据、限制。先砍炒作再加风格。 |
| 个人随笔 | 保留矛盾情感、不均匀节奏、记忆、不确定性和可辩护的第一人称。 |
| 社交或口语 | 自然口语中文。只在原文风格支持时使用俚语。 |

### 改写流程

1. 阅读文本，推断语境
2. 识别 AI 痕迹，列出要点
3. 区分有原文支持的事实和缺失/模糊的陈述
4. 草拟保守改写，保留原意和段落意图
5. 审计草稿：还有什么听起来像 AI 写的？
6. 再修订一次
7. 最终输出前，检查：捏造事实？语境漂移？空洞结尾？聊天机器人痕迹？

### 质量门控

| 维度 | 通过条件 |
|------|----------|
| 含义 | 所有原始陈述都被保留或明确标记为不确定 |
| 语境 | 改写适合文本类型，不强行口语化 |
| 具体性 | 空洞抽象被具体行动者、行动或限制替代 |
| 节奏 | 句子长度自然变化，不制造戏剧性 |
| 信任度 | 文本信任读者，不过度解释明显观点 |
| 整洁度 | 聊天机器人痕迹、口号结尾、装饰性格式已清除 |

---

## 🤝 贡献指南

欢迎贡献！请遵循以下步骤：

1. Fork 本仓库
2. 创建特性分支：`git checkout -b feature/amazing-feature`
3. 提交更改：`git commit -m 'Add amazing feature'`
4. 推送分支：`git push origin feature/amazing-feature`
5. 创建 Pull Request

### 贡献方向

- 🇨🇳 中文 AI 写作痕迹识别规则
- 📝 更多 Before/After 示例
- 🐛 Bug 修复
- 📖 文档改进
- 🌐 国际化支持

---

## 📄 许可证

本项目基于 [MIT 许可证](LICENSE) 开源。

---

## 🙏 致谢

- [blader/humanizer](https://github.com/blader/humanizer) — 主要上游项目
- [op7418/Humanizer-zh](https://github.com/op7418/Humanizer-zh) — 中文本地化参考
- [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) — 检查清单和评分思路

---

## 📊 项目状态

- **当前版本：** `2.8.0-zh.1`
- **基于上游：** `blader/humanizer` 2.8.0
- **状态：** 积极开发中
- **目标：** 覆盖率不低于 `op7418/Humanizer-zh`

---

## 🔗 相关链接

- [GitHub 仓库](https://github.com/ruijayfeng/zh-writing-humanizer)
- [npm 包](https://www.npmjs.com/package/zh-writing-humanizer)
- [问题反馈](https://github.com/ruijayfeng/zh-writing-humanizer/issues)
- [更新日志](https://github.com/ruijayfeng/zh-writing-humanizer/releases)

---

**如果你也想让 AI 写的中文更像人写的，试试 `zh-writing-humanizer` 吧！** 🚀
