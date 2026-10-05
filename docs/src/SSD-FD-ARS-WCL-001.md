# 水冷却ループ（WCL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-WCL-001 |
| 表題 | 水冷却ループ（WCL）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図12 ARS 機能構成 |

## 1. 目的

キャビンとアビオニクスの熱を集め、フレオン/水インターチェンジャで能動熱制御系へ渡す2系統の水冷却ループの機能と、流路・制御・計測と運用上の制約を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-WCL-01 | 水冷却ループは完全に独立した2系統が並んで流れ、同時運転もできるが通常は1系統だけを稼働させ（通常はループ2）、両者の違いはループ1（予備）がポンプ2台、ループ2が1台である点だけで、ポンプは前方ロッカー下のECLSSベイにある三相117 V AC電動機で駆動される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377） |
| F-ARS-WCL-02 | ポンプ下流で流れは3つの並列経路に分かれ、第1はAv Bay 1の空気/水熱交換器とコールドプレート、第2はAv Bay 2の空気/水熱交換器とコールドプレートおよび乗員室窓の熱調整、第3はフライトデッキのMDMコールドプレート、Av Bay 3Aの空気/水熱交換器とコールドプレート、Av Bay 3Bのコールドプレートを通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| F-ARS-WCL-03 | 3経路はインターチェンジャ上流で合流した後に再び分かれ、一方はフレオン/水インターチェンジャで冷却されてから液冷服熱交換器・飲料水チラー・キャビン熱交換器・IMU熱交換器を通ってポンプパッケージへ戻り、他方の温水はそれらを迂回してポンプパッケージで合流し、バイパス経路の弁がポンプパッケージ出口の混合水温を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| F-ARS-WCL-04 | バイパス弁はパネルL1のH2O LOOP 1・2 BYPASS MODEスイッチで制御し、AUTOではバイパスコントローラがポンプ出口温度63.0±2.5°Fを保つよう弁を動かし、MANではH2O LOOP MAN INCR/DECRスイッチで乗員が弁位置を調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） |
| F-ARS-WCL-05 | バイパス弁は打上げ前にインターチェンジャ流量が約950 lb/hrとなるよう手動で調整して投入後までMANのままとし、軌道上は稼働ループをAUTOにしてポンプ出口を約63°Fに保ち、両ループの長時間運転はインターチェンジャの能力を超えてキャビン温度が上がるため避ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| F-ARS-WCL-06 | 各ループのアキュムレータはGN2で19〜35 psiに加圧され、ポンプ入口に正圧を与え、熱膨張を吸収し、ポンプの起動・停止時の圧力変動を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| F-ARS-WCL-07 | ポンプ出口圧はパネルO1のH2O PUMP OUT PRESS計器（LOOP 1/LOOP 2切替）に表示され、ループ1で19.5 psia未満または79.5 psia超、ループ2で45 psia未満または81 psia超のときパネルF7の黄色H2O LOOP警報灯が点灯し、ポンプ出口圧と差圧はSM GPCへ送られてDISP 88に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |
| F-ARS-WCL-08 | ループ1のポンプはパネルL1のH2O PUMP LOOP 1 A/BスイッチとGPC/OFF/ONスイッチ、ループ2のポンプはH2O PUMP LOOP 2スイッチで制御し、OPS 2でGPC位置にするとGPCが非稼働ループのポンプを4時間ごとに6分運転して熱調整し、OPS 1・3・6ではループ2のGPC-ON指令がBFSに常駐するためGPC位置で直ちに起動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| F-ARS-WCL-09 | アキュムレータ量が0（5）%、MIN BYP位置でインターチェンジャ流量600（649）lb/hr以上を保てない、稼働ループのポンプ出口温度を85（82.75）°F未満に保てない（14.7 psia）、またはループ間漏れ（水-水、フレオン-水）が確認された場合などにARS水ループ喪失とする（A18-101）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| F-ARS-WCL-10 | 上昇・再突入では両ループともバイパス弁をMAN、インターチェンジャ流量を950±50 lb/hrに設定し（ループ1はポンプBでOFF、ループ2はON）、ループ2を稼働ループとするのはポンプ1台のループ2の故障が検知されないまま残ることを避けるためである（A18-151A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061） |
| F-ARS-WCL-11 | 両フレオンループの蒸発器出口温度が32°F未満になれば両水ループを運転し、両ループの運転と流量比例弁のICH位置で、インターチェンジャへのフレオン入口温度が6°Fに下がるまで水の凍結を防ぐ（A18-151C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062） |
| F-ARS-WCL-12 | フレオン-水の漏れでは影響ループを必要時以外運転せず、乗員室への水の漏れでは、次のフレオン-水漏れで有毒なフレオン21が乗員室に入るのを避けるため影響ループを止める（A18-151E・F）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2063） |
| F-ARS-WCL-13 | 1ループの喪失はゼロフォールトトレラントとなり、両ループを失うと乗員室内のアビオニクスの冷却と湿度制御を失うため、上昇中はAOAとし、故障から4時間以内の着陸を要する（A18-1001B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149） |
| F-ARS-WCL-14 | インターチェンジャ流量・出口温度、キャビン熱交換器入口温度、ポンプ出口温度・差圧、アキュムレータ量は、SM OPS 2・4のSPEC 88 APU/ENVIRON THERMに表示される（訓練マニュアル3.5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=82） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-01 | 熱交換器・コールドプレート網 | 熱 | 送信 | ATCSは、水冷却ループとフレオン21冷却ループの熱交換器（インターチェンジャ）でARSの熱を受け取る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-06 下位: IF-WCL-20 |
| IF-ARS-06 | キャビン温湿度制御 | 熱 | 受信 | キャビン熱交換器で空気の熱を水冷却ループへ移す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | 下位: IF-THC-03 |
| IF-ARS-07 | アビオニクスベイ空冷×3 | 熱 | 受信 | 各アビオニクスベイの熱交換器で、水冷却ループがベイファン出口空気を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | 下位: IF-AVB-10 |
| IF-ARS-08 | IMU空冷 | 熱 | 受信 | IMUファン出口空気はフライトデッキのIMU熱交換器を通り、水冷却ループで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | 下位: IF-IMU-08 |
| IF-ARS-20 | DPS・アビオニクス | 熱 | 送信 | 前方アビオニクスベイのFF・PL・LF・LM MDMは水冷却ループのコールドプレートで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） | 上位: IF-ECL-08 下位: IF-WCL-17 |
| IF-ARS-21 | 電力系（EPS） | 熱 | 送信 | 前方アビオニクスベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータはコールドプレートに搭載され、水冷却ループで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ECL-33 下位: IF-WCL-18 |
| IF-ARS-22 | エアロック支援系（ALS） | 熱 | 受信 | 水冷却ループの冷側経路は液冷服（LCG）熱交換器を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | 上位: IF-ECL-15 下位: IF-WCL-21 |
| IF-ARS-23 | 給水・廃水系（H2O） | 熱 | 送信 | 水冷却ループの冷側経路は飲料水チラーを通り、飲料水を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | 下位: IF-WCL-22 |
| IF-ARS-24 | 乗員室（制御対象） | 熱 | 送信 | 水冷却ループのAv Bay 2経路は乗員室窓の熱調整も行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | 下位: IF-WCL-19 |
| IF-ARS-30 | DPS・アビオニクス | データ・指令 | 受信 | H2O PUMP LOOPスイッチがGPC位置のとき、OPS 2ではGPCが非稼働ループのポンプを4時間ごとに6分運転するよう指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） | 上位: IF-ECL-29 下位: IF-WCL-15 |
| IF-ARS-31 | DPS・アビオニクス | データ・指令 | 送信 | 各ループのポンプ出口圧とポンプ差圧をシステム管理（SM）GPCへ送り、DISP 88 APU/ENVIRON THERMに表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） | 上位: IF-ECL-29 下位: IF-WCL-16 |
| IF-ARS-36 | 電力系（EPS） | 電力（28 VDC） | 受信 | ループ2のポンプはON位置でAC3、GPC位置ではBFSがPL MDMを制御しているときAC1から給電され、AC1側の回路遮断器（ループ2のGPC位置とループ1ポンプA）は通常引いておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404） | 上位: IF-ECL-39 下位: IF-WCL-12 下位: IF-WCL-13 下位: IF-WCL-14 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ARS-WCL-PMP-001](SSD-FD-ARS-WCL-PMP-001.md) | ポンプパッケージ（PMP）機能説明書 |
| [SSD-FD-ARS-WCL-AVL-001](SSD-FD-ARS-WCL-AVL-001.md) | アビオニクス冷却経路（AVL）機能説明書 |
| [SSD-FD-ARS-WCL-ICH-001](SSD-FD-ARS-WCL-ICH-001.md) | インターチェンジャ・バイパス制御（ICH）機能説明書 |
| [SSD-FD-ARS-WCL-CLD-001](SSD-FD-ARS-WCL-CLD-001.md) | 冷側熱交換器（CLD）機能説明書 |
| [SSD-FD-ARS-WCL-MON-001](SSD-FD-ARS-WCL-MON-001.md) | ループ計測・警報（MON）機能説明書 |
| [SSD-FD-ARS-WCL-OPS-001](SSD-FD-ARS-WCL-OPS-001.md) | ループ運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3節 ARS Water：ループ1（ポンプ2台、予備）とループ2（1台、常用）、Av Bay 1〜3の各系統、フレオン/水インターチェンジャ（地上で950 lb/hrに設定、AUTOでポンプ出口63°F）、LCG熱交換器、チラーを解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Water Coolant Loop System（PDF p377〜380）：2系統のループ（ループ1はポンプ2台、ループ2は1台で常用、三相117 V AC）がベイ熱交換器・コールドプレート、インターチェンジャ、LCG熱交換器、飲料水チラー、キャビン熱交換器、IMU熱交換器を流れ、バイパス弁でポンプ出口63.0±2.5°Fを保つと示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-101 ARS Water Loop（PDF p2059）：アキュムレータ量0%、インターチェンジャ流量600 lb/hr未満、ポンプ出口85°F以上、ループ間漏れなどでループ喪失とし、A18-151（p2061）で上昇・再突入時のインターチェンジャ流量950±50 lb/hr（MAN）とループ2の常用を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.4l〜6.4p（PDF p307〜318）：水ループのポンプ圧力、アキュムレータ量、インターチェンジャ流量、インターチェンジャ出口・キャビン熱交換器入口・ポンプ出口温度の異常時の処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | キャビン冷却ループに水を使って乗員の安全性を高め、同ループの弁をすべて廃して地上整備を簡素化したと述べる（p6）。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | 1ループ運転でインターチェンジャ流量を950 lb/hr/ループとする前提で、ARS水ループの熱プロファイルを示す。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-09 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | 同じ評価で、水ループのバイパス弁をゼロ流量に設定することの効果の再検討を提言する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| AR-13 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 2系統の水冷却ループ（ループ1はポンプ2台、ループ2は1台）がポンプ下流で3並列（Av Bay 1、Av Bay 2と窓、MDMコールドプレートとAv Bay 3A・3B）に分かれ、インターチェンジャ、LCG熱交換器、飲料水チラー、キャビン熱交換器、IMU熱交換器を流れる構成とバイパス制御・アキュムレータを解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更として、水冷却ループのサブリメータ撤去と負荷増に応じた流量の増加を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | 稼働ループの流量970±15 lb/hr、AUTOでのポンプ出口63°F、アキュムレータの水量（最大1.81 lb、最小0.19 lb）を記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-18 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | ARS/ATCSの定常熱力学性能を計算するプログラムの手引きで、ARS水冷却ループのモデル（2.2節）にサブリメータ、ARS水と飲料水の温度を予測するチラー、窓の冷却回路を加えた。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | 水ループのアキュムレータ（ARS-108、C.13-2）について、故障してもポンプ揚程でループを運転できるとのNASA担当者の見解にIOAが同意し課題を取り下げたと記す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-28 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | SPACEHABを搭載したため稼働中の水冷却ループ2を手動バイパスとし、921〜1,024 lb/hrの流量でインターチェンジャでの熱移動を最大にしたと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| AR-31 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 図5-2（PDF p82）で水ループ2ポンプ出口圧の警報限界がスイッチ位置で変わる例（ON時50〜75 psia）を示し、表7-3でループ1ポンプ出口圧をC&Wチャネル105に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOM（PDF p377）は水冷却ループ1・2の違いをポンプの台数だけとするが、H2O LOOP警報の限界はループ1が19.5／79.5 psia、ループ2が45／81 psiaと異なる（PDF p380）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）

> **注記** 検証メモ：交流電動機の電圧の表記はSCOM内で異なり、キャビンファンは三相115 V AC（PDF p370）、水ポンプは三相117 V AC（PDF p377）とされ、SM SYS SUMM 1のAC電圧の表示例は117 V（PDF p359）である。表記の差か定格の差かは原本から判別できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377）

> **注記** SCOM（PDF p379）は液冷服（LCG）熱交換器を水冷却ループの冷側経路に置いており、1988年版資料の水冷却ループの章と一致する。SSD-FD-ECL-ALS-001がRev. Bまで一次資料での確認を要するとしていたIF-ECL-15の接続先は、これにより水冷却ループ側と確認できる。本書ではIF-ECL-15の下位としてIF-ARS-22（エアロック支援系→水冷却ループ）を図12に示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379）

> **注記** Rev. Aで、下位の展開（図36）に合わせて、凍結防止（F-ARS-WCL-11）、漏れへの対処（F-ARS-WCL-12）、両ループ喪失時の扱い（F-ARS-WCL-13）、計測・表示（F-ARS-WCL-14）を機能として追加した。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2063）

> **注記** 下位の展開では、IF-ARS-36を水ポンプの交流電力（IF-WCL-12）、H2O CNTLRの交流電力（IF-WCL-13）、流量センサの直流電力（IF-WCL-14）の3つの下位IFに分けた。直流電力はEPS段のIF-EPS-11に当たるが、ARS段に水冷却ループの直流電源のIFがないため、SSD-FD-ARS-RCRS-001のIF-ARS-33と同じくIF-ARS-36（上位IF-EPS-12）の下位とした。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93）

> **注記** 下位の展開（図36）では、IF-ARS-06〜08（キャビン熱交換器・ベイ熱交換器・IMU熱交換器、所有はSSD-FD-ARS-THC-001・AVB-001・IMU-001）に新しい番号を作らず、IF-ARS-06の下位を図30のIF-THC-03のまま、IF-ARS-07の下位を図32のIF-AVB-10のまま、IF-ARS-08の下位を図34のIF-IMU-08のまま用いた（同じ物理IF）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63）

> **注記** IF-TCS-01（インターチェンジャ）の下位はIF-WCL-20とし、所有文書SSD-FD-TCS-HX-001の同じ行にも「下位: IF-WCL-20」を付記した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=104）

## 7. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p377） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377
2. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
4. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
5. Space Shuttle Operational Flight Rules Vol. A – All Flights A18-101 ARS Water Loop（NSTS-12820 PCN-1、PDF p2059） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059
6. Space Shuttle Operational Flight Rules Vol. A – All Flights A18-151 ARS Water Loop（NSTS-12820 PCN-1、PDF p2061） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061
7. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
8. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
9. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
10. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p236） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236
11. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
12. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p404） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/404
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151E・F ARS Water Loop（続き）（PDF p2063） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2063
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（完）（PDF p93） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.4節 Cabin Heat Exchanger（PDF p63） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63
16. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 4.10節 Water/Freon Interchanger（PDF p104） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=104
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151B〜D ARS Water Loop（続き）（PDF p2062） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-1001B Thermal Go/No-Go Criteria（ARS H2O）（PDF p2149） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149
19. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-20 SPEC 88 APU/ENVIRON THERMAL（PDF p82） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=82

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 下位機能説明書（6件）と図36・図37への展開を追加し、凍結防止・漏れ・両ループ喪失・計測表示の機能（F-ARS-WCL-11〜14）を追加、IF-TCS-01とIF-ARS-06・07・08・20・21・22・23・24・30・31・36に下位IF（IF-WCL ほか）を付記、注記を追加 |
| Rev. B | 2026-09-30 | IF-ARS-21 に上位 IF-ECL-33 を付記（Rev. I） |
| Rev. C | 2026-10-01 | IF-ARS-36 の上位を IF-ECL-39 に付け替え（Rev. M） |
