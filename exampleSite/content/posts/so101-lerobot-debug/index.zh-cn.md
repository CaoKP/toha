---
title: "SO101 机械臂 + LeRobot 框架调试踩坑记录"
date: 2025-06-11T14:30:00+08:00
description: 记录 SO101 机械臂与 LeRobot 框架集成调试过程中的问题与解决方案
menu:
  sidebar:
    name: SO101+LeRobot踩坑
    identifier: so101-lerobot-debug
    weight: 15
tags: ["机械臂", "LeRobot", "SO101", "机器人", "调试"]
categories: ["技术笔记"]
---

## 前言

最近在使用 **SO101 机械臂** 配合 **LeRobot 框架** 进行机器人学习项目开发，过程中遇到了不少坑。本文记录这些问题及解决方案，希望能帮助到有同样需求的朋友。

---

## 环境配置

### 硬件清单
- SO101 六轴机械臂
- 边缘算力终端（实际目前使用的是一台3060的windows笔记本）
- 摄像头（暂未使用）

### 软件环境
- Python 3.10，注意：LeRobot 框架要求 Python 3.10或者3.11，3.13等其他版本不支持！
- PyTorch 2.0+  由Conda管理
- LeRobot 框架 来自seeed的Github仓库
- 操作系统：Ubuntu 22.04 / Windows 11双系统PC，初步调试过程中实际使用的是Windows 11，目前校准电机的过程完全OK

---

## 踩坑记录

### 1. conda 环境管理注意事项

首先，调试电机之前，先创建一个单独的conda环境，命名为lerobot310，然后激活该环境。
windows下：`conda activate lerobot310`
使用`pip install -e ".[feetech]"`安装feetech库，该库是LeRobot框架的一个子库，用于与SO101机械臂进行通信。
检查pytorch/vision/cuda是否都完成安装


### 2. 电机编号不是实际安装的编号

#### 问题描述
校准电机min和max角度时，wrist_roll和wrist_flex（4号和5号电机装反）

#### 解决方案
注释掉src里面的so_follower里面的其他1-3和6电机的定义，重新单独校准编号时仅调试这两个即可。

### 3. 相机标定问题
尚未安装相机，暂时调试没遇到其他问题了

## 参考资源

- [LeRobot 官方文档](https://github.com/huggingface/lerobot)
- [\[SO101 机械臂安装教程\]](https://wiki.seeedstudio.com/cn/lerobot_so100m_new)
- Hugging Face 机器人学习社区

---

## 总结

调试机器人系统是一个需要耐心的过程，建议：

1. **分步验证**：先确保机械臂单独控制正常，再集成相机，最后接入 LeRobot
2. **日志记录**：开启详细日志，方便定位问题
3. **社区求助**：遇到问题可以先搜 GitHub Issues，或向社区提问

如有新的坑会持续更新本文。
kyriecao2025@163.com，有问题与我联系。

---

*最后更新：2025-06-11*
