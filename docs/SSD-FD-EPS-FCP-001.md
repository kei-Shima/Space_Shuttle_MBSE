# 燃料電池発電装置（FCP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EPS-FCP-001 |
| 表題 | 燃料電池発電装置（FCP）機能説明書 |
| 版・日付 | Rev. E／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EPS-001 |
| 関連図 | SSD-SYS-ARC-001 図6 EPS 機能構成 |

## 1. 目的

オービタの全電力を発電する燃料電池の機能と、生成水・排熱の扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EPS-FCP-01 | 3基の燃料電池は再使用・再起動が可能で、中胴前部のペイロードベイの下に置かれる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-FCP-02 | 3基は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-FCP-03 | 発電部は3つのサブスタックに収めた96セルから成り、電解質は水酸化カリウム水溶液である。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-FCP-04 | 補機部は反応剤流量を監視し、排熱と生成水を取り除き、スタック温度を制御する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-FCP-05 | 冷却材がスタックの排熱を燃料電池熱交換器経由でフレオン21冷却ループへ移し、スタックを約200°Fに保つ。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-FCP-06 | 反応剤中の不活性ガスなどを除くため、少なくとも1日2回パージが必要である。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-FCP-07 | 1基の能力は最大連続7 kW・ピーク12 kWで、3基では連続21 kW・15分間のピーク36 kWとされ、オービタの平均消費電力は約14 kWと見込まれている。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-FCP-08 | オービタには予備バッテリがなく、3基の燃料電池が機上電力のすべてを生み出す。（出典: https://ntrs.nasa.gov/api/citations/20040010319/downloads/20040010319.pdf） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-03 | 反応剤貯蔵・分配（PRSD） | 推進薬・流体 | 受信 | 反応剤はリリーフ弁／フィルタと弁モジュールを経て共通マニホールドから燃料電池へ流れ、酸素は815〜881 psia、水素は200〜243 psiaで供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-05 | 直流配電（EPDC-DC） | 電力（28 VDC） | 送信 | 各燃料電池の直流電力は対応する分配器へ送られ、燃料電池1は主母線A、2は主母線B、3は主母線Cに対応する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-06 | 給水・廃水系（ECLSS） | 推進薬・流体 | 送信 | 3基の燃料電池の生成水は単一の水リリーフ制御盤へ集まり、通常は飲料水タンクAへ送られ、凍結時に備えてタンクBへの冗長経路もある。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-10 |
| IF-EPS-07 | 熱制御：熱交換器網 | 熱 | 送信 | 燃料電池の冷却材（フッ素系炭化水素）は、燃料電池熱交換器を通じてスタックの排熱を中胴のフレオン21冷却ループへ移す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-09 |
| IF-EPS-08 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 水タンクが満杯または配管が閉塞した場合、水リリーフ弁が45 psiaで開いて生成水を船外へ排出する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）パージ時は反応剤を流して不活性ガスなどの不純物をパージ配管から船外へ吹き出す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-09 | DPS | データ・指令 | 双方向 | 自動パージでは、GPCがパージ配管ヒータを入れて温度を確認し、燃料電池1・2・3のパージ弁を順に2分間開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326） | 上位: IF-ORB-20 |
| IF-EPS-13 | 交流発電・配電（EPDC-AC） | 電力（28 VDC） | 受信 | 燃料電池の冷却材ポンプは3相交流で駆動され、電子制御ユニットが冷却材ポンプと水素ポンプ／水分離器への交流電力を制御する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-16 | 直流配電（EPDC-DC） | 電力（28 VDC） | 受信 | 電気制御ユニット（ECU）は冷却材ポンプ・水素ポンプ/水分離器・pH センサへの交流を制御する。三相交流を3台の燃料電池へつなぐ回路遮断器9個がパネル L4 にあり、ECU は必須母線から給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/328）必須母線の電圧が 25 V DC 未満で SM ALERT になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/341） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Fuel Cell System」：3基の燃料電池の構成、生成水の除去、パージ、冷却・温度制御、セル性能モニタ、始動を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/319） |
| EP-05 | NASA SP-407 | Space Shuttle, Chapter 3 Space Shuttle Vehicle | 燃料電池（3基・7 kW）と電圧範囲など、初期の概要諸元を示す。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） |
| EP-07 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem | PRSDと燃料電池（EPG）の独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001602） |
| EP-08 | NTRS 19900001617 | IOA: Analysis of the EPD&C/EPG subsystem | 電力分配・制御（EPD&C）と発電（EPG）ハードウェアの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001617） |
| EP-09 | NTRS 19750026405 | Electrical power generation subsystem for Space Shuttle Orbiter | 燃料電池3基で平均14 kW・ピーク24 kWを供給する設計を示す（1975年）。（出典: https://ntrs.nasa.gov/citations/19750026405） |
| EP-10 | 番号なし | NASA Space Shuttle Fuel Cell Power Plants（2002） | 燃料電池の構成、生成水の処理、冷却系を解説する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） |
| EP-11 | NTRS 20050217483 | Space Shuttle Upgrades: Long Life Alkaline Fuel Cell | 運用寿命を2,600時間から5,000時間へ延ばす長寿命アルカリ燃料電池計画。（出典: https://ntrs.nasa.gov/citations/20050217483） |
| EP-12 | NTRS 20070023719 | Fuel Cell Development for NASA's Human Exploration Program | 長寿命スタックの認定（2003年）と、退役見込みによる機材適用の見送りを記す。（出典: https://ntrs.nasa.gov/api/citations/20070023719/downloads/20070023719.pdf） |
| EP-13 | NTRS 20040010319 | Fuel Cells for Space Science Applications | オービタは3基の12 kW燃料電池で全電力を賄い、予備バッテリを持たないと記す。（出典: https://ntrs.nasa.gov/api/citations/20040010319/downloads/20040010319.pdf） |
| EP-14 | NTRS 20110011486 | Analysis and Test of a PEM Fuel Cell Power System for Space Power Applications | シャトルの3基のアルカリ燃料電池が15〜20 kWを発電するとし、PEM型の後継を試験する。（出典: https://ntrs.nasa.gov/citations/20110011486） |
| EP-15 | OSTI 347754 | The NASA fuel cell upgrade program for the Space Shuttle Orbiter | アルカリ型から20 kW級PEM型への置き換え計画を述べる。（出典: https://www.osti.gov/biblio/347754） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 燃料電池の喪失定義（A9-1・2）と管理（A9-51〜62：出力制約、パージ、スタンバイ・停止の定義、セル性能モニタ、冷却ポンプ故障、pH）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1429） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：3基のピーク出力は、1988年版マニュアルでは15分間で36 kWとされている。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）

> **注記** 一方、1975年の設計論文は基本構成で平均14 kW・ピーク最大24 kWとしており、ピーク値が一致しない。（出典: https://ntrs.nasa.gov/citations/19750026405）

> **注記** 検証メモ：再使用の上限は、1988年版マニュアルでは運転2,000時間とされている。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）

> **注記** 一方、長寿命化計画の資料は運用寿命を2,600時間とし、5,000時間への延長を目指したとしており、値が異なる。（出典: https://ntrs.nasa.gov/citations/20050217483）

> **注記** 5,000時間の認定は2003年に完了したが、シャトル退役が見込まれたため機材への適用は見送られた。（出典: https://ntrs.nasa.gov/api/citations/20070023719/downloads/20070023719.pdf）

> **注記** 燃料電池発電装置の状態と遷移（図99）は [SSD-BEH-ORB-005](SSD-BEH-ORB-005.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-005.sysml）。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
2. NTRS 20040010319 Fuel Cells for Space Science Applications — https://ntrs.nasa.gov/api/citations/20040010319/downloads/20040010319.pdf
3. NTRS 19750026405 Electrical power generation subsystem for Space Shuttle Orbiter — https://ntrs.nasa.gov/citations/19750026405
4. NTRS 20050217483 Space Shuttle Upgrades: Long Life Alkaline Fuel Cell — https://ntrs.nasa.gov/citations/20050217483
5. NTRS 20070023719 Fuel Cell Development for NASA's Human Exploration Program（ASME） — https://ntrs.nasa.gov/api/citations/20070023719/downloads/20070023719.pdf
6. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p326） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326
7. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p328） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/328
8. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p341） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/341

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にEP-20（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にEP-03（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（1文）（Rev. Q） |
| Rev. D | 2026-10-03 | 系の状態遷移定義書 SSD-BEH-ORB-005 への参照を注記（Rev. AI） |
| Rev. E | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-EPS-16 を足した（GAP-09 の解消）（Rev. AU） |
