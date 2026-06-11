---
title: "Shortcodes 示例"
date: 2020-06-08T08:06:25+06:00
description: Shortcodes 示例
menu:
  sidebar:
    name: Shortcodes 示例
    identifier: shortcodes
    weight: 40
hero: boat.jpg
mermaid: true
---

这是一篇示例文章，用于测试各种短代码功能。

## 警告框

{{< alert type="success" >}}
这是一个成功类型的警告框。
{{< /alert >}}

{{< alert type="danger" >}}
这是一个危险类型的警告框。
{{< /alert >}}

{{< alert type="warning" >}}
这是一个警告类型的警告框。
{{< /alert >}}

{{< alert type="info" >}}
这是一个信息类型的警告框。
{{< /alert >}}

## 图片

#### 普通图片

{{< img src="/posts/shortcodes/boat.jpg" title="海上的一艘船" >}}

{{< vs 3 >}}

#### 居中对齐的图片

{{< img src="/posts/shortcodes/boat.jpg" height="400" width="600" align="center" title="海上的一艘船" >}}

## 分栏

{{< split 6 6>}}

##### 左侧栏

这是一段左侧栏的文字内容。

---

##### 右侧栏

这是一段右侧栏的文字内容。

{{< /split >}}

## 垂直间距

这是第一行。
{{< vs 4>}}
这是第二行。与上一行之间有 `4rem` 的垂直间距。

## 视频

{{< video src="/videos/sample.mp4" >}}

## Mermaid 图表

**流程图：**

{{< mermaid align="left" >}}
graph LR;
    A[硬边] -->|链接文字| B(圆边)
    B --> C{决策}
    C -->|一| D[结果一]
    C -->|二| E[结果二]
{{< /mermaid >}}

**时序图：**

{{< mermaid >}}
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: 你好 John，你好吗？
    loop 健康检查
        John->>John: 与疑病症抗争
    end
    John-->>Alice: 很好！
    John->>Bob: 你呢？
    Bob-->>John: 很好！
{{< /mermaid >}}

## 嵌入 PDF

{{< embed-pdf src="/files/resume.pdf" >}}
