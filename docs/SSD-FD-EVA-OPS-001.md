# 合図と運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EVA-OPS-001 |
| 表題 | 合図と運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EVA-001 |
| 関連図 | SSD-SYS-ARC-001 図60 EVA 機能構成 |

## 1. 目的

10.2 psiキャビンの減圧・維持・再与圧とエアロックの構成（EMUの搭載替え・ブースタファン）といったEVAの段取り、カフチェックリスト（正常値・EMU故障索引・DCS区分・TERMINATE/ABORT EVA）とキューカードによる合図、運用飛行規則A15によるEVAの定義・制約の運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EVA-OPS-01 | 10.2 psiaキャビンの手順は減圧症の危険を減らすため飛行医が定めたもので、計画EVAではEMU内の前呼吸を短くできる選択肢1・2（初期前呼吸60分、10.2 psiaで12時間または24時間、EMU内で75分または40分）を選び、10.2 psiaの調圧器がないため圧力とPPO2を手動で管理する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403） |
| F-EVA-OPS-02 | マスク前呼吸はEV1・EV2が45分を終えるまで減圧を始めず、キャビンが10.2 psiaに達して1時間の前呼吸を終えるまで終えない。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=54） |
| F-EVA-OPS-03 | 減圧中はキャビン圧とPPO2を図表に記入して弁の構成を変え、可燃性の増大を防ぐためキャビンのO2濃度を28.5%未満に保ち、14.7 CAB REG INLET SYS 1からN2を流す間はWCSを使わない。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=54） |
| F-EVA-OPS-04 | 10.2 psiaの運用ではキャビン圧を10.0〜10.4 psia、PPO2を2.55〜2.80 psia（指示値）に手動で保ち、10.0 psiaの下限は冷却のための電力削減を避け、C&Wの上限10.6は前呼吸のPPN2 8.44 psiの限界を守るためである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977） |
| F-EVA-OPS-05 | EMUの搭載替え（30分）ではエアロックのEMUとミッドデッキのEMUを入れ替え、搭載したEMUを点検する前にそのSCUのO2弁を閉じておく。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=63） |
| F-EVA-OPS-06 | エアロックの空気循環系は非EVA時にエアロックへ調整空気を送るもので、ブースタファンにつなぐダクトは減圧のために乗員室とエアロックの間のハッチを閉じる前に外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| F-EVA-OPS-07 | カフチェックリストは手首のバンドに付けたアルミ合金の金具で綴じた約4×5インチのカードで、EVA作業の手順と参照データ、EMUの故障の診断と解決の補助を載せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451） |
| F-EVA-OPS-08 | 減圧症はカフ区分1〜4に分け、1はEVAを続けてEVA後のPMCで報告、2は作業場所を片付けてTERMINATE EVA、3は患者をエアロックへ補助しペイロードベイを安全にしてTERMINATE EVA、4はABORT EVAとして患者を単独で再与圧する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=195） |
| F-EVA-OPS-09 | TERMINATE EVAはEVA作業をやめてペイロードベイを片付け、エアロックに戻って再与圧することで、SCUで安定・是正できるEMUの問題ならその乗員は真空中でSCUにつないで救援に備え、もう1人がEVAを終えてよい。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1843） |
| F-EVA-OPS-10 | 加圧したエアロックからEVA乗員を締め出してはならないが、乗員が大きく離れて再与圧の時間が重要なABORT EVAは例外で、離れた乗員は外部ハッチの均圧弁でエアロックを減圧して入れる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846） |
| F-EVA-OPS-11 | MCCが判断するいずれかの消耗品の残りが30分になる時までにEVA乗員はエアロックへの進入を終えてSCUにつなぐ。30分は補充できない予備のSOPを使わないための予備である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866） |
| F-EVA-OPS-12 | 計画EVAはMET 72時間より前には行わず、計画外EVAは最初の24時間には行わず72時間より前に行うには飛行医の健康評価とフライトディレクタの承認を要し、帰還日にはEVAを行わない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1847） |
| F-EVA-OPS-13 | 計画・計画外EVAは将来の非常時EVAの能力（再充填の消耗品など）を損なう場合は行わず、EVAの終わりにはペイロードベイを軌道離脱のために次のEVAが要らない構成にしておく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1848） |
| F-EVA-OPS-14 | 本書のキューカードはSAFER点検結果・SAFER状態の切り分け、DEPRESS/REPRESS（通常構成・トンネルアダプタ）、FAILED LEAK CHECKと、EMERGENCY AIRLOCK REPRESSのデカールである。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=232） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-10 | UHF（SPLX・SSOR） | RF（無線） | 双方向 | SSORはSSCSの時分割多重の網で、EVA乗員の宇宙服無線（SSER、最大3台）とISSの無線（SSSR）と音声・データを交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184）EMUの無線は、他のEVA乗員・オービタとの音声通信、ECG/RTDSのテレメトリのオービタへの送信（記録・ダウンリンク用）、警報トーンを提供する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449） | 上位: IF-ORB-46 |
| IF-EVA-01 | EMU点検・準備 | データ・指令 | 送信 | キャビンを10.2 psiにしてからの時間（12時間・24時間）に応じてEMU内の前呼吸を1時間15分・40分とし、14.7 psiのままなら4時間とする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=88）SCOMの選択肢1・2も、初期前呼吸60分の後の最終前呼吸を、10.2 psiaで12時間なら75分、24時間なら40分とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403） | — |
| IF-EVA-05 | 減圧・再与圧 | データ・指令 | 送信 | 減圧・再与圧はエアロックの構成ごとのDEPRESS/REPRESSキューカード（通常構成・トンネルアダプタ）に従い、漏れ点検の不合格時の手順はその裏面のFAILED LEAK CHECKに載せる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=232） | — |
| IF-EVA-13 | 非常時の手順 | データ・指令 | 送信 | カフチェックリストで減圧症の区分を判断し、カフ4ではABORT EVAとして患者をエアロックへ連れ戻して単独で再与圧し、DCSの処置の手順へ移る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=195）DCSの処置の手順は、カフ4への進行を防ぐためにEVAを終えた後の処置を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=226） | — |
| IF-EVA-14 | 圧力制御系（PCS） | 推進薬・流体 | 受信 | マスク前呼吸では、LEH O2弁から簡易着用マスクへO2を送り、マスクの正のO2圧と密着で前呼吸を確保する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=52）10.2 psiの維持では、PPO2が2.70 psia未満ならDIRECT O2弁でO2を、キャビン圧が10.40 psia未満なら14.7 CAB REG INLET SYS 1弁でN2を加える。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=57） | 上位: IF-ORB-45 |
| IF-EVA-15 | 警報系（C/W） | データ・指令 | 送信 | 10.2 psiへの減圧、10.2 psiでの運用、14.7 psiへの再与圧の各段階でキャビン圧・PPO2などのC/W・FDAの限界値を設定し直し、MCCがB/U C/WとSMアラートの限界値を送る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=56） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EV-01 | JSC-48023 Rev. H（PCN-20） | EVA Checklist（汎用、2005年、PCN-20 2010年） | 1・2・15・20節（PDF p51〜66・p193〜206・p231〜232）：10.2 psiキャビンの減圧・維持・再与圧、エアロックの準備とEMUの搭載替え、カフチェックリスト（正常値・故障索引・DCS区分・TERMINATE/ABORT EVA）とキューカードの構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=193） |
| EV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Operations（PDF p403）と2.11節 Operations（p460〜461）：10.2 psiaキャビンの前呼吸の選択肢と、EVAの日程の制約（最長6時間、2人、飛行初日・4日目より前の禁止、応答時間など）を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/461） |
| EV-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-1〜26・A15-152・A15-153（PDF p1843〜1854・p1866〜1867）：EVA時間、TERMINATE/ABORT EVA、通信・CWS・IV支援の条件、日程の制約、非常時EVAの能力の保護、噴流・RFの立入禁止域、消耗品の30分の予備を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1867） |
| EV-04 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.7.3節（PDF p48）：10.2 psiaキャビンの前呼吸の選択肢（QDMでの初期前呼吸60分）と、圧力・PPO2の手動の管理を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=48） |
| EV-05 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.2節（PDF p53）：EVAチェックリストとカフチェックリストを通常運用を支える文書に、非常時EVAを非通常の文書に分類する。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=53） |
| EV-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS 6.2b（PDF p272）：10.2 psiの運用でO2濃度が28.5%を超えないよう処置を急ぐことを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=272） |
| EV-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-20 PCS 1(2) CONFIG（PDF p130）：PCSの構成の確認で、ミッドデッキ床のEMU O2隔離弁が閉であることを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=130） |
| EV-10 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p20：手袋の裂け目による4回目のEVAの早期の終了（飛行規則に従う）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| EV-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30：キャビンを乗員がエアロックを出るまで10.2 psiaに保ち、キャビンを14.7 psiaへ戻してから進入の再与圧を行ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| EV-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p65：1回目のEVAの後に、地上の専門家の評価のためEMUの手袋を撮影したことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=65） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOM（PDF p403）は初期前呼吸を打上げ・帰還用スーツのヘルメットで行うとするが、ECLSSの訓練マニュアル（2.7.3節）とEVAチェックリスト（1-2）は簡易着用マスク（QDM）で行う。本書はチェックリストに従った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403）

> **注記** 検証メモ：運用飛行規則A17-301はO2濃度を30%未満の許容範囲に保つとするが、EVAチェックリスト（1-4・1-7）はキャビンのO2濃度を28.5%未満に保つとし、MALのECLS 6.2bも10.2 psi運用での限界を28.5%とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977）

> **注記** 検証メモ：EVAチェックリストのEMU STATUSの表（5-2）は減圧後の服圧を4.2〜5.5 psidとするが、カフチェックリストの正常値（15-2）は減圧中・減圧後を4.7とする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=94）

> **注記** 検証メモ：運用飛行規則A15-102G（2002年）はNO VENT FLOWの表示が4.0 acfm未満で出るとするが、カフチェックリスト（2006年改訂の頁）は3.7 cfm未満で出るとする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=199）

> **注記** STS-125の4回目のEVAは、手袋の点検で乗員の左手のひらの裂け目が見つかったため、確立された飛行規則に従って早めに終えた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=20）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p403） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403
2. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 1-4 CABIN DEPRESS TO 10.2 PSI（PDF p54） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=54
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-302 10.2 PSIA Cabin Depressurization Constraints（PDF p1977） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977
4. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 2-3 EMU SWAP（PDF p63） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=63
5. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
6. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p451） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451
7. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 15-3 DECOMPRESSION SICKNESS (DCS)（PDF p195） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=195
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-2 TERMINATE EVA DEFINITION（PDF p1843） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1843
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-13 Airlock Configuration（PDF p1846） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-152 EMU Consumables with Real-Time EMU Data Downlink（PDF p1866） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-14 SCHEDULED AND UNSCHEDULED EVA CONSTRAINTS（PDF p1847） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1847
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-15 CONTINGENCY EVA PROTECTION（PDF p1848） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1848
13. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 20-2 CUE CARD CONFIGURATION（PDF p232） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=232
14. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p184） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Feedwater Circuit・Electrical System（PDF p449） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449
16. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-8 EMU PREBREATHE（PDF p88） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=88
17. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 19.1 DCS TREATMENT（PDF p226） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=226
18. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 1-2 MASK PREBREATHE INITIATE（PDF p52） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=52
19. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 1-7 10.2 PSI MAINTENANCE（PDF p57） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=57
20. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 1-6 10.2 PSI CABIN CONFIG（PDF p56） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=56
21. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 5-2 EMU STATUS（PDF p94） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=94
22. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 15-7 NO VENT FLOW（カフ20）（PDF p199） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=199
23. NSTS-37452 STS-125 Mission Report（2010） Flight Day 7（PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=20
24. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
