# バックアップC/W（ソフト）（BKP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CW-BKP-001 |
| 表題 | バックアップC/W（ソフト）（BKP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CW-001 |
| 関連図 | SSD-SYS-ARC-001 図62 C/W 機能構成 |

## 1. 目的

GPCのソフトウェアで限界を監視するバックアップC/W（クラス2）の構成と発報・故障メッセージの扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CW-BKP-01 | バックアップC/W（クラス2）は、SMの故障検知・警報（FDA）、GNC、バックアップ飛行系（BFS）のソフトウェアの一部である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-BKP-02 | 限界外れを検知すると、4つのMASTER ALARM灯とF7の赤いBACKUP C/W ALARM灯を点灯し、故障メッセージ行と故障要約頁にメッセージを出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-CW-BKP-03 | GPCは前方またはペイロードのMDMを経てC/W系A・Bの両方に信号を送り、MASTER ALARM灯・B/U C&W灯・C/Wトーンを作動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） |
| F-CW-BKP-04 | GNCソフトウェアが限界外れを検知するとGNC警報インタフェース（GAX）へ信号を送り、GAXが警報の要否を決める。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=71） |
| F-CW-BKP-05 | BFSが待機（STANDBY）のときはペイロードバスを制御しないため、表示灯・トーンは出さず、故障メッセージと状態表示だけとなる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=71） |
| F-CW-BKP-06 | 故障メッセージはACKキーを押すまで点滅し、MSG RESETキーで消える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/126） |
| F-CW-BKP-07 | 同じ故障メッセージが4.8秒以内に重ねて出るときは、FDAの論理が新しいメッセージを抑止する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=113） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-DPS-12 | 飛行ソフトウェア・MMU | データ・指令 | 受信 | GPCはMDMを通じた12の離散入力でC&Wのマスタアラームの論理回路を使い、6つで予備C&W灯とC&W音（クラス2）を、6つでSMアラート音（クラス3）を作動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=58）FDAソフトウェアが限界外を検出すると、DPS表示に故障メッセージを出し、前方またはペイロードMDM経由でC&W系A・Bに信号を送ってMASTER ALARM灯・予備C&W灯・警報音を作動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） | 上位: IF-ORB-42 |
| IF-CW-05 | 表示・警報音 | データ・指令 | 送信 | GPCは前方またはペイロードのMDMを経てC/W系A・Bの両方に信号を送り、MASTER ALARM灯・B/U C&W灯・C/Wトーンを作動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） | — |
| IF-CW-08 | C/W運用管理 | データ・指令 | 受信 | SPEC 60では、PASS SMのバックアップC/W・アラートの各パラメータの上下限・ノイズフィルタ値・有効/抑止を読み、変えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Software (Backup) Caution and Warning（PDF p126〜127）：ソフトウェアC/Wの発報と故障メッセージの扱いを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/126） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 4.5節（PDF p70〜78）：バックアップC&Wの構成とPASS・BFSのソフトウェアの分担を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-160 B（PDF p1474）：迷惑警報を出すバックアップC&Wのパラメータの抑止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.1b（PDF p119）：C/W系Aの電源故障後も残る能力としてバックアップC/Wの限界監視を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=119） |
| CW-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | ARPCS（PDF p48）：N2流量センサの既知の異常のため、N2系1・2のMASTER ALARMとバックアップC&Wを全期間抑止した例を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
2. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.5節 Backup C&W（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70
3. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.5.2.1 Primary Avionics Software System（PDF p71） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=71
4. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p126） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/126
5. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 9.1 Fault Summary（PDF p113） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=113
6. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 4章 C&W Electronics（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=58
7. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p127） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127
8. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
