# EMU補給・支援（SCU）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ALS-SCU-001 |
| 表題 | EMU補給・支援（SCU）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ALS-001 |
| 関連図 | SSD-SYS-ARC-001 図24 エアロック支援系 機能構成 |

## 1. 目的

エアロックに搭載したEMUを保持し、サービス・冷却アンビリカル（SCU）を通してO2・水・電力・有線通信を供給してPLSSを再充電し、EMUの排水を受ける機能と、補給の熱的な制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ALS-SCU-01 | エアロックのEMUマウントはEMUの背面を壁の3つの取付具に固定して収納と着脱を支え、下部胴体拘束袋が打上げ・再突入時にEMUの下部胴体を拘束する（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| F-ECL-ALS-SCU-02 | SCUは3本の水ホース、高圧O2ホース、電線、水圧調整器、張力保持テザーから成り、EMUとエアロックを結んで電力、有線通信、O2、廃水排出、水冷却と、PLSSのO2タンク・水リザーバ・バッテリの再充電を提供する（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| F-ECL-ALS-SCU-03 | エアロックを通るO2配管はEMUの補給に900 psiのO2を供給し、PCSのO2クロスオーバマニホールドから給気され、パネルAW82BのEMU OXYGENスイッチでPCS 1・2系のO2を使えるようにする（訓練マニュアル6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） |
| F-ECL-ALS-SCU-04 | エアロック床のEMU O2隔離弁は、エアロック内やペイロードベイへの移送配管の漏れを防ぐ手動の遮断弁で、その上流のEVLSS O2圧力センサがAW82Bの圧力計を駆動する。EVAで緊急分離する場合に備え、エアロック外側（AW64）にEVAでだけ操作できる手動隔離弁がある（訓練マニュアル6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=177） |
| F-ECL-ALS-SCU-05 | EMUの給水（EVA中の昇華冷却用と飲用）は給水系のA・B出口系統から取り、途中のフィルタと逆止弁でEMUからオービタへ汚染が入るのを防ぎ、下流の給水遮断弁で漏れを隔離する。給水後は廃水戻りラインから廃水タンクへアレージダンプを行う（訓練マニュアル6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） |
| F-ECL-ALS-SCU-06 | PLSSの一次O2系は1.217 lbのO2を850 psiaで蓄え、SCUを通してオービタECLSSから850±50 psigで充填される（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447） |
| F-ECL-ALS-SCU-07 | EMUの給水タンク（約9 lb、15 psig）は、オービタECLSSの飲料水で充填・再充填する（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449） |
| F-ECL-ALS-SCU-08 | EMU 1・2の電源・バッテリ充電器はパネルAW18Hで主母線A・Bのどちらかを選んで給電され、主母線A（MNA DA1）を失ったときにバッテリ充電中であれば主母線Bに切り替える（MAL EPS SSR-10）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=464） |
| F-ECL-ALS-SCU-09 | エアロックのオーディオ端末装置（ATU）は、パネルAW18DのMASTER VOLUME 1・2でエアロック内のCCU 1・2出力口の音量を調整する（SCOM 2.4節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/191） |
| F-ECL-ALS-SCU-10 | EMUの消耗品のいずれかが残り30分になったEVA乗員はエアロックに入ってSCUに接続する。SCUはEMUのどの消耗品の喪失にも対応でき、O2と水は真空中でも再充填できる（A15-152）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866） |
| F-ECL-ALS-SCU-11 | EMUのO2補給は、原則としてO2供給ラインの温度が80°F（指示値）以下のときに行い、EMUへ流れるO2を90°F未満に保つ（A15-204A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1876） |
| F-ECL-ALS-SCU-12 | EMUの給水の再充填は、外部エアロックの給水配管の温度が両区域で95°F以下のときに行う（A15-204D）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1877） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-05 | 圧力制御系：酸素供給・分配 | 推進薬・流体 | 受信 | エアロックのEMU用O2供給弁は、EMUの補給とISSへの酸素移送のために、O2クロスオーバマニホールドの高圧の酸素をエアロックへ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） | 上位: IF-ECL-04 |
| IF-ALS-03 | 給水・廃水系：給水貯蔵・分配 | 推進薬・流体 | 受信 | 給水系のA・B出口系統の水を、フィルタ・逆止弁（EMUからオービタへの汚染を防ぐ）とその下流の給水遮断弁を通してエアロックへ送り、EMUの給水（昇華冷却用・飲用）に使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176）給水タンクBの水は通常、FES給水系統AとエアロックのEMU給水に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398） | 上位: IF-ECL-13 |
| IF-ALS-04 | 廃棄物収集系：尿・EMU凝縮水収集 | 推進薬・流体 | 送信 | EVAを行う飛行では、EMUの凝縮水をエアロックから受けてWCSで処理し、廃水タンクへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755）EMUの排水はエアロックの廃水弁から排出され、WCSはEMU排水モードで受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） | 上位: IF-ECL-26 |
| IF-ALS-05 | 電力系（EPS） | 電力（28 VDC） | 受信 | EMU 1・2の電源・バッテリ充電器は、パネルAW18Hで主母線A・Bのどちらかを選んで給電される。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=464）EMUをエアロックの電力を受ける構成にすれば、EMUのバッテリを失っても補える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866） | 上位: IF-ECL-16 |
| IF-ALS-06 | EMU（船外活動ユニット） | 推進薬・流体 | 双方向 | SCUは3本の水ホース、高圧O2ホース、電線、水圧調整器から成り、EMUとエアロックを結んで電力、有線通信、O2、廃水排出、水冷却と、PLSSのO2タンク・水リザーバ・バッテリの再充電を提供する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）PLSSの一次O2系はSCUを通して850±50 psigで充填される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447） | 上位: IF-ECL-20 |
| IF-ALS-15 | 配管・構造ヒータ | 熱 | 受信 | EMU給水（ISS移送兼用）の飲料水供給配管と廃水戻り配管は与圧区画の外を通り、区域ごとに各配管に巻いた3系統のヒータで加温する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179）ペイロードベイ内の給水・廃水配管は3重冗長のヒータで熱調整される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.3節（PDF p176〜177）：EMU補給用のO2配管（900 psi、AW82BのEMU OXYGENスイッチ、床のEMU O2隔離弁）と、フィルタ・逆止弁・給水遮断弁を通る給水、廃水戻りラインへのアレージダンプを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節（PDF p447〜449・p456）：SCU（水ホース3本、高圧O2ホース、電線、水圧調整器）の機能、EMUマウント、PLSSのO2充填（850±50 psig）と給水タンクの再充填を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-152・A15-204（PDF p1866・p1876〜1878）：消耗品が残り30分でSCUに接続することと、O2補給・給水の再充填の温度制約、バッテリ充電に制約がないことを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-20（PDF p362）とEPS SSR-10（p464）：給水の小漏れの切り分けでARLK H2O S/O VLVを閉じて外部エアロックの水移送配管の漏れを判定する手順と、主母線A喪失時にEMUの電源・充電器を主母線Bに切り替える手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=362） |
| AL-06 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | タンクA・Bの水がエアロックでのEMU補給に使われ、WCSがエアロックからのEMU凝縮水を処理して廃水タンクへ移すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | SCUを介してEMUへ電力・酸素・水を供給し、酸素はエアロック盤AW82Bから900±500 psiaで、電力はAW18Hから17±0.5 VDC・5 Aで供給すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-20 PCS 1(2) CONFIG（PDF p130）：PCS構成の確認で、ミッドデッキ床のEMU O2 ISOL VLVが閉であることを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=130） |
| AL-17 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p24：EMUの実演で生じた通信雑音の原因を、EMUを収納・着脱時に拘束するエアロックのアダプタ板とEMUの緩い嵌合とし、緩い嵌合は取り外しやすさのための設計どおりと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 外部エアロックのO2配管は、オービタの極低温O2をISSへ移送するのにも使う（訓練マニュアル6.3節）。ISSとの移送は本書の対象外とし、図24には描かない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176）

> **注記** ISSへのN2移送は、PCSのMMU A GN2供給に接続した、エアロックの外を通る配管で行う（訓練マニュアル6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=177）

> **注記** 検証メモ：SCOM（PDF p398）は外部エアロックの水移送弁と配管によるISSへの給水移送を「現在は使う予定がない」とし、訓練マニュアル表6-1（PDF p195）はARLK H2O S/O VLVがシャトルとISSの間の水移送配管を隔離するとする。本書は給水遮断弁を、EMU給水と水移送配管の漏れを隔離する弁として扱った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398）

> **注記** EVA中にCO2分圧が高く症状がある乗員は、EVAを中止してエアロックに戻り、SCUに接続する（A13-52B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775）

> **注記** EMUの排水はエアロックの廃水弁からWCSへ送る（IF-ALS-04）。EMU本体（宇宙服・PLSS）は親のSSD-FD-ECL-ALS-001と同じく外部ブロックとして扱い、本書の機能に含めない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 External Airlock Subsystems（PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（続き）（PDF p177） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=177
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Life Support System（Primary Oxygen System）（PDF p447） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Feedwater Circuit・Electrical System（PDF p449） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449
6. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-10 Bus Loss: MNA DA1（PDF p464） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=464
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.4節 Communications（Audio Terminal Unit）（PDF p191） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/191
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-152 EMU Consumables with Real-Time EMU Data Downlink（PDF p1866） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-204 External Airlock EMU Servicing Constraints（PDF p1876） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1876
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-204 External Airlock EMU Servicing Constraints（続き）（PDF p1877） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1877
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.1節 Oxygen System・2.2節 Nitrogen System（PDF p23） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water Tank Outlet Valves（PDF p398） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（PDF p755） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（EMU water drain mode）（PDF p759） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図6-7 Airlock ductwork configuration・6.5節 Heaters（PDF p179） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-52 PPCO2 Constraint（PDF p1775） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
