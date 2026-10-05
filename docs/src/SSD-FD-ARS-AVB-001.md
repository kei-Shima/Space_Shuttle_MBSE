# アビオニクスベイ空冷（AVB）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-AVB-001 |
| 表題 | アビオニクスベイ空冷（AVB）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図12 ARS 機能構成 |

## 1. 目的

3つのアビオニクスベイのファンとベイ熱交換器による、ベイ内機器（GPC・インバータ分配組立・TACANなど）の強制空冷の機能と、温度・差圧の監視、喪失判定・運用の規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-AVB-01 | キャビン空気は3つのアビオニクス機器ベイとベイ内の一部の機器の冷却にも使われ、各ベイのクローズアウトカバーは気密ではないが、実質的にベイ内の閉ループで空気が循環する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-02 | 3ベイは同一の空冷系を持ち、ベイごとに2台のファンをパネルL1のAV BAY 1・2・3 FAN A・Bスイッチで個別に制御し、通常は1台ずつ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-03 | ファンはベイの床から空冷機器と300ミクロンフィルタを通して空気を吸い込み、ファン出口空気はミッドデッキ床下のベイ熱交換器で水冷却ループにより冷却されてベイへ戻り、非運転ファンの出口の逆止弁が逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-04 | 各ベイのファン出口温度はパネルO1のロータリスイッチ（AV BAY 1・2・3）でAIR TEMP計器に表示され、いずれかが130°Fを超えるとパネルF7の黄色AV BAY/CABIN AIR警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-05 | Av Bay 3Aのファンダクトは、ISSミッションでミッドデッキに収納するペイロードの追加冷却のため、より大型のキャビンファンを受け入れるよう改修されており、必要になるまでは標準のベイファンを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-06 | GPC 1・4はベイ1、GPC 2・5はベイ2、GPC 3はベイ3にあってベイファンで強制空冷され、ベイの両ファンが故障すると14.7 psiで25分、10.2 psiで17分以内に過熱して動作を信頼できなくなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-ARS-AVB-07 | ベイファン差圧が2.5 in H2O未満または4.3 in H2O超でファン喪失とし、キャビンファンと同型の改良型ファン（1999年1月時点でOV-104のAv Bay 3Aに搭載）では4.5 in H2O未満または7.8 in H2O超とする（A17-103）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| F-ARS-AVB-08 | 上昇・再突入でベイ空気出口温度を130（125）°F未満に保てない場合、軌道上14.7 psiでは稼働GPC 2台・1台・0台に応じて120（115）・108（103）・100（95）°F未満に保てない場合などにアビオニクスベイ冷却の喪失とする（A17-105）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934） |
| F-ARS-AVB-09 | 改良型アビオニクスベイファンは起動過渡電流が従来型より大きい（7.4 A/相、従来型は2.0 A/相）ため、MECO前には切り替えない（A17-151F）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939） |
| F-ARS-AVB-10 | 1ベイの両ファン喪失は軌道到達可とし、単一の電気故障（AC母線）で2ベイの空冷を失いうる場合は次のPLSに入る（A17-1001 注[4]・[7]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） |
| F-ARS-AVB-11 | ベイファンは交流で動くGould製TACANも冷却し、冷却を失ったTACANは5分以内に短絡しうるため、上昇中でもベイファンは切り替えてよい交流負荷とされる（A9-154）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467） |
| F-ARS-AVB-12 | 3個のAv Bay信号調整器が、各ベイの温度センサとファン差圧センサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ARS-07 | 水冷却ループ×2 | 熱 | 送信 | 各アビオニクスベイの熱交換器で、水冷却ループがベイファン出口空気を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | 下位: IF-AVB-10 |
| IF-ARS-15 | 煙検知・消火系（FDS） | 推進薬・流体 | 双方向 | 前方アビオニクスベイ1・2・3AにはそれぞれA群・B群の煙感知器が1個ずつあり、Halon消火ボトルもベイ1・2・3Aに常設される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） | 下位: IF-FDS-01 下位: IF-FDS-08 下位: IF-FDS-11 |
| IF-ARS-17 | DPS・アビオニクス | 熱 | 送信 | GPC（ベイ1にGPC 1・4、ベイ2にGPC 2・5、ベイ3にGPC 3）はアビオニクスベイのファンで強制空冷される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） | 上位: IF-ECL-08 下位: IF-AVB-02 |
| IF-ARS-18 | 電力系（EPS） | 熱 | 送信 | 前方アビオニクスベイ1〜3のインバータ分配組立は空冷である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ECL-33 下位: IF-AVB-03 |
| IF-ARS-28 | DPS・アビオニクス | データ・指令 | 送信 | ベイファン下流の温度センサのデータはAIR TEMP計器に直接送られ、SM SYS SUMM 2とSPEC 66 ENVIRONMENTにも表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788） | 上位: IF-ECL-29 下位: IF-AVB-13 下位: IF-AVB-14 |
| IF-ARS-34 | 電力系（EPS） | 電力（28 VDC） | 受信 | ベイファンは三相交流母線から給電され、各ベイの2台のファンは別々の母線につながる（ベイ1のファンA・BはAC1・AC2、ベイ2はAC2・AC3、ベイ3はAC3・AC1）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261）単一の電気故障（AC母線）で2つのアビオニクスベイの空冷を失いうる構成になった場合は次のPLSに入る（A17-1001 注[7]）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） | 上位: IF-ECL-39 下位: IF-AVB-07 下位: IF-AVB-15 |
| IF-ARS-41 | 誘導・航法・制御（GN&C） | 熱 | 送信 | ベイファンは交流で動くGould製TACANを冷却し、冷却を失ったTACANは5分以内に短絡しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467）冷却を回復できない場合は、ベイ内のTACANとMLSを早急に断電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207） | 上位: IF-ECL-32 下位: IF-AVB-04 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ARS-AVB-CIR-001](SSD-FD-ARS-AVB-CIR-001.md) | ベイ内循環・機器空冷（CIR）機能説明書 |
| [SSD-FD-ARS-AVB-FAN-001](SSD-FD-ARS-AVB-FAN-001.md) | ベイファン・逆止弁（FAN）機能説明書 |
| [SSD-FD-ARS-AVB-HX-001](SSD-FD-ARS-AVB-HX-001.md) | ベイ熱交換器（HX）機能説明書 |
| [SSD-FD-ARS-AVB-MON-001](SSD-FD-ARS-AVB-MON-001.md) | 温度・差圧監視（MON）機能説明書 |
| [SSD-FD-ARS-AVB-OPS-001](SSD-FD-ARS-AVB-OPS-001.md) | ベイ冷却運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.7節 Avionics Bay Fans：Av Bay 1・2・3Aに各2台のファン（通常1台、ベイ1・2は111 W・875 lb/hr）があり、ベイ熱交換器でARS水ループへ排熱すること、Bay 3Aのファンを1,400 lb/hrのキャビンファンへ換える計画を記す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Avionics Bay Cooling（PDF p376）：3ベイは同一の空冷系で、各ベイ2台のファン（通常1台）が空冷機器と300ミクロンフィルタを通して吸い、水冷却ループで冷やすベイ熱交換器を経てベイへ戻し、ファン出口130°F超でAV BAY/CABIN AIR警報灯が点灯すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| AR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | 各アビオニクスベイの2台のファンが空冷機器を通した空気を水冷却ループで冷やす熱交換器へ送り、ベイへ戻すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-103 Loss of Avionics Bay Fan（PDF p1931）：ファンΔPが2.5 in H2O未満または4.3 in H2O超で喪失とし（改良ファンは4.5/7.8 in H2O）、A17-105（p1934）でベイ空気出口温度の上限（上昇・再突入130（125）°F、軌道上はキャビン圧と稼働GPC数で変わる）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1b AV BAY TEMP・6.1c AV BAY FAN ΔP（PDF p261〜262）：アビオニクスベイの温度上昇とベイファンΔP異常の処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-08 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | アビオニクスベイ1〜3の空気入口・出口とコールドプレートの温度の解析値を仕様上限（空気出口130°F）と比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AR-14 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更として、アビオニクスベイのキャビンからの隔離の廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AR-15 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | アビオニクスベイ1〜3の空気出口温度（最高104・105・87°F）とコールドプレート温度（最高89・90・79°F）を記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| AR-17 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | Av Bay 1・2のファン（111 W）がベイ内に875 lb/hrの空気を流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| AR-18 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | アビオニクスベイを3並列でモデル化し（2.2節）、ベイのコールドプレートを表す発熱ノードを水/空気熱交換器の上流に加えた（2.4節）。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AR-22 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | アビオニクスベイの戻り空気ダクト（ARS-2562X、C.13-34）の評価ワークシートを示す。（出典: https://ntrs.nasa.gov/citations/19900001639） |
| AR-31 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-2 C&W FDA表（PDF p96）で、アビオニクスベイファンΔPの警報限界2.5〜4.3 in H2O（改良ファンは4.5〜7.8 in H2O）とベイ温度の上限130°Fを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 3つのアビオニクスベイのクローズアウトに遮音材を追加し、1992年にAv Bay 3Aの大きなスロットなどへの蓋を承認したと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |

## 6. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：改良型（大型）ベイファンについて、SCOM（PDF p376）はAv Bay 3Aのダクトを改修済みで必要になるまで標準のファンを使うとし、運用飛行規則A17-103（1999年1月時点）はOV-104のAv Bay 3Aに搭載済みとする。機体と時期で構成が異なる可能性がある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931）

> **注記** Rev. Aで、下位の展開（図32）に合わせ、ベイファンによるTACAN・MLSの強制空冷（F-ARS-AVB-11）と温度・差圧センサの信号調整器（F-ARS-AVB-12）を機能に追加した。TACAN・MLSの強制空冷の下位IF（IF-AVB-04）に対応するARSの段のIFとしてIF-ARS-41（アビオニクスベイ空冷→GN&C、熱）を追加した。IMU空冷のIF-ARS-19と同じくECLSSの段の上位IFはなく、図12では図示省略とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467）

> **注記** 下位の展開（図32）では、IF-ARS-15の下位を図26（煙検知・消火系）のIF-FDS-01・08・11のまま用いた（同じ物理IF）。IF-ARS-34の下位にはファンの三相交流（IF-AVB-07）に加えて信号調整器のAC φB（IF-AVB-15）を置き、IF-ARS-28の下位は出口温度（IF-AVB-13）とファン差圧（IF-AVB-14）に分けた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74）

## 7. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
2. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p227） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227
3. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-103 Loss of Avionics Bay Fan（NSTS-12820 PCN-1、PDF p1931） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931
4. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-105 Avionics Bay Cooling（NSTS-12820 PCN-1、PDF p1934） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934
5. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-151 Cabin Atmosphere Control（NSTS-12820 PCN-1、PDF p1939） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939
6. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-1001 Life Support Go/No-Go Criteria（NSTS-12820 PCN-1、PDF p2034） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034
7. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
8. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
9. Shuttle Crew Operations Manual 4.1 Instrument Markings（USA007587 Rev. A CPN-1、PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
10. JSC-48027 Rev. F Malfunction Procedures（MAL）6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1467） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（続き）（PDF p207） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 下位機能説明書（5件）と図32・図33への展開を追加し、TACAN・MLSの強制空冷（F-ARS-AVB-11）と温度・差圧センサの信号調整器（F-ARS-AVB-12）を機能に追加、TACAN・MLSの強制空冷のIF（IF-ARS-41）を追加、IF-ARS-07・15・17・18・28・34に下位IFを付記、目的と注記を更新 |
| Rev. B | 2026-09-30 | IF-ARS-41 に上位 IF-ECL-32 を付記、IF-ARS-18 に上位 IF-ECL-33 を付記（Rev. I） |
| Rev. C | 2026-10-01 | IF-ARS-34 の上位を IF-ECL-39 に付け替え、IF-ARS-28 の上位を IF-ECL-29 に付け替え（Rev. M） |
