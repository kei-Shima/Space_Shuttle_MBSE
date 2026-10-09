# ベイ冷却運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-AVB-OPS-001 |
| 表題 | ベイ冷却運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-AVB-001 |
| 関連図 | SSD-SYS-ARC-001 図32 アビオニクスベイ空冷 機能構成 |

## 1. 目的

ベイファンとベイ冷却の喪失判定、上昇中の切替の制約、差圧計測を失ったときの運転、停止時間の限度、火災時の停止、GPCを起動する前の確認など、運用飛行規則・故障処置手順・チェックリストによるベイ冷却の運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-AVB-OPS-01 | ファン差圧が2.5 in H2O未満（2相運転時の推定差圧に相当）または4.3 in H2O超（GPCの温度超過に基づく最小流量に相当）でベイファンを喪失とし、改良型ファンでは4.5 in H2O未満または7.8 in H2O超とする（A17-103）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| F-ARS-AVB-OPS-02 | 上昇・再突入ではベイ空気出口温度を130（125）°F未満に保てない場合、軌道上ではキャビン圧（14.7・10.2・8 psi）と稼働中のGPCの台数に応じた出口温度を保てない場合に、ベイ冷却を喪失とする（A17-105）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934） |
| F-ARS-AVB-OPS-03 | 上昇中は、電源の入ったGould製TACANがあるベイのファンを失った場合は3分以内に予備のファンへ切り替え、Av Bay 3Aを改良型ファンにした機体ではそのファンを切り替えない（A9-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1466） |
| F-ARS-AVB-OPS-04 | 改良型ファンは起動過渡電流が大きい（1相あたり7.4 A、従来型は2.0 A）ため、主エンジン制御器への電圧過渡を避けてMECO前には切り替えない（A17-151F）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939） |
| F-ARS-AVB-OPS-05 | ファン差圧トランスデューサを失った場合は、ファンの停止を検知できないため2台目のファンを入れて飛行終了まで運転する。改良型ファンでも音で停止に気づけないおそれがあるため同じとする（A17-153A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1947） |
| F-ARS-AVB-OPS-06 | 1相を失った回転機器は予備に切り替える。改良型ファンは1台を失っても飛行期間に影響しないため、2相のまま運転を続けない（A17-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-ARS-AVB-OPS-07 | ベイファンを止めてよい時間は、GPCの冷却の制約から最大26分である（A18-501）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） |
| F-ARS-AVB-OPS-08 | ベイの火災では、そのベイのHalonボトルを放出してベイファンを止める。ファンの気流は火に酸化剤を送るためである（A17-53A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） |
| F-ARS-AVB-OPS-09 | 1ベイの両ファン喪失は軌道到達可とし、MECO後にTACAN・MLSを、OMS-1後にすべての空冷機器を再構成する。単一の電気故障（AC母線）で2つのベイの空冷を失いうる場合は次のPLSに入る（A17-1001 注[4]・[7]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） |
| F-ARS-AVB-OPS-10 | Go/No-Go基準は、ベイ1・2の冷却喪失を2台のGPCの冷却喪失としてMDFとし、ベイ3の冷却喪失を空気流の喪失による煙検知の喪失としてMDF、C&Wの冷却喪失として次のPLSの対象とする（A17-1001 B.2・注[6]・[8]・[9]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032） |
| F-ARS-AVB-OPS-11 | 故障処置手順6.1bは、ベイ温度が130°Fを超えた場合の処置として、両ファンの運転、水冷却ループの切替（5分待って温度の低下を確かめる）と、MCCと交信できずに130°F以上が続くかMCCの指示があるときのDPSの再構成（ベイ冷却喪失時のGPC FRP-7）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| F-ARS-AVB-OPS-12 | GPCをRUNにする前（G2のセット拡張など）には、そのGPCのあるベイのファンがONであることを確かめる（軌道運用チェックリスト4-4）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=106） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-AVB-08 | ベイファン・逆止弁 | データ・指令 | 送信 | 運用規則に従い、パネルL1のAV BAY 1・2・3 FAN A・Bスイッチで運転するファンを選び、入切りする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）打上げ時には、各ベイの1台のファンが運転済みである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） | — |
| IF-AVB-12 | 温度・差圧監視 | データ・指令 | 受信 | ベイ温度とファン差圧の表示・警報を、ファンとベイ冷却の喪失判定（A17-103・105）と、切替・処置の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録B.6 AV BAY FAILURE RECOGNITION（PDF p206〜207）：ファン故障ではベイ温度の表示が下がること、故障を確かめたらMECO前でも切り替えること（改良型の3Aを除く）、信号調整器の故障では両ファンを選ぶこと、温度高では両ファン運転と水冷却ループの切替を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 付録C（PDF p1117）：動力飛行中に切り替えてよい交流負荷としてベイファン（三相モータの停止時のみ）を挙げ、2.9節 Operations（p404）で打上げ時は各ベイの1台のファンが運転済みであるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1117） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-103・105・151F・153A・154A（PDF p1931〜1948）、A9-154A（p1466）、A18-501（p2127）、A17-53A（p1923）、A17-1001（p2032〜2034）、A16-51（p1895）：ファンとベイ冷却の喪失定義、上昇中の切替、差圧計測喪失時の2台運転、最大停止時間、火災時の停止、Go/No-Go、着陸後の緊急断電を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-12（PDF p351〜352）：ベイ火災後のファンの再構成（煙濃度・交流電流・差圧の確認）を示し、6.1b・6.1c（p261〜262）で両ファン運転・水冷却ループの切替・DPS再構成と、予備ファンへの切替の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=351） |
| AV-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.3.3節（PDF p37）：ベイに放出したHalonは、ベイファンが運転していても50時間有効であるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） |
| AV-17 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 4-4 G2 SET EXPANSION（PDF p106）：GPCをRUNにする前に、そのGPCのあるベイのファン（AV BAY 2(3) FAN A(B)）がONであることを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=106） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：訓練マニュアル付録B.6は、ファンの故障を確かめたらMCCに確認してMECO前でも切り替えるとしつつ、TACANがDC電源に更新されたためベイによってはMECO後まで遅らせられるとする。運用飛行規則A9-154（2002年）はGould製TACANがあるベイでは3分以内に切り替えるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206）

> **注記** A9-154の根拠として、予備のベイファンは打上げの約12時間前に確認されており、乗員がTACANの操作のために座席を離れるより予備ファンへの切替のほうが危険が小さいとされた（PDF p1468）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1468）

> **注記** 検証メモ：ファンを止めてよい時間を、運用飛行規則A18-501は26分とし、IFMチェックリストのフィルタ清掃（PDF p106）は20分を超えると過熱のおそれがあるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127）

> **注記** ベイ火災後の再構成（MAL ECLS SSR-12）では、ファンを入れると煙濃度が一時的に上がることがあり、1分を超えて上がり続ければそのベイを断電する。火災の処置そのものは煙検知・消火系（図26）で扱う。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=351）

> **注記** 着陸後に地上冷却がない場合は、LRU断電の前はベイ1・2の出口温度133°F超・ベイ3の117°F超、断電の後は113°F超・107°F超などで冷却喪失とし、緊急断電する（A16-51）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1895）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-103 Loss of Avionics Bay Fan（PDF p1931） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-105 Avionics Bay Cooling（PDF p1934） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（PDF p1466） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1466
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-151 Cabin Atmosphere Control（E・F項）（PDF p1939） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-153 Cabin/Avionics Bay Fan Management（PDF p1947） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1947
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-154 Management of Degraded Rotating Equipment（PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-501 Maximum Off Time for Cooling Equipment（PDF p2127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（PDF p1923） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（PDF p2034） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（表）（PDF p2032） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032
11. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
12. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 4-4 G2 Set Expansion（PDF p106） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=106
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（PDF p206） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1468） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1468
17. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-12 Av Bay Fire Recovery/Reconfig（PDF p351） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=351
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A16-51 No Ground Cooling/Early Vehicle Power Termination（PDF p1895） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1895

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
