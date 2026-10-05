# 区画・減圧・再与圧（DEP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ALS-DEP-001 |
| 表題 | 区画・減圧・再与圧（DEP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ALS-001 |
| 関連図 | SSD-SYS-ARC-001 図24 エアロック支援系 機能構成 |

## 1. 目的

外部エアロックとトンネル・ベスティビュールの区画、3枚のハッチ、ハッチの均圧弁とエアロック減圧弁によって、エアロックと乗員室の減圧・再与圧・隔離を行う機能と、運用上の制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ALS-DEP-01 | 外部エアロックはペイロードベイにあり、Xo 576隔壁のミッドデッキハッチからトランスファトンネル、エアロック、トンネルアダプタへ通じ、ドッキングやEVAの作業中も乗員を与圧された乗員室にとどめる（訓練マニュアル6.0節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=173） |
| F-ECL-ALS-DEP-02 | 外部エアロックは直径63インチ、長さ83インチ強で、直径40インチのD字形開口が3つあり、内側ハッチ・EVハッチ・ドッキングハッチの3枚のハッチを持つ（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| F-ECL-ALS-DEP-03 | 各ハッチはギアボックス・アクチュエータ付きのラッチ、窓、保持装置付きのヒンジ、両側の差圧計、2個の均圧弁、二重の圧力シールを持ち、主な圧力源の乗員室側へ開いて閉じたときに圧力で密着する（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| F-ECL-ALS-DEP-04 | ミッドデッキハッチは常にB型、上部ハッチはEVA用では通常B型でドッキング用ではD型のこともあり、後部ハッチは与圧モジュールがなければB型、あればD型で、トンネルアダプタ上部のCハッチはB型である（訓練マニュアル6.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=181） |
| F-ECL-ALS-DEP-05 | 均圧弁はキャップと3位置スイッチ（OFF・NORM・EMER）を持ち、14.5 psidでNORMは240 lb/hr、EMERは1,278 lb/hrを流して、エアロックを乗員室と均圧し、ハッチを閉じれば隔離し、減圧の予備手段にもなる（訓練マニュアル6.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=174） |
| F-ECL-ALS-DEP-06 | エアロック減圧弁は押してから回す3位置（CLOSED・5・0）の回転スイッチで、「5」位置は0.59インチのオリフィスでエアロックを5 psiaへ（乗員室の14.7 psiaから10.2 psiaへの減圧にも使う）、「0」位置は1.02インチのオリフィスで0 psiaへ減圧し、外部エアロックでは非推進のT字管からペイロードベイへ直接排気する（訓練マニュアル6.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175） |
| F-ECL-ALS-DEP-07 | 通常はハッチを開けたままで、エアロックの圧力は均圧弁で乗員室と等しく保たれ、減圧弁は乗員室の10.2 psiaへの減圧とEVAのためのエアロックの減圧に使う（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| F-ECL-ALS-DEP-08 | 乗員室の10.2 psiaへの減圧では、O2濃度を適正に保ちながら減圧弁を通常2回開き、「5」位置で約30分かかり、減圧中はdP/dtセンサのクラクソンが鳴る（訓練マニュアル6.9.3.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192） |
| F-ECL-ALS-DEP-09 | ドッキング前は内側ハッチと均圧弁を閉じてエアロックを隔離し、ドッキング後にエアロック圧力が下がらないことで漏れがないことを確かめ、分離前はベスティビュールをフライトデッキから減圧して漏れを確かめる（訓練マニュアル6.9.3.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=191） |
| F-ECL-ALS-DEP-10 | トンネルアダプタを搭載する場合は、後部ハッチのトンネルアダプタ側のダクトにペイロード隔離弁を設け、トンネルアダプタを真空にするときに後方のモジュールからダクトを通して漏れるのを防ぐ（訓練マニュアル6.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175） |
| F-ECL-ALS-DEP-11 | 運用飛行規則は、乗員室の気密を保ったままエアロックを減圧・再与圧できない場合（いずれかのハッチの漏れによるエアロック圧力の低下が0.2 psi/minを超える場合）にEVA能力を喪失とみなす（A15-101）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855） |
| F-ECL-ALS-DEP-12 | EVA乗員を与圧したエアロックの外に締め出すのは、乗員が大きく離れていて再与圧の時間が重要なアボートEVAの場合に限る。その場合も、離れた乗員は外側ハッチの均圧弁でエアロックを減圧して入れる（A15-13）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ALS-01 | 乗員室（制御対象） | 推進薬・流体 | 双方向 | 内側ハッチの均圧弁でエアロックを乗員室の圧力と等しくし（再与圧）、ハッチと均圧弁を閉じればエアロックを乗員室から隔離する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=174）EVA前は減圧弁の「5」位置で乗員室を10.2 psiaへ約30分で減圧する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192） | 上位: IF-ECL-17 |
| IF-ALS-02 | 宇宙空間（船外） | 推進薬・流体 | 送信 | エアロック減圧弁の「5」位置（0.59インチのオリフィス）でエアロックを5 psiaへ、「0」位置（1.02インチ）で0 psiaへ減圧し、外部エアロックでは非推進のT字管を通してペイロードベイへ直接排気する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175）パネルA6Lのベスティビュール減圧弁（VENT SYS 1・2）は、ベスティビュールを真空へ排気する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192） | 上位: IF-ECL-30 |
| IF-ALS-11 | 計測・表示 | 推進薬・流体 | 送信 | エアロックの圧力（EXT A/L PRESS）とエアロック・ベスティビュール間の差圧を計測する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190）各ハッチの差圧は、ハッチの両側の差圧計にも表示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187） | — |
| IF-ALS-16 | 配管・構造ヒータ | 熱 | 受信 | エアロック外殻の3区域の構造パッチヒータが、特に真空時にエアロック内部を氷点以上に保ち、壁・ハッチとドッキング用アビオニクスベイの結露を防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180） | — |
| IF-ALS-17 | 換気・ブースタファン | 推進薬・流体 | 受信 | ブースタファンとダクトでオービタの調整空気をエアロックへ送り、湿度を制御し、CO2・O2・N2のよどみを防ぎ、エアロック・上部ハッチ窓の結露と床下のアビオニクスベイの温度を調整する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178）EVA中でダクトを外しているときは、エアロック内部の能動的な熱制御は構造ヒータだけになる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2056） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.2節（PDF p174〜175）と6.9.3節（p191〜192）：均圧弁（NORM 240 lb/hr・EMER 1,278 lb/hr）と減圧弁（5・0位置）を示し、ドッキング時の漏れ確認とEVA前の乗員室の10.2 psiaへの減圧（約30分）を述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=174） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節（PDF p452〜453）と2.9節（p369）：3枚のハッチの構造と、内側ハッチの均圧弁による再与圧、エアロック内からの船外排気による減圧、減圧弁による乗員室の10.2 psiaへの減圧を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| AL-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.3節（PDF p78）：ハッチを開ける前の差圧の範囲（乗員室・エアロック間とエアロック・ペイロードベイ間のハッチは軌道上で0.2 psid以内）と、ハッチを閉じるときの差圧（0〜0.01 psid）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=78） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-13・A15-101（PDF p1846・p1855）：EVA乗員を与圧したエアロックの外に締め出さないことと、ハッチの漏れで減圧・再与圧できない場合のEVA能力の喪失を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-3（PDF p337）：乗員室の圧力が15.2 psiaを超えた場合に、エアロック減圧弁で乗員室を運用圧力まで減圧する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=337） |
| AL-07 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | エアロックを2段階（5 psia、0 psia）で減圧してエアロック減圧弁から船外へ排気し、内側ハッチの均圧弁で乗員室と均圧して再与圧すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| AL-09 | NTRS 20130013499 | So Close Yet So Far: The Jammed Airlock Hatch of STS-80 | STS-80でのエアロックハッチの固着事例を扱う（表題と参照文献のみ確認）。（出典: https://ntrs.nasa.gov/api/citations/20130013499/downloads/20130013499.pdf） |
| AL-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | EVA準備での乗員室の10.2 psiへの減圧とエアロック系の作動を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AL-11 | NASA/TP-2011-216147 | Preventing Decompression Sickness Over Three Decades of Extravehicular Activity（Conkin、2011年） | 乗員室を10.2 psia・酸素26.5%とするシャトルの段階減圧プロトコルの手順と経緯を解説し、STS-41B（1984年）を初適用と記す。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/conkin-prebreathe-overview-tp216147-2011.pdf） |
| AL-12 | NASA TM-58259 | Verification of an altitude decompression sickness protocol for Shuttle operations utilizing a 10.2 psi pressure stage（Waligora他、1984年） | 10.2 psia・酸素26.5%の段階減圧プリブリーズを検証した報告で、NASAのプリブリーズ文献目録で所在を確認した（本体は未入手）。（出典: https://www.nasa.gov/wp-content/uploads/2023/03/prebreathe-library-summary-of-contents.pdf） |
| AL-13 | NTRS 20140003729 | Evidence Report: Risk of Decompression Sickness (DCS) | シャトルの段階減圧からISSのキャンプアウト方式まで、減圧症予防プロトコルの経緯と根拠を整理する。（出典: https://ntrs.nasa.gov/api/citations/20140003729/downloads/20140003729.pdf） |
| AL-14 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 2.1.3節（PDF p9）：内部エアロックの内径63インチ・長さ83インチと、直径40インチのD字形ハッチ2枚を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=9） |
| AL-15 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | H-1 HATCH (B): JAMMED ACTUATOR/LINKAGE WORKAROUND（PDF p159）：B型ハッチのアクチュエータやリンクが固着した場合に、機構を組み替えてハッチを閉じ・密閉し、再び開けられるようにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=159） |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30：ドッキング中のベスティビュールの与圧・減圧と漏れ確認、EVAのための乗員室の10.2 psiaへの減圧、EVA後の14.7 psiaでのエアロックの再与圧を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| AL-19 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p15〜16・p50：後部ハッチのラッチ掛けの難しさ（外側に手掛けがない）と、後部ハッチ右舷の均圧弁で減圧できなかった異常（IFA STS-114-V-15、キャップが通気口をふさいだと推定）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：区画の容積は資料で異なる。訓練マニュアル6.10.1節（PDF p195）はエアロック185 ft³・トンネルエクステンション43 ft³・トンネルアダプタ130 ft³・ベスティビュール40 ft³（EMU 1着ごとに10 ft³を差し引く）とし、同6.1.2節（PDF p174）はベスティビュールを50 ft³、SCOM 2.11節（PDF p452）はエアロックの空の容積を228 ft³（EMU 2着で208 ft³）とする。本書は数値を選ばず併記にとどめた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=195）

> **注記** B型ハッチは一方向（常に与圧される乗員室側）だけ、D型ハッチは両方向の圧力を保持できる（訓練マニュアル6.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180）

> **注記** 訓練マニュアル6.2節はミッドデッキ床の乗員室パージ弁（旧エアロック減圧弁を隔離弁に転用）も扱うが、火災・有毒物の漏れの後に乗員室を8 psiでパージする乗員室の処置の機能のため、本書では扱わない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175）

> **注記** STS-114では、EVA 2の後に後部ハッチ右舷の均圧弁でエアロックを減圧できず（IFA STS-114-V-15）、左舷の均圧弁で減圧した。原因は固定されていなかったキャップが通気口をふさいだことと推定された。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50）

> **注記** STS-114では、EVA 1で外部エアロックの後部ハッチのラッチ掛けに手間取り、調査でハッチの外側に手掛けが付いていないことが分かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=15）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.0節 External Airlock System（PDF p173） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=173
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 External Airlock・External Airlock Hatches（PDF p452） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.6節 Hatches（続き）（PDF p181） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=181
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.1.2〜6.2節 Vestibule・Equalization, Depress, and Isolation Valves（PDF p174） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=174
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.2節 Equalization, Depress, and Isolation Valves（続き）（PDF p175） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Airlock Depressurization and Equalization Valves（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.9.3.2節 EVA・表6-1 Airlock controls（PDF p192） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.9節 Airlock Nominal Operation（PDF p191） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=191
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-101 EVA Capability（PDF p1855） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-13 Airlock Configuration（PDF p1846） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図6-20 SPEC 177 EXTERNAL AIRLOCK（PDF p190） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=190
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8節 Airlock Instrumentation and Displays（PDF p187） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.5節 Heaters（続き）・6.6節 Hatches（PDF p180） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.4節 Airlock Booster Fans and Ductwork（PDF p178） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-60 External Airlock Water Lines（続き）（PDF p2056） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2056
16. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表6-1 Airlock controls（終わり）・6.10.1節（PDF p195） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=195
17. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Airlock System（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50
18. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Flight Day 5・7（EVA 1・2）（PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=15

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
