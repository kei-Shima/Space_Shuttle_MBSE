# データ処理系（DPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-001 |
| 表題 | データ処理系（DPS）機能説明書 |
| 版・日付 | Rev. L／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

データ処理系の機能と、機上各系・地上系とのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-01 | DPSのハードウェアは、5台のGPC、大容量記憶用の2台のモジュラメモリユニット（MMU）、GPCと機体各系の間のデータを運ぶシリアルデジタルデータバス網、オービタ用20台・SRB用4台のMDM、SSMEへ指令する3台のSSMEインタフェースユニット、多機能電子表示系（MEDS）などから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225） |
| F-DPS-02 | 5台のGPCはいずれもIBM AP-101Sで、中央処理装置（CPU）と入出力プロセッサ（IOP）で構成される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226） |
| F-DPS-03 | 上昇・再突入などの飛行重要フェーズでは、4台のGPCが同一コードを同時に実行して入出力を同期する冗長セットを構成し、5台目はRockwellが独立に開発したバックアップ飛行システム（BFS）用に確保される。（出典: https://dl.acm.org/doi/pdf/10.1145/358234.358246） |
| F-DPS-04 | BFSは、乗員の操作によってのみ起動（エンゲージ）できる。（出典: https://dl.acm.org/doi/pdf/10.1145/358234.358246） |
| F-DPS-05 | 機上の全サブシステムは少なくとも2本のデータバスに冗長接続され、データバスは24本あり、マルチプレクサを介して各系が共用する。（出典: https://www.hq.nasa.gov/office/pao/History/computers/Ch4-3.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-01 | 通信・追跡（C&T） | データ・指令 | 双方向 | 地上へのダウンリンクには、GPCが収集したデータ（ダウンリスト）、ペイロードデータ、計測データ、機上音声が含まれる。（出典: https://www.spaceshuttleguide.com/system/navigation.htm）機上の状態ベクトルは、地上管制網から通信アップリンクで定期的に更新される。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm） | 下位: IF-CT-05 下位: IF-CT-06 下位: IF-CT-07 下位: IF-CT-21 下位: IF-CT-22 下位: IF-CT-23 下位: IF-CT-24 下位: IF-CT-25 |
| IF-ORB-02 | 誘導・航法・制御（GN&C） | データ・指令 | 双方向 | 上昇・再突入では、5台中4台のGPCに同一のPASSソフトウェアを搭載し、GN&C機能を同時・冗長に実行する。（出典: https://www.spaceshuttleguide.com/system/navigation.htm） | 下位: IF-DPS-03 下位: IF-DPS-04 下位: IF-DPS-22 |
| IF-ORB-06 | 主推進系（MPS） | データ・指令 | 送信 | DPSには、SSMEへ指令を送る3台のSSMEインタフェースユニットが含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）MPSは、データ処理系と重要なインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） | 下位: IF-DPS-05 |
| IF-ORB-13 | 環境制御・生命維持（ECLSS） | 熱 | 受信 | 乗員室とフライトデッキの電子機器の排熱は、循環する冷却水系で集められ、ペイロードベイドアの放熱パネルへ運ばれる（図ではアビオニクスの代表としてDPSに接続）。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS.pdf） | 下位: IF-ECL-08 下位: IF-ECL-25 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-17 | 打上げ処理システム | データ・指令 | 双方向 | 2系統の双方向の打上げデータバス（LDB）が、機上コンピュータ系と打上げ処理システムを結ぶ。（出典: https://dl.acm.org/doi/pdf/10.1145/358234.358246） | 上位: IF-SYS-06 下位: IF-DPS-06 |
| IF-ORB-18 | SRB×2 | データ・指令 | 送信 | DPSには、SRB用のMDMが4台含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）ATVCは、打上げ・第1段上昇中にSRBの推力方向も制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 上位: IF-SYS-03 下位: IF-DPS-07 |
| IF-ORB-19 | 環境制御・生命維持（ECLSS） | データ・指令 | 双方向 | 水冷却ループのポンプ出口圧力とポンプ前後の差圧はシステム管理用GPCへ送られ、DPS表示（DISP 88 APU/ENVIRON THERM）に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）煙検知素子は警報を発し、煙濃度の情報をCRTと計器盤L1に表示する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html）FES制御器は、GPC位置ではバックアップ飛行システム（BFS）の計算機が自動でオン・オフする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） | 下位: IF-ECL-18 下位: IF-ECL-28 下位: IF-ECL-29 下位: IF-ECL-35 下位: IF-ECL-36 下位: IF-ECL-37 下位: IF-ECL-38 |
| IF-ORB-20 | 電力系（EPS） | データ・指令 | 双方向 | GPCは燃料電池のパージ配管ヒータを制御し、配管温度を確認した後、燃料電池1・2・3のパージ弁を順に2分間開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326）燃料電池の冷却材圧力やスタック温度などはSM SPEC 69に表示され、燃料電池・スタック温度が上下限を超えるとSM警報のライトが点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327） | 下位: IF-EPS-09 |
| IF-ORB-23 | 補助動力・油圧（APU/HYD） | データ・指令 | 双方向 | 各燃料タンクの温度と窒素圧力はAPU制御器が監視してGPCへ送り、GPCが燃料量を計算して専用表示器に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85）循環ポンプのスイッチをGPC位置にすると、SM GPCが油圧配管温度やアキュムレータ圧力に基づく制御プログラムでポンプを入り切りする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） | 下位: IF-APU-12 下位: IF-APU-13 下位: IF-APU-14 下位: IF-APU-25 |
| IF-ORB-25 | 外部タンク（ET） | データ・指令 | 送信 | DPSのハードウェアには、2台のマスターイベントコントローラ（MEC）とマスタタイミングユニットが含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226）マスターイベントコントローラ（MEC）は、SRBを外部タンクから、外部タンクをオービタから切り離す火工品を起爆する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） | 上位: IF-SYS-08 下位: IF-DPS-09 |
| IF-ORB-26 | 固体ロケットブースタ（SRB×2） | データ・指令 | 送信 | 固体ロケットモータの点火指令は、オービタのコンピュータからMECを通じて各SRBのS&A装置のNSI起爆器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74）マスターイベントコントローラ（MEC）は、SRBを外部タンクから、外部タンクをオービタから切り離す火工品を起爆する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） | 上位: IF-SYS-03 下位: IF-DPS-08 |
| IF-ORB-40 | 機械系（MECH） | データ・指令 | 送信 | 機構の指令はGPC、DPSの項目入力、配線スイッチから出てMDMを経由してMCAへ送られ、各アクチュエータのモータは別々のMDMから指令される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619）ベント扉は、マスタタイミングユニット、メジャーモード遷移、速度、DPS項目入力で起動するGNCソフトウェアのシーケンスで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | 下位: IF-DPS-10 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |
| IF-ORB-42 | 警報系（C/W） | データ・指令 | 送信 | 計算機からの入力はMDMを通じてソフトウェアのC/W論理に入り、警報音とBACKUP C/W ALARMを作動させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）アラートのパラメータが限界を超えると、青いSM ALERTライトが点灯し、主C/W系へ信号を送って警報音を鳴らし、ソフトウェアが故障メッセージを表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） | 下位: IF-DPS-12 |
| IF-ORB-48 | ペイロード支援（PDRS・ODS） | データ・指令 | 双方向 | PDRSは、SM GPC、電力分配系（EPDS）、CCTVなど他のオービタ系とインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）MCIUの主な機能は、SM GPC、表示・操作器、RMSとの情報のやり取りを取り扱い、評価することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） | 下位: IF-DPS-13 |
| IF-ECL-08 | 大気再生系（ARS） | 熱 | 受信 | 水冷却ループは、3つのアビオニクスベイの空気／水熱交換器とコールドプレートを通じて電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | 上位: IF-ORB-13 下位: IF-ARS-17 下位: IF-ARS-20 下位: IF-ARS-39 |
| IF-ECL-18 | 煙検知・消火系（FDS） | データ・指令 | 受信 | 煙検知素子は警報を発し、煙濃度の情報をCRTと計器盤L1に表示する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） | 上位: IF-ORB-19 下位: IF-FDS-03 下位: IF-FDS-06 下位: IF-FDS-09 |
| IF-ECL-25 | 能動熱制御系（ATCS） | 熱 | 受信 | フレオンは中胴のコールドプレート網と後部アビオニクスベイ4・5・6を通り、電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-ORB-13 下位: IF-TCS-05 |
| IF-ECL-28 | 能動熱制御系（ATCS） | データ・指令 | 送信 | FES制御器は上昇時の高度140,000 ft超でBFS計算機が自動でオンにし、再突入時の100,000 ftでオフにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389）アンモニア制御器は、オービタがMM 304で高度120,000 ftを降下通過するとき（RTLSアボートではMM 602への移行時）にBFS計算機がオンにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） | 上位: IF-ORB-19 下位: IF-TCS-18 下位: IF-TCS-19 下位: IF-TCS-21 |
| IF-ECL-29 | 大気再生系（ARS） | データ・指令 | 双方向 | スイッチをGPC位置にすると、GPCが水冷却ループのポンプを指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378）ポンプの出口圧力とポンプ前後の差圧はシステム管理用GPCへ送られ、DPS表示（DISP 88 APU/ENVIRON THERM）に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）キャビン熱交換器下流の温度センサのデータはAIR TEMP計器に直接送られ、SM SYS SUMM 1とSPEC 66 ENVIRONMENTにも表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788）キャビン空気のCO2分圧（PPCO2）をSM GPCへ送り、SM OPS 2・4のDISP 66（ENVIRONMENT）に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） | 上位: IF-ORB-19 下位: IF-ARS-30 下位: IF-ARS-31 下位: IF-ARS-25 下位: IF-ARS-26 下位: IF-ARS-27 下位: IF-ARS-28 下位: IF-ARS-29 下位: IF-ARS-37 |
| IF-ECL-35 | 給水・廃水系（H2O） | データ・指令 | 受信 | 給水タンク量A〜Dと給水圧を、軌道上はPASS SMのSPEC 66に、上昇・再突入時はBFSのTHERMAL表示に送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158）廃水タンク量と廃水圧をSPEC 66 ENVIRONMENTに送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160） | 上位: IF-ORB-19 下位: IF-H2O-05 下位: IF-H2O-09 下位: IF-H2O-12 |
| IF-ECL-36 | 圧力制御系（PCS／ARPCS） | データ・指令 | 受信 | 乗員室圧、PPO2 A・B、系統1・2のO2・N2流量を主C&Wのハードウェアチャネル4・14・24・34・44・54・64へ送り、限界外でCABIN ATM灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132） | 上位: IF-ORB-19 下位: IF-PCS-14 |
| IF-ECL-37 | 廃棄物収集系（WCS） | データ・指令 | 受信 | 真空ベントノズル温度（VAC VT NOZ T）をSMのDISP 66 ENVIRONMENTに表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） | 上位: IF-ORB-19 下位: IF-WCS-12 |
| IF-ECL-38 | エアロック支援系（ALS） | データ・指令 | 受信 | エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を、SM OPS 2のSPEC 177 EXTERNAL AIRLOCKに表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） | 上位: IF-ORB-19 下位: IF-ALS-10 |
| IF-EPS-09 | 燃料電池発電装置（FCP×3） | データ・指令 | 双方向 | 自動パージでは、GPCがパージ配管ヒータを入れて温度を確認し、燃料電池1・2・3のパージ弁を順に2分間開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326） | 上位: IF-ORB-20 |
| IF-TCS-05 | 熱交換器・コールドプレート網 | 熱 | 受信 | フレオンは中胴のコールドプレート網と後部アビオニクスベイ4・5・6、レートジャイロ組立のコールドプレートを通り、電子機器を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | 上位: IF-ECL-25 |
| IF-TCS-18 | フラッシュエバポレータ（FES） | データ・指令 | 送信 | FES制御器はGPC位置では、上昇時の高度140,000 ft超でBFS計算機が自動でオンにし、再突入時の100,000 ftでオフにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） | 上位: IF-ECL-28 |
| IF-TCS-19 | アンモニアボイラ（NH3） | データ・指令 | 送信 | 選択したアンモニア制御器（通常はB）は、オービタがMM 304で高度120,000 ftを降下通過するときにBFS計算機がオンにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） | 上位: IF-ECL-28 |
| IF-TCS-21 | フレオン21冷却ループ×2 | データ・指令 | 送信 | FES出口のフレオン温度は計器盤O1で監視でき、32.2°F未満または64.8°F超（軌道投入後）でフレオンループのC/W灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390） | 上位: IF-ECL-28 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-DPS-GPC-001](SSD-FD-DPS-GPC-001.md) | 汎用計算機・冗長セット（GPC）機能説明書 |
| [SSD-FD-DPS-FSW-001](SSD-FD-DPS-FSW-001.md) | 飛行ソフトウェア・MMU（FSW）機能説明書 |
| [SSD-FD-DPS-BUS-001](SSD-FD-DPS-BUS-001.md) | データバス網・MDM（BUS）機能説明書 |
| [SSD-FD-DPS-ASC-001](SSD-FD-DPS-ASC-001.md) | 上昇系インタフェース（ASC）機能説明書 |
| [SSD-FD-DPS-MEDS-001](SSD-FD-DPS-MEDS-001.md) | 表示・キーボード（MEDS）機能説明書 |
| [SSD-FD-DPS-MTU-001](SSD-FD-DPS-MTU-001.md) | マスタタイミングユニット（MTU）機能説明書 |
| [SSD-FD-DPS-OPS-001](SSD-FD-DPS-OPS-001.md) | DPS運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図48 DPS 機能構成、関係する公開文書は SSD-DPS-REF-001（図49 DPS 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：同じ出典に記載されたデータバスの用途別内訳は、合計が24本と一致しない。本書では内訳を記載していない。（出典: https://www.hq.nasa.gov/office/pao/History/computers/Ch4-3.html）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-DPS-01〜ACT-DPS-11）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、大容量記憶を2台の磁気テープ式マスメモリ、MDMをオービタ用19台、表示系を4台の多機能CRT表示系とし、データバスを時分割としていた。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-av.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、GPCをIBM AP-101としていた。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-av.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、ポンプ入口・出口圧力をCRTに表示するとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、アンモニアボイラの制御器もBFSの計算機が自動でオン・オフするとしていたが、SCOMはBFSがアンモニア制御器をオンにすることのみを記す（PDF p392）。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、反応剤の圧力や燃料電池の温度などがCRTに表示され、限界値を超えるとSM警報が出るとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、100,000 ft通過時にBFS計算機がオンにするとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、アンモニア制御器Aを高度100,000 ft通過時にBFS計算機がオンにするとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、32°F未満または60°F超で点灯するとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390）

> **注記** 下位機能説明書7件（GPC・FSW・BUS・ASC・MEDS・MTU・OPS）と下位の図への展開を追加した。IF-ORB-02（GN&C）は、FCストリングのMDMによるGN&C機器の入出力（IF-DPS-03）と、RHCのBFS ENGAGE押しボタンからのエンゲージ信号（IF-DPS-04）の2つの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248）

> **注記** IF-ORB-18（SRB MDM）とIF-ORB-26（MECによるSRBの点火・分離）は相手がどちらもSRBであるが、経路が打上げデータバスのMDMとMECの火工品回路で異なるため、別の下位IF（IF-DPS-07・08）とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74）

> **注記** 電力のIF-ORB-14は代表としてGPCへの給電（IF-DPS-02）だけを下位IFとして描き、MDM（2つの主母線）、MMU（MNA・MNB）、IDP（MN A・B・C）、MTU（ESS 1BC・2CA）の給電は各下位機能説明書の機能の文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236）

> **注記** ECLSS・EPSとのIFは、親の行にある下位の段のIF（IF-ECL-08・18・25・28・29・35・37・38、IF-EPS-09）をそのまま描き、IF-ORB-13・19・20は下位に分けていない。表示するだけのIF（IF-ECL-18・35・37・38）は表示・キーボード（MEDS）に、GPCが指令・自動制御するIF（IF-ECL-28・29、IF-EPS-09）は飛行ソフトウェア・MMU（FSW）に付けた（本書の解釈）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245）

> **注記** IF-ECL-36（PCSから主C&Wのハードウェアチャネル）は、DPSの下位機能を経由しない警報系（SSD-FD-CW-001）への信号であるため下位の図に描かない。主C&Wの入力のうちDPSから来るのはGPCの入出力プロセッサからの5入力とMDMからの15入力で、これをIF-DPS-11とした。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57）

> **注記** 検証メモ：親の説明書の注記は「データバスの用途別内訳の合計が24本と一致しない」とする。SCOMの7群の本数（FC 8・PL 2・打上げ2・大容量記憶2・DK 4・計装/PCMMU 5・ICC 5）の合計は28本で、各GPCのIOPにつながる24本は、各GPC専用の計装/PCMMUバスを自分の1本だけ数えた本数（8+2+2+2+4+1+5）に一致する（本書の計算）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233）

> **注記** 検証メモ：親の説明書のF-DPS-03は上昇・再突入の冗長セットを4台のGPCとするが、SCOMの定義では冗長セットは2台以上のGPCが同じGNCソフトウェアを実行するモードで、軌道上の非臨界期間はGNCに1〜2台を使う（SSD-FD-DPS-GPC-001の検証メモ）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）

> **注記** IF-ORB-01（C&T）とIF-ORB-23（APU/HYD）は7系のほかの親（SSD-FD-CT-001・SSD-FD-APU-001）が所有するため下位IFを定義せず、所有側の下位IFに、データバス網・MDM（BUS：計装/PCMMUバスとNSP経由のアップリンク）と飛行ソフトウェア・MMU（FSW：SM主機能）がそれぞれ接続するとした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234）

> **注記** DPSの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-DPS-001](SSD-REQ-DPS-001.md) に示す。

> **注記** DPSの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-DPS-001](SSD-FMEA-DPS-001.md) に示す。

> **注記** 最終秒読みの RSLS（冗長セット打上げシーケンサ）による射場アボートのシナリオ（図95）は [SSD-UC-ORB-001](SSD-UC-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-UC-ORB-001.sysml）。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Avionics Systems（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-av.html
2. The space shuttle primary computer system（Communications of the ACM, 1984） — https://dl.acm.org/doi/pdf/10.1145/358234.358246
3. NASA History – Computers in Spaceflight, Ch.4-3 — https://www.hq.nasa.gov/office/pao/History/computers/Ch4-3.html
4. Space Shuttle Guide – Guidance, Navigation and Control — https://www.spaceshuttleguide.com/system/navigation.htm
5. NASA SP-504 Section 4 – Avionics System Functions（klabs 転載） — https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm
6. READING: ECLSS（NASA-KLASS 教材） — http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS.pdf
7. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
8. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
9. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
10. NASA Human Space Flight – Shuttle Reference: Smoke Detection and Fire Suppression — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html
11. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
12. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p85） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85
13. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p103） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103
14. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p226） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226
15. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
16. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
17. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p619） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/619
18. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
19. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
20. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
21. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p117） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117
22. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
23. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p689） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689
24. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.6節 Supply and Wastewater System Instrumentation/Displays（PDF p158） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=158
25. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図5-13 SPEC 66 ENVIRONMENT（PDF p160） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=160
26. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Lights（CABIN ATM）（PDF p132） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132
27. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359
28. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8.3節 CRT Displays（PDF p189） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189
29. Shuttle Crew Operations Manual 4.1 Instrument Markings（USA007587 Rev. A CPN-1、PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
30. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
31. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p225） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225
32. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
33. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
34. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p389） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389
35. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p326） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326
36. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p327） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327
37. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
38. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
39. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392
40. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p390） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390
41. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p248） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248
42. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p236） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236
43. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p245） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245
44. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.3節 Primary C&W（PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57
45. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
46. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p229） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229
47. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p234） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | ECLSSとのIF（IF-ORB-19、IF-ECL-08・18・25・28・29）を追記 |
| Rev. B | 2026-09-25 | EPS・熱制御とのIF（IF-ORB-20、IF-EPS-09、IF-TCS-05・18・19・21）を追記 |
| Rev. C | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-23・IF-ORB-25・IF-ORB-26・IF-ORB-40・IF-ORB-41・IF-ORB-42・IF-ORB-48 を追加（Rev. I） |
| Rev. D | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. E | 2026-10-01 | IF-ECL-35 を追加、IF-ECL-36 を追加、IF-ECL-37 を追加、IF-ECL-38 を追加、IF-ECL-29 に ARS の計測の文と下位を付記、IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた、IF-ORB-19 の上位・下位を所有文書（SSD-FD-ECLSS-001）にそろえた、IF-ECL-08 の上位・下位を所有文書（SSD-FD-ECL-ARS-001）にそろえた、IF-ECL-18 の上位・下位を所有文書（SSD-FD-ECL-FDS-001）にそろえた、IF-ECL-29 の上位・下位を所有文書（SSD-FD-ECL-ARS-001）にそろえた（Rev. M） |
| Rev. F | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（21文。うち本文を改めた9文に注記）（Rev. Q） |
| Rev. G | 2026-10-01 | 下位機能説明書（7件）と図への展開を追加し、IF-ORB-02・06・14・17・18・25・26・40・41・42・48に下位IF（IF-DPS）を付記、IF-ECL-08・18・25・28・29・35・37・38とIF-EPS-09を下位の図に再利用、注記・検証メモ（IFの分け方、電力IFの代表、ECLSSのIFの付け先、データバスの本数、冗長セットの定義）を追加（Rev. R） |
| Rev. H | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記（Rev. V） |
| Rev. I | 2026-10-02 | 要求文書 SSD-REQ-DPS-001 への参照を注記（Rev. W） |
| Rev. J | 2026-10-02 | 故障解析表 SSD-FMEA-DPS-001 への参照を注記（Rev. X） |
| Rev. K | 2026-10-03 | 運用シナリオ・ユースケース定義書 SSD-UC-ORB-001 への参照を注記（Rev. AH） |
| Rev. L | 2026-10-04 | IF-ORB-23 に下位 IF-APU-25 を付記した、IF-ORB-02 に下位 IF-DPS-22 を付記した、IF-ORB-01 に下位 IF-CT-21・IF-CT-22・IF-CT-23・IF-CT-24・IF-CT-25 を付記した（Rev. AU） |
