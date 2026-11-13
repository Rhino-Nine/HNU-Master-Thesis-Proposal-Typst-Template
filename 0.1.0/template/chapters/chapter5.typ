#import "../../lib.typ": *

// ====================================================
//            --- 开题报告结果页（意见汇总页） ---
// ====================================================
// 标题作为一级标题写在下方，样式和分页由模板统一负责；
// 表格框线、竖排标签、签名行、勾选框等都在 lib.typ 的 opinion-page 里。
//
// 可调参数：
//   supervisor-comment (content): 指导教师审阅意见
//   review-comment     (content): 评审小组意见（可留空 []）
//   school-comment     (content): 学院审核意见
//   group-result       (str|none): 评审小组勾选，"agree" | "revised" | "disagree"
//   result             (str|none): 学院审核勾选，"agree" | "revised" | "disagree"
//   time               (content):  开题时间，默认留空下划线
//   place              (content):  开题地点，默认留空
//   experts            (array):    评审专家列表，每项为 (姓名, 职称, 工作单位)
//                                  如 (([张三], [教授], [海南大学]), ...)
//                                  留空 () 则自动给 5 行空白签名行
// ====================================================

// ===== 七、开题报告结果 =====（评审意见页：参数用法见下方注释）

= 开题报告结果

#opinion-page(
  supervisor-comment: [
    该课题难度适中，工作量饱满，进度安排合理，同意开题。
  ],
  review-comment: [
    经评审小组充分讨论，一致认为该课题达到开题要求。
  ],
  school-comment: [
    同意该生通过开题。
  ],
  group-result: "agree",
  result: "agree",
  time: [2026 年 11 月 15 日],
  place: [会议室],
  // experts: (([张三], [教授], [海南大学]), ([李四], [副教授], [三亚学院])),
)
