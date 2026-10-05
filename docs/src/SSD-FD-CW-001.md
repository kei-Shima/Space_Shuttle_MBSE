# 警報系（C/W）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CW-001 |
| 表題 | 警報系（C/W）機能説明書 |
| 版・日付 | Rev. H／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

警報系（C/W）の警報区分と、主（ハードウェア）・バックアップ（ソフトウェア）の構成、および監視対象の各系・データ処理系・通信系とのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CW-01 | C/W系は、オービタの運用または乗員に危険を生じうる状態を乗員に警告し、時間的に切迫した（5分未満の）処置が必要な状況を知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113） |
| F-CW-02 | 温度・圧力・流量・スイッチ位置などのデータから警報状態を判定し、所定の運用限界を超えた系を視覚と聴覚の合図で乗員に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113） |
| F-CW-03 | 警報は、クラス1（緊急）、クラス2（C/W）、クラス3（アラート）、クラス0（限界監視）の4区分から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| F-CW-04 | クラス1は煙検知・消火と急減圧の2つで、MDMやソフトウェアを介さないハードウェアのみの系である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| F-CW-05 | 主C/W（ハードウェア）は最大120の入力を監視し、限界値はアビオニクスベイ3のC/W電子ユニットに記憶する。乗員はパネルR13Uで限界値を変更できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-06 | バックアップC/W（ソフトウェア）は、システム管理の故障検出・表示（FDA）、GNC、バックアップ飛行システムのソフトウェアの一部である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-07 | C/W電子ユニットの電源A・Bは、それぞれ必須母線ESS 1BCとESS 2CAから給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-41 | 各系（APU/HYD・DPS・ECLSS・EPS・GN&C・MPS・RCS・OMS） | データ・指令 | 受信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |
| IF-ORB-42 | データ処理系（DPS） | データ・指令 | 受信 | 計算機からの入力はMDMを通じてソフトウェアのC/W論理に入り、警報音とBACKUP C/W ALARMを作動させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）アラートのパラメータが限界を超えると、青いSM ALERTライトが点灯し、主C/W系へ信号を送って警報音を鳴らし、ソフトウェアが故障メッセージを表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） | 下位: IF-DPS-12 |
| IF-ORB-43 | 通信・追跡（C&T） | データ・指令 | 送信 | 聴覚の合図は通信系へ送られ、乗員のヘッドセットやスピーカボックスへ配られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113） | 下位: IF-CT-09 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-CW-PRI-001](SSD-FD-CW-PRI-001.md) | 主C/W（ハードウェア）（PRI）機能説明書 |
| [SSD-FD-CW-BKP-001](SSD-FD-CW-BKP-001.md) | バックアップC/W（ソフト）（BKP）機能説明書 |
| [SSD-FD-CW-ALT-001](SSD-FD-CW-ALT-001.md) | アラート・限界表示（ALT）機能説明書 |
| [SSD-FD-CW-ANN-001](SSD-FD-CW-ANN-001.md) | 表示・警報音（ANN）機能説明書 |
| [SSD-FD-CW-OPS-001](SSD-FD-CW-OPS-001.md) | C/W運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図62 C/W 機能構成、関係する公開文書は SSD-CW-REF-001（図63 C/W 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** クラス1（緊急）の2つの警報のうち、煙検知・消火はECLSSの煙検知・消火系（SSD-FD-ECL-FDS-001）、急減圧は圧力制御系で扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-CW-01〜ACT-CW-07）と図39 に示す。

> **注記** 本系を扱う運用資料の章・節（●主対象・○関連）は、運用飛行規則が A9（○）、A17（○）（[SSD-OPS-REF-001](SSD-OPS-REF-001.md) §3・図10）、乗員運用マニュアルが 2.2（●）（[SSD-OPS-REF-002](SSD-OPS-REF-002.md) §3・図11）である。

> **注記** 下位機能説明書5件（PRI・BKP・ALT・ANN・OPS）と図62への展開を追加した。IF-ORB-41（各系→C/W）は、各系がすでに定義した下位IF（IF-GNC-20・IF-DPS-11・IF-MPS-07・08・IF-OMS-14〜16・IF-RCS-12〜15・IF-APU-15・16）を同じ番号のまま図62に描き、ECLSSからの入力だけを新しい下位IF（IF-CW-02・03）とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）

> **注記** 煙検知・消火（クラス1）の検知と消火そのものはECLSSの火災検知・消火系（図3）で扱い、本系では警報音・表示の発報（ANN）だけを扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117）

> **注記** C/Wの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-CW-001](SSD-REQ-CW-001.md) に示す。

> **注記** C/Wの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-CW-001](SSD-FMEA-CW-001.md) に示す。

> **注記** C/W の警告灯ごとの監視する機能ブロック・検知する故障・処置は [SSD-FDIR-ORB-001](SSD-FDIR-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-FDIR-ORB-001.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Class 1 - Emergency（PDF p114） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
4. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p117） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117
5. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
6. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（Rev. I で図2に追加したブロック。公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. B | 2026-10-01 | 運用飛行規則・乗員運用マニュアルの該当章・節（SSD-OPS-REF-001・002、図10・図11）を注記（Rev. L） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | IF-ORB-14 に下位 IF（IF-GNC-11 ほか14件）を付記、IF-ORB-41 に下位 IF（IF-GNC-20 ほか13件）を付記、IF-ORB-42 に下位 IF（IF-DPS-12）を付記、IF-ORB-43 に下位 IF（IF-CT-09）を付記（Rev. R） |
| Rev. E | 2026-10-02 | 下位機能説明書（5件）と図62への展開を追加し、IF-ORB-14・41 に下位IF（IF-CW）を付記、注記（IFの分け方、クラス1の扱い）を追加（Rev. V） |
| Rev. F | 2026-10-02 | 要求文書 SSD-REQ-CW-001 への参照を注記（Rev. W） |
| Rev. G | 2026-10-02 | 故障解析表 SSD-FMEA-CW-001 への参照を注記（Rev. X） |
| Rev. H | 2026-10-03 | 故障検知・処置対応表 SSD-FDIR-ORB-001 への参照を注記（Rev. AP） |
