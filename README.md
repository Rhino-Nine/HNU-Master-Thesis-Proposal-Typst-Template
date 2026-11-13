# 海南大学研究生学位论文开题报告书（Typst 模板）

基于 Typst 的海南大学硕士开题报告模板，格式参照上海交通大学官方模板修改。

相比 LaTeX，Typst 编译速度更快、零配置。

## 快速开始

安装 [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) VS Code 插件，打开 `template/main.typ` 即可实时预览。

命令行编译：

```bash
typst compile main.typ        # 单次编译
typst watch main.typ          # 监视模式，保存即重编译
```

## 使用

### 1. 填写封面信息

在 `template/main.typ` 开头修改：

```typst
#show: body => project(
  cover-title: "你的论文题目",
  name:        "你的名字",
  student-id:  "学号",
  major:       "专业",
  supervisor:  "导师",
  school:      "学院",
  body
)
```

### 2. 编写正文

在 `main.typ` 正文部分直接编写：

- 章节标题：`=` 标记层级
- 数学公式：行内 `$a^2+b^2=c^2$`
- 图片：`#figure(image("path"), caption: [...])`
- 表格：`table()`
- 引用文献：正文中用 `@citation_key`

### 3. 参考文献

在 `template/ref.bib` 中按标准 BibTeX 格式维护条目。

### 4. 意见页

打印签字用（留空）：

```typst
#opinion-page()
```

直接生成电子版：

```typst
#opinion-page(
  supervisor-comment: [同意开题。],
  school-comment: [经审核，符合开题要求。],
  result: "agree"   // "agree" / "disagree" / none
)
```

## 字体

必需字体：宋体（SimSun）、楷体（KaiTi）、黑体（SimHei）、Times New Roman 全套（times.ttf / timesbd.ttf / timesi.ttf / timesbi.ttf）。

Linux 手动安装：

```bash
mkdir -p ~/.local/share/fonts/
cp *.ttf *.ttc ~/.local/share/fonts/
fc-cache -fv
```

## 许可证与致谢

- 模板代码基于 [MIT License](LICENSE) 开源
- 本模板修改自 [zh1-z/SJTU-Bachelor-Thesis-Proposal-Typst-Template](https://github.com/zh1-z/SJTU-Bachelor-Thesis-Proposal-Typst-Template)，原作者 **zh1-z**，感谢原作者的工作
- 校徽图片版权归原学校所有，仅限在校师生学术用途
