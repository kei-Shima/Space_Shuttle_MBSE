# 受動熱制御（PTC：断熱・ヒータ・パージ）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-PTC-001 |
| 表題 | 受動熱制御（PTC：断熱・ヒータ・パージ）機能説明書 |
| 版・日付 | Rev. D／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-TCS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

断熱材・電気ヒータ・パージによる受動的な温度管理の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-PTC-01 | オービタ内部の温度は、内部断熱材、ヒータ、パージによって飛行の各段階で管理される。（出典: https://m.16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/sts_sys.html） |
| F-TCS-PTC-02 | Kaptonの反射膜とDacronのメッシュを交互に重ね、シリカ布で覆ったキルト状の断熱ブランケットが、受動熱制御として機体の各部を覆った。（出典: https://airandspace.si.edu/collection-objects/blanket-payload-bay-shuttle-orbiter/nasm_A20181683000） |
| F-TCS-PTC-03 | OMS/RCSポッドは内面の断熱材とストリップヒータで熱制御され、A・B2系統のヒータがサーモスタットで55〜75°Fに保たれる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html） |
| F-TCS-PTC-04 | 燃料電池の生成水配管や給水・廃水のダンプ配管にも、凍結防止用のサーモスタット制御ヒータがある。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-PTC-05 | パージ・ベント・ドレン系は、非与圧区画にパージガスを流して熱調整と有害ガスの滞留防止を行い、湿度と温度を一定に保つ。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/purge/） |
| F-TCS-PTC-06 | 着陸後は、ベントドア1・2・6・8・9をパージ位置にして地上冷却を行う。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/purge/） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-17 | 地上冷却・パージ設備 | 推進薬・流体 | 受信 | 打上げ前と着陸後は、3系統のパージ回路がT-0アンビリカルで地上設備に接続され、冷却・乾燥した空気と窒素が非与圧区画に供給される。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/purge/） | 上位: IF-ORB-33 |
| IF-TCS-20 | 電力系：燃料電池 | 電力（28 VDC） | 受信 | OMS/RCSポッドの推進薬は電気のストリップヒータで凍結から守られ、A・B2系統のヒータがサーモスタットで55〜75°Fに制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659）燃料電池の生成水配管とリリーフ配管には、凍結防止用のサーモスタット制御ヒータが2系統ある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/324） | 上位: IF-ORB-14 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-17 | 番号なし | Wikipedia – Space Shuttle recovery convoy | 着陸後の冷却車（Freon 114）とパージ空調車による機体の冷却・パージを記す。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy） |
| TC-18 | 番号なし | Shuttle Reference: Orbiter Purge, Vent and Drain System | パージによる非与圧区画の熱調整、ベント、ドレンの機能を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/purge/） |
| TC-19 | NTRS 19900001633 | IOA: Assessment of the purge, vent and drain subsystem | パージ・ベント・ドレン系の独立FMEA/CIL評価。（出典: https://ntrs.nasa.gov/citations/19900001633） |
| TC-20 | NASM A20181683000 | Blanket, Payload Bay, Space Shuttle Orbiter（スミソニアン） | 受動熱制御に使われたKapton/Dacron多層のキルト断熱ブランケットの実物を解説する。（出典: https://airandspace.si.edu/collection-objects/blanket-payload-bay-shuttle-orbiter/nasm_A20181683000） |
| TC-21 | 番号なし | NSTS 1988 News Reference Manual – Orbiter Systems / TPS | TPSの材料と、内部断熱・ヒータ・パージによる内部温度管理を記す。（出典: https://m.16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/sts_sys.html） |
| TC-22 | 番号なし | NASA Facts – Orbiter Thermal Protection System（KSC） | 軌道1周で外面温度が−200〜+200°Fに変動し、TPSが低温からも機体を守ると記す。（出典: https://www3.nasa.gov/centers/kennedy/pdf/167473main_TPS-08.pdf） |
| TC-23 | 番号なし | NSTS 1988 News Reference Manual – Orbital Maneuvering System | OMS/RCSポッドの断熱材とストリップヒータによる熱制御を記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-oms.html） |
| TC-24 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | 燃料電池熱交換器とフレオンループのIF、生成水配管の凍結防止ヒータを記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | TCSヒータの構成・冗長・検証と計測喪失時の運用（A18-301〜305）、TPS接着層温度（A18-401）、熱姿勢制約（A18-451）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2092） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.2節「Orbiter Passive Thermal Control」：断熱ブランケット（バルク・多層）、熱コーティング、熱絶縁と、受動熱制御を補うヒータを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/64） |

## 5. 参考文献

1. NSTS 1988 News Reference Manual – Orbiter Systems / TPS（16streets 転載） — https://m.16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/sts_sys.html
2. Smithsonian NASM – Blanket, Payload Bay, Space Shuttle Orbiter — https://airandspace.si.edu/collection-objects/blanket-payload-bay-shuttle-orbiter/nasm_A20181683000
3. NSTS 1988 News Reference Manual – Orbital Maneuvering System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-oms.html
4. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
5. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
6. NASA Human Space Flight – Shuttle Reference: Orbiter Purge, Vent and Drain System — https://spaceflight.nasa.gov/shuttle/reference/shutref/purge/
7. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p659） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/659
8. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p324） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/324

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-30 | IF-TCS-17 に上位 IF-ORB-33 を付記（Rev. I） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（2文）（Rev. Q） |
