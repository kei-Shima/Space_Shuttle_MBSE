# 正負圧逃し・ベント（RLF）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-PCS-RLF-001 |
| 表題 | 正負圧逃し・ベント（RLF）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-PCS-001 |
| 関連図 | SSD-SYS-ARC-001 図18 圧力制御系 機能構成 |

## 1. 目的

乗員室構造を過大圧・過小圧から守る正圧逃し弁・負圧逃し弁と、地上で乗員室をベントするベント隔離弁・ベント弁の機能と、打上げ前の気密点検、飛行中の弁の管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-PCS-RLF-01 | 2個の正圧逃し弁は15.5 psidで開き、16.0 psidで全開、15.5 psid未満で閉じる。モータ駆動の逃し隔離弁が直列にあり、逃し弁が開いたまま故障すれば隔離して他方で保護を続ける。逃し弁はWCS区画の後壁の裏にあってペイロードベイへ逃がす（訓練マニュアル2.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30） |
| F-ECL-PCS-RLF-02 | 各逃し弁はL2のCABIN RELIEFスイッチで制御し、ENABLEで電動弁が開いて乗員室圧を逃し弁に導き、逃し弁の最大流量は16.0 psidで150 lb/hrである（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/368） |
| F-ECL-PCS-RLF-03 | 2個の負圧逃し弁は外気圧が乗員室圧を0.2 psid上回ると開いて外気を入れ、乗員室がつぶれるのを防ぐ。弁はサイドハッチの下にあり、冗長のシールとして付けたキャップは弁が開くと外れる（訓練マニュアル2.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30） |
| F-ECL-PCS-RLF-04 | 負圧逃し弁は、漏れの後の再突入の終盤のように乗員室圧が外より低いときに開き、乗員の操作は要らない（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| F-ECL-PCS-RLF-05 | キャビンベント隔離弁とキャビンベント弁は直列のモータ駆動弁で、地上で乗員室をペイロードベイへベントする。ベント管は2 psidで1,080 lb/hrを流せるため打上げ後は決して開けず、軌道投入後のチェックリストで弁の電源を切る（訓練マニュアル2.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30） |
| F-ECL-PCS-RLF-06 | 打上げ前の気密点検では地上要員が乗員室を16.7 psiaに加圧して35分間圧力の低下がないことを確かめ、その間にベント弁とベント隔離弁を交互に開閉して各弁が圧力を保つことを確かめる（訓練マニュアル2.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30） |
| F-ECL-PCS-RLF-07 | 両方の正圧逃し弁は、開かない故障が過大圧になるまで検知できないため、すべての飛行段階で有効にしておく（A17-252）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966） |
| F-ECL-PCS-RLF-08 | ベント弁は打上げ前に閉じ、上昇後に遮断器を開いて着陸後の引渡しまで開いたままにし、誤って弁が開くのを防ぐ（A17-253）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966） |
| F-ECL-PCS-RLF-09 | 小さな乗員室漏れの隔離手順では、負圧逃し弁のキャップを押し込み、CAB RELIEF A・Bを閉じるなどして漏れ箇所を探し、回復の手順で逃し弁を再び有効にする（MAL ECLS SSR-8）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=345） |
| F-ECL-PCS-RLF-10 | 1979年の飛行運用マニュアルは、正圧逃し弁が15.5 psiで自動的に開き、ベント弁はペイロードベイへ直接ベントし、負圧逃し弁は乗員室圧が外より低いときに乗員室へ流れを入れるとした。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14） |
| F-ECL-PCS-RLF-11 | 1988年のIOA評価は、FMEAが挙げた正圧・負圧逃し弁の取付けフランジの割れという故障モードを、原因（材料欠陥・機械的衝撃・振動）との関係が現実的でないとして解析しなかった（IOA中間報告C.16節）。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-07 | 乗員室（制御対象） | 推進薬・流体 | 双方向 | CABIN RELIEFスイッチをENABLEにすると電動弁が開いて乗員室圧を正圧逃し弁に導き、逃し弁は15.5 psidで開き、16.0 psidで全開となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/368）乗員室圧が外より低いときは、並列の2個の負圧逃し弁が0.2 psidで開いて外気を乗員室へ入れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | 上位: IF-ECL-02 |
| IF-PCS-08 | 宇宙空間（船外） | 推進薬・流体 | 双方向 | 正圧逃し弁とキャビンベント弁はWCS区画の後壁の裏にあってペイロードベイへ逃がし、負圧逃し弁はサイドハッチの下にあって外気を乗員室へ入れる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30）ベント隔離弁とベント弁の両方を開くと乗員室は中胴へベントされ、2.0 psidで最大1,080 lb/hrが流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | — |
| IF-PCS-21 | 電力系（EPS） | 電力（28 VDC） | 受信 | O14のMNAの遮断器が、L2のCABIN VENTスイッチとCABIN VENT ISOLスイッチに主母線Aの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52）CABIN RELIEF AスイッチにはO15のMNB、CABIN RELIEF BスイッチにはO16のMNCの遮断器が給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） | 上位: IF-ECL-42 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.4節（PDF p30）：正圧逃し弁（15.5 psid）と逃し隔離弁、負圧逃し弁（0.2 psid）、地上用のベント弁・ベント隔離弁（2 psidで1,080 lb/hr）と打上げ前の気密点検（16.7 psia・35分）を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Relief Valves・Negative Pressure Relief Valves（PDF p368〜369）：正圧逃し弁（15.5 psid、16.0 psidで150 lb/hr）、中胴へのベント（2.0 psidで1,080 lb/hr）、負圧逃し弁（0.2 psid）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/368） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-252・253（PDF p1966）：両方の正圧逃し弁を全飛行段階で有効にし、ベント弁は打上げ前に閉じて上昇後に遮断器を開くと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-8（PDF p345）：乗員室漏れの隔離で負圧逃し弁のキャップを押し込み、CAB RELIEF A・Bを閉じ、回復の手順で再び有効にする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=345） |
| PC-12 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） | ARPCSの構成品の一つとしてキャビン逃し弁を挙げる（抄録で確認）。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html） |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | 正・負の圧力逃し弁が乗員室構造を過大圧・過小圧から守ると記す。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.1.2節（PDF p14）：正圧逃し弁が15.5 psiで自動的に開いて電磁弁で隔離でき、ベント弁はペイロードベイへベントし、負圧逃し弁が乗員室へ流れを入れるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14） |
| PC-28 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.16節（PDF p77）：正圧・負圧逃し弁の取付けフランジの割れという故障モードを、IOAは現実的でないとして解析しなかったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77） |
| PC-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.3節（PDF p51）：打上げ中止となった試みで、気密点検の後のベント隔離弁の表示が正しく出なかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：ベント弁の排出先を、訓練マニュアル（2.4節）はペイロードベイ、SCOM（PDF p369）は中胴（mid-fuselage）とする。図18では、宇宙空間（船外）へのIF（IF-PCS-08）にまとめた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）

> **注記** 検証メモ：逃し隔離弁を、1979年の飛行運用マニュアル（PDF p14）は電磁弁、訓練マニュアル（2.4節）はモータ駆動弁とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14）

> **注記** STS-2の打上げ中止となった試みでは、気密点検の後にベント隔離弁を閉じても機上の表示が閉を示さず、開閉を繰り返した後に閉を示した（STS-2ミッション報告）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.4節 Over/Underpressurization Protection（PDF p30） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Relief Valves・Vent Isolation and Vent Valves（PDF p368） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/368
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Vent Isolation and Vent Valves・Negative Pressure Relief Valves・Water Tank Regulator Inlet Valve（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-252 Cabin Pressure Relief Valves・A17-253 Cabin Vent Valves（PDF p1966） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966
5. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-8 Small Cabin-Leak Isol（PDF p345） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=345
6. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.1.2節 Pressurization System Description（続き）（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14
7. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） C.16節（続き）（PDF p77） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O14・O15の遮断器）（PDF p52） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O15・O16の遮断器）（PDF p53） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53
10. JSC-17959 STS-2 Orbiter Mission Report（1982年） 2.4.3節 Air Revitalization Pressure Control Subsystem（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-PCS-21 の上位を IF-ECL-42 に付け替え（Rev. M） |
