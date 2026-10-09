# 吸込み・IMU通風（INL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-IMU-INL-001 |
| 表題 | 吸込み・IMU通風（INL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-IMU-001 |
| 関連図 | SSD-SYS-ARC-001 図34 IMU空冷 機能構成 |

## 1. 目的

乗員室の空気をIMUフィルタ（300ミクロン）から吸い込み、3台のIMUの筐体に通してIMUの発熱を運び、IMU出口ホース・マニホールドとファン保護用フィルタを経てIMUファンへ送る機能と、IMUフィルタの清掃などの保守を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-IMU-INL-01 | IMUファンはキャビン空気をIMUの上に引き込み、IMUが発生した熱を空気に移して冷却する（訓練マニュアル3.2.8節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| F-ARS-IMU-INL-02 | 3台のIMUは、3台のファンの1台がキャビン空気を300ミクロンフィルタを通して吸い込み、3台のIMUを横切って流すことで冷却される（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-IMU-INL-03 | IMUの熱制御は内部ヒータと強制空冷から成り、強制空冷はファンがキャビン空気を各IMUの筐体に通すもので、内部ヒータが働くために必要である（IMUワークブック2.10節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| F-ARS-IMU-INL-04 | 1979年の飛行運用マニュアルは、IMUをキャビンから300ミクロンフィルタを通して吸い込んだ空気で冷やし、ファンのすぐ上流にファン保護用の600ミクロンフィルタを置くとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| F-ARS-IMU-INL-05 | IMU #1・2・3のフィルタ・スクリーンはミッドデッキ天井のパネルMO42F・MO58Fの上前方にあり、スクイーズラッチの点検口を開けてクレビス工具で清掃する（IFM 4-5、約10分）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=101） |
| F-ARS-IMU-INL-06 | 故障処置手順6.1dでは、IMUファンΔPの異常の切り分けで吸込みスクリーンの閉塞を点検し、デブリトラップの目詰まりによる閉塞であれば、IFMのMIDDECK (OVERHEAD) FILTER CLEANINGでIMUフィルタだけを清掃する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265） |
| F-ARS-IMU-INL-07 | STS-125では、IMUファンΔPの上昇に対してMCCが乗員にIMUフィルタの点検を求め、乗員は3枚のフィルタがほぼ同じ状態であることを確かめて清掃した（IFA STS-125-V-13）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| F-ARS-IMU-INL-08 | IMU出口ホース（3本）はIMUマニホールドにつながり、IMUの緊急冷却ではこれらをマニホールドから外して掃除機のホースの先に集め、掃除機でIMUに空気を通す（IFM I-3）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=175） |
| F-ARS-IMU-INL-09 | STS-1の消耗品・熱解析は、IMUを通る空気流量を156 lb/hr（14.7 psia）とした（JSC-16720 3.3節）。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） |
| F-ARS-IMU-INL-10 | 同じ解析の表VIは、IMU冷却空気の入口温度の仕様上限を95°F（解析値79.6°F）とし、SODBの入口の上限は95°Fで、再評価による（まだ非公式の）上限は89°F、出口の上限は廃止されると注記する（JSC-16720）。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=20） |
| F-ARS-IMU-INL-11 | IMU冷却系は当初オービタで最も大きな騒音源で、GFEの消音器（入口3個・出口1個）が追加された（Goodman、NOISE-CON 2010）。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=4） |
| F-ARS-IMU-INL-12 | STS-2の騒音調査では、ミッドデッキのIMU吸込口で68 dBが計測された（STS-2報告2.5.5節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=53） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-IMU-01 | 乗員室（制御対象） | 推進薬・流体 | 受信 | 乗員室の空気を300ミクロンフィルタを通して吸い込み、3台のIMUへ導く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）IMU #1・2・3のフィルタ・スクリーンは、ミッドデッキ天井のパネルMO42F・MO58Fの上前方にある。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=101） | 上位: IF-ARS-11 |
| IF-IMU-02 | 誘導・航法・制御（GN&C） | 熱 | 送信 | ファンがキャビン空気を各IMUの筐体に通し、IMUの発熱を運び去って強制空冷する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22）強制空冷は3台のIMUに共通の3台のファンで行い、同時に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477） | 上位: IF-ARS-19 |
| IF-IMU-03 | IMUファン・逆止弁 | 推進薬・流体 | 送信 | IMUを通った空気を、3本のIMU出口ホースとIMUマニホールドを通してIMUファンの入口へ送る。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=175）ファンのすぐ上流には、ファン保護用の600ミクロンフィルタがある。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.8節（PDF p66）：IMUファンがキャビン空気をIMUの上に引き込み、IMUの発熱を空気に移すと述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 IMU Cooling（PDF p376）：3台のファンの1台がキャビン空気を300ミクロンフィルタ経由で吸い込み3台のIMUを通すと示し、2.13節（p476〜477）でIMUの熱制御を内部ヒータと強制空冷から成るとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| IM-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 3台のファンの1台がキャビン空気を300ミクロンフィルタ経由で3台のIMUに流すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d CABIN IMU（PDF p265）：吸込みスクリーンの閉塞を点検し、デブリトラップの目詰まりならIFMでIMUフィルタだけを清掃すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265） |
| IM-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | 3.3節（PDF p11）でIMUを通る空気流量を156 lb/hr（14.7 psia）とし、表VI（p20）でIMU冷却空気の入口温度の解析値79.6°Fを仕様上限95°Fと比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p22）：ファンがキャビン空気を各IMUの筐体に通すと述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22） |
| IM-10 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 本文PDF p4：当初最大の騒音源だったIMU冷却系にGFEの消音器（入口3・出口1）を追加したと記す。（出典: https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=4） |
| IM-11 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p50：IMUファンΔPの上昇に対し、乗員が3枚のIMUフィルタを点検・清掃したと記す（IFA STS-125-V-13）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| IM-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：IMUをキャビンから300ミクロンフィルタを通して吸い込んだ空気で冷やし、ファンのすぐ上流にファン保護用の600ミクロンフィルタを置くと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| IM-13 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-5 MIDDECK (OVERHEAD)（PDF p101）：IMU #1・2・3のフィルタ・スクリーンがミッドデッキ天井のパネルMO42F・MO58Fの上前方にあると示し、I-3（p175）でIMU出口ホース3本をIMUマニホールドから外す手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=101） |
| IM-14 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.5.5節 Noise Level Survey（PDF p53）：ミッドデッキのIMU吸込口で68 dBを計測したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=53） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 訓練マニュアル表3-1（キャビン空気で冷やす機器の表）はIMU 1〜3とIMUファンを挙げるが、IMUはキャビンファンではなくIMUファンで通風される。本書ではIMUの冷却をIMU空冷の機能として扱い、キャビンファンによる機器の強制空冷（IF-ARS-39）には含めない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=87）

> **注記** IMU出口ホースとIMUマニホールドがファンの上流にあることは、緊急冷却で掃除機をIMUファンの代わりにこれらのホースへつなぐこと（IFM I-1・I-3）からの本書の解釈である（IF-IMU-03）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173）

> **注記** 検証メモ：吸込み側のフィルタを、SCOM（PDF p376）は300ミクロンフィルタ（単数）とし、IFMチェックリスト（4-5）とSTS-125報告はIMUごとの3枚のフィルタ（IMU #1・2・3）を示す。本書は300ミクロンフィルタを3枚のIMUフィルタと解した。ファン保護用の600ミクロンフィルタは1979年の飛行運用マニュアルだけに記される。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=101）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.8節 Inertial Measurement Unit Fans（PDF p66） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Inertial Measurement Unit (IMU) Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
3. USA004488 Rev. B（IMU 21002） Inertial Measurement Unit Workbook（訓練ワークブック、2006年） 2.10節 Thermal Controls（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=22
4. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（IMU冷却）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
5. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 4-5 Filter Cleaning（Middeck (Overhead)）（PDF p101） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=101
6. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（続き）（PDF p265） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265
7. NSTS-37452 STS-125 Space Shuttle Mission Report（2010年） Environmental Control and Life Support System（IFA STS-125-V-13）（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50
8. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist I-3 IMU Contingency Cooling（続き）（PDF p175） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=175
9. JSC-16720（80-FM-33） STS-1 Environmental Control and Life Support System Consumables and Thermal Analysis（1980年） 3.3節 Atmospheric Revitalization Subsystem（PDF p11） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=11
10. JSC-16720（80-FM-33） STS-1 Environmental Control and Life Support System Consumables and Thermal Analysis（1980年） 表VI Subsystem Maximum Temperature Limits（PDF p20） — https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf#page=20
11. NTRS 20090043801（JSC-CN-19306） Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） B. Path Control（PDF p4） — https://ntrs.nasa.gov/api/citations/20090043801/downloads/20090043801.pdf#page=4
12. JSC-17959 STS-2 Orbiter Mission Report（1982年） 2.5.5節 Noise Level Survey（PDF p53） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=53
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.13節 IMU Thermal Control（PDF p477） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-1 Cabin air-cooled equipment cooling matrix（PDF p87） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=87
15. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist I-1 IMU Contingency Cooling（PDF p173） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
