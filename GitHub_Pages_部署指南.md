# GitHub Pages 部署指南

这是最简单的方式，用户只需要浏览器就能访问，无需安装任何软件！

## 部署步骤

### 1. 创建 GitHub 仓库

1. 访问 https://github.com
2. 点击右上角的 "+" → "New repository"
3. 仓库名称：`christmas-tree`（或其他名称）
4. 选择 "Public"（公开）
5. 点击 "Create repository"

### 2. 上传文件

**方法一：使用 GitHub 网页上传**

1. 在仓库页面点击 "uploading an existing file"
2. 将 `ai_studio_code.html` 文件拖拽上传
3. 点击 "Commit changes"

**方法二：使用 Git 命令行**

```bash
cd "/Users/lijianan/CursorProjects/Christmas Tree"
git init
git add ai_studio_code.html
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/你的用户名/christmas-tree.git
git push -u origin main
```

### 3. 启用 GitHub Pages

1. 在仓库页面点击 "Settings"（设置）
2. 左侧菜单找到 "Pages"
3. 在 "Source" 下选择 "Deploy from a branch"
4. 选择 "main" 分支和 "/ (root)" 文件夹
5. 点击 "Save"

### 4. 访问网站

等待几分钟后，访问：
```
https://你的用户名.github.io/christmas-tree/ai_studio_code.html
```

或者，如果你将 `ai_studio_code.html` 重命名为 `index.html`，可以直接访问：
```
https://你的用户名.github.io/christmas-tree/
```

## 分享给其他人

部署完成后，直接把网址发给其他人即可：
- 无需安装任何软件
- 无需配置环境
- 打开浏览器就能用
- 支持所有设备（电脑、手机、平板）

## 注意事项

1. GitHub Pages 是免费的，但仓库必须是公开的
2. 首次部署可能需要几分钟生效
3. 如果修改了代码，需要重新提交到 GitHub，几分钟后自动更新

## 优势

✅ **最简单**：用户只需要浏览器  
✅ **免费**：GitHub Pages 完全免费  
✅ **跨平台**：Windows、Mac、Linux、手机都能用  
✅ **自动更新**：代码更新后自动部署  
✅ **无需维护**：不需要自己的服务器  

