# 要求モデル定義書（導出・充足・検証方法）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-RQM-SYS-001 |
| 表題 | 要求モデル定義書（導出・充足・検証方法） |
| 版・日付 | Rev. C／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図90 要求の導出・充足 行列 |

## 1. 目的

要求書19件（L1 の SSD-REQ-SYS-001 と L2 の18件）の要求を SysML v2 の要求（requirement）にし、L1 から L2 への導出（derivation）と、割付先の機能行・IF を担う部品・インタフェースによる充足（satisfy）を、構造モデル（SSD-BLK-SYS-001）の要素につないで示す。要求書の表のトレースを、モデルの関係として辿れるようにすることが目的である。全体の様子は 図90 要求の導出・充足 行列 に示す。

## 2. 書き方

要求書の欄と SysML v2 の要素の対応を示す。同じ部品に割り付けた機能行が複数あるときは、satisfy を1つにまとめ、doc に割付先の ID を並べた。

| 要求書の欄 | SysML v2 の要素 |
|---|---|
| 要求書1件 | package 1つ（短い名前は文書番号） |
| 要求の行 | requirement（短い名前は要求の ID）。要求文は doc、値・フェーズ・要求書は metadata RequirementInfo |
| 要求の主体 | subject s : Parts::Part（どの部品・インタフェースでも充足できる主体） |
| L2 の「上位」 | #derivation の connection（元＝L1 の要求、導出＝L2 の要求） |
| 割付先の F-ID | satisfy … by その機能行を持つ機能説明書の部品（構造モデルの context からの道筋） |
| 割付先の IF-ID | satisfy … by 構造モデルのその IF の interface・connection |
| 検証の欄・V&V の状態 | metadata VerificationIntent（方法は標準ライブラリの VerificationMethodKind：A＝analyze、T＝test、I＝inspect、D＝demo） |

## 3. 要求の一覧

要求 212件（L1 18件・L2 194件）を示す。充足の欄は、その要求を充足する部品・インタフェースの数（satisfy の数）である。

| ID | 要求書 | 層 | 上位 | 充足 | 検証 | 状態 |
|---|---|---|---|---|---|---|
| REQ-SYS-01 | SSD-REQ-SYS-001 | L1 | （L2 10件へ導出） | 7 | I（検査） | 根拠あり |
| REQ-SYS-02 | SSD-REQ-SYS-001 | L1 | （L2 17件へ導出） | 4 | D（実証） | 根拠あり |
| REQ-SYS-03 | SSD-REQ-SYS-001 | L1 | （L2 9件へ導出） | 2 | I（検査） | 根拠なし |
| REQ-SYS-04 | SSD-REQ-SYS-001 | L1 | （L2 13件へ導出） | 4 | D（実証） | 根拠あり |
| REQ-SYS-05 | SSD-REQ-SYS-001 | L1 | （L2 14件へ導出） | 2 | D（実証） | 根拠なし |
| REQ-SYS-06 | SSD-REQ-SYS-001 | L1 | （L2 10件へ導出） | 2 | A（解析） | 根拠あり |
| REQ-SYS-07 | SSD-REQ-SYS-001 | L1 | （L2 14件へ導出） | 3 | T（試験） | 根拠あり |
| REQ-SYS-08 | SSD-REQ-SYS-001 | L1 | （L2 5件へ導出） | 3 | A（解析） | 根拠あり |
| REQ-SYS-09 | SSD-REQ-SYS-001 | L1 | （L2 2件へ導出） | 3 | A（解析） | 根拠なし |
| REQ-SYS-10 | SSD-REQ-SYS-001 | L1 | （L2 86件へ導出） | 5 | A（解析） | 根拠あり |
| REQ-SYS-11 | SSD-REQ-SYS-001 | L1 | （L2 0件へ導出） | 2 | A（解析） | 根拠あり |
| REQ-SYS-12 | SSD-REQ-SYS-001 | L1 | （L2 0件へ導出） | 1 | D（実証） | 根拠あり |
| REQ-SYS-13 | SSD-REQ-SYS-001 | L1 | （L2 4件へ導出） | 2 | A（解析） | 根拠あり |
| REQ-SYS-14 | SSD-REQ-SYS-001 | L1 | （L2 24件へ導出） | 3 | A（解析） | 根拠あり |
| REQ-SYS-15 | SSD-REQ-SYS-001 | L1 | （L2 13件へ導出） | 4 | A（解析） | 根拠あり |
| REQ-SYS-16 | SSD-REQ-SYS-001 | L1 | （L2 16件へ導出） | 4 | D（実証） | 根拠あり |
| REQ-SYS-17 | SSD-REQ-SYS-001 | L1 | （L2 2件へ導出） | 2 | A（解析） | 根拠あり |
| REQ-SYS-18 | SSD-REQ-SYS-001 | L1 | （L2 2件へ導出） | 1 | T（試験） | 根拠あり |
| REQ-EPS-01 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 4 | I（検査） | 根拠あり |
| REQ-EPS-02 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 3 | D（実証） | 根拠あり |
| REQ-EPS-03 | SSD-REQ-EPS-001 | L2 | REQ-SYS-10 | 3 | D（実証） | 根拠あり |
| REQ-EPS-04 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16・REQ-SYS-10 | 2 | T（試験） | 根拠あり |
| REQ-EPS-05 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 1 | T（試験） | 根拠あり |
| REQ-EPS-06 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 2 | T（試験） | 根拠あり |
| REQ-EPS-07 | SSD-REQ-EPS-001 | L2 | REQ-SYS-10 | 2 | I（検査） | 根拠あり |
| REQ-EPS-08 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 2 | T（試験） | 根拠あり |
| REQ-EPS-09 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16・REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-EPS-10 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 2 | T（試験） | 根拠あり |
| REQ-EPS-11 | SSD-REQ-EPS-001 | L2 | REQ-SYS-07 | 3 | D（実証） | 根拠あり |
| REQ-EPS-12 | SSD-REQ-EPS-001 | L2 | REQ-SYS-06・REQ-SYS-13 | 1 | A（解析） | 根拠あり |
| REQ-EPS-13 | SSD-REQ-EPS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-EPS-14 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 2 | D（実証） | 根拠なし |
| REQ-EPS-15 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 3 | T（試験） | 根拠あり |
| REQ-EPS-16 | SSD-REQ-EPS-001 | L2 | REQ-SYS-07 | 3 | T（試験） | 根拠あり |
| REQ-EPS-17 | SSD-REQ-EPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-EPS-18 | SSD-REQ-EPS-001 | L2 | REQ-SYS-14 | 3 | A（解析） | 根拠あり |
| REQ-EPS-19 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 2 | A（解析） | 根拠あり |
| REQ-EPS-20 | SSD-REQ-EPS-001 | L2 | REQ-SYS-04 | 1 | I（検査） | 根拠あり |
| REQ-EPS-21 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 1 | A（解析） | 根拠あり |
| REQ-EPS-22 | SSD-REQ-EPS-001 | L2 | REQ-SYS-16 | 2 | I（検査） | 根拠あり |
| REQ-ECLSS-01 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-07 | 4 | D（実証） | 根拠あり |
| REQ-ECLSS-02 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-05・REQ-SYS-07 | 1 | T（試験） | 根拠あり |
| REQ-ECLSS-03 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-05・REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-ECLSS-04 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-07 | 3 | D（実証） | 根拠あり |
| REQ-ECLSS-05 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-06・REQ-SYS-07 | 3 | D（実証） | 根拠あり |
| REQ-ECLSS-06 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-06・REQ-SYS-07 | 2 | D（実証） | 根拠あり |
| REQ-ECLSS-07 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-10 | 3 | D（実証） | 根拠あり |
| REQ-ECLSS-08 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-10 | 5 | D（実証） | 根拠あり |
| REQ-ECLSS-09 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-14・REQ-SYS-15 | 2 | A（解析） | 根拠あり |
| REQ-ECLSS-10 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-06 | 3 | D（実証） | 根拠あり |
| REQ-ECLSS-11 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-05 | 1 | T（試験） | 根拠あり |
| REQ-ECLSS-12 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-14 | 2 | A（解析） | 根拠なし |
| REQ-ECLSS-13 | SSD-REQ-ECLSS-001 | L2 | REQ-SYS-05・REQ-SYS-06 | 1 | D（実証） | 根拠あり |
| REQ-GNC-01 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-GNC-02 | SSD-REQ-GNC-001 | L2 | REQ-SYS-14 | 2 | D（実証） | 根拠あり |
| REQ-GNC-03 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-GNC-04 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-GNC-05 | SSD-REQ-GNC-001 | L2 | REQ-SYS-02・REQ-SYS-15 | 1 | D（実証） | 根拠あり |
| REQ-GNC-06 | SSD-REQ-GNC-001 | L2 | REQ-SYS-02・REQ-SYS-08 | 1 | D（実証） | 根拠あり |
| REQ-GNC-07 | SSD-REQ-GNC-001 | L2 | REQ-SYS-08・REQ-SYS-09 | 1 | D（実証） | 根拠あり |
| REQ-GNC-08 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-GNC-09 | SSD-REQ-GNC-001 | L2 | REQ-SYS-02 | 1 | T（試験） | 根拠あり |
| REQ-GNC-10 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-GNC-11 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10・REQ-SYS-02 | 2 | A（解析） | 根拠あり |
| REQ-GNC-12 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-GNC-13 | SSD-REQ-GNC-001 | L2 | REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-GNC-14 | SSD-REQ-GNC-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-DPS-01 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-DPS-02 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-DPS-03 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10・REQ-SYS-16 | 1 | A（解析） | 根拠あり |
| REQ-DPS-04 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 2 | A（解析） | 根拠あり |
| REQ-DPS-05 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-DPS-06 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-DPS-07 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 3 | D（実証） | 根拠あり |
| REQ-DPS-08 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10・REQ-SYS-02 | 1 | D（実証） | 根拠あり |
| REQ-DPS-09 | SSD-REQ-DPS-001 | L2 | REQ-SYS-01・REQ-SYS-15 | 4 | D（実証） | 根拠あり |
| REQ-DPS-10 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-DPS-11 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-DPS-12 | SSD-REQ-DPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-DPS-13 | SSD-REQ-DPS-001 | L2 | REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-MPS-01 | SSD-REQ-MPS-001 | L2 | REQ-SYS-02・REQ-SYS-08 | 1 | D（実証） | 根拠あり |
| REQ-MPS-02 | SSD-REQ-MPS-001 | L2 | REQ-SYS-04 | 1 | D（実証） | 根拠あり |
| REQ-MPS-03 | SSD-REQ-MPS-001 | L2 | REQ-SYS-08 | 1 | D（実証） | 根拠あり |
| REQ-MPS-04 | SSD-REQ-MPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-MPS-05 | SSD-REQ-MPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-MPS-06 | SSD-REQ-MPS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-MPS-07 | SSD-REQ-MPS-001 | L2 | REQ-SYS-01 | 2 | D（実証） | 根拠あり |
| REQ-MPS-08 | SSD-REQ-MPS-001 | L2 | REQ-SYS-02 | 2 | D（実証） | 根拠あり |
| REQ-MPS-09 | SSD-REQ-MPS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-MPS-10 | SSD-REQ-MPS-001 | L2 | REQ-SYS-17 | 1 | D（実証） | 根拠あり |
| REQ-MPS-11 | SSD-REQ-MPS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-MPS-12 | SSD-REQ-MPS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-MPS-13 | SSD-REQ-MPS-001 | L2 | REQ-SYS-15 | 1 | A（解析） | 根拠あり |
| REQ-OMS-01 | SSD-REQ-OMS-001 | L2 | REQ-SYS-02・REQ-SYS-04 | 1 | D（実証） | 根拠あり |
| REQ-OMS-02 | SSD-REQ-OMS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-OMS-03 | SSD-REQ-OMS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-OMS-04 | SSD-REQ-OMS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-OMS-05 | SSD-REQ-OMS-001 | L2 | REQ-SYS-02 | 1 | A（解析） | 根拠あり |
| REQ-OMS-06 | SSD-REQ-OMS-001 | L2 | REQ-SYS-02 | 1 | D（実証） | 根拠あり |
| REQ-OMS-07 | SSD-REQ-OMS-001 | L2 | REQ-SYS-10・REQ-SYS-15 | 1 | D（実証） | 根拠あり |
| REQ-OMS-08 | SSD-REQ-OMS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-OMS-09 | SSD-REQ-OMS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-OMS-10 | SSD-REQ-OMS-001 | L2 | REQ-SYS-10・REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-OMS-11 | SSD-REQ-OMS-001 | L2 | REQ-SYS-13・REQ-SYS-17 | 1 | A（解析） | 根拠あり |
| REQ-RCS-01 | SSD-REQ-RCS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-RCS-02 | SSD-REQ-RCS-001 | L2 | REQ-SYS-15 | 1 | D（実証） | 根拠あり |
| REQ-RCS-03 | SSD-REQ-RCS-001 | L2 | REQ-SYS-14 | 1 | D（実証） | 根拠あり |
| REQ-RCS-04 | SSD-REQ-RCS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-RCS-05 | SSD-REQ-RCS-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-RCS-06 | SSD-REQ-RCS-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-RCS-07 | SSD-REQ-RCS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-RCS-08 | SSD-REQ-RCS-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-RCS-09 | SSD-REQ-RCS-001 | L2 | REQ-SYS-13・REQ-SYS-15 | 1 | A（解析） | 根拠あり |
| REQ-RCS-10 | SSD-REQ-RCS-001 | L2 | REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-APU-01 | SSD-REQ-APU-001 | L2 | REQ-SYS-10・REQ-SYS-15 | 1 | D（実証） | 根拠あり |
| REQ-APU-02 | SSD-REQ-APU-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-APU-03 | SSD-REQ-APU-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-APU-04 | SSD-REQ-APU-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-APU-05 | SSD-REQ-APU-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-APU-06 | SSD-REQ-APU-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-APU-07 | SSD-REQ-APU-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-APU-08 | SSD-REQ-APU-001 | L2 | REQ-SYS-10・REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-APU-09 | SSD-REQ-APU-001 | L2 | REQ-SYS-13・REQ-SYS-15 | 1 | A（解析） | 根拠あり |
| REQ-CT-01 | SSD-REQ-CT-001 | L2 | REQ-SYS-10・REQ-SYS-14 | 1 | D（実証） | 根拠あり |
| REQ-CT-02 | SSD-REQ-CT-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-CT-03 | SSD-REQ-CT-001 | L2 | REQ-SYS-02 | 1 | D（実証） | 根拠あり |
| REQ-CT-04 | SSD-REQ-CT-001 | L2 | REQ-SYS-03 | 2 | D（実証） | 根拠あり |
| REQ-CT-05 | SSD-REQ-CT-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-CT-06 | SSD-REQ-CT-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-CT-07 | SSD-REQ-CT-001 | L2 | REQ-SYS-03 | 2 | D（実証） | 根拠あり |
| REQ-CT-08 | SSD-REQ-CT-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-CT-09 | SSD-REQ-CT-001 | L2 | REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-TPS-01 | SSD-REQ-TPS-001 | L2 | REQ-SYS-04 | 2 | A（解析） | 根拠あり |
| REQ-TPS-02 | SSD-REQ-TPS-001 | L2 | REQ-SYS-04 | 1 | I（検査） | 根拠あり |
| REQ-TPS-03 | SSD-REQ-TPS-001 | L2 | REQ-SYS-04 | 2 | A（解析） | 根拠なし |
| REQ-TPS-04 | SSD-REQ-TPS-001 | L2 | REQ-SYS-10 | 2 | A（解析） | 根拠あり |
| REQ-TPS-05 | SSD-REQ-TPS-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-TPS-06 | SSD-REQ-TPS-001 | L2 | REQ-SYS-04 | 2 | D（実証） | 根拠あり |
| REQ-TPS-07 | SSD-REQ-TPS-001 | L2 | REQ-SYS-06 | 1 | D（実証） | 根拠あり |
| REQ-CW-01 | SSD-REQ-CW-001 | L2 | REQ-SYS-14 | 1 | T（試験） | 根拠あり |
| REQ-CW-02 | SSD-REQ-CW-001 | L2 | REQ-SYS-10 | 2 | T（試験） | 根拠あり |
| REQ-CW-03 | SSD-REQ-CW-001 | L2 | REQ-SYS-10・REQ-SYS-14 | 1 | T（試験） | 根拠あり |
| REQ-CW-04 | SSD-REQ-CW-001 | L2 | REQ-SYS-14 | 1 | T（試験） | 根拠あり |
| REQ-CW-05 | SSD-REQ-CW-001 | L2 | REQ-SYS-14 | 1 | I（検査） | 根拠あり |
| REQ-CW-06 | SSD-REQ-CW-001 | L2 | REQ-SYS-05・REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-CW-07 | SSD-REQ-CW-001 | L2 | REQ-SYS-10 | 1 | I（検査） | 根拠あり |
| REQ-CW-08 | SSD-REQ-CW-001 | L2 | REQ-SYS-14 | 1 | D（実証） | 根拠あり |
| REQ-CW-09 | SSD-REQ-CW-001 | L2 | REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-CW-10 | SSD-REQ-CW-001 | L2 | REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-CREW-01 | SSD-REQ-CREW-001 | L2 | REQ-SYS-05・REQ-SYS-06 | 1 | I（検査） | 根拠あり |
| REQ-CREW-02 | SSD-REQ-CREW-001 | L2 | REQ-SYS-06 | 2 | D（実証） | 根拠あり |
| REQ-CREW-03 | SSD-REQ-CREW-001 | L2 | REQ-SYS-06・REQ-SYS-07 | 2 | A（解析） | 根拠あり |
| REQ-CREW-04 | SSD-REQ-CREW-001 | L2 | REQ-SYS-05 | 1 | I（検査） | 根拠あり |
| REQ-CREW-05 | SSD-REQ-CREW-001 | L2 | REQ-SYS-05 | 2 | D（実証） | 根拠あり |
| REQ-CREW-06 | SSD-REQ-CREW-001 | L2 | REQ-SYS-05 | 2 | A（解析） | 根拠あり |
| REQ-CREW-07 | SSD-REQ-CREW-001 | L2 | REQ-SYS-03・REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-CREW-08 | SSD-REQ-CREW-001 | L2 | REQ-SYS-05 | 1 | A（解析） | 根拠あり |
| REQ-CREW-09 | SSD-REQ-CREW-001 | L2 | REQ-SYS-05・REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-CREW-10 | SSD-REQ-CREW-001 | L2 | REQ-SYS-10・REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-EVA-01 | SSD-REQ-EVA-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-EVA-02 | SSD-REQ-EVA-001 | L2 | REQ-SYS-07 | 2 | D（実証） | 根拠あり |
| REQ-EVA-03 | SSD-REQ-EVA-001 | L2 | REQ-SYS-07 | 1 | D（実証） | 根拠あり |
| REQ-EVA-04 | SSD-REQ-EVA-001 | L2 | REQ-SYS-05 | 1 | D（実証） | 根拠あり |
| REQ-EVA-05 | SSD-REQ-EVA-001 | L2 | REQ-SYS-06 | 1 | D（実証） | 根拠あり |
| REQ-EVA-06 | SSD-REQ-EVA-001 | L2 | REQ-SYS-10・REQ-SYS-15 | 4 | A（解析） | 根拠あり |
| REQ-EVA-07 | SSD-REQ-EVA-001 | L2 | REQ-SYS-07 | 2 | A（解析） | 根拠あり |
| REQ-EVA-08 | SSD-REQ-EVA-001 | L2 | REQ-SYS-05 | 2 | D（実証） | 根拠あり |
| REQ-PLS-01 | SSD-REQ-PLS-001 | L2 | REQ-SYS-02・REQ-SYS-03 | 1 | D（実証） | 根拠あり |
| REQ-PLS-02 | SSD-REQ-PLS-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-PLS-03 | SSD-REQ-PLS-001 | L2 | REQ-SYS-10・REQ-SYS-14 | 1 | T（試験） | 根拠あり |
| REQ-PLS-04 | SSD-REQ-PLS-001 | L2 | REQ-SYS-03 | 1 | D（実証） | 根拠あり |
| REQ-PLS-05 | SSD-REQ-PLS-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-PLS-06 | SSD-REQ-PLS-001 | L2 | REQ-SYS-03 | 1 | D（実証） | 根拠あり |
| REQ-PLS-07 | SSD-REQ-PLS-001 | L2 | REQ-SYS-02・REQ-SYS-07 | 1 | D（実証） | 根拠あり |
| REQ-PLS-08 | SSD-REQ-PLS-001 | L2 | REQ-SYS-03 | 1 | D（実証） | 根拠あり |
| REQ-PLS-09 | SSD-REQ-PLS-001 | L2 | REQ-SYS-10・REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-MECH-01 | SSD-REQ-MECH-001 | L2 | REQ-SYS-10 | 2 | D（実証） | 根拠あり |
| REQ-MECH-02 | SSD-REQ-MECH-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-MECH-03 | SSD-REQ-MECH-001 | L2 | REQ-SYS-03 | 1 | D（実証） | 根拠あり |
| REQ-MECH-04 | SSD-REQ-MECH-001 | L2 | REQ-SYS-10 | 1 | A（解析） | 根拠あり |
| REQ-MECH-05 | SSD-REQ-MECH-001 | L2 | REQ-SYS-04 | 2 | D（実証） | 根拠あり |
| REQ-MECH-06 | SSD-REQ-MECH-001 | L2 | REQ-SYS-04 | 2 | D（実証） | 根拠あり |
| REQ-MECH-07 | SSD-REQ-MECH-001 | L2 | REQ-SYS-10・REQ-SYS-18 | 1 | D（実証） | 根拠あり |
| REQ-MECH-08 | SSD-REQ-MECH-001 | L2 | REQ-SYS-10 | 1 | D（実証） | 根拠あり |
| REQ-MECH-09 | SSD-REQ-MECH-001 | L2 | REQ-SYS-18 | 1 | D（実証） | 根拠あり |
| REQ-MECH-10 | SSD-REQ-MECH-001 | L2 | REQ-SYS-14 | 1 | A（解析） | 根拠あり |
| REQ-STR-01 | SSD-REQ-STR-001 | L2 | REQ-SYS-01・REQ-SYS-04 | 1 | I（検査） | 根拠あり |
| REQ-STR-02 | SSD-REQ-STR-001 | L2 | REQ-SYS-01 | 1 | I（検査） | 根拠あり |
| REQ-STR-03 | SSD-REQ-STR-001 | L2 | REQ-SYS-05・REQ-SYS-07 | 1 | T（試験） | 根拠あり |
| REQ-STR-04 | SSD-REQ-STR-001 | L2 | REQ-SYS-07・REQ-SYS-14 | 2 | A（解析） | 根拠あり |
| REQ-STR-05 | SSD-REQ-STR-001 | L2 | REQ-SYS-03 | 1 | A（解析） | 根拠あり |
| REQ-STR-06 | SSD-REQ-STR-001 | L2 | REQ-SYS-01 | 1 | A（解析） | 根拠あり |
| REQ-STR-07 | SSD-REQ-STR-001 | L2 | REQ-SYS-09 | 1 | A（解析） | 根拠あり |
| REQ-STR-08 | SSD-REQ-STR-001 | L2 | REQ-SYS-04 | 1 | A（解析） | 根拠あり |
| REQ-ET-01 | SSD-REQ-ET-001 | L2 | REQ-SYS-01・REQ-SYS-02 | 2 | D（実証） | 根拠あり |
| REQ-ET-02 | SSD-REQ-ET-001 | L2 | REQ-SYS-02 | 2 | T（試験） | 根拠あり |
| REQ-ET-03 | SSD-REQ-ET-001 | L2 | REQ-SYS-02 | 1 | A（解析） | 根拠あり |
| REQ-ET-04 | SSD-REQ-ET-001 | L2 | REQ-SYS-01 | 2 | A（解析） | 根拠あり |
| REQ-ET-05 | SSD-REQ-ET-001 | L2 | REQ-SYS-01・REQ-SYS-16 | 1 | T（試験） | 根拠あり |
| REQ-ET-06 | SSD-REQ-ET-001 | L2 | REQ-SYS-10・REQ-SYS-15 | 2 | A（解析） | 根拠あり |
| REQ-ET-07 | SSD-REQ-ET-001 | L2 | REQ-SYS-04 | 1 | I（検査） | 根拠あり |
| REQ-ET-08 | SSD-REQ-ET-001 | L2 | REQ-SYS-15 | 1 | A（解析） | 根拠あり |
| REQ-ET-09 | SSD-REQ-ET-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-SRB-01 | SSD-REQ-SRB-001 | L2 | REQ-SYS-01・REQ-SYS-02 | 1 | T（試験） | 根拠あり |
| REQ-SRB-02 | SSD-REQ-SRB-001 | L2 | REQ-SYS-08 | 1 | A（解析） | 根拠あり |
| REQ-SRB-03 | SSD-REQ-SRB-001 | L2 | REQ-SYS-01 | 1 | D（実証） | 根拠あり |
| REQ-SRB-04 | SSD-REQ-SRB-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-SRB-05 | SSD-REQ-SRB-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-SRB-06 | SSD-REQ-SRB-001 | L2 | REQ-SYS-10・REQ-SYS-16 | 1 | A（解析） | 根拠あり |
| REQ-SRB-07 | SSD-REQ-SRB-001 | L2 | REQ-SYS-10 | 1 | T（試験） | 根拠あり |
| REQ-SRB-08 | SSD-REQ-SRB-001 | L2 | REQ-SYS-15 | 1 | D（実証） | 根拠あり |
| REQ-SRB-09 | SSD-REQ-SRB-001 | L2 | REQ-SYS-04 | 1 | D（実証） | 根拠あり |

## 4. 導出（L1 → L2）

L1 の要求ごとに、導出した L2 の要求の数を系ごとに示す（導出 241件）。行列は 図90 要求の導出・充足 行列 に示す。

| L1 | L2 の数 | 系ごとの数 |
|---|---|---|
| REQ-SYS-01 | 10 | DPS 1・MPS 1・STR 3・ET 3・SRB 2 |
| REQ-SYS-02 | 17 | GNC 4・DPS 1・MPS 2・OMS 3・CT 1・PLS 2・ET 3・SRB 1 |
| REQ-SYS-03 | 9 | CT 2・CREW 1・PLS 4・MECH 1・STR 1 |
| REQ-SYS-04 | 13 | EPS 1・MPS 1・OMS 1・TPS 4・MECH 2・STR 2・ET 1・SRB 1 |
| REQ-SYS-05 | 14 | ECLSS 4・CW 1・CREW 6・EVA 2・STR 1 |
| REQ-SYS-06 | 10 | EPS 1・ECLSS 4・TPS 1・CREW 3・EVA 1 |
| REQ-SYS-07 | 14 | EPS 2・ECLSS 5・CREW 1・EVA 3・PLS 1・STR 2 |
| REQ-SYS-08 | 5 | GNC 2・MPS 2・SRB 1 |
| REQ-SYS-09 | 2 | GNC 1・STR 1 |
| REQ-SYS-10 | 86 | EPS 6・ECLSS 3・GNC 8・DPS 11・MPS 6・OMS 7・RCS 6・APU 8・CT 5・TPS 2・CW 4・CREW 3・EVA 2・PLS 4・MECH 5・ET 2・SRB 4 |
| REQ-SYS-11 | 0 | — |
| REQ-SYS-12 | 0 | — |
| REQ-SYS-13 | 4 | EPS 1・OMS 1・RCS 1・APU 1 |
| REQ-SYS-14 | 24 | EPS 1・ECLSS 2・GNC 2・DPS 1・OMS 1・RCS 2・APU 1・CT 2・CW 7・CREW 1・PLS 2・MECH 1・STR 1 |
| REQ-SYS-15 | 13 | ECLSS 1・GNC 1・DPS 1・MPS 1・OMS 1・RCS 2・APU 2・EVA 1・ET 2・SRB 1 |
| REQ-SYS-16 | 16 | EPS 13・DPS 1・ET 1・SRB 1 |
| REQ-SYS-17 | 2 | MPS 1・OMS 1 |
| REQ-SYS-18 | 2 | MECH 2 |

## 5. 充足（割付先 → 部品）

要求書の割付先 1023件（機能行 974件・IF 49件）を、充足する部品・インタフェース 334件にまとめて示す。部品の欄は構造モデルの最上位の部品 context からの道筋である。

| 要求 | 割付先 | 部品（SysML の道筋） |
|---|---|---|
| REQ-SYS-01 | F-ORB-01 | context.sts.orb |
| REQ-SYS-01 | F-ET-01 | context.sts.et |
| REQ-SYS-01 | F-SRB-01 | context.sts.srb |
| REQ-SYS-01 | F-MPS-02 | context.sts.orb.mps |
| REQ-SYS-01 | IF-SYS-01 | context.sts.IF_SYS_01 |
| REQ-SYS-01 | IF-SYS-02 | context.sts.IF_SYS_02 |
| REQ-SYS-01 | IF-SYS-07 | context.sts.IF_SYS_07 |
| REQ-SYS-02 | F-MPS-01 | context.sts.orb.mps |
| REQ-SYS-02 | F-SRB-01 | context.sts.srb |
| REQ-SYS-02 | F-OMS-01 | context.sts.orb.oms |
| REQ-SYS-02 | F-GNC-05 | context.sts.orb.gnc |
| REQ-SYS-03 | F-STR-05 | context.sts.orb.str |
| REQ-SYS-03 | F-MECH-10 | context.sts.orb.mech |
| REQ-SYS-04 | F-SRB-03 | context.sts.srb |
| REQ-SYS-04 | F-TPS-01 | context.sts.orb.tps |
| REQ-SYS-04 | F-MPS-02 | context.sts.orb.mps |
| REQ-SYS-04 | F-EPS-FCP-01 | context.sts.orb.eps.fcp |
| REQ-SYS-05 | F-CREW-01 | context.sts.orb.crew |
| REQ-SYS-05 | F-ECLSS-02 | context.sts.orb.eclss |
| REQ-SYS-06 | F-EPS-PRSD-04 | context.sts.orb.eps.prsd |
| REQ-SYS-06 | F-ECLSS-04 | context.sts.orb.eclss |
| REQ-SYS-07 | F-ECLSS-02・F-ECLSS-03 | context.sts.orb.eclss |
| REQ-SYS-07 | F-STR-04 | context.sts.orb.str |
| REQ-SYS-07 | IF-ORB-09 | context.sts.orb.IF_ORB_09 |
| REQ-SYS-08 | F-MPS-01 | context.sts.orb.mps |
| REQ-SYS-08 | F-GNC-05 | context.sts.orb.gnc |
| REQ-SYS-08 | F-STR-01 | context.sts.orb.str |
| REQ-SYS-09 | F-TPS-01 | context.sts.orb.tps |
| REQ-SYS-09 | F-STR-01 | context.sts.orb.str |
| REQ-SYS-09 | F-APU-02 | context.sts.orb.apu |
| REQ-SYS-10 | F-ORB-03 | context.sts.orb |
| REQ-SYS-10 | F-DPS-03 | context.sts.orb.dps |
| REQ-SYS-10 | F-APU-01 | context.sts.orb.apu |
| REQ-SYS-10 | F-EPS-04 | context.sts.orb.eps |
| REQ-SYS-10 | F-GNC-01 | context.sts.orb.gnc |
| REQ-SYS-11 | F-ORB-03 | context.sts.orb |
| REQ-SYS-11 | F-CW-02 | context.sts.orb.cw |
| REQ-SYS-12 | F-ORB-03 | context.sts.orb |
| REQ-SYS-13 | F-EPS-PRSD-04 | context.sts.orb.eps.prsd |
| REQ-SYS-13 | F-ECLSS-04 | context.sts.orb.eclss |
| REQ-SYS-14 | F-ORB-03 | context.sts.orb |
| REQ-SYS-14 | F-CW-01 | context.sts.orb.cw |
| REQ-SYS-14 | F-DPS-03 | context.sts.orb.dps |
| REQ-SYS-15 | F-GNC-05 | context.sts.orb.gnc |
| REQ-SYS-15 | F-OMS-01 | context.sts.orb.oms |
| REQ-SYS-15 | F-MPS-01 | context.sts.orb.mps |
| REQ-SYS-15 | F-DPS-03 | context.sts.orb.dps |
| REQ-SYS-16 | F-EPS-01・F-EPS-03 | context.sts.orb.eps |
| REQ-SYS-16 | IF-ORB-14 | context.sts.orb.IF_ORB_14 |
| REQ-SYS-16 | IF-ORB-27 | context.sts.IF_ORB_27 |
| REQ-SYS-16 | IF-ORB-28 | context.sts.IF_ORB_28 |
| REQ-SYS-17 | F-MECH-03 | context.sts.orb.mech |
| REQ-SYS-17 | F-STR-01 | context.sts.orb.str |
| REQ-SYS-18 | F-MECH-03 | context.sts.orb.mech |
| REQ-EPS-01 | F-EPS-01 | context.sts.orb.eps |
| REQ-EPS-01 | IF-ORB-14 | context.sts.orb.IF_ORB_14 |
| REQ-EPS-01 | IF-ORB-27 | context.sts.IF_ORB_27 |
| REQ-EPS-01 | IF-ORB-28 | context.sts.IF_ORB_28 |
| REQ-EPS-02 | F-EPS-03 | context.sts.orb.eps |
| REQ-EPS-02 | F-EPS-FCP-08 | context.sts.orb.eps.fcp |
| REQ-EPS-02 | IF-ORB-31 | context.IF_ORB_31 |
| REQ-EPS-03 | F-EPS-04 | context.sts.orb.eps |
| REQ-EPS-03 | F-EPS-FCP-02 | context.sts.orb.eps.fcp |
| REQ-EPS-03 | F-EPS-DC-01・F-EPS-DC-05 | context.sts.orb.eps.dc |
| REQ-EPS-04 | F-EPS-05 | context.sts.orb.eps |
| REQ-EPS-04 | F-EPS-FCP-07 | context.sts.orb.eps.fcp |
| REQ-EPS-05 | F-EPS-FCP-03・F-EPS-FCP-07 | context.sts.orb.eps.fcp |
| REQ-EPS-06 | F-EPS-DC-01・F-EPS-DC-05 | context.sts.orb.eps.dc |
| REQ-EPS-06 | IF-ORB-41 | context.sts.orb.IF_ORB_41 |
| REQ-EPS-07 | F-EPS-DC-02 | context.sts.orb.eps.dc |
| REQ-EPS-07 | F-CW-07 | context.sts.orb.cw |
| REQ-EPS-08 | F-EPS-AC-01・F-EPS-AC-02・F-EPS-AC-03 | context.sts.orb.eps.ac |
| REQ-EPS-08 | IF-EPS-12 | context.sts.orb.IF_EPS_12 |
| REQ-EPS-09 | F-EPS-AC-04 | context.sts.orb.eps.ac |
| REQ-EPS-09 | IF-ORB-06 | context.sts.orb.IF_ORB_06 |
| REQ-EPS-10 | F-EPS-02 | context.sts.orb.eps |
| REQ-EPS-10 | F-EPS-PRSD-01・F-EPS-PRSD-02・F-EPS-PRSD-03 | context.sts.orb.eps.prsd |
| REQ-EPS-11 | F-EPS-02 | context.sts.orb.eps |
| REQ-EPS-11 | IF-ORB-09 | context.sts.orb.IF_ORB_09 |
| REQ-EPS-11 | IF-ECL-01 | context.sts.orb.IF_ECL_01 |
| REQ-EPS-12 | F-EPS-PRSD-04・F-EPS-PRSD-05・F-EPS-PRSD-08 | context.sts.orb.eps.prsd |
| REQ-EPS-13 | F-EPS-PRSD-07 | context.sts.orb.eps.prsd |
| REQ-EPS-14 | F-EPS-FCP-06 | context.sts.orb.eps.fcp |
| REQ-EPS-14 | IF-ORB-20 | context.sts.orb.IF_ORB_20 |
| REQ-EPS-15 | F-EPS-FCP-04・F-EPS-FCP-05 | context.sts.orb.eps.fcp |
| REQ-EPS-15 | IF-ORB-11 | context.sts.orb.IF_ORB_11 |
| REQ-EPS-15 | IF-ECL-09 | context.sts.orb.IF_ECL_09 |
| REQ-EPS-16 | F-EPS-FCP-04 | context.sts.orb.eps.fcp |
| REQ-EPS-16 | IF-ORB-10 | context.sts.orb.IF_ORB_10 |
| REQ-EPS-16 | IF-ECL-10 | context.sts.orb.IF_ECL_10 |
| REQ-EPS-17 | F-EPS-DC-04 | context.sts.orb.eps.dc |
| REQ-EPS-18 | F-EPS-04 | context.sts.orb.eps |
| REQ-EPS-18 | F-EPS-PRSD-04 | context.sts.orb.eps.prsd |
| REQ-EPS-18 | F-EPS-DC-01 | context.sts.orb.eps.dc |
| REQ-EPS-19 | F-EPS-05 | context.sts.orb.eps |
| REQ-EPS-19 | F-EPS-DC-06 | context.sts.orb.eps.dc |
| REQ-EPS-20 | F-EPS-FCP-01 | context.sts.orb.eps.fcp |
| REQ-EPS-21 | F-EPS-PRSD-06 | context.sts.orb.eps.prsd |
| REQ-EPS-22 | F-EPS-DC-07 | context.sts.orb.eps.dc |
| REQ-EPS-22 | IF-ORB-35 | context.sts.orb.IF_ORB_35 |
| REQ-ECLSS-01 | F-ECLSS-01・F-ECLSS-03 | context.sts.orb.eclss |
| REQ-ECLSS-01 | F-ECL-CAB-01・F-ECL-CAB-04 | context.sts.orb.eclss.cab |
| REQ-ECLSS-01 | F-ECL-PCS-01・F-ECL-PCS-02・F-ECL-PCS-03・F-ECL-PCS-07・F-ECL-PCS-08 | context.sts.orb.eclss.pcs |
| REQ-ECLSS-01 | IF-ORB-09 | context.sts.orb.IF_ORB_09 |
| REQ-ECLSS-02 | F-ECL-PCS-04・F-ECL-PCS-10 | context.sts.orb.eclss.pcs |
| REQ-ECLSS-03 | F-ECL-PCS-05・F-ECL-PCS-06・F-ECL-PCS-09 | context.sts.orb.eclss.pcs |
| REQ-ECLSS-04 | F-ECL-ALS-01・F-ECL-ALS-02・F-ECL-ALS-03・F-ECL-ALS-04・F-ECL-ALS-05・F-ECL-ALS-07・F-ECL-ALS-08 | context.sts.orb.eclss.als |
| REQ-ECLSS-04 | F-ECL-CAB-03 | context.sts.orb.eclss.cab |
| REQ-ECLSS-04 | F-ECL-PCS-11 | context.sts.orb.eclss.pcs |
| REQ-ECLSS-05 | F-ECL-ARS-01・F-ECL-ARS-02・F-ECL-ARS-03・F-ECL-ARS-04・F-ECL-ARS-05 | context.sts.orb.eclss.ars |
| REQ-ECLSS-05 | F-ECL-CAB-02・F-ECL-CAB-05 | context.sts.orb.eclss.cab |
| REQ-ECLSS-05 | F-ECL-ALS-09 | context.sts.orb.eclss.als |
| REQ-ECLSS-06 | F-ECLSS-04 | context.sts.orb.eclss |
| REQ-ECLSS-06 | F-ECL-ARS-08・F-ECL-ARS-09 | context.sts.orb.eclss.ars |
| REQ-ECLSS-07 | F-ECL-ARS-06・F-ECL-ARS-07 | context.sts.orb.eclss.ars |
| REQ-ECLSS-07 | IF-ORB-13 | context.sts.orb.IF_ORB_13 |
| REQ-ECLSS-07 | IF-ORB-19 | context.sts.orb.IF_ORB_19 |
| REQ-ECLSS-08 | F-ECLSS-02・F-ECLSS-05・F-ECLSS-06 | context.sts.orb.eclss |
| REQ-ECLSS-08 | F-ECL-ATCS-01・F-ECL-ATCS-02・F-ECL-ATCS-03・F-ECL-ATCS-04・F-ECL-ATCS-05・F-ECL-ATCS-06・F-ECL-ATCS-07 | context.sts.orb.eclss.atcs |
| REQ-ECLSS-08 | IF-ORB-11 | context.sts.orb.IF_ORB_11 |
| REQ-ECLSS-08 | IF-ORB-12 | context.sts.orb.IF_ORB_12 |
| REQ-ECLSS-08 | IF-ORB-32 | context.IF_ORB_32 |
| REQ-ECLSS-09 | F-ECLSS-02 | context.sts.orb.eclss |
| REQ-ECLSS-09 | F-ECL-ATCS-02 | context.sts.orb.eclss.atcs |
| REQ-ECLSS-10 | F-ECL-H2O-01・F-ECL-H2O-02・F-ECL-H2O-03・F-ECL-H2O-04・F-ECL-H2O-05・F-ECL-H2O-06・F-ECL-H2O-07・F-ECL-H2O-08・F-ECL-H2O-09 | context.sts.orb.eclss.h2o |
| REQ-ECLSS-10 | F-ECL-ALS-10 | context.sts.orb.eclss.als |
| REQ-ECLSS-10 | IF-ORB-10 | context.sts.orb.IF_ORB_10 |
| REQ-ECLSS-11 | F-ECL-FDS-01・F-ECL-FDS-02・F-ECL-FDS-03・F-ECL-FDS-04・F-ECL-FDS-05・F-ECL-FDS-06・F-ECL-FDS-09・F-ECL-FDS-10・F-ECL-FDS-11・F-ECL-FDS-12 | context.sts.orb.eclss.fds |
| REQ-ECLSS-12 | F-ECL-FDS-07・F-ECL-FDS-08 | context.sts.orb.eclss.fds |
| REQ-ECLSS-12 | F-ECL-WCS-09 | context.sts.orb.eclss.wcs |
| REQ-ECLSS-13 | F-ECL-WCS-01・F-ECL-WCS-02・F-ECL-WCS-03・F-ECL-WCS-04・F-ECL-WCS-05・F-ECL-WCS-06・F-ECL-WCS-07・F-ECL-WCS-08 | context.sts.orb.eclss.wcs |
| REQ-GNC-01 | F-GNC-INS-01・F-GNC-INS-02・F-GNC-INS-04 | context.sts.orb.gnc.ins |
| REQ-GNC-02 | F-GNC-INS-08・F-GNC-INS-09・F-GNC-INS-11 | context.sts.orb.gnc.ins |
| REQ-GNC-02 | F-GNC-OPS-06・F-GNC-OPS-07 | context.sts.orb.gnc.ops |
| REQ-GNC-03 | F-GNC-NAS-01・F-GNC-NAS-02・F-GNC-NAS-03・F-GNC-NAS-04・F-GNC-NAS-05・F-GNC-NAS-10・F-GNC-NAS-11 | context.sts.orb.gnc.nas |
| REQ-GNC-04 | F-GNC-NAS-07・F-GNC-NAS-08・F-GNC-NAS-09 | context.sts.orb.gnc.nas |
| REQ-GNC-04 | F-GNC-OPS-08 | context.sts.orb.gnc.ops |
| REQ-GNC-05 | F-GNC-GNS-01・F-GNC-GNS-02・F-GNC-GNS-03・F-GNC-GNS-04・F-GNC-GNS-05・F-GNC-GNS-06・F-GNC-GNS-07 | context.sts.orb.gnc.gns |
| REQ-GNC-06 | F-GNC-GNS-08・F-GNC-GNS-09 | context.sts.orb.gnc.gns |
| REQ-GNC-07 | F-GNC-GNS-11・F-GNC-GNS-12 | context.sts.orb.gnc.gns |
| REQ-GNC-08 | F-GNC-FCS-01・F-GNC-FCS-03・F-GNC-FCS-04・F-GNC-FCS-05・F-GNC-FCS-06 | context.sts.orb.gnc.fcs |
| REQ-GNC-08 | F-GNC-OPS-02 | context.sts.orb.gnc.ops |
| REQ-GNC-09 | F-GNC-FCS-07・F-GNC-FCS-08・F-GNC-FCS-09・F-GNC-FCS-10・F-GNC-FCS-11・F-GNC-FCS-12 | context.sts.orb.gnc.fcs |
| REQ-GNC-10 | F-GNC-ACT-01・F-GNC-ACT-02・F-GNC-ACT-03・F-GNC-ACT-04・F-GNC-ACT-05・F-GNC-ACT-06・F-GNC-ACT-07・F-GNC-ACT-08 | context.sts.orb.gnc.act |
| REQ-GNC-11 | F-GNC-ACT-09・F-GNC-ACT-10・F-GNC-ACT-11・F-GNC-ACT-12 | context.sts.orb.gnc.act |
| REQ-GNC-11 | IF-GNC-18 | context.sts.IF_GNC_18 |
| REQ-GNC-12 | F-GNC-CCD-01・F-GNC-CCD-02・F-GNC-CCD-03・F-GNC-CCD-04・F-GNC-CCD-05・F-GNC-CCD-06・F-GNC-CCD-09 | context.sts.orb.gnc.ccd |
| REQ-GNC-13 | F-GNC-OPS-01・F-GNC-OPS-02・F-GNC-OPS-04・F-GNC-OPS-05・F-GNC-OPS-11・F-GNC-OPS-12 | context.sts.orb.gnc.ops |
| REQ-GNC-14 | F-GNC-OPS-10・F-GNC-OPS-09 | context.sts.orb.gnc.ops |
| REQ-DPS-01 | F-DPS-GPC-01・F-DPS-GPC-10 | context.sts.orb.dps.gpc |
| REQ-DPS-01 | F-DPS-FSW-01 | context.sts.orb.dps.fsw |
| REQ-DPS-02 | F-DPS-GPC-09・F-DPS-GPC-11・F-DPS-GPC-12 | context.sts.orb.dps.gpc |
| REQ-DPS-03 | F-DPS-GPC-07・F-DPS-GPC-02 | context.sts.orb.dps.gpc |
| REQ-DPS-04 | F-DPS-FSW-02・F-DPS-FSW-11・F-DPS-FSW-12・F-DPS-FSW-13 | context.sts.orb.dps.fsw |
| REQ-DPS-04 | F-DPS-OPS-02 | context.sts.orb.dps.ops |
| REQ-DPS-05 | F-DPS-FSW-03・F-DPS-FSW-04・F-DPS-FSW-05・F-DPS-FSW-06・F-DPS-FSW-07・F-DPS-FSW-08・F-DPS-FSW-09・F-DPS-FSW-10 | context.sts.orb.dps.fsw |
| REQ-DPS-06 | F-DPS-BUS-01・F-DPS-BUS-02・F-DPS-BUS-03・F-DPS-BUS-04・F-DPS-BUS-05・F-DPS-BUS-07 | context.sts.orb.dps.bus |
| REQ-DPS-07 | F-DPS-BUS-06・F-DPS-BUS-08・F-DPS-BUS-09・F-DPS-BUS-10・F-DPS-BUS-11・F-DPS-BUS-12 | context.sts.orb.dps.bus |
| REQ-DPS-07 | IF-DPS-10 | context.sts.orb.IF_DPS_10 |
| REQ-DPS-07 | IF-DPS-11 | context.sts.orb.IF_DPS_11 |
| REQ-DPS-08 | F-DPS-ASC-02・F-DPS-ASC-03・F-DPS-ASC-04・F-DPS-ASC-05・F-DPS-ASC-06 | context.sts.orb.dps.asc |
| REQ-DPS-09 | F-DPS-ASC-01・F-DPS-ASC-07・F-DPS-ASC-08・F-DPS-ASC-09・F-DPS-ASC-10・F-DPS-ASC-11・F-DPS-ASC-12 | context.sts.orb.dps.asc |
| REQ-DPS-09 | IF-DPS-07 | context.sts.IF_DPS_07 |
| REQ-DPS-09 | IF-DPS-08 | context.sts.IF_DPS_08 |
| REQ-DPS-09 | IF-DPS-09 | context.sts.IF_DPS_09 |
| REQ-DPS-10 | F-DPS-MEDS-01・F-DPS-MEDS-02・F-DPS-MEDS-03・F-DPS-MEDS-04・F-DPS-MEDS-05・F-DPS-MEDS-06・F-DPS-MEDS-07・F-DPS-MEDS-12 | context.sts.orb.dps.meds |
| REQ-DPS-11 | F-DPS-MTU-01・F-DPS-MTU-02・F-DPS-MTU-03・F-DPS-MTU-04・F-DPS-MTU-06・F-DPS-MTU-08 | context.sts.orb.dps.mtu |
| REQ-DPS-12 | F-DPS-OPS-01・F-DPS-OPS-03・F-DPS-OPS-04・F-DPS-OPS-05・F-DPS-OPS-06・F-DPS-OPS-07・F-DPS-OPS-11 | context.sts.orb.dps.ops |
| REQ-DPS-13 | F-DPS-OPS-08・F-DPS-OPS-09・F-DPS-OPS-10・F-DPS-OPS-12 | context.sts.orb.dps.ops |
| REQ-MPS-01 | F-MPS-SSME-01・F-MPS-SSME-03・F-MPS-SSME-04・F-MPS-SSME-05・F-MPS-SSME-06・F-MPS-SSME-07 | context.sts.orb.mps.ssme |
| REQ-MPS-02 | F-MPS-SSME-02・F-MPS-SSME-08・F-MPS-SSME-09・F-MPS-SSME-12 | context.sts.orb.mps.ssme |
| REQ-MPS-03 | F-MPS-SSME-10・F-MPS-SSME-11 | context.sts.orb.mps.ssme |
| REQ-MPS-04 | F-MPS-CTL-01・F-MPS-CTL-02・F-MPS-CTL-03・F-MPS-CTL-04・F-MPS-CTL-13 | context.sts.orb.mps.ctl |
| REQ-MPS-05 | F-MPS-CTL-05・F-MPS-CTL-06・F-MPS-CTL-07・F-MPS-CTL-08・F-MPS-CTL-09・F-MPS-CTL-10 | context.sts.orb.mps.ctl |
| REQ-MPS-06 | F-MPS-CTL-11・F-MPS-CTL-12 | context.sts.orb.mps.ctl |
| REQ-MPS-07 | F-MPS-PMS-01・F-MPS-PMS-02・F-MPS-PMS-03・F-MPS-PMS-04・F-MPS-PMS-05・F-MPS-PMS-11・F-MPS-PMS-12 | context.sts.orb.mps.pms |
| REQ-MPS-07 | IF-MPS-01 | context.sts.IF_MPS_01 |
| REQ-MPS-08 | F-MPS-PMS-06・F-MPS-PMS-07・F-MPS-PMS-08・F-MPS-PMS-09・F-MPS-PMS-13 | context.sts.orb.mps.pms |
| REQ-MPS-08 | IF-MPS-02 | context.sts.IF_MPS_02 |
| REQ-MPS-09 | F-MPS-PMS-10 | context.sts.orb.mps.pms |
| REQ-MPS-10 | F-MPS-DMP-01・F-MPS-DMP-04・F-MPS-DMP-05・F-MPS-DMP-06・F-MPS-DMP-07・F-MPS-DMP-08・F-MPS-DMP-09・F-MPS-DMP-10・F-MPS-DMP-12 | context.sts.orb.mps.dmp |
| REQ-MPS-11 | F-MPS-HE-01・F-MPS-HE-02・F-MPS-HE-03・F-MPS-HE-07・F-MPS-HE-08・F-MPS-HE-10・F-MPS-HE-11・F-MPS-HE-12 | context.sts.orb.mps.he |
| REQ-MPS-12 | F-MPS-TVC-01・F-MPS-TVC-02・F-MPS-TVC-03・F-MPS-TVC-05・F-MPS-TVC-06・F-MPS-TVC-07・F-MPS-TVC-08 | context.sts.orb.mps.tvc |
| REQ-MPS-13 | F-MPS-OPS-01・F-MPS-OPS-02・F-MPS-OPS-03・F-MPS-OPS-04・F-MPS-OPS-05・F-MPS-OPS-06・F-MPS-OPS-10 | context.sts.orb.mps.ops |
| REQ-OMS-01 | F-OMS-ENG-01・F-OMS-ENG-02・F-OMS-ENG-05・F-OMS-ENG-06・F-OMS-ENG-07 | context.sts.orb.oms.eng |
| REQ-OMS-02 | F-OMS-ENG-03・F-OMS-ENG-04・F-OMS-ENG-08・F-OMS-ENG-09・F-OMS-ENG-10 | context.sts.orb.oms.eng |
| REQ-OMS-03 | F-OMS-ENG-11・F-OMS-ENG-12・F-OMS-ENG-13 | context.sts.orb.oms.eng |
| REQ-OMS-04 | F-OMS-HE-01・F-OMS-HE-02・F-OMS-HE-04・F-OMS-HE-05・F-OMS-HE-06・F-OMS-HE-07・F-OMS-HE-08・F-OMS-HE-09 | context.sts.orb.oms.he |
| REQ-OMS-05 | F-OMS-PSD-01・F-OMS-PSD-02・F-OMS-PSD-03・F-OMS-PSD-12 | context.sts.orb.oms.psd |
| REQ-OMS-06 | F-OMS-PSD-04・F-OMS-PSD-05・F-OMS-PSD-06・F-OMS-PSD-07・F-OMS-PSD-08・F-OMS-PSD-09・F-OMS-PSD-11 | context.sts.orb.oms.psd |
| REQ-OMS-07 | F-OMS-XFD-01・F-OMS-XFD-02・F-OMS-XFD-03・F-OMS-XFD-04・F-OMS-XFD-05・F-OMS-XFD-06・F-OMS-XFD-09・F-OMS-XFD-10 | context.sts.orb.oms.xfd |
| REQ-OMS-08 | F-OMS-TVC-01・F-OMS-TVC-02・F-OMS-TVC-03・F-OMS-TVC-04・F-OMS-TVC-05・F-OMS-TVC-06・F-OMS-TVC-07・F-OMS-TVC-10 | context.sts.orb.oms.tvc |
| REQ-OMS-09 | F-OMS-THM-01・F-OMS-THM-02・F-OMS-THM-03・F-OMS-THM-05・F-OMS-THM-06・F-OMS-THM-07・F-OMS-THM-10 | context.sts.orb.oms.thm |
| REQ-OMS-10 | F-OMS-OPS-09・F-OMS-OPS-10・F-OMS-OPS-11 | context.sts.orb.oms.ops |
| REQ-OMS-11 | F-OMS-OPS-06・F-OMS-OPS-07・F-OMS-OPS-08 | context.sts.orb.oms.ops |
| REQ-RCS-01 | F-RCS-HEP-01・F-RCS-HEP-02・F-RCS-HEP-04・F-RCS-HEP-05・F-RCS-HEP-07・F-RCS-HEP-08・F-RCS-HEP-09 | context.sts.orb.rcs.hep |
| REQ-RCS-02 | F-RCS-PRP-01・F-RCS-PRP-02・F-RCS-PRP-03・F-RCS-PRP-04・F-RCS-PRP-07・F-RCS-PRP-09・F-RCS-PRP-10 | context.sts.orb.rcs.prp |
| REQ-RCS-03 | F-RCS-PRP-11・F-RCS-PRP-12 | context.sts.orb.rcs.prp |
| REQ-RCS-04 | F-RCS-JET-01・F-RCS-JET-02・F-RCS-JET-03・F-RCS-JET-04・F-RCS-JET-05・F-RCS-JET-06・F-RCS-JET-07・F-RCS-JET-10 | context.sts.orb.rcs.jet |
| REQ-RCS-05 | F-RCS-JET-08・F-RCS-JET-09・F-RCS-JET-11・F-RCS-JET-12 | context.sts.orb.rcs.jet |
| REQ-RCS-06 | F-RCS-RJD-01・F-RCS-RJD-02・F-RCS-RJD-03・F-RCS-RJD-04・F-RCS-RJD-06・F-RCS-RJD-08・F-RCS-RJD-12 | context.sts.orb.rcs.rjd |
| REQ-RCS-07 | F-RCS-HTR-01・F-RCS-HTR-02・F-RCS-HTR-03・F-RCS-HTR-05・F-RCS-HTR-06・F-RCS-HTR-07・F-RCS-HTR-10・F-RCS-HTR-12 | context.sts.orb.rcs.htr |
| REQ-RCS-08 | F-RCS-RM-01・F-RCS-RM-02・F-RCS-RM-03・F-RCS-RM-04・F-RCS-RM-05・F-RCS-RM-06・F-RCS-RM-07・F-RCS-RM-08 | context.sts.orb.rcs.rm |
| REQ-RCS-08 | IF-RCS-13 | context.sts.orb.IF_RCS_13 |
| REQ-RCS-09 | F-RCS-OPS-04・F-RCS-OPS-10・F-RCS-OPS-11 | context.sts.orb.rcs.ops |
| REQ-RCS-10 | F-RCS-OPS-05・F-RCS-OPS-06・F-RCS-OPS-07・F-RCS-OPS-08・F-RCS-OPS-09・F-RCS-OPS-12 | context.sts.orb.rcs.ops |
| REQ-APU-01 | F-APU-FUL-01・F-APU-FUL-02・F-APU-FUL-03・F-APU-FUL-04・F-APU-FUL-05・F-APU-FUL-07 | context.sts.orb.apu.ful |
| REQ-APU-02 | F-APU-FUL-06・F-APU-FUL-10・F-APU-FUL-11・F-APU-FUL-12 | context.sts.orb.apu.ful |
| REQ-APU-02 | F-APU-TRB-11 | context.sts.orb.apu.trb |
| REQ-APU-03 | F-APU-TRB-01・F-APU-TRB-02・F-APU-TRB-04・F-APU-TRB-05・F-APU-TRB-06・F-APU-TRB-13 | context.sts.orb.apu.trb |
| REQ-APU-04 | F-APU-CTL-01・F-APU-CTL-02・F-APU-CTL-04・F-APU-CTL-05・F-APU-CTL-06・F-APU-CTL-07・F-APU-CTL-10・F-APU-CTL-11 | context.sts.orb.apu.ctl |
| REQ-APU-04 | IF-APU-15 | context.sts.orb.IF_APU_15 |
| REQ-APU-05 | F-APU-HYD-01・F-APU-HYD-02・F-APU-HYD-03・F-APU-HYD-04・F-APU-HYD-05・F-APU-HYD-06・F-APU-HYD-09・F-APU-HYD-10 | context.sts.orb.apu.hyd |
| REQ-APU-05 | IF-APU-11 | context.sts.orb.IF_APU_11 |
| REQ-APU-06 | F-APU-CIR-01・F-APU-CIR-02・F-APU-CIR-03・F-APU-CIR-04・F-APU-CIR-05・F-APU-CIR-07・F-APU-CIR-11 | context.sts.orb.apu.cir |
| REQ-APU-07 | F-APU-WSB-01・F-APU-WSB-03・F-APU-WSB-04・F-APU-WSB-05・F-APU-WSB-06・F-APU-WSB-09・F-APU-WSB-11 | context.sts.orb.apu.wsb |
| REQ-APU-08 | F-APU-OPS-06・F-APU-OPS-07・F-APU-OPS-08・F-APU-OPS-09・F-APU-OPS-10 | context.sts.orb.apu.ops |
| REQ-APU-09 | F-APU-OPS-11・F-APU-OPS-04・F-APU-OPS-05 | context.sts.orb.apu.ops |
| REQ-CT-01 | F-CT-SBD-01・F-CT-SBD-02・F-CT-SBD-03・F-CT-SBD-04・F-CT-SBD-05・F-CT-SBD-06・F-CT-SBD-07・F-CT-SBD-08・F-CT-SBD-09 | context.sts.orb.ct.sbd |
| REQ-CT-02 | F-CT-SBD-10・F-CT-SBD-11・F-CT-SBD-12 | context.sts.orb.ct.sbd |
| REQ-CT-03 | F-CT-KU-01・F-CT-KU-02・F-CT-KU-03・F-CT-KU-04・F-CT-KU-05・F-CT-KU-06・F-CT-KU-10・F-CT-KU-11 | context.sts.orb.ct.ku |
| REQ-CT-04 | F-CT-KU-07・F-CT-KU-08・F-CT-KU-09 | context.sts.orb.ct.ku |
| REQ-CT-04 | F-CT-OPS-06・F-CT-OPS-07 | context.sts.orb.ct.ops |
| REQ-CT-05 | F-CT-UHF-01・F-CT-UHF-02・F-CT-UHF-03・F-CT-UHF-04・F-CT-UHF-05・F-CT-UHF-06・F-CT-UHF-07・F-CT-UHF-08 | context.sts.orb.ct.uhf |
| REQ-CT-06 | F-CT-AUD-01・F-CT-AUD-02・F-CT-AUD-03・F-CT-AUD-04・F-CT-AUD-05・F-CT-AUD-06・F-CT-AUD-08・F-CT-AUD-09 | context.sts.orb.ct.aud |
| REQ-CT-06 | IF-CT-09 | context.sts.orb.IF_CT_09 |
| REQ-CT-07 | F-CT-CCTV-01・F-CT-CCTV-02・F-CT-CCTV-03・F-CT-CCTV-04・F-CT-CCTV-07・F-CT-CCTV-10 | context.sts.orb.ct.cctv |
| REQ-CT-07 | IF-CT-11 | context.sts.orb.IF_CT_11 |
| REQ-CT-08 | F-CT-INST-01・F-CT-INST-02・F-CT-INST-03・F-CT-INST-04・F-CT-INST-05・F-CT-INST-06・F-CT-INST-08・F-CT-INST-09 | context.sts.orb.ct.inst |
| REQ-CT-09 | F-CT-OPS-01・F-CT-OPS-02・F-CT-OPS-03・F-CT-OPS-04・F-CT-OPS-09・F-CT-OPS-11・F-CT-OPS-12 | context.sts.orb.ct.ops |
| REQ-TPS-01 | F-TPS-01 | context.sts.orb.tps |
| REQ-TPS-01 | IF-ORB-37 | context.sts.orb.IF_ORB_37 |
| REQ-TPS-02 | F-TPS-02・F-TPS-03・F-TPS-04・F-TPS-05・F-TPS-06 | context.sts.orb.tps |
| REQ-TPS-03 | F-TCS-03 | context.sts.orb.tcs |
| REQ-TPS-03 | F-STR-OPS-05 | context.sts.orb.str.ops |
| REQ-TPS-04 | F-TCS-02 | context.sts.orb.tcs |
| REQ-TPS-04 | F-TCS-PTC-01・F-TCS-PTC-02・F-TCS-PTC-04 | context.sts.orb.tcs.ptc |
| REQ-TPS-05 | F-TCS-PTC-03 | context.sts.orb.tcs.ptc |
| REQ-TPS-05 | IF-TCS-20 | context.sts.orb.IF_TCS_20 |
| REQ-TPS-06 | F-TCS-PTC-05・F-TCS-PTC-06 | context.sts.orb.tcs.ptc |
| REQ-TPS-06 | IF-TCS-17 | context.IF_TCS_17 |
| REQ-TPS-07 | F-TCS-01・F-TCS-04 | context.sts.orb.tcs |
| REQ-CW-01 | F-CW-PRI-01・F-CW-PRI-02・F-CW-PRI-03・F-CW-PRI-04・F-CW-PRI-05 | context.sts.orb.cw.pri |
| REQ-CW-02 | F-CW-PRI-06・F-CW-PRI-07・F-CW-PRI-08 | context.sts.orb.cw.pri |
| REQ-CW-02 | IF-CW-01 | context.sts.orb.IF_CW_01 |
| REQ-CW-03 | F-CW-BKP-01・F-CW-BKP-02・F-CW-BKP-03・F-CW-BKP-04・F-CW-BKP-05・F-CW-BKP-06・F-CW-BKP-07 | context.sts.orb.cw.bkp |
| REQ-CW-04 | F-CW-ALT-01・F-CW-ALT-02・F-CW-ALT-03・F-CW-ALT-04・F-CW-ALT-05 | context.sts.orb.cw.alt |
| REQ-CW-05 | F-CW-ALT-06・F-CW-ALT-07 | context.sts.orb.cw.alt |
| REQ-CW-06 | F-CW-ANN-04・F-CW-ANN-05・F-CW-ANN-06 | context.sts.orb.cw.ann |
| REQ-CW-07 | F-CW-ANN-01・F-CW-ANN-02・F-CW-ANN-03・F-CW-ANN-07・F-CW-ANN-08 | context.sts.orb.cw.ann |
| REQ-CW-08 | F-CW-OPS-01・F-CW-OPS-02・F-CW-OPS-03・F-CW-OPS-04・F-CW-OPS-09 | context.sts.orb.cw.ops |
| REQ-CW-09 | F-CW-OPS-05・F-CW-OPS-06 | context.sts.orb.cw.ops |
| REQ-CW-10 | F-CW-OPS-07・F-CW-OPS-08 | context.sts.orb.cw.ops |
| REQ-CREW-01 | F-CREW-HAB-01・F-CREW-HAB-02・F-CREW-HAB-03・F-CREW-HAB-04・F-CREW-HAB-05 | context.sts.orb.crew.hab |
| REQ-CREW-02 | F-CREW-HAB-06 | context.sts.orb.crew.hab |
| REQ-CREW-02 | F-CREW-OPS-03 | context.sts.orb.crew.ops |
| REQ-CREW-03 | F-CREW-HAB-07・F-CREW-HAB-08 | context.sts.orb.crew.hab |
| REQ-CREW-03 | F-CREW-OPS-04 | context.sts.orb.crew.ops |
| REQ-CREW-04 | F-CREW-STW-01・F-CREW-STW-02・F-CREW-STW-03・F-CREW-STW-04・F-CREW-STW-05・F-CREW-STW-06・F-CREW-STW-07 | context.sts.orb.crew.stw |
| REQ-CREW-05 | F-CREW-MED-01・F-CREW-MED-02・F-CREW-MED-03・F-CREW-MED-04・F-CREW-MED-05 | context.sts.orb.crew.med |
| REQ-CREW-05 | F-CREW-OPS-01・F-CREW-OPS-02・F-CREW-OPS-07 | context.sts.orb.crew.ops |
| REQ-CREW-06 | F-CREW-MED-06・F-CREW-MED-07 | context.sts.orb.crew.med |
| REQ-CREW-06 | F-CREW-OPS-05・F-CREW-OPS-08 | context.sts.orb.crew.ops |
| REQ-CREW-07 | F-CREW-LTG-01・F-CREW-LTG-02・F-CREW-LTG-03・F-CREW-LTG-04・F-CREW-LTG-05・F-CREW-LTG-06・F-CREW-LTG-07 | context.sts.orb.crew.ltg |
| REQ-CREW-08 | F-CREW-ESC-01・F-CREW-ESC-02・F-CREW-ESC-03・F-CREW-ESC-04・F-CREW-ESC-05・F-CREW-ESC-06 | context.sts.orb.crew.esc |
| REQ-CREW-09 | F-CREW-ESC-07・F-CREW-ESC-08・F-CREW-ESC-09 | context.sts.orb.crew.esc |
| REQ-CREW-10 | F-CREW-OPS-06 | context.sts.orb.crew.ops |
| REQ-EVA-01 | F-EVA-CHK-01・F-EVA-CHK-02・F-EVA-CHK-03・F-EVA-CHK-04・F-EVA-CHK-05・F-EVA-CHK-06・F-EVA-CHK-07・F-EVA-CHK-13 | context.sts.orb.eva.chk |
| REQ-EVA-02 | F-EVA-CHK-11・F-EVA-CHK-12 | context.sts.orb.eva.chk |
| REQ-EVA-02 | F-EVA-OPS-01・F-EVA-OPS-02・F-EVA-OPS-03・F-EVA-OPS-04 | context.sts.orb.eva.ops |
| REQ-EVA-03 | F-EVA-DPR-01・F-EVA-DPR-02・F-EVA-DPR-03・F-EVA-DPR-04・F-EVA-DPR-05・F-EVA-DPR-06・F-EVA-DPR-08 | context.sts.orb.eva.dpr |
| REQ-EVA-04 | F-EVA-TLS-01・F-EVA-TLS-02・F-EVA-TLS-03・F-EVA-TLS-06・F-EVA-TLS-08 | context.sts.orb.eva.tls |
| REQ-EVA-05 | F-EVA-MNT-01・F-EVA-MNT-02・F-EVA-MNT-03・F-EVA-MNT-04・F-EVA-MNT-07・F-EVA-MNT-09・F-EVA-MNT-10 | context.sts.orb.eva.mnt |
| REQ-EVA-06 | F-EVA-EMG-01・F-EVA-EMG-02・F-EVA-EMG-03 | context.sts.orb.eva.emg |
| REQ-EVA-06 | F-EVA-OPS-13 | context.sts.orb.eva.ops |
| REQ-EVA-06 | IF-EVA-11 | context.sts.orb.IF_EVA_11 |
| REQ-EVA-06 | IF-EVA-12 | context.sts.orb.IF_EVA_12 |
| REQ-EVA-07 | F-EVA-EMG-09・F-EVA-EMG-10・F-EVA-EMG-11 | context.sts.orb.eva.emg |
| REQ-EVA-07 | F-EVA-OPS-08 | context.sts.orb.eva.ops |
| REQ-EVA-08 | F-EVA-OPS-09・F-EVA-OPS-10・F-EVA-OPS-11・F-EVA-OPS-12 | context.sts.orb.eva.ops |
| REQ-EVA-08 | IF-EVA-15 | context.sts.orb.IF_EVA_15 |
| REQ-PLS-01 | F-PLS-ARM-01・F-PLS-ARM-02・F-PLS-ARM-03・F-PLS-ARM-04・F-PLS-ARM-07 | context.sts.orb.pls.arm |
| REQ-PLS-02 | F-PLS-ARM-05・F-PLS-ARM-06・F-PLS-ARM-08 | context.sts.orb.pls.arm |
| REQ-PLS-03 | F-PLS-CTL-01・F-PLS-CTL-02・F-PLS-CTL-06・F-PLS-CTL-07 | context.sts.orb.pls.ctl |
| REQ-PLS-04 | F-PLS-CTL-03・F-PLS-CTL-04・F-PLS-CTL-05 | context.sts.orb.pls.ctl |
| REQ-PLS-05 | F-PLS-MPM-01・F-PLS-MPM-02・F-PLS-MPM-03・F-PLS-MPM-04・F-PLS-MPM-05・F-PLS-MPM-06・F-PLS-MPM-07 | context.sts.orb.pls.mpm |
| REQ-PLS-06 | F-PLS-PRL-01・F-PLS-PRL-02・F-PLS-PRL-03・F-PLS-PRL-04・F-PLS-PRL-05・F-PLS-PRL-06・F-PLS-PRL-07 | context.sts.orb.pls.prl |
| REQ-PLS-07 | F-PLS-ODS-01・F-PLS-ODS-02・F-PLS-ODS-03・F-PLS-ODS-04・F-PLS-ODS-05・F-PLS-ODS-06・F-PLS-ODS-07 | context.sts.orb.pls.ods |
| REQ-PLS-08 | F-PLS-OPS-01・F-PLS-OPS-02・F-PLS-OPS-07 | context.sts.orb.pls.ops |
| REQ-PLS-09 | F-PLS-OPS-03・F-PLS-OPS-04・F-PLS-OPS-05・F-PLS-OPS-06 | context.sts.orb.pls.ops |
| REQ-MECH-01 | F-MECH-ACT-01・F-MECH-ACT-02・F-MECH-ACT-03・F-MECH-ACT-04・F-MECH-ACT-05・F-MECH-ACT-06 | context.sts.orb.mech.act |
| REQ-MECH-01 | F-MECH-OPS-02 | context.sts.orb.mech.ops |
| REQ-MECH-02 | F-MECH-ACT-07 | context.sts.orb.mech.act |
| REQ-MECH-03 | F-MECH-PLB-01・F-MECH-PLB-02・F-MECH-PLB-03・F-MECH-PLB-04・F-MECH-PLB-05・F-MECH-PLB-06・F-MECH-PLB-07 | context.sts.orb.mech.plb |
| REQ-MECH-04 | F-MECH-OPS-03・F-MECH-OPS-01 | context.sts.orb.mech.ops |
| REQ-MECH-05 | F-MECH-VNT-01・F-MECH-VNT-02・F-MECH-VNT-03・F-MECH-VNT-04 | context.sts.orb.mech.vnt |
| REQ-MECH-05 | F-MECH-OPS-04 | context.sts.orb.mech.ops |
| REQ-MECH-06 | F-MECH-VNT-05・F-MECH-VNT-06・F-MECH-VNT-07 | context.sts.orb.mech.vnt |
| REQ-MECH-06 | F-MECH-OPS-05 | context.sts.orb.mech.ops |
| REQ-MECH-07 | F-MECH-LDG-01・F-MECH-LDG-02・F-MECH-LDG-03・F-MECH-LDG-04・F-MECH-LDG-05・F-MECH-LDG-06・F-MECH-LDG-07・F-MECH-LDG-08 | context.sts.orb.mech.ldg |
| REQ-MECH-08 | F-MECH-DEC-01・F-MECH-DEC-02・F-MECH-DEC-03・F-MECH-DEC-04・F-MECH-DEC-05 | context.sts.orb.mech.dec |
| REQ-MECH-09 | F-MECH-DEC-06・F-MECH-DEC-07 | context.sts.orb.mech.dec |
| REQ-MECH-10 | F-MECH-OPS-06 | context.sts.orb.mech.ops |
| REQ-STR-01 | F-STR-FWD-01・F-STR-FWD-03・F-STR-FWD-04 | context.sts.orb.str.fwd |
| REQ-STR-02 | F-STR-FWD-02・F-STR-FWD-05・F-STR-FWD-06・F-STR-FWD-07 | context.sts.orb.str.fwd |
| REQ-STR-03 | F-STR-CRM-01・F-STR-CRM-02・F-STR-CRM-03・F-STR-CRM-04・F-STR-CRM-05 | context.sts.orb.str.crm |
| REQ-STR-04 | F-STR-CRM-06・F-STR-CRM-07 | context.sts.orb.str.crm |
| REQ-STR-04 | F-STR-OPS-01・F-STR-OPS-02・F-STR-OPS-03・F-STR-OPS-04 | context.sts.orb.str.ops |
| REQ-STR-05 | F-STR-MID-01・F-STR-MID-02・F-STR-MID-03・F-STR-MID-04・F-STR-MID-05・F-STR-MID-06・F-STR-MID-07 | context.sts.orb.str.mid |
| REQ-STR-06 | F-STR-AFT-01・F-STR-AFT-02・F-STR-AFT-03・F-STR-AFT-04・F-STR-AFT-05・F-STR-AFT-06・F-STR-AFT-07 | context.sts.orb.str.aft |
| REQ-STR-07 | F-STR-WNG-01・F-STR-WNG-02・F-STR-WNG-03・F-STR-WNG-04・F-STR-WNG-05・F-STR-WNG-06・F-STR-WNG-07・F-STR-WNG-08 | context.sts.orb.str.wng |
| REQ-STR-08 | F-STR-OPS-05・F-STR-OPS-06・F-STR-OPS-07 | context.sts.orb.str.ops |
| REQ-ET-01 | F-ET-LOX-01・F-ET-LOX-02・F-ET-LOX-05 | context.sts.et.lox |
| REQ-ET-01 | F-ET-LH2-02 | context.sts.et.lh2 |
| REQ-ET-02 | F-ET-LOX-03・F-ET-LOX-04・F-ET-LOX-06・F-ET-LOX-07 | context.sts.et.lox |
| REQ-ET-02 | F-ET-LH2-01・F-ET-LH2-04 | context.sts.et.lh2 |
| REQ-ET-03 | F-ET-LH2-05・F-ET-LH2-06 | context.sts.et.lh2 |
| REQ-ET-04 | F-ET-ITK-01・F-ET-ITK-02・F-ET-ITK-03・F-ET-ITK-04・F-ET-ITK-05・F-ET-ITK-06 | context.sts.et.itk |
| REQ-ET-04 | F-ET-LH2-03 | context.sts.et.lh2 |
| REQ-ET-05 | F-ET-UMB-01・F-ET-UMB-02・F-ET-UMB-03・F-ET-UMB-04・F-ET-UMB-05・F-ET-UMB-07 | context.sts.et.umb |
| REQ-ET-06 | F-ET-UMB-06 | context.sts.et.umb |
| REQ-ET-06 | F-ET-SEP-06 | context.sts.et.sep |
| REQ-ET-07 | F-ET-TPS-01・F-ET-TPS-02・F-ET-TPS-03・F-ET-TPS-04・F-ET-TPS-05・F-ET-TPS-06 | context.sts.et.tps |
| REQ-ET-08 | F-ET-SEP-01・F-ET-SEP-02・F-ET-SEP-03・F-ET-SEP-04・F-ET-SEP-07 | context.sts.et.sep |
| REQ-ET-09 | F-ET-SEP-05 | context.sts.et.sep |
| REQ-SRB-01 | F-SRB-MTR-01・F-SRB-MTR-02・F-SRB-MTR-03・F-SRB-MTR-04・F-SRB-MTR-05・F-SRB-MTR-09 | context.sts.srb.mtr |
| REQ-SRB-02 | F-SRB-MTR-06・F-SRB-MTR-07・F-SRB-MTR-08 | context.sts.srb.mtr |
| REQ-SRB-03 | F-SRB-HDP-01・F-SRB-HDP-02・F-SRB-HDP-03 | context.sts.srb.hdp |
| REQ-SRB-04 | F-SRB-HDP-04・F-SRB-HDP-05・F-SRB-HDP-06・F-SRB-HDP-07 | context.sts.srb.hdp |
| REQ-SRB-05 | F-SRB-TVC-01・F-SRB-TVC-02・F-SRB-TVC-03・F-SRB-TVC-04・F-SRB-TVC-05・F-SRB-TVC-06・F-SRB-TVC-07・F-SRB-TVC-08 | context.sts.srb.tvc |
| REQ-SRB-06 | F-SRB-AVN-01・F-SRB-AVN-02・F-SRB-AVN-03・F-SRB-AVN-04・F-SRB-AVN-05 | context.sts.srb.avn |
| REQ-SRB-07 | F-SRB-AVN-06・F-SRB-AVN-07・F-SRB-AVN-08 | context.sts.srb.avn |
| REQ-SRB-08 | F-SRB-ATT-01・F-SRB-ATT-02・F-SRB-ATT-03・F-SRB-ATT-04・F-SRB-ATT-05・F-SRB-ATT-06・F-SRB-ATT-07 | context.sts.srb.att |
| REQ-SRB-09 | F-SRB-REC-01・F-SRB-REC-02・F-SRB-REC-03・F-SRB-REC-04・F-SRB-REC-05・F-SRB-REC-06 | context.sts.srb.rec |

## 6. 検証方法

検証方法は SysML v2 の標準ライブラリの VerificationMethodKind に写した。検証の根拠の状態は、根拠あり 206件・根拠なし 6件である（要求書の検証（V&V）の表）。

| 要求書の検証 | VerificationMethodKind | 件数 |
|---|---|---|
| A（解析） | analyze | 65 |
| T（試験） | test | 31 |
| I（検査） | inspect | 14 |
| D（実証） | demo | 102 |

## 7. 行列の図

図90 要求の導出・充足 行列 は、行を L1 の要求、列を L2 の要求書の系とし、ます目に導出した L2 の要求の数を示す。下の行に、系ごとの L2 の要求の数・充足の数・検証方法の内訳・根拠なしの数を示す。ます目と見出しをクリックすると要求書を開く。

## 8. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [model/SSD-RQM-SYS-001.sysml](../../model/SSD-RQM-SYS-001.sysml) に示す。要求の requirement 212件、導出の connection 241件、充足の satisfy 334件から成り、構造モデル SSD_BLK_SYS_001（model/SSD-BLK-SYS-001.sysml）を読み込んでから読む。本書の表と同じデータから作り、OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で両方を読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 9. 注記（出典間の相違・構成変更）

> **注記** 要求の主体（subject）を系の part def でなく Parts::Part にしたのは、割付先が系の下位の部品やインタフェースで、SysML v2 では充足する要素の型が主体の型に合う必要があるためである。要求がどの系のものかは、要求を入れた package（要求書）と RequirementInfo の document で示す。

> **注記** 検証（verify）の関係は張っていない。SysML v2 の verify は検証ケース（verification case）から要求へ張る関係で、検証ケースのモデルは本書の範囲外である。要求書の検証方法と根拠の状態は VerificationIntent の metadata に写した。

> **注記** 要求の値（値の欄）は文字列のまま写した。値を属性と制約にしたのは、収支のマージンに関わる11件（SSD-PAR-ORB-001 の requirement def）だけである。

> **注記** 割付先の F-ID は、機能行を持つ機能説明書の部品で充足するとした。機能そのもの（機能行）をモデルの要素にして部品に割り付けることは、割付定義書で行う。

> **注記** 要求を verify する検証ケース（本書では張っていなかった検証の関係）は [SSD-VER-SYS-001](SSD-VER-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-VER-SYS-001.sysml）。

> **注記** 要求の導出・割付・検証の連鎖の網羅と切れ目は [SSD-TRC-SYS-001](SSD-TRC-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-TRC-SYS-001.sysml）。

> **注記** 要求の値を量の属性と制約に書き直したもの（形式化）と、値による判定は [SSD-RQF-SYS-001](SSD-RQF-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-RQF-SYS-001.sysml）。

## 10. 参考文献

1. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
2. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 11. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（要求 212件、導出 241件、充足 334件、検証方法の metadata、図90 要求の導出・充足 行列、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | 検証定義書 SSD-VER-SYS-001 への参照を注記（Rev. AL） |
| Rev. B | 2026-10-03 | トレース網羅・影響分析書 SSD-TRC-SYS-001 への参照を注記（Rev. AO） |
| Rev. C | 2026-10-03 | 要求の形式化定義書 SSD-RQF-SYS-001 への参照を注記（Rev. AS） |
