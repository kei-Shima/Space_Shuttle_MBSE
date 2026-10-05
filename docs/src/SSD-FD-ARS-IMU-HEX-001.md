# IMU熱交換器・ダクト（HEX）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-IMU-HEX-001 |
| 表題 | IMU熱交換器・ダクト（HEX）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-IMU-001 |
| 関連図 | SSD-SYS-ARC-001 図34 IMU空冷 機能構成 |

## 1. 目的

ファン出口の空気をIMU熱交換器に通して水冷却ループへ排熱し、冷えた空気を乗員室へ戻す機能と、冷却空気のダクトの漏れ・閉塞と熱交換器の故障の扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-IMU-HEX-01 | 暖まった空気はIMU熱交換器へ送られてARSの水冷却ループに熱を渡し、冷えた空気は乗員室へ戻る（訓練マニュアル3.2.8節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| F-ARS-IMU-HEX-02 | ファン出口の空気はフライトデッキにあるIMU熱交換器を通り、水冷却ループで冷やされてから乗員室へ戻る（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-IMU-HEX-03 | 1979年の飛行運用マニュアルも、空気は乗員室へ戻る前にIMU熱交換器で冷やされるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| F-ARS-IMU-HEX-04 | 水冷却ループでは、インターチェンジャで冷えた水がLCG熱交換器、ギャレーの水チラー、キャビン熱交換器、IMU熱交換器の順に流れてからバイパス流と合流し、ポンプへ戻る（訓練マニュアル3.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） |
| F-ARS-IMU-HEX-05 | 水冷却ループは、キャビン熱交換器、IMU熱交換器、アビオニクスベイのコールドプレートと熱交換器から熱を集め、ATCSへ渡す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| F-ARS-IMU-HEX-06 | 2系統の水冷却ループを長時間同時に運転してインターチェンジャの熱移送能力を超えると、インターチェンジャの系統の水温が上がり、LCVG・水チラー・キャビン熱交換器・IMU熱交換器の冷却能力が下がる（訓練マニュアル3.3.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| F-ARS-IMU-HEX-07 | STS-1の消耗品・熱解析の表VIは、IMU冷却空気の出口温度の解析値108.2°Fを仕様上限130°Fと比べた（JSC-16720）。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=20） |
| F-ARS-IMU-HEX-08 | 運用飛行規則A17-104は、ΔP 3.7 in H2Oで流量が約185 lb/hrとなり、これが健全な系でファンが出せる最大の流量であるため、それより低いΔPは健全性（漏れ）が疑わしい系で生じるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| F-ARS-IMU-HEX-09 | 故障処置手順6.1dでは、空気ダクトの漏れがΔPの低下を招いた場合に、IMUのダクトの漏れを点検し、パッチキットのアルミテープで補修する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=266） |
| F-ARS-IMU-HEX-10 | 空気ダクトが閉塞した場合は、IFMのIMU緊急冷却で冷却を回復する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265） |
| F-ARS-IMU-HEX-11 | IOAのCIL評価（1988年）は、IMU熱交換器（ARS-221）について、NASAのFMEAは熱交換器へのダクトを扱っており、熱交換器内の流れの制限には新しいFMEAを設け、ダクトを切ってキャビン空気を直接循環させれば空気の流れを回復できる（任務は失うが生命・機体への脅威ではない）ため、いずれも臨界度2/2とすると記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=116） |
| F-ARS-IMU-HEX-12 | IOAは、IMU熱交換器自体からの外部漏れ（ARS-2211X、NASA臨界度2/2）は起こりえない故障とみなしつつ、熱交換器の前後の部品から空気が漏れる故障と影響が同じであるとして、指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=132） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-IMU-04 | IMUファン・逆止弁 | 推進薬・流体 | 受信 | 運転中のファンは、出口の逆止弁を通して公称144 lb/hrの空気をIMU熱交換器へ送り、逆止弁は非運転ファンを通る逆流を防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66）ファンの出口空気は、フライトデッキにあるIMU熱交換器を流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-IMU-08 | 水冷却ループ：冷側熱交換器 | 熱 | 送信 | 暖まった空気をIMU熱交換器に通し、熱をARSの水冷却ループへ渡す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66）水冷却ループでは、インターチェンジャで冷えた水がLCG熱交換器・水チラー・キャビン熱交換器を経てIMU熱交換器を流れる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） | 上位: IF-ARS-08 |
| IF-IMU-09 | 乗員室（制御対象） | 推進薬・流体 | 送信 | IMU熱交換器で水冷却ループにより冷やした空気を乗員室へ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）IMUワークブックも、空気は熱交換器で冷やされてキャビンへ戻るとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） | 上位: IF-ARS-11 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節（PDF p66）と3.3節（p67・p69）：暖まった空気をIMU熱交換器で水冷却ループへ排熱してキャビンへ戻すと述べ、インターチェンジャで冷えた水がIMU熱交換器を流れる順序と、インターチェンジャの能力を超えたときの冷却能力の低下を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376・p379）：ファン出口空気がフライトデッキのIMU熱交換器で水冷却ループにより冷やされて乗員室へ戻ると示し、冷えた水がキャビン熱交換器とIMU熱交換器を流れるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ファン出口空気がIMU熱交換器で水冷却ループにより冷やされて乗員室へ戻ると述べ、IMU熱交換器をミッドデッキ床下にある機器の一つに挙げる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104A（PDF p1933）：ΔP 3.7 in H2O（約185 lb/hr）が健全な系でファンが出せる最大の流量であり、それより低いΔPは漏れが疑わしい系で生じると説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p265〜266）：ΔPが低いときはIMUのダクトの漏れを点検してパッチキットのアルミテープで補修し、空気ダクトの閉塞ではIFMのIMU緊急冷却で冷却を回復すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=266） |
| IM-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | 表VI（PDF p20）：IMU冷却空気の出口温度の解析値108.2°Fを仕様上限130°Fと比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=20） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 暖まった空気をIMU熱交換器で水冷却ループへ排熱してキャビンへ戻すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-221・ARS-2211X・ARS-4027X（C.13-14・C.13-30・C.13-39、PDF p116・p132・p141）：IMU熱交換器とダクトの流れの制限を臨界度2/2（ダクトを切ってキャビン空気を直接循環させれば冷却を回復できる）とし、熱交換器と前後のダクトの外部漏れの指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=116） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p22）：空気は熱交換器で冷やされてキャビンへ戻ると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| IM-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：空気は乗員室へ戻る前にIMU熱交換器で冷やされると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：IMU熱交換器の位置を、SCOM（PDF p376）はフライトデッキとし、NSTS 1988 News Reference Manual（ECLSS章）はミッドデッキ床下にある機器の一つに挙げる。本書はSCOMに従い、親の説明書（IF-ARS-08）と同じくフライトデッキとした。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html）

> **注記** IMU熱交換器の水側の流路は水冷却ループ（SSD-FD-ARS-WCL-001）の機能として扱い、本書では空気側と、水冷却ループへの排熱のIF（IF-IMU-08）を扱う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67）

> **注記** IOAは、IMU空気ダクト（ARS-4027X、NASA臨界度2/2）の外部漏れについても、熱交換器の前後の部品の漏れと影響が同じとして指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=141）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.8節 Inertial Measurement Unit Fans（PDF p66） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Inertial Measurement Unit (IMU) Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
3. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（IMU冷却）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3節 図3-7 H2O coolant loop 1（PDF p67） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=67
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Atmospheric Revitalization System（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.6節 Interchanger Mismatch（PDF p69） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69
7. JSC-16720（80-FM-33） STS-1 Environmental Control and Life Support System Consumables and Thermal Analysis（1980年） 表VI Subsystem Maximum Temperature Limits（PDF p20） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=20
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-104 IMU Fan（PDF p1933） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（続き）（PDF p266） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=266
10. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（続き）（PDF p265） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265
11. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-14 ARS-221 Heat Exchanger, IMU（PDF p116） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=116
12. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-30 ARS-2211X IMU Heat Exchanger（PDF p132） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=132
13. USA004488 Rev. B（IMU 21002） Inertial Measurement Unit Workbook（訓練ワークブック、2006年） 2.10節 Thermal Controls（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22
14. NSTS 1988 News Reference Manual（ECLSS章） — https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html
15. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-39 ARS-4027X IMU Air Ducts（PDF p141） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=141

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
