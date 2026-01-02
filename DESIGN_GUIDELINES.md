# AI Paper Archaeology - 設計規範 (Design Guidelines)

> **核心理念：將艱澀的論文考古，轉化為一場極致的視覺饗宴。**
>
> 本站不只是一個技術部落格，更是一本「美感教科書」。我們追求時尚、極簡的雜誌風格，讓讀者在閱讀 AI 發展史時，享受如同翻閱高級設計雜誌般的體驗。

## 1. 核心美學 (Core Aesthetics)

### 1.1 極簡時尚 (Minimalist Chic)

- **Less is More**: 去除所有不必要的裝飾線條與邊框。
- **呼吸感 (Breathing Space)**: 大量的留白（White Space）是設計的一部分，不要害怕空白。
- **精緻細節**: 質感來自於細微處——柔和的陰影 (Soft Shadows)、細膩的圓角 (Smooth Corners)、玻璃擬態 (Glassmorphism)。

### 1.2 雜誌級排版 (Editorial Layout)

- **圖文並茂**: 每一段核心概念都應搭配一張高品質的視覺解釋圖。
- **層級分明**: 標題 (H1-H3) 與內文應有明顯的對比（大小、粗細），引導視線流動。
- **節奏感**: 透過不同的區塊佈局（左圖右文、全寬圖片、引用區塊）創造閱讀的節奏變化。

---

## 2. 視覺識別 (Visual Identity)

### 2.1 色彩系統 (Color System)

我們採用 **Apple 風格** 的現代配色：以黑白為基底，搭配高質感的漸層與功能色。

- **基底色 (Base)**:

  - Background: `#FFFFFF` (純白) / `#F5F5F7` (淺灰背景)
  - Text Main: `#1D1D1F` (深灰黑，非純黑)
  - Text Secondary: `#86868B` (中性灰)

- **品牌強調色 (Brand Accents)**:

  - **Primary Blue**: `#0071E3` (科技、連結、重點)
  - **Evolution Purple**: `#7D58E8` (演進、GPT 系列)
  - **Warm Accent**: `#FF9F0A` (警告、注意、InstructGPT)

- **背景氛圍 (Atmosphere)**:
  - 使用 **Mesh Gradient (網格漸層)** 作為 Hero Section 或強調區塊的背景，營造流動與現代感。
  - 範例：`linear-gradient(135deg, #fff 0%, #a5b4fc 100%)`

### 2.2 排版 (Typography)

- **字體**: 系統預設無襯線字體 (`-apple-system`, `BlinkMacSystemFont`, `Inter`, `Roboto`)，追求螢幕閱讀的最佳清晰度。
- **行距 (Line Height)**:
  - 內文: `1.6` ~ `1.8` (寬鬆，易讀)
  - 標題: `1.1` ~ `1.3` (緊湊，有力)

---

## 3. 圖片生成與視覺規範 (Visual & Image Guidelines)

**這是一個「圖解」網站。圖片不是配角，是主角。**

### 3.1 圖片風格關鍵詞 (Style Prompts)

在生成圖片時，請始終包含以下風格描述：

> **Style Keywords**: `3d render`, `minimalist`, `high quality`, `clean background`, `soft studio lighting`, `apple design style`, `glassmorphism`, `frosted glass`, `matte finish`, `pastel colors`, `abstract geometry`.
> **Icon Specific**: `isometric view`, `floating`, `soft shadows`, `transparent background`.

### 3.2 圖像類型規範

#### A. 概念解釋圖 (Conceptual Diagrams)

- **目的**: 解釋抽象的技術概念（如 Attention, Embedding）。
- **手法**: 將抽象概念**具象化**為幾何圖形、積木、流體或物理模型。
- **禁忌**: 避免生成充滿雜亂文字的圖表、避免寫實但無意義的電路板圖。
- **範例**: 用「不同顏色的光束匯聚」來表現 Attention 機制。

#### B. 架構視覺化 (Architecture Visualization)

- **目的**: 展示模型結構（如 96 層堆疊）。
- **手法**: 使用簡潔的 3D 堆疊塊 (Stacked Blocks)，層次分明，配色和諧。
- **風格**: 類似建築模型或樂高積木的質感。

#### C. 生活類比圖 (Analogy Illustrations)

- **目的**: 配合文章中的「生活化類比」。
- **手法**: 高質感的 3D 插畫風格。
- **範例**: 講到「維度=畫筆顏色」時，生成一張排列整齊、色彩豐富的高級色鉛筆特寫。

### 3.3 圖片一致性 (Consistency)

- 所有圖片應保持 **「乾淨的背景」** (Clean Background)，通常為純白或極淡的灰色，以便完美融入網頁背景。
- 避免圖片邊緣有明顯的裁切感，可使用圓角或去背處理。

---

## 4. UI 元件規範 (UI Component System)

### 4.1 Bento Grid 卡片

- **用途**: 首頁專題、文章列表。
- **樣式**:
  - 大圓角 (`border-radius: 24px`)。
  - 微弱的邊框 (`border: 1px solid rgba(0,0,0,0.04)`)。
  - 懸浮時輕微上浮並加深陰影 (`transform: translateY(-6px)`).
  - 左側色條 (`border-left: 5px solid color`) 用於區分文章類型。

### 4.2 膠囊按鈕 (Pill Buttons)

- **用途**: Tab 切換、次要操作。
- **樣式**: 完全圓角 (`border-radius: 99px`)，背景透明或淺灰，選中時變為純白並帶有陰影。

### 4.3 玻璃擬態 (Glassmorphism)

- **用途**: 導航列、浮動控制項。
- **樣式**: `backdrop-filter: blur(20px)`, `background: rgba(255, 255, 255, 0.8)`.

---

## 5. 新內容製作檢核表 (Checklist for New Content)

在新增文章或頁面時，請自我檢核：

- [ ] **雜誌感**: 標題是否夠吸睛？排版是否舒適？
- [ ] **圖文並茂**: 是否每隔 2-3 個段落就有一張視覺圖？
- [ ] **白話文**: 是否將技術術語轉化為通俗的比喻？
- [ ] **極簡風**: 是否移除了不必要的裝飾？圖片背景是否乾淨？
- [ ] **一致性**: CSS class 是否使用了 `global.css` 與 `paper-reading.css` 中的變數？

---

> **Design for Understanding.**
> 我們的目標是降低 AI 知識的門檻，而「美」是最好的引路人。
