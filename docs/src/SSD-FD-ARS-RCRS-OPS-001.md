# RCRS運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-RCRS-OPS-001 |
| 表題 | RCRS運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-RCRS-001 |
| 関連図 | SSD-SYS-ARC-001 図28 再生式CO2除去装置 機能構成 |

## 1. 目的

RCRSの起動・停止の時期、減圧時・火災後・有害物質の漏れのときの停止、喪失の判定とLiOHキャニスタへの切替、故障時の制御器の切替、飛行実績など、運用飛行規則と故障処置手順によるRCRSの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-RCRS-OPS-01 | RCRSは真空源のない上昇・再突入では停止し、その間はLiOHキャニスタでPPCO2を制御する。再突入まで作動させたままでも、真空源を失ってRCRSが停止するだけで損傷はない（A17-155A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950） |
| F-ARS-RCRS-OPS-02 | 軌道上ではOMS-2後なるべく早く起動して正常に作動するかをすぐに確かめ、軌道離脱噴射前なるべく遅く停止して、搭載したLiOHキャニスタの使用を減らす。停止時には新しいLiOHキャニスタを装着して、軌道離脱準備と再突入のCO2を制御する（A17-155B.1）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950） |
| F-ARS-RCRS-OPS-03 | 軌道離脱準備で停止した後は、作業負荷が大きいためウェーブオフの周回では再起動せず、ウェーブオフの日には極低温の消耗品が追加の電力消費を許せば再起動する（A17-155B.2）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| F-ARS-RCRS-OPS-04 | キャビン減圧とエアロック減圧の間はRCRSを手動で停止する。作動させたままだと制御器の論理が真空ベント管やキャビン圧の入力で停止し、S66 CO2 RL SYS MALFとMO51Fの故障灯が出て、電源を切って入れ直さなければ再開できない。停止は約20分と短く、PPCO2も圧力の低下で下がる（A17-155B.3）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| F-ARS-RCRS-OPS-05 | RCRSは、PPCO2を7.6 mmHg未満に保てない場合と、PPCO2を把握できなくなった場合に喪失とする（A17-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| F-ARS-RCRS-OPS-06 | RCRSを失った場合はLiOHキャニスタを装着し、搭載数が限られるため、その数が飛行終了（EOM）を決める（A17-155B.4）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| F-ARS-RCRS-OPS-07 | オービタ系統のGo/No-Go基準では、RCRSを失うとLiOHキャニスタの数と乗員数がEOMを決め、PLSの機会を見送るには未使用のLiOHを最低2日分予備に持つ必要がある（A2-1001注[7]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804） |
| F-ARS-RCRS-OPS-08 | キャビンまたはアビオニクスベイの火災の後はRCRSを手動で停止し、LiOH・活性炭とATCOのキャニスタで汚染物質を除いた後に再起動してCO2の除去を続ける（A17-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| F-ARS-RCRS-OPS-09 | 有害物質（レベル4）がオービタの大気に漏れた場合、RCRSを使う飛行では固体アミンの汚染を防ぐためRCRSの電源を切る（A13-155A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1807） |
| F-ARS-RCRS-OPS-10 | SCOMの運用の節は、RCRS搭載機では軌道投入後に乗員がRCRSを起動し、以後は通常の操作なしに13分ごとにベッドが切り替わり（26分周期）、10日以上の飛行では途中で活性炭キャニスタを交換し、軌道離脱準備でLiOHキャニスタを交換してRCRSを停止するとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| F-ARS-RCRS-OPS-11 | 故障処置手順6.8aでは、故障が一方の制御器だけなら他方の制御器（SYS 2(1)）で運転を続け、両方の制御器に及ぶならRCRSを停止し、LiOHキャニスタ1個を装着してMCCとLiOHの運用計画を決める（MAL 6.8a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331） |
| F-ARS-RCRS-OPS-12 | STS-65では、RCRSをリストリクタ付きのLiOHキャニスタで補い、15時間ごとの交換でCO2分圧を平均2.3 mmHg（最大3.0 mmHg）に保った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCRS-14 | 制御器・運転シーケンス | データ・指令 | 送信 | 運用規則と故障処置手順に従い、パネルMO51Fのモードスイッチ（OPER/STBY）と電源スイッチで制御器を起動・停止し、故障時は他方の制御器に切り替える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224）一方の制御器だけの故障では、他方の制御器（SYS 2(1)）で運転を続ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331） | — |
| IF-RCRS-15 | 計装・表示 | データ・指令 | 受信 | PPCO2とRCRSの表示・SMメッセージを、RCRSの喪失判定（PPCO2 7.6 mmHg、PPCO2の把握）と故障処置の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.1（PDF p214）：真空が必要なためRCRSは軌道上でしか使えず、上昇と再突入ではLiOHでCO2を除去すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p404）：RCRS搭載機では軌道投入後に乗員が起動し、10日以上の飛行では途中で活性炭キャニスタを交換し、軌道離脱準備でLiOHキャニスタを交換してRCRSを停止するとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-155（PDF p1950〜1951）で上昇・再突入中の停止、軌道上の起動・停止の時期、ウェーブオフ時の再起動、減圧時の停止、喪失時のLiOHへの切替を定め、A17-156（p1952）とA13-155（p1807）で火災後と有害物質の漏れの後の停止を、A2-1001（p802〜804）でGo/No-Goを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a（PDF p331）：両制御器に及ぶ故障ではRCRSを停止してLiOHキャニスタ1個を装着すると示し、ECLS SSR-8（p345）で小さなキャビン漏れの隔離の間にRCRSを停止・再起動する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331） |
| RC-07 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | STS-50・52・55でのオービタとSpacelabのCO2除去の飛行結果を報告する（抄録で確認）。（出典: https://saemobilus.sae.org/content/932294） |
| RC-10 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report（1992年） | RCRSの初飛行で、軌道投入後25時間は正常に運転したが6回停止してLiOHキャニスタに切り替え、JSCで再現・検証した機上整備手順で単系運転を回復し、以後は正常に運転したと記録する。（出典: https://ntrs.nasa.gov/citations/19930016803） |
| RC-14 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p12：RCRSをリストリクタ付きのLiOHキャニスタで補い、15時間ごとの交換でCO2分圧を平均2.3 mmHg（最大3.0 mmHg）に保ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| RC-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | W-10 CWC Ops（PDF p434）：RCRSを搭載する飛行ではLiOH収納区画（MO52M）をCWCの収納に使えると注記する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=434） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 運用飛行規則A17-53（火災と火災後の処置）も、アビオニクスベイの火災（C.3）とキャビン火災（D.4、PDF p1927）の後にRCRSを手動で停止すると定め、根拠をA17-156とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1926）

> **注記** 検証メモ：SCOM（PDF p371）はOV-105がRCRSのハードウェア能力を持つとするが、STS-65（Columbia、OV-102）でもRCRSを使っており、運用飛行規則A10-385もRCRSを搭載したOV-102に触れる。訓練マニュアル付録C.1は、RCRSのハードウェアはその後OV-105から撤去され、RCRSに対応する機体はなくなったとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=7）

> **注記** 運用飛行規則A10-385は、満水のCWCを収める場所のうち「LIOH BOX WET TRASH」をRCRSを搭載したOV-102でだけ使えるとし（注[7]、PDF p1662〜1663）、IFMチェックリスト（W-10、PDF p434）もRCRSを搭載する飛行ではLiOH収納区画（MO52M）をCWCの収納に使えると注記する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1663）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-155 Regenerative CO2 Removal System (RCRS) Management（PDF p1950） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-155 RCRS Management（続き）（PDF p1951） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-106 Regenerative CO2 Removal System (RCRS) Loss Definition（PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（注[7]）（PDF p804） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=804
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-156 RCRS Manual Shutdown Criteria（PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-155 Orbiter Hazardous Substance Spill Response（続き）（PDF p1807） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1807
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a（続き）（PDF p331） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331
9. NSTS-08292 STS-65 Space Shuttle Mission Report（1994年） Mission summary（CO2 control）（PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3（ステート12）・C.3 Controls（PDF p224） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（C.3）（PDF p1926） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1926
12. NSTS-08292 STS-65 Space Shuttle Mission Report（1994年） Introduction（PDF p7） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=7
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-385 Filled CWC Stowage Management（注[7]）（PDF p1663） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1663

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
