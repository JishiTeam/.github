# 🚀 GitHub团队页面上传指导

## 📋 上传步骤

### 方法一：创建GitHub组织展示页面（推荐）

1. **登录GitHub并创建特殊仓库**
   - 访问：https://github.com/JishiTeam
   - 点击 "New repository"
   - 仓库名称输入：`.github`（这是特殊仓库，会在组织主页显示）
   - 设置为 Public
   - **不要**勾选 "Add a README file"
   - 点击 "Create repository"

2. **连接远程仓库并推送**
   ```bash
   # 添加远程仓库（在当前目录执行）
   git remote add origin https://github.com/JishiTeam/.github.git
   
   # 推送到GitHub
   git push -u origin main
   ```

3. **创建profile目录**
   ```bash
   # 创建profile目录
   mkdir profile
   
   # 将README复制到profile目录
   cp README.md profile/README.md
   
   # 提交更改
   git add profile/
   git commit -m "📁 创建组织展示页面profile目录"
   git push
   ```

### 方法二：创建普通团队仓库

1. **创建团队介绍仓库**
   - 仓库名称：`team-profile` 或 `about`
   - 设置为 Public
   - 添加描述：击势安全团队官方介绍页面

2. **连接并推送**
   ```bash
   git remote add origin https://github.com/JishiTeam/team-profile.git
   git push -u origin main
   ```

---

## 🎨 Logo上传指导

### 1. 准备Logo文件
- 推荐尺寸：400x400px 或 512x512px
- 格式：PNG（支持透明背景）
- 文件名：`logo.png`

### 2. 上传Logo到仓库
```bash
# 创建assets目录
mkdir assets

# 将logo文件复制到assets目录
cp /path/to/your/logo.png assets/logo.png

# 提交logo
git add assets/
git commit -m "📷 添加团队Logo"
git push
```

### 3. 更新README中的Logo链接
在README.md中找到这一行：
```markdown
<img src="https://raw.githubusercontent.com/JishiTeam/.github/main/profile/logo.png" alt="击势安全团队" width="200"/>
```

替换为：
```markdown
<img src="https://raw.githubusercontent.com/JishiTeam/.github/main/assets/logo.png" alt="击势安全团队" width="200"/>
```

---

## 👥 团队成员更新

### 1. 获取团队成员GitHub用户名
收集所有团队成员的GitHub用户名

### 2. 更新README.md
在团队成员部分，将以下内容：
```markdown
<img src="https://user-images.githubusercontent.com/74038190/229223263-cf2e4b07-2615-4f87-9c38-e37600f8381a.gif" width="100"/>
```

替换为：
```markdown
<img src="https://github.com/USERNAME.png" width="100"/>
```

### 示例更新：
```markdown
<td align="center" width="25%">
  <a href="https://github.com/your-username">
    <img src="https://github.com/your-username.png" width="100"/>
    <br />
    <sub><b>张三</b></sub>
  </a>
  <br />
  <sub>🎯 技术架构 | 团队管理</sub>
  <br />
  <img src="https://img.shields.io/badge/Role-Leader-FF4444?style=flat-square">
</td>
```

---

## 🛠️ 工具仓库创建

为每个工具创建独立仓库：

### 1. HackMITM
```bash
# 创建新仓库目录
mkdir ../HackMITM
cd ../HackMITM
git init
# 添加工具代码和README
```

### 2. WebFingerCat
```bash
mkdir ../WebFingerCat
cd ../WebFingerCat
git init
# 添加工具代码和README
```

### 3. DirAScan
```bash
mkdir ../DirAScan
cd ../DirAScan
git init
# 添加工具代码和README
```

### 4. FuckSpringScan
```bash
mkdir ../FuckSpringScan
cd ../FuckSpringScan
git init
# 添加工具代码和README
```

---

## 📊 GitHub设置优化

### 1. 组织设置
- 访问：https://github.com/orgs/JishiTeam/settings
- 上传组织头像（Logo）
- 设置组织描述：击势安全团队 - 以点破面，重剑无锋
- 添加网站链接

### 2. 成员可见性
- Settings → Member privileges
- 设置 "Base permissions" 为 Read
- 启用 "Allow members to see all organization members"

### 3. 仓库默认设置
- 设置默认分支为 main
- 启用 Issues 和 Discussions
- 设置代码安全策略

---

## ✅ 完成检查清单

- [ ] 创建 `.github` 仓库
- [ ] 上传 README.md 到 profile 目录
- [ ] 上传团队 Logo
- [ ] 更新团队成员信息
- [ ] 创建工具仓库
- [ ] 设置组织信息
- [ ] 测试页面显示效果

---

## 🎯 预期效果

完成后，您的GitHub组织页面将显示：
- 🔥 超酷的动态标题
- 📊 专业的统计图表  
- 🛠️ 详细的工具介绍
- 👥 团队成员展示
- 🎨 现代化的视觉设计

访问 `https://github.com/JishiTeam` 即可看到效果！

---

## 💡 小贴士

1. **Logo建议**：使用透明背景的PNG格式，尺寸建议512x512px
2. **更新频率**：建议定期更新团队成果和项目进展
3. **SEO优化**：在仓库描述中包含关键词：网络安全、渗透测试、漏洞挖掘
4. **社交媒体**：创建团队Twitter、Telegram等社交账号并在README中展示

需要帮助？随时联系！🚀 