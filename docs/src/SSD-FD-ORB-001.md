# オービタ（OV）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ORB-001 |
| 表題 | オービタ（OV）機能説明書 |
| 版・日付 | Rev. J／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-SYS-IDX-001 |
| 関連図 | SSD-SYS-ARC-001 図1 システム構成 |

## 1. 目的

オービタ全体の機能配分と、下位サブシステムの機能説明書への索引を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ORB-01 | 3基の主エンジンは後部胴体に、軌道制御系（OMS）は後部胴体の2つの外部ポッドに収められている。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） |
| F-ORB-02 | 姿勢制御系（RCS）は、2つのOMSポッドと前部胴体機首部のモジュールに収められている。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） |
| F-ORB-03 | 各機能は2重または3重に冗長化された機器で構成され、1故障後もミッションを継続でき（フェイルオペレーショナル）、2故障後も着陸地点へ安全に帰還できる（フェイルセーフ）ことを目標としている。（出典: https://www.spaceshuttleguide.com/system/navigation.htm） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-SYS-01 | 外部タンク（ET） | 推進薬・流体 | 受信 | 外部タンクは液体水素燃料と液体酸素酸化剤を収め、打上げ・上昇中にオービタの3基のSSMEへ加圧供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） | 下位: IF-ORB-15 |
| IF-SYS-03 | 固体ロケットブースタ（SRB×2） | データ・指令 | 送信 | オービタのDPSには、SRB用のマルチプレクサ／デマルチプレクサ（MDM）が4台含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）オービタの上昇推力方向制御（ATVC）は、打上げ・第1段上昇中に3基のSSMEと2本のSRBの推力方向を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 下位: IF-ORB-18 下位: IF-ORB-22 下位: IF-ORB-26 下位: IF-ORB-28 |
| IF-SYS-04 | 追跡・通信網（TDRS／STDN） | RF（無線） | 双方向 | S帯のフォワードリンクとリターンリンクは、地上局網STDNまたはTDRSを経由する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162）S帯とKu帯のリンクは、いずれもNASAのTDRSシステムとの間で維持される。（出典: https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm） | 下位: IF-ORB-16 |
| IF-SYS-06 | 打上げ処理システム（KSC） | データ・指令 | 双方向 | 2系統の双方向の打上げデータバス（LDB）が、機上コンピュータ系と打上げ処理システムを結ぶ。（出典: https://dl.acm.org/doi/pdf/10.1145/358234.358246） | 下位: IF-ORB-17 |
| IF-SYS-07 | 外部タンク（ET） | 構造・荷重 | 双方向 | 強化炭素－炭素（RCC）が前部オービタ／外部タンク構造結合部の周辺に使われていることから、両者は構造的に結合している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） | 下位: IF-ORB-36 |
| IF-SYS-08 | 外部タンク（ET） | データ・指令 | 送信 | 外部タンクとオービタの間の電気・燃料アンビリカルは、オービタ下面の2つの後部アンビリカル開口から機内に入り、その空洞にオービタ／外部タンク結合点と燃料・電気の切離し部がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623）オービタのGPCが外部タンク分離を指令すると、火工品でボルトが切断される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） | 下位: IF-ORB-25 下位: IF-ORB-27 |
| IF-SYS-09 | 打上げ処理システム（KSC） | 推進薬・流体 | 受信 | 打上げ前は、地上支援設備の液体酸素と液体水素が、それぞれのT-0アンビリカルから充填・排出弁と機体の供給配管マニホールドを通って送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605）後部電力制御組立の電力接触器は、燃料電池が給電を引き継ぐまで、地上から供給される28 V直流電力をT-0アンビリカルを通じてオービタへ配電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338）着陸後は、右側のT-0アンビリカルに地上の空調パージ装置をつなぎ、後部胴体、ペイロードベイ、前部胴体、主翼、垂直尾翼、OMS/RCSポッドへ冷却空気を送って再突入の熱を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） | 下位: IF-ORB-29 下位: IF-ORB-30 下位: IF-ORB-31 下位: IF-ORB-32 下位: IF-ORB-33 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-MPS-001](SSD-FD-MPS-001.md) | 主推進系（MPS）機能説明書 |
| [SSD-FD-OMS-001](SSD-FD-OMS-001.md) | 軌道制御系（OMS）機能説明書 |
| [SSD-FD-RCS-001](SSD-FD-RCS-001.md) | 姿勢制御系（RCS）機能説明書 |
| [SSD-FD-GNC-001](SSD-FD-GNC-001.md) | 誘導・航法・制御（GN&C）機能説明書 |
| [SSD-FD-DPS-001](SSD-FD-DPS-001.md) | データ処理系（DPS）機能説明書 |
| [SSD-FD-EPS-001](SSD-FD-EPS-001.md) | 電力系（EPS）機能説明書 |
| [SSD-FD-ECLSS-001](SSD-FD-ECLSS-001.md) | 環境制御・生命維持系（ECLSS）機能説明書 |
| [SSD-FD-APU-001](SSD-FD-APU-001.md) | 補助動力装置・油圧系（APU/HYD）機能説明書 |
| [SSD-FD-CT-001](SSD-FD-CT-001.md) | 通信・追跡系（C&T）機能説明書 |
| [SSD-FD-TPS-001](SSD-FD-TPS-001.md) | 熱防護系（TPS）機能説明書 |
| [SSD-FD-TCS-001](SSD-FD-TCS-001.md) | 熱制御（能動・受動）機能説明書 |
| [SSD-FD-STR-001](SSD-FD-STR-001.md) | 構造（STR）機能説明書 |
| [SSD-FD-MECH-001](SSD-FD-MECH-001.md) | 機械系（MECH）機能説明書 |
| [SSD-FD-CW-001](SSD-FD-CW-001.md) | 警報系（C/W）機能説明書 |
| [SSD-FD-CREW-001](SSD-FD-CREW-001.md) | 乗員系・脱出系（CREW）機能説明書 |
| [SSD-FD-PLS-001](SSD-FD-PLS-001.md) | ペイロード支援（PDRS・ODS）機能説明書 |
| [SSD-FD-EVA-001](SSD-FD-EVA-001.md) | 船外活動（EVA/EMU）機能説明書 |

## 5. 注記（出典間の相違・構成変更）

> **注記** 本パッケージの多くの出典はNSTS 1988 News Reference Manualであり、同資料は1988年時点の内容で、それ以降の多くの変更・改良を反映していない。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/）

> **注記** オービタの各サブシステムと外部要素の、飛行フェーズとアボートモードごとの稼働は [SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節と図39 に、上昇時の主な事象と IF の切替は同書の5節と図40 に示す。

> **注記** オービタのシステム全体の要求（L1）は [SSD-REQ-SYS-001](SSD-REQ-SYS-001.md) に示す。

> **注記** 上位 IF（IF-SYS・IF-ORB）の媒体と量・冗長・運用フェーズは [SSD-ICD-ORB-001](SSD-ICD-ORB-001.md) に示す。

> **注記** 各サブシステムの主な機器の数量・冗長・搭載区画は [SSD-PHY-ORB-001](SSD-PHY-ORB-001.md) と図43 に示す。

> **注記** 電力・熱・消耗品・推進薬の容量と負荷・マージンは [SSD-BUD-ORB-001](SSD-BUD-ORB-001.md) と図44 に示す。

> **注記** 各ブロックの冗長の数・方式・許容段階（A2-101）と CIL 件数は [SSD-FMEA-ORB-001](SSD-FMEA-ORB-001.md) と図45 に示す。

> **注記** オービタを含む機体と外部系の構造（ブロック・ポート・インタフェース）の SysML v2 モデルは [SSD-BLK-SYS-001](SSD-BLK-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-BLK-SYS-001.sysml）。

## 6. 参考文献

1. NASA SP-407 Space Shuttle, Chapter 3 Space Shuttle Vehicle — https://www.american-spacecraft.org/documents/sp-407/chapter-3.html
2. Space Shuttle Guide – Guidance, Navigation and Control — https://www.spaceshuttleguide.com/system/navigation.htm
3. NSTS 1988 News Reference Manual 目次（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/
4. NASA SP-504 Section 4 – Communications and Tracking（klabs 転載） — https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm
5. The space shuttle primary computer system（Communications of the ACM, 1984） — https://dl.acm.org/doi/pdf/10.1145/358234.358246
6. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p623） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623
7. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p605） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605
9. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p338） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338
10. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p36） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36
11. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
12. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p225） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225
13. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
14. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p162） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162
15. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 横断文書として熱制御（能動・受動）機能説明書を下位文書に追加 |
| Rev. B | 2026-09-30 | 図2 に追加したブロックの機能説明書6件（構造・機械系・警報系・乗員系・ペイロード支援・船外活動）を下位文書に追加、上位の IF の補完に伴い IF-SYS-08・IF-SYS-09 を追加、IF-SYS-03 に下位 IF-ORB-22・IF-ORB-26・IF-ORB-28 を付記、IF-SYS-07 に下位 IF-ORB-36 を付記（Rev. I） |
| Rev. C | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. D | 2026-10-01 | 要求文書 SSD-REQ-SYS-001 への参照を注記（Rev. K） |
| Rev. E | 2026-10-01 | 上位 IF 管理表 SSD-ICD-ORB-001 への参照を注記（Rev. M） |
| Rev. F | 2026-10-01 | 機器配分表 SSD-PHY-ORB-001 と図43 への参照を注記（Rev. N） |
| Rev. G | 2026-10-01 | 収支・マージン表 SSD-BUD-ORB-001 と図44 への参照を注記（Rev. O） |
| Rev. H | 2026-10-01 | 冗長・故障解析表 SSD-FMEA-ORB-001 と図45 への参照を注記（Rev. P） |
| Rev. I | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（5文）（Rev. Q） |
| Rev. J | 2026-10-03 | 構造定義書 SSD-BLK-SYS-001 への参照を注記（Rev. AD） |
