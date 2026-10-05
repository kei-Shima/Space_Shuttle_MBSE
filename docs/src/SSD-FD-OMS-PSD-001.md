# 推進薬貯蔵・分配（PSD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-PSD-001 |
| 表題 | 推進薬貯蔵・分配（PSD）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

各ポッドの燃料タンク・酸化剤タンクと推進薬取得・保持装置による貯蔵、タンク隔離弁からエンジンとクロスフィード弁への分配、静電容量式の容量計測を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-PSD-01 | 推進薬貯蔵・分配系は各ポッドの燃料タンク1基と酸化剤タンク1基、推進薬供給配管、クロスフィード配管、隔離弁、クロスフィード弁から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） |
| F-OMS-PSD-02 | 両ポッドのOMS推進薬で、65,000 lbのペイロードを積んだオービタに1,000 ft/sの速度変化を与えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） |
| F-OMS-PSD-03 | 燃料と酸化剤は各ポッド内のドーム付き円筒形のチタン製タンクに貯蔵され、タンクはヘリウム系で加圧され、内部は前室と後室に分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） |
| F-OMS-PSD-04 | 後端の推進薬取得・保持組立は前後室を仕切るメッシュスクリーンと取得装置から成り、無重量下ではスクリーンの表面張力が後室に推進薬を保持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） |
| F-OMS-PSD-05 | 取得装置は4本のスタブギャラリとコレクタマニホールドから成り、コレクタのガス阻止スクリーンがガスの吸込みを防ぐため、RCSによる推進薬の沈降操作なしにOMSエンジンを点火できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） |
| F-OMS-PSD-06 | 推進薬タンクの公称の使用圧力は250 psi、最大使用圧力の限界は313 psiaである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） |
| F-OMS-PSD-07 | 各タンクの静電容量式の計測系は前後のプローブとトータライザから成り、トータライザはOMS弁の動作情報からどのエンジンがどのタンクで噴射しているかを判断して、全量・後室量・低レベルの信号を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653） |
| F-OMS-PSD-08 | トータライザは噴射開始から14.8秒間は既定の流量で表示量を減じてからプローブの出力で更新し、残量が5%に下がると低レベル信号を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653） |
| F-OMS-PSD-09 | タンク隔離弁A・Bは各ポッドで推進薬タンクとエンジン・クロスフィード弁の間に並列に置かれ、三相（2相でも可）の交流モータで駆動され、パネルO8のLEFT・RIGHT OMS TANK ISOLATIONスイッチ（OPEN・GPC・CLOSE）で制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） |
| F-OMS-PSD-10 | 弁が指令位置に達すると電動機制御組立の論理が弁アクチュエータの電力を切り、各スイッチの上のトークバックは弁のマイクロスイッチにより開・過渡（バーバーポール）・閉を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655） |
| F-OMS-PSD-11 | 後室量が11%未満でスクリーンが露出しているときは、ヘリウムの吸込みを防ぐため、OMSエンジンを再始動する前にRCSの+Xジェット2基で15秒の沈降噴射を行う（A6-102）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1204） |
| F-OMS-PSD-12 | 打上げ時の搭載量はポッドあたり燃料2,038〜4,711.5 lb・酸化剤3,362〜7,743.5 lbの範囲とし、TAEMインタフェースでは酸化剤1,707 lb・燃料1,032 lb未満（搭載量の約22%）とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=141） |
| F-OMS-PSD-13 | STS-114では最初の打上げ試行の後に電源を再投入するとトータライザの出力が既知の特性どおり無作為な値となり、5%未満の表示で警報が出たが、OMSアシストの14秒後にプローブから正しい値に更新された。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-OMS-01 | ヘリウム加圧 | 推進薬・流体 | 受信 | 各ポッドの1基のヘリウムタンクから、圧力弁・二重調圧器・逆止弁を経て約250 psigに調圧したヘリウムで燃料タンクと酸化剤タンクを加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651）1基のヘリウムタンクが両タンクを加圧するので、両タンクは同じ圧力に保たれて混合比の誤りが避けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649） | — |
| IF-OMS-02 | OMSエンジン・GN2系 | 推進薬・流体 | 送信 | タンク隔離弁A・Bの一組を開くと、推進薬タンクの燃料と酸化剤が同じポッドのOMSエンジンとOMSクロスフィード弁へ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655）加圧された推進薬はエンジンの二元推進薬弁組立で受けられ、二元推進薬弁が噴射の開始・停止のために流れを調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） | — |
| IF-OMS-03 | クロスフィード・RCS連結 | 推進薬・流体 | 送信 | 供給側ポッドのタンク隔離弁とOMSクロスフィード弁A（またはB）の組を開き、そのポッドの燃料と酸化剤を左右のポッドを結ぶクロスフィード配管へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） | — |
| IF-OMS-09 | 運用管理（規則・処置） | データ・指令 | 送信 | トータライザの全量はパネルO3のRCS/OMS PRPLT QTY表示に、後室プローブの量はGNC SYS SUMM 2のOMS AFT QTYに示され、推進薬の予算とレッドラインの管理に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653）OMSの使用可能推進薬は、計測した量から配管・タンクに捕捉される量と分散を差し引いて定義される（A6-301）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1246） | — |
| IF-OMS-12 | 電力系（EPS） | 電力（28 VDC） | 受信 | 後部モータ制御組立（AMC 1〜3）は主母線とAC母線、主RCS/OMS母線とRCS/OMS AC母線から電力を受け、AC母線で後部RCS/OMSのタンク隔離弁・クロスフィード弁を駆動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）OMSには主母線・制御母線・交流母線から電力が供給され、スイッチ、弁、計装、ジンバルアクチュエータ、ヒータを動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） | 上位: IF-ORB-14 |
| IF-OMS-15 | 警報系（C/W） | データ・指令 | 送信 | 推進薬タンク圧が232 psia未満か284 psia超になると、パネルF7のLEFT・RIGHT OMS警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653）C/Wのチャネルは、酸化剤タンク圧が7（左）・37（右）、燃料タンク圧が17（左）・47（右）である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Propellant Storage and Distribution（PDF p652〜655）：タンク、取得装置、容量計測、タンク隔離弁を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-2（推進薬タンクの喪失定義）、A6-53（ヘリウム吸込み）、A6-102（沈降噴射）、A6-301（使用可能推進薬）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1186） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.2a（PDF p786）：タンク隔離弁・クロスフィード弁のトークバックのバーバーポールから、AMCの母線の故障や弁の故障を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=786） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p141・p144：搭載量の上下限、TAEMでの残量、取得装置とヘリウム吸込みの制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=144） |
| OM-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：OMSの酸化剤・燃料のタンク圧をチャネル7・17（左）と37・47（右）とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p17：取得系は良好でガスの吸込みはなく、容量計のプローブの改修と表示の停滞を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17） |
| OM-10 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p41：電源の再投入後にトータライザの出力が無作為な値となる既知の特性を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |
| OM-12 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | OMS節（PDF p45）：搭載量と、後室計・噴射時間の積分・SODBの流量による残量の比較を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：パネルF7のLEFT・RIGHT OMS警報灯が点灯する推進薬タンク圧を、SCOMの推進薬タンクの説明（PDF p653）は232 psia未満・284 psia超とし、同じ節の警報の要約（PDF p664）は232未満・288 psi超とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653）

> **注記** STS-1の結果から前方燃料プローブのベント面積の拡大などが勧告されたが、STS-2で交換されたのは右前方燃料プローブだけで、改修しなかった左前方燃料プローブはSTS-1と同様の表示の停滞を起こした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p652） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p653） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/653
3. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p655） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-102 OMS PROPELLANT SETTLING REQUIREMENT（PDF p1204） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1204
5. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.3節 Orbital Maneuvering Subsystem（6. Propellant Loads）（PDF p141） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=141
6. STS-114 Mission Report Orbital Maneuvering System（PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=41
7. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p651） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651
8. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p649） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649
9. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
10. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p656） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-301 OMS USABLE PROPELLANT（PDF p1246） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1246
12. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
13. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
14. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
15. STS-2 Orbiter Mission Report 2.1.2節 Orbital Maneuvering System（続き）（PDF p17） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17
16. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
