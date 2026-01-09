#!/bin/bash

# ViT 論文圖片轉換腳本
# 將 PDF 圖片轉換為 PNG 格式

SOURCE_DIR="../論文原文/arXiv-2010.11929v2_vision_transformer/images"
OUTPUT_DIR="images/original"

# 確保輸出目錄存在
mkdir -p "$OUTPUT_DIR"

# 關鍵圖片列表
FIGURES=(
    "model_scheme"                                      # 核心架構圖
    "finetune_vs_compute"                              # 計算效率比較
    "vit-vtab"                                         # VTAB 結果
    "visualizations/20201002_attention_distance_by_depth_main"  # Attention 距離分析
    "visualizations/20201002_rgb_filter_pca"          # RGB 濾波器 PCA
    "dataset_analysis/imagenet_5shot"                  # 5-shot 學習曲線
)

echo "🔄 開始轉換 ViT 論文圖片..."
echo "=================================="

# 檢查是否有 pdf2image 或使用其他方法
if command -v pdftoppm &> /dev/null; then
    echo "使用 pdftoppm 轉換..."
    for fig in "${FIGURES[@]}"; do
        echo "📄 轉換 $fig.pdf..."
        source_file="$SOURCE_DIR/${fig}.pdf"
        output_file="$OUTPUT_DIR/$(basename ${fig}).png"
        
        if [ -f "$source_file" ]; then
            pdftoppm -png -r 300 "$source_file" "$OUTPUT_DIR/$(basename ${fig})" -singlefile
            if [ -f "$OUTPUT_DIR/$(basename ${fig})-1.png" ]; then
                mv "$OUTPUT_DIR/$(basename ${fig})-1.png" "$output_file"
            fi
            echo "✅ $(basename ${fig}).png 已生成"
        else
            echo "⚠️  找不到 $source_file"
        fi
        echo ""
    done
elif python3 -c "import pdf2image" 2>/dev/null; then
    echo "使用 pdf2image (Python) 轉換..."
    for fig in "${FIGURES[@]}"; do
        echo "📄 轉換 $fig.pdf..."
        
        python3 << EOF
from pdf2image import convert_from_path
import os

source = "$SOURCE_DIR/${fig}.pdf"
output = "$OUTPUT_DIR/$(basename ${fig}).png"

if os.path.exists(source):
    try:
        images = convert_from_path(source, dpi=300)
        images[0].save(output, 'PNG')
        print(f"✅ $(basename ${fig}).png 已生成")
    except Exception as e:
        print(f"❌ 轉換 $(basename ${fig}) 失敗: {e}")
else:
    print(f"⚠️  找不到 {source}")
EOF
        echo ""
    done
else
    echo "⚠️  未找到 PDF 轉換工具 (pdftoppm 或 pdf2image)"
    echo "請安裝其中之一："
    echo "  - pdftoppm: brew install poppler"
    echo "  - pdf2image: pip install pdf2image"
    echo ""
    echo "將直接複製現有的 PNG 檔案..."
    
    # 複製現有的 PNG 檔案
    if [ -f "$SOURCE_DIR/finetune_vs_compute.png" ]; then
        cp "$SOURCE_DIR/finetune_vs_compute.png" "$OUTPUT_DIR/"
        echo "✅ 已複製 finetune_vs_compute.png"
    fi
    if [ -f "$SOURCE_DIR/dataset_analysis/imagenet_5shot.png" ]; then
        cp "$SOURCE_DIR/dataset_analysis/imagenet_5shot.png" "$OUTPUT_DIR/"
        echo "✅ 已複製 imagenet_5shot.png"
    fi
fi

echo "=================================="
echo "✅ 完成！"
echo "📊 已轉換圖片："
ls -1 "$OUTPUT_DIR"/*.png 2>/dev/null | wc -l | xargs echo
echo "張圖片已儲存至 $OUTPUT_DIR/"
