# ファン運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-IMU-OPS-001 |
| 表題 | ファン運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-IMU-001 |
| 関連図 | SSD-SYS-ARC-001 図34 IMU空冷 機能構成 |

## 1. 目的

IMUファンの上昇・軌道上の構成、喪失判定と切替、停止時間の上限、火災・有害物質の漏れのときの扱い、3台すべてを失ったときの緊急冷却とGo/No-Goなど、運用飛行規則と故障処置手順によるIMUファンの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-IMU-OPS-01 | 搭乗時にはIMUファン1台が運転済みで、上昇中はAC母線間の短絡で主エンジンを失うのを防ぐため、HUM SEPとIMU FANの信号調整器を断電しておく（STS-6でこれらの信号調整器へ電力を送る配線束が短絡した）（訓練マニュアル3.6.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| F-ARS-IMU-OPS-02 | 上昇中の交流負荷の管理では、キャビンファン・IMUファン・湿度分離器の再構成はMECO後まで要らないとする（A9-154の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1468） |
| F-ARS-IMU-OPS-03 | IMUファンは、ΔPが3.70（3.94）in H2O未満または4.95（4.71）in H2O超の場合か、選択時に回転数が異常を示す場合に喪失とし、適切な冷却に必要な最低流量は144 lb/hr（ΔP 4.95 in H2Oで供給）である（A17-104）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| F-ARS-IMU-OPS-04 | 故障処置手順6.1dの公称構成はファンBの運転で、ΔPが3.7未満・4.95超（10.2 psi運用では3.0未満・3.8超）になるとファンを切り替えて原因を切り分け、IMUファンが止まったままIMUを30分を超えて運転するとIMUを損傷するおそれがあると警告する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| F-ARS-IMU-OPS-05 | 1相を失った回転機器（キャビンファンを除く）は代替機に切り替える。2相での運転の寿命は（新品の機器で）168時間と確かめられており、性能も通常より下がるためである（A17-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| F-ARS-IMU-OPS-06 | 冷却機器の最大停止時間は、IMUの冷却の制約からIMUファンでは45分である（A18-501C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） |
| F-ARS-IMU-OPS-07 | 有害物質（レベル3）がこぼれた場合は、拡散を防ぐためにフライトデッキの乗員がキャビンファンとIMUファンを止める。IMUファンを止めておける時間は45分までである（A13-155B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1807） |
| F-ARS-IMU-OPS-08 | アビオニクスベイにHalonを放出した後の電源断でもIMUファンは止めない。ファンはアビオニクスベイ（1）内にあり、ベイの外にあるIMUは冷却なしでは30分を超えて運転できないためで、ファンが故障していれば直ちに冗長のファンを起動する（A17-53C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1924） |
| F-ARS-IMU-OPS-09 | IMUファン3台すべての喪失は、IMUのサイクル運用で軌道到達可とし、軌道上で掃除機のファンを取り付け、初日のPLSに入る（A17-1001 注[5]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） |
| F-ARS-IMU-OPS-10 | IMUの緊急冷却（IFM）は、3台のIMUファンがすべて故障したときに限り、掃除機をIMUファンの代わりに使って周囲の空気でIMUを冷やす手順で、所要1時間である（IFM I-1）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173） |
| F-ARS-IMU-OPS-11 | ファンは3重の冗長で、1台が故障しても他の2台のどちらかを起動してIMUを冷却できるため、ファンの故障はIMUの内部ヒータの故障ほど重大ではない（IMUワークブック4.5節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=54） |
| F-ARS-IMU-OPS-12 | STS-125では、ΔPの上昇に対してファンBからファンAへ切り替え、約65分後にファンCを起動して約3分間ファンAと並列に運転した後にファンAを止め、以後の飛行ではファンCを使った（IFA STS-125-V-13）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-IMU-07 | IMUファン・逆止弁 | データ・指令 | 送信 | 運用規則と故障処置手順に従い、パネルL1のIMU FAN A・B・Cスイッチで運転するファンを選び、入切する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）ONの位置で対応するファンが回り、OFFの位置で止まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-IMU-12 | ファン監視・表示 | データ・指令 | 受信 | ΔPと回転数の表示・SMアラートを、IMUファンの喪失判定（A17-104）とファンの切替の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）ΔPが失われたときは、回転数センサの「↓」表示でファンの故障を監視する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.6.1節（PDF p85）：搭乗時にIMUファン1台が運転済みで、上昇中はAC母線間の短絡を防ぐためIMU FAN信号調整器を断電する（STS-6で配線束が短絡）と述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p404）：搭乗時にIMUファン1台が運転済みで、上昇中は信号調整器を断電すると述べ、2.17節（p634）でIMUファン3台の喪失を、ペイロードベイドアを開けずに初日のPLSへ軌道離脱する故障に挙げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104（PDF p1933）でファン喪失の定義を、A18-501（p2127）・A13-155（p1807）・A17-53C（p1924）で停止時間の上限・有害物質の漏れのときの停止・火災後の運転継続を、A17-1001（p2032〜2034）とA2-1001（p802）でGo/No-Goを定め、A9-154（p1468）でMECO前は再構成を要しないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p264）：ΔP 3.7未満・4.95超（10.2 psi運用では3.0未満・3.8超）でファンを切り替え、IMUファンが止まったままIMUを30分を超えて運転しないよう警告し、ECLS SSR-12（p353）とGNC SSR-1（p680）でアビオニクスベイ火災後とIMU起動時のIMUファンの操作を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 搭乗時にIMUファン1台が運転済みで、上昇中はIMU FAN信号調整器を断電すると記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 4.5節（PDF p54）：ファンは3重の冗長で、故障時は他の2台のどちらかを起動できるため、ファンの故障は内部ヒータの故障ほど重大ではないとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=54） |
| IM-11 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p50：ファンBからA、さらにCへ切り替え、ファンC単独の運転でΔPが下がり、以後の飛行でファンCを使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| IM-13 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | I-1 IMU CONTINGENCY COOLING（PDF p173）：3台のIMUファンがすべて故障したときに限り、掃除機をIMUファンの代わりに使って周囲空気でIMUを冷やす手順（所要1時間）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM（PDF p404）は上昇中の断電対象を「humidity separators and the IMU fan signal conditioners」と記すが、訓練マニュアル3.6.1節（PDF p85）は「The HUM SEP and the IMU FAN signal conditioners」と記しており、断電するのは湿度分離器とIMUファンの信号調整器である（親の説明書の検証メモの解釈を裏付ける）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404）

> **注記** ペイロードベイドアの開放前の判定ではIMUファン3台の喪失を、ドアを閉じたまま初日のPLSへ軌道離脱する故障の一つに挙げる（SCOM 2.17節）。運用飛行規則A2-1001のGo/No-Goの表は、IMUファンの喪失についてMDFの欄を「-」、NXT PLSの欄を「2」とする（PDF p802）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/634）

> **注記** A2-1001の表（PDF p802）の「2」の後の記号は抽出テキストでは読めないため、「2台の喪失でNXT PLS」と解したのは本書の判断である（A17-1001の表（PDF p2032）も同じ位置に「2」を示す）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=802）

> **注記** アビオニクスベイ火災後の復旧・再構成（ECLS SSR-12）には、影響を受けたベイに応じてIMUファンの運転を組み替え、ΔPが3.7〜4.95 in H2Oに入ることを確かめる手順（IMU FAN RECONFIG）がある。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=353）

> **注記** IMUを起動する手順（GNC SSR-1）では、IMUの電源を入れるときに使えるIMUファンをONにする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=680）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.6.1節 Ascent（PDF p85） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（根拠）（PDF p1468） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1468
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-104 IMU Fan（PDF p1933） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933
4. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（PDF p264） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-154 Management of Degraded Rotating Equipment（PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-501 Maximum Off Time for Cooling Equipment（PDF p2127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-155 Orbiter Hazardous Substance Spill Response（続き）（PDF p1807） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1807
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（C項）（PDF p1924） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1924
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（注）（PDF p2034） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034
10. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist I-1 IMU Contingency Cooling（PDF p173） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173
11. USA004488 Rev. B（IMU 21002） Inertial Measurement Unit Workbook（訓練ワークブック、2006年） 4.5節 Thermal Control System（PDF p54） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=54
12. NSTS-37452 STS-125 Space Shuttle Mission Report（2010年） Environmental Control and Life Support System（IFA STS-125-V-13）（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Inertial Measurement Unit (IMU) Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
16. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.17節 Payload Bay Door Operations（PDF p634） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/634
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（続き）（PDF p802） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=802
18. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-12 AV BAY FIRE RECOVERY/RECONFIG（F項）（PDF p353） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=353
19. JSC-48027 Rev. F Malfunction Procedures（MAL） GNC SSR-1 ACTIVATE IMU(s)（PDF p680） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=680

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
