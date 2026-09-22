<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&height=200&color=gradient&text=zh-writing-humanizer&animation=fadeIn" alt="zh-writing-humanizer 横幅">
</p>

<p align="center">
  <strong>凯冰的中文写作辅助 Skill</strong>
</p>

<p align="center">
  去除中文里的 AI 写作痕迹，并按需进入技术文章写作风格或公众号写作风格。
</p>

<p align="center">
  <a href="https://github.com/ruijayfeng/zh-writing-humanizer/stargazers">
    <img src="https://img.shields.io/github/stars/ruijayfeng/zh-writing-humanizer?style=social" alt="GitHub stars">
  </a>
  <a href="https://www.npmjs.com/package/zh-writing-humanizer">
    <img src="https://img.shields.io/npm/v/zh-writing-humanizer" alt="npm version">
  </a>
  <a href="https://github.com/ruijayfeng/zh-writing-humanizer/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/ruijayfeng/zh-writing-humanizer" alt="GitHub license">
  </a>
  <a href="https://github.com/ruijayfeng/zh-writing-humanizer/issues">
    <img src="https://img.shields.io/github/issues/ruijayfeng/zh-writing-humanizer" alt="GitHub issues">
  </a>
</p>

## 这是什么

`zh-writing-humanizer` 首先是我为自己制作的一套中文写作辅助 Skill。

我会用它处理技术博客、公众号文章和知乎内容。它既负责清理官话、营销黑话、翻译腔和机械结构，也保存了我长期写技术文章形成的一些习惯：从真实问题进入，沿着因果关系解释机制，把事实、判断和不确定性分开。

我把它开源，是因为这些规则也可能对其他中文创作者有用。但它不是一套适合所有人的“标准文风”。仓库中的语言偏好、文章结构和网络身份默认服务于凯冰自己的写作。其他人可以直接使用基础的人味化能力，也可以修改两个风格文件，把它逐步调整成自己的写作 Skill。

## 三层能力

| 能力 | 适合处理什么 | 默认目标 |
| --- | --- | --- |
| 中文人味化 | 中文改写、审稿、中英混排、官话和营销文案 | 去掉 AI 痕迹，保留事实、语气和文本类型 |
| 技术文章写作风格 | 技术博客、教程、原理讲解、源码分析、故障复盘 | 从问题和证据出发，把机制和边界讲清楚 |
| 公众号写作风格 | 公众号长文、AI 产品体验、工具工作流、项目复盘、科技观点 | 更快进入主题，兼顾阅读节奏、真实体验和明确判断 |

知乎不单独建立第三套风格。需要发布到知乎时，公众号路线会调整文章的入口和论证方式：更早回答问题，减少信息流悬念和互动话术，让证据、假设和边界更容易检查。

## 两套文章风格

### 技术文章写作风格

这套风格主要用于技术文章和技术博客。常见的推导路径是：

```text
现象 → 疑问 → 约束 → 机制 → 证据 → 回看问题
```

它会关注数据放在哪里、状态由谁维护、变化何时可见，以及接口背后真正发生了什么。代码、命令、运行结果和版本限制必须来自已有材料，不能为了让文章完整而补造实验结果。

API 参考、产品手册和运行手册默认保持中性，不强行套用个人口吻。

### 公众号写作风格

这套风格主要用于公开发布的长文。它可以从一个实际结果、使用场景、失败经历或明确判断进入，再展开证据、机制、限制和适用人群。

它不会为了“有活人感”而编造第一次使用、朋友对话、读者反馈、节省时间、测试数据或情绪反应。没有亲自测试过的产品，只能根据现有材料分析，不能写成亲测文章。

需要作者署名或自我介绍时，当前默认网络身份是“凯冰”，不会使用或推断真实姓名。

## 安装

### GitHub 最新版

```bash
npx github:ruijayfeng/zh-writing-humanizer
```

该方式直接安装当前仓库版本，包含技术文章写作风格和公众号写作风格。

### npm 稳定版

```bash
npx zh-writing-humanizer
```

npm 当前公开版本仍为 `2.8.0-zh.1`。`3.2.1-zh.1` 发布到 npm 后，这条命令才会安装本文介绍的文章写作路线与文章配文模式。体验叙事诊断需明确提出结构规划需求才会启用。

安装器会把 `SKILL.md`、Agent 元数据和运行时引用文件复制到当前 Agent 的技能目录。项目级使用时，也可以把整个 skill 安装到项目自己的 `.codex/skills/` 下。

当前仓库版本：`3.2.1-zh.1`

## 使用示例

### 普通中文改写

```text
帮我把这段中文改得自然一些，保留事实和正式程度，不要补充原文没有的数据。
```

### 写技术博客

```text
使用技术文章写作风格，根据这些代码、运行结果和笔记，写一篇解释 copy-on-write 的技术博客。
重点回答：父子进程打印的虚拟地址相同，为什么修改后读到的值不同？
```

### 写公众号文章

```text
使用公众号写作风格，把这次用 Codex 整理知识库的过程写成一篇公众号文章。
保留两次失败尝试，不要编造节省时间的数据，也不要写成产品宣传稿。
```

### 改成知乎版本

```text
把这篇公众号文章改成知乎回答。开头先回答问题，减少悬念和互动话术，保留原有事实、判断和限制。
```

## 不编造，比写得热闹更重要

这套 Skill 会优先保护原文中的事实关系，包括时间、数字、排名、引用、因果关系和同时发生的事件。

下面这个例子只调整表达，不增加新的业务事实。

### 修改前

> 本次更新围绕用户体验进行了全面优化，进一步提升了文件导入效率，为用户提供更加高效、流畅的一站式内容管理体验。用户现在可以一次导入 100 个 Markdown 文件，失败文件会显示对应的错误行。

### 修改后

> 这次更新调整了文件导入流程。用户可以一次导入 100 个 Markdown 文件；导入失败时，页面会标出对应的错误行。原文没有提供耗时数据，因此不能判断导入速度提高了多少。

## 调整成你自己的写作 Skill

如果你不是凯冰，建议把当前仓库当作一套可修改的写作骨架，而不是直接照搬署名和个人偏好。

### 1. 修改技术文章习惯

编辑：

```text
references/profiles/technical-article-voice.md
```

可以调整你习惯怎样开头、如何展开推导、是否使用“我们”、段落长度、术语处理和结尾方式。

### 2. 修改公众号语言和判断方式

编辑：

```text
references/profiles/public-account-voice.md
```

可以加入你真实使用的口语、情绪强度、个人判断方式和读者距离。不要把偶然出现的一句话强行升级成永久规则。

### 3. 替换公开身份

当前 `SKILL.md` 和公众号 profile 使用“凯冰”作为需要署名时的默认网络身份。其他使用者应替换成自己的公开身份，或者删除自动署名规则，改为每次由用户提供。

### 4. 用自己的文章校准

选择一批确实由你写作或深度修改过的文章，提炼稳定特征：

- 你通常从问题、结果、经历还是观点进入；
- 你怎样表达确定、怀疑、喜欢和不满；
- 你愿意使用多强的口语和情绪；
- 你如何解释陌生概念；
- 哪些词只是偶然出现，哪些才是稳定习惯。

个人文章只能作为语言和思考方式的证据，不能作为新文章的事实来源。

### 5. 修改后验证

```bash
python /path/to/skill-creator/scripts/quick_validate.py .
```

仓库还提供了发布结构检查和八组验证夹具，用于检查事实保真、文本类型、公众号路线、技术文章路线和中英混排处理。

## 主要识别的 AI 写作痕迹

| 类型 | 常见表现 | 处理方式 |
| --- | --- | --- |
| 重要性膨胀 | 具有重要意义、标志着、开启新篇章 | 说明实际发生了什么 |
| 官话套话 | 高度重视、持续推进、切实加强 | 保留必要术语，删除仪式性表达 |
| 营销黑话 | 全链路、生态、闭环、降本增效 | 说明功能、用户、成本、证据和限制 |
| 虚假权威 | 行业专家认为、媒体广泛报道 | 给出具体来源，否则缩小或删除主张 |
| 机械对比 | 不是……而是……、不仅……更…… | 使用直接陈述或真实比较 |
| 翻译腔 | 作为一种……、在……方面发挥作用 | 改用自然中文动词和明确主语 |
| 人造金句 | 连续短句、抽象比喻、强行升华 | 回到具体事实和真实判断 |
| 聊天机器人痕迹 | 当然可以、希望对你有帮助 | 删除助手式开场和收尾 |
| 格式模板 | 机械加粗、装饰性列表、标题过密 | 只保留真正帮助阅读的结构 |
| 空洞结尾 | 未来可期、让我们拭目以待 | 停在最后一个有用结论上 |

完整规则位于 [`SKILL.md`](SKILL.md)。

## 项目结构

```text
zh-writing-humanizer/
├── SKILL.md
├── agents/openai.yaml
├── references/
│   ├── routes/
│   │   ├── technical-article.md
│   │   ├── public-account-article.md
│   │   ├── experience-narrative.md
│   │   └── article-share-copy.md
│   ├── profiles/
│   │   ├── technical-article-voice.md
│   │   └── public-account-voice.md
│   └── conventions/
│       └── chinese-technical-style.md
├── docs/validation/
└── scripts/validate-release.ps1
```

## 版本与上游

- 当前版本：`3.2.1-zh.1`
- 主要上游：[`blader/humanizer`](https://github.com/blader/humanizer) `3.0.0`
- 中文本地化参考：[`op7418/Humanizer-zh`](https://github.com/op7418/Humanizer-zh)
- 技术文档规范参考：[`ruanyf/document-style-guide`](https://github.com/ruanyf/document-style-guide)
- 许可证：MIT

上游规则、中文适配和路线扩展的对应关系记录在 [`docs/adaptation-map.md`](docs/adaptation-map.md)。

## 贡献

欢迎提交中文 AI 写作痕迹、真实失败案例、路线测试和文档修正。涉及个人写作风格时，请说明它是通用问题还是个人偏好，避免把一个人的口头习惯变成所有使用者都必须遵守的规则。

## 相关链接

- [GitHub 仓库](https://github.com/ruijayfeng/zh-writing-humanizer)
- [npm 包](https://www.npmjs.com/package/zh-writing-humanizer)
- [问题反馈](https://github.com/ruijayfeng/zh-writing-humanizer/issues)
- [版本发布](https://github.com/ruijayfeng/zh-writing-humanizer/releases)
