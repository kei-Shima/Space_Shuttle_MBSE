# 吸着・再生ベッド（BED）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-RCRS-BED-001 |
| 表題 | 吸着・再生ベッド（BED）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-RCRS-001 |
| 関連図 | SSD-SYS-ARC-001 図28 再生式CO2除去装置 機能構成 |

## 1. 目的

固体アミン樹脂の2つのベッド（A・B）の一方でキャビン空気のCO2を吸着し、他方を熱と真空排気で再生してCO2を船外へ捨てる機能と、真空サイクル弁による流路の切替、ベッドの性能を損なう条件を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-RCRS-BED-01 | CO2は同一の固体アミン樹脂の化学ベッド2個で除去し、一方のベッドが吸着する間に他方が再生する（訓練マニュアル付録C.2.1）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） |
| F-ARS-RCRS-BED-02 | 樹脂は多孔質のポリマ基材にポリエチレンイミン（PEI）の吸着剤を被覆したもので、0.5 mmの小さな多孔質の球に被覆して表面積と吸着容量を大きくしている（訓練マニュアル付録C.2.1）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214） |
| F-ARS-RCRS-BED-03 | 樹脂はキャビン空気中の水蒸気と結合して水和アミンとなり、これがCO2と弱い重炭酸結合を作る。乾いたアミンはCO2と直接反応しないため、吸着には水が必要である（訓練マニュアル付録C.2.1）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214） |
| F-ARS-RCRS-BED-04 | 再生中のベッドは熱処理と真空排気でCO2を脱着する。吸着中のベッドで生じた熱を再生中のベッドへ移して重炭酸結合を切り、放出したCO2は真空へ排気して船外へ捨てる（訓練マニュアル付録C.2.1）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214） |
| F-ARS-RCRS-BED-05 | RCRSは機体の既存の真空ベント管を使って脱着中のベッドを排気する（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215） |
| F-ARS-RCRS-BED-06 | 真空による脱着は4組の真空サイクル弁（VCV）で制御し、各ベッドの入口と出口にある弁が、吸着中の通気、脱着のための真空への開放、ベッドの隔離を行う（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| F-ARS-RCRS-BED-07 | 各VCVは空気ポペットと真空ポペットを持ち、アクチュエータAはベッドAの空気ポペットとベッドBの真空ポペットを、アクチュエータBはベッドAの真空ポペットとベッドBの空気ポペットを動かす。アクチュエータは、ポペット前後の差圧が3.4 psiを超えるとポペットが不用意に開かない大きさにしてある（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| F-ARS-RCRS-BED-08 | 吸着の工程は10分54秒で、その間に他方のベッドはCO2を真空へ脱着する（訓練マニュアル付録C.2.3のステート2・8）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=220） |
| F-ARS-RCRS-BED-09 | 制御器に電源を入れた直後の起動シーケンスでは、固体アミンの劣化でベッドAにたまったアンモニアを除くため、ベッドAを2分間真空へ排気する（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219） |
| F-ARS-RCRS-BED-10 | 真空ベント隔離弁が閉じた場合、真空ベントダクトが詰まった場合、ARSのダクトに漏れがある場合は、RCRSのCO2除去は効かない（A17-106A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| F-ARS-RCRS-BED-11 | 火災の燃焼生成物のうちHCl・HF・HCNは固体アミンと不可逆に反応し、通常運転で真空に曝しても除かれずに吸着部位に残って、RCRSのCO2除去能力を下げる（A17-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCRS-01 | 吸気・送風・流量設定 | 推進薬・流体 | 受信 | RCRSファンで送り流量制御弁で設定した流量の空気を、真空サイクル弁の空気ポペットを通して吸着中のベッドへ流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217）流量は乗員数に応じて72 lb/hrまたは110 lb/hrである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | — |
| IF-RCRS-02 | 温湿度制御：熱交換器・凝縮 | 推進薬・流体 | 送信 | 吸着中のベッドでCO2を除いた空気をARSの空気流へ戻し、キャビン熱交換器を通して乗員室へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）訓練マニュアル付録C.2.1は、戻す位置をキャビンファンのフィルタのすぐ上流（RCRSの吸込み位置とほぼ同じ所）とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） | 上位: IF-ARS-04 |
| IF-RCRS-03 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 再生（脱着）中のベッドを機体の既存の真空ベント管へ開いて排気し、脱着したCO2を船外へ捨てる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215）標準構成では、パネルML31Cの真空ベント隔離弁を開にしておく（MAL 6.8a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330） | 上位: IF-ARS-16 |
| IF-RCRS-04 | 空気回収・均圧 | 推進薬・流体 | 送信 | 再生に入るベッドの空気をullage-save圧縮機が均圧弁（PEV）を通して75秒間吸い出し、初めの14.7 psiaから約3 psiaまで下げる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=220）その後、均圧弁で両ベッドをつないで圧力をそろえ、再生に入るベッドに残る空気の半分を他方のベッドへ移す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） | — |
| IF-RCRS-05 | 制御器・運転シーケンス | データ・指令 | 受信 | 作動中の制御器が真空サイクル弁のアクチュエータA・Bを回し、ベッドの空気ポペットと真空ポペットを開閉して吸着と再生を切り替える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219）作動中の制御器の制御論理が、各構成品と計装に出力信号と電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） | — |
| IF-RCRS-08 | 計装・表示 | 推進薬・流体 | 送信 | 各制御器が給電するベッドの圧力センサとベッド差圧センサ、共通計装の真空圧力センサで、ベッドと真空側の圧力を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.1〜C.2.2（PDF p213〜217）：固体アミン（PEI）ベッド2個の吸着と熱・真空による再生の原理、既存の真空ベント管による排気、4組の真空サイクル弁とアクチュエータを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p371・p373）：2個の固体アミン（PEI）ベッドの一方で吸着し他方を熱と真空で再生すると述べ、系統図に空気・真空ポペットを持つ真空サイクル弁と真空ベントダクトへの接続を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-156（PDF p1952）：燃焼生成物のうちHCl・HF・HCNが固体アミンと不可逆に反応して吸着部位に残り、CO2除去能力を下げると説明し、A17-106（p1937）で真空ベントの閉塞やARSダクトの漏れではCO2除去が効かないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a（PDF p330）：標準構成として、真空ベント隔離弁（パネルML31C）を開にすることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330） |
| RC-06 | SAE 901292 | The EDO Regenerable CO2 Removal System | 固体アミンでCO2と水蒸気を吸着し、宇宙の真空へ脱着すると述べる（抄録で確認）。（出典: https://saemobilus.sae.org/content/901292） |
| RC-08 | NASA-CR-160224 | Flight prototype CO2 and humidity control system（Hamilton Standard、1979年） | シャトル向けに開発した再生式CO2・湿度制御装置の飛行試作で、吸着剤HS-Cの2ベッドを交互に吸着と宇宙真空への脱着に切り替え、CO2分圧と湿度を制御できることを試験で確認した（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19790017589） |
| RC-11 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p5）のオービタ欄で、長期ミッションではアミン系のRCRSでCO2と一部の水分を除いて宇宙へ排出できると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：RCRSを出た空気の戻り先を、SCOM（PDF p371）はキャビン熱交換器へ送られるとし、訓練マニュアル付録C.2.1はキャビンファンのフィルタのすぐ上流（RCRSの吸込み位置とほぼ同じ所）に戻すとする。図28では上位のIF-ARS-04に合わせて出口をキャビン温湿度制御へのIF（IF-RCRS-02）とし、戻す位置は同じIFの内容に併記した（SSD-FD-CAC-RTN-001の検証メモと同じ相違）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）

> **注記** SAE 901292の抄録とWieland（2005年）は、RCRSがCO2とともに水蒸気（一部の水分）も吸着して宇宙へ出すとするが、訓練マニュアルとSCOMは水を吸着反応に必要なものとして述べるだけで、水分の除去量を示さない。本書は水分の除去を機能に含めていない。（出典: https://saemobilus.sae.org/content/901292）

> **注記** RCRSはミッドデッキ床下のvolume Dの、LiOH組立とキャビン温度制御器の近くにある（訓練マニュアル付録C.2.2）。構成品の配置は訓練マニュアルの図C-3（PDF p216）に示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.1・C.2.1 EDO Modifications・Carbon Dioxide Removal（PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.1 Carbon Dioxide Removal（続き）（PDF p214） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=214
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2 RCRS Hardware（PDF p215） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=215
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2 RCRS Hardware（続き）（PDF p217） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（ステート2〜4）（PDF p220） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=220
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（図C-5・Startup）（PDF p219） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-106 Regenerative CO2 Removal System (RCRS) Loss Definition（PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-156 RCRS Manual Shutdown Criteria（PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
9. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
10. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a CO2 CNTLR 1(2)（PDF p330） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（ステート5〜6）（PDF p221） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.4 Instrumentation and Displays（表C-1）（PDF p227） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227
14. SAE 901292 The Extended Duration Orbiter Regenerable CO2 Removal System — https://saemobilus.sae.org/content/901292

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
