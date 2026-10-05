# UHF（SPLX・SSOR）（UHF）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-UHF-001 |
| 表題 | UHF（SPLX・SSOR）（UHF）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

UHFシンプレックス（ATC）系による地上局・航空機との音声通信と、宇宙間通信系（SSCS）のSSORによるISS・EVA乗員との音声・データ通信の機能と、その周波数・送信電力・電源の構成を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-UHF-01 | UHF系は能力の異なる2つの系、UHFシンプレックス（SPLX）系とUHF SSOR系から成り、パネルO6の5位置のUHF MODEロータリスイッチで電源を入れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181） |
| F-CT-UHF-02 | SPLXは259.7 MHz（予備296.8 MHz）の送受信機を働かせ、SPLX + G RCVではガードの243.0 MHz緊急受信機も働き、G T/Rでは243.0 MHzの送受信機で非常時の音声通信を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181） |
| F-CT-UHF-03 | UHFシンプレックス（ATC）系は上昇・再突入でS帯PMのバックアップとしてSTDN地上局経由でMCCと通信し、送信と受信を同時にはできない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181） |
| F-CT-UHF-04 | SPLX・GUARDモードでは、UHF送受信機はACCUのA/Aループの音声を前方胴体下面の外部UHFアンテナから送信し、受信した信号を復調してA/Aループへ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181） |
| F-CT-UHF-05 | SPLX PWR AMPLスイッチをONにすると10 W、OFFにすると電力増幅回路を迂回して0.25 Wで送信し、XMIT FREQスイッチで259.7 MHz（主）か296.8 MHz（副）を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/182） |
| F-CT-UHF-06 | UHF MODEのEVAはSSORを働かせてSPLXを止め、SSORは宇宙間通信系（SSCS）の一部で、SSCSは414.2または417.1 MHzで動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） |
| F-CT-UHF-07 | SSORの主アンテナはエアロックトラスの右舷側にあり、出入り前のEVA点検のためエアロック内のアンテナにもつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） |
| F-CT-UHF-08 | SSORは主・予備の2組の無線機（EVA STRINGで1・2を選び、1が主）を持ち、送信電力は低電力19.1 dBm（約80 mW）と高電力31.6 dBm（約1.44 W）で、高電力はFCCの限度を超えるため使わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） |
| F-CT-UHF-09 | SSORの状態（主・予備、フレーム同期、処理器の状態）は、SM COMMUNICATIONS（SPEC 76）とSM OIU（SPEC 212）の2つのDPS表示に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） |
| F-CT-UHF-10 | EVA乗員との会話はパネルA1RのUHFスイッチの構成に応じてA/G 1またはA/G 2でS帯PMまたはKu帯系からMCCへ送られ、EVAの生体・宇宙服データはUHF/SSORの搬送波から取り出された後にOI系を経て送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） |
| F-CT-UHF-11 | EVA通信の構成では、パネルR14のMNA UHF EVAとMNC UHF EVAの遮断器が閉であることを確かめ、送信周波数を259.7/414.2、EVA STRINGを1、UHF MODEをEVAにする（EVAチェックリスト4-10）。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=90） |
| F-CT-UHF-12 | STS-4では、軌道上で初めてUHFの周波数を296.8 MHzから259.7 MHzに変え、地上アンテナの高い利得を利用した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-04 | 追跡・通信網（TDRS・STDN） | RF（無線） | 双方向 | UHFシンプレックス（ATC）系は、上昇・再突入でSTDN地上局を介してMCCとS帯PMのバックアップの音声通信を行い、着陸時には航空交通管制と随伴機との音声通信にも使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181）ガードの243.0 MHzは航空交通管制施設との非常時の通信専用で軌道上では通常使わず、軌道上の259.7 MHz・296.8 MHzはTDRSを経由しない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1678） | 上位: IF-ORB-16 |
| IF-CT-10 | 船外活動（EVA/EMU） | RF（無線） | 双方向 | SSORはSSCSの時分割多重の網で、EVA乗員の宇宙服無線（SSER、最大3台）とISSの無線（SSSR）と音声・データを交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184）EMUの無線は、他のEVA乗員・オービタとの音声通信、ECG/RTDSのテレメトリのオービタへの送信（記録・ダウンリンク用）、警報トーンを提供する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449） | 上位: IF-ORB-46 |
| IF-CT-17 | 音声分配（ACCU・ATU） | データ・指令 | 双方向 | UHF MODEでSPLX・SPLX + G RCV・G T/Rのいずれかを選ぶと、UHF（ATC）送受信機は自動でACCUのA/A音声ループにつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181）SSORは、パネルA1Rの音声センタのUHFスイッチを通してオービタの音声系につながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Ultrahigh Frequency System（PDF p181〜185）：UHFシンプレックス（259.7/296.8 MHz、ガード243.0 MHz）とEVA/SSOR（414.2/417.1 MHz）の2つの系、パネルO6の操作器、SPEC 76・SPEC 212の表示を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-10・A11-69（PDF p1678・p1702）：UHFの公称構成（シンプレックス259.7 MHz）とEVA時の構成、UHFの喪失時の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1678） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.3c NO UHF VOICE（PDF p64）：UHFの公称構成と、スケルチ・ACCU・周波数・ガード・電力増幅器の切替による切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=64） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-6 AV BAY 3A（PDF p92）：EVA/ATCのUHF送受信機（EVA ATC XCVR）のアビオニクスベイ3Aでの位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=92） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-12 PRE-SLEEP AUD CONFIG (UNDOCKED)（PDF p56）：ドッキングしていない時の睡眠前の構成でUHF MODEがOFFであることを確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=56） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節 6項（PDF p187）：オービタ下面のUHFアンテナが空対地のシンプレックスモードでだけ放射することを示す（3.4.2.5項を参照）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187） |
| CT-09 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | 4-10 EVA COMM CONFIG（PDF p90）：MNA・MNC UHF EVAの遮断器、UHF MODE（EVA）、送信周波数、EVA STRING、生体データのチャネル、ISSとのドッキング時のA/G 1の扱いを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=90） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4.2節（PDF p39）：オービタのEVA/ATCのUHF装置が全飛行段階で良好に働いたと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39） |
| CT-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.4.2節（PDF p24）：軌道上で初めてUHFの周波数を296.8 MHzから259.7 MHzに変えたことと、着陸時に2つの地上局のUHF送信が重なって上りの音声が乱れたことを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOMの要約（PDF p200）はUHFシンプレックス系をS帯PMとKu帯の音声のバックアップとするが、2.4節の本文（PDF p181）は上昇・再突入でのS帯PMのバックアップとする。本書は本文に従った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/200）

> **注記** SSCSの通信距離の目安は、SSOとISSの間で7 km（高電力）・約2 km（低電力）、SSOとEMUの間で160 m（低電力）である（SCOMの図）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184）

> **注記** SODBは、オービタ下面のUHFアンテナが空対地のシンプレックスモードでだけ放射するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p181） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181
2. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p182） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/182
3. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p184） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184
4. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-10 EVA COMM CONFIG（PDF p90） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=90
5. STS-4 Orbiter Mission Report 2.3.4.2 UHF Transceivers（PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-10 UHF USAGE（PDF p1678） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1678
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Feedwater Circuit・Electrical System（PDF p449） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449
8. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p200） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/200
9. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.2 Communication and Tracking Subsystem（PDF p187） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187
10. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
