# O2/N2マニホールド・PPO2制御（MNF）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-PCS-MNF-001 |
| 表題 | O2/N2マニホールド・PPO2制御（MNF）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-PCS-001 |
| 関連図 | SSD-SYS-ARC-001 図18 圧力制御系 機能構成 |

## 1. 目的

O2/N2マニホールドへ酸素か窒素を送るO2/N2制御弁、乗員室の全圧を保つ14.7 psiaキャビンレギュレータと8 psia非常用レギュレータ、PPO2に応じて制御弁を開閉する2台のO2/N2コントローラの機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-PCS-MNF-01 | 14.7 psiaキャビンレギュレータは入口弁が開いているとき乗員室圧を14.7 psiaに制御し、O2/N2マニホールドにある気体（O2またはN2）が、乗員室圧が14.7 psiaを下回ると補給流として乗員室へ流れる（訓練マニュアル2.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| F-ECL-PCS-MNF-02 | 8 psia非常用レギュレータは大きな漏れのときに乗員室圧を8 psiaに保つよう流し、入口弁がないため常に補給できる構成にある（訓練マニュアル2.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| F-ECL-PCS-MNF-03 | 14.7 psiレギュレータは14.7±0.2 psia、8 psiレギュレータは8±0.2 psiaに調圧し、仕様上の最大流量はどちらも少なくとも75 lb/hrで、どちらもWCS区画のMO10Wの口から乗員室へ流れる（訓練マニュアル2.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） |
| F-ECL-PCS-MNF-04 | レギュレータは、乗員室圧が14.7 psia付近の小さな需要に応じる低流量段（0〜0.75 lb/hr）と、大きく下回ったときの高流量段（0.75〜少なくとも75 lb/hr）の2段から成り、窒素の大流量中にWCSを使うと低酸素症のおそれがある（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） |
| F-ECL-PCS-MNF-05 | O2/N2制御弁を開くと200 psiの窒素がマニホールドを満たしてO2の逆止弁を閉じ、閉じるとマニホールドの圧力が100 psiを下回ったところで100 psiの酸素が流れ込む（訓練マニュアル2.3.1・2.3.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28） |
| F-ECL-PCS-MNF-06 | 軌道上は使用中の系統のO2/N2制御弁をAUTOにし、O2/N2コントローラがPPO2 2.95 psia未満で弁を閉じて酸素を、3.45 psia超で開いて窒素を流し、その間は前の位置を保つ。実際の制御は3.1±0.05 psiaに保たれている（訓練マニュアル2.3.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29） |
| F-ECL-PCS-MNF-07 | PPO2センサAのデータはO2/N2コントローラ1が、センサBのデータはコントローラ2が使い、PPO2 SNSR/VLVスイッチをREVERSEにすると対応を入れ替えて、センサ1個の喪失で自動制御を失わないようにする（訓練マニュアル2.3.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29） |
| F-ECL-PCS-MNF-08 | PPO2 CNTLR SYS 1・2スイッチは、通常範囲（14.7 psiで2.95〜3.45 psia）と非常範囲（8 psiで1.95〜2.45 psia）を選ぶが、EMER位置は手順上使わない（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367） |
| F-ECL-PCS-MNF-09 | PPO2の制御は、自動・手動のどちらの方法でも乗員室へ流れる酸素量を制御できなくなったときに喪失とみなし、低い側は酸素を送れなくなったとき、高い側は隔離できない酸素漏れなどで酸素濃度が限界を超えるときである（A17-203）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1961） |
| F-ECL-PCS-MNF-10 | O2/N2コントローラの飛行中の点検には、14.7 psia・AUTOでの両方向の切替の観測が要り、自然な切替が起きなければO2ブリードオリフィスの流れを止めるか、就寝中に制御弁をCLOSE（O2）にして切替を促す（A17-260）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1975） |
| F-ECL-PCS-MNF-11 | 1979年の飛行運用マニュアルは、O2/N2コントローラが乗員室のPPO2を検知してO2/N2制御弁を開閉し、PPO2を14.5 psiの乗員室で3.2 psi、8 psiでは2.2 psiに保つとした。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14） |
| F-ECL-PCS-MNF-12 | STS-2までに、N2/O2の制御盤・供給盤とPPO2センサを交換し、改良したキャビンレギュレータを追加した（STS-2ミッション報告）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-01 | 酸素供給・分配 | 推進薬・流体 | 受信 | O2レギュレータ入口弁を開くと、100 psigのO2レギュレータが酸素を100 psiaに下げ、逆止弁を通してO2/N2マニホールドへ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23）O2/N2制御弁が閉じているときは、マニホールドの圧力が100 psiを下回ると酸素が流れ込んで補給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28） | — |
| IF-PCS-02 | 窒素供給 | 推進薬・流体 | 受信 | 調圧した200 psigの窒素のO2/N2マニホールドへの流れは、O2/N2コントローラが操作するO2/N2制御弁で制御する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25）制御弁が開くと200 psiの窒素がマニホールドを満たし、O2の逆止弁を閉じる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28） | — |
| IF-PCS-03 | 乗員室（制御対象） | 推進薬・流体 | 送信 | 乗員室圧が14.7 psiaを下回ると14.7 psiaキャビンレギュレータ（入口弁が開のとき）から、大きな漏れで8 psiaを下回ると8 psia非常用レギュレータから、O2/N2マニホールドの気体がMO10Wの口を通って乗員室へ流れる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25）乗員は1人平均1.76ポンド/日の酸素を消費し、7人の乗員では通常の漏れと代謝で1日に約6ポンドの窒素と14ポンドの酸素を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） | 上位: IF-ECL-02 |
| IF-PCS-13 | 計測・表示・警報 | データ・指令 | 受信 | PPO2センサAのデータはO2/N2コントローラ1が、センサBのデータはコントローラ2が使い、PPO2 SNSR/VLVスイッチをREVERSEにすると対応が入れ替わる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29） | — |
| IF-PCS-16 | 与圧運用管理 | データ・指令 | 受信 | 軌道上の構成では、選んだ系統の14.7 psiaキャビンレギュレータ入口弁とO2レギュレータ入口弁を開き、O2/N2制御弁をAUTOにする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47）上昇・再突入では両系統の14.7 psiaキャビンレギュレータ入口弁とO2レギュレータ入口弁を閉じ、PCS 1のO2/N2制御弁を開、PCS 2を閉とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964） | — |
| IF-PCS-18 | 電力系（EPS） | 電力（28 VDC） | 受信 | O14のMNAとO15のMNBにあるO2/N2 CNTLRの遮断器が、O2/N2コントローラ1・2に給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39）系統1の遮断器はL2のSYS 1 O2/N2 CNTLR VLVスイッチにも主母線Aの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） | 上位: IF-ECL-42 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.3節（PDF p25〜29）：14.7 psiaキャビンレギュレータと8 psia非常用レギュレータ、O2/N2制御弁の手動開閉とAUTO（PPO2 2.95〜3.45 psia）、PPO2 SNSR/VLVスイッチによるセンサとコントローラの対応を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Oxygen/Nitrogen Manifold・PPO2 Control（PDF p366〜367）：2段式のキャビンレギュレータ（75〜125 lb/hr）、PPO2センサA・BとO2/N2コントローラによる制御弁の自動開閉、PPO2 CNTLRスイッチの通常・非常範囲を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-203・260（PDF p1961・p1975）：PPO2制御の喪失を定義し、O2/N2コントローラの飛行中点検に両方向の切替の観測を求める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1961） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2a O2(N2) FLOW（PDF p269）：O2・N2流量が4.9 lb/hrを超えたときの処置で、O2/N2共通マニホールドやO2レギュレータの漏れを切り分け、ECLS SSR-3で代替系統へ再構成する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=269） |
| PC-12 | NTRS抄録（1982年） | Shuttle Orbiter Atmospheric Revitalization Pressure Control Subsystem（Walleshauser他） | ARPCSの構成品として供給盤・制御盤・電子制御器を挙げる（抄録で確認）。（出典: https://www.science.gov/topicpages/p/pressure+control+valves.html） |
| PC-13 | NTRS抄録（1974年） | Design development and test: Two-gas atmosphere control subsystem（Jackson） | 乗員室の主要な大気成分を計測し、酸素と窒素の添加で分圧を狭い範囲に保つ大気制御装置の開発・試験を記す（抄録で確認）。（出典: https://www.science.gov/topicpages/a/atmosphere+total+pressure.html） |
| PC-17 | 番号なし | Shuttle Reference: ECLSS Overview | 酸素分圧を2.95〜3.45 psiaに自動で保ち、約11.5 psiaの窒素を加えて全圧14.7 psiaとすると記す。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.1.2節（PDF p11・p14）：最初の数回の飛行ではキャビンレギュレータを14.5 psiaに調整するとし、PPO2を14.5 psiで3.2 psi、8 psiで2.2 psiに制御するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14） |
| PC-26 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-62 O2 REPRESS USING PAYLOAD O2 VALVES（PDF p172）：O2/N2制御弁を閉（O2）とし、ペイロード用O2弁を開いてキャビンレギュレータ入口弁で再与圧を始め、止める手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=172） |
| PC-29 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.4.3節（PDF p51）：STS-1の後にN2/O2の制御盤・供給盤とPPO2センサを交換し、改良したキャビンレギュレータを追加したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：キャビンレギュレータの最大流量を、訓練マニュアル（2.3節）は仕様で少なくとも75 lb/hr、SCOM（PDF p366）は75〜125 lb/hrとし、運用飛行規則A17-258はOMRSD試験での実際の平均最大流量を約125 lb/hrとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1972）

> **注記** 検証メモ：PPO2の非常範囲を、SCOM（PDF p367）は8 psiで1.95〜2.45 psia、訓練マニュアルの表2-1は1.95〜2.95とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=51）

> **注記** 1979年の飛行運用マニュアル（PDF p11）は、最初の数回の飛行ではキャビンレギュレータを14.5 psiaに調整するとしていた。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=11）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.2節 Nitrogen System・2.3節 Oxygen/Nitrogen Manifold（PDF p25） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen/Nitrogen Manifold・PPO2 Control（PDF p366） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.3.1〜2.3.2節 O2/N2 Control Valve Manually Open・Closed（PDF p28） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.3.3節 Auto Control of the O2/N2 Control Valve（PDF p29） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 PPO2 Control（続き）（PDF p367） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-203 PPO2 Control（PDF p1961） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1961
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-260 PCS O2/N2 Controller Checkout（PDF p1975） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1975
8. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.1.2節 Pressurization System Description（続き）（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=14
9. JSC-17959 STS-2 Orbiter Mission Report（1982年） 2.4.3節 Air Revitalization Pressure Control Subsystem（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.1節 Oxygen System・2.2節 Nitrogen System（PDF p23） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.7.1〜2.7.2節 Ascent・Orbit（PDF p47） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=47
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-251 Normal PCS Configuration（PDF p1964） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1964
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.6.1節 Instrumentation（PDF p39） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O14・O15の遮断器）（PDF p52） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-258 Loss of Cabin Integrity Tmax Definition and TIG Selection（PDF p1972） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1972
17. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き）（PDF p51） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=51
18. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.1.1〜2.1.2節 Pressurization System Interfaces・Description（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=11

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-PCS-18 の上位を IF-ECL-42 に付け替え（Rev. M） |
