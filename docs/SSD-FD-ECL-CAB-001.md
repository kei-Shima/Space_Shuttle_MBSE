# 乗員室環境（制御対象）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-CAB-001 |
| 表題 | 乗員室環境（制御対象）機能説明書 |
| 版・日付 | Rev. C／2026-10-08 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

ECLSSが制御する対象である乗員室の環境条件と、各機能とのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-CAB-01 | 乗員室は14.7±0.2 psiaに与圧され、平均で窒素80%・酸素20%の混合気に維持される。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| F-ECL-CAB-02 | 相対湿度、二酸化炭素・一酸化炭素濃度、温度、換気はARSが制御する。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） |
| F-ECL-CAB-03 | EVA前には乗員室圧を10.2 psiaまで下げ、EVA終了後に14.7 psiaへ戻す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| F-ECL-CAB-04 | 乗員室の容積は2,300 ft³である。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） |
| F-ECL-CAB-05 | 乗員室構造の熱容量により、再突入から乗員の退出まで室温は95°Fを超えない。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-02 | 圧力制御系（PCS／ARPCS） | 推進薬・流体 | 受信 | 乗員室は14.7±0.2 psiaに与圧され、平均で窒素80%・酸素20%の混合気に維持される。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html）窒素は窒素貯蔵タンクから得る。（出典: https://ntrs.nasa.gov/citations/19750056784） | 下位: IF-PCS-03 下位: IF-PCS-04 下位: IF-PCS-07 下位: IF-PCS-10 |
| IF-ECL-05 | 大気再生系（ARS） | 推進薬・流体 | 双方向 | ARSは相対湿度を30〜75%に制御し、二酸化炭素と一酸化炭素を無害な濃度に保ち、乗員室の温度と換気を制御する。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html） | 下位: IF-ARS-09 下位: IF-ARS-10 下位: IF-ARS-11 |
| IF-ECL-17 | エアロック支援系（ALS） | 推進薬・流体 | 双方向 | エアロックの再与圧は、内側ハッチの均圧弁でエアロックと乗員室の圧力を等しくして行う。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html）EVA前は乗員室を14.7 psiaから12.5 psiaを経て10.2 psiaへ減圧する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） | 下位: IF-ALS-01 |
| IF-ECL-19 | 煙検知・消火系（FDS） | 推進薬・流体 | 受信 | 乗員室の3つのアビオニクスベイには、それぞれFreon 1301（Halon 1301）の消火ボトルが1本ある。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html）計器盤の穴から携帯消火器のノズルを差し込み、パネル内部の火災に対処できる。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf） | 下位: IF-FDS-12 |
| IF-ECL-31 | 廃棄物収集系（WCS） | 推進薬・流体 | 双方向 | WCSは乗員の生物系廃棄物をキャビン空気の気流で集め、ファンセパレータで分離した空気を臭気・細菌フィルタで浄化して乗員室へ戻す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=433）ウェットトラッシュ区画の空気は真空ベント管から約3 lb/dayで船外へ排気される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/749） | 下位: IF-WCS-01 下位: IF-WCS-02 下位: IF-WCS-06 下位: IF-WCS-07 |
| IF-H2O-16 | タンク加圧 | 推進薬・流体 | 受信 | 上昇中はタンク A を乗員室へベントする。N2 で加圧したままだと生成水がタンクに入らず船外へ逃げ、その経路が故障すると燃料電池が浸水して発電が止まる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150）タンク A 供給弁を開いたままベント弁をベントにすると全タンクを乗員室圧にでき、水の代替加圧弁もマニホールドを乗員室へベントする予備の手段になる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=151） | — |

## 4. 参考文献

1. NASA Human Space Flight – Shuttle Reference: ECLSS Overview — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html
2. NSTS 1988 News Reference Manual – Environmental Control and Life Support System（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html
3. NSTS 1988 News Reference Manual – Airlock Support（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html
4. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
5. NTRS 19750056784 The shuttle orbiter cabin atmospheric revitalization systems — https://ntrs.nasa.gov/citations/19750056784
6. NASA Human Space Flight – Shuttle Reference: Smoke Detection and Fire Suppression — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html
7. NTRS 19910011869 Fire Suppression in Human-Crew Spacecraft（Friedman & Dietrich、1991年） — https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf
8. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 図3.17-1 Waste Collection System interfaces（PDF p433） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=433
9. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.24節 Wet Trash Compartment（PDF p749） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/749
10. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p150） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150
11. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p151） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=151

## 5. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | IF-ECL-31（排泄物・キャビン空気の吸込み⇄浄化空気の還気）の行を追加 |
| Rev. B | 2026-10-01 | IF-ECL-17 の上位・下位を所有文書（SSD-FD-ECL-ALS-001）にそろえた、IF-ECL-05 の上位・下位を所有文書（SSD-FD-ECL-ARS-001）にそろえた、IF-ECL-02 の上位・下位を所有文書（SSD-FD-ECL-PCS-001）にそろえた、IF-ECL-19 の上位・下位を所有文書（SSD-FD-ECL-FDS-001）にそろえた、IF-ECL-31 の上位・下位を所有文書（SSD-FD-ECL-WCS-001）にそろえた（Rev. M） |
| Rev. C | 2026-10-08 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-H2O-16 を足した（GAP-09 の解消）（Rev. BI） |
