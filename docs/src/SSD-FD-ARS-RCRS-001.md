# 再生式CO2除去装置（RCRS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-RCRS-001 |
| 表題 | 再生式CO2除去装置（RCRS）機能説明書 |
| 版・日付 | Rev. B／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ARS-001 |
| 関連図 | SSD-SYS-ARC-001 図12 ARS 機能構成 |

## 1. 目的

OV-105の長期単独飛行向けに搭載できた再生式CO2除去装置（RCRS）の原理・構成・運用を示す。SCOMはRCRSを歴史的情報として記載している。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-RCRS-01 | 再生式CO2除去装置（RCRS）は長期単独飛行向けでOV-105のみがハードウェア能力を持つが、ISS係留中は不要で今後の使用予定もなく、SCOMでは歴史的情報として記載されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-02 | CO2は2個の同一の固体アミン樹脂ベッドの一方にキャビン空気を通して除去し、樹脂（多孔質ポリマ基材にPEI吸着剤を被覆）は空気中の水蒸気と結合した水和アミンとしてCO2と弱い重炭酸結合を作るため、反応には水が必要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-03 | 一方のベッドが吸着する間に他方は加熱と真空排気で再生するため上昇・再突入中は使えず、吸着と再生は13分ごとに自動で切り替わり、完全な1サイクルは13分×2である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-04 | RCRS搭載機は打上げと再突入にLiOHキャニスタを1個ずつ使い、もう一方のCO2吸収器スロットの活性炭キャニスタで臭気を除去し、10日以上の飛行では途中で交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-05 | RCRSはミッドデッキ床下のvolume Dに設置し、主要部品は化学ベッド2個、真空サイクル弁と均圧弁、RCRSファン、流量制御弁、ullage-save圧縮機、冗長コントローラ2台（1・2）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-06 | 流量制御弁は打上げ前に乗員数「4」または「5〜7」に設定し、RCRSを通る空気流量をそれぞれ72 lb/hrまたは110 lb/hrとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-07 | 制御スイッチはパネルMO51Fにあり、コントローラ1・2のAC・DC電源、OPER/STBYを選ぶ3位置モーメンタリスイッチ、OPER/FAIL状態灯を備え、運転状態はOPS 2のSPEC 66 ENVIRONMENTで確認する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-08 | PPCO2を7.6 mmHg未満に保てない場合またはPPCO2の把握を失った場合はRCRS喪失とし、両コントローラ（A・B）が故障すると手動運転の手段はない（A17-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| F-ARS-RCRS-09 | RCRSは真空源が無い上昇・再突入では停止し、軌道上ではOMS-2後なるべく早く起動して軌道離脱噴射前なるべく遅く停止し、軌道離脱準備で停止した後はウェーブオフ周回では再起動せず、ウェーブオフ日には消耗品が許せば再起動する（A17-155）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950） |
| F-ARS-RCRS-10 | キャビンまたはアビオニクスベイの火災後はRCRSを手動停止し（HCl・HF・HCNが固体アミンに不可逆に吸着するため）、LiOH・ATCOで汚染物質を除去した後に再起動する（A17-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| F-ARS-RCRS-11 | 再生に入るベッドの空気は、ullage-save圧縮機での吸出し（ステート4）と均圧弁による両ベッドの均圧（ステート5）で最大90%を回収し、真空へ失うキャビン空気を約1.6 lb/日に抑える（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ARS-02 | キャビン空気循環 | 推進薬・流体 | 受信 | RCRS搭載時は、キャビン空気ループから乗員数に応じて72 lb/hrまたは110 lb/hrの空気をRCRSへ通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 下位: IF-CAC-03 |
| IF-ARS-04 | キャビン温湿度制御 | 推進薬・流体 | 送信 | RCRSでCO2を除去した空気はキャビン熱交換器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 下位: IF-RCRS-02 |
| IF-ARS-16 | 宇宙空間（船外） | 推進薬・流体 | 送信 | RCRSは再生時にベッドを真空ベントダクトへ排気する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） | 下位: IF-RCRS-03 |
| IF-ARS-26 | DPS・アビオニクス | データ・指令 | 送信 | RCRSの運転状態はOPS 2のSPEC 66 ENVIRONMENTで確認する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 上位: IF-ECL-29 下位: IF-RCRS-10 下位: IF-RCRS-11 |
| IF-ARS-33 | 電力系（EPS） | 電力（28 VDC） | 受信 | RCRSのコントローラ1・2のAC・DC電源はパネルMO51Fで操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 上位: IF-ECL-39 下位: IF-RCRS-12 下位: IF-RCRS-13 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ARS-RCRS-FAN-001](SSD-FD-ARS-RCRS-FAN-001.md) | 吸気・送風・流量設定（FAN）機能説明書 |
| [SSD-FD-ARS-RCRS-BED-001](SSD-FD-ARS-RCRS-BED-001.md) | 吸着・再生ベッド（BED）機能説明書 |
| [SSD-FD-ARS-RCRS-USC-001](SSD-FD-ARS-RCRS-USC-001.md) | 空気回収・均圧（USC）機能説明書 |
| [SSD-FD-ARS-RCRS-CTL-001](SSD-FD-ARS-RCRS-CTL-001.md) | 制御器・運転シーケンス（CTL）機能説明書 |
| [SSD-FD-ARS-RCRS-MON-001](SSD-FD-ARS-RCRS-MON-001.md) | 計装・表示（MON）機能説明書 |
| [SSD-FD-ARS-RCRS-OPS-001](SSD-FD-ARS-RCRS-OPS-001.md) | RCRS運用管理（OPS）機能説明書 |

## 5. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C（C.2節）：固体アミン（PEI）ベッドを熱と真空排気で再生するRCRSの原理とvolume Dの配置・構成部品を示し、RCRSはその後OV-105から撤去されたと記す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf） |
| AR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371〜373）：OV-105のRCRS（歴史的情報）は固体アミン（PEI）ベッド2個を13分ごとに吸着と再生（熱と真空）で切り替え、流量制御弁で72/110 lb/hrを選び、MO51Fで操作しSPEC 66で監視すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| AR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-106 RCRS Loss Definition（PDF p1937）：PPCO2を7.6 mmHg未満に保てないかPPCO2の把握を失うと喪失とし、A17-155（p1950）で上昇・再突入中の停止と軌道上の起動・停止時期、A17-156（p1952）で火災後の手動停止を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| AR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a CO2 CNTLR 1(2)（PDF p330）：S66 CO2 RL SYS MALF警報時に、MO51Fの表示灯とSPEC 66からRCRSコントローラの故障を判定する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf） |
| AR-10 | SAE 901290 | Expanded capabilities of the Extended Duration Orbiter | EDO向けに提案した再生式CO2除去装置の構成・運用・配置を詳しく説明する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19910065909） |
| AR-11 | SAE 901292 | The EDO Regenerable CO2 Removal System | 固体アミンでCO2と水蒸気を吸着して宇宙の真空へ脱着し、30分周期でベッドを切り替え、乗員4〜7名に対応するRCRSの開発を述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/901292） |
| AR-12 | SAE 932294 | Development and Flight Status Report on the EDO RCRS | Hamilton Standardが開発したRCRSの設計・性能と1991〜1992年の開発・認定試験、STS-50・52・55でのオービタとSpacelabのCO2除去の飛行結果を報告する（抄録で確認）。（出典: https://saemobilus.sae.org/content/932294） |
| AR-20 | NASA-CR-160224 | Flight prototype CO2 and humidity control system（Hamilton Standard、1979年） | シャトル向けに開発した再生式CO2・湿度制御装置の飛行試作で、吸着剤HS-Cの2ベッドを交互に吸着と宇宙真空への脱着に切り替え、CO2分圧と湿度を制御できることを試験で確認した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19790017589） |
| AR-21 | SAE 851374 | Performance and endurance testing of a prototype carbon dioxide and humidity control system for Space Shuttle extended mission capability（Lin・Cusick、1985年） | 1980年にJSCへ納入された4〜10人用の再生式CO2・湿度制御装置の飛行試作機を試験し、LiOH方式より大幅に軽く、無整備で最長60日運転できることを示した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19860038819） |
| AR-25 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report（1992年） | RCRSの初飛行で、軌道投入後25時間は正常に運転したが6回停止してLiOHキャニスタに切り替え、JSCで再現・検証した機上整備手順で単系運転を回復し以後正常に運転したと記録する。（出典: https://ntrs.nasa.gov/citations/19930016803） |
| AR-29 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p5）のオービタ欄で、長期ミッションではアミン系のRCRSでCO2と一部の水分を除いて宇宙へ排出できると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| AR-32 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 1990年にEDO向けRCRSへ消音器を追加したと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| AR-36 | NTRS 20110003653（JSC-CN-22727） | Manned Mission Planning Considerations when Using a Non-Regenerable CO2 Removal System（DeSimpelaere、2011年） | EDO改修で搭載した固体アミンの再生式吸収装置にも触れる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20110003653） |

## 6. 注記（出典間の相違・構成変更）

> **注記** SCOMはRCRSを、ISS係留中は不要で今後の使用予定もない歴史的情報として記載している。本書の記述はOV-105の長期単独飛行での構成と運用を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）

> **注記** 検証メモ：RCRSのベッド切替周期を、SCOM（PDF p371・p404）は13分ごと（完全な1サイクルは26分）とし、SAE 901292の抄録（関連文書AR-11）と上位のSSD-FD-ECL-ARS-001のF-ECL-ARS-09は30分周期とする。本書はSCOMの値を用いた。（出典: https://saemobilus.sae.org/content/901292）

> **注記** 検証メモ：RCRSのコントローラの呼称を、SCOM（パネルMO51Fを含む）は1・2とし、運用飛行規則A17-106はAとBとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937）

> **注記** Rev. Aで下位の展開（図28）を追加した。IF-ARS-02の下位は図16のIF-CAC-03をそのまま用い（同じ物理IF）、IF-ARS-26は計測値（IF-RCRS-10）と制御器の状態（IF-RCRS-11）、IF-ARS-33は制御器の電源（IF-RCRS-12）と共通計装の電源（IF-RCRS-13）の、それぞれ2つの下位IFに分けた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225）

> **注記** 検証メモ：ベッドの切替周期の相違（SCOMの13分・1周期26分と、SAE 901292の抄録の30分）について、訓練マニュアル付録C.2.3は、当初30分周期で設計し吸着性能を上げるために短縮したと説明している。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）

> **注記** 検証メモ：F-ARS-RCRS-01はSCOMに従いOV-105がRCRSのハードウェア能力を持つとするが、訓練マニュアル付録C.1は、重量とISS飛行の短縮のためRCRSのハードウェアがOV-105から撤去され、RCRSに対応する機体はなくなったとする。STS-65（OV-102）でもRCRSを使っている（SSD-FD-ARS-RCRS-OPS-001の注記を参照）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）

> **注記** IF-ARS-33の上位はIF-EPS-12（交流の配電）としているが、制御器と共通計装の直流電力（MN A・MN B・MN C、パネルML86B:Eの遮断器）はEPSの直流配電（IF-EPS-11）に当たる。本書では上位欄を変更していない。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330）

## 7. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
2. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-106 Regenerative CO2 Removal System (RCRS) Loss Definition（NSTS-12820 PCN-1、PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
3. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-155 Regenerative CO2 Removal System (RCRS) Management（NSTS-12820 PCN-1、PDF p1950） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950
4. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-156 RCRS Manual Shutdown Criteria・A17-157 LiOH Redline Determination（NSTS-12820 PCN-1、PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
5. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p373） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373
6. SAE 901292 The Extended Duration Orbiter Regenerable CO2 Removal System — https://saemobilus.sae.org/content/901292
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.3 Controls（図C-14 Panel MO51F）（PDF p225） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.1・C.2.1 EDO Modifications・Carbon Dioxide Removal（PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
10. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a CO2 CNTLR 1(2)（PDF p330） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（ステート5〜6）（PDF p221） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221

## 8. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-26 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 下位機能説明書（6件）と図28・図29への展開を追加し、空気回収の機能（F-ARS-RCRS-11）を追加、IF-ARS-02・04・16・26・33に下位IF（IF-CAC-03・IF-RCRS）を付記、注記・検証メモ（切替周期の相違の理由、搭載機体、直流電源の上位IF）を追加 |
| Rev. B | 2026-10-01 | IF-ARS-33 の上位を IF-ECL-39 に付け替え、IF-ARS-26 の上位を IF-ECL-29 に付け替え（Rev. M） |
