# 制御器・運転シーケンス（CTL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-RCRS-CTL-001 |
| 表題 | 制御器・運転シーケンス（CTL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-RCRS-001 |
| 関連図 | SSD-SYS-ARC-001 図28 再生式CO2除去装置 機能構成 |

## 1. 目的

冗長の制御器2台（1・2）のうち作動中の1台が26分周期の運転シーケンスで弁と圧縮機を動かし、故障を検知するとRCRSを停止する機能と、パネルMO51Fの操作、制御器の電源の構成を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-RCRS-CTL-01 | 作動中の制御器の制御論理がRCRSの運転サイクルを管理し、各構成品と計装へ出力信号と電力を供給し、計装からの入力で故障を検知する（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| F-ARS-RCRS-CTL-02 | 2台の制御器のうち作動するのは1台で、同時に作動させると制御器1が制御器2に優先する。2台を同時に給電する手順はない（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| F-ARS-RCRS-CTL-03 | 運転シーケンスは周期的な工程で、起動直後の始動期間の後は26分ごとに繰り返す。当初は30分周期で設計されたが、吸着性能を上げるため短縮された（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| F-ARS-RCRS-CTL-04 | 運転シーケンス（図C-5）は、ベッドAが吸着しベッドBが再生する半周期と、ベッドを入れ替えた半周期から成り、各半周期は吸着・再生の工程の後にullage-save圧縮機の工程と均圧の工程を行う（訓練マニュアル付録C.2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219） |
| F-ARS-RCRS-CTL-05 | SCOMは、吸着と再生が13分ごとに自動で入れ替わり、13分の工程2回で1周期となるとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-CTL-06 | パネルMO51Fには、制御器1・2のAC・DC電源スイッチ、OPER（運転シーケンスの開始）とSTBY（待機、シーケンスの停止）を選ぶ3位置モーメンタリのモードスイッチ、共通計装の電源スイッチと、各制御器の状態灯がある（訓練マニュアル付録C.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224） |
| F-ARS-RCRS-CTL-07 | 交流電源の遮断器はMO51Fの電源スイッチの下に、直流の遮断器はパネルML86B:Eにある。制御器1はAC1とMN A、制御器2はAC3とMN Cから給電される（訓練マニュアル付録C.3）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225） |
| F-ARS-RCRS-CTL-08 | 故障検知の論理は各パラメータ・圧縮機回転数・RCRSの弁位置を監視し、故障を検知するとRCRSを停止して、MO51Fの該当する制御器の故障灯を点灯させ、故障ディスクリートのテレメトリを6秒間「1」にする。故障灯はディスクリートが「0」に戻っても点灯したままである（訓練マニュアル付録C.5）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228） |
| F-ARS-RCRS-CTL-09 | RCRSは自動の制御器を必要とし手動で運転する手段がないため、両制御器（A・B）が故障すると運転できない。自動停止の論理は、ベッド圧力・ベッド差圧・圧縮機回転数・弁位置の表示が許容できなければRCRSを停止する（A17-106A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| F-ARS-RCRS-CTL-10 | 故障処置手順6.8aは、MO51Fの表示灯とSPEC 66の表示から、MN A（C）電源の喪失、AC1（3）φA電源の喪失、制御器の故障停止、共通BITE、制御器の全電源喪失などの故障モードを判別する（MAL 6.8a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330） |
| F-ARS-RCRS-CTL-11 | 故障処置手順6.8aの注記は、系統が11分ごとに2分6秒間ベッドを隔離することと、系統の1周期に26分かかることを示す（MAL 6.8a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=332） |
| F-ARS-RCRS-CTL-12 | Orbit Opsチェックリストの表示灯試験では、MO51FのRCRS CNTLR 1・2の灯（各2個）が点灯することを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=177） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCRS-05 | 吸着・再生ベッド（A・B） | データ・指令 | 送信 | 作動中の制御器が真空サイクル弁のアクチュエータA・Bを回し、ベッドの空気ポペットと真空ポペットを開閉して吸着と再生を切り替える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219）作動中の制御器の制御論理が、各構成品と計装に出力信号と電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） | — |
| IF-RCRS-06 | 空気回収・均圧 | データ・指令 | 送信 | 2台の制御器が6個の均圧弁それぞれの2つのコイルを1つずつ受け持ち、作動中の制御器が工程に応じて均圧弁を開閉し、ullage-save圧縮機を動かす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217）圧縮機は起動30秒後にベッド圧が開始時の2/3未満に下がったかを確かめ、下がらなければ制御器を入れ直すか他方を選ぶまで止められる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） | — |
| IF-RCRS-09 | 計装・表示 | データ・指令 | 受信 | ベッド圧力・ベッド差圧などの計測値を作動中の制御器へ入力し、故障検知に使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）自動停止の論理は、ベッド圧力・ベッド差圧・圧縮機回転数・弁位置の表示が許容できないとRCRSを停止する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） | — |
| IF-RCRS-11 | DPS・アビオニクス | データ・指令 | 送信 | 制御器の状態をSPEC 66のCO2 CNTLR 1・2に示し、故障で停止すると故障ディスクリートのテレメトリを6秒間「1」にする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228）SMメッセージ「S66 CO2 RL SYS」は、制御器が故障したか、故障検知の論理がベッドの圧力異常を検知したときに出る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） | 上位: IF-ARS-26 |
| IF-RCRS-12 | 電力系（EPS） | 電力（28 VDC） | 受信 | 制御器1にはAC1とMN A、制御器2にはAC3とMN Cの電力を、パネルMO51Fの交流遮断器・電源スイッチとパネルML86B:Eの直流遮断器を通して供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225）SCOMは、制御器1・2のAC・DC電源をパネルMO51Fで操作するとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 上位: IF-ARS-33 |
| IF-RCRS-14 | RCRS運用管理 | データ・指令 | 受信 | 運用規則と故障処置手順に従い、パネルMO51Fのモードスイッチ（OPER/STBY）と電源スイッチで制御器を起動・停止し、故障時は他方の制御器に切り替える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224）一方の制御器だけの故障では、他方の制御器（SYS 2(1)）で運転を続ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.2〜C.3・C.5（PDF p218〜228）：冗長の制御器2台（制御器1が優先）、26分周期の運転シーケンス（当初は30分周期）、MO51Fの操作とAC1・MN A／AC3・MN Cの電源、故障検知による自動停止を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p371）：冗長の制御器2台（1・2）をパネルMO51FのAC・DC電源とOPER/STBYのスイッチで操作し、状態灯がOPERまたはFAILを示すと述べ、吸着と再生が13分ごとに自動で切り替わる（1周期26分）とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-106（PDF p1937）：両制御器（A・B）が故障すると手動で運転する手段はなく、ベッド圧力・ベッド差圧・圧縮機回転数・弁位置の異常で自動停止すると説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a CO2 CNTLR 1(2)（PDF p330〜332）：S66 CO2 RL SYS MALF警報時に、MO51Fの表示灯とSPEC 66から故障モード（電源の喪失・故障停止・共通BITEなど）を判定し、制御器の電源を入れ直す手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330） |
| RC-06 | SAE 901292 | The EDO Regenerable CO2 Removal System | ベッドを30分周期で切り替えるとする（抄録で確認）。（出典: https://saemobilus.sae.org/content/901292） |
| RC-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 6-2〜6-3 Lamp Test（PDF p177）：ミッドデッキの表示灯試験で、MO51FのRCRS CNTLR 1・2の灯（各2個）が点灯することを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=177） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：運転周期を、SAE 901292の抄録（関連文書）と上位のSSD-FD-ECL-ARS-001のF-ECL-ARS-09は30分とし、SCOM（PDF p371）は13分ごとの切替（1周期26分）とする。訓練マニュアル付録C.2.3は当初30分周期で設計し、吸着性能を上げるために短縮したと説明しており、30分は当初の設計値と考えられる。本書は26分周期（半周期13分）を用いた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）

> **注記** 検証メモ：制御器の呼称を、訓練マニュアル・SCOM・故障処置手順は1・2とし、運用飛行規則A17-106はAとBとする（親文書の注記と同じ）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937）

> **注記** 検証メモ：故障処置手順6.8aの「11分ごとに2分6秒ベッドを隔離する」という注記は、訓練マニュアルの吸着の工程10分54秒と半周期13分の差（2分6秒）に当たり、両資料は整合する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=332）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3 Operations（図C-5・Startup）（PDF p219） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=219
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.3（ステート12）・C.3 Controls（PDF p224） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=224
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.3 Controls（図C-14 Panel MO51F）（PDF p225） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.4（表C-2 SPEC 66）・C.5 Fault Detection（PDF p228） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-106 Regenerative CO2 Removal System (RCRS) Loss Definition（PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a CO2 CNTLR 1(2)（PDF p330） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=330
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a（続き）（PDF p332） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=332
10. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 6-3 Lamp Test（Middeck）（PDF p177） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=177
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2 RCRS Hardware（続き）（PDF p217） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.5 Fault Detection・C.6 Fault Messages（PDF p229） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229
13. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a（続き）（PDF p331） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=331

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
