#import "../lib.typ": *

// ============================================================
//  封面与全局信息（只改这里；正文按章节写在 chapters/ 目录）
// ============================================================
#show: body => project(

  // 论文题目：太长可用 \n 手动换行
  cover-title:    "你的很长很长很很长很长很长的\n很厉害的论文题目",
  // 正文首页题目留空则沿用封面题目
  thesis-title:   "",

  // 学生信息
  name:           "你的名字",
  student-id:     "512345678901",
  major:          "你的专业",
  school:         "你的学院",
  supervisor:     "你的导师",
  enrollment:     "入学年月",

  // 研究生类别："academic-doctor" | "professional-doctor" | "academic-master" | "professional-master"
  degree-type:    "master-professional",

  // 正文首页信息表
  subject-source: "纵向项目",
  subject-nature: "应用研究",
  subject-id:     "2026-HNU-001",

  body
)

// ============================================================
//  正文章节（每章一个文件；章节内直接用正文语法，无需 import）
// ============================================================
#include "./chapters/chapter1.typ"  // 一、课题研究目的和意义
#include "./chapters/chapter2.typ"  // 二、课题研究内容
#include "./chapters/chapter3.typ"  // 三、研究方法和研究思路
#include "./chapters/chapter4.typ"  // 四、预期研究结果

// ============================================================
//  参考文献列表（需要 ref.bib；只列出正文引用过的条目）
// ============================================================
= 参考文献：

#[
  #set par(first-line-indent: 0pt)
  #bibliography(
    "./ref.bib",
    title: none,
    style: "gb-7714-2015-numeric",
  )
]

#include "./chapters/chapter5.typ"  // 五、计划进度安排
