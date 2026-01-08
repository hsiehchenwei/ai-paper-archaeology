#!/bin/bash
# PDF 圖片轉換腳本
# 需要安裝: pip3 install pdf2image pillow
# macOS 還需要: brew install poppler

SOURCE_DIR="../論文原文/arXiv-2001.08361v1_Scaling Laws for Neural Language Models/figures"
OUTPUT_DIR="images/original"

# 需要轉換的關鍵圖片
FIGURES=(
    "SimplePowerLaws"
    "EfficiencyIllustration"
    "ContributionIllustration"
    "LossvsModelDatasetSize"
    "LearningCurveFitComparisonIntro"
    "DatasetModelSizevsPerformance"
    "HyperparameterTuning"
    "PerfVsModelSizeNonEmbed"
)

for fig in "${FIGURES[@]}"; do
    echo "轉換 $fig.pdf..."
    python3 << EOF
from pdf2image import convert_from_path
import os

source = "$SOURCE_DIR/${fig}.pdf"
output = "$OUTPUT_DIR/${fig}.png"

if os.path.exists(source):
    images = convert_from_path(source, dpi=300)
    images[0].save(output, 'PNG')
    print(f"✅ {fig}.png 已生成")
else:
    print(f"❌ 找不到 {source}")
EOF
done

echo "完成！"

