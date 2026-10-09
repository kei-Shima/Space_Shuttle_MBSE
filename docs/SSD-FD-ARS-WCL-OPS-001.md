# ループ運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-WCL-OPS-001 |
| 表題 | ループ運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-WCL-001 |
| 関連図 | SSD-SYS-ARC-001 図36 水冷却ループ 機能構成 |

## 1. 目的

稼働ループの選択と上昇・軌道上・再突入の構成、待機ループのGPC周期運転、ポンプ切替の制約、喪失判定、漏れへの対処、両ループ喪失時の飛行の打切りなど、運用飛行規則と故障処置手順による水冷却ループの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-WCL-OPS-01 | 上昇中はループ2を運転しループ1を止め、両ループのバイパス弁でインターチェンジャ流量を約950 lb/hrにし、軌道上はループ1をGPC位置に、ループ2のバイパス制御器をAUTOにする（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| F-ARS-WCL-OPS-02 | ループ2を稼働ループとするのは、ポンプ1台のループ2を予備にするとそのポンプの故障がループ1の故障まで検知されないおそれがあるためで、ループ1はすぐ使えるよう950 lb/hrに設定しておく（A18-151A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061） |
| F-ARS-WCL-OPS-03 | SM OPS 2でGPC位置にすると、待機ループのポンプはOPSの移行時に6分のON指令を受けた後240分止まり、以後4時間ごとに6分運転して、ループ内の大きな温度差を防ぐ（訓練マニュアル3.6.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| F-ARS-WCL-OPS-04 | GPC位置ではSM GPCがPL MDM 1を通してループ1のポンプを、PL MDM 2を通してループ2のポンプを指令し、周期はSPEC 60かTMBUで連続運転に変えられ、PASS SMとBFSがともに使えないときはアップリンクかDPS UTILITY SPEC 1からのリアルタイムコマンドで動かせる（訓練マニュアル3.6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=86） |
| F-ARS-WCL-OPS-05 | リレーの故障によるAC3とAC1の短絡で上昇中に主エンジンを失わないよう、ループ1ポンプAの遮断器（ループ2のGPC位置の電源を兼ねる）は飛行の全段階で開いておく（訓練マニュアル3.6.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| F-ARS-WCL-OPS-06 | H2O LOOP PRESS LOW（ポンプの故障かループの漏れ）ではループの切替をMECO後まで待ち、新しいポンプの起動時のAC過渡で同じ母線の主エンジン制御器2台を失わないようにし、切替後はポンプ出口圧が約60〜65 psiaでキャビン熱交換器出口とAv Bayの空気温度が安定か低下することを確かめる（訓練マニュアル付録B.4）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204） |
| F-ARS-WCL-OPS-07 | 上昇中のMECO前の再構成を認めるAC負荷のうち、水ループのポンプはアビオニクスの空気温度のFDAが出た場合に限る（A9-154A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1466） |
| F-ARS-WCL-OPS-08 | ARS水ループは、アキュムレータ量0%、MIN BYPでインターチェンジャ流量600 lb/hr以上を保てない、14.7 psiaで稼働ループのポンプ出口温度を85°F未満に保てない、ループ間漏れ（水-水・フレオン-水）の確認のいずれかで喪失とする（A18-101A〜D）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| F-ARS-WCL-OPS-09 | フレオン-水の漏れでは、135 psig以上になりうる圧力とフレオン21に適合しない部品のため影響ループを必要時以外運転せず、乗員室への水の漏れでは、次のインターチェンジャでのフレオン-水漏れで有毒なフレオン21が乗員室に入るのを避けるため影響ループを止める（A18-151E・F）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2063） |
| F-ARS-WCL-OPS-10 | 1ループの喪失はゼロフォールトトレラントとなり上昇中なら初日のPLSとし、両ループの喪失では上昇中はAOAとし、故障から2時間以内に乗員室が約90°F・相対湿度100%に近づくため4時間以内の着陸を要する（A18-1001B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149） |
| F-ARS-WCL-OPS-11 | 冷却機器を止めておける最大時間は、水ループではS帯電力増幅器の冷却の制約から10分である（A18-501D）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） |
| F-ARS-WCL-OPS-12 | Av Bayの温度が130°Fを超えて両ファンの運転でも下がらなければ水ループを切り替えて5分待ち、下がれば水ループの劣化としてECLS SSR-4で予備ループへ移る（MAL 6.1b）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-WCL-09 | ポンプパッケージ | データ・指令 | 送信 | パネルL1のH2O PUMP LOOP 1のA/B選択スイッチと、LOOP 1・2のGPC/OFF/ONスイッチで、運転するポンプを選び起動・停止する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |
| IF-WCL-10 | インターチェンジャ・バイパス制御 | データ・指令 | 送信 | パネルL1のLOOP 1・2 BYPASS MODEスイッチで自動・手動を選び、手動ではMAN INCR/DECRスイッチでバイパス弁の位置を調整する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |
| IF-WCL-11 | ループ計測・警報 | データ・指令 | 受信 | ポンプ出口圧・アキュムレータ量・インターチェンジャ流量・ポンプ出口温度などを、ARS水ループの喪失判定（A18-101）とループ切替の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.6節（PDF p85〜86）と付録B.4（p204）：上昇・軌道上の構成、GPC位置の周期運転とAC1遮断器を開いておく理由、リアルタイムコマンド、MECO前のポンプ切替の禁止を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| WL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p404）：上昇・軌道上の構成、GPC位置の4時間ごと6分の周期運転、ループ2のAC3／AC1の給電とAC1遮断器を引いておく理由、リアルタイムコマンドを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） |
| WL-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-101・151D〜F・351・501・1001（PDF p2059〜2149）とA9-154（p1466）：喪失の定義、漏れへの対処、GPC周期運転の扱い、停止時間10分、両ループ喪失時のAOAと4時間以内の着陸、MECO前のポンプ切替の制限を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149） |
| WL-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-4・SSR-10（PDF p339・p348）：予備ループへの切替とC&W限界の再設定、GPCによるポンプの連続指令の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=339） |
| WL-12 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-1221X（C.13-29、PDF p131）：WCL2のスイッチS6はNASAの再評価でCIL外の臨界度となったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=131） |
| WL-14 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 8.6節（PDF p106）：SPEC 60の定数が、水ループのポンプの周期運転などSMの特別な処理に使われると記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=106） |
| WL-15 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2〜2.2.3節（PDF p40）：上昇・再突入で両ループ、軌道上はループ2を使い、GPC位置で240±120分ごとに6±4分ポンプを動かして凍結を防ぐとする（1979年の計画）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=40） |
| WL-16 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：休止ループの水を4時間ごとに6分循環させるとし、守らないとループの水が凍るおそれがあるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| WL-17 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-11 CABIN TEMP CONTROL（PDF p121）：MCCの確認のもとで、キャビン温度を調整する手段の一つとしてループ1（ポンプB）も運転する段階を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=121） |
| WL-20 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p62：通常この変動は、WCL 1の6分間の周期運転がLCGの流れと重なったときだけ見られると記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=62） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1979年の飛行運用マニュアルは、上昇・再突入で両ループを使い（インターチェンジャ流量は各約600 lb/hr）、軌道上はループ2を使い約950〜960 lb/hrとし、GPC位置で240±120分ごとに6±4分ポンプを動かすとする。現行の運用飛行規則・SCOMは上昇・再突入でもループ2だけを運転し、周期は4時間ごとに6分である。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=40）

> **注記** 水ループのGPC周期運転モードは待機ループの熱調整のためだけのもので、手動の方法が使えれば飛行の継続に必要としない（A18-351）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2097）

> **注記** GPCでポンプを連続して指令する手順（SPEC 60で周期運転の定数を変える）は、MAL ECLS SSR-10にある。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=348）

> **注記** 水-水のループ間漏れでは、稼働ループのアキュムレータの水が非運転ループへ移るのを防ぐため両ループを運転する（A18-151D）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Operations（Atmospheric Revitalization System）（PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151A ARS Water Loop（PDF p2061） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.6.1〜3.6.2節 Ascent・Orbit（PDF p85） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.6.3節 Special Features（PDF p86） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=86
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.4 H2O LOOP PRESS LOW（PDF p204） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（PDF p1466） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1466
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-101 ARS Water Loop（PDF p2059） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151E・F ARS Water Loop（続き）（PDF p2063） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2063
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-1001B Thermal Go/No-Go Criteria（ARS H2O）（PDF p2149） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-501 Maximum Off Time for Cooling Equipment（PDF p2127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127
11. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
13. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2〜2.2.3節 ARS System Description・ARS Displays and Controls（PDF p40） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=40
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-351 EECOM Software Requirement（PDF p2097） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2097
15. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-10 H2O PUMP OPS VIA GPC（PDF p348） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=348
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151B〜D ARS Water Loop（続き）（PDF p2062） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
