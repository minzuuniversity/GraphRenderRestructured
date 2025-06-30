# 📘 Release Note 作者编写的软件版本说明

本项目的所有可公开更改将记录于此文件中。

遵循 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/) 和 [语义化版本控制](https://semver.org/lang/zh-CN/)。

------------------------------------------------------------------------------------------------

## [完整的项目文档](https://yinglichina8848.github.io/GraphRenderRestructured)

## [软件质量报告](https://yinglichina8848.github.io/GraphRenderRestructured/doc/quality-summary.html)

## [自动生成的软件变更报告](https://yinglichina8848.github.io/GraphRenderRestructured/doc/CHANGELOG.html)

## [软件版本说明](https://yinglichina8848.github.io/GraphRenderRestructured/doc/MYCHANGELOG.html)


---


-整个项目的开发，耗时14天（6月14 22：00 -30日 20：00），这是 2026-06-30 结果。

| 版本记录             | 耗时 | 成本  | 发布说明 |
|------------------|------|-------|----------|
| 1. 初始版本 0.1.0    | 3天  | 10元  | 配置 Aider 使用 Deepseek 开发，API 充值10元额度用完。<br>还有个别单元测试和注释尚未补全（建议用 IDEA + 通义灵码 逐步完成，但项目为示例程序，已能展示 AI 编程能力）。 |
| 2. 文档补全版本 0.2.0  | 2天  | 10元  | 为课堂演示再次充值 10 元，使用 Aider + Deepseek 生成各类报告和注释。<br>详见《aider对话过程.pdf》。 |
| 3. 文档自动化集成 0.3.0 | 3天 | 0元   | 在 ChatGPT 辅助下集成文档自动化工具。<br>详见《ChatGPT-GraphRender项目问答全过程.pdf》。 |
| 4. 基础版本 1.0.0    | 1天  | 0元   | 使用语义化版本控制，形成首个基础稳定版本。 |
| 5. 冻结版本 1.2.2    | 3天  | 20元  | 使用硅基流动 Deepseek + ChatGPT + Aider（详见对应 PDF），补全文档注释、测试代码和 AI 对话记录。 |

一个新手在这些文档和教程的帮助下，应该可以在 一个月内，完整复现整个过程。
---


## [Unreleased]

###考虑加入 AI 自动分析，提升软件质量，引入MCP工作流，完成烦琐的提示、测试、补全注释等非创造性的工作。

本项目遵循 Conventional Commits 和 semantic-release 标准，自动生成版本变更记录。

---

## [1.2.0](https://github.com/yinglichina8848/GraphRenderRestructured/releases/tag/v1.2.0) - 2025-06-30

- ✨ 冻结最终版本，完善 AI 对话记录，更新 README
- 📘 发布详细的软件质量分析与版本说明

---

## [1.1.2](https://github.com/yinglichina8848/GraphRenderRestructured/releases/tag/v1.1.2) - 2025-06-30

- 🧪 支持图形界面测试的云端环境验证
- 🔁 自动 CHANGELOG 生成，无需手动复制
- 🧩 修复发布脚本并完善自动部署流程（同步 Gitee）

---

## [1.1.0](https://github.com/yinglichina8848/GraphRenderRestructured/releases/tag/v1.1.0) - 2025-06-30

- 🧪 增强 SwingUI 和工厂类测试，覆盖率达 86%
- 🧹 多项 bug 修复：文件选择逻辑、异常测试、UI 测试稳定性
- ♻️ 重构渲染逻辑，提升稳定性和测试友好性

### ✨ 期间在 Aider + 硅基流动 Deepseek 辅助下， 生成了文档注释，并生成测试用例，并生成测试报告。
- ✅ 主要补充的界面类的单元测试，形成了在云端环境，没有显示的情况下的自动测试。

---

## [1.0.x](https://github.com/yinglichina8848/GraphRenderRestructured/releases?after=v1.1.0) - 2025-06-29 ~ 06-30

- 🧪 补全命令、观察者、工厂、访问者等核心模块的单元测试
- 📚 统一注释风格，添加作者与时间，生成 HTML 与 PDF 文档
- 🔧 修复 Javadoc、Swing 渲染器、SVG 输出、图形测试等关键错误

---

## [1.0.0](https://github.com/yinglichina8848/GraphRenderRestructured/releases/tag/v1.0.0) - 2025-06-27

- 🔨 初始化语义版本控制，集成 Doxygen + PDF 输出 + GitHub Pages
- ✅ 支持大部分图形接口实现与命令系统的重构
- 📘 添加 AI 生成的文档质量评估报告和渲染分析文档
- ⚠️ **BREAKING CHANGE:** 项目文档结构调整、完整渲染系统重构

### ✨ 集成了语义版本控制，提交源码时自动升级版本号，并生成变更记录。
- ✅ 集成同步发布功能，一次提交，自动同步到 Github 和 Gitee
- ✅ 云端文档自动生成和发布，main 分支的任何代码提交，会自动触发云端编译、测试和报告生成，并自动发布到 gh-pages 分支，以 Github Pages 网页的形式展示。
- ✅ 语义代码注释和版本集成，自动抽取函数注释，错误修正，生成版本变更记录，并生成版本号。
- ✅ 加入了 AI 工具对话过程文档，方便读者学习和复现整个项目的开发和配置。


## [v0.4.0] - 2025-06-28
### ✨ 整理项目，加入语义版本控制，进一步提高文档的规范性和全面性。
- 使用  semantic-release 配置了自动运行的 Action 工作流
- 手动方式，使用 standard-version 更改版本号。
- 整合 软件质量总结报告，用 Python 分析自动生成的各个测试报告，给出最终评价。

## [v0.3.0] - 2025-06-27
### ✨ 一点感想： AI + OpenSource 是大势所趋
- 感谢 Github， 感谢各个开源软件的开发者和提供者，你们让软件开发工作重新变成了一种享受！
- 所有烦琐的，繁重的测试、注释和整理工作，交给开源的工作流和 AI 来自动完成。
- 设计师可以更加关注于软件的进化方向和真正的有效功能和软件的性呢。
- AI + 开源软件， 是人类软件自主进化的发动机和翅膀。

## [v0.2.0] - 2025-06-27
### ✨ 新增功能 主要集中在 健全文档化和测试环境
- 加入模板分离的 Action 支持，云端也能生成美化的首页。
- 使用模板分离和渲染方式index.html，publish.sh 专注于代码逻辑，页面内容和美化效果由 python 和 模板文件完成。
- 美化 publish.sh 生成的index.html，后续考虑使用模板自动生成美化效果。 
- 加入 MyChangLog 模板（本页面），手动记录项目的重大改进，以后考虑提供自动生成版本。
- 集成 GitHub Actions 工作流，实现云端自动编译、测试、生成报告。
- 自动发布 `target/site` 中的静态文档至 `gh-pages` 分支。
- 添加 `publish.sh` 脚本，支持本地/CI 自动构建发布文档。（综合在生成的网站的首页显示各种资源）
- 添加 `push.sh` 脚本，提交本地源码到 Github main 分支, 并触发云端的 Action， 完成自动编译测试和文档发布。
- 实现 Markdown → HTML 转换，文档索引页自动生成（针对doc目录下 Aider 生成的 Markdown 报告）。
- 
### 🧠 AI 提升 2025-06-25
- 补充多个 Aider 生成的 Markdown 分析报告，从多个角度健全项目的软件工程文档。
- 集成 Aider 脚本，辅助分析代码质量、自动补全注释与测试。（测试功能，Aider 的反馈并未直接加入代码，只是显示修改意见）
- 自动生成 `doc/ai_fix_suggestions.md` AI 建议报告。

### 🛠 持续集成改进 2025-06-26
- 添加 `.github/workflows/auto_ai_workflow.yml` 支持自动发布。
- 准备自动生成 `CHANGELOG.md` 并集成进发布流程。
- 支持多格式代码质量分析：PMD、Checkstyle、JaCoCo、SpotBugs、OWASP Dependency Check。

---

## [v0.1.0] - 2025-06-24

### -  初始版本
- Java + JavaScript 渲染核心代码结构搭建。
- 支持 JavaDoc 与 Doxygen 双文档系统。
- 上传类图、顺序图，文档结构标准化。

