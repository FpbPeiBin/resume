#import "template.typ": *
#import "lib.typ": *
#show: chicv
#import "@preview/kouhu:0.1.0": kouhu
#include "header.typ"

== 教育经历

#cventry(
  tl: [广东工业大学 _软件工程学士学位_],
  tr: [2021.09 - 2025.06 （预计）],
  bl: [#v(-1.5em)],
)[
  - *绩点*：*3.29* / 5 #h(1em) *考研*初试成绩：*364* / ???
  - *标准化英语成绩*: （四级: ??? / ??? #h(1em) 六级: ??? / ???）
  #v(-0.3em)
]

== 开源项目

#cventry(
  tl: [#gh_repo("https://github.com/")[项目名称]],
  tl_comments: [],
  tr: [#lorem(3)],
)[
  - #kouhu(length: 30)
    - #kouhu(offset: 10, length: 35)
    - #kouhu(offset: 3, length: 35)
]

== 竞赛经历

#cventry(
  tl: [\<竞赛名称\>],
  tr: [2023.02],
)[
  - Awarded the *???* (*Top ???%* nationwide) in \<year\> *Mathematical Contest in Modeling* (aka CUMCM).
]

== 专业技能

- *编程技能*:
  - 不限于特定语言，*熟练掌握 Python*，熟悉 Javascript 和 C。
  - *工具*: 熟悉 Linux 环境，熟练使用 Git，能够在开发中熟练使用 AI。
