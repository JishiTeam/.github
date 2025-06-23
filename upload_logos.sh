#!/bin/bash

echo "🎨 击势安全团队 Logo 上传工具"
echo "=================================="

# 创建logos目录（如果不存在）
mkdir -p assets/logos

echo "📂 请将您的Logo文件重命名并放置到当前目录下："
echo ""
echo "需要的文件："
echo "1. logo-blue-square.png     - 蓝色方形Logo（主要使用）"
echo "2. logo-blue-circle.png     - 蓝色圆形Logo"
echo "3. logo-orange-white.png    - 橙色Logo" 
echo "4. logo-banner-blue.png     - 蓝色横幅Logo"
echo "5. logo-banner-black.png    - 黑色横幅Logo"
echo "6. logo-banner-white.png    - 白色横幅Logo"
echo "7. logo-banner-orange.png   - 橙色横幅Logo"
echo ""

# 检查并复制Logo文件
logos=("logo-blue-square.png" "logo-blue-circle.png" "logo-orange-white.png" "logo-banner-blue.png" "logo-banner-black.png" "logo-banner-white.png" "logo-banner-orange.png")

echo "🔍 检查Logo文件..."
found_logos=()

for logo in "${logos[@]}"; do
    if [ -f "$logo" ]; then
        echo "✅ 找到: $logo"
        cp "$logo" "assets/logos/"
        found_logos+=("$logo")
    else
        echo "❌ 缺少: $logo"
    fi
done

if [ ${#found_logos[@]} -gt 0 ]; then
    echo ""
    echo "📦 上传到Git..."
    git add assets/logos/
    git commit -m "📷 添加击势安全团队官方Logo文件

✨ 包含${#found_logos[@]}个Logo版本:
$(printf "- %s\n" "${found_logos[@]}")

🎨 支持不同使用场景的Logo需求"
    
    echo "🚀 推送到GitHub..."
    git push
    
    echo ""
    echo "✅ Logo上传完成！"
    echo "🔗 GitHub链接: https://raw.githubusercontent.com/JishiTeam/.github/main/assets/logos/"
else
    echo ""
    echo "⚠️  未找到任何Logo文件！"
    echo "请先将Logo文件重命名并放置到当前目录下。"
fi

echo ""
echo "🎯 接下来运行 './update_readme.sh' 来更新README中的Logo链接" 