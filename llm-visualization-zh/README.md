# LLM 視覺化教學（繁體中文版）

本目錄包含從 [bbycroft.net/llm](https://bbycroft.net/llm) 翻譯而來的繁體中文教學內容。

## 📚 目錄結構

```
llm-visualization-zh/
├── index.html                  # 主索引頁面（含完整架構圖）
├── chapters/                   # 各章節內容
│   ├── 01-embedding.html       # 第一章：Embedding（含架構位置說明）
│   ├── 02-attention.html       # 第二章：Self-Attention（即將推出）
│   ├── 03-multihead.html       # 第三章：Multi-Head Attention（即將推出）
│   └── ...                     # 更多章節
├── CHAPTER_TEMPLATE.md         # 章節模板（供創建新章節使用）
└── README.md                   # 本文件

../images/                      # 教學圖片（位於專案根目錄）
├── llm_architecture_full_20260105210724.png        # 完整架構圖
├── embedding_chapter_focus_20260105210902.png      # 第一章特寫圖
└── nanogpt_token_lookup_20260105204504.png         # Token 查找過程圖
```

**注意**：圖片統一存放在專案根目錄的 `images/` 資料夾中，避免重複和不一致。

## 🎯 教學目標

通過 nano-gpt（僅 85,000 個參數）這個精簡模型，完整理解 GPT 大型語言模型的運作原理。

### 模型規格
- **參數總數**：85,584
- **詞彙表大小**：3 (A, B, C)
- **序列長度**：6 tokens
- **向量維度**：48

### 任務目標
輸入：`C B A B B C`  
輸出：`A B B B C C`（按字母順序排序）

## 📖 章節列表

### ✅ 已完成
1. **第一章：Embedding - 從整數到向量**
   - Token Embedding 查找過程
   - Position Embedding 機制
   - 向量相加生成 Input Embedding
   - 矩陣維度解析 [T × C]

### 🚧 即將推出
2. **第二章：Self-Attention - 注意力機制**
3. **第三章：Multi-Head Attention - 多頭注意力**
4. **第四章：Feed Forward Network - 前饋神經網絡**
5. **第五章：Layer Norm & Residual - 層歸一化與殘差連接**
6. **第六章：Output & Prediction - 輸出與預測**

## 🌐 原始來源

- **原網站**：[bbycroft.net/llm](https://bbycroft.net/llm)
- **特色**：精美的 3D 互動視覺化，可即時操作和觀察模型運作
- **建議**：搭配原網站的互動視覺化一起學習效果最佳

## 📝 翻譯說明

### 翻譯原則
- 完整保留原文的技術準確性
- 使用繁體中文慣用的技術術語
- 增加額外的解釋和範例，幫助中文讀者理解
- 保持原網站的視覺風格和教學流程

### 術語對照
- **Token** → 標記 / Token
- **Embedding** → 嵌入 / Embedding
- **Attention** → 注意力
- **Weight** → 權重
- **Parameter** → 參數
- **Vocabulary** → 詞彙表
- **Sequence** → 序列

## 🎨 設計特色

### 視覺元素
- 深色英雄區（Hero Section）呼應 AI 主題
- 金色 + 矩陣綠配色，象徵數據處理
- 程式碼區塊使用深色背景，模擬 IDE 環境
- 步驟卡片清晰標示流程

### 🗺️ 架構導航系統（新增）
- **完整架構圖**：在首頁展示 nano-gpt 的完整架構流程
- **顏色編碼**：每個模組用不同顏色標示（粉紅=Embedding、黃色=Layer Norm、米色=Attention、藍色=Feed Forward、紫色=Linear、綠色=Softmax）
- **章節定位**：每章開頭都會顯示該章節在架構中的位置
- **架構特寫**：每章都有該部分的放大特寫圖，用金色高亮標示重點
- **架構回顧**：每章結尾都會回顧完整架構，說明剛完成的部分

### 互動提示
- 文中會標註原網站的互動功能位置
- 鼓勵讀者前往原網站體驗 3D 視覺化
- 靜態圖片輔助理解關鍵概念

## 🚀 本地瀏覽

直接在瀏覽器中開啟 `index.html` 即可瀏覽。

```bash
# 使用 Python 啟動本地伺服器（可選）
cd llm-visualization-zh
python3 -m http.server 8000

# 然後在瀏覽器中開啟
# http://localhost:8000
```

## 📊 內容規劃

### 第一階段（已完成）
- [x] 創建目錄結構
- [x] 建立主索引頁面
- [x] 添加完整架構圖和顏色說明
- [x] 完成第一章：Embedding
- [x] 為第一章添加架構位置說明
- [x] 生成章節特寫圖和完整架構圖
- [x] 創建章節模板（CHAPTER_TEMPLATE.md）

### 第二階段（進行中）
- [ ] 第二章：Self-Attention
- [ ] 第三章：Multi-Head Attention
- [ ] 添加更多視覺化圖片

### 第三階段（規劃中）
- [ ] 完成所有章節
- [ ] 添加章節間的導航連結
- [ ] 創建互動式測驗
- [ ] 提供完整的程式碼範例

## 💡 學習建議

1. **先閱讀索引頁**：了解整體架構和流程
2. **按章節順序學習**：每章都建立在前一章的基礎上
3. **搭配原網站**：使用原網站的 3D 視覺化加深理解
4. **動手實作**：閱讀完每章後，嘗試用 Python 實作相關概念

## 📧 回饋與貢獻

如果您發現任何錯誤或有改進建議，歡迎提出 issue 或 pull request。

---

**翻譯與編排**：2026  
**原始內容**：[bbycroft.net/llm](https://bbycroft.net/llm)  
**授權**：僅供教育用途

