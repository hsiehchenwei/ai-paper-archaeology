#!/bin/bash

# CLIP 論文圖片轉換腳本
# 將 PDF 圖片轉換為 PNG 格式

SOURCE_DIR="../論文原文/arXiv-2103.00020v1_CLIP"
OUTPUT_DIR="images/original"

# 確保輸出目錄存在
mkdir -p "$OUTPUT_DIR"

# 關鍵圖片列表
FIGURES=(
    "main-diagrams"                                  # 主要架構圖
    "efficiency-ablation"                            # 效率對比
    "zero-shot-transfer"                             # 零樣本遷移結果
    "prompt-engineering"                             # Prompt 工程
    "pseudocode"                                     # 偽代碼
    "final_zero_shot_prediction_vis"                 # 零樣本預測可視化
    "linear-probes"                                  # 線性探測
    "linear-probe-per-dataset"                       # 每個資料集的線性探測
    "robustness-datasets"                            # 魯棒性資料集
    "zs-clip-vs-fewshot"                            # 零樣本 vs 少樣本
    "zs-clip-data-efficiency"                        # 數據效率
    "overlap"                                        # 資料重疊分析
    "clip_human_difficulty"                          # 人類難度對比
    "zs-clip-vs-imagenet-robustness-plot"           # ImageNet 魯棒性對比
    "fs-clip-vs-imagenet-robustness-plot"           # Few-shot CLIP 魯棒性
    "robustness-interventions"                       # 魯棒性介入
    "women_career"                                   # 偏見分析案例
)

echo "🔄 開始轉換 CLIP 論文圖片..."
echo "=================================="

for fig in "${FIGURES[@]}"; do
    echo "📄 轉換 $fig.pdf..."
    
    python3 << EOF
from pdf2image import convert_from_path
import os

source = "$SOURCE_DIR/${fig}.pdf"
output = "$OUTPUT_DIR/${fig}.png"

if os.path.exists(source):
    try:
        images = convert_from_path(source, dpi=300)
        images[0].save(output, 'PNG')
        print(f"✅ {fig}.png 已生成")
    except Exception as e:
        print(f"❌ 轉換 {fig} 失敗: {e}")
else:
    print(f"⚠️  找不到 {source}")
EOF
    
    echo ""
done

echo "=================================="
echo "✅ 完成！"
echo "📊 已轉換圖片："
ls -1 "$OUTPUT_DIR"/*.png | wc -l
echo "張圖片已儲存至 $OUTPUT_DIR/"

