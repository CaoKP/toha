---
title: "Markdown 示例"
date: 2020-06-08T08:06:25+06:00
description: Markdown 渲染示例
menu:
  sidebar:
    name: Markdown 示例
    identifier: markdown
    weight: 30
author:
  name: Jessica Jonas
  image: /images/author/jessica.png
math: true
---

这是一篇示例文章，用于测试以下内容：

- 不同的文章作者
- 目录
- Markdown 内容渲染
- 数学公式渲染
- Emoji 渲染

---
# Markdown 语法渲染

## 标题

以下 HTML `<h1>`—`<h6>` 元素代表六个级别的章节标题。`<h1>` 是最高级别，`<h6>` 是最低级别。

# H1 标题
## H2 标题
### H3 标题
#### H4 标题
##### H5 标题
###### H6 标题

## 段落

这是一段普通的文字。Markdown 让写作变得简单而优雅。你可以轻松地格式化文本，添加链接、图片和代码。

## 引用

#### 无归属引用

> 这是一段引用文字。
> **注意** 你可以在引用中使用 *Markdown 语法*。

#### 有归属引用

> 不要通过共享内存来通信，而要通过通信来共享内存。</p>
> — <cite>Rob Pike[^1]</cite>

[^1]: 以上引用摘自 Rob Pike 在 2015 年 11 月 18 日 Gopherfest 上的[演讲](https://www.youtube.com/watch?v=PAAkCSZUG1c)。

## 表格

| 姓名  | 年龄 |
| ----- | --- |
| 张三   | 27  |
| 李四 | 23  |

## 代码块

```python
def hello_world():
    print("Hello, World!")
```

## 列表

#### 有序列表

1. 第一项
2. 第二项
3. 第三项

#### 无序列表

* 列表项
* 另一个列表项
* 还有一个列表项

#### 嵌套列表

* 水果
  * 苹果
  * 橙子
  * 香蕉
* 乳制品
  * 牛奶
  * 奶酪

---

## 数学公式渲染

行内公式：\(\varphi = \dfrac{1+\sqrt5}{2}= 1.6180339887…\)

块级公式：
$$
 \varphi = 1+\frac{1} {1+\frac{1} {1+\frac{1} {1+\cdots} } } 
$$

---

## Emoji 渲染

🙈 🙉 🙊
