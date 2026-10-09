# 温湿度運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-THC-OPS-001 |
| 表題 | 温湿度運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-THC-001 |
| 関連図 | SSD-SYS-ARC-001 図30 キャビン温湿度制御 機能構成 |

## 1. 目的

キャビン大気制御の喪失判定、乗員室温度の上限、上昇・軌道上・再突入の温度管理とバイパス弁の全COOL、汚染時の全COOL運転、湿度分離器の点検など、運用飛行規則と手順によるキャビン温湿度制御の運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-THC-OPS-01 | キャビン大気制御の喪失判定（A17-102）で、湿度制御の状態は湿度の値ではなく廃水タンクの増加率（通常6±1 lb/day/人）で判断する。STS-5で分離器Bの入口が詰まったときも湿度は変わらず、増加率の低下で検知された。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| F-ARS-THC-OPS-02 | A17-102Aの根拠では、95°Fを超えるとフライトデッキのアビオニクスが過熱し、水ループのポンプ出口温度はキャビン温度より8〜10°F低いため、キャビン温度39°Fではポンプ出口の水が凍結点を下回る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| F-ARS-THC-OPS-03 | 再突入・着陸の乗員室温度の上限は75°Fで、就寝中が寒すぎる場合はCDRと医師の合意で上げられる。個人冷却装置（ICU）が周囲温度75°Fで340 BTU/hrを除くよう設計されていることが根拠である（A13-31C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1768） |
| F-ARS-THC-OPS-04 | 上昇と再突入では、キャビンの熱負荷が大きいため、バイパス弁を自動でFULL COOLへ駆動する（A17-151A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| F-ARS-THC-OPS-05 | 上昇前は、コントローラ1に給電してロータリスイッチをCOOLにし弁をFULL COOLにしてからコントローラ1を断電し、軌道上でコントローラ1を再び入れる（訓練マニュアル3.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| F-ARS-THC-OPS-06 | 上昇中は、主エンジンを失いうる交流母線間の短絡を防ぐため、HUM SEPとIMU FANの信号調整器を断電しておく（STS-6でこれらの信号調整器への電線束が短絡した）（訓練マニュアル3.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| F-ARS-THC-OPS-07 | 軌道上では、乗員は快適さのためにコントローラを任意の位置にしてよいが、ISS係留中にISSの露点を保つためにキャビン温度を下げる必要がある場合はそれを優先する（A17-152B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1940） |
| F-ARS-THC-OPS-08 | キャビンが寒すぎる場合は、熱交換器バイパス弁の手動ピン止め、照明の点灯、空冷機器の電源投入、両水ループの最大インターチェンジャ流量、FESの停止、ラジエータ出口温度HIの順に行う（A17-152B2）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1941） |
| F-ARS-THC-OPS-09 | 上限温度の超過が予測される日は、就寝後にバイパス弁を自動でFULL COOLへ駆動してキャビンを冷やしておく（cabin coldsoak）（A17-152B3）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1942） |
| F-ARS-THC-OPS-10 | 再突入前日（EOM-1）の就寝前に、再突入日の起床時に70°Fとなる位置へコントローラを自動で駆動し、再突入日の起床後にバイパス弁をFULL COOLにする（A17-152C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1945） |
| F-ARS-THC-OPS-11 | EVA後の除染（A15-203）では、ヒドラジン類が水に溶けるため、IV乗員が温度コントローラを全COOLにして凝縮熱交換器の空気流を最大にし、汚染物質を凝縮させて廃水系へ送る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874） |
| F-ARS-THC-OPS-12 | 軌道上の最初の数日は、運転中の湿度分離器に水が溜まっていないかを約12時間ごとに点検する（SCOM 5.3節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-THC-13 | 温度・分離器監視 | データ・指令 | 受信 | 熱交換器出口温度・キャビン温度・分離器の運転状態の表示と警報を、キャビン大気制御の喪失判定（A17-102）と故障処置に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） | — |
| IF-THC-14 | 温度制御弁・給気混合 | データ・指令 | 送信 | パネルL1のCABIN TEMP CNTLRスイッチで有効なコントローラを選び、CABIN TEMPロータリスイッチで温度を選ぶ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）コントローラで弁を制御できない場合は、MD44Fで弁アームを4つの固定穴の一つにピン止めする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | — |
| IF-THC-15 | 湿度分離器・凝縮水排出 | データ・指令 | 送信 | パネルL1のHUMIDITY SEP A・Bスイッチ（ON–OFF）で、湿度分離器の電源を個別に入切りする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.6節（PDF p85）：上昇前にコントローラ1で弁をFULL COOLにしてから断電し、HUM SEP信号調整器を断電しておき、軌道上でコントローラ1を入れると示す。表3-6（p90〜92）に操作スイッチと遮断器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 5.3節・5.4節（PDF p833・p842）：軌道上の最初の数日は運転中の湿度分離器を約12時間ごとに水の溜まりを点検し、再突入準備でHUM SEPとIMU FANの信号調整器の遮断器を開くと示す。2.9節（p404）は上昇時の構成を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-102（PDF p1930）でキャビン大気制御の喪失を、A13-31（p1767〜1768）で乗員室温度の上限（打上げ前・軌道上80°F、再突入・着陸75°F）を、A17-152（p1940〜1946）で軌道上・再突入の温度管理を定め、A13-155・A15-203（p1807・p1874）で汚染時の全COOL運転を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| TH-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS SSR-6 CABIN EQUIP PWRDN（PDF p342）：キャビン冷却のための電源切断で、CAB TEMPをCOOL（必要に応じてWARM）にし、窓の日よけを付けると示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=342） |
| TH-23 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-11 CABIN TEMP CONTROL（PDF p121）：キャビン温度を変える乗員の操作（MD44Fでの弁のピン止め、水ループのインターチェンジャ流量、FESの停止など）と見込みの温度変化を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=121） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 打上げ前と軌道上の乗員室温度は、運用の解析と計画で80°F以下に保つ（A13-31A・B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1767）

> **注記** キャビン冷却のための機器の電源切断（MAL ECLS SSR-6）は、CAB TEMPをCOOL（必要に応じてWARM）にし、照明を減らして窓の日よけを付ける手順で、Orbit Opsチェックリストのキャビン温度制御の表（5-11）から実施する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=342）

> **注記** 上昇中の交流負荷管理（A9-154）では、湿度分離器の再構成はMECO後まで不要とされる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1468）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-102 Cabin Atmospheric Control（PDF p1930） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-31 Crew Cabin Temperature Limits（続き）（PDF p1768） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1768
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-151 Cabin Atmosphere Control（PDF p1938） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.6節 ARS Nominal Operation（PDF p85） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=85
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-152 Cabin Temperature Control and Management（PDF p1940） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1940
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-152 Cabin Temperature Control and Management（続き）（PDF p1941） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1941
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-152 Cabin Temperature Control and Management（B.3）（PDF p1942） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1942
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-152 Cabin Temperature Control and Management（C項）（PDF p1945） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1945
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-203 Cabin Atmosphere Decontamination Following EVA（PDF p1874） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1874
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 5.3節 Orbit（PDF p833） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/833
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Temperature Monitoring〜Cabin Air Humidity Control（PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-31 Crew Cabin Temperature Limits（PDF p1767） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1767
14. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-6 CABIN EQUIP PWRDN（PDF p342） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=342
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1468） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1468

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
