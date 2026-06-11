#!/bin/bash
set -e

# ============================================
# Design Skills — Antigravity 全局安装脚本
# ============================================
# 用法: bash install.sh
# 作用: 将本仓库的 skills 安装到 Antigravity 全局环境
# ============================================

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
ANTIGRAVITY_SKILLS_DIR="${ANTIGRAVITY_SKILLS_DIR:-$HOME/.antigravity/skills}"

echo "============================================"
echo "  Design Skills — Antigravity Installer"
echo "============================================"
echo ""

# Step 1: 检测 Antigravity 环境
echo "=== Step 1: 检测 Antigravity 环境 ==="
if [ -d "$HOME/.antigravity" ]; then
  echo "✅ 检测到 Antigravity: $HOME/.antigravity"
else
  echo "⚠️ 未检测到 Antigravity 目录，创建中..."
  mkdir -p "$HOME/.antigravity"
fi

# Step 2: 创建 skills 目录
echo ""
echo "=== Step 2: 创建全局 skills 目录 ==="
mkdir -p "$ANTIGRAVITY_SKILLS_DIR"
echo "✅ 目录: $ANTIGRAVITY_SKILLS_DIR"

# Step 3: 安装 7 个 skills
echo ""
echo "=== Step 3: 安装 Skills ==="

install_skill() {
  local src_dir="$1"
  local skill_name="$2"
  local target_dir="$ANTIGRAVITY_SKILLS_DIR/$skill_name"
  
  echo ""
  echo "📦 安装: $skill_name"
  
  # 清理旧版本
  if [ -d "$target_dir" ]; then
    echo "  清理旧版本..."
    rm -rf "$target_dir"
  fi
  
  # 复制 skill
  cp -r "$src_dir" "$target_dir"
  
  # 验证 SKILL.md
  if [ -f "$target_dir/SKILL.md" ]; then
    echo "  ✅ 已安装 ($target_dir)"
  else
    echo "  ⚠️ 警告: $skill_name/SKILL.md 缺失"
  fi
}

# 安装每个 skill
install_skill "$REPO_DIR/skills/awesome-design-md" "awesome-design-md"
install_skill "$REPO_DIR/skills/gsap-skills" "gsap-skills"
install_skill "$REPO_DIR/skills/impeccable" "impeccable"
install_skill "$REPO_DIR/skills/mcp-server-guide" "mcp-server-guide"
install_skill "$REPO_DIR/skills/superpowers" "superpowers"
install_skill "$REPO_DIR/skills/taste-skill" "taste-skill"
install_skill "$REPO_DIR/skills/ui-ux-pro-max-skill" "ui-ux-pro-max-skill"

# Step 4: 写入全局配置
echo ""
echo "=== Step 4: 写入全局配置 ==="

cat > "$HOME/.antigravity/SKILL.md" << 'EOF'
# Design Skills — 全局配置

> 本配置由 Design Skills 安装脚本自动生成。
> 请勿手动修改，如需更新请重新运行 install.sh。

## 已安装的 Skills（7 个）

| # | Skill | 调用时机 | 触发条件 |
|---|-------|---------|---------|
| 1 | **superpowers** | 🎯 总指挥 — 所有任务的第一入口 | 任何设计/开发任务 |
| 2 | **mcp-server-guide** | Figma 操作时 | 用户提及 Figma、设计稿、组件 |
| 3 | **impeccable** | 设计审核时 | 用户提及审核、质量、检查 |
| 4 | **ui-ux-pro-max-skill** | 生成设计系统时 | 用户提及设计系统、风格、主题 |
| 5 | **awesome-design-md** | 需要设计参考时 | 用户提及参考、类似、风格迁移 |
| 6 | **gsap-skills** | 动画实现时 | 用户提及动画、动效、timeline |
| 7 | **taste-skill** | 设计品质提升时 | 用户提及品质、提升、美化 |

## ⚠️ 关键规则

### 规则 1: superpowers 主导
**所有任务必须通过 superpowers 入口。**
- ❌ 禁止直接调用 figma-use、impeccable 等其他 skill
- ✅ 必须通过 superpowers → 分析 → 调度 → 执行

### 规则 2: 任务生命周期
```
用户请求
    ↓
superpowers/brainstorming — 需求探索
    ↓
superpowers/writing-plans — 编写计划
    ↓
调度具体 skill 执行任务
    ↓
superpowers/verification-before-completion — 验证
    ↓
完成
```

### 规则 3: 技能调用矩阵

| 用户意图 | superpowers 行为 | 调用 Skill |
|---------|-----------------|-----------|
| "帮我设计一个页面" | 分析 → 规划 → 调度 | ui-ux-pro-max-skill |
| "这个设计太丑了" | 分析 → 调度审核 | taste-skill + impeccable |
| "帮我做动画" | 分析 → 调度 | gsap-skills |
| "参考 Airbnb 风格" | 分析 → 调度 | awesome-design-md |
| "同步到 Figma" | 分析 → 调度 | mcp-server-guide |
| "审核设计质量" | 分析 → 调度 | impeccable |

EOF

echo "✅ 全局配置写入: $HOME/.antigravity/SKILL.md"

# Step 5: 写入每个 skill 的调用规范
echo ""
echo "=== Step 5: 写入调用规范 ==="

cat > "$ANTIGRAVITY_SKILLS_DIR/superpowers/ANTIGRAVITY.md" << 'EOF'
# superpowers — Antigravity 调用规范

## 角色
**总指挥（Orchestrator）** — 所有设计/开发任务的唯一入口。

## 何时调用
- ✅ 用户有任何设计/开发需求时
- ✅ 需要协调多个 skills 时
- ✅ 任务开始前需要规划时
- ✅ 任务完成后需要验证时

## 如何调用

### 标准调用流程

```
1. superpowers/brainstorming
   → 理解用户需求
   → 分析上下文

2. superpowers/writing-plans
   → 拆分任务为子任务
   → 确定每个子任务调用哪个 skill

3. 执行子任务（调用对应 skill）

4. superpowers/verification-before-completion
   → 验证结果质量
   → 确认满足用户需求
```

### 子技能调用规则

| 任务类型 | 调用的 Skill |
|---------|------------|
| Figma 设计/同步 | mcp-server-guide |
| 设计质量审核 | impeccable |
| 生成设计系统 | ui-ux-pro-max-skill |
| 设计参考/风格迁移 | awesome-design-md |
| 动画实现 | gsap-skills |
| 设计品质提升 | taste-skill |

## 禁止行为
- ❌ 跳过 planning 直接执行
- ❌ 不验证就完成
- ❌ 不通过 superpowers 直接调用其他 skills

## 返回格式
```json
{
  "task": "任务描述",
  "plan": ["步骤1", "步骤2", "步骤3"],
  "skills_invoked": ["skill-name"],
  "result": "结果摘要",
  "verified": true
}
```
EOF

echo "✅ superpowers/ANTIGRAVITY.md 写入完成"

# Step 6: 验证
echo ""
echo "=== Step 6: 验证安装 ==="

echo ""
echo "已安装的 skills:"
for d in "$ANTIGRAVITY_SKILLS_DIR"/*; do
  if [ -d "$d" ]; then
    name=$(basename "$d")
    if [ -f "$d/SKILL.md" ]; then
      echo "  ✅ $name"
    else
      echo "  ⚠️  $name (SKILL.md 缺失)"
    fi
  fi
done

echo ""
echo "============================================"
echo "✅ 安装完成！"
echo ""
echo "📁 安装路径: $ANTIGRAVITY_SKILLS_DIR"
echo "📝 全局配置: $HOME/.antigravity/SKILL.md"
echo ""
echo "🚀 重启 Antigravity 后即可使用"
echo "============================================"
