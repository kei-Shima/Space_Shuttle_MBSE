# 収納・拘束（STW）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CREW-STW-001 |
| 表題 | 収納・拘束（STW）機能説明書 |
| 版・日付 | Rev. A／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CREW-001 |
| 関連図 | SSD-SYS-ARC-001 図64 CREW 機能構成 |

## 1. 目的

装備を収めるロッカー・床下区画・収納袋・中甲板収納ラックと、拘束具・移動補助具を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CREW-STW-01 | 収納はおもに硬い容器と柔らかい容器から成り、収納場所は飛行甲板・中甲板・エアロック・下部機器ベイにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/747） |
| F-CREW-STW-02 | モジュラーロッカーは交換可能で、ばね付きの拘束ボルトでオービタに取り付け、軌道上で乗員が外したり付けたりできる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/747） |
| F-CREW-STW-03 | 収納容積は約150 ft3で、その95%近くが中甲板にあり、ロッカー1つは2 ft3・68 lb以下を収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/747） |
| F-CREW-STW-04 | 中甲板の前方アビオニクスベイに33個、エアロックの右舷側に11個のロッカーを取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/748） |
| F-CREW-STW-05 | 床下には7つの収納区画があり、Volume F は湿ったごみ、Volume G は非常用の衛生用品、Volume H は EVA の付属品を収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/748） |
| F-CREW-STW-06 | 拘束具（足ループ・座席拘束・保持ネット・ベルクロなど）と移動補助具（手すり・中甲板の非常脱出ネット・甲板間のはしご）で、乗員は乗込み・退出・軌道飛行の作業を安全に行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/213） |
| F-CREW-STW-07 | 中甲板収納ラック（MAR）は側面ハッチの前方に置き、約15 ft3・約340 lbまでの小型ペイロードや実験を収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/752） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CREW-08 | 居住・衛生 | 構造・荷重 | 送信 | 個人の衛生用品は打上げ時に中甲板のロッカーや収納袋に収め、軌道上で取り出して使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209） | — |
| IF-CREW-09 | 医療・生体・放射線 | 構造・荷重 | 送信 | SOMSの多くは中甲板のロッカー1つにまとめて収め、使うときに取り出して取り付ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.24節（PDF p747〜754）：ロッカー・床下区画・柔らかい容器・中甲板収納ラックを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/747） |
| CS-02 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.1節 Stowage Provisions（PDF p36〜）：飛行甲板・中甲板の主な収納容器と場所を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=36） |
| CS-05 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 1-6 VOL E REMOVAL（PDF p50）：床下の Volume E を外して下部機器ベイへ近づく手順と、睡眠ステーションがあると外せない場合を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** 収納の場所と容積（ロッカー・床下・MLE）は [SSD-HRS-ORB-001](SSD-HRS-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-HRS-ORB-001.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.24 Stowage（USA007587 Rev. A CPN-1、PDF p747） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/747
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.24節 Stowage（Floor Compartments）（PDF p748） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/748
3. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p213） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/213
4. Shuttle Crew Operations Manual 2.24 Stowage（USA007587 Rev. A CPN-1、PDF p752） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/752
5. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p209） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209
6. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p218） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218
7. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-09 | 居住の資源と収支定義書 SSD-HRS-ORB-001 への参照を注記（Rev. BO） |
