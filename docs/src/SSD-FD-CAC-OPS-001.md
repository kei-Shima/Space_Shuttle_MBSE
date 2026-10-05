# ファン運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CAC-OPS-001 |
| 表題 | ファン運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CAC-001 |
| 関連図 | SSD-SYS-ARC-001 図16 キャビン空気循環 機能構成 |

## 1. 目的

キャビンファンの喪失判定、切替・起動の制約、就寝中や計測喪失時の運転、2相電源の扱い、停止時間の限度と火災時の停止など、運用飛行規則と故障処置手順によるファンの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CAC-OPS-01 | キャビンファンは、差圧が4.20（4.49）in H2O未満または6.80（6.51）in H2O超で、かつ乗員が気流の喪失を確かめたときに喪失とし、適切な冷却に必要な最低流量は1,400 lb/hrとする（A17-101）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| F-CAC-OPS-02 | MECO前はキャビンファンを切り替えない。第1段では交流負荷がほぼ最大で、起動電流8.0 Aによる電圧過渡が主エンジン制御器に影響しうる（A17-151E）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939） |
| F-CAC-OPS-03 | 訓練マニュアルは、MECO前の切替では新しいファンの起動時のAC過渡で同じ母線の主エンジン制御器2台を失うおそれがあると警告し、軌道上では気流を確かめてファンの停止と予備ファンの起動を判定するとする（付録B.5）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=205） |
| F-CAC-OPS-04 | 差圧の異常時は予備のファンに切り替え、表示の変化から計測器の故障、ファンの故障または逆止弁の開閉固着、デブリトラップ・フィルタの目詰まり、ダクトの漏れ・閉塞を切り分ける（MAL 6.1a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260） |
| F-CAC-OPS-05 | 差圧トランスデューサを失った場合は、就寝中のファン停止を検知できないため就寝期間に両ファンを運転する。起床中は音でファンの停止に気づける（A17-153B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1947） |
| F-CAC-OPS-06 | 1相を失ったキャビンファンは、止めると再起動できないおそれがあり、1台の喪失はMDFとなるため2相のまま運転を続ける。残るファンも失った場合は電源を入れ替えるIFMがある（A17-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-CAC-OPS-07 | AC2またはAC3の1相を失い停止中のファンが影響を受ける場合は、残る2相で起動できることを軌道上で実証しなければ喪失とみなす（地上試験での2相起動は際どかった）（A9-156C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1472） |
| F-CAC-OPS-08 | 2相起動の手順では、同じ母線の三相機器を運転して誘起電圧を作ってから大型ファンを起動し、ファンの停止は表示装置の冷却のため20分以内とする（MAL EPS SSR-7）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=453） |
| F-CAC-OPS-09 | 冗長のファンが使えずに交流電力移送ケーブルでファンに給電する場合は、コンセントの3 A遮断器の制約から、キャビンファンとアビオニクスベイファンを同時には給電できない（MAL EPS SSR-200）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=653） |
| F-CAC-OPS-10 | 冷却機器の最大停止時間は、キャビンファンでは旧DDUを搭載する場合20分、MDUの場合30分である（A18-501）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） |
| F-CAC-OPS-11 | キャビン火災ではキャビンファンを止める。ファンの気流が火に酸化剤を送るためである（A17-53B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） |
| F-CAC-OPS-12 | 両キャビンファンを失った場合は、軌道到達と再突入のために直ちに電力を下げ、機器を大幅に入切りする必要がある（A2-301 注[39]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=140） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CAC-10 | キャビンファン・逆止弁 | データ・指令 | 送信 | 運用規則に従い、パネルL1のCABIN FAN A・Bスイッチで運転するファンを選び、起動・停止する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |
| IF-CAC-11 | ファン差圧監視 | データ・指令 | 受信 | 差圧の表示と警報を、ファンの喪失判定（A17-101）と切替・点検の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録B.5 CABIN FAN FAIL（PDF p205）：MECO前のファン切替で主エンジン制御器2台を失うおそれがあると警告し、軌道上では気流を確かめてファンの停止を判定するとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=205） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p404）：打上げ時はキャビンファン1台が運転済みであると述べ、LiOH・活性炭キャニスタの交換では運転中のファンを止めるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-101・151E・153B・154A（PDF p1929〜1948）：喪失の定義、MECO前の切替禁止、差圧センサ喪失時の就寝中の両ファン運転、2相運転の継続を定め、A9-156C（p1472）・A18-501（p2127）・A17-53B（p1923）で2相起動の実証、最大停止時間、火災時の停止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1aとEPS SSR-7・SSR-200（PDF p260・p453・p653）：予備ファンへの切替と故障の切り分け、2相起動の手順（停止20分以内）、交流電力移送ケーブルでの給電の制約を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=453） |
| CA-10 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.3.3節（PDF p37）：Halonはキャビンファンを止めたときだけ有効で、キャビン火災の手順はファンの停止を最大20分とすると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-5 AC PWR TRANSFER CABLE INSTALLATION（PDF p115）：交流電力移送ケーブルで母線を再給電する手順（1相3 Aまで）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=115） |
| CA-15 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：キャビンファンの起動・停止の前後少なくとも5分は水分離器を運転するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SODB（3.4.6.1節）は、キャビンファンの起動・停止の前後少なくとも5分は水分離器を運転するとする（抽出テキストでは「ARC cabin fan」と読めるが、ARS の誤読と判断した）。水分離器はキャビン温湿度制御の機器のため、本書では制約として記すにとどめた。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215）

> **注記** 交流電力移送ケーブルの取付け（IFM A-5）は、交流母線を他の母線から1相3 Aまでで再給電する手順で、運用飛行規則A17-154の「電源を入れ替えるIFM」に当たる。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=115）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-101 Cabin Fan（PDF p1929） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-151 Cabin Atmosphere Control（E・F項）（PDF p1939） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.5 Cabin Fan Fail（PDF p205） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=205
4. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1a CABIN FAN ∆P（PDF p260） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-153 Cabin/Avionics Bay Fan Management（PDF p1947） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1947
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-154 Management of Degraded Rotating Equipment（PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-156 AC Power Management（C項）（PDF p1472） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1472
8. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-7 Two-Phase Fan Start Procedure（PDF p453） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=453
9. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-200（続き）（PDF p653） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=653
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-501 Maximum Off Time for Cooling Equipment（PDF p2127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（PDF p1923） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-301 Contingency Action Summary（注[39]）（PDF p140） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=140
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
14. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.1節 Atmospheric Revitalization Subsystem（PDF p215） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215
15. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist A-5 AC Pwr Transfer Cable Installation（PDF p115） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=115

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
