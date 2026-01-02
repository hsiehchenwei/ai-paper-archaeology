# 📷 圖片與內容歸屬聲明

本文件詳細列出專案中使用的所有論文圖片來源及版權資訊。

## 📜 版權聲明總則

本專案是一個**非營利性教育專案**，旨在幫助學習者理解現代 NLP 技術的發展。所有使用的論文圖片均：

✅ 用於教育和學術討論目的  
✅ 明確標註原始來源和作者  
✅ 不用於任何商業用途  
✅ 符合學術合理使用原則（Fair Use）  
✅ 不聲稱擁有這些圖片的版權  

---

## 1️⃣ Transformer (2017)

### 論文資訊
- **標題**: Attention is All You Need
- **作者**: Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Łukasz Kaiser, Illia Polosukhin
- **發表**: NeurIPS 2017
- **arXiv**: [1706.03762](https://arxiv.org/abs/1706.03762)
- **版權**: © 2017 Google LLC and Google Brain

### 使用的圖片
| 檔案名稱 | 原始出處 | 用途 |
|---------|---------|------|
| `figure-1-transformer-architecture.png` | 論文 Figure 1 | 展示 Transformer 整體架構 |
| `figure-2-attention-mechanisms.png` | 論文 Figure 2 | 說明 Scaled Dot-Product Attention 和 Multi-Head Attention |

---

## 2️⃣ BERT (2018)

### 論文資訊
- **標題**: BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding
- **作者**: Jacob Devlin, Ming-Wei Chang, Kenton Lee, Kristina Toutanova
- **發表**: NAACL 2019
- **arXiv**: [1810.04805](https://arxiv.org/abs/1810.04805)
- **版權**: © 2018 Google AI Language

### 使用的圖片
| 檔案名稱 | 原始出處 | 用途 |
|---------|---------|------|
| `BERT_Overall.png` | 論文 Figure 1 | BERT 整體預訓練和微調架構 |
| `BERT_comparisons.png` | 論文 Figure 3 | BERT vs OpenAI GPT vs ELMo 架構比較 |
| `BERT_fine_tune.png` | 論文 Figure 4 | BERT 在不同任務上的微調方式 |
| `Input_Emebeddings.png` | 論文相關圖表 | BERT 的輸入表示（Token、Segment、Position） |

---

## 3️⃣ GPT-3 (2020)

### 論文資訊
- **標題**: Language Models are Few-Shot Learners
- **作者**: Tom B. Brown, Benjamin Mann, Nick Ryder, et al.
- **發表**: NeurIPS 2020
- **arXiv**: [2005.14165](https://arxiv.org/abs/2005.14165)
- **版權**: © 2020 OpenAI

### 使用的圖片
| 檔案名稱 | 原始出處 | 用途 |
|---------|---------|------|
| `in_context_learning.png` | 論文 Figure 2.1 | In-context learning 的三種形式 |
| `metalearning.png` | 論文概念圖 | Meta-learning 過程說明 |
| `LanguageModelingComputePareto.png` | 論文 Figure 1.2 | 模型大小與性能的 Pareto 曲線 |
| `training_curves.png` | 論文 Figure 3.1 | 訓練過程的損失曲線 |
| `aggregate_performance.png` | 論文 Figure 3.2 | 各種任務的綜合性能表現 |
| `eval_strategies.png` | 論文圖表 | Zero-shot, One-shot, Few-shot 評估策略 |
| `generation_plot.png` | 論文圖表 | 文本生成品質分析 |
| `contamination_graph.png` | 論文 Figure 4.2 | 訓練數據污染分析 |
| `superglue_analysis.png` | 論文表格相關 | SuperGLUE 基準測試結果 |

---

## 4️⃣ InstructGPT (2022)

### 論文資訊
- **標題**: Training language models to follow instructions with human feedback
- **作者**: Long Ouyang, Jeff Wu, Xu Jiang, et al.
- **發表**: NeurIPS 2022
- **arXiv**: [2203.02155](https://arxiv.org/abs/2203.02155)
- **版權**: © 2022 OpenAI

### 使用的圖片（original/ 資料夾）
| 檔案名稱 | 原始出處 | 用途 |
|---------|---------|------|
| `InstructGPT_Diagram3.1.pdf` | 論文 Figure 1 | InstructGPT 的 RLHF 三階段訓練流程 |
| `main-graph-no-facets.pdf` | 論文 Figure 2 | InstructGPT vs GPT-3 人類偏好比較 |
| `academic-fewshot.pdf` | 論文 Figure 4 | Few-shot 學術任務表現 |
| `academic-zeroshot.pdf` | 論文 Figure 5 | Zero-shot 學術任務表現 |
| `academic-evals-v-episodes.pdf` | 論文附錄 | 訓練集數與性能關係 |
| `academic-evals-v-kl.pdf` | 論文附錄 | KL 散度與性能權衡 |
| `academic-evals-v-pretrain-loss.pdf` | 論文附錄 | 預訓練損失分析 |
| `human-evals-v-lrs.pdf` | 論文附錄 | 學習率對人類評估的影響 |
| `flan-t0-lik.pdf` | 論文附錄 | FLAN-T0 模型比較 |
| `flan-t0-tuning.pdf` | 論文附錄 | FLAN-T0 微調結果 |
| `labelserver_likert.png` | 論文數據 | Likert 量表標註介面 |
| `labelserver_ranking.png` | 論文數據 | 排序標註介面 |
| `lik-v-init.pdf` | 論文附錄 | 初始化影響分析 |
| `likert-facetted.pdf` | 論文圖表 | 分面 Likert 評分 |
| `likert-v-kl-rew-coef.pdf` | 論文附錄 | KL 獎勵係數分析 |
| `long-bias.pdf` | 論文 Figure 8 | 長度偏差分析 |
| `long-toxicity.pdf` | 論文 Figure 9 | 毒性內容分析 |
| `long-toxicity-extra.pdf` | 論文附錄 | 額外毒性分析 |
| `long-toxicity-grid.pdf` | 論文附錄 | 毒性網格分析 |
| `metadata.pdf` | 論文圖表 | 元數據分析 |
| `metadata-with-model-size.pdf` | 論文圖表 | 模型大小與元數據關係 |
| `pref-facetted.pdf` | 論文圖表 | 分面偏好評分 |
| `toxicity-winrate.pdf` | 論文附錄 | 毒性控制勝率 |
| `tqa-twobars-human.pdf` | 論文附錄 | TruthfulQA 人類評估 |

**註**: `generated/` 資料夾目前為空，未使用任何生成圖片。

---

## 🔍 合理使用依據（Fair Use Rationale）

根據美國版權法第 107 條（以及各國類似的合理使用條款），本專案使用這些圖片符合以下標準：

### 1. **使用目的與性質**
- ✅ 用於**教育和非營利目的**
- ✅ 屬於**轉換性使用**（添加教學解釋和中文翻譯）
- ✅ 不與原始論文競爭

### 2. **受版權保護作品的性質**
- ✅ 論文發表在 **arXiv** 等開放平台
- ✅ 作者鼓勵學術討論和引用
- ✅ 用於科學研究推廣

### 3. **使用的數量與實質性**
- ✅ 僅使用**必要的圖表**來說明概念
- ✅ 沒有使用整篇論文
- ✅ 圖片使用有合理限度

### 4. **對原作品市場價值的影響**
- ✅ **不影響原論文的引用和傳播**
- ✅ 反而可能**增加原論文的可見度**
- ✅ 不進行任何商業利用

---

## 📧 聯繫方式

如果您是版權持有人，對本專案使用圖片有任何疑慮或建議，請隨時聯繫：

- **GitHub Issues**: [提交問題](https://github.com/hsiehchenwei/ai-paper-archaeology/issues)
- **Email**: pushy.chordal_0s@icloud.com

我們承諾會在收到通知後 **48 小時內**回應並採取適當措施。

---

## 🙏 致謝

衷心感謝以下研究團隊的開創性工作：

- **Google Research & Google Brain Team** - Transformer 和 BERT
- **OpenAI Research Team** - GPT-3 和 InstructGPT

沒有他們的貢獻，現代 NLP 技術不會有今天的成就。

---

## 📅 最後更新

- **日期**: 2026-01-02
- **版本**: 1.0

如有任何更新或變更，本文件將持續維護。

