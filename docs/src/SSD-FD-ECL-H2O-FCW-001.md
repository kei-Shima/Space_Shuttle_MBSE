# 生成水受入れ・処理（FCW）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-H2O-FCW-001 |
| 表題 | 生成水受入れ・処理（FCW）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-H2O-001 |
| 関連図 | SSD-SYS-ARC-001 図20 給水・廃水系 機能構成 |

## 1. 目的

3基の燃料電池の生成水を水リリーフ制御盤から受け入れ、水素分離器で余剰水素を除き、微生物フィルタでヨウ素を加えて給水タンクへ送る機能と、逆止弁による流路の切替え、生成水の水質監視と異常時の処置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-H2O-FCW-01 | 3基の燃料電池は最大毎時25 lb（発電1 kWあたり約0.77 lb）の生成水を生み、生成水は単一の水リリーフ制御盤に集まって、通常は飲料水タンクAへ、必要なら燃料電池の水リリーフノズルへ向けられる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| F-ECL-H2O-FCW-02 | 生成水は、燃料電池と給水タンクの圧力差によって給水タンクへ送られる（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143） |
| F-ECL-H2O-FCW-03 | 水素を含む生成水は水リリーフ制御盤から2台の水素分離器を通り、余剰水素の85%が除かれる。分離器は水素と親和性のある銀パラジウム管の束でできている（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| F-ECL-H2O-FCW-04 | 水素は銀パラジウム管の壁を透過し、真空ベント配管から船外へ排出される（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143） |
| F-ECL-H2O-FCW-05 | タンクAへ入る水は微生物フィルタを通って約0.5 ppmのヨウ素を加えられ、タンクA内の微生物の増殖が防がれる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| F-ECL-H2O-FCW-06 | タンクAが満杯か入口弁が閉じているときは、水は1.5 psidの逆止弁を経てタンクBへ、さらに次の1.5 psidの逆止弁を経てタンクC・Dの入口へ流れる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） |
| F-ECL-H2O-FCW-07 | 主経路の閉塞に備えて、各燃料電池の生成水配管にはタンクBの入口マニホールドへ向かう並列の冗長経路が設けられ、この経路は水素分離器を通らない（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| F-ECL-H2O-FCW-08 | 冗長経路には温度センサがあり、主経路の圧力はテレメトリとBFS THERMAL表示で監視でき、水リリーフ盤の共通出口のpHセンサが燃料電池の健全性と水の純度を示す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| F-ECL-H2O-FCW-09 | 燃料電池水のpH表示が高いときは、生成水を小便器へ流してpH試験紙で確かめる。高いpHは水中の水酸化カリウム（KOH）の濃度が高いことによる（IFM W-14）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=438） |
| F-ECL-H2O-FCW-10 | 給水圧が40 psiaを超えると、故障処置手順6.5dでタンクの過充填かタンクA/B間の逆止弁の故障かを切り分け、タンクAの出口弁を開いて水量を下げるなどの処置をとる（MAL 6.5d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=327） |
| F-ECL-H2O-FCW-11 | STS-82では水素分離器のない冗長経路から給水系へ水素が入り、EMUへの水素の混入を防ぐため、すべてのEVAとEMU補給が終わるまでタンクCを隔離した（運用飛行規則A18-57A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2050） |
| F-ECL-H2O-FCW-12 | IOAの評価（1988年）は、燃料電池出口配管の流れの制限は燃料電池の「デッドヘッド」を招いて生命・機体の喪失につながりうるとし、外部漏れは任務への影響にとどまるとした。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-06 | 燃料電池発電装置（FCP×3） | 推進薬・流体 | 受信 | 3基の燃料電池の生成水は単一の水リリーフ制御盤へ集まり、通常は飲料水タンクAへ送られ、凍結時に備えてタンクBへの冗長経路もある。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-10 |
| IF-H2O-01 | 給水貯蔵・分配 | 推進薬・流体 | 送信 | 水素分離器と微生物フィルタを通った生成水をタンクAへ送り、タンクAが満杯か入口弁が閉じているときは1.5 psidの逆止弁を経てタンクB、さらにタンクC・Dへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395）閉塞に備えて、水素分離器を通らずにタンクBの入口マニホールドへ向かう冗長経路もある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） | — |
| IF-H2O-02 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 水素分離器の銀パラジウム管を透過した水素は、真空ベント配管を通って船外へ排出される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）運用飛行規則は、燃料電池の生成水から抽出した水素（約0.0000975 lb/hr）を船外へ排出することを真空ベントの主な機能に挙げる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986） | 上位: IF-ECL-22 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.1節（PDF p143）：生成水が圧力差で給水タンクへ送られ、水素分離器の銀パラジウム管が水素を真空ベントから船外へ出し、微生物フィルタがヨウ素を加えると解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p394〜395）：最大25 lb/hrの生成水、水リリーフ制御盤とタンクBへの冗長経路、pHセンサ、水素分離器（85%）、微生物フィルタ（約0.5 ppmのヨウ素）、1.5 psidの逆止弁を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-57A（PDF p2050）：STS-82で水素分離器のない代替経路から水素が入った事例と、EVA中のタンクCの隔離を記す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2050） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.5d H2O SPLY PRESS↑（PDF p327）：給水圧40 psia超で、タンクの過充填かA/B逆止弁の故障かを切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=327） |
| WA-06 | NTRS 19850008615 | Other Challenges in the Development of the Orbiter Environmental Control Hardware | オービタECLSSの開発で見つかった問題と対策の一つとして、水/水素セパレータを扱う（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19850008615） |
| WA-08 | SAE 2006-01-2014 | Shuttle Potable Water Quality from STS-26 to STS-114 | 燃料電池の生成水は微生物チェック弁（MCV）でヨウ素を加えられて貯蔵タンクへ入ると記す（抄録で確認）。（出典: https://saemobilus.sae.org/content/2006-01-2014） |
| WA-09 | NTRS 19780014776 | Water system microbial check valve development | ヨウ素を含浸した樹脂の床で、飲料系と非飲料系をつないだときの微生物の移行を防ぐ逆止弁（MCV）の開発と試験を記す（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19780014776） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 3基の燃料電池が最大25 lb/hrの飲料水を生み、水素分離器2台で余剰水素の85%を除き、微生物フィルタで約0.5 ppmのヨウ素を加えると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4.2節（PDF p79）：水素分離器と微生物フィルタ（約1/2 ppmのヨウ素）、1.5 psidの逆止弁を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=79） |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist | FC H2O pH TEST（W-14、PDF p438）：生成水を小便器へ流してpHの表示を確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=438） |
| WA-16 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment（1988年） | C.12.2節（PDF p69）：燃料電池出口配管の流れの制限は燃料電池のデッドヘッドを招き、外部漏れは任務への影響にとどまると評価したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69） |
| WA-22 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p52：タンクA・Bが満杯の後にA/B逆止弁がすぐに開かず給水圧が40 psiaを超え、B/C逆止弁から生成水が代替経路を流れたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 水リリーフ制御盤から燃料電池の水リリーフノズルを経て生成水を船外へ排出する経路は、燃料電池側の機能（IF-EPS-08）として扱い、本機能には含めない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394）

> **注記** 分離した水素の排出先の真空ベント配管は、ECLSSの段では廃棄物収集系の設備（IF-ECL-23）として扱われている。図20では、図12のRCRSの真空ベント排気（IF-ARS-16）と同じく、水素の船外排出を宇宙空間へ直接つないだ（IF-H2O-02、上位IF-ECL-22）。廃棄物収集系の展開（図22）では、同じIFを真空ベント（VAC）への入力として描く。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986）

> **注記** 燃料電池の生成水の受入れは図6のIF-EPS-06をそのまま用いた（同じ物理IFのため新しい番号を作らない）。IF-EPS-06の上位IFはIF-ECL-10である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）

> **注記** STS-122ではタンクA・Bが満杯になった後にA/B逆止弁がすぐに開かず、給水圧が40 psiaの限界を超えて警報が出た。この間はB/C逆止弁が開き、生成水は代替経路を流れた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.0節・5.1節 Supply Water Storage System（PDF p143） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（続き）（PDF p395） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395
4. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist W-14 FC H2O pH Test（PDF p438） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=438
5. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.5d H2O SPLY PRESS（PDF p327） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=327
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-57（続き）（PDF p2050） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2050
7. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment（1988年） C.12.2節 Life Support and Airlock Support System（PDF p69） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=69
8. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-354 Vacuum Vent Loss Definition（PDF p1986） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986
10. NSTS 37446 STS-122 Space Shuttle Mission Report（2008年） Supply and Waste Water Management System（PDF p52） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
