# APU制御器（CTL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-CTL-001 |
| 表題 | APU制御器（CTL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

各APUのデジタル制御器が、タービン回転数の制御（NORM 103%・HIGH 113%）、過速度・低速度による自動停止、始動の論理と起動準備完了の表示、ギアボックスの加圧とガス発生器床ヒータの制御、計測値のGPCへの送出を行う機能と、自動停止を禁止する運用を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-CTL-01 | 各APUは専用のデジタル制御器を持ち、制御器は故障を検知し、タービン回転数、ギアボックスの加圧、燃料ポンプ・ガス発生器のヒータを制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） |
| F-APU-CTL-02 | 制御器はパネルR2のAPU CNTLR PWRスイッチで入切し、ONで制御器とAPUに28 V直流電力が送られ、制御器は内部の2重の遠隔電力制御器で冗長に給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） |
| F-APU-CTL-03 | APU 1・2・3の制御器は、それぞれ後部アビオニクスベイ4・5・6の棚3のコールドプレートに取り付けられる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=100） |
| F-APU-CTL-04 | 通常の運転では主制御弁がパルス動作でAPUの回転数を約74,000 rpm（103%）に保ち、副制御弁は113%で制御しようとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| F-APU-CTL-05 | 主燃料制御弁のパルスの頻度と長さはAPUにかかる油圧の負荷で決まり、回転数が目標を超えると弁が閉じて燃料はバイパス管で燃料ポンプの入口へ戻る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） |
| F-APU-CTL-06 | APU SPEED SELECTスイッチのNORMは回転数を74,160 rpm（103%±8%）、HIGHは81,360 rpm（113%±8%）に制御し、HIGHでは82,800 rpm（115%）が第2の予備となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） |
| F-APU-CTL-07 | 自動停止を有効にした制御器は、回転数が57,600 rpm（80%）未満または92,880 rpm（129%）超になるとAPUを停止し、停止の指令で副燃料弁と燃料タンク隔離弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） |
| F-APU-CTL-08 | 始動の論理は、始動指令から10.5秒間は低速度の検査を遅らせて正常な回転数に達する時間を与えるが、過速度の検査は遅らせない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） |
| F-APU-CTL-09 | R2のAPU/HYD READY TO START表示は、ガス発生器温度190°F超、タービン回転数80%未満、WSB制御器の準備完了、燃料タンク隔離弁の開、主油圧ポンプの減圧がそろうと灰色になり、始動して80%を超えるとバーバーポールになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） |
| F-APU-CTL-10 | タービン回転数は3個の磁気ピックアップ（MPU）が制御器に与え、2個のMPUが故障すると4つの回転数制御チャンネルのうち3つが低速度を判定してAPUが停止する（A10-26の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1551） |
| F-APU-CTL-11 | デジタル制御器の冗長性により誤った自動停止は極めて起こりにくく、始動から10.5秒を過ぎた後の誤停止には制御器部品またはMPUの2つ以上の故障が必要である（A10-26の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1548） |
| F-APU-CTL-12 | APU AUTO SHUT DOWNスイッチをINHIBITにすると自動停止だけが禁止され、80%未満・129%超ではAPU UNDERSPEED・APU OVERSPEEDの灯と警報音は出続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-APU-02 | ヒドラジン燃料供給 | データ・指令 | 双方向 | APU制御器は主燃料制御弁をパルス駆動してAPUの回転数を保ち、主弁が電力を失って全開になると副弁がパルス駆動で回転数を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）各燃料タンクの温度とGN2圧力はAPU制御器が監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85） | — |
| IF-APU-06 | タービン・ギアボックス | データ・指令 | 双方向 | APU制御器は、ギアボックス圧力が5.2 psi未満になると潤滑油系のGN2加圧弁を通電して開き、掃気と潤滑油ポンプの運転に必要なギアボックス圧力を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88）ガス発生器床ヒータは、床温度センサの信号を受ける制御器内の比較器で360〜425°Fに保たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94） | — |
| IF-APU-12 | DPS：飛行ソフトウェア・MMU | データ・指令 | 送信 | APU制御器は燃料タンクの温度とGN2圧力をGPCへ送り、GPCが燃料量を計算して専用のMEDS表示のAPU FUEL/H2O QTY計に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85）潤滑油ポンプの出口圧力・出口温度とWSBからの戻り温度は、APU制御器からGPCを経てBFS SM SYS SUMM 2に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） | 上位: IF-ORB-23 |
| IF-APU-15 | 警報系（C/W） | データ・指令 | 送信 | APU制御器が監視する回転数が80%未満または129%超になると、自動停止の有効・禁止によらずF7のAPU UNDERSPEED・APU OVERSPEEDの警報灯が点灯し、警報音が出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）主C/WのハードウェアにはAPU 1〜3のOVERSPEED（チャンネル68・78・88）とUNDERSPEED（98・108・118）が割り当てられている。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-APU-17 | 電力系（EPS）：直流配電 | 電力（28 VDC） | 受信 | パネルR2のAPU CNTLR PWRスイッチをONにすると、その制御器とAPUに28 V直流電力が送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88）APU・燃料系・水系のヒータもパネルA12のスイッチで給電され、サーモスタットで自動制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94） | 上位: IF-ORB-14 |
| IF-APU-19 | APU/HYD運用管理 | データ・指令 | 受信 | パネルR2のAPU OPERATEスイッチをSTART/RUNにすると、対応する制御器がAPUの始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）APU AUTO SHUT DOWNスイッチをENABLEにすると制御器の自動停止の機能が有効になり、INHIBITにすると禁止される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Electronic Controller（PDF p88〜92）：デジタル制御器による回転数の制御（NORM 103%・HIGH 113%）、自動停止（80%・129%）、起動準備完了の論理を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-26（PDF p1548〜1552）：自動停止を禁止する条件と再び有効にする条件、説明のつかない低速度停止の後の再起動（MPUの2重故障の切り分け）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1548） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | APU/HYD SSR-5（PDF p46）：起動前にAPU AUTO SHUTDN（3個）をENA、APU SPEED SEL（3個）をNORMにし、APU CNTLR PWRを入れる手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=46） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.4.3節（PDF p168）：ガス発生器ヒータの故障時に起動に安全なガス発生器・噴射器の最低温度を+190°Fとする（起動準備完了の条件の一つ）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=168） |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）と表7-2（p96）：主C/WのチャンネルにAPU 1〜3のOVERSPEED（68・78・88）・UNDERSPEED（98・108・118）を割り当て、APU回転数のBFSの限界を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-15（PDF p205）：FCSチェックアウトの起動前に、AUTO SHTDN（3個）をENA、SPEED SEL（3個）をNORMとし、APU CNTLR PWRを入れる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=205） |
| AP-08 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 表4-1（PDF p100）：APU 1・2・3の制御器を後部アビオニクスベイ4・5・6のコールドプレート（棚3）に置くと示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=100） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p46（IFA STS-114-V-09）：APU 2の圧力・温度の表示が約2秒失われ、同時に主母線Bの後部電力制御器5の電流が下がったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | APU System（PDF p44）：STS-115以後のAPU 1のガス発生器床ヒータの下側の設定点のずれが、予想どおり再現したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |

## 5. 注記（出典間の相違・構成変更）

> **注記** APUが高速側へ移る（APU SPD HI）原因はAPU制御器の電子回路の故障か主制御弁の開固着であり、乗員はAPUを高速の制御にして制御器の高速側の論理を確実にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/885）

> **注記** 高速側へ移ったAPUの自動停止は禁止しない。両方の制御弁が開固着したときの過速度に対する唯一の保護が、燃料タンク隔離弁による自動停止だからである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/886）

> **注記** 検証メモ：STS-115以後、APU 1のガス発生器床ヒータの下側の設定点がずれる事象が知られており、STS-125でも予想どおり再現した（異常として記録されていない）。床ヒータの温度は制御器内の比較器で制御される（SCOM PDF p94）ため、本書は制御器の機能の事例とした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p88） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88
2. USA006020 Rev. B ECLSS 21002 訓練マニュアル 表4-1 Aft coldplate-cooling matrix（PDF p100） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=100
3. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p87） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87
4. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p89） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89
5. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p90） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-26 APU AUTO SHUTDOWN INHIBIT MANAGEMENT（PDF p1551） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1551
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-26 APU AUTO SHUTDOWN INHIBIT MANAGEMENT（PDF p1548） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1548
8. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p106） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/106
9. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p85） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85
10. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p94） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94
11. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
12. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p885） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/885
13. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p886） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/886
14. NSTS-37452 STS-125 Mission Report（2010） Auxiliary Power Unit System（PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=44
15. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
