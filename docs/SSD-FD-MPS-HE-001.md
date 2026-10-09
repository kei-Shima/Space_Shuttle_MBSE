# ヘリウム・空圧（HE）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-HE-001 |
| 表題 | ヘリウム・空圧（HE）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図50 MPS 機能構成 |

## 1. 目的

10個のヘリウムタンクと遮断弁・調圧器・逆止弁・相互接続弁などから成るMPSヘリウム系の、エンジンごとの3系統と空圧系統によるエンジンのパージ・空圧停止・推進薬弁の作動・ダンプと再突入のパージ・再加圧への供給と、系統間の相互接続の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-HE-01 | MPSヘリウム系は4.7 ft3のタンク7個と17.3 ft3のタンク3個、調圧器・逆止弁・分配ライン・制御弁から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/596） |
| F-MPS-HE-02 | ヘリウム系はエンジン内の飛行中のパージ、緊急の空圧停止でのエンジン弁の作動、PMSの空圧弁の作動に使われ、再突入では残りのヘリウムをパージと再加圧に使うが、OMSやRCSと違って推進薬タンクの加圧には使わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/596） |
| F-MPS-HE-03 | ヘリウム供給系は3基のエンジンごとの3系統と推進薬弁を操作する4つ目の空圧系統に分かれ、すべての弁はばねで一方に保持されて電気で他方へ作動し、タンク遮断弁はばねで閉・空圧で開となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/596） |
| F-MPS-HE-04 | タンクはチタンライナにガラス繊維を巻いた複合構造で、大タンクは直径40.3インチ・乾燥質量272 lb、小タンクは直径26インチ・73 lbで、打上げ前に4,100〜4,500 psiに充填される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598） |
| F-MPS-HE-05 | 4.7 ft3タンクのうち4個は後部胴体に、3個と17.3 ft3タンク3個はペイロードベイ下の中胴にあり、各大タンクは小タンク2個とつながって3個1組の3群を成し、各群は通常1基のエンジンだけに供給する（左・中央・右エンジンのヘリウム）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598） |
| F-MPS-HE-06 | 残る1個の4.7 ft3タンクは空圧ヘリウム供給タンクと呼ばれ、PMSのすべての空圧作動弁を動かす圧力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598） |
| F-MPS-HE-07 | 8個のタンク遮断弁が2個1組で各群と空圧タンクにつながり、エンジン系統では各組の2個が並列で二重冗長の供給回路の各脚の流れを制御し、各回路は逆止弁2個・フィルタ・遮断弁・調圧器・逃がし弁から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598） |
| F-MPS-HE-08 | エンジン系統の各タンク群には2個の調圧器が並列にあり、各調圧器は二重冗長の回路の1脚を730〜785 psiaに調圧して、主エンジンが必要とするヘリウムの全量を供給できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598） |
| F-MPS-HE-09 | 空圧系統の調圧器は冗長でなく715〜770 psigに調圧し、その下流のLH2・LO2マニホールド調圧器はダンプとマニホールド加圧のときだけ使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599） |
| F-MPS-HE-10 | 空圧系統と左エンジン系統の間のクロスオーバ弁は冗長でない空圧調圧器のバックアップで、空圧ヘリウムの調圧器の故障や漏れのときに左エンジン系統から調圧したヘリウムを空圧の分配系へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599） |
| F-MPS-HE-11 | 上昇中は4つのヘリウム系統が独立に動作するが、ダンプ・パージや漏れのときは相互接続弁（各エンジン系統にIN OPENとOUT OPENの2個、逆止弁で一方向に流す）で他の系統からヘリウムを引き込める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599） |
| F-MPS-HE-12 | 各SSMEにはエンジン系統のヘリウムで加圧されたマニホールドに電磁弁を持つ空圧制御組立が1基ずつあり、制御器の出力電子回路の指令で高圧酸化剤ターボポンプ中間シール空洞とプリバーナ酸化剤ドームのパージ、ポゴ系のポストチャージ、空圧停止を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| F-MPS-HE-13 | 再突入でVREL 5,300 fpsになるとヘリウムブローダウン弁が開いて後部区画・OMSポッド・LH2アンビリカル空洞を650秒間連続してパージし、ブローダウン弁は手動で操作できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/612） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MPS-06 | 電力系（EPS） | 電力（28 VDC） | 受信 | EPSは、推進薬管理系とヘリウム系の弁・トランスデューサを動かす直流電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577）ALC 1・2・3（APC 4・5・6）を失うと、中央・左・右のSSMEのヘリウム遮断弁Aが閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618） | 上位: IF-ORB-14 |
| IF-MPS-07 | 警報系（C/W） | データ・指令 | 送信 | ヘリウムのタンク圧（1,150 psia未満）と調圧器Aの圧力（680 psia未満・810 psia超）の限界逸脱は、パネルF7のC/WマトリクスのMPSライト（赤）を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603）ハードウェアC&Wでは、中央・左・右のヘリウムのタンク圧と調圧器圧がそれぞれ別のチャネルに割り当てられている。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-MPS-12 | 主エンジン本体 | 推進薬・流体 | 送信 | 各タンク群のヘリウムは担当のエンジンへ送られ、飛行中のパージと緊急の空圧停止でのエンジン弁の作動に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）各SSMEの空圧制御組立はエンジン系統のヘリウムで加圧され、制御器の指令で中間シール空洞のパージ、ポゴ系のポストチャージ、空圧停止を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） | — |
| IF-MPS-13 | 推進薬供給 | 推進薬・流体 | 送信 | 空圧ヘリウム供給タンクは、推進薬管理系のすべての空圧作動弁を動かす圧力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）タイプ1の弁では、開・閉の各ポートの電磁弁に通電するとヘリウムの圧力で空圧弁が開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/595） | — |
| IF-MPS-14 | 充填・ダンプ・不活性化 | 推進薬・流体 | 送信 | 空圧ヘリウム調圧器下流のマニホールド加圧弁が、通常のLO2ダンプと再突入時のLH2・LO2マニホールドの再加圧のためにヘリウムを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600）MECO+20秒にGPCが空圧ヘリウムとエンジンヘリウムの系統を相互接続し、10個のタンクすべてを共通のマニホールドにつないでダンプに十分なヘリウムを確保する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） | — |
| IF-MPS-18 | MPS運用管理 | データ・指令 | 受信 | 乗員はパネルR2のHe ISOLATION A・B（LEFT・CTR・RIGHT）スイッチで各エンジン系統の遮断弁を個別に操作し、ヘリウム漏れの隔離手順を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598）He INTERCONNECT LEFT・CTR・RIGHTスイッチ（IN OPEN・GPC・OUT OPEN）は、各エンジン系統の相互接続弁の組を1個のスイッチで操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Helium System」（PDF p596〜600）：ヘリウムタンク、遮断弁、調圧器、クロスオーバ弁、相互接続弁、マニホールド加圧、空圧制御組立を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/596） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-10〜A5-12・A5-151〜A5-153・A5-208・A5-209（PDF p1029〜1119）：ヘリウム漏れの定義、MECO前の漏れの隔離・相互接続・手動停止、MECO後と再突入のヘリウム隔離、再突入のパージとマニホールド加圧を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1029） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p103）：ヘリウム充填終了時（T-13秒）のタンク圧を4,000〜4,500 psiaとし、上限超過は機器の過圧、下限未満は任務に必要なヘリウム量の不足を招くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=103） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-3092（PDF p435）：エンジン系統のヘリウム遮断弁の故障がエンジン停止と後部区画の過圧のおそれを招くとして、臨界度1/1を記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=435） |
| MP-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：ハードウェアC&WのチャネルにMPSのヘリウムのタンク圧（9・19・29）と調圧器圧（39・49・59）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| MP-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMM SSR-27 OI DSC LOST: OA1（PDF p105）：OA1の喪失で中央エンジンのMPS He Tk PとMPS He REG Pの計測を失い、該当するC/Wパラメータを抑止する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=105） |
| MP-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 8-2 MPS VACUUM INERT（PDF p232）：真空不活性化の開始時に空圧ヘリウムの遮断弁を開き、終了時にGPCへ戻す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=232） |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：ヘリウム系が打上げ前の期間に満足に動作したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：MPSのヘリウム系が軌道上で満足に動作したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：マニホールドの加圧圧力を、SCOM（PDF p599）はLH2・LO2の両マニホールド調圧器とも20〜25 psigとし、同じ節（PDF p600）はダンプと再突入の再加圧でLH2マニホールドを17〜30 psig、LO2マニホールドを20〜25 psigに加圧するとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600）

> **注記** IOA（1988年）は、ヘリウムブローダウン弁（LV26・LV27）について不十分なパージが機体の喪失を招きうるとし、RI/NASAがこの故障モードを通常3/3・アボート1/1の臨界度でFMEA 0233-3に加えたことを受け入れた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=486）

> **注記** IOA（1988年）は、エンジン系統のヘリウム遮断弁の故障はエンジン停止と任務の喪失を招き、漏れたヘリウムが後部区画を過圧するおそれがあるとしてRI/NASAが臨界度を1/1に改めたことを受け入れた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=435）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p596） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/596
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p598） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/598
3. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p599） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/599
4. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p600） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p612） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/612
6. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p618） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/618
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p603） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603
9. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
10. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p595） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/595
11. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p609） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609
12. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.16 MPS-4191 He Supply Blowdown Valve (LV26, LV27)（PDF p486） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=486
13. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.16 MPS-3092 Engine Helium Supply Isolation Valve（PDF p435） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=435
14. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
