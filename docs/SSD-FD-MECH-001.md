# 機械系（MECH）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MECH-001 |
| 表題 | 機械系（MECH）機能説明書 |
| 版・日付 | Rev. H／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

展開・格納・開閉する機構（着陸装置・制動・前輪操舵・ドラッグシュート、アクティブベント、ETアンビリカル扉、ペイロードベイドア）の機能と、構造・補助動力／油圧・データ処理系・電力系とのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MECH-01 | 機械系は展開・格納・開閉を要する構成品で、アクティブベント系、ETアンビリカル扉、ペイロードベイドア、展開式放熱器、着陸・減速系を含み、それぞれを電気または油圧のアクチュエータで動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-02 | 電気機械式アクチュエータ（PDU）は2基の3相交流モータを持ち、モータとリミットスイッチの電力はモータ制御組立（MCA）から供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619） |
| F-MECH-03 | 着陸装置は前脚と左右の主脚から成る三脚式で、各脚は緩衝支柱と2組の車輪・タイヤを持ち、主脚の各車輪はアンチスキッド付きのブレーキを備える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） |
| F-MECH-04 | 乗員が脚下げを指令すると、油圧系1の圧力で各脚のアップロックフックが外れ、脚はばね・油圧アクチュエータ・空気力・重力で下がって、10秒以内に下げ位置でロックされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544） |
| F-MECH-05 | 4つの主脚車輪はそれぞれ電気油圧式ディスクブレーキとアンチスキッド系を備え、制動系は油圧系1・2を常用、系3を予備とし、3系統の主直流電源をすべて使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547） |
| F-MECH-06 | 前脚の油圧操舵アクチュエータは機長・操縦手のラダーペダルからの電子指令に応答し、GPCモードとキャスタモードがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） |
| F-MECH-07 | ドラッグシュートは垂直安定板の基部に収納され、機首下げの前に機長または操縦手の冗長な指令で手動展開して、滑走中の減速を補助する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546） |
| F-MECH-08 | アクティブベント系は、地上の大気から宇宙の真空まで、機体の非与圧区画を周囲の環境と均圧させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） |
| F-MECH-09 | 外部タンク分離後は、露出した2つの後部アンビリカル開口をET扉で閉じ、再突入加熱から保護する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623） |
| F-MECH-10 | ペイロードベイドアは、ペイロードの放出・回収のための開口を与え、中部胴体を構造的に支持し、ECLSSの放熱器を収める。各扉は1基の電気機械式アクチュエータで開閉し、計32個のラッチで閉じた状態に保持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-38 | 構造（STR） | 構造・荷重 | 双方向 | ペイロードベイドアは中部胴体を構造的に支持し、各扉は13個のヒンジ（固定5・可動8）で中部胴体に結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627）ペイロードベイドアのロンジロンと関連構造は13個のヒンジに取り付けられ、ヒンジがドアからの鉛直反力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） | 下位: IF-MECH-02 下位: IF-MECH-03 下位: IF-MECH-04 |
| IF-ORB-39 | 補助動力・油圧（APU/HYD） | 油圧 | 受信 | 脚下げを指令すると、油圧系1の圧力で各脚のアップロックフックが外れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544）4つの主脚ブレーキにはそれぞれ2系統の油圧系から圧力を供給し、油圧系1・2の圧力が約1,000 psiを下回ると切替弁で油圧系3に切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/548）油圧系1・2は、前輪操舵系NWS 1・2のいずれにも冗長な油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551） | 下位: IF-APU-11 |
| IF-ORB-40 | データ処理系（DPS） | データ・指令 | 受信 | 機構の指令はGPC、DPSの項目入力、配線スイッチから出てMDMを経由してMCAへ送られ、各アクチュエータのモータは別々のMDMから指令される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619）ベント扉は、マスタタイミングユニット、メジャーモード遷移、速度、DPS項目入力で起動するGNCソフトウェアのシーケンスで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | 下位: IF-DPS-10 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-MECH-ACT-001](SSD-FD-MECH-ACT-001.md) | 電動駆動（PDU・MCA）（ACT）機能説明書 |
| [SSD-FD-MECH-PLB-001](SSD-FD-MECH-PLB-001.md) | ペイロードベイドア（PLB）機能説明書 |
| [SSD-FD-MECH-VNT-001](SSD-FD-MECH-VNT-001.md) | ベント・ETアンビリカル扉（VNT）機能説明書 |
| [SSD-FD-MECH-LDG-001](SSD-FD-MECH-LDG-001.md) | 降着装置（LDG）機能説明書 |
| [SSD-FD-MECH-DEC-001](SSD-FD-MECH-DEC-001.md) | 制動・操向・減速傘（DEC）機能説明書 |
| [SSD-FD-MECH-OPS-001](SSD-FD-MECH-OPS-001.md) | MECH運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図68 MECH 機能構成、関係する公開文書は SSD-MECH-REF-001（図69 MECH 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 展開式放熱器は機械系に含まれるが、機能はSCOM 2.9節に従い熱制御（SSD-FD-TCS-RAD-001）で扱い、本書では扉と機構のみを扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-MECH-01〜ACT-MECH-12）と図39 に示す。

> **注記** 本系を扱う運用資料の章・節（●主対象・○関連）は、運用飛行規則が A10（●）、A16（○）（[SSD-OPS-REF-001](SSD-OPS-REF-001.md) §3・図10）、乗員運用マニュアルが 2.14（●）、2.17（●）、第4章（○）、第6章（○）（[SSD-OPS-REF-002](SSD-OPS-REF-002.md) §3・図11）である。

> **注記** 下位機能説明書6件（ACT・PLB・VNT・LDG・DEC・OPS）と図68への展開を追加した。IF-ORB-38（構造）は、PLBDのヒンジ・脚の取付け・ベント口の3つの下位IF（IF-MECH-02〜04）に分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627）

> **注記** IF-ORB-39（油圧）とIF-ORB-40（DPS）は、APU/HYD・DPSがすでに定義した下位IF（IF-APU-11・IF-DPS-10）を同じ番号のまま図68に描いた。IF-APU-11は脚の展開・制動・前輪操向の油圧をまとめたIFで、図68では制動・操向のブロックにつないだ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543）

> **注記** MECHの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-MECH-001](SSD-REQ-MECH-001.md) に示す。

> **注記** MECHの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-MECH-001](SSD-FMEA-MECH-001.md) に示す。

> **注記** ペイロードベイドアを閉じられないときの処置（非常時 EVA を含む）の活動図（図88）は [SSD-BEH-ORB-004](SSD-BEH-ORB-004.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-004.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p619） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619
2. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p543） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543
3. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p544） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/544
4. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p547） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/547
5. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p551） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/551
6. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p546） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/546
7. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
8. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p623） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623
9. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p627） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627
10. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p60） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60
11. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p548） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/548
12. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
13. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（Rev. I で図2に追加したブロック。公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. B | 2026-10-01 | 運用飛行規則・乗員運用マニュアルの該当章・節（SSD-OPS-REF-001・002、図10・図11）を注記（Rev. L） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | IF-ORB-14 に下位 IF（IF-GNC-11 ほか14件）を付記、IF-ORB-39 に下位 IF（IF-APU-11）を付記、IF-ORB-40 に下位 IF（IF-DPS-10）を付記（Rev. R） |
| Rev. E | 2026-10-02 | 下位機能説明書（6件）と図68への展開を追加し、IF-ORB-14・38 に下位IF（IF-MECH）を付記、注記（IFの分け方）を追加（Rev. V） |
| Rev. F | 2026-10-02 | 要求文書 SSD-REQ-MECH-001 への参照を注記（Rev. W） |
| Rev. G | 2026-10-02 | 故障解析表 SSD-FMEA-MECH-001 への参照を注記（Rev. X） |
| Rev. H | 2026-10-02 | 活動定義書 SSD-BEH-ORB-004 への参照を注記（Rev. AC） |
