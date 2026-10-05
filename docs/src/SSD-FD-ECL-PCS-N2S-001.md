# 窒素供給（N2S）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-PCS-N2S-001 |
| 表題 | 窒素供給（N2S）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-PCS-001 |
| 関連図 | SSD-SYS-ARC-001 図18 圧力制御系 機能構成 |

## 1. 目的

ペイロードベイの窒素タンクからN2供給弁と200 psigのN2レギュレータを経て乗員室へ窒素を送り、O2/N2制御弁と水タンク用レギュレータへ分配する機能と、MMU・ISSへの供給、N2系統の運用規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-PCS-N2S-01 | PCSの窒素は通常ペイロードベイの4基のタンクから供給するが、長期飛行では機体の漏れとウェットトラッシュのベント、RCRSのベント、EVAでの再与圧に多くの窒素が要るため、最大8基まで増やせるようにした（訓練マニュアル2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） |
| F-ECL-PCS-N2S-02 | 常設の4基のうち系統1のタンク3・4は重心の調整のため後部ペイロードベイに移され、系統2のタンク1・2は前部右側にあり、追加の最大4基は飛行ごとにミッションキットとして搭載する（訓練マニュアル2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=24） |
| F-ECL-PCS-N2S-03 | SCOMは、系統1のタンクを左舷、系統2を右舷に置き、OV-103・OV-105は6基、OV-104は5基とし、タンクはチタンライナのケブラー繊維巻きで、80°Fで公称2,964 psia、容積8,181 in³に充填するとする（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364） |
| F-ECL-PCS-N2S-04 | 3,300 psiaの窒素はモータ駆動のN2供給弁からN2供給マニホールドへ入り、N2レギュレータ入口弁を経て200 psigのN2レギュレータで200 psiaに下げられる。弁は電源を失うとその位置に留まり、タンクにヒータはなく圧力だけで送り出す（訓練マニュアル2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| F-ECL-PCS-N2S-05 | N2レギュレータの逃し弁は275 psigで開いて245 psigで閉じ、レギュレータの故障による過圧から窒素系を守るため、真空ベント管から船外へ逃がす（訓練マニュアル2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| F-ECL-PCS-N2S-06 | 調圧後の窒素は乗員室内の逆止弁で他系統への逆流と上流の配管漏れによる流出を防ぎ、N2クロスオーバ弁、水タンク用レギュレータ入口弁、ペイロード用N2弁、O2/N2制御弁へ送る。各系統は少なくとも125 lbm/hrを供給でき、N2クロスオーバ弁は通常閉じておく（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/365） |
| F-ECL-PCS-N2S-07 | 水タンク用N2レギュレータは200 psiの窒素を15.5〜17.0 psigに下げる2段式のレギュレータで、2段目は18.5±1.5 psigで乗員室へ逃がす（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| F-ECL-PCS-N2S-08 | 給水・廃水タンクは17 psigに加圧され、乗員の使用、船外ダンプ、FESへの給水に必要な圧力で水を押し出す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361） |
| F-ECL-PCS-N2S-09 | N2タンクとN2供給弁の間のMMU GN2隔離弁を開くと高圧の窒素をMMUへ供給でき、ISSへの窒素の移送はPCSのN2系統1だけで行う（訓練マニュアル2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| F-ECL-PCS-N2S-10 | 通常は両方のN2系統を供給弁・レギュレータ入口弁とも開いて1系統として運用し、全タンクから均等に消費する。供給弁が閉じたまま固着する可能性の方が大量のタンク漏れより大きいと判断している（A17-257）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971） |
| F-ECL-PCS-N2S-11 | N2タンクの圧力が200（375）psia未満になると、N2レギュレータが制御を失って14.7 psiのキャビンレギュレータの需要を満たせなくなるため、N2供給を喪失とみなす（A17-204A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962） |
| F-ECL-PCS-N2S-12 | STS-3・STS-4では、テールを太陽に向けた低温の姿勢でGN2系統の漏れが同じ温度・同じ率で繰り返し現れ、真空ベント管の温度差とヒータのデューティ増加で確かめられたが、圧力とPPO2の制御には影響しなかった（STS-4ミッション報告）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-02 | O2/N2マニホールド・PPO2制御 | 推進薬・流体 | 送信 | 調圧した200 psigの窒素のO2/N2マニホールドへの流れは、O2/N2コントローラが操作するO2/N2制御弁で制御する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25）制御弁が開くと200 psiの窒素がマニホールドを満たし、O2の逆止弁を閉じる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28） | — |
| IF-PCS-06 | 給水・廃水系：タンク加圧 | 推進薬・流体 | 送信 | 水タンク用N2レギュレータ入口弁を開くと窒素がレギュレータとH2O TK N2 ISOL弁へ流れ、レギュレータは200 psiの窒素を15.5〜17.0 psigに下げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）給水・廃水タンクは17 psigに加圧され、乗員の使用、船外ダンプ、FESへの給水に必要な圧力で水を押し出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361） | 上位: IF-ECL-03 |
| IF-PCS-09 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 200 psigのN2レギュレータの逃し弁は275 psigで開いて245 psigで閉じ、レギュレータの故障による過圧から窒素系を守るため、真空ベント管から船外へ逃がす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） | — |
| IF-PCS-12 | 計測・表示・警報 | 推進薬・流体 | 送信 | 系統1・2の窒素系でN2流量（0〜5 lbm/hr）、N2レギュレータ圧（REG P）、水タンクのN2圧、N2量のもとになる値を計測し、SM SPEC 66に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=42）N2量はPASSのSM計算機がタンクの圧力・容積・温度（PVT）から求める。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） | — |
| IF-PCS-20 | 電力系（EPS） | 電力（28 VDC） | 受信 | O14のMNAの遮断器が、L2のN2 SYS 1 SUPPLYスイッチとSYS 1 N2 REG INLETスイッチに主母線Aの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52）系統2のN2 SUPPLYスイッチとN2 REG INLETスイッチには、O15のMNBの遮断器が給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） | 上位: IF-ECL-42 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.2節（PDF p23〜25）：ペイロードベイの4〜8基のN2タンク、モータ駆動のN2供給弁・レギュレータ入口弁、200 psigのN2レギュレータと真空ベント管への逃し弁、水タンク用N2レギュレータ、MMU・ISSへの供給を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Nitrogen System（PDF p364〜365）：左舷・右舷のN2タンク（OV-103・105は6基、OV-104は5基、2,964 psia）、200±15 psigの2段式レギュレータ、各系統125 lbm/hr以上の供給能力を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-204・257（PDF p1962・p1971）：N2タンク圧が200（375）psia未満でN2供給を喪失とし、両N2系統を1系統として運用すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2g N2 QTY（PDF p282）：N2量の低下（2基の系統で100未満など）の処置で、MMUのGN2供給隔離弁を閉じて漏れを調べる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=282） |
| PC-07 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDO向けの改修の一つとしてN2供給を挙げる。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | 窒素が給水・廃水タンクの加圧にも使われると記す。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| PC-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCSの窒素で水タンクを加圧することを記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| PC-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.6.3節（PDF p42）：テールを太陽に向けた姿勢でGN2系統の漏れがSTS-3と同じ温度・同じ率で現れたが、圧力制御には影響しなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| PC-32 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30：ISS側のクイックディスコネクトが外れていたためISSへのGN2の移送を行えず、再与圧の後はオービタのGN2タンクの圧力がISSの貯蔵圧より低くなったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| PC-33 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p49：ISSへ約22 lbの窒素を移送し、ISS全体の再与圧を4回支援したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：N2レギュレータの逃し弁が開く圧力を、訓練マニュアル（2.2節）は275 psig、SCOM（PDF p365）は295 psigとし、閉じる圧力はどちらも245 psigとする。本書は訓練マニュアルの値を用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/365）

> **注記** 検証メモ：N2タンクの圧力を、訓練マニュアルは3,300 psia（2.8節の運用範囲は285〜3,300 psig、PDF p55）、SCOM（PDF p364）は80°Fで公称2,964 psiaとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=55）

> **注記** 検証メモ：水タンクの加圧を、親文書のIF-ECL-03（NSTS 1988 News Reference Manual）は16 psigとし、SCOMはタンクを17 psig（PDF p361）、水タンク用レギュレータの出口を15.5〜17.0 psig（PDF p369）とする。図18ではIF-ECL-03の下位をIF-PCS-06とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）

> **注記** SCOMの経験則は、7人の乗員・14.7 psiaでの典型的な窒素の消費を1日約6 lbmとする（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.1節 Oxygen System・2.2節 Nitrogen System（PDF p23） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.2節 Nitrogen System（図2-3 Location of N2 tanks）（PDF p24） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=24
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Nitrogen System（PDF p364） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/364
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.2節 Nitrogen System・2.3節 Oxygen/Nitrogen Manifold（PDF p25） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Nitrogen System（続き）（PDF p365） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/365
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Vent Isolation and Vent Valves・Negative Pressure Relief Valves・Water Tank Regulator Inlet Valve（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen System（PDF p361） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-256 O2 Bleed Orifice Management・A17-257 N2 System Management（PDF p1971） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-204 N2 Supply・A17-205 PPO2 Sensor Loss Definition（PDF p1962） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962
10. JSC-18553 STS-4 Orbiter Mission Report（1982年） 2.6.3節 Air Revitalization Pressure Control Subsystem（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.3.1〜2.3.2節 O2/N2 Control Valve Manually Open・Closed（PDF p28） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図2-16 PASS SM SPEC 66（PDF p42） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=42
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.6.1節 Instrumentation（PDF p39） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O14・O15の遮断器）（PDF p52） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O15・O16の遮断器）（PDF p53） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53
16. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.8節 Pressurization System Performance, Limitations, and Capabilities（PDF p55） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=55
17. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS Rules of Thumb（PDF p419） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-PCS-20 の上位を IF-ECL-42 に付け替え（Rev. M） |
