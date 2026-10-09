# ECLSS 下位要求書（L3：ARS・PCS・給水廃水・WCS・FDS・ALS・ATCS）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-RQL-ECL-001 |
| 表題 | ECLSS 下位要求書（L3：ARS・PCS・給水廃水・WCS・FDS・ALS・ATCS） |
| 版・日付 | 初版（Rev. -）／2026-10-08 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-ECLSS-001 |
| 関連図 | SSD-SYS-ARC-001 図166 ECLSS 要求の導出（L2 → L3）・図167 ECLSS 下位の機能行の網羅（要求の割付・判断） |

## 1. 目的

ECLSS の第2段のブロック（ARS・PCS・給水・廃水系・WCS・FDS・ALS・ATCS）に対する L3 の要求を示し、L2 の要求（SSD-REQ-ECLSS-001）からの展開と、第3段・第4段の機能説明書 78件の機能行 866行へのトレースを示す。SSD-REQ-ECLSS-001 のトレースは第2段の機能説明書までで、その下の機能行は「今後の課題」としていた。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L2 要求（SSD-REQ-ECLSS-001 の REQ-ECLSS-nn）、割付先（第3段・第4段の機能行 F-ID）、フェーズ（SSD-OPS-PHASE-001 の PH の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値・構成から導いた「実績の運用値から導いた要求」である。要求の ID は第2段のブロックの略号で付けた（給水・廃水系は REQ-WTR）。

## 3. 上位の要求

本書の要求の上位の L2 要求と、そこから導いた L3 の要求を示す。

| L2 | 要求 | L3 の数 | L3 の要求 |
|---|---|---|---|
| REQ-ECLSS-01 | 乗員室を 14.7±0.2 psia・窒素約80%・酸素約20% に保ち、酸素分圧を 2.95〜3.45 psi に自動で保つこと。 | 7 | REQ-PCS-01・REQ-PCS-02・REQ-PCS-03・REQ-PCS-06・REQ-PCS-07・REQ-PCS-10・REQ-PCS-11 |
| REQ-ECLSS-02 | 正・負の圧力逃し弁で乗員室構造を過大圧・過小圧から守り、急減圧（dP/dT −0.08 psi/min 以上）でクラクソンと MASTER ALARM を出すこと。 | 4 | REQ-PCS-08・REQ-PCS-09・REQ-PCS-10・REQ-PCS-12 |
| REQ-ECLSS-03 | 非常時の 8 psia モードで酸素分圧と全圧を保ち、打上げ・帰還用スーツと非常用呼吸マスクへ呼吸用の酸素を供給できること。 | 5 | REQ-PCS-01・REQ-PCS-04・REQ-PCS-05・REQ-PCS-07・REQ-PCS-12 |
| REQ-ECLSS-04 | EVA の前に乗員室を 10.2 psia まで下げ、エアロックを減圧・再与圧して、乗員室を減圧せずに EMU の乗員を出入りさせること。 | 10 | REQ-PCS-11・REQ-ALS-01・REQ-ALS-02・REQ-ALS-03・REQ-ALS-05・REQ-ALS-06・REQ-ALS-07・REQ-ALS-08・REQ-ALS-09・REQ-ALS-10 |
| REQ-ECLSS-05 | ARS は乗員室の空気を循環させて、温度・湿度・二酸化炭素・一酸化炭素を制御し、乗員室のアビオニクスを冷やすこと。 | 20 | REQ-ARS-01・REQ-ARS-02・REQ-ARS-03・REQ-ARS-04・REQ-ARS-05・REQ-ARS-07・REQ-ARS-13・REQ-ARS-20・REQ-ARS-21・REQ-ARS-22・REQ-ARS-23・REQ-ARS-24・REQ-ARS-25・REQ-ARS-26・REQ-ARS-27・REQ-ARS-28・REQ-ARS-29・REQ-ARS-30・REQ-ARS-31・REQ-ALS-11 |
| REQ-ECLSS-06 | LiOH キャニスタ（長期滞在では再生式 CO2 除去装置）で二酸化炭素を除き、活性炭で臭気と微量の汚染物質を除くこと。 | 12 | REQ-ARS-06・REQ-ARS-08・REQ-ARS-09・REQ-ARS-10・REQ-ARS-11・REQ-ARS-12・REQ-ARS-14・REQ-ARS-15・REQ-ARS-16・REQ-ARS-17・REQ-ARS-18・REQ-ARS-19 |
| REQ-ECLSS-07 | 独立した2系統の水冷却ループで乗員室の熱を集めてフレオンループへ移し、ループ1はポンプを2台持つこと。 | 8 | REQ-ARS-32・REQ-ARS-33・REQ-ARS-34・REQ-ARS-35・REQ-ARS-36・REQ-ARS-37・REQ-ARS-38・REQ-ARS-39 |
| REQ-ECLSS-08 | ATCS は同じ構成の2系統のフレオンループと、放熱器・FES・アンモニアボイラの3種のヒートシンクで、SRB 分離後の全段階の機体の熱を排出すること。 | 6 | REQ-ATCS-01・REQ-ATCS-02・REQ-ATCS-04・REQ-ATCS-05・REQ-ATCS-06・REQ-ATCS-07 |
| REQ-ECLSS-09 | 水ループ2系統またはフレオンループ2系統の喪失では、上昇中はアボート、軌道上は早期の軌道離脱を判断すること。 | 2 | REQ-ARS-38・REQ-ATCS-03 |
| REQ-ECLSS-10 | 4基の給水タンクに燃料電池の生成水を貯めて FES・飲用・衛生に供給し、廃水タンクに湿度分離器と乗員の廃水を貯めて船外へダンプできること。 | 15 | REQ-WTR-01・REQ-WTR-02・REQ-WTR-03・REQ-WTR-04・REQ-WTR-05・REQ-WTR-06・REQ-WTR-07・REQ-WTR-08・REQ-WTR-09・REQ-WTR-10・REQ-WTR-11・REQ-WTR-12・REQ-ALS-04・REQ-ALS-05・REQ-ALS-10 |
| REQ-ECLSS-11 | イオン化式の煙検知器で煙濃度 2,000±200 µg/m3 または濃度の急な上昇を検知して警報を出し、アビオニクスベイの固定消火ボトルと携帯消火器で消火できること。 | 8 | REQ-ARS-28・REQ-FDS-01・REQ-FDS-02・REQ-FDS-03・REQ-FDS-04・REQ-FDS-05・REQ-FDS-06・REQ-FDS-07 |
| REQ-ECLSS-12 | 火災・消火や生命維持の機器の喪失に対し、生命維持の Go/No-Go 基準（A17-1001）でアボート・MDF・次の PLS を判断すること。 | 5 | REQ-ARS-27・REQ-WCS-09・REQ-FDS-05・REQ-FDS-08・REQ-FDS-09 |
| REQ-ECLSS-13 | WCS で無重量環境の乗員の生物系廃棄物を収集・処理し、尿と凝縮水は廃水タンクへ送り、空気は臭気・細菌フィルタを通して乗員室へ戻すこと。 | 8 | REQ-WCS-01・REQ-WCS-02・REQ-WCS-03・REQ-WCS-04・REQ-WCS-05・REQ-WCS-06・REQ-WCS-07・REQ-WCS-08 |

## 4. 大気再生系（ARS）の要求

大気再生系（ARS）（SSD-FD-ECL-ARS-001 の下位）の L3 の要求 39件を示す。

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-ARS-01 | 2台のキャビンファン（通常は1台を運転し、各出口に逆止弁を置く）で乗員室の空気を公称 1,400 lb/hr で循環させ、乗員室容積 2,300 ft3 を約7分で1回入れ替えること。 | 1,400 lb/hr（ファン1台）、330 ft3/min、逆止弁の開弁差圧 2 in H2O | 各キャビンファンは三相 115 V AC・495 W の電動機で駆動され、キャビン空気ダクトに公称 1,400 lb/hr を流し、通常は1台だけを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）各ファン出口の逆止弁は運転していないファンを通る逆流を防ぎ、2 in H2O（0.0723 psi）の差圧で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）乗員室容積 2,300 ft3 と毎分 330 ft3 の空気から、約7分で乗員室の空気が1回入れ替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | REQ-ECLSS-05 | F-ARS-CAC-01・F-ARS-CAC-02・F-ARS-CAC-03・F-ARS-CAC-04・F-CAC-FAN-01・F-CAC-FAN-02・F-CAC-FAN-03・F-CAC-FAN-04・F-CAC-FAN-05・F-CAC-FAN-06・F-CAC-DCT-03・F-CAC-DCT-04 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-02 | キャビンファンは運転中に交流の1相を失っても2相で運転を続けられ、1相を失ったファンは止めずに運転を続けること。 | — | 運転中のキャビンファンは交流の1相を失っても2相で運転を続けるが、2相では起動できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）1相を失ったキャビンファンは止めると再起動できないおそれがあるため、2相のまま運転を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） | REQ-ECLSS-05 | F-ARS-CAC-05・F-ARS-CAC-10・F-CAC-FAN-07・F-CAC-FAN-08・F-CAC-FAN-09・F-CAC-OPS-06・F-CAC-OPS-07・F-CAC-OPS-08・F-CAC-OPS-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-03 | 還流空気を 300 ミクロンのフィルタでろ過してからキャビンファンへ吸い込み、その経路で乗員室の電子機器を強制空冷すること。 | 300 ミクロン | 暖まったキャビン空気は 300 ミクロンのフィルタを通って2台のキャビンファンの1台に吸い込まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）キャビンファンは電子機器のそばを通して空気を吸い込み、それらの機器を強制空冷する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） | REQ-ECLSS-05 | F-ARS-CAC-11・F-CAC-RTN-01・F-CAC-RTN-02・F-CAC-RTN-03・F-CAC-RTN-04・F-CAC-RTN-05・F-CAC-RTN-06・F-CAC-RTN-07・F-CAC-RTN-08 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-ARS-04 | キャビンファンの差圧を計測して表示し、4.2 in H2O 未満または 6.8 in H2O 超で AV BAY/CABIN AIR 警報灯を点灯させること。 | 4.2〜6.8 in H2O | キャビンファン差圧が 4.2 in H2O 未満または 6.8 in H2O 超で、パネル F7 の黄色の AV BAY/CABIN AIR 警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375）CABIN AIR 信号調整器がキャビンファン差圧と CO2 分圧のトランスデューサに給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | REQ-ECLSS-05 | F-ARS-CAC-06・F-CAC-MON-01・F-CAC-MON-02・F-CAC-MON-03・F-CAC-MON-04・F-CAC-MON-05・F-CAC-MON-06・F-CAC-MON-07・F-CAC-MON-08・F-CAC-MON-11・F-CAC-MON-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-05 | キャビンファンの喪失を差圧 4.20 in H2O 未満または 6.80 in H2O 超と乗員による気流の喪失の確認で判定し、MECO 前を除いて予備のファンへ切り替え、冷却に要る最低流量 1,400 lb/hr を保ち、軌道上のファンの停止を MDU 搭載で 30 分（旧 DDU 搭載で 20 分）以内とすること。 | 最低 1,400 lb/hr、停止 30 分（旧 DDU 20 分）以内 | 差圧が 4.20 in H2O 未満または 6.80 in H2O 超で、乗員が気流の喪失を確かめたときにキャビンファンを喪失とし、適切な冷却に要る最低流量は 1,400 lb/hr である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929）第1段の交流負荷が大きく、起動電流による電圧過渡が主エンジン制御器に影響しうるため、MECO 前はキャビンファンを切り替えない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939）キャビンファンを止めてよい最大時間は、旧 DDU を搭載する場合 20 分、MDU の場合 30 分である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） | REQ-ECLSS-05 | F-ARS-CAC-07・F-ARS-CAC-08・F-ARS-CAC-09・F-CAC-OPS-01・F-CAC-OPS-02・F-CAC-OPS-03・F-CAC-OPS-04・F-CAC-OPS-05・F-CAC-OPS-10・F-CAC-OPS-12・F-CAC-MON-09・F-CAC-MON-10・F-CAC-DCT-11 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-06 | 乗員室の火災ではキャビンファンを止め、鎮火後は WCS の活性炭フィルタ・ATCO・LiOH キャニスタで乗員室の大気から燃焼生成物を除くこと。 | — | 乗員室で火災を検知したら、キャビンファンを止める。ファンの気流は火に酸化剤を送る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923）鎮火後は WCS の活性炭フィルタ、ATCO、LiOH キャニスタで乗員室の大気から燃焼生成物を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） | REQ-ECLSS-06 | F-CAC-OPS-11・F-CAC-RTN-12・F-ARS-CO2-06・F-CO2-ATCO-08・F-CO2-CAN-09・F-CO2-CAN-11・F-CO2-CAN-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-07 | エアロックへはミッドデッキ床の継手からダクトとブースタファン（2台、1台ずつ使用）で調整空気を送り、湿度を制御して CO2・O2・N2 のよどみを防ぐこと。 | 541〜767 lb/hr（ブースタファン1台） | エアロックにはキャビンファンの空気の吹出口が無いため、乗員がダクトを張って調整空気を送り、湿度を制御して CO2・O2・N2 のよどみを防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178）2台のブースタファンは1台ずつ使い、180 W の電動機で 541〜767 lb/hr を流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） | REQ-ECLSS-05 | F-CAC-DCT-06・F-CAC-DCT-07・F-CAC-DCT-08・F-CAC-DCT-09 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-ARS-08 | キャビンファン出口のダクトのオリフィスで、約 120 lb/hr ずつを2個の LiOH キャニスタへ分流すること。 | 約 120 lb/hr × 2 | キャビンファンを出た約 1,400 lb/hr の空気のうち、ダクト内のオリフィスで約 120 lb/hr ずつが2個の LiOH キャニスタへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）流量オリフィスが、2個の LiOH キャニスタのそれぞれに約 120 lb/hr の空気を流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） | REQ-ECLSS-06 | F-ARS-CO2-01・F-CAC-DCT-01・F-CAC-DCT-02・F-CO2-ABS-01・F-CO2-ABS-02・F-CO2-ABS-03・F-CO2-ABS-04・F-CO2-ABS-05・F-CO2-ABS-06 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-09 | LiOH キャニスタは LiOH で二酸化炭素を、活性炭で臭気と微量の汚染物質を除き、1個あたり 48 man-hours の能力を持つこと。 | 48 man-hours／個 | LiOH キャニスタで二酸化炭素が除かれ、活性炭が臭気と微量の汚染物質を除く。各キャニスタの定格は 48 man-hours である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）CO2 は LiOH と反応して炭酸リチウムになることで空気から除かれる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） | REQ-ECLSS-06 | F-CO2-CAN-01・F-CO2-CAN-02・F-CO2-CAN-03・F-CO2-CAN-04・F-CO2-CAN-05・F-CO2-CAN-06・F-CO2-CAN-07・F-CO2-CAN-08・F-CO2-CAN-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-10 | 乗員室の PPCO2 を長期では 7.6 mmHg 未満に保つよう LiOH キャニスタを就寝前と起床後、または PPCO2 が 7.6 mmHg 以上と確かめたときに交換し、15 mmHg 未満を保てなければ QDM を着けて次の PLS で飛行を終えること。 | 7.6 mmHg（長期）、15 mmHg（最大2時間） | CO2 分圧の上限は長期で 7.6 mmHg、最大2時間で 15 mmHg である。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215）LiOH キャニスタは通常、就寝前と起床後、または PPCO2 が 7.6 mmHg 以上と確かめたときに交換する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938）ARS が PPCO2 を 15 mmHg 未満に保てない場合は乗員が QDM を着用し、次の PLS で飛行を終える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775） | REQ-ECLSS-06 | F-ARS-CO2-02・F-ARS-CO2-04・F-ARS-CO2-07・F-ARS-CO2-09・F-ARS-CO2-10・F-CO2-MON-05・F-CO2-STW-03・F-CO2-STW-04・F-CO2-STW-05・F-CO2-STW-06・F-CO2-STW-07・F-CO2-STW-08・F-CO2-STW-10 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-11 | キャビン空気の PPCO2 を LiOH キャニスタへの分岐の手前で計測し、SM の SPEC 66 ENVIRONMENT に表示すること。 | — | CABIN AIR 信号調整器が CO2 分圧のトランスデューサに給電し、軌道上は PASS SM SPEC 66 で ARS のデータを見る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | REQ-ECLSS-06 | F-ARS-CO2-11・F-CO2-MON-01・F-CO2-MON-02・F-CO2-MON-03・F-CO2-MON-04・F-CO2-MON-07・F-CO2-MON-08・F-CO2-MON-09・F-CO2-MON-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-12 | 予備の LiOH キャニスタを最大 30 個ミッドデッキ床下に収め、未使用のキャニスタを飛行の終わりまで常に2日分以上予備として持つこと。 | 最大 30 個、未使用 2日分以上（目安は乗員数と同数） | 最大 30 個の予備のキャニスタが、ミッドデッキ床下のキャビン熱交換器と水タンクの間のロッカーに収められる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）未使用の LiOH キャニスタを最低2日分予備に持ち、7.6 mmHg で2日分に要する個数は目安として乗員数に等しい。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） | REQ-ECLSS-06 | F-ARS-CO2-03・F-ARS-CO2-08・F-CO2-STW-01・F-CO2-STW-02・F-CO2-STW-09・F-CO2-STW-11・F-CO2-STW-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-13 | キャビン熱交換器を出た空気の一部を ATCO（白金 2%・炭素担体の触媒）に通し、乗員と非金属材料のガス放出による一酸化炭素を二酸化炭素に変えること。 | 触媒 白金 2%・炭素担体 | キャビン熱交換器を出た空気の一部が一酸化炭素除去装置 ATCO へ送られ、一酸化炭素が二酸化炭素に変えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ATCO は乗員と非金属材料のガス放出による CO を除き、触媒は白金 2%・炭素担体である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） | REQ-ECLSS-05 | F-ARS-CO2-05・F-CO2-ATCO-01・F-CO2-ATCO-02・F-CO2-ATCO-03・F-CO2-ATCO-04・F-CO2-ATCO-05・F-CO2-ATCO-06・F-CO2-ATCO-07・F-CO2-ATCO-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-14 | 長期滞在の飛行では、RCRS の2個の固体アミン樹脂ベッドの一方で CO2 を吸着し、他方を加熱と真空排気で再生して、13分ごとに自動で切り替えること。 | 13分ごとに切替（1周期 26分） | CO2 は2個の同じ固体アミン樹脂ベッドの一方に空気を通して除き、他方のベッドは加熱と真空排気で再生する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）吸着と再生は 13 分ごとに自動で切り替わり、13 分の工程2回で1周期となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）始動期間の後、運転シーケンスは 26 分ごとに繰り返す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） | REQ-ECLSS-06 | F-ARS-RCRS-01・F-ARS-RCRS-02・F-ARS-RCRS-03・F-ARS-RCRS-05・F-ARS-RCRS-BED-01・F-ARS-RCRS-BED-02・F-ARS-RCRS-BED-03・F-ARS-RCRS-BED-04・F-ARS-RCRS-BED-05・F-ARS-RCRS-BED-06・F-ARS-RCRS-BED-07・F-ARS-RCRS-BED-08・F-ARS-RCRS-BED-09・F-ARS-RCRS-CTL-03・F-ARS-RCRS-CTL-04・F-ARS-RCRS-CTL-05・F-ARS-RCRS-CTL-11 | PH-3（軌道） | D（実証） |
| REQ-ARS-15 | RCRS の流量制御弁を打上げ前に乗員数に合わせて設定し、ARS のキャビンファンの上流から取り出した空気を 72 lb/hr（乗員4名）または 110 lb/hr（5〜7名）で RCRS に流すこと。 | 72 lb/hr・110 lb/hr（ARS の全流量の約6%） | 流量制御弁は打上げ前に乗員数「4」または「5〜7」に設定し、RCRS を通る流量をそれぞれ 72 lb/hr または 110 lb/hr とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）ARS の全流量の約6%が RCRS を流れる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） | REQ-ECLSS-06 | F-ARS-RCRS-06・F-ARS-RCRS-FAN-01・F-ARS-RCRS-FAN-02・F-ARS-RCRS-FAN-03・F-ARS-RCRS-FAN-04・F-ARS-RCRS-FAN-05・F-ARS-RCRS-FAN-06・F-ARS-RCRS-FAN-07・F-ARS-RCRS-FAN-08・F-CAC-RTN-10 | PH-1（打上げ前）・PH-3（軌道） | I（検査） |
| REQ-ARS-16 | RCRS は冗長の制御器2台の一方で自動運転し、故障を検知したら RCRS を止めて MO51F の該当する制御器の故障灯を点灯させること。 | 制御器 2台（作動は1台） | RCRS は冗長の制御器2台（1・2）を持ち、パネル MO51F の状態灯が OPER または FAIL を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）作動する制御器は一度に1台である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）故障検知の論理は各パラメータ・圧縮機回転数・弁位置を監視し、故障を検知すると RCRS を止めて故障灯を点灯させる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228） | REQ-ECLSS-06 | F-ARS-RCRS-07・F-ARS-RCRS-CTL-01・F-ARS-RCRS-CTL-02・F-ARS-RCRS-CTL-06・F-ARS-RCRS-CTL-07・F-ARS-RCRS-CTL-08・F-ARS-RCRS-CTL-09・F-ARS-RCRS-CTL-10・F-ARS-RCRS-CTL-12 | PH-3（軌道） | T（試験） |
| REQ-ARS-17 | RCRS のベッド圧力・ベッド差圧と、共通計装の CO2 分圧・真空圧力・フィルタ差圧・入口温度を計測し、SPEC 66 に表示すること。 | — | 制御器1・2はそれぞれのベッド圧力センサとベッド差圧センサに給電し、共通計装は CO2 分圧・真空圧力・フィルタ差圧・入口温度のセンサから成る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227）乗員は SPEC 66 ENVIRONMENT で RCRS の運転を確かめる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） | REQ-ECLSS-06 | F-ARS-RCRS-MON-01・F-ARS-RCRS-MON-02・F-ARS-RCRS-MON-03・F-ARS-RCRS-MON-04・F-ARS-RCRS-MON-05・F-ARS-RCRS-MON-06・F-ARS-RCRS-MON-07・F-ARS-RCRS-MON-08・F-ARS-RCRS-MON-09 | PH-3（軌道） | T（試験） |
| REQ-ARS-18 | RCRS は真空源の無い上昇・再突入では止めて LiOH キャニスタで PPCO2 を管理し、軌道上は OMS-2 後なるべく早く起動して軌道離脱噴射前なるべく遅く止め、PPCO2 を 7.6 mmHg 未満に保てないか PPCO2 を把握できなくなったときは喪失として LiOH キャニスタを装着すること。 | PPCO2 7.6 mmHg | RCRS は真空源が無い上昇・再突入では止め、その間は LiOH キャニスタが PPCO2 を管理する。軌道上は OMS-2 後なるべく早く起動し、軌道離脱噴射前なるべく遅く止める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950）PPCO2 を 7.6 mmHg 未満に保てない場合と PPCO2 を把握できなくなった場合に RCRS を喪失とし、両方の制御器が故障すると RCRS は運転できない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） | REQ-ECLSS-06 | F-ARS-RCRS-04・F-ARS-RCRS-08・F-ARS-RCRS-09・F-ARS-RCRS-10・F-ARS-RCRS-OPS-01・F-ARS-RCRS-OPS-02・F-ARS-RCRS-OPS-03・F-ARS-RCRS-OPS-04・F-ARS-RCRS-OPS-05・F-ARS-RCRS-OPS-06・F-ARS-RCRS-OPS-07・F-ARS-RCRS-OPS-08・F-ARS-RCRS-OPS-09・F-ARS-RCRS-OPS-10・F-ARS-RCRS-OPS-11・F-ARS-RCRS-OPS-12・F-ARS-RCRS-BED-10・F-ARS-RCRS-BED-11・F-ARS-RCRS-MON-10・F-ARS-RCRS-FAN-09・F-CO2-MON-06・F-CO2-ABS-07 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-19 | 再生に入るベッドの空気を ullage-save 圧縮機と均圧弁で最大 90% 回収し、真空へ失うキャビン空気を約 1.6 lb/日に抑えること。 | 回収 最大 90%、損失 約 1.6 lb/日 | ステート4・5で再生するベッドの空気の最大 90% を回収し、再生の工程で真空へ失う空気を約 1.6 lb/日に抑える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221） | REQ-ECLSS-06 | F-ARS-RCRS-11・F-ARS-RCRS-USC-01・F-ARS-RCRS-USC-02・F-ARS-RCRS-USC-03・F-ARS-RCRS-USC-04・F-ARS-RCRS-USC-05・F-ARS-RCRS-USC-06・F-ARS-RCRS-USC-07・F-ARS-RCRS-USC-08・F-ARS-RCRS-USC-09・F-ARS-RCRS-USC-10・F-ARS-RCRS-USC-11 | PH-3（軌道） | A（解析） |
| REQ-ARS-20 | キャビン温度制御弁でキャビン熱交換器を迂回する空気を 0〜70% の範囲で配分し、2台のキャビン温度コントローラの一方で乗員の選んだ温度（約 65〜80°F）に自動で制御し、コントローラが使えないときは弁アームを4つの固定穴の一つに手動でピン止めできること。 | 迂回 0〜70%、全COOL 約65°F・全WARM 約80°F、固定穴 4 | 有効なコントローラは CABIN TEMP スイッチの位置に応じて空気流の 0〜70% を熱交換器の外へ迂回させ、全COOL は約 65°F、全WARM は約 80°F に当たる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374）コントローラで弁を制御できないときは、乗員がパネル MD44F で弁アームを4つの固定穴の一つにピン止めし、FULL COOL では熱交換器への空気流量が最大になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | REQ-ECLSS-05 | F-ARS-THC-01・F-ARS-THC-02・F-ARS-THC-03・F-ARS-THC-06・F-ARS-THC-TCV-01・F-ARS-THC-TCV-02・F-ARS-THC-TCV-03・F-ARS-THC-TCV-04・F-ARS-THC-TCV-05・F-ARS-THC-TCV-06・F-ARS-THC-TCV-07・F-ARS-THC-TCV-08・F-ARS-THC-TCV-09・F-ARS-THC-TCV-10・F-ARS-THC-TCV-11 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-21 | キャビン熱交換器で凝縮した水分を2台の湿度分離器の一方（通常は1台を運転）で空気から分離し、水を廃水タンクへ、空気を乗員室へ戻して、乗員室の相対湿度を通常 30〜65% に保つこと。 | 除水 公称 約1 lb/hr・最大 約4 lb/hr、相対湿度 30〜65% | 湿度分離器は公称約 1 lb/hr、最大約 4 lb/hr の水を除き、水は廃水タンクへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375）通常は分離器を1台だけ使い、乗員室の相対湿度は 30〜65% に保たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | REQ-ECLSS-05 | F-ARS-THC-07・F-ARS-THC-08・F-ARS-THC-09・F-ARS-THC-HX-01・F-ARS-THC-HX-02・F-ARS-THC-HX-03・F-ARS-THC-HX-04・F-ARS-THC-HX-05・F-ARS-THC-HX-06・F-ARS-THC-HX-07・F-ARS-THC-HX-09・F-ARS-THC-HX-10・F-ARS-THC-SEP-01・F-ARS-THC-SEP-02・F-ARS-THC-SEP-03・F-ARS-THC-SEP-04・F-ARS-THC-SEP-05・F-ARS-THC-SEP-06・F-ARS-THC-SEP-07・F-ARS-THC-SEP-08・F-ARS-THC-SEP-09・F-ARS-THC-SEP-11 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ARS-22 | キャビン熱交換器の空気出口温度を AIR TEMP 計器と SM 表示で示して 145°F を超えると AV BAY/CABIN AIR 警報灯を点灯させ、湿度分離器の回転数の低下を SM 警報で知らせること。 | 145°F | キャビン熱交換器の出口温度が 145°F を超えると、AV BAY/CABIN AIR 警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375）湿度分離器の回転数が下がると「S66 HUMID SEP A(B)」の SM 警報が出て、故障処置手順 6.2j で処置する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285） | REQ-ECLSS-05 | F-ARS-THC-05・F-ARS-THC-11・F-ARS-THC-MON-01・F-ARS-THC-MON-02・F-ARS-THC-MON-03・F-ARS-THC-MON-04・F-ARS-THC-MON-05・F-ARS-THC-MON-06・F-ARS-THC-MON-07・F-ARS-THC-MON-08・F-ARS-THC-MON-09・F-ARS-THC-MON-10・F-ARS-THC-MON-11・F-ARS-THC-MON-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-23 | 上昇・再突入ではバイパス弁を FULL COOL とし、キャビン温度を 95（90）°F 未満に保てない場合や、廃水タンクの増加率（通常 6±1 lb/day/人）の説明できない低下や結露で湿度制御の失敗が分かった場合は、キャビン大気制御の喪失と判定すること。 | 95（90）°F、6±1 lb/day/人 | キャビン温度を 95（90）°F 未満に保てない場合や、廃水タンクの増加率（通常 6±1 lb/day/人）が説明なく下がった場合は、キャビン大気制御を喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930）上昇・再突入はキャビンの熱負荷が大きいため、バイパス弁を全COOL とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） | REQ-ECLSS-05 | F-ARS-THC-04・F-ARS-THC-10・F-ARS-THC-OPS-01・F-ARS-THC-OPS-02・F-ARS-THC-OPS-03・F-ARS-THC-OPS-04・F-ARS-THC-OPS-05・F-ARS-THC-OPS-06・F-ARS-THC-OPS-07・F-ARS-THC-OPS-08・F-ARS-THC-OPS-09・F-ARS-THC-OPS-10・F-ARS-THC-OPS-11・F-ARS-THC-OPS-12・F-ARS-THC-HX-08・F-ARS-THC-SEP-10・F-ARS-THC-SEP-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-24 | 3つのアビオニクスベイは、ベイごとに2台のファン（通常は1台を運転）でベイの床から空冷機器と 300 ミクロンフィルタを通して空気を吸い込み、床下のベイ熱交換器で水冷却ループにより冷やしてベイへ戻し、非運転ファンの出口の逆止弁で逆流を防ぐこと。 | ファン 2台/ベイ、875 lb/hr/ベイ、フィルタ 300 µm | 各ベイは2台のファンを持ち、通常は1台を使い、ファンはベイの床から空冷機器と 300 ミクロンフィルタを通して空気を吸い込み、非運転ファンの出口の逆止弁が逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ベイ 1・2 の各ファンは通常 875 lb/hr を流し、交流2相でも起動・運転できる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） | REQ-ECLSS-05 | F-ARS-AVB-01・F-ARS-AVB-02・F-ARS-AVB-03・F-ARS-AVB-05・F-ARS-AVB-CIR-01・F-ARS-AVB-CIR-02・F-ARS-AVB-CIR-03・F-ARS-AVB-CIR-04・F-ARS-AVB-CIR-08・F-ARS-AVB-CIR-09・F-ARS-AVB-CIR-10・F-ARS-AVB-CIR-11・F-ARS-AVB-FAN-01・F-ARS-AVB-FAN-02・F-ARS-AVB-FAN-03・F-ARS-AVB-FAN-04・F-ARS-AVB-FAN-05・F-ARS-AVB-FAN-06・F-ARS-AVB-FAN-07・F-ARS-AVB-FAN-08・F-ARS-AVB-FAN-09・F-ARS-AVB-HX-01・F-ARS-AVB-HX-02・F-ARS-AVB-HX-03・F-ARS-AVB-HX-04・F-ARS-AVB-HX-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ARS-25 | 各ベイのファン出口の空気温度を AIR TEMP 計器と SM 表示で示して 130°F を超えると AV BAY/CABIN AIR 警報灯を点灯させ、ファン差圧が 2.5 in H2O 未満または 4.3 in H2O 超（改良型ファンは 4.5 未満または 7.8 超）でベイファンの喪失と判定すること。 | 130°F、2.5〜4.3 in H2O（改良型 4.5〜7.8 in H2O） | いずれかのベイの出口温度が 130°F を超えると AV BAY/CABIN AIR 警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ファン差圧が 2.5 in H2O 未満または 4.3 in H2O 超でベイファンを喪失とし、改良型ファンでは 4.5 in H2O 未満または 7.8 in H2O 超とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931） | REQ-ECLSS-05 | F-ARS-AVB-04・F-ARS-AVB-07・F-ARS-AVB-12・F-ARS-AVB-MON-01・F-ARS-AVB-MON-02・F-ARS-AVB-MON-03・F-ARS-AVB-MON-04・F-ARS-AVB-MON-05・F-ARS-AVB-MON-06・F-ARS-AVB-MON-07・F-ARS-AVB-MON-08・F-ARS-AVB-MON-09・F-ARS-AVB-MON-10・F-ARS-AVB-MON-11・F-ARS-AVB-MON-12・F-ARS-AVB-OPS-01・F-ARS-AVB-OPS-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-26 | ベイの空気出口温度を上昇・再突入で 130（125）°F 未満、軌道上（14.7 psi）で稼働 GPC が 2台なら 120（115）°F 未満などに保てない場合はベイ冷却の喪失とし、ベイファンの停止は GPC の冷却の制約から 26 分以内とすること。 | 130（125）°F、120（115）°F（GPC 2台）、停止 26 min | 上昇・再突入でベイ空気出口温度を 130（125）°F 未満に保てない場合、軌道上 14.7 psi で GPC 2台が稼働中に 120（115）°F 未満に保てない場合などは、ベイ冷却を喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934）アビオニクスベイのファンを止めてよい時間は、GPC の冷却の制約から 26 分である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） | REQ-ECLSS-05 | F-ARS-AVB-06・F-ARS-AVB-08・F-ARS-AVB-09・F-ARS-AVB-11・F-ARS-AVB-CIR-05・F-ARS-AVB-CIR-06・F-ARS-AVB-CIR-07・F-ARS-AVB-FAN-10・F-ARS-AVB-FAN-11・F-ARS-AVB-FAN-12・F-ARS-AVB-HX-06・F-ARS-AVB-HX-07・F-ARS-AVB-HX-08・F-ARS-AVB-HX-09・F-ARS-AVB-HX-10・F-ARS-AVB-OPS-02・F-ARS-AVB-OPS-03・F-ARS-AVB-OPS-04・F-ARS-AVB-OPS-06・F-ARS-AVB-OPS-07・F-ARS-AVB-OPS-11・F-ARS-AVB-OPS-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-27 | 1ベイの両ファンの喪失と IMU ファン3台の喪失は軌道到達可とし、単一の AC 母線の故障で2つのベイの空冷を失いうる場合は次の PLS に入るなど、生命維持の Go/No-Go 基準（A17-1001）でベイと IMU の冷却の喪失時の飛行の継続を判断すること。 | A17-1001 注[4]〜[9] | 1ベイの両ファンの喪失と IMU ファン3台の喪失は軌道到達可とし、単一の電気故障（AC 母線）で2つのベイの空冷を失いうる場合は次の PLS に入る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034） | REQ-ECLSS-05・REQ-ECLSS-12 | F-ARS-AVB-10・F-ARS-AVB-OPS-09・F-ARS-AVB-OPS-10・F-ARS-IMU-09・F-ARS-IMU-OPS-09 | PH-2（上昇）・PH-3（軌道） | A（解析） |
| REQ-ARS-28 | アビオニクスベイの火災では、そのベイの Halon ボトルを放出してベイファンを止め、放出後のベイの電源断でも IMU ファンは止めずに運転を続けること。 | — | アビオニクスベイで火災を検知したら、そのベイの Halon ボトルを放出し、ベイファンを止める。ファンの気流は火に酸化剤を送るためである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923）放出後のベイの電源断では IMU ファンを除く。ベイの外にある IMU は冷却なしでは 30 分を超えて運転できないためである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1924） | REQ-ECLSS-05・REQ-ECLSS-11 | F-ARS-AVB-OPS-08・F-ARS-IMU-OPS-08 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-29 | 3台の IMU は、3台の IMU ファン（どの1台でも3台の IMU を冷却でき、通常は1台を運転）でキャビン空気を 300 ミクロンフィルタを通して IMU に流し、フライトデッキの IMU 熱交換器で水冷却ループにより冷やして乗員室へ戻し、非運転ファンの出口の逆止弁で逆流を防ぐこと。 | ファン 3台、公称 144 lb/hr、フィルタ 300 µm | 3台の IMU は3台のファンの1台がキャビン空気を 300 ミクロンフィルタを通して吸い込むことで冷却され、1台で3台の IMU を冷却でき、各ファンの出口の逆止弁が逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）各ファンは 50 W の電動機で駆動され、公称 144 lb/hr を流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66） | REQ-ECLSS-05 | F-ARS-IMU-01・F-ARS-IMU-02・F-ARS-IMU-03・F-ARS-IMU-04・F-ARS-IMU-FAN-01・F-ARS-IMU-FAN-02・F-ARS-IMU-FAN-03・F-ARS-IMU-FAN-04・F-ARS-IMU-FAN-05・F-ARS-IMU-FAN-06・F-ARS-IMU-FAN-07・F-ARS-IMU-FAN-08・F-ARS-IMU-FAN-10・F-ARS-IMU-FAN-11・F-ARS-IMU-HEX-01・F-ARS-IMU-HEX-02・F-ARS-IMU-HEX-03・F-ARS-IMU-HEX-04・F-ARS-IMU-HEX-05・F-ARS-IMU-HEX-06・F-ARS-IMU-HEX-07・F-ARS-IMU-HEX-11・F-ARS-IMU-HEX-12・F-ARS-IMU-INL-01・F-ARS-IMU-INL-02・F-ARS-IMU-INL-03・F-ARS-IMU-INL-04・F-ARS-IMU-INL-09・F-ARS-IMU-INL-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ARS-30 | IMU ファンの差圧と回転数を SM 表示と SM 警報で監視し、差圧が 3.70（3.94）in H2O 未満または 4.95（4.71）in H2O 超か、選択したファンの回転数が 10,000±240〜12,720±700 rpm の範囲外ならファンの喪失と判定して、別のファンへ切り替えること。 | 3.70（3.94）〜4.95（4.71）in H2O、10,000±240〜12,720±700 rpm、最低 144 lb/hr | 差圧が 3.70（3.94）in H2O 未満または 4.95（4.71）in H2O 超か、回転数が 10,000±240〜12,720±700 rpm の範囲外なら IMU ファンを喪失とし、適切な冷却に要る最低流量は 144 lb/hr である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）回転数の低下は「S66 IMU FN SPD A(B,C)」の SM 警報で知らせ、10.2 psi 運用では差圧の下限を 3.0 in H2O とする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） | REQ-ECLSS-05 | F-ARS-IMU-06・F-ARS-IMU-07・F-ARS-IMU-08・F-ARS-IMU-FAN-09・F-ARS-IMU-HEX-08・F-ARS-IMU-MON-01・F-ARS-IMU-MON-02・F-ARS-IMU-MON-03・F-ARS-IMU-MON-04・F-ARS-IMU-MON-05・F-ARS-IMU-MON-06・F-ARS-IMU-MON-07・F-ARS-IMU-MON-08・F-ARS-IMU-MON-09・F-ARS-IMU-MON-10・F-ARS-IMU-MON-11・F-ARS-IMU-MON-12・F-ARS-IMU-OPS-03・F-ARS-IMU-OPS-04・F-ARS-IMU-OPS-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-31 | IMU ファンの停止は IMU の冷却の制約から 45 分以内とし、吸込みスクリーン・デブリトラップの目詰まりはフィルタの清掃で、3台のファンの喪失やダクトの閉塞は掃除機を使う IMU の緊急冷却で、冷却を回復できること。 | 停止 45 min | IMU ファンを止めておける時間は、IMU の冷却の制約から 45 分である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127）デブリトラップの目詰まりは IMU フィルタの清掃で、空気ダクトの閉塞は IMU の緊急冷却（IFM）で回復する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265）IMU の緊急冷却は、3台の IMU ファンがすべて故障したときに限り、掃除機を IMU ファンの代わりに使う。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173） | REQ-ECLSS-05 | F-ARS-IMU-05・F-ARS-IMU-10・F-ARS-IMU-11・F-ARS-IMU-HEX-09・F-ARS-IMU-HEX-10・F-ARS-IMU-INL-05・F-ARS-IMU-INL-06・F-ARS-IMU-INL-07・F-ARS-IMU-INL-08・F-ARS-IMU-OPS-01・F-ARS-IMU-OPS-02・F-ARS-IMU-OPS-06・F-ARS-IMU-OPS-07・F-ARS-IMU-OPS-10・F-ARS-IMU-OPS-11・F-ARS-IMU-OPS-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-ARS-32 | 水冷却ループは独立した2系統とし、ループ1（予備）はポンプ2台、ループ2（常用）はポンプ1台を持ち、各ループのアキュムレータを GN2 で 19〜35 psi に加圧してポンプ入口に正圧を与えること。 | ポンプ 970±15 lb/hr・昇圧 46.5±1.2 psid、アキュムレータ 19〜35 psi | 独立した2系統の水冷却ループが並んで流れ、予備のループ1は水ポンプを2台、ループ2は1台持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377）各アキュムレータは GN2 で 19〜35 psi に加圧される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）水ポンプの流量範囲は 970±15 lb/hr、昇圧は 46.5±1.2 psid である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94） | REQ-ECLSS-07 | F-ARS-WCL-01・F-ARS-WCL-06・F-ARS-WCL-PMP-01・F-ARS-WCL-PMP-02・F-ARS-WCL-PMP-03・F-ARS-WCL-PMP-04・F-ARS-WCL-PMP-05・F-ARS-WCL-PMP-06・F-ARS-WCL-PMP-07・F-ARS-WCL-PMP-08・F-ARS-WCL-PMP-10・F-ARS-WCL-PMP-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-33 | 各水冷却ループはポンプの下流で3つの並列経路に分かれてアビオニクスベイ 1・2・3A・3B の熱交換器とコールドプレート、MDM コールドプレートと窓の熱調整を冷やし、合流後にインターチェンジャで冷えた水を液冷服熱交換器・飲料水チラー・キャビン熱交換器・IMU 熱交換器へ流してポンプへ戻すこと。 | 並列経路 3 | ポンプの下流で水は3つの並列経路に分かれ、ベイ 1・2・3A・3B の熱交換器とコールドプレート、MDM コールドプレートと乗員室の窓の熱調整を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378）冷えた水は液冷服熱交換器、飲料水チラー、キャビン熱交換器、IMU 熱交換器を通ってポンプパッケージへ戻る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379） | REQ-ECLSS-07 | F-ARS-WCL-02・F-ARS-WCL-03・F-ARS-WCL-AVL-01・F-ARS-WCL-AVL-02・F-ARS-WCL-AVL-03・F-ARS-WCL-AVL-04・F-ARS-WCL-AVL-05・F-ARS-WCL-AVL-06・F-ARS-WCL-AVL-07・F-ARS-WCL-AVL-08・F-ARS-WCL-AVL-10・F-ARS-WCL-AVL-11・F-ARS-WCL-CLD-01・F-ARS-WCL-CLD-02・F-ARS-WCL-CLD-03・F-ARS-WCL-CLD-04・F-ARS-WCL-CLD-05・F-ARS-WCL-CLD-06・F-ARS-WCL-CLD-07・F-ARS-WCL-CLD-09・F-ARS-WCL-CLD-10・F-ARS-WCL-CLD-11 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ARS-34 | バイパス弁でインターチェンジャを迂回する水量を調整し、AUTO ではポンプ出口温度を 63.0±2.5°F に保ち、上昇・再突入では両ループとも MAN でインターチェンジャ流量を 950±50 lb/hr に設定し、ループ2を稼働ループとすること。 | 63.0±2.5°F、950±50 lb/hr | AUTO では、バイパス制御器とバイパス弁がポンプ出口の設定温度 63.0±2.5°F を保つように迂回する水量を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379）上昇・再突入では両ループともバイパス弁を MAN、インターチェンジャ流量を 950±50 lb/hr とし、未検知の故障を避けるためループ2を稼働ループとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061） | REQ-ECLSS-07 | F-ARS-WCL-04・F-ARS-WCL-05・F-ARS-WCL-10・F-ARS-WCL-ICH-01・F-ARS-WCL-ICH-02・F-ARS-WCL-ICH-03・F-ARS-WCL-ICH-04・F-ARS-WCL-ICH-05・F-ARS-WCL-ICH-06・F-ARS-WCL-ICH-07・F-ARS-WCL-ICH-08・F-ARS-WCL-ICH-09・F-ARS-WCL-ICH-12・F-ARS-WCL-OPS-01・F-ARS-WCL-OPS-02 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-35 | 軌道上（OPS 2）でポンプのスイッチを GPC にしたとき、GPC が待機ループのポンプを4時間ごとに6分運転して、静止したループを熱調整すること。 | 6 min／4 h | GPC 位置では、軌道上（OPS 2）で GPC がループのポンプを4時間ごとに6分運転し、静止したループを熱調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378）休止中のループの水は4時間ごとに6分循環させる。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） | REQ-ECLSS-07 | F-ARS-WCL-08・F-ARS-WCL-OPS-03・F-ARS-WCL-OPS-04・F-ARS-WCL-OPS-05 | PH-3（軌道） | D（実証） |
| REQ-ARS-36 | 各ループのポンプ出口圧・差圧・出口温度、アキュムレータ量、インターチェンジャ流量・出口温度、キャビン熱交換器入口温度を計測して表示し、ポンプ出口圧がループ1で 19.5 psia 未満・79.5 psia 超、ループ2で 45 psia 未満・81 psia 超なら H2O LOOP 警報灯を点灯させること。 | ループ1 19.5〜79.5 psia、ループ2 45〜81 psia | H2O LOOP 警報灯は、ループ1のポンプ出口圧が 19.5 psia 未満か 79.5 psia 超、ループ2が 45 psia 未満か 81 psia 超で点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）ポンプ差圧が 33 psid 未満か 46 psid 超で SM 警報が出て、通常のアキュムレータ量はループ1が約 45%、ループ2が約 55% である。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=307） | REQ-ECLSS-07 | F-ARS-WCL-07・F-ARS-WCL-14・F-ARS-WCL-MON-01・F-ARS-WCL-MON-02・F-ARS-WCL-MON-03・F-ARS-WCL-MON-04・F-ARS-WCL-MON-05・F-ARS-WCL-MON-06・F-ARS-WCL-MON-07・F-ARS-WCL-MON-08・F-ARS-WCL-MON-09・F-ARS-WCL-MON-10・F-ARS-WCL-MON-12・F-ARS-WCL-PMP-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ARS-37 | アキュムレータ量 0（5）%、MIN BYP でインターチェンジャ流量 600（649）lb/hr 以上を保てない、14.7 psia で稼働ループのポンプ出口温度を 85（82.75）°F 未満に保てない、ループ間漏れの確認のいずれかで水ループの喪失と判定し、水ループの停止は 10 分以内とすること。 | 0（5）%、600（649）lb/hr、85（82.75）°F、停止 10 min | アキュムレータ量が 0（5）%、MIN BYP でインターチェンジャ流量 600（649）lb/hr 以上を保てない、ポンプ出口温度を 85（82.75）°F 未満に保てない、ループ間漏れの確認のいずれかで水ループを喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059）水ループを止めておける時間は、S 帯電力増幅器の冷却の制約から 10 分である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） | REQ-ECLSS-07 | F-ARS-WCL-09・F-ARS-WCL-12・F-ARS-WCL-AVL-09・F-ARS-WCL-PMP-11・F-ARS-WCL-OPS-06・F-ARS-WCL-OPS-07・F-ARS-WCL-OPS-08・F-ARS-WCL-OPS-09・F-ARS-WCL-OPS-11・F-ARS-WCL-OPS-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ARS-38 | 1ループの喪失ではゼロフォールトトレラントとして上昇中は初日の PLS とし、両ループの喪失では上昇中は AOA、軌道上は故障から4時間以内の着陸とすること。 | AOA、4 h | 両水ループを上昇中に失った場合は、早いアボートより AOA を選ぶ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149）4時間以内の着陸は、7人の乗員と N2 262 lb を前提とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149） | REQ-ECLSS-07・REQ-ECLSS-09 | F-ARS-WCL-13・F-ARS-WCL-OPS-10 | PH-2（上昇）・PH-3（軌道） | A（解析） |
| REQ-ARS-39 | 両フレオンループの蒸発器出口温度が 32°F 未満になれば両水ループを運転して水の凍結を防ぎ、インターチェンジャ出口 35°F 未満・キャビン熱交換器入口 34°F 未満の低温を SM 警報で知らせること。 | 32°F、35°F・34°F | 両フレオンループの蒸発器出口温度が 32°F 未満なら両水ループを運転し、インターチェンジャへのフレオン入口温度が 6°F に下がるまで水の凍結を防ぐ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062）インターチェンジャ出口温度 35°F 未満、キャビン熱交換器入口温度 34°F 未満で SM 警報が出る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=318） | REQ-ECLSS-07 | F-ARS-WCL-11・F-ARS-WCL-ICH-10・F-ARS-WCL-ICH-11・F-ARS-WCL-CLD-08・F-ARS-WCL-MON-11 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |

## 5. 与圧系（PCS）の要求

与圧系（PCS）（SSD-FD-ECL-PCS-001 の下位）の L3 の要求 12件を示す。

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-PCS-01 | 14.7 psia キャビンレギュレータは乗員室圧を 14.7±0.2 psia に、8 psia 非常用レギュレータは 8±0.2 psia に調圧し、どちらも仕様上少なくとも 75 lb/hr の最大流量で補給できること。 | 14.7±0.2 psia・8±0.2 psia、最大流量 75 lb/hr 以上 | 14.7 psi のキャビンレギュレータは乗員室圧を 14.7±0.2 psia に調圧し、仕様上少なくとも 75 lb/hr の最大流量を持つ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25）8 psi の非常用レギュレータは 8±0.2 psia に調圧するよう設計され、同じく少なくとも 75 lb/hr の最大流量を持つ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） | REQ-ECLSS-01・REQ-ECLSS-03 | F-ECL-PCS-MNF-01・F-ECL-PCS-MNF-02・F-ECL-PCS-MNF-03・F-ECL-PCS-MNF-04 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-PCS-02 | O2/N2 コントローラは PPO2 が 2.95 psia 未満で O2/N2 制御弁を閉じて酸素を、3.45 psia を超えると開いて窒素を流し、PPO2 センサ A・B をコントローラ 1・2 に対応させて酸素分圧を自動で制御すること。 | PPO2 2.95〜3.45 psia | PPO2 が 2.95 psia 未満では弁を閉じて 14.7 のキャビンレギュレータから O2 を流し、3.45 psia を超えると弁を開いて N2 を流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29）PPO2 センサ A のデータは O2/N2 コントローラ 1 が、センサ B のデータはコントローラ 2 が使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29） | REQ-ECLSS-01 | F-ECL-PCS-MNF-05・F-ECL-PCS-MNF-06・F-ECL-PCS-MNF-07・F-ECL-PCS-MNF-08・F-ECL-PCS-MNF-09・F-ECL-PCS-MNF-10・F-ECL-PCS-OPS-01 | PH-3（軌道） | D（実証） |
| REQ-PCS-03 | 窒素系は 3300 psia のタンクの窒素を N2 レギュレータで調圧して各系統少なくとも 125 lbm/hr を供給し、レギュレータの故障による過圧を 275 psig で開く逃し弁で船外へ逃がすこと。 | 125 lbm/hr 以上、逃し弁 275 psig（245 psig で閉） | 各系統は少なくとも 125 lbm/hr の窒素を供給できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/365）3300 psia の N2 はタンクから N2 供給弁を経て流れ、N2 レギュレータの逃し弁は 275 psig で開き 245 psig で閉じる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25） | REQ-ECLSS-01 | F-ECL-PCS-N2S-04・F-ECL-PCS-N2S-05・F-ECL-PCS-N2S-06・F-ECL-PCS-N2S-09・F-ECL-PCS-N2S-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-PCS-04 | 水タンク用 N2 レギュレータは 200 psi の窒素を 15.5〜17.0 psig に下げて給水・廃水タンクを加圧し、2段目は 18.5±1.5 psig で乗員室へ逃がすこと。 | 15.5〜17.0 psig、逃し 18.5±1.5 psig | 水タンク用の窒素系は 200 psi の供給圧を 15.5〜17.0 psig に下げ、2段式のレギュレータの2段目は 18.5±1.5 psig の差圧で乗員室へ逃がす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | REQ-ECLSS-03 | F-ECL-PCS-N2S-07・F-ECL-PCS-N2S-08 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-PCS-05 | 窒素タンク（最大8基）に、機体の漏れ・ベント・EVA の再与圧の使用量に加えて、0.45 インチの穴の漏れで 8 psia を保ち 165 分後に着陸できる量の窒素を搭載すること。 | 8 psia・165 分 | 最近の改修で N2 の容量は8基のタンクまで増やされた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23）8 psia の乗員室圧の維持に要る N2 は、0.45 インチの穴による漏れと 165 分後の着陸を基にする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1958）8 psia の非常時の 165 分の帰還能力の喪失を A17-202 が定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1957） | REQ-ECLSS-03 | F-ECL-PCS-N2S-01・F-ECL-PCS-N2S-02・F-ECL-PCS-N2S-03・F-ECL-PCS-N2S-11・F-ECL-PCS-OPS-10・F-ECL-PCS-OPS-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-PCS-06 | PRSD の酸素は、系統1は 23.9±1 lb/hr のリストリクタ1個、系統2は 12.0±0.5 lb/hr のリストリクタ2個で流量を制限して燃料電池の極低温系を守り、100 psig の O2 レギュレータ（逃し弁 245 psig）を経て O2/N2 マニホールドへ送ること。 | 23.9±1 lb/hr（系統1）、12.0±0.5 lb/hr×2（系統2）、100 psig | PCS 系統1は 23.9±1 lb/hr の流量リストリクタを1個、系統2は 12.0±0.5 lb/hr のリストリクタを並列に2個持ち、燃料電池を守る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21）100 psig の O2 レギュレータには 245 psig で開く逃し弁がある。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） | REQ-ECLSS-01 | F-ECL-PCS-O2S-01・F-ECL-PCS-O2S-02・F-ECL-PCS-O2S-03・F-ECL-PCS-O2S-04・F-ECL-PCS-O2S-05・F-ECL-PCS-O2S-07・F-ECL-PCS-O2S-08 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-PCS-07 | 打上げ・帰還では LES ヘルメットへ乗員1人あたり少なくとも 2.5 lb/hr の酸素を送り、軌道上は乗員数に合わせたブリードオリフィス（4〜5人 0.24 lbm/hr、6〜7人 0.36 lbm/hr）で代謝用の酸素を補うこと。 | 2.5 lb/hr/人、0.24・0.36 lbm/hr | 乗員1人あたり 2.5 lb/hr の O2 を LES ヘルメットへ送れないと、8 psia の 165 分の帰還能力を失い、8人分には LES ヘルメットのマニホールドへ 20 lb/hr が要る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1957）ブリードオリフィスは 4〜5人の乗員で 0.24 lbm/hr、6〜7人で 0.36 lbm/hr の O2 を流す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/362） | REQ-ECLSS-03・REQ-ECLSS-01 | F-ECL-PCS-O2S-06・F-ECL-PCS-O2S-10・F-ECL-PCS-O2S-11・F-ECL-PCS-O2S-12・F-ECL-PCS-OPS-03 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-PCS-08 | 2個の正圧逃し弁は 15.5 psid で開いて 16.0 psid で全開（150 lb/hr）となり、2個の負圧逃し弁は外気圧が乗員室圧を 0.2 psid 上回ると開き、正圧逃し弁はすべての飛行段階で有効にしておくこと。 | 15.5〜16.0 psid（150 lb/hr）、負圧 0.2 psid | 正圧逃し弁は 15.5 psid で開き、16.0 psid で全開となり、負圧逃し弁は外気圧が乗員室圧を 0.2 psid 上回ると開く。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30）逃し弁の最大流量は 16.0 psid で 150 lb/hr である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/368）両方の正圧逃し弁は、すべての飛行段階で有効にしておく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966） | REQ-ECLSS-02 | F-ECL-PCS-RLF-01・F-ECL-PCS-RLF-02・F-ECL-PCS-RLF-03・F-ECL-PCS-RLF-04・F-ECL-PCS-RLF-07・F-ECL-PCS-RLF-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-PCS-09 | キャビンベント弁は打上げ前の気密点検（16.7 psia で 35 分間圧力の低下が無いこと）の後に閉じ、上昇後は遮断器を開いて着陸後の引渡しまで開かないようにすること。 | 16.7 psia・35 分 | 打上げ前の気密点検では、地上要員が乗員室を 16.7 psia に加圧し、35 分間圧力の低下が無いことを確かめる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30）キャビンベント弁は打上げ前に閉じ、上昇後に遮断器を開く。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966） | REQ-ECLSS-02 | F-ECL-PCS-RLF-05・F-ECL-PCS-RLF-06・F-ECL-PCS-RLF-08 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-PCS-10 | dP/dt が −0.08 psi/min を超えるとクラクソンと MASTER ALARM（クラス1）で急減圧を知らせ、CABIN ATM 灯は乗員室圧 13.8〜15.2 psia・PPO2 2.7〜3.6 psia の限界外で点灯すること。 | dP/dt −0.08 psi/min、13.8〜15.2 psia、PPO2 2.7〜3.6 psia | 測った dP/dt が −0.08 psi/min を超えると、MASTER ALARM 灯とクラクソン（クラス1の警報）で知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123）CABIN ATM の限界は、乗員室圧 13.8〜15.2 psia、PPO2 A・B 2.7〜3.6 psia である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=46） | REQ-ECLSS-02・REQ-ECLSS-01 | F-ECL-PCS-MON-01・F-ECL-PCS-MON-02・F-ECL-PCS-MON-03・F-ECL-PCS-MON-04・F-ECL-PCS-MON-05・F-ECL-PCS-MON-06・F-ECL-PCS-MON-07・F-ECL-PCS-MON-08・F-ECL-PCS-MON-09・F-ECL-PCS-MON-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-PCS-11 | EVA 前の 10.2 psia 運用では乗員室圧を 10.0〜10.4 psia、PPO2 を 2.55〜2.80 psia（指示値）に保ち、O2 濃度は 14.7 psia で 25.9% 未満、10.2 psia で 30.0% 未満とすること。 | 10.0〜10.4 psia、PPO2 2.55〜2.80 psia、O2 25.9%・30.0% 未満 | 10.2 psia の運用では、乗員室圧を 10.0〜10.4 psia、PPO2 を 2.55〜2.80 psia（指示値）に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977）乗員室の O2 濃度は、14.7 psia の運用では 25.9% 未満、10.2 psia の運用では 30.0% 未満に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1967） | REQ-ECLSS-04・REQ-ECLSS-01 | F-ECL-PCS-OPS-04・F-ECL-PCS-OPS-05・F-ECL-PCS-OPS-06・F-ECL-PCS-OPS-07・F-ECL-PCS-OPS-08 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-PCS-12 | 上昇中に隔離できない 0.15 psia/min を超える乗員室の漏れでは最も早く帰還・着陸できるアボートを選び、漏れで消耗品が足りない場合は 14.7 psia のキャビンレギュレータ入口弁を閉じて乗員室を 8 psia まで下げること。 | 0.15 psia/min、8 psia | 上昇中に隔離できない 0.15 psia/min を超える漏れは、最も早く帰還できるアボートとなる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955）14.7 psia のキャビンレギュレータ入口弁を閉じ、乗員室を 8 psia まで下げるのは A17-255 の条件のときだけである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1970） | REQ-ECLSS-03・REQ-ECLSS-02 | F-ECL-PCS-OPS-02・F-ECL-PCS-OPS-09・F-ECL-PCS-OPS-11・F-ECL-PCS-OPS-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |

## 6. 給水・廃水系（H2O）の要求

給水・廃水系（H2O）（SSD-FD-ECL-H2O-001 の下位）の L3 の要求 12件を示す。

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-WTR-01 | 燃料電池の生成水を水素分離器に通して余剰水素の 85% を除き、微生物フィルタで約 0.5 ppm のヨウ素を加えてタンクAへ受け入れ、タンクAが満杯のときは 1.5 psid の逆止弁でタンクB、次いでタンクC・Dへ流し、主経路の閉塞に備えてタンクBへの冗長経路を持つこと。 | 生成水 最大 25 lb/h、水素除去 85%、ヨウ素 約 0.5 ppm、逆止弁 1.5 psid | 3基の燃料電池は毎時最大 25 lb の水を生成し、水素分離器は余剰水素の 85% を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394）タンクAに入る水は微生物フィルタで約 0.5 ppm のヨウ素を加えられ、微生物の増殖が防がれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394）タンクAの入口弁が閉か満杯のときは、水は 1.5 psid の逆止弁を経てタンクBへ、さらに次の 1.5 psid の逆止弁を経てタンクC・Dへ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） | REQ-ECLSS-10 | F-ECL-H2O-FCW-01・F-ECL-H2O-FCW-02・F-ECL-H2O-FCW-03・F-ECL-H2O-FCW-04・F-ECL-H2O-FCW-05・F-ECL-H2O-FCW-06・F-ECL-H2O-FCW-07・F-ECL-H2O-FCW-08 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-WTR-02 | 窒素で加圧する4基の給水タンク（各 165 lb）を持ち、出口マニホールドをクロスオーバ弁でA-B側とC-D側に分けて、FES の給水系統A・Bへそれぞれ給水すること。 | 給水タンク 4（各 165 lb） | 給水タンクは容量 165 lb の4基で、各タンクはベローズ、水量センサ、入口弁・出口弁、疎水性フィルタを持つ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）クロスオーバ弁のA-B側は FES の給水系統Aへ、C-D側は FES の給水系統Bへ給水する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145） | REQ-ECLSS-10 | F-ECL-H2O-SPL-01・F-ECL-H2O-SPL-02・F-ECL-H2O-SPL-03・F-ECL-H2O-SPL-04・F-ECL-H2O-SPL-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-WTR-03 | 約 100 ft の FES 給水配管と給水ダンプ配管・ノズルをヒータで凍結から守り、ノズルヒータに給電しなければ給水ダンプ弁を開けず、ダンプ後はパージ装置でダンプ弁の残水を除くこと。 | FES 給水配管 約 100 ft | FES への給水配管は約 100 ft あり、凍結を防ぐ冗長のヒータが配管に沿って付いている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400）ノズルヒータに給電しなければ給水ダンプ弁は開けない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） | REQ-ECLSS-10 | F-ECL-H2O-SPL-06・F-ECL-H2O-DMP-02・F-ECL-H2O-DMP-03・F-ECL-H2O-DMP-04 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | T（試験） |
| REQ-WTR-04 | いつでも帰還できるよう給水を 175 lbm 以上、通常の構成では PLS 点火の4時間前に 281 lbm を確保し、タンクAには少なくとも 76%（128 lb）を残すこと。 | 175 lbm、281 lbm（PLS 点火の4時間前）、タンクA 76%（128 lb） | いつでも帰還できるための給水の最小量は 175 lbm で、通常の構成では PLS 点火の4時間前に 281 lbm を確保する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054）タンクAには少なくとも 76%（128 lb）の水を残す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146） | REQ-ECLSS-10 | F-ECL-H2O-SPL-07・F-ECL-H2O-SPL-08・F-ECL-H2O-SPL-10・F-ECL-H2O-SPL-11 | PH-3（軌道） | A（解析） |
| REQ-WTR-05 | 給水・廃水タンクを窒素系統1・2のいずれか単独で 15.5〜17.0 psig に加圧し、18.5±1.5 psig で乗員室へ逃がして過圧を防ぎ、窒素で加圧できないときは代替加圧弁で乗員室圧を加えられること。 | 15.5〜17.0 psig、リリーフ 18.5±1.5 psig | 窒素系統1・2はそれぞれ単独で水タンクを 15.5〜17.0 psig に加圧でき、18.5±1.5 psig で乗員室へ逃がすリリーフ弁がタンクを過圧から守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395）代替加圧弁は水系に乗員室の圧力を加える予備の手段で、飛行中は通常閉じる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1993） | REQ-ECLSS-10 | F-ECL-H2O-PRS-01・F-ECL-H2O-PRS-02・F-ECL-H2O-PRS-03・F-ECL-H2O-PRS-07・F-ECL-H2O-PRS-08・F-ECL-H2O-PRS-09・F-ECL-H2O-PRS-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-WTR-06 | 打上げではタンクAを窒素加圧から切り離して乗員室へベントし、生成水を給水タンクへ受け入れて燃料電池の浸水を防ぎ、タンクAが 98（93）% に達する前とタンクBが空になる前に加圧へ戻すこと。 | 98（93）%、ベローズ差圧 15 psid | 上昇中はタンクAを乗員室へベントする。生成水が船外へ逃げる経路が故障すると燃料電池が浸水して発電が止まるためである。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150）タンクAが 98（93）% に達する前に加圧へ戻す。加圧しないとベローズ前後の差圧が 15 psid を超えて損傷しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2046） | REQ-ECLSS-10 | F-ECL-H2O-PRS-04・F-ECL-H2O-PRS-05・F-ECL-H2O-PRS-06 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道） | D（実証） |
| REQ-WTR-07 | 給水・廃水を船外へダンプでき、給水ダンプはノズル温度 100°F 以上で始めてノズル温度A・Bがともに 90°F 未満で中止し、廃水ダンプはノズル温度 150°F 超で始め、ヒータ作動中のノズル温度を 350°F 以下に保つこと。 | 給水 開始 100°F・中止 90°F、廃水 開始 150°F・上限 350°F | 給水はダンプ隔離弁とダンプ弁を通して全タンクから船外へダンプできる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398）給水ダンプの開始の最低ノズル温度は 100°F で、両ノズル温度が 90°F 未満になれば中止する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2048）廃水ダンプは通常ノズル温度 150°F 超で始め、ヒータ作動中のノズル温度は 350°F を超えないようにする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1996） | REQ-ECLSS-10 | F-ECL-H2O-DMP-01・F-ECL-H2O-DMP-07・F-ECL-H2O-DMP-08・F-ECL-H2O-DMP-09・F-ECL-H2O-DMP-10・F-ECL-H2O-DMP-12 | PH-3（軌道） | T（試験） |
| REQ-WTR-08 | 給水・廃水ダンプ配管の非常用クロスタイで一方のノズルから他方の水をダンプでき、CWC（公称 95 lb）に給水・廃水を貯めて ISS への移送や後のダンプに使えること。 | CWC 公称 95 lb | クロスタイの接続で給水系と廃水系を可撓ホースでつなぎ、一方のノズルから他方の水をダンプでき、CWC にも給水・廃水を貯められる。CWC は公称 95 lb を貯める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400）廃水の管理では、非常用クロスタイを使って給水ダンプノズルから廃水をダンプする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1995） | REQ-ECLSS-10 | F-ECL-H2O-DMP-05・F-ECL-H2O-DMP-06・F-ECL-H2O-DMP-11・F-ECL-H2O-GAL-09・F-ECL-H2O-GAL-10・F-ECL-H2O-SPL-09・F-ECL-H2O-WST-06・F-ECL-H2O-WST-11 | PH-3（軌道） | D（実証） |
| REQ-WTR-09 | ギャレー給水弁を開けば給水をチラーで冷やす経路と常温の経路でギャレー（非搭載時は Apollo 給水器）へ送り、復水ステーションで 0.5〜8 オンスを 0.5 オンス刻みで温水 145〜165°F・冷水 40〜60°F として給水できること。 | 0.5〜8 オンス（0.5 オンス刻み）、温水 145〜165°F、冷水 40〜60°F | ギャレー給水弁を開くと、給水は ARS の水冷却ループの飲料水チラーで冷やす経路と、チラーを通らない常温の経路に分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400）復水ステーションは 145〜165°F の温水を出し、0.5 オンス刻みで 0.5〜8 オンスを給水する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465） | REQ-ECLSS-10 | F-ECL-H2O-GAL-01・F-ECL-H2O-GAL-02・F-ECL-H2O-GAL-03・F-ECL-H2O-GAL-04・F-ECL-H2O-GAL-05・F-ECL-H2O-GAL-11・F-ECL-H2O-GAL-12 | PH-3（軌道） | D（実証） |
| REQ-WTR-10 | 飛行1日目にギャレーのヨウ素除去装置（GIRA または LIRS）を取り付け、乗員のヨウ素摂取を1人1日 1 mg 未満に保つこと。 | 1 mg/日/人 未満 | ヨウ素除去装置は飛行1日目に取り付け、乗員のヨウ素摂取を1人1日 1 mg 未満に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2001） | REQ-ECLSS-10 | F-ECL-H2O-GAL-06・F-ECL-H2O-GAL-07・F-ECL-H2O-GAL-08 | PH-3（軌道） | A（解析） |
| REQ-WTR-11 | 1基の廃水タンク（排出可能量 165 lb）に尿と湿度分離器の凝縮水を受け入れて処分まで貯め、給水タンクと同じ窒素源で加圧すること。 | 廃水タンク 1（165 lb、残量 3.3 lb） | 廃水タンクは排出可能な水 165 lb（残量 3.3 lb）を貯め、給水タンクと同じ窒素源で加圧される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401）廃水タンクは乗員の液体廃棄物と湿度凝縮水を貯める。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143） | REQ-ECLSS-10 | F-ECL-H2O-WST-01・F-ECL-H2O-WST-02・F-ECL-H2O-WST-03・F-ECL-H2O-WST-04・F-ECL-H2O-WST-09・F-ECL-H2O-WST-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-WTR-12 | 廃水量が 80% に達する前に廃水をダンプし、0（5）% まではダンプしないこと。 | 80%、0（5）% | 廃水量が 80% に達する前に廃水ダンプノズルからダンプする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1994）廃水タンクは 0（5）% までダンプしない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1995） | REQ-ECLSS-10 | F-ECL-H2O-WST-05・F-ECL-H2O-WST-07・F-ECL-H2O-WST-08・F-ECL-H2O-WST-12 | PH-3（軌道） | A（解析） |

## 7. 廃棄物収集系（WCS）の要求

廃棄物収集系（WCS）（SSD-FD-ECL-WCS-001 の下位）の L3 の要求 9件を示す。

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-WCS-01 | 便器は座面下を毎分 30 ft³ で流れるキャビン空気で糞便を多孔質ライナへ引き込み、疎水性材で自由な液体と細菌を収集器から出さず、不使用時は真空にさらして固形廃棄物を乾燥させること。 | 30 ft³/min | 糞便は座面下を毎分 30 ft³ で流れるキャビン空気で引き込まれ、疎水性のライナ材が自由な液体と細菌が収集器から出るのを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759）便器は使わないときは減圧され、固形廃棄物を乾燥・不活性化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755） | REQ-ECLSS-13 | F-ECL-WCS-CMD-01・F-ECL-WCS-CMD-02・F-ECL-WCS-CMD-04・F-ECL-WCS-CMD-05・F-ECL-WCS-CMD-07・F-ECL-WCS-CMD-08 | PH-3（軌道） | T（試験） |
| REQ-WCS-02 | MODE スイッチと COMMODE CONTROL ハンドルを機械的に連動させて望ましくない構成を防ぎ、便器を約 15 秒で加圧してからスライド弁を開き、使用後はハンドルを完全に下げてキャビン空気の損失を防ぐこと。 | 加圧 約 15 秒 | MODE スイッチと COMMODE CONTROL ハンドルは機械的に連動し、望ましくない構成を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758）便器はデブリスクリーンと流量制限器を通したキャビン空気で約 15 秒で加圧される。使用後にハンドルを完全に下げないと、真空ベント弁からキャビン空気が失われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） | REQ-ECLSS-13 | F-ECL-WCS-CMD-03・F-ECL-WCS-CMD-06・F-ECL-WCS-CMD-10・F-ECL-WCS-CMD-11・F-ECL-WCS-CMD-12・F-ECL-WCS-OPS-01・F-ECL-WCS-OPS-02 | PH-3（軌道） | T（試験） |
| REQ-WCS-03 | 2台のファンセパレータ（回転室 5,800 rpm、115±5 V 三相交流）のどちらかで搬送空気から尿を分離して廃水タンクへ送り、逆止弁で停止側の分離器を通る逆流を防ぐこと。 | 5,800 rpm、分離能力 0.09 lb/s、115±5 V 三相 | 分離器の回転する衝突分離器が液体を外壁へ飛ばし、各分離器の廃水出口の逆止弁が停止側の分離器を通る逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759）ファンセパレータの分離能力は 0.09 lb/s で、1相あたり 115±5 V の三相交流で働き、回転室は 5,800 rpm である。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=477） | REQ-ECLSS-13 | F-ECL-WCS-FSP-01・F-ECL-WCS-FSP-05・F-ECL-WCS-FSP-06・F-ECL-WCS-FSP-07・F-ECL-WCS-FSP-12・F-ECL-WCS-OPS-03・F-ECL-WCS-OPS-04・F-ECL-WCS-OPS-10 | PH-3（軌道） | T（試験） |
| REQ-WCS-04 | WCS のすべての気体を臭気・細菌フィルタ（活性炭、0.45 μm を超える粒子の 99.999% を除去）に通して毎分 38 ft³ で乗員室へ戻し、フィルタを飛行中に交換できること。 | 0.45 μm・99.999%、38 ft³/min | WMS のすべての気体はファンセパレータから臭気・細菌フィルタへ導かれてキャビン空気と混ざり、フィルタは飛行中に交換できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/756）フィルタは活性炭と、0.45 μm を超える粒子の 99.999% を除くろ材を持つ。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=440）臭気・細菌フィルタから乗員室へ戻る流量は毎分 38 ft³ である。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=477） | REQ-ECLSS-13 | F-ECL-WCS-FSP-02・F-ECL-WCS-FSP-03・F-ECL-WCS-FSP-04・F-ECL-WCS-FSP-10・F-ECL-WCS-FSP-11 | PH-3（軌道） | I（検査） |
| REQ-WCS-05 | 小便器はファンセパレータが作る毎分 10 ft³ 以上の気流で尿（公称 0.05 lb/s、1回最大 1.8 lb）を廃水タンクへ運び、プレフィルタで気流中の異物を捕らえること。 | 10 ft³/min 以上、尿 公称 0.05 lb/s・1回最大 1.8 lb | 小便器のホースをクレードルから外すと、選んだファンセパレータが小便器を通して毎分 10 ft³ 以上のキャビン空気を引く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758）尿の流量は公称 0.05 lb/s で、1回の最大量は 1.8 lb である。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474）小便器のファンネルの根元の使い捨てプレフィルタが気流中の異物を捕らえ、少なくとも1日1回交換する。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=439） | REQ-ECLSS-13 | F-ECL-WCS-URN-01・F-ECL-WCS-URN-02・F-ECL-WCS-URN-03・F-ECL-WCS-URN-04・F-ECL-WCS-URN-07・F-ECL-WCS-URN-09・F-ECL-WCS-URN-10・F-ECL-WCS-URN-11・F-ECL-WCS-URN-12 | PH-3（軌道） | T（試験） |
| REQ-WCS-06 | EMU の排水中は小便器を使わず（分離器の最大廃水流量 0.09 lbm/s）、乗員室の再与圧中は WCS を使わないこと。 | 0.09 lbm/s | 乗員室の再与圧中と EMU の排水中は WCS を使わない。ファンセパレータの最大廃水流量は 0.09 lbm/s である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1987）分離器があふれるおそれがあるため、EMU の排水中は小便器を使えない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759） | REQ-ECLSS-13 | F-ECL-WCS-URN-05・F-ECL-WCS-URN-06・F-ECL-WCS-OPS-05・F-ECL-WCS-OPS-06・F-ECL-WCS-OPS-11 | PH-3（軌道）・PH-5（EVA） | A（解析） |
| REQ-WCS-07 | 真空ベント系は隔離弁が閉じても弁板のオリフィス（14.7 psia で 3.0±0.25 lb/hr）で水素分離器の H2 を船外へ排出し続け、軌道上は管とノズルのヒータで管内の凍結を防ぐこと。 | 3.0±0.25 lb/hr（14.7 psia） | 真空ベント隔離弁を閉じても、弁のオリフィス板が 14.7 psia で 3.0±0.25 lb/hr を船外へ流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152）隔離弁を開くと管とノズルのヒータが働き、管内の水蒸気の凍結を防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152） | REQ-ECLSS-13 | F-ECL-WCS-VAC-01・F-ECL-WCS-VAC-02・F-ECL-WCS-VAC-03・F-ECL-WCS-VAC-04・F-ECL-WCS-VAC-06・F-ECL-WCS-VAC-07・F-ECL-WCS-VAC-08・F-ECL-WCS-VAC-09 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | T（試験） |
| REQ-WCS-08 | 真空ベント機能を失った（隔離弁が閉で故障し、便器不使用時の収集器圧力が 1.0 psia 超）場合は、WCS の真空弁を再突入まで開いたまま保ち、廃水ダンプ管を使う非常用の真空ベントで機能を回復するまで便器を使わないこと。 | 収集器圧力 1.0 psia | 隔離弁が閉で故障し、収集器圧力が 1.0 psia を超えると真空ベント機能の喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986）真空ベント機能を失った場合は WCS の真空弁を再突入まで開いたままにし、機能を回復するまで便器の運用を止める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989）真空ベント QD から非常用廃水クロスタイ QD へ移送ホースをつなぎ、廃水ダンプ管から排気できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760） | REQ-ECLSS-13 | F-ECL-WCS-VAC-05・F-ECL-WCS-VAC-10・F-ECL-WCS-VAC-11・F-ECL-WCS-VAC-12・F-ECL-WCS-OPS-08 | PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-WCS-09 | 便器や尿収集を失ったときに備えて便袋 40 枚、UCD 58 個・UAS 36 個（少なくとも PLS＋2日分）を積み、WCS の喪失の基準を満たせば代替の収集具に切り替えること。 | 便袋 40、UCD 58、UAS 36（PLS＋2日分） | 標準の搭載量は便袋 40 枚と UCD 58 個・UAS 36 個で、少なくとも PLS＋2日分に当たる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1988）いずれの経路でも尿を廃水系へ運べない場合は、WCS の尿収集を喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984） | REQ-ECLSS-12 | F-ECL-WCS-OPS-07・F-ECL-WCS-OPS-09・F-ECL-WCS-CMD-09・F-ECL-WCS-FSP-08・F-ECL-WCS-FSP-09・F-ECL-WCS-URN-08 | PH-3（軌道） | A（解析） |

## 8. 火災検知・消火系（FDS）の要求

火災検知・消火系（FDS）（SSD-FD-ECL-FDS-001 の下位）の L3 の要求 9件を示す。

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-FDS-01 | 乗員室とアビオニクスベイ1・2・3A に煙感知器を計9個（A群5個・B群4個、各ベイに2個）置き、各感知器は煙濃度 2,000±200 µg/m3 が5秒以上続くか、毎秒 22 µg/m3 の増加が20秒間に8回続くと警報信号を出すこと。 | 感知器 9（A群 5・B群 4）、2,000±200 µg/m3（5秒以上）、22 µg/m3/s（20秒間に8回） | 煙感知器は9個で緊急警報系が監視し、A群はキャビンファン出口・フライトデッキの左還流ダクト・各ベイに1個、B群は右還流ダクトと各ベイに1個を置く。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23）感知器は煙粒子の濃度 2,000±200 µg/m3 が5秒以上、または毎秒 22 µg/m3 の増加が20秒間に8回続くとトリップ信号を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） | REQ-ECLSS-11 | F-ECL-FDS-DET-01・F-ECL-FDS-DET-02・F-ECL-FDS-DET-05・F-ECL-FDS-DET-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-FDS-02 | 煙感知器は周囲の空気を連続して吸引して 2ミクロン以下の粒子だけをイオン化式の感知室に入れ、警報と濃度計測の2つの独立な指示を出し、各区画のファンによる空気の循環のもとで働くこと。 | 粒子 2ミクロン以下、所要電力 約 6.5 W | 分離器は 2ミクロン以下の粒子だけを感知室に入れ、感知器の所要電力は約 6.5 W である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25）各感知器は警報と濃度計測の2つの独立な指示を出し、両ベイファンの故障で空気の循環を失うとそのベイの煙検知は喪失とされる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917）煙検知が働くには各区画のファンとキャビンファンによる空気の循環が必要で、感知器の温度制限を超えると煙検知を失う。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） | REQ-ECLSS-11 | F-ECL-FDS-DET-03・F-ECL-FDS-DET-04・F-ECL-FDS-DET-06・F-ECL-FDS-DET-07・F-ECL-FDS-DET-08・F-ECL-FDS-DET-09・F-ECL-FDS-DET-10・F-ECL-FDS-DET-11 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-FDS-03 | 感知器のトリップで、MDM やソフトウェアを介さずにパネル L1 の SMOKE DETECTION 灯・4つの MASTER ALARM 灯・サイレンを作動させ、警報は SENSOR RESET までラッチし、A群と B群を独立にし、CIRCUIT TEST で A・B 群の感知器・灯・20秒の時間遅れを試験できること。 | MASTER ALARM 灯 4、時間遅れ 20秒 | クラス1（緊急）はハードウェアだけの系で、入力は MDM やソフトウェアで処理されない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114）トリップ信号は L1 の SMOKE DETECTION 灯と F2・F4・A7・MO52J の4つの MASTER ALARM 灯を点灯させ、乗員室のサイレンを鳴らす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）回路試験は A・B の各回路について2通り行い、約20秒の遅れの後に灯とサイレンが作動し、警報は SENSOR RESET までラッチされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123） | REQ-ECLSS-11 | F-ECL-FDS-ALM-01・F-ECL-FDS-ALM-02・F-ECL-FDS-ALM-03・F-ECL-FDS-ALM-04・F-ECL-FDS-ALM-05・F-ECL-FDS-ALM-06・F-ECL-FDS-ALM-07・F-ECL-FDS-ALM-08・F-ECL-FDS-ALM-09・F-ECL-FDS-ALM-10・F-ECL-FDS-ALM-11・F-ECL-FDS-ALM-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-FDS-04 | アビオニクスベイ1・2・3A に Halon 消火ボトルを1本ずつ常設し、パネル L1 でアームして AGENT DISCH 押しボタンを2秒以上押すと放出して、ベイの Halon 濃度を消火に要る 4〜5% を超える 7.5〜9.5% にすること。 | ボトル 3（各 3.74〜3.8 lb）、ベイ濃度 7.5〜9.5%（必要 4〜5%） | ベイ1・2・3A に常設した3本のボトルはそれぞれ 3.74〜3.8 lb の Halon を収め、L1 でアームして AGENT DISCH 押しボタンを2秒以上押すと放出する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）放出でベイの Halon 濃度は 7.5〜9.5% になり、消火に要る濃度は 4〜5% である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119）押しボタンを押してから1秒の時間遅れの後に電力が送られ、誤放出を防ぐ。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） | REQ-ECLSS-11 | F-ECL-FDS-FIX-01・F-ECL-FDS-FIX-02・F-ECL-FDS-FIX-03・F-ECL-FDS-FIX-04・F-ECL-FDS-FIX-05・F-ECL-FDS-FIX-06・F-ECL-FDS-FIX-07・F-ECL-FDS-FIX-09・F-ECL-FDS-FIX-11・F-ECL-FDS-FIX-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-FDS-05 | 放出したベイの Halon 濃度を、消火に要る 4% を超えて50時間（冷却を強化し能動冷却のペイロードを置いたベイ3Aは28時間）保ち、これを過ぎたか放出音の無い AGENT DISCH 灯の点灯でそのベイの消火を喪失とすること。 | 50時間（ベイ3A 28時間）、4% | ベイの Halon はベイファンが運転していても50時間有効である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37）放出音の無い AGENT DISCH 灯の点灯、または放出から50時間（条件付きのベイ3A は28時間）の経過で、前部アビオニクスベイの消火を喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1918） | REQ-ECLSS-11・REQ-ECLSS-12 | F-ECL-FDS-FIX-08・F-ECL-FDS-FIX-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-FDS-06 | 乗員室に Halon 1301 の携帯消火器を3本（ミッドデッキに2本、フライトデッキに1本）置き、片手で2秒以内に外せて、先細のノズルを計器盤・ベイの消火ポートに差し込んで全量を放出できること。 | 3本（各 約 3.75 lb）、放出 1 g で 18±2秒・無重量で 30±5秒 | 乗員室には携帯消火器が3本（ミッドデッキに2本、フライトデッキに1本）あり、ノズルは計器盤の消火ポートに合う先細形である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121）消火器は片手で2秒以内に外せ、無重量では 2.4 lb の推力を出す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=573）消火器は約 3.75 lb の Halon 1301 を収め、無重量での放出時間は 30±5秒である。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=574） | REQ-ECLSS-11 | F-ECL-FDS-PFE-01・F-ECL-FDS-PFE-02・F-ECL-FDS-PFE-03・F-ECL-FDS-PFE-04・F-ECL-FDS-PFE-05・F-ECL-FDS-PFE-06・F-ECL-FDS-PFE-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-FDS-07 | 乗員の Halon 1301 への暴露を、7% 以下で15分、7〜10% で1分、10〜15% で30秒までとし、15% を超える暴露を避けること。 | 7% 以下 15分、7〜10% 1分、10〜15% 30秒、15% 超 不可 | Halon 1301 への不要な暴露を避け、7% 以下は15分、7〜10% は1分、10〜15% は30秒までとし、15% を超える暴露は防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/122）空気が循環していると、携帯消火器3本を乗員室に放出しても Halon 濃度は 1% 未満にとどまる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） | REQ-ECLSS-11 | F-ECL-FDS-PFE-08・F-ECL-FDS-PFE-09・F-ECL-FDS-PFE-10・F-ECL-FDS-OPS-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-FDS-08 | 火災は乗員の目視か同じ区画の2個の感知器の 2,000 µg/m3 超などで確かめ、ベイでは Halon の放出とベイファンの停止、乗員室ではキャビンファンの停止・ヘルメットの着用・携帯消火器の放出を直ちに行い、火災後はベイを船外へ 3 lb/hr 以上でパージすること。 | 2,000 µg/m3、ベイのパージ 3 lb/hr 以上 | 火災は乗員の炎・煙の目視、またはベイでは同じ区画の2個の感知器が 2,000 µg/m3 を超えることなどで定義し、乗員室では Halon の放出の前に火元を確かめる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915）火災ではベイの Halon ボトルの放出とベイファンの停止、乗員室ではキャビンファンの停止とヘルメットの着用と携帯消火器の放出を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923）乗員室の減圧中にベイの有毒物を吸い出さないよう、ベイを 3 lb/hr 以上で直接船外へパージする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1925） | REQ-ECLSS-12 | F-ECL-FDS-OPS-01・F-ECL-FDS-OPS-02・F-ECL-FDS-OPS-07・F-ECL-FDS-OPS-08・F-ECL-FDS-OPS-09・F-ECL-FDS-OPS-11・F-ECL-FDS-OPS-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-FDS-09 | 回路試験・電源・両ファンの故障で区画の煙検知の喪失を判定し、喪失時はベイ1・2の空冷機器とベイファンの電源を切り、乗員室では乗員1人が常に起きて監視し、指示が2つしか残らなければ毎日回路試験を行うこと。 | — | ベイの煙検知は、回路試験の不合格、両感知器の電源の喪失、両ベイファンの故障による空気の循環の喪失で喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917）ベイ1・2の煙検知を失ったら、OMS-2 の後に空冷機器とベイファンの電源を切る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1919）乗員室の煙検知を失ったら乗員1人が常に起きて監視し、指示が2つしか残らなければ毎日回路試験を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1921） | REQ-ECLSS-12 | F-ECL-FDS-OPS-03・F-ECL-FDS-OPS-04・F-ECL-FDS-OPS-05・F-ECL-FDS-OPS-06 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |

## 9. エアロック支援系（ALS）の要求

エアロック支援系（ALS）（SSD-FD-ECL-ALS-001 の下位）の L3 の要求 11件を示す。

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-ALS-01 | 外部エアロックは内側・EV・ドッキングの3枚の与圧シール付きハッチを持ち、各ハッチの2個の均圧弁（14.5 psid で NORM 240 lb/hr、EMER 1,278 lb/hr）でエアロックを乗員室と均圧・隔離できること。 | ハッチ 3、均圧弁 2/ハッチ、240・1,278 lb/hr（14.5 psid） | 外部エアロックには内側ハッチ・EV ハッチ・ドッキングハッチの3枚の与圧シール付きハッチがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452）均圧弁の NORM 位置は 14.5 psid で 240 lb/hr、EMER 位置は 1,278 lb/hr を流し、エアロックの減圧の予備手段にもなる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=174） | REQ-ECLSS-04 | F-ECL-ALS-DEP-01・F-ECL-ALS-DEP-02・F-ECL-ALS-DEP-03・F-ECL-ALS-DEP-04・F-ECL-ALS-DEP-05 | PH-3（軌道）・PH-5（EVA） | T（試験） |
| REQ-ALS-02 | エアロック減圧弁は「5」位置（0.59 インチのオリフィス）でエアロックを 5 psia へ、「0」位置（1.02 インチ）で 0 psia へ減圧し、同じ弁で乗員室を 14.7 psia から 10.2 psia へ約30分で減圧できること。 | 5・0 psia（0.59・1.02 in）、10.2 psia まで約30分 | 減圧弁は乗員室の 14.7 psia から 10.2 psia への減圧にも使い、5 位置は 0.59 インチ、0 位置は 1.02 インチのオリフィスを真空へ開く。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175）乗員室は約30分で 10.2 psia まで減圧する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192） | REQ-ECLSS-04 | F-ECL-ALS-DEP-06・F-ECL-ALS-DEP-07・F-ECL-ALS-DEP-08・F-ECL-ALS-DEP-10 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-ALS-03 | ハッチの漏れによるエアロックの圧力低下を 0.2 psi/min 以下に保ち、乗員室の気密を保ったままエアロックを減圧・再与圧できること。 | 0.2 psi/min | いずれかのハッチの漏れでエアロックの圧力低下が 0.2 psi/min を超えると、EVA 能力を失う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855）ドッキング前は内側ハッチと均圧弁を閉じてエアロックを隔離し、エアロック圧力が下がらないかを見る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=191） | REQ-ECLSS-04 | F-ECL-ALS-DEP-09・F-ECL-ALS-DEP-11・F-ECL-ALS-DEP-12 | PH-3（軌道）・PH-5（EVA） | T（試験） |
| REQ-ALS-04 | 与圧区画の外の6本の水配管は2区域で各配管に3系統のヒータ（1系統ずつ使用）を巻き、区域1・2の配管温度を 32°F（40°F）超に保つこと。 | 6本・2区域・3系統、32°F（40°F）超 | 6本の配管は QD パネルで2区域に分かれ、各区域の配管は3系統のヒータを1系統ずつ使って個別に巻かれる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179）区域1・2のいずれかで配管温度を 32°F（40°F）超に保てないと、外部エアロックの水配管を喪失とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055） | REQ-ECLSS-10 | F-ECL-ALS-HTR-01・F-ECL-ALS-HTR-04・F-ECL-ALS-HTR-07・F-ECL-ALS-HTR-10・F-ECL-ALS-HTR-11・F-ECL-ALS-HTR-12 | PH-3（軌道） | T（試験） |
| REQ-ALS-05 | エアロック外殻の3区域の二重冗長の構造ヒータを軌道上でできるだけ早く入れ、真空時もエアロック内部を氷点以上に保って内部の水配管の凍結と結露を防ぐこと。 | 3区域・二重冗長、氷点以上 | 構造ヒータはエアロック内部を氷点以上に保つよう設計され、二重冗長である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180）ヒータは軌道上でできるだけ早く入れる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2093） | REQ-ECLSS-10・REQ-ECLSS-04 | F-ECL-ALS-HTR-02・F-ECL-ALS-HTR-03・F-ECL-ALS-HTR-05・F-ECL-ALS-HTR-06・F-ECL-ALS-HTR-08・F-ECL-ALS-HTR-09 | PH-3（軌道） | T（試験） |
| REQ-ALS-06 | EVA の前後は SCU を通じて LCVG の冷却水を2本の閉ループでエアロックへ流し、エアロック内の LCVG 熱交換器でオービタの水冷却ループにより冷やすこと。 | 閉ループ 2 | 水は2本の閉じた LCVG 冷却ループでエアロックに出入りする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176）LCVG 熱交換器は EVA の前後に LCVG を冷やす水ループを冷却するもので、エアロック内にある。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） | REQ-ECLSS-04 | F-ECL-ALS-LCG-01・F-ECL-ALS-LCG-02・F-ECL-ALS-LCG-03・F-ECL-ALS-LCG-04 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-ALS-07 | LCG 配管の圧力は SCU を外した状態で 28.1 psig（SCU の認定最大使用圧力）以下、SCU を EMU につなぎ EMU が非通電の状態で 18 psig 以下に保ち、有人の EMU へは LCG2 配管の温度が両区域で 92°F 以下のときに水を循環させること。 | 28.1 psig・18 psig、92°F | SCU を外した状態で LCG の圧力を保てないときに LCG 配管を喪失とみなし、28.1 psig は SCU の認定最大使用圧力である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2057）有人のスーツへ LCG の水を循環させるのは、LCG2 配管の温度が両区域で 92°F 以下のときである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1877） | REQ-ECLSS-04 | F-ECL-ALS-LCG-05・F-ECL-ALS-LCG-06・F-ECL-ALS-LCG-07・F-ECL-ALS-LCG-08・F-ECL-ALS-LCG-09・F-ECL-ALS-LCG-10・F-ECL-ALS-LCG-11 | PH-3（軌道）・PH-5（EVA） | A（解析） |
| REQ-ALS-08 | SCU で EMU へ電力・通信・O2・水冷却・給水を供給し、PLSS の一次 O2 を 850±50 psig で、EMU の給水タンク（約9 lb）をオービタの飲料水で充填できること。 | 850±50 psig、給水 約9 lb | SCU は3本の水ホース、高圧の O2 ホース、電線などから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）PLSS の一次 O2 の充填圧は 850±50 psig である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447）EMU の給水タンクは約 9 lb の給水を 15 psig で蓄える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449） | REQ-ECLSS-04 | F-ECL-ALS-SCU-01・F-ECL-ALS-SCU-02・F-ECL-ALS-SCU-03・F-ECL-ALS-SCU-04・F-ECL-ALS-SCU-05・F-ECL-ALS-SCU-06・F-ECL-ALS-SCU-07・F-ECL-ALS-SCU-08・F-ECL-ALS-SCU-09 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-ALS-09 | EMU の O2 補給は O2 供給ラインの温度が 80°F（指示値）以下、給水の再充填は給水配管の温度が両区域で 95°F 以下のときに行い、EVA 乗員は EMU の消耗品が残り30分になったらエアロックに入って SCU に接続すること。 | 80°F・95°F、残り30分 | O2 の補給は、O2 供給の温度が 80°F（指示値）以下のときに行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1876）給水の再充填は、外部エアロックの給水配管の温度が両区域で 95°F 以下のときに行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1877）EVA 乗員は、EMU の消耗品のいずれかが残り30分になったときにエアロックに入り、SCU に接続し終える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866） | REQ-ECLSS-04 | F-ECL-ALS-SCU-10・F-ECL-ALS-SCU-11・F-ECL-ALS-SCU-12 | PH-5（EVA） | A（解析） |
| REQ-ALS-10 | エアロックの空気と水の圧力、水と構造の温度、ベスティビュール弁の状態を乗員と MCC に示し、SM OPS 2 の SPEC 177 に表示し、各ハッチの差圧を両側の差圧計に表示すること。 | — | エアロックの各所のセンサが、空気と水の圧力、水と構造の温度、ベスティビュール弁の状態を乗員と MCC に提供し、各ハッチの差圧は両側の計器に表示される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187）EXTERNAL AIRLOCK 表示（DISP 177）は SM OPS 2 だけで使える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189） | REQ-ECLSS-04・REQ-ECLSS-10 | F-ECL-ALS-MON-01・F-ECL-ALS-MON-02・F-ECL-ALS-MON-03・F-ECL-ALS-MON-04・F-ECL-ALS-MON-05・F-ECL-ALS-MON-06・F-ECL-ALS-MON-07・F-ECL-ALS-MON-08・F-ECL-ALS-MON-09・F-ECL-ALS-MON-10 | PH-3（軌道）・PH-5（EVA） | T（試験） |
| REQ-ALS-11 | 吹出口の無いエアロックへ、ダクトとブースタファン（2台、1台ずつ使用、541〜767 lb/hr）でオービタの調整空気を送り、湿度を制御して CO2・O2・N2 のよどみを防ぐこと。 | ファン 2台（1台ずつ）、541〜767 lb/hr | エアロックにはキャビンファンの調整空気を回す吹出口が無いため、乗員がダクトを張り、湿度を制御して CO2・O2・N2 のよどみを防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178）2台のブースタファンを1台ずつ使い、電動機は 541〜767 lb/hr を流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） | REQ-ECLSS-05 | F-ECL-ALS-VNT-01・F-ECL-ALS-VNT-02・F-ECL-ALS-VNT-03・F-ECL-ALS-VNT-04・F-ECL-ALS-VNT-06・F-ECL-ALS-VNT-07・F-ECL-ALS-VNT-08・F-ECL-ALS-VNT-09・F-ECL-ALS-VNT-10・F-ECL-ALS-VNT-12 | PH-3（軌道）・PH-5（EVA） | D（実証） |

## 10. 能動熱制御系（ATCS）の要求

能動熱制御系（ATCS）（SSD-FD-ECL-ATCS-001 の下位）の L3 の要求 7件を示す。

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-ATCS-01 | フレオン21冷却ループを同じ構成の2系統とし、各ループはポンプ2台と窒素で加圧したアキュムレータを持ち、通常運用では両ループをそれぞれ1台のポンプで運転すること。 | ループ 2、ポンプ 各ループ 2台 | ATCS は同じ構成の2系統のフレオン冷却ループと、放熱器・フラッシュエバポレータ・アンモニアボイラの3つのヒートシンクから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）各ループの1台のポンプが常に運転され、アキュムレータは窒素で加圧されてポンプに正の圧力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/381）通常運用には、各ループで1台のポンプを運転して両ループを使うことが必要である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2074） | REQ-ECLSS-08 | F-TCS-FCL-01・F-TCS-FCL-02 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ATCS-02 | フレオンループは燃料電池熱交換器・中胴コールドプレート・水／フレオン熱交換器・ペイロード熱交換器・後部アビオニクスベイ4〜6のコールドプレートから熱を集め、ECLSS の酸素を約 40°F に温め、左舷の放熱器をループ1、右舷をループ2に直列につなぐこと。 | O2 約 40°F | フレオンは燃料電池熱交換器と中胴コールドプレート網を並列に流れ、ECLSS の酸素リストリクタで極低温の酸素を約 40°F に温め、後部アビオニクスベイ4・5・6を直列に流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382）左側の放熱器パネルはループ1に、右側はループ2に直列に接続される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384） | REQ-ECLSS-08 | F-TCS-FCL-03・F-TCS-FCL-04・F-TCS-FCL-05・F-TCS-HX-01・F-TCS-HX-02・F-TCS-HX-03・F-TCS-HX-04・F-TCS-HX-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-ATCS-03 | 1ループでの再突入を支えるため、各フレオンループはインターチェンジャの流量 1800 lb/hr 以上と後部コールドプレートの流量 211 lb/hr 以上を保ち、保てないループは喪失と判定すること。 | インターチェンジャ 1800 lb/hr、後部コールドプレート 211 lb/hr | インターチェンジャの流量 1800 lb/hr、後部コールドプレートの流量 211 lb/hr を保てないフレオンループは喪失とする。1800 lb/hr は1ループでの再突入に要る最小の流量である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2064）インターチェンジャの流量がいずれかのループで 1186 lbm/hr 未満になると FREON LOOP の警告灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） | REQ-ECLSS-09 | F-TCS-FCL-06 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-ATCS-04 | FES は上昇中の高度 140,000 ft 超から排熱し、軌道上では放熱器を補い、再突入では高度約 100,000 ft まで排熱して、主制御器でフレオンの出口温度を 39±1°F に保つこと。 | 出口 39±1°F（副制御器 62°F）、水 1 lb あたり約 1,000 Btu | FES は上昇中の 140,000 ft 超で使い、軌道上では必要に応じて放熱器を補い、軌道離脱・再突入では高度約 100,000 ft まで排熱する。主制御器は出口温度を 39±1°F に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389）出口温度が 37°F を20秒以上下回ると、低温で蒸発器を止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390） | REQ-ECLSS-08 | F-TCS-FES-01・F-TCS-FES-02・F-TCS-FES-03・F-TCS-FES-04・F-TCS-FES-06 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-ATCS-05 | 軌道上はペイロードベイドア内面の放熱器（有効放熱面積 1,195 ft2）で排熱して放熱器の出口温度を 38±2°F（HI では 57±2°F）に保ち、軌道離脱の準備で放熱器をコールドソークして再突入の後段のヒートシンクに使うこと。 | 1,195 ft2、出口 38±2°F（HI 57±2°F） | 放熱器の有効放熱面積は 1,195 ft2 で、前方の展開式パネルはドアから 35.5° 開き、コールドソークは再突入の後段のヒートシンクに使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384）放熱器の出口温度は NORM で 38±2°F、HI で 57±2°F に自動で制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/387） | REQ-ECLSS-08 | F-TCS-RAD-01・F-TCS-RAD-02・F-TCS-RAD-03・F-TCS-RAD-04・F-TCS-RAD-05 | PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ATCS-06 | 独立した2系統（各 49 lb）のアンモニア供給系と共通のボイラで、再突入の低高度と着陸後に地上冷却がつながるまでフレオンループを冷やし、主制御器の故障で出口温度が 31.25°F を10秒を超えて下回れば副制御器へ自動で切り替えること。 | タンク 2（各 49 lb）、31.25°F・10秒 | 各タンクは 49 lb のアンモニアを持ち、出口温度が 31.25°F を10秒を超えて下回ると副制御器へ自動で切り替わり、着陸後は地上冷却カートがつながるまで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）放熱器をコールドソークした場合は、放熱器の熱容量を使い切ってから一方の NH3 制御器を入れる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2083） | REQ-ECLSS-08 | F-TCS-NH3-01・F-TCS-NH3-02・F-TCS-NH3-03・F-TCS-NH3-04・F-TCS-NH3-05・F-TCS-NH3-06 | PH-2（上昇）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ATCS-07 | 打上げ前と着陸後は T-0 アンビリカルの GSE 熱交換器を地上冷却につないで排熱し、リフトオフから FES の起動まではループの熱容量で温度上昇を抑えること。 | 冷却カートの接続 着陸後 約30分以内 | GSE 熱交換器は打上げ前と着陸後のフレオンループのヒートシンクで、着陸後の冷却カートの接続は通常30分以内に行う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=100）リフトオフから約2分は、フレオンループの熱容量で温度上昇を抑え、能動の排熱を要しない。着陸後はアンモニアボイラが地上冷却カートの接続まで冷やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） | REQ-ECLSS-08 | F-TCS-GSE-01・F-TCS-GSE-02・F-TCS-GSE-03・F-TCS-GSE-04・F-TCS-GSE-05 | PH-1（打上げ前）・PH-2（上昇）・PH-7（着陸後） | D（実証） |

## 11. トレース表（ARS）

大気再生系（ARS）の下位の機能行 501行と、割り付けた要求を示す（要求あり 489行）。

| 文書 | 機能行 | 機能（要約） | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-01 | キャビン空気は3つのアビオニクス機器ベイとベイ内の一部の機器の冷却にも使われ、各ベイのクローズアウトカバーは気密ではない… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-02 | 3ベイは同一の空冷系を持ち、ベイごとに2台のファンをパネルL1のAV BAY 1・2・3 FAN A・Bスイッチで個別に… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-03 | ファンはベイの床から空冷機器と300ミクロンフィルタを通して空気を吸い込み、ファン出口空気はミッドデッキ床下のベイ熱交換… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-04 | 各ベイのファン出口温度はパネルO1のロータリスイッチ（AV BAY 1・2・3）でAIR TEMP計器に表示され、いずれ… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-05 | Av Bay 3Aのファンダクトは、ISSミッションでミッドデッキに収納するペイロードの追加冷却のため、より大型のキャビ… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-06 | GPC 1・4はベイ1、GPC 2・5はベイ2、GPC 3はベイ3にあってベイファンで強制空冷され、ベイの両ファンが故障… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-07 | ベイファン差圧が2.5 in H2O未満または4.3 in H2O超でファン喪失とし、キャビンファンと同型の改良型ファン… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-08 | 上昇・再突入でベイ空気出口温度を130（125）°F未満に保てない場合、軌道上14.7 psiでは稼働GPC 2台・1台… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-09 | 改良型アビオニクスベイファンは起動過渡電流が従来型より大きい（7.4 A/相、従来型は2.0 A/相）ため、MECO前に… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-10 | 1ベイの両ファン喪失は軌道到達可とし、単一の電気故障（AC母線）で2ベイの空冷を失いうる場合は次のPLSに入る（A17-… | REQ-ARS-27 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-11 | ベイファンは交流で動くGould製TACANも冷却し、冷却を失ったTACANは5分以内に短絡しうるため、上昇中でもベイフ… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-001 | F-ARS-AVB-12 | 3個のAv Bay信号調整器が、各ベイの温度センサとファン差圧センサに給電する（訓練マニュアル3.5節）。 | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-01 | 微小重力では対流による冷却が起きないため、ベイファンがベイ内に空気を循環させ、連続した強制空冷で置き換える（訓練マニュア… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-02 | ファンはベイの床から、該当する空冷機器と300ミクロンフィルタを通して空気を吸い込む（SCOM 2.9節）。 | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-03 | 各ベイのクローズアウトカバーはベイと乗員室の間の空気の出入りと温度勾配を抑えるが気密ではなく、実質的にはベイ内の閉ループ… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-04 | 訓練マニュアルの表3-2〜3-5は、各ベイ（1・2・3A・3B）の機器を強制空冷・自由流空冷・水冷に分けて示し、Av B… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-05 | GPC 1・4はベイ1、GPC 2・5はベイ2、GPC 3はベイ3にあってベイファンで強制空冷され、ベイの両ファンが故障… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-06 | 運用飛行規則は、ベイ入口温度95°F以下という設計要求の下で各LRUが最高運用温度を超えないようにベイ内の気流が配分され… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-07 | SODBはアビオニクス機器に入る空気を95°F未満、機器の出口を130°F未満とすることを求め、ベイでGPCを1台追加し… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-08 | 前方ベイ1〜3のインバータ分配組立は空冷である（SCOM 2.8節）。 | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-09 | 交流で動くGould製TACANは冷却を失うと5分以内に短絡しうることが示されており、ベイファンで冷却する必要がある（A… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-10 | ベイファンのフィルタ清掃はMCCの指示があるときだけ行い、ベイ1・2は収納区画Vol E（MD76C）、ベイ3AはVol… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-CIR-001 | F-ARS-AVB-CIR-11 | IOAのCIL評価（1988年）は、ベイ冷却用ダクト区間の流れの制限（ARS-2561X）の原因の一つを300ミクロンフ… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-01 | ベイ1・2・3Aにはそれぞれ2台のファンがあって常に1台を使い、ファンはミッドデッキ床下のECLSSベイで各ベイの下にあ… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-02 | ベイ1・2の各ファンは三相115 V ACの111 W電動機で駆動されてベイ内に通常875 lb/hrを流し、交流2相で… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-03 | 各ファン出口のフラッパ式逆止弁は非運転ファンを通る逆流を防ぎ、ファンが弁の前後に1 psiの差圧を生じると開く（訓練マニ… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-04 | 各ベイの2台のファンはパネルL1のAV BAY 1・2・3 FAN A・Bスイッチで個別に制御して通常は1台ずつ使い、O… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-05 | 各ファンはパネルL4の3個の遮断器から三相交流を受け、ベイ1のファンA・BはAC1・AC2、ベイ2はAC2・AC3、ベイ… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-06 | 故障処置手順の通常構成では、ベイ1とベイ3はファンB、ベイ2はファンAを運転する（MAL 6.1b）。 | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-07 | Av Bay 3Aのファンを三相115 V AC・495 Wのキャビンファンに換え、ミッドデッキのロッカーに収めるペイロ… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-08 | 改良型ファンはハウジングを除いてキャビンファンと同じで、1999年1月時点でOV-104のAv Bay 3Aに搭載され、… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-09 | IFMチェックリストの下部機器ベイ配置図（OV-104）は、Av Bay 3Aのファンパッケージを大型（キャビンファン）… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-10 | 従来型のベイファンは2相で再起動できるが、改良型ファンはキャビンファンと同じく2相では再起動できない（A17-154A）… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-11 | 交流の位相ずれでは、燃料電池ポンプ・フレオンポンプ・水ポンプとともにベイファンなど複数の三相モータが停止する（SCOM付… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-FAN-001 | F-ARS-AVB-FAN-12 | 1ベイの両ファンが故障し、そのうち1台の故障が電源によらない場合は、ファン組立（ファンと逆止弁）を他のベイの2台の良品の… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-01 | ファンは機器の熱を受け取った空気をベイ熱交換器へ吹き出し、ベイの熱はそこでARSの水冷却ループへ移される（訓練マニュアル… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-02 | ベイファンの出口空気は、ミッドデッキ乗員室の床下にあるそのベイの熱交換器で水冷却ループにより冷やされ、ベイへ戻る（SCO… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-03 | 各水冷却ループはポンプの下流で3つの並列経路に分かれ、ベイ1とベイ2の空気/水熱交換器とコールドプレート、および乗員室の… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-04 | ベイ1の経路では、水はまずベイ1の空気/水熱交換器を通ってベイの空気から熱を受け、次に25 ft²のコールドプレートを通… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-05 | ベイ3の経路は一部がMDMのコールドプレートを冷やし（大部分はバイパスする）、その後Av Bay 3Aと3Bに分かれ、3… | REQ-ARS-24 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-06 | ベイへの供給空気の温度は14.7 psiで最高95°Fが設計仕様で、ベイ熱交換器を出る空気は水冷却ループのポンプ出口温度… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-07 | 2つの水冷却ループを同時に運転するとインターチェンジャの能力を超えて水温が上がり、インターチェンジャ出口が63°Fに近づ… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-08 | 水冷却ループが故障するとキャビン熱交換器出口温度とベイの空気出口温度が目に見えて上がり、新しいループへの切替後はそれらが… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-09 | ベイを通る水冷却ループの経路の流れの制限でも、そのベイの温度が上がることがある（訓練マニュアル付録B.6）。 | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-HX-001 | F-ARS-AVB-HX-10 | 故障処置手順は、複数のベイで温度が高く上がり続けるかを確かめ、水冷却ループを切り替えて温度が下がる場合を水冷却ループの劣… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-01 | 3個のAv Bay信号調整器が、各ベイの温度センサとファン差圧センサに給電する（訓練マニュアル3.5節）。 | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-02 | 信号調整器にはパネルL4の遮断器を通して、ベイ1がAC3、ベイ2がAC1、ベイ3がAC2のB相から給電される（MAL 6… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-03 | 温度センサはミッドデッキ床下のファンプレナムで、ベイの空気/水熱交換器の近くにある。気流を失うとセンサは水冷却ループの温… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-04 | ファン下流の温度センサのデータはAIR TEMP計器に直接送られ、計器は75〜110°Fを通常範囲、130°Fをベイ空気… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-05 | ベイの空気出口温度はAV BAY/CABIN AIR灯（黄）の入力で、ハードウェアチャネル84・94・104がベイ1・2… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-06 | 温度と差圧はBFSとPASS SM OPS 2・4のSM SYS SUMM 2（DISP 79）に表示され、表示範囲は温… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-07 | C&W訓練マニュアルのFDA表は、ベイファン差圧のSM警報を2.5 in H2O未満・4.3 in H2O超（改良型ファ… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-08 | 差圧の限界外はSM警報となり、故障処置手順6.1cで処置する。10.2 psi運用では上限を3.3 in H2O（改良型… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-09 | 信号調整器の故障はBFSのSM SYS SUMM 2でベイ温度45 L・ファン差圧0.00 Lとして現れる。ファンの状態… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-10 | 運用飛行規則は、差圧はベイ冷却性能の粗い指標で、ベイ空気出口温度、稼働中の水冷却ループ熱交換器の入口・出口温度と水流量も… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-11 | OI MDM OF1を失うとAv Bay 3のファン差圧と温度が得られなくなり、Av Bay 3の両ファンを運転する。O… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-MON-001 | F-ARS-AVB-MON-12 | STS-54では、ベイ1〜3の空気出口温度は最高104・105・87°F、水コールドプレート温度は最高89・90・79°… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-01 | ファン差圧が2.5 in H2O未満（2相運転時の推定差圧に相当）または4.3 in H2O超（GPCの温度超過に基づく… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-02 | 上昇・再突入ではベイ空気出口温度を130（125）°F未満に保てない場合、軌道上ではキャビン圧（14.7・10.2・8 … | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-03 | 上昇中は、電源の入ったGould製TACANがあるベイのファンを失った場合は3分以内に予備のファンへ切り替え、Av Ba… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-04 | 改良型ファンは起動過渡電流が大きい（1相あたり7.4 A、従来型は2.0 A）ため、主エンジン制御器への電圧過渡を避けて… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-05 | ファン差圧トランスデューサを失った場合は、ファンの停止を検知できないため2台目のファンを入れて飛行終了まで運転する。改良… | REQ-ARS-25 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-06 | 1相を失った回転機器は予備に切り替える。改良型ファンは1台を失っても飛行期間に影響しないため、2相のまま運転を続けない（… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-07 | ベイファンを止めてよい時間は、GPCの冷却の制約から最大26分である（A18-501）。 | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-08 | ベイの火災では、そのベイのHalonボトルを放出してベイファンを止める。ファンの気流は火に酸化剤を送るためである（A17… | REQ-ARS-28 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-09 | 1ベイの両ファン喪失は軌道到達可とし、MECO後にTACAN・MLSを、OMS-1後にすべての空冷機器を再構成する。単一… | REQ-ARS-27 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-10 | Go/No-Go基準は、ベイ1・2の冷却喪失を2台のGPCの冷却喪失としてMDFとし、ベイ3の冷却喪失を空気流の喪失によ… | REQ-ARS-27 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-11 | 故障処置手順6.1bは、ベイ温度が130°Fを超えた場合の処置として、両ファンの運転、水冷却ループの切替（5分待って温度… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-AVB-OPS-001 | F-ARS-AVB-OPS-12 | GPCをRUNにする前（G2のセット拡張など）には、そのGPCのあるベイのファンがONであることを確かめる（軌道運用チェ… | REQ-ARS-26 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-01 | 循環空気は臭気・CO2・デブリ・電子機器の熱を拾い、乗員室容積2,300 ft³と毎分330 ft³の循環量から、約7分… | REQ-ARS-01 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-02 | 暖まったキャビン空気は300ミクロンフィルタを通って2台のキャビンファン（A・B）の1台に吸引され、各ファンはパネルL1… | REQ-ARS-01 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-03 | 各キャビンファンは三相115 V AC・495 Wの電動機で駆動され、キャビン空気ダクトに公称1,400 lb/hrの流… | REQ-ARS-01 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-04 | 各ファン出口のフラッパ式逆止弁は非運転ファンを通る逆流を防ぎ、2 in H2O（0.0723 psi）の差圧で開く。 | REQ-ARS-01 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-05 | キャビンファンはAC 2相では起動できないが、運転中に1相を失っても2相で運転を続け、同じAC母線の他の回転機器の誘起電… | REQ-ARS-02 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-06 | キャビンファン差圧はパネルF7の黄色AV BAY/CABIN AIR警報灯の入力の一つで、4.2 in H2O未満または… | REQ-ARS-04 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-07 | 運用飛行規則A17-101は、ファン差圧が4.20（4.49）in H2O未満または6.80（6.51）in H2O超で… | REQ-ARS-05 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-08 | キャビンファンはMECO前には切り替えない（起動電流8.0 Aによる電圧過渡が主エンジン制御器に影響しうるため）（A17… | REQ-ARS-05 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-09 | キャビンファン差圧トランスデューサを失った場合は、就寝中のファン停止を検知できないため、就寝期間は両キャビンファンを運転… | REQ-ARS-05 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-10 | 1相を失ったキャビンファンは、停止すると再起動できない可能性があり、キャビンファン1台の喪失はMDFとなるため、2相のま… | REQ-ARS-02 | 要求あり |
| SSD-FD-ARS-CAC-001 | F-ARS-CAC-11 | キャビンファンは還流空気を乗員室の電子機器のそばに通して強制空冷し、対象の機器（CRT、DEU、IDP、CCTVモニタ、… | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-01 | キャビンファンを出た約1,400 lb/hrの空気のうち、ダクト内のオリフィスで約120 lb/hrずつを2個のLiOH… | REQ-ARS-08 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-02 | 残りの主流は、キャビン熱交換器のすぐ上流でキャビン温度制御弁により熱交換器とバイパスに分けられる（訓練マニュアル3.2節… | REQ-ARS-08 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-03 | 乗員室容積2,300 ft³に対し毎分330 ft³を循環させ、約7分で1回、1時間に約8.5回空気が入れ替わる（SCO… | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-04 | 1979年の飛行運用マニュアルは、キャビンの公称の気流速度を25 ft/min、キャビン空気流量を約1,400 lb/h… | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-05 | 8 psiでの再突入でLiOHキャニスタを外すと、ファン1台の流量は820 lb/hr（装着時）から870 lb/hrに… | — | 要求なしで妥当（同じ文書の REQ-ARS-01・REQ-ARS-05・REQ-ARS-07 が受け持つ構成・運用の記述） |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-06 | エアロックにはキャビンファンの空気を回す吹出口がないため、乗員がダクトを張ってオービタの調整空気を送り、湿度を制御してC… | REQ-ARS-07 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-07 | ARSとエアロックのブースタファン・ダクトとの接続はミッドデッキ床の継手で行い、ブースタファン（2台、1台ずつ使用、三相… | REQ-ARS-07 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-08 | 外部エアロックのハッチを開けた後、乗員が床の継手からハッチ越しにダクトを張ってブースタファンにつなぎ、ハッチを閉じる前に… | REQ-ARS-07 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-09 | Spacehab・ドッキング飛行では、エアロック前方左のミッドデッキ床にARSホースのスクリーンがあり、フィルタ清掃の対… | REQ-ARS-07 | 要求あり |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-10 | IOAのCIL評価（1988年）は、還流・供給ダクト（ARS-3601X、NASA臨界度2/2）の外部漏れをダクト自体で… | — | 要求なしで妥当（同じ文書の REQ-ARS-01・REQ-ARS-05・REQ-ARS-07 が受け持つ構成・運用の記述） |
| SSD-FD-CAC-DCT-001 | F-CAC-DCT-11 | 故障処置手順は、ダクトの漏れや閉塞は、すべての吸込口と吹出口の気流を確かめれば見つけられる場合があるとする（MAL 6.… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-01 | キャビンファンは2台あって常に1台を使い、ミッドデッキ床下のECLSSベイにあり、パネルMD79Gから点検する（訓練マニ… | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-02 | 各ファンは三相115 V AC・495 Wの電動機で駆動され、キャビン空気ダクトに公称1,400 lb/hrを流す（SC… | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-03 | ファンの回転数は11,200 rpmで、ファン前後の通常の差圧は0.1〜0.3 psidである（1979年の飛行運用マニ… | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-04 | SCOMのECLSSの構成品一覧は、キャビンファンと逆止弁を組立（cabin fans and check valve … | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-05 | キャビンファンAはAC3、BはAC2の三相電力を、パネルL4の各3個の遮断器からパネルL1のCABIN FANスイッチを… | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-06 | パネルL1のCABIN FAN A・Bスイッチ（ON–OFF）は2個あり、同時に使うのは1個である（訓練マニュアル表3-… | REQ-ARS-01 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-07 | ファンは2相では起動できないが、運転中に1相を失っても運転を続け、同じAC母線の他の回転機器の誘起電圧で2-1/2相とな… | REQ-ARS-02 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-08 | JSCとRockwellの試験では、2相で起動したキャビンファンがファンの3 A遮断器を作動させた（A17-154A）。 | REQ-ARS-02 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-09 | 相を失った母線での起動には3個の遮断器をすべて閉じる必要があり、運転中は電力のない相の遮断器を開いておく（MAL EPS… | REQ-ARS-02 | 要求あり |
| SSD-FD-CAC-FAN-001 | F-CAC-FAN-10 | IOAのCIL評価（1988年）は、キャビンファン組立（ARS-3061X、NASA臨界度2/2）の外部への空気漏れで最… | — | 要求なしで妥当（同じ文書の REQ-ARS-01・REQ-ARS-02 が受け持つ構成・運用の記述） |
| SSD-FD-CAC-MON-001 | F-CAC-MON-01 | CABIN AIR信号調整器が、キャビンファン差圧・キャビン湿度（MCCのみ監視）・CO2分圧の各トランスデューサに給電… | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-02 | 差圧の圧力取出し口は、フィルタとファンの間と、ファンの下流のダクトにある（訓練マニュアル図3-12）。 | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-03 | 差圧は、OPS 1・3ではBFS SM SYS SUMM 1、OPS 2・4ではPASS SM SYS SUMM 1とS… | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-04 | キャビンファン差圧（V61R2556A、単位in H2O）はAV BAY/CABIN AIR灯の入力の一つで、訓練マニュ… | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-05 | 主C&Wのハードウェアチャネル74がキャビンファン差圧に割り当てられている（SCOM 2.2節）。 | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-06 | AV BAY/CABIN AIR灯（黄）は、チャネル74（キャビンファン差圧）・84・94・104（Av Bay 1〜3… | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-07 | 差圧の計測精度はフルスケール（8 in H2O）の±3.6%（0.288 in H2O）である（A17-101）。 | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-08 | 差圧の限界外は、SMの「SM1 CABIN FAN」「S66 CABIN FAN」メッセージとAV BAY/CABIN … | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-09 | OI MDM（OF1）を失うとキャビンファン差圧などの計測が得られなくなり、ファンの気流を手で感じて監視し、就寝中は両フ… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-10 | AC1を失ってCABIN AIR信号調整器が止まるとCO2分圧と差圧のセンサが失われ、起床中はストリーマ（搭載時）か手の… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-11 | STS-59では、キャビンファン差圧が前回のOV-105の飛行（STS-61）より低く、乗員室内のペイロードへの追加冷却… | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-MON-001 | F-CAC-MON-12 | STS-122では、粉塵対策のテープ覆いを付けたままの新しいLiOHキャニスタを装着した後、ファン起動後の差圧が交換前よ… | REQ-ARS-04 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-01 | キャビンファンは、差圧が4.20（4.49）in H2O未満または6.80（6.51）in H2O超で、かつ乗員が気流の… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-02 | MECO前はキャビンファンを切り替えない。第1段では交流負荷がほぼ最大で、起動電流8.0 Aによる電圧過渡が主エンジン制… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-03 | 訓練マニュアルは、MECO前の切替では新しいファンの起動時のAC過渡で同じ母線の主エンジン制御器2台を失うおそれがあると… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-04 | 差圧の異常時は予備のファンに切り替え、表示の変化から計測器の故障、ファンの故障または逆止弁の開閉固着、デブリトラップ・フ… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-05 | 差圧トランスデューサを失った場合は、就寝中のファン停止を検知できないため就寝期間に両ファンを運転する。起床中は音でファン… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-06 | 1相を失ったキャビンファンは、止めると再起動できないおそれがあり、1台の喪失はMDFとなるため2相のまま運転を続ける。残… | REQ-ARS-02 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-07 | AC2またはAC3の1相を失い停止中のファンが影響を受ける場合は、残る2相で起動できることを軌道上で実証しなければ喪失と… | REQ-ARS-02 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-08 | 2相起動の手順では、同じ母線の三相機器を運転して誘起電圧を作ってから大型ファンを起動し、ファンの停止は表示装置の冷却のた… | REQ-ARS-02 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-09 | 冗長のファンが使えずに交流電力移送ケーブルでファンに給電する場合は、コンセントの3 A遮断器の制約から、キャビンファンと… | REQ-ARS-02 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-10 | 冷却機器の最大停止時間は、キャビンファンでは旧DDUを搭載する場合20分、MDUの場合30分である（A18-501）。 | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-11 | キャビン火災ではキャビンファンを止める。ファンの気流が火に酸化剤を送るためである（A17-53B）。 | REQ-ARS-06 | 要求あり |
| SSD-FD-CAC-OPS-001 | F-CAC-OPS-12 | 両キャビンファンを失った場合は、軌道到達と再突入のために直ちに電力を下げ、機器を大幅に入切りする必要がある（A2-301… | REQ-ARS-05 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-01 | 循環空気はミッドデッキとフライトデッキの還流ダクトからフィルタへ引き込まれ、糸くずや毛髪などの粒子が除かれる（1979年… | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-02 | キャビンファンは電子機器のそばを通して空気を吸い込み、それらの機器を強制空冷する（訓練マニュアル3.2.1節）。 | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-03 | 訓練マニュアル表3-1は、キャビン空気で強制空冷する機器（CRT、DEU、IDP、CCTVモニタ、RCU/VSUなど）と… | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-04 | 暖まったキャビン空気は300ミクロンフィルタを通って、2台のキャビンファンの1台に吸い込まれる（SCOM 2.9節）。 | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-05 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、キャビンファンの付近にデブリトラップとMD79Gのフィルタ点… | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-06 | 軌道上のフィルタ清掃は、空気中の汚染を抑え、過熱による機器の損傷を防ぐために行い、キャビンファンのフィルタはMCCの指示… | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-07 | キャビンファンのフィルタ清掃は、ファンを止めてMD79Gとフィルタ点検口を開け、専用工具で3枚のフィルタを清掃し、ファン… | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-08 | WCS区画の後部隔壁にキャビン空気の吸込口があり、そのスクリーンは外さずに清掃する（IFM 4-4）。 | REQ-ARS-03 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-09 | STS-8では浮遊するデブリが次第に増え、キャビンファンのフィルタを3回清掃して毎回青灰色の物質が捕集されたが、ろ過能力… | — | 要求なしで妥当（同じ文書の REQ-ARS-03・REQ-ARS-06・REQ-ARS-15 が受け持つ構成・運用の記述） |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-10 | RCRS搭載時は、キャビンファンの上流からキャビン空気の一部（ARSの全流量の約6%）をRCRSに通し、除去後の空気をフ… | REQ-ARS-15 | 要求あり |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-11 | IOAのCIL評価（1988年）は、還流ダクト（ARS-3604X、NASA臨界度2/2）の流れの制限を、気流中の部品が… | — | 要求なしで妥当（同じ文書の REQ-ARS-03・REQ-ARS-06・REQ-ARS-15 が受け持つ構成・運用の記述） |
| SSD-FD-CAC-RTN-001 | F-CAC-RTN-12 | 両キャビンファンが故障して乗員室の空気が循環しない場合は、乗員室の煙検知を喪失とみなす（A17-2B）。 | REQ-ARS-06 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-01 | キャビンファンを出た約1,400 lb/hrの空気のうち、ダクト内のオリフィスで約120 lb/hrずつを2個のLiOH… | REQ-ARS-08 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-02 | キャニスタは所定のスケジュールで通常1日1〜2回（大人数の乗員ではより頻繁に）、ミッドデッキ床のアクセスドアから交換する… | REQ-ARS-10 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-03 | 各キャニスタの定格は48 man-hoursで、予備は最大30個をキャビン熱交換器と水タンクの間の床下ロッカーに収納する… | REQ-ARS-12 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-04 | キャニスタ交換中はキャビンファンを止める（ファンが巻き上げたLiOH粉塵で目や鼻の刺激が生じた例があり、湿度分離器故障の… | REQ-ARS-10 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-05 | キャビン熱交換器を出た再生・調整済み空気の一部はCO除去装置ATCO（常温触媒酸化器）へ送られ、COがCO2に変換される… | REQ-ARS-13 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-06 | 火災の鎮火後はWCSのチャコールフィルタ、ATCO、LiOHキャニスタで燃焼生成物をキャビン大気から除去する。 | REQ-ARS-06 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-07 | LiOHキャニスタは通常、就寝前と起床後、またはPPCO2が7.6（6.1）mmHg以上と確認されたときに交換する（A1… | REQ-ARS-10 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-08 | 未使用のLiOHキャニスタを最低2日分予備に保持してPPCO2 7.6 mmHgを上限として守り、目安として7.6 mm… | REQ-ARS-12 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-09 | ARSがPPCO2を15 mmHg未満に保てない場合は乗員がQDMを着用して次のPLSで飛行を終了し、7.6〜15 mm… | REQ-ARS-10 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-10 | CO2・湿度制御の代替手段は、エアロック減圧弁によるキャビンのパージ（または部分排気）である（A17-1001 注[10… | REQ-ARS-10 | 要求あり |
| SSD-FD-ARS-CO2-001 | F-ARS-CO2-11 | キャビン空気のCO2分圧（PPCO2）は、LiOHキャニスタへの分岐の手前のダクトに接続したトランスデューサで測り、SM… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-01 | キャビンファン出口のダクトでは2個のLiOHキャニスタとオリフィスが並列に並び、オリフィスによって各キャニスタに約120… | REQ-ARS-08 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-02 | LiOHキャニスタはECLSSベイにあり、ミッドデッキ床の開口MD54Gから交換する（訓練マニュアル3.2.2節）。 | REQ-ARS-08 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-03 | CO2吸収器の使用位置はMD54G、搭載時の収納位置はMD52Mである（SCOM 2.24節）。 | REQ-ARS-08 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-04 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、CO2吸収器をMD54Gの付近に示す。 | REQ-ARS-08 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-05 | 8 psiでの再突入では時間が許せばLiOHキャニスタを取り外し、キャビンファン1台の流量を820 lb/hr（装着時）… | REQ-ARS-08 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-06 | A17-151Bの取外しは、乗員が打上げ・再突入用与圧服（LES）のヘルメットを着用しているか、PPCO2が管理下にある… | REQ-ARS-08 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-07 | RCRS搭載機では打上げ用と再突入用にLiOHキャニスタを1個ずつ使い、もう一方のCO2吸収器スロットには臭気を除く活性… | REQ-ARS-18 | 要求あり |
| SSD-FD-CO2-ABS-001 | F-CO2-ABS-08 | STS-135では交換口（ARS LiOHサービスドア）のラッチの1個が外れずキャニスタを交換できなくなり、軌道上の保守… | — | 要求なしで妥当（同じ文書の REQ-ARS-08・REQ-ARS-18 が受け持つ構成・運用の記述） |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-01 | キャビン熱交換器を出た再生・調整済み空気の一部をATCOへ送り、COをCO2に変換する（SCOM 2.9節）。 | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-02 | ATCOは乗員が出すCOと、キャビン内の非金属材料のガス放出によるCOを除去し、生じたCO2はLiOHキャニスタで除かれ… | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-03 | ATCOはキャビン熱交換器のすぐ下流にあり、触媒は白金2%・炭素担体である（訓練マニュアル3.2.6節）。 | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-04 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、ATCOをキャビン熱交換器の近くに示す。 | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-05 | 1979年の飛行運用マニュアルの時点では、CO除去装置は採用が承認されたばかりで設計が完了しておらず、「Ambient … | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-06 | ATCOはSTS-4で初めて飛行し、性能評価の飛行試験要求（FTR 61VV002）は触媒の化学分析と飛行中のキャビン大… | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-07 | STS-4報告は、キャビン大気試料で検出された化合物の数が減ったのはATCOを搭載した効果である可能性が高いとしている。 | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-08 | 火災の鎮火後はWCSのチャコールフィルタ、ATCO、LiOHキャニスタで燃焼生成物をキャビン大気から除去する（SCOM … | REQ-ARS-06 | 要求あり |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-09 | Monje（2015年）はシャトルのATCO触媒を白金2%・炭素担体とし、COの宇宙機最大許容濃度（SMAC）を7日で5… | — | 要求が抜けている（本書の判断。今後の課題） |
| SSD-FD-CO2-ATCO-001 | F-CO2-ATCO-10 | NASAは1970年代にシャトルの常温CO酸化触媒として白金2%・炭素担体を選び、シャトルの設計空間速度での新しい触媒の… | REQ-ARS-13 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-01 | キャニスタ内の活性炭が臭気を抑え、CO2はLiOHと反応して炭酸リチウムになることで空気から除かれる（訓練マニュアル3.… | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-02 | LiOHとCO2の反応では、CO2 1 lbあたり875 Btuの熱が出る（1979年の飛行運用マニュアル）。 | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-03 | 廃水タンクの増加率は、代謝による水とLiOHとCO2の反応で生じる水を合わせて、過去の飛行で乗員1人あたり約0.25 l… | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-04 | キャニスタ1個の定格は48 man-hoursである（SCOM 2.9節）。 | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-05 | LiOHによるCO2除去量の設計値は乗員1人1日あたり2.11 lbである（訓練マニュアル3.6.5節）。 | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-06 | キャニスタは直径6.68 in、長さ11.3 in、質量6.73 lbである（飛行運用マニュアル第12巻）。 | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-07 | キャニスタの外殻は6061系アルミニウム合金で、内側のNomexの袋が外殻が割れてもLiOHを保持する。使用後は地上のL… | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-08 | STS-59では同じ製造ロットの外殻2個が割れ（STS-51・STS-56でも同ロットで発生）、化学ミリング加工の削り過… | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-09 | LiOHキャニスタはHF・HBr・HCl・フッ素・臭素を吸収するが、活性炭は1/4 lbしかなくHCNの除去は約15分が… | REQ-ARS-06 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-10 | 臭気対策として、STS-3以降は活性炭キャニスタを搭載し、臭気が問題になれば2つのLiOHキャニスタスロットの1つに装着… | REQ-ARS-09 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-11 | 火災後は、HClが5 ppm未満になるか軌道離脱噴射まで3時間未満になったら、LiOHキャニスタ1個をATCOキャニスタ… | REQ-ARS-06 | 要求あり |
| SSD-FD-CO2-CAN-001 | F-CO2-CAN-12 | EVA後のキャビン除染ではATCOキャニスタ2個を装着してヒドラジン類とアンモニアを除去し、各ATCOキャニスタは公称の… | REQ-ARS-06 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-01 | CABIN AIR信号調整器が、キャビンファン差圧・キャビン湿度（MCCのみ監視）・CO2分圧の各トランスデューサに給電… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-02 | PPCO2トランスデューサは、キャビンファン下流でLiOHキャニスタへ分かれる手前のダクトに接続されている（訓練マニュア… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-03 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、PPCO2センサをキャビンファンの近くに示す。 | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-04 | PPCO2はSM OPS 2・4のSM表示DISP 66（ENVIRONMENT）に表示される（訓練マニュアル3.5.1… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-05 | PPCO2の上限は長期で7.6 mmHg、最大2時間で15 mmHgである（SODB 3.4.6.1節）。 | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-06 | RCRS搭載機でPPCO2を把握できなくなった場合は、LiOHキャニスタを定期的に装着・交換してCO2を管理する（A17… | REQ-ARS-18 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-07 | IOAのCIL評価（1988年）では、PPCO2センサ（1個）の臨界度をNASAは2/2、IOAは3/3としたが、NAS… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-08 | オービタ・Spacehab・宇宙服（EMU）のPPCO2計測用に、応答が遅く電解液の信頼性に懸念のある電気化学式センサに… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-09 | STS-108では、キャビン圧を10.2 psiaとしていた間のセンサ表示6.02 mmHgが、Hamilton Sun… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-MON-001 | F-CO2-MON-10 | COなどの燃焼生成物はCSA-CP（CO・HCN・HClを実時間で分析する携帯型分析器）で測り、通常は飛行1日目に取り出… | — | 要求が抜けている（本書の判断。今後の課題） |
| SSD-FD-CO2-MON-001 | F-CO2-MON-11 | CSA-CPより前に使われた燃焼生成物分析器（CPA）はCO・HF・HCl・HCNを測る携帯型分析器で、STS-41（1… | — | 要求なしで妥当（同じ文書の REQ-ARS-10・REQ-ARS-11・REQ-ARS-18 が受け持つ構成・運用の記述） |
| SSD-FD-CO2-MON-001 | F-CO2-MON-12 | 携帯型のCO2モニタ（CDM）は電池で約10時間動作し、キャビン内のCO2を計測できる（Orbit Opsチェックリスト… | REQ-ARS-11 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-01 | 予備のLiOHキャニスタは最大30個を、ECLSSベイのパネルMD52Mの下に収める（訓練マニュアル3.2.2節）。 | REQ-ARS-12 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-02 | LiOHキャニスタ区画の寸法は22.25×39.12×30.08 in、収納ラックは21×7.30×12.52 in・2… | REQ-ARS-12 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-03 | キャニスタは床下の収納区画から取り出して、ファン下流の環境制御系に装着し、定期的に交換する（飛行運用マニュアル第12巻）… | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-04 | LiOHキャニスタは通常、就寝前と起床後、またはPPCO2が7.6（6.1）mmHg以上と確認されたときに交換し、1個交… | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-05 | 就寝前と起床後のミッドデッキ作業では、それぞれ2個のうち1個のキャニスタを交換する（SCOM）。 | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-06 | 打上げ前はL-5:30に始まるASPチェックリストでLiOHキャニスタを装着する（SCOM）。 | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-07 | 交換中は両方のキャビンファンを止める。キャニスタの粉塵がファンで舞い上がり、目や鼻の刺激を起こした例がある（訓練マニュア… | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-08 | ISSに備蓄したキャニスタを使うときは、LiOH粉塵への暴露を減らすため保護具を着用する（Orbit Opsチェックリス… | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-09 | 未使用のLiOHキャニスタを最低2日分予備に保持し、使用済み（袋詰め）キャニスタは能力を解析でしか評価できないためレッド… | REQ-ARS-12 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-10 | 飛行延長で使用済みキャニスタを使う場合は、LiOHが1 lbm以上残るものだけを対象とし、なるべく早く使い、新しいキャニ… | REQ-ARS-10 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-11 | LiOHキャニスタの数と乗員数が飛行終了（EOM）の時期を決める（A17-1001注[11]）。 | REQ-ARS-12 | 要求あり |
| SSD-FD-CO2-STW-001 | F-CO2-STW-12 | STS-108では係留中にISSの装置が両機のPPCO2の大部分を管理し、交換計画より12個のLiOHキャニスタを節約し… | REQ-ARS-12 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-01 | 3台のIMUは、3台のファンの1台がキャビン空気を300ミクロンフィルタを通して吸い込み3台のIMUに流すことで冷却され… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-02 | ファン出口空気はフライトデッキのIMU熱交換器を通って水冷却ループで冷却されてから乗員室へ戻る。 | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-03 | 各ファンはパネルL1のIMU FANスイッチでON/OFFし、1台で3台のIMUすべてを冷却できるため通常は1台で足り、… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-04 | 強制空冷は3台のIMUすべてに供する3台のファンで構成され、同時に使うのは1台で、3台は冗長のために設けられている。 | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-05 | 上昇中は、主エンジン制御器を失いうるAC母線間短絡を防ぐため、湿度分離器とIMUファンの信号調整器を断電する（STS-6… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-06 | IMUファン差圧はBFSのSM SYS SUMM 1（DISP 78）にIMU FAN DPとして表示される。 | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-07 | ファン差圧が3.70（3.94）in H2O未満または4.95（4.71）in H2O超、あるいは選択時の回転数表示が1… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-08 | キャビンファン以外の回転機器（IMUファンを含む）は1相を失ったら代替機に切り替える（A17-154A）。 | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-09 | IMUファン3台すべての喪失はIMUのサイクル運用で軌道到達可とし、軌道上で掃除機のファンを取り付け、初日のPLSに入る… | REQ-ARS-27 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-10 | IMUファンを止めておける時間は、IMUの冷却の制約から45分までである（A18-501C）。 | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-001 | F-ARS-IMU-11 | 冷却空気の流路は、吸込みスクリーン・デブリトラップの目詰まりにはIMUフィルタの清掃（IFM）で、空気ダクトの閉塞にはI… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-01 | IMUファンは3台あって通常は1台を運転し、各ファンは三相115 V ACの50 Wの電動機で駆動されて公称144 lb… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-02 | ファンはアビオニクスベイ1にあり、1台で3台のIMUすべてを冷却できるため通常は1台で足りる（SCOM 2.9節）。 | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-03 | 3台のファンは並列で、どの1台でも必要な流量が得られる（1979年の飛行運用マニュアル）。 | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-04 | SCOMのGNCの節は、強制空冷は3台のIMUに共通の3台のファンから成り、同時に使うのは1台で、3台は冗長のために設け… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-05 | 各ファン出口の逆止弁が非運転ファンを通る逆流を防ぎ、フラッパ式の逆止弁はファンが弁の前後に1 psiの差圧を生じると開く… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-06 | パネルL1にIMU FAN A・B・Cの3個のスイッチ（ON–OFF）があってファンに電力を加え、同時に使うのは1個であ… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-07 | ファンA・B・Cは、パネルL4の各3個の遮断器からそれぞれAC1・AC2・AC3の三相電力をL1のスイッチを通して受ける… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-08 | IMUワークブックは、各IMUファンが別々の交流電源から給電され、スイッチはパネルL1、遮断器はパネルL4にあるとする。 | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-09 | 運用飛行規則A17-154Aは、キャビンファンと改修型のアビオニクスファンを除く機器は2相で再起動できるとする。 | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-10 | IFMチェックリストのアビオニクスベイ1の配置図には、IMUファンのダクト（IMU FAN DUCTS）が示されている（… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-11 | IOAのCIL評価（1988年）は、非運転ファン2台の逆止弁が故障するとIMU熱交換器を完全に迂回する空気の循環ループが… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-FAN-001 | F-ARS-IMU-FAN-12 | 消音器の追加でIMUファンの2,000 Hz付近の騒音は大きく下がり、その後4個の消音器は4室を持つ一体型の消音器に改め… | — | 要求なしで妥当（同じ文書の REQ-ARS-29・REQ-ARS-30 が受け持つ構成・運用の記述） |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-01 | 暖まった空気はIMU熱交換器へ送られてARSの水冷却ループに熱を渡し、冷えた空気は乗員室へ戻る（訓練マニュアル3.2.8… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-02 | ファン出口の空気はフライトデッキにあるIMU熱交換器を通り、水冷却ループで冷やされてから乗員室へ戻る（SCOM 2.9節… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-03 | 1979年の飛行運用マニュアルも、空気は乗員室へ戻る前にIMU熱交換器で冷やされるとする。 | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-04 | 水冷却ループでは、インターチェンジャで冷えた水がLCG熱交換器、ギャレーの水チラー、キャビン熱交換器、IMU熱交換器の順… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-05 | 水冷却ループは、キャビン熱交換器、IMU熱交換器、アビオニクスベイのコールドプレートと熱交換器から熱を集め、ATCSへ渡… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-06 | 2系統の水冷却ループを長時間同時に運転してインターチェンジャの熱移送能力を超えると、インターチェンジャの系統の水温が上が… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-07 | STS-1の消耗品・熱解析の表VIは、IMU冷却空気の出口温度の解析値108.2°Fを仕様上限130°Fと比べた（JSC… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-08 | 運用飛行規則A17-104は、ΔP 3.7 in H2Oで流量が約185 lb/hrとなり、これが健全な系でファンが出せ… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-09 | 故障処置手順6.1dでは、空気ダクトの漏れがΔPの低下を招いた場合に、IMUのダクトの漏れを点検し、パッチキットのアルミ… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-10 | 空気ダクトが閉塞した場合は、IFMのIMU緊急冷却で冷却を回復する（MAL 6.1d）。 | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-11 | IOAのCIL評価（1988年）は、IMU熱交換器（ARS-221）について、NASAのFMEAは熱交換器へのダクトを扱… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-HEX-001 | F-ARS-IMU-HEX-12 | IOAは、IMU熱交換器自体からの外部漏れ（ARS-2211X、NASA臨界度2/2）は起こりえない故障とみなしつつ、熱… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-01 | IMUファンはキャビン空気をIMUの上に引き込み、IMUが発生した熱を空気に移して冷却する（訓練マニュアル3.2.8節）… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-02 | 3台のIMUは、3台のファンの1台がキャビン空気を300ミクロンフィルタを通して吸い込み、3台のIMUを横切って流すこと… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-03 | IMUの熱制御は内部ヒータと強制空冷から成り、強制空冷はファンがキャビン空気を各IMUの筐体に通すもので、内部ヒータが働… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-04 | 1979年の飛行運用マニュアルは、IMUをキャビンから300ミクロンフィルタを通して吸い込んだ空気で冷やし、ファンのすぐ… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-05 | IMU #1・2・3のフィルタ・スクリーンはミッドデッキ天井のパネルMO42F・MO58Fの上前方にあり、スクイーズラッ… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-06 | 故障処置手順6.1dでは、IMUファンΔPの異常の切り分けで吸込みスクリーンの閉塞を点検し、デブリトラップの目詰まりによ… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-07 | STS-125では、IMUファンΔPの上昇に対してMCCが乗員にIMUフィルタの点検を求め、乗員は3枚のフィルタがほぼ同… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-08 | IMU出口ホース（3本）はIMUマニホールドにつながり、IMUの緊急冷却ではこれらをマニホールドから外して掃除機のホース… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-09 | STS-1の消耗品・熱解析は、IMUを通る空気流量を156 lb/hr（14.7 psia）とした（JSC-16720 … | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-10 | 同じ解析の表VIは、IMU冷却空気の入口温度の仕様上限を95°F（解析値79.6°F）とし、SODBの入口の上限は95°… | REQ-ARS-29 | 要求あり |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-11 | IMU冷却系は当初オービタで最も大きな騒音源で、GFEの消音器（入口3個・出口1個）が追加された（Goodman、NOI… | — | 要求が抜けている（本書の判断。今後の課題） |
| SSD-FD-ARS-IMU-INL-001 | F-ARS-IMU-INL-12 | STS-2の騒音調査では、ミッドデッキのIMU吸込口で68 dBが計測された（STS-2報告2.5.5節）。 | — | 要求なしで妥当（同じ文書の REQ-ARS-29・REQ-ARS-31 が受け持つ構成・運用の記述） |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-01 | IMU FAN信号調整器はIMUファンが正常に回っていることを確かめる回転数センサに給電し、H2O BYP LOOP 1… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-02 | IMU FAN信号調整器には、パネルL4の遮断器（SIG CONDR IMU FAN）からAC3のB相の電力が供給される… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-03 | IMUファンΔPセンサには、パネルO14のMNAの遮断器（H2O BYP LOOP 1 SNSR）から電力が供給される（… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-04 | IMUファンΔPはBFSのSM SYS SUMM 1（DISP 78）に表示され、表示範囲は0〜7 in H2Oである（… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-05 | SPEC 66 ENVIRONMENT（DISP 66、SM OPS 2・4）は、IMUファンA・B・Cのうち運転中のフ… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-06 | 各表示は運転中のファンに「*」を付け、その右に状態を示す。空白は正常、「M」はデータなし、「↓」は運転していたファンの回… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-07 | ΔPまたは回転数の異常はSMアラートのメッセージ（「S66 IMU FAN DP」「S66 IMU FN SPD A(B… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-08 | ΔPの計測精度はフルスケール（7 in H2O）の±3.4%（0.238 in H2O）で、選択したファンの回転数表示は… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-09 | ΔPが失われたときは、回転数センサの「↓」表示でファンの故障を監視する（MAL 6.1d）。 | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-10 | OI MDM（OF1）を失うとIMUファンΔPとファンAの回転数センサが得られなくなり、ファンAで運転中ならファンB（C… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-11 | AC3母線を失うとIMU FAN信号調整器が止まり、IMUファンA・B・Cの回転数の正常表示センサがすべて失われる（MA… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-MON-001 | F-ARS-IMU-MON-12 | STS-125では、IMUファンΔPが飛行規則の限界（4.71）を上下するまで上昇したが、計測値が0.224 in H2… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-01 | 搭乗時にはIMUファン1台が運転済みで、上昇中はAC母線間の短絡で主エンジンを失うのを防ぐため、HUM SEPとIMU … | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-02 | 上昇中の交流負荷の管理では、キャビンファン・IMUファン・湿度分離器の再構成はMECO後まで要らないとする（A9-154… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-03 | IMUファンは、ΔPが3.70（3.94）in H2O未満または4.95（4.71）in H2O超の場合か、選択時に回転… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-04 | 故障処置手順6.1dの公称構成はファンBの運転で、ΔPが3.7未満・4.95超（10.2 psi運用では3.0未満・3.… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-05 | 1相を失った回転機器（キャビンファンを除く）は代替機に切り替える。2相での運転の寿命は（新品の機器で）168時間と確かめ… | REQ-ARS-30 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-06 | 冷却機器の最大停止時間は、IMUの冷却の制約からIMUファンでは45分である（A18-501C）。 | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-07 | 有害物質（レベル3）がこぼれた場合は、拡散を防ぐためにフライトデッキの乗員がキャビンファンとIMUファンを止める。IMU… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-08 | アビオニクスベイにHalonを放出した後の電源断でもIMUファンは止めない。ファンはアビオニクスベイ（1）内にあり、ベイ… | REQ-ARS-28 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-09 | IMUファン3台すべての喪失は、IMUのサイクル運用で軌道到達可とし、軌道上で掃除機のファンを取り付け、初日のPLSに入… | REQ-ARS-27 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-10 | IMUの緊急冷却（IFM）は、3台のIMUファンがすべて故障したときに限り、掃除機をIMUファンの代わりに使って周囲の空… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-11 | ファンは3重の冗長で、1台が故障しても他の2台のどちらかを起動してIMUを冷却できるため、ファンの故障はIMUの内部ヒー… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-IMU-OPS-001 | F-ARS-IMU-OPS-12 | STS-125では、ΔPの上昇に対してファンBからファンAへ切り替え、約65分後にファンCを起動して約3分間ファンAと並… | REQ-ARS-31 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-01 | 再生式CO2除去装置（RCRS）は長期単独飛行向けでOV-105のみがハードウェア能力を持つが、ISS係留中は不要で今後… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-02 | CO2は2個の同一の固体アミン樹脂ベッドの一方にキャビン空気を通して除去し、樹脂（多孔質ポリマ基材にPEI吸着剤を被覆）… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-03 | 一方のベッドが吸着する間に他方は加熱と真空排気で再生するため上昇・再突入中は使えず、吸着と再生は13分ごとに自動で切り替… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-04 | RCRS搭載機は打上げと再突入にLiOHキャニスタを1個ずつ使い、もう一方のCO2吸収器スロットの活性炭キャニスタで臭気… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-05 | RCRSはミッドデッキ床下のvolume Dに設置し、主要部品は化学ベッド2個、真空サイクル弁と均圧弁、RCRSファン、… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-06 | 流量制御弁は打上げ前に乗員数「4」または「5〜7」に設定し、RCRSを通る空気流量をそれぞれ72 lb/hrまたは110… | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-07 | 制御スイッチはパネルMO51Fにあり、コントローラ1・2のAC・DC電源、OPER/STBYを選ぶ3位置モーメンタリスイ… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-08 | PPCO2を7.6 mmHg未満に保てない場合またはPPCO2の把握を失った場合はRCRS喪失とし、両コントローラ（A・… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-09 | RCRSは真空源が無い上昇・再突入では停止し、軌道上ではOMS-2後なるべく早く起動して軌道離脱噴射前なるべく遅く停止し… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-10 | キャビンまたはアビオニクスベイの火災後はRCRSを手動停止し（HCl・HF・HCNが固体アミンに不可逆に吸着するため）、… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-001 | F-ARS-RCRS-11 | 再生に入るベッドの空気は、ullage-save圧縮機での吸出し（ステート4）と均圧弁による両ベッドの均圧（ステート5）… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-01 | CO2は同一の固体アミン樹脂の化学ベッド2個で除去し、一方のベッドが吸着する間に他方が再生する（訓練マニュアル付録C.2… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-02 | 樹脂は多孔質のポリマ基材にポリエチレンイミン（PEI）の吸着剤を被覆したもので、0.5 mmの小さな多孔質の球に被覆して… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-03 | 樹脂はキャビン空気中の水蒸気と結合して水和アミンとなり、これがCO2と弱い重炭酸結合を作る。乾いたアミンはCO2と直接反… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-04 | 再生中のベッドは熱処理と真空排気でCO2を脱着する。吸着中のベッドで生じた熱を再生中のベッドへ移して重炭酸結合を切り、放… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-05 | RCRSは機体の既存の真空ベント管を使って脱着中のベッドを排気する（訓練マニュアル付録C.2.2）。 | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-06 | 真空による脱着は4組の真空サイクル弁（VCV）で制御し、各ベッドの入口と出口にある弁が、吸着中の通気、脱着のための真空へ… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-07 | 各VCVは空気ポペットと真空ポペットを持ち、アクチュエータAはベッドAの空気ポペットとベッドBの真空ポペットを、アクチュ… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-08 | 吸着の工程は10分54秒で、その間に他方のベッドはCO2を真空へ脱着する（訓練マニュアル付録C.2.3のステート2・8）… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-09 | 制御器に電源を入れた直後の起動シーケンスでは、固体アミンの劣化でベッドAにたまったアンモニアを除くため、ベッドAを2分間… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-10 | 真空ベント隔離弁が閉じた場合、真空ベントダクトが詰まった場合、ARSのダクトに漏れがある場合は、RCRSのCO2除去は効… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-BED-001 | F-ARS-RCRS-BED-11 | 火災の燃焼生成物のうちHCl・HF・HCNは固体アミンと不可逆に反応し、通常運転で真空に曝しても除かれずに吸着部位に残っ… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-01 | 作動中の制御器の制御論理がRCRSの運転サイクルを管理し、各構成品と計装へ出力信号と電力を供給し、計装からの入力で故障を… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-02 | 2台の制御器のうち作動するのは1台で、同時に作動させると制御器1が制御器2に優先する。2台を同時に給電する手順はない（訓… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-03 | 運転シーケンスは周期的な工程で、起動直後の始動期間の後は26分ごとに繰り返す。当初は30分周期で設計されたが、吸着性能を… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-04 | 運転シーケンス（図C-5）は、ベッドAが吸着しベッドBが再生する半周期と、ベッドを入れ替えた半周期から成り、各半周期は吸… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-05 | SCOMは、吸着と再生が13分ごとに自動で入れ替わり、13分の工程2回で1周期となるとする。 | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-06 | パネルMO51Fには、制御器1・2のAC・DC電源スイッチ、OPER（運転シーケンスの開始）とSTBY（待機、シーケンス… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-07 | 交流電源の遮断器はMO51Fの電源スイッチの下に、直流の遮断器はパネルML86B:Eにある。制御器1はAC1とMN A、… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-08 | 故障検知の論理は各パラメータ・圧縮機回転数・RCRSの弁位置を監視し、故障を検知するとRCRSを停止して、MO51Fの該… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-09 | RCRSは自動の制御器を必要とし手動で運転する手段がないため、両制御器（A・B）が故障すると運転できない。自動停止の論理… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-10 | 故障処置手順6.8aは、MO51Fの表示灯とSPEC 66の表示から、MN A（C）電源の喪失、AC1（3）φA電源の喪… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-11 | 故障処置手順6.8aの注記は、系統が11分ごとに2分6秒間ベッドを隔離することと、系統の1周期に26分かかることを示す（… | REQ-ARS-14 | 要求あり |
| SSD-FD-ARS-RCRS-CTL-001 | F-ARS-RCRS-CTL-12 | Orbit Opsチェックリストの表示灯試験では、MO51FのRCRS CNTLR 1・2の灯（各2個）が点灯することを… | REQ-ARS-16 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-01 | キャビン空気の一部をARSのキャビンファンの上流から取り出してRCRSに通し、RCRSを流れる空気はARSの全流量の約6… | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-02 | RCRSファンは、CO2を効率よく除去するために吸着中のベッドへ空気を押し通す（訓練マニュアル付録C.2.2）。 | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-03 | ファンのすぐ下流に2位置の弁があってRCRSの流量を調整し、2つの位置は乗員4〜5名用と6〜7名用の大きさで、打上げ前に… | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-04 | SCOMは、打上げ前に流量制御弁を乗員数「4」または「5〜7」に設定し、RCRSの流量をそれぞれ72 lb/hr・110… | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-05 | ファンの上流にはフィルタ・消音器の組立があり、フィルタは粒子がファンと固体アミンのベッドに入るのを防ぎ、消音器は入口ダク… | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-06 | 入口のフィルタは、ロッカー2個を外して点検パネルを開ければ飛行中に清掃できる（訓練マニュアル付録C.2.2）。 | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-07 | SCOMのRCRS系統図は、キャビン空気ループからの入口にフィルタ・消音器・ファン組立（40ミクロン）を置き、流量制御弁… | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-08 | 故障処置手順6.8aでは、フィルタ差圧が0.5（10.2 psia運用では0.35）を超える場合にフィルタの閉塞と流量制… | REQ-ARS-15 | 要求あり |
| SSD-FD-ARS-RCRS-FAN-001 | F-ARS-RCRS-FAN-09 | RCRSの流量は限られているため、火災後の汚染物質の除去にはRCRSは効率が悪い（A17-156）。 | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-01 | 制御器1・2はそれぞれのベッド圧力センサとベッド差圧センサに給電し、それ以外の共通計装（CO2分圧・真空圧力・フィルタ差… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-02 | 表C-1のセンサの範囲は、ベッド圧力0〜20 psia、ベッド差圧0〜5 in H2O、入口温度32〜133°F、CO2… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-03 | 共通計装は制御機能を持たず、システム評価のためにダウンリンクされるだけである（訓練マニュアル付録C.4）。 | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-04 | 乗員はSPEC 66 ENVIRONMENTの右下でRCRSの運転を確認し、表示はCO2 CNTLR 1・2、FILTE… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-05 | CO2 CNTLRの表示はAC電源とDC電源のONディスクリートを要する多重ディスクリートで、「*」は給電中だが運転して… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-06 | RCRSに固有のSMメッセージは2つあり、「S66 CO2 RL SYS」は制御器が故障したか故障検知の論理がいずれかの… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-07 | SCOMのRCRS系統図は、RCRSのCO2分圧・入口温度・フィルタ差圧・真空圧力と、制御器1・2それぞれのベッド圧力・… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-08 | 故障処置手順6.8bは、オービタのPPCO2とRCRSのPPCO2の差が2 mmHgを超える場合や、Spacelabモジ… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-09 | OI MDM（OF1）を失うと、制御器1のDC電源表示・ベッドA圧力・故障表示、真空圧力、制御器2のAC電源表示・ベッド… | REQ-ARS-17 | 要求あり |
| SSD-FD-ARS-RCRS-MON-001 | F-ARS-RCRS-MON-10 | PPCO2を把握できなくなった場合はRCRSのCO2除去能力を正しく評価できないため、LiOHキャニスタを定期的に装着・… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-01 | RCRSは真空源のない上昇・再突入では停止し、その間はLiOHキャニスタでPPCO2を制御する。再突入まで作動させたまま… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-02 | 軌道上ではOMS-2後なるべく早く起動して正常に作動するかをすぐに確かめ、軌道離脱噴射前なるべく遅く停止して、搭載したL… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-03 | 軌道離脱準備で停止した後は、作業負荷が大きいためウェーブオフの周回では再起動せず、ウェーブオフの日には極低温の消耗品が追… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-04 | キャビン減圧とエアロック減圧の間はRCRSを手動で停止する。作動させたままだと制御器の論理が真空ベント管やキャビン圧の入… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-05 | RCRSは、PPCO2を7.6 mmHg未満に保てない場合と、PPCO2を把握できなくなった場合に喪失とする（A17-1… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-06 | RCRSを失った場合はLiOHキャニスタを装着し、搭載数が限られるため、その数が飛行終了（EOM）を決める（A17-15… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-07 | オービタ系統のGo/No-Go基準では、RCRSを失うとLiOHキャニスタの数と乗員数がEOMを決め、PLSの機会を見送… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-08 | キャビンまたはアビオニクスベイの火災の後はRCRSを手動で停止し、LiOH・活性炭とATCOのキャニスタで汚染物質を除い… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-09 | 有害物質（レベル4）がオービタの大気に漏れた場合、RCRSを使う飛行では固体アミンの汚染を防ぐためRCRSの電源を切る（… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-10 | SCOMの運用の節は、RCRS搭載機では軌道投入後に乗員がRCRSを起動し、以後は通常の操作なしに13分ごとにベッドが切… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-11 | 故障処置手順6.8aでは、故障が一方の制御器だけなら他方の制御器（SYS 2(1)）で運転を続け、両方の制御器に及ぶなら… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-OPS-001 | F-ARS-RCRS-OPS-12 | STS-65では、RCRSをリストリクタ付きのLiOHキャニスタで補い、15時間ごとの交換でCO2分圧を平均2.3 mm… | REQ-ARS-18 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-01 | 6個の均圧弁（PEV）は、化学ベッドの圧力をそろえたり調整したりし、ullage-save圧縮機がベッドを排気できるよう… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-02 | 各PEVは通電で開く2つのコイルを持つソレノイド弁で、2台の制御器がそれぞれ一方のコイルを動かすため、コイル1つや制御器… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-03 | ullage-save圧縮機は各脱着工程の始めに脱着するベッドを排気し、抜いた空気を乗員室へ戻して、真空へ捨てるキャビン… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-04 | ステート4では、圧縮機がPEV 2を通して75秒間ベッドAの空気を吸い出し、14.7 psiaから約3 psiaまで下げ… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-05 | ステート5ではPEV 2と5を開いて両ベッドの圧力をそろえ、再生に入るベッドに残る空気の半分を他方のベッドへ移す（ベッド… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-06 | ステート6では、PEV 1でベッドAを真空側へ減圧し、PEV 6でベッドBをキャビン空気で再加圧する30秒の工程で、ポペ… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-07 | 半周期の最後（ステート12）では、PEV 3でベッドAをキャビン空気で再加圧し、PEV 4でベッドBを真空へ排気して、2… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-08 | 圧縮機が故障してもRCRSは運転を続けるが、再生のたびに真空へ失うキャビン空気が増え、この事象は飛行中にも起きている（訓… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-09 | 圧縮機は起動30秒後に、排気中のベッドの圧力が開始時の2/3未満に下がったかを確かめ、下がらなければ制御器を入れ直すか他… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-10 | RCRSの運転は船外へのベント工程で窒素（N2）を消費し、長期飛行でN2の必要量が増える要因の一つとなる（訓練マニュアル… | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-RCRS-USC-001 | F-ARS-RCRS-USC-11 | SCOMのRCRS系統図は、6個の均圧弁（PEV 1〜6）の弁組立と圧縮機を示す。 | REQ-ARS-19 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-01 | キャビン温度制御弁はキャビン熱交換器を迂回する空気量を配分する可変位置弁で、乗員が手動で、または2台のキャビン温度コント… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-02 | パネルL1のCABIN TEMP CNTLRスイッチを1にするとコントローラ1が有効になり、CABIN TEMPロータリ… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-03 | コントローラ1が故障した場合は乗員がパネルMD44Fでアクチュエータアームのリンクをコントローラ2へ付け替えてからCAB… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-04 | 熱交換器を通った空気とバイパス空気は下流の給気ダクトで合流してCDR・PLTコンソールと各所のダクト吹出口から乗員室へ吹… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-05 | キャビン熱交換器出口温度はパネルO1のAIR TEMP計器下のロータリスイッチをCAB HX OUTにすると表示でき、1… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-06 | コントローラやロータリスイッチで弁を制御できない場合、乗員はパネルMD44Fでバイパス弁アームを4つの固定穴（FULL … | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-07 | 熱交換器で凝縮した水分は空気流でスラーパへ押し出され、2台の湿度分離器の一方がスラーパから空気と水を吸い込んで遠心力で分… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-08 | ファンセパレータA・BはパネルL1のHUMIDITY SEP A・Bスイッチで個別に制御して通常は1台を使い、乗員室の相… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-09 | ISSミッション向けに、軌道上で湿度分離器の凝縮水を緊急用水容器（CWC）へ切り替えて送れるよう改修されており、ISSか… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-10 | キャビン温度を95（90）°F未満に保てない、A13-52のPPCO2制約を満たせない、または湿度制御に失敗した（通常6… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-001 | F-ARS-THC-11 | 湿度分離器の作動は、HUM SEP信号調整器が給電する回転数センサで確かめ、キャビン熱交換器の空気出口温度とキャビン温度… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-01 | キャビン熱交換器は、キャビン空気が拾った熱をARS水冷却ループへ移す空気/水熱交換器で、キャビンファンが暖かいキャビン空… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-02 | キャビン空気中の湿気は熱交換器内のslurperバーに凝縮し、凝縮水は熱交換器から湿度分離器へ引き出される（訓練マニュア… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-03 | 熱交換器で生じた凝縮水は空気流でslurperへ押し出され、2台の湿度分離器の一方がslurperから空気と水を吸い出す… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-04 | 1979年の飛行運用マニュアルは、空気が熱交換器内のコールドプレートの間を通るときの温度変化でプレート上に凝縮が生じると… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-05 | 水冷却ループの冷えた水は、液冷服熱交換器と飲料水チラーに続いてキャビン熱交換器とIMU熱交換器を通り、各ループのポンプパ… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-06 | ATCOはキャビン熱交換器のすぐ下流にあり、熱交換器を出た空気の一部がATCOを通る（訓練マニュアル3.2.6節）。 | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-07 | RCRS搭載時は、RCRSでCO2を除いた空気もキャビン熱交換器を通して送られる（SCOM 2.9節）。 | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-08 | 運用飛行規則A13-152は、キャビン温度コントローラを全COOLにすると熱交換器を通る空気流量が最大になり、湿度分離器… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-09 | STS-4では熱交換器・slurper組立の空気出口ダクトに遊離水がないことを飛行中に2回点検し、STS-3後のslur… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-HX-001 | F-ARS-THC-HX-10 | IOAのCIL評価（1988年）は、slurperの配管・継手（ARS-344）について、追加情報によりNASAの臨界度… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-01 | CABIN CNTLR 1の遮断器は、キャビン温度コントローラのほか、キャビン熱交換器の空気出口温度センサとキャビン温度… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-02 | HUM SEP信号調整器は、湿度分離器が正常に回っていることを確かめる回転数センサに給電する（訓練マニュアル3.5節）。 | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-03 | SCOMのキャビン空気系統図は、キャビン温度コントローラにつながるキャビン温度センサとダクト温度センサ、キャビン温度選択… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-04 | 熱交換器下流のセンサの温度データはパネルO1の兼用のAIR TEMP計器へ直接送られ、SM SYS SUMM 1とSPE… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-05 | 熱交換器出口温度（V61T2635A、CAB HX AIROUT T）はAV BAY/CABIN AIR灯の入力の一つで… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-06 | 主C&Wのハードウェアチャネル114がキャビン熱交換器の空気温度に割り当てられ、限界外でAV BAY/CABIN AIR… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-07 | SPEC 66 ENVIRONMENTは、HX OUT T（+45〜+145°F）、CABIN T（+32〜+122°F… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-08 | キャビン湿度のトランスデューサはCABIN AIR信号調整器から給電されるが、その値はMCCだけが見る（訓練マニュアル3… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-09 | 分離器の回転数が下がると「S66 HUMID SEP A(B)」の警報が出て、SPEC 66の表示から分離器の故障、回転… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-10 | 熱交換器出口温度とキャビン温度がともに低く表示される場合は、キャビン温度コントローラ1の信号調整器の故障と判定する（MA… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-11 | 運用飛行規則A17-152は、通常はキャビン温度トランスデューサでキャビン温度を測るが、トランスデューサは周囲の熱負荷の… | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-MON-001 | F-ARS-THC-MON-12 | STS-54ではARSは問題なく作動し、キャビン空気温度と相対湿度の最高値は80°Fと56%だった。 | REQ-ARS-22 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-01 | キャビン大気制御の喪失判定（A17-102）で、湿度制御の状態は湿度の値ではなく廃水タンクの増加率（通常6±1 lb/d… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-02 | A17-102Aの根拠では、95°Fを超えるとフライトデッキのアビオニクスが過熱し、水ループのポンプ出口温度はキャビン温… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-03 | 再突入・着陸の乗員室温度の上限は75°Fで、就寝中が寒すぎる場合はCDRと医師の合意で上げられる。個人冷却装置（ICU）… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-04 | 上昇と再突入では、キャビンの熱負荷が大きいため、バイパス弁を自動でFULL COOLへ駆動する（A17-151A）。 | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-05 | 上昇前は、コントローラ1に給電してロータリスイッチをCOOLにし弁をFULL COOLにしてからコントローラ1を断電し、… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-06 | 上昇中は、主エンジンを失いうる交流母線間の短絡を防ぐため、HUM SEPとIMU FANの信号調整器を断電しておく（ST… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-07 | 軌道上では、乗員は快適さのためにコントローラを任意の位置にしてよいが、ISS係留中にISSの露点を保つためにキャビン温度… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-08 | キャビンが寒すぎる場合は、熱交換器バイパス弁の手動ピン止め、照明の点灯、空冷機器の電源投入、両水ループの最大インターチェ… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-09 | 上限温度の超過が予測される日は、就寝後にバイパス弁を自動でFULL COOLへ駆動してキャビンを冷やしておく（cabin… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-10 | 再突入前日（EOM-1）の就寝前に、再突入日の起床時に70°Fとなる位置へコントローラを自動で駆動し、再突入日の起床後に… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-11 | EVA後の除染（A15-203）では、ヒドラジン類が水に溶けるため、IV乗員が温度コントローラを全COOLにして凝縮熱交… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-OPS-001 | F-ARS-THC-OPS-12 | 軌道上の最初の数日は、運転中の湿度分離器に水が溜まっていないかを約12時間ごとに点検する（SCOM 5.3節）。 | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-01 | 2台の湿度分離器はキャビン熱交換器に隣接して床下のECLSSベイにあり、常時1台を使う（訓練マニュアル3.2.5節）。 | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-02 | 分離器のファンが吸引を作って熱交換器から水を含んだ空気を引き出し、回転ドラムの遠心力で空気と凝縮水を分け、凝縮水を廃水タ… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-03 | 分離器は公称約1 lb/hr、最大約4 lb/hrの水を除き、水は廃水タンクへ、空気は排気ダクトで乗員室へ戻す（SCOM… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-04 | 1979年の飛行運用マニュアルは、分離器の露点範囲を39〜61°F、モータの回転数を5,430〜5,700 rpm、除水… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-05 | 凝縮水QDの追加に伴い、分離器の共通出口は排出ラインを経て廃水タンクにつながり、廃水タンク1の出口弁が開なら凝縮水は廃水… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-06 | 凝縮水の回収では、Y-Yホースで凝縮水QDにCWCをつなぎ、パネルML31CのWASTE H2O TK1 DRAIN V… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-07 | IFMの凝縮水回収の再構成（W-8）は、両分離器を止めて凝縮水回収ラインを分離器Bの試験ポート49から分離器Aの試験ポー… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-08 | 故障処置手順6.2jは、各分離器下流の逆止弁が開固着すると廃水タンクの水で分離器が浸水しうると注意する。 | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-09 | IOAのCIL評価（1988年）は、分離器出口の逆止弁（ARS-340、4個）について、水の逆流は有効な影響で飛行の打切… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-10 | 分離器から水が漏れた場合は1台を常に運転したままにし（両方を同時に止めると分離器がさらに浸水し、再起動時に損傷しうる）、… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-11 | 詰まった分離器の空気出口から漏れる水は、空気穴を開けたごみ袋にタオルを詰めて出口に取り付けて吸い取る（IFM W-40）… | REQ-ARS-21 | 要求あり |
| SSD-FD-ARS-THC-SEP-001 | F-ARS-THC-SEP-12 | SODBは、キャビンファンの起動・停止の前と少なくとも5分後まで水分離器を運転するとし、止まった分離器に水が溜まるとモー… | REQ-ARS-23 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-01 | キャビン温度制御弁はキャビン熱交換器を迂回する空気の流量を変える可変位置弁で、迂回した暖かい空気と熱交換器を通った冷たい… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-02 | CABIN TEMPロータリスイッチの位置に応じて、有効なコントローラが空気流の0〜70%を熱交換器の外へ迂回させ、全C… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-03 | コントローラはモータ駆動のアクチュエータで、弁と2台のコントローラはパネルMD44Fの下のECLSSベイにあり、単一のバ… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-04 | 自動では弁アームを弁アームリンクに、リンクを主または副のコントローラのアクチュエータにピン止めしてからコントローラに給電… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-05 | 手動では弁アームを4つの固定穴の一つにピン止めし、FULL COOLは熱交換器への流量が最大、2/3 COOLと1/3 … | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-06 | 1979年の飛行運用マニュアルは、各コントローラが給気ダクトと還流ダクトの温度を検知して乗員の選んだ65〜80°Fの温度… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-07 | パネルL1のCABIN TEMPロータリスイッチ（COOL–WARM）で65〜80°Fの間の温度を選び、CABIN TE… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-08 | コントローラの切替では、CAB TEMP選択器をWARM（COOL）に回してリンクが副（主）アクチュエータにつながる位置… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-09 | 熱交換器を通った空気とバイパス空気は熱交換器下流の給気ダクトで合流し、CDR・PLTのコンソールと各所のダクト吹出口から… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-10 | 1979年の飛行運用マニュアルは、合流した空気をコンソール、ミッドデッキ、MS・PSのステーションの給気口から乗員室へ出… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-THC-TCV-001 | F-ARS-THC-TCV-11 | STS-2では、STS-1で環境の影響を受けたセンサが高温を示したため自動のキャビン温度コントローラを使わず、作業中は全… | REQ-ARS-20 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-01 | 水冷却ループは完全に独立した2系統が並んで流れ、同時運転もできるが通常は1系統だけを稼働させ（通常はループ2）、両者の違… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-02 | ポンプ下流で流れは3つの並列経路に分かれ、第1はAv Bay 1の空気/水熱交換器とコールドプレート、第2はAv Bay… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-03 | 3経路はインターチェンジャ上流で合流した後に再び分かれ、一方はフレオン/水インターチェンジャで冷却されてから液冷服熱交換… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-04 | バイパス弁はパネルL1のH2O LOOP 1・2 BYPASS MODEスイッチで制御し、AUTOではバイパスコントロー… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-05 | バイパス弁は打上げ前にインターチェンジャ流量が約950 lb/hrとなるよう手動で調整して投入後までMANのままとし、軌… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-06 | 各ループのアキュムレータはGN2で19〜35 psiに加圧され、ポンプ入口に正圧を与え、熱膨張を吸収し、ポンプの起動・停… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-07 | ポンプ出口圧はパネルO1のH2O PUMP OUT PRESS計器（LOOP 1/LOOP 2切替）に表示され、ループ1… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-08 | ループ1のポンプはパネルL1のH2O PUMP LOOP 1 A/BスイッチとGPC/OFF/ONスイッチ、ループ2のポ… | REQ-ARS-35 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-09 | アキュムレータ量が0（5）%、MIN BYP位置でインターチェンジャ流量600（649）lb/hr以上を保てない、稼働ル… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-10 | 上昇・再突入では両ループともバイパス弁をMAN、インターチェンジャ流量を950±50 lb/hrに設定し（ループ1はポン… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-11 | 両フレオンループの蒸発器出口温度が32°F未満になれば両水ループを運転し、両ループの運転と流量比例弁のICH位置で、イン… | REQ-ARS-39 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-12 | フレオン-水の漏れでは影響ループを必要時以外運転せず、乗員室への水の漏れでは、次のフレオン-水漏れで有毒なフレオン21が… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-13 | 1ループの喪失はゼロフォールトトレラントとなり、両ループを失うと乗員室内のアビオニクスの冷却と湿度制御を失うため、上昇中… | REQ-ARS-38 | 要求あり |
| SSD-FD-ARS-WCL-001 | F-ARS-WCL-14 | インターチェンジャ流量・出口温度、キャビン熱交換器入口温度、ポンプ出口温度・差圧、アキュムレータ量は、SM OPS 2・… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-01 | ポンプ下流で流れは3つの並列経路に分かれ、第1はAv Bay 1の空気/水熱交換器とコールドプレート、第2はAv Bay… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-02 | 各ベイと乗員室の一部の電子機器はコールドプレートに取り付けられ、各ベイの棚のコールドプレートは水冷却ループの流れに対して… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-03 | Av Bay 1経路はベイの熱交換器で空気の熱を拾った後25 ft²のコールドプレートを冷やし、Av Bay 2経路は熱… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-04 | Av Bay 3経路は一部の水でMDMコールドプレートを冷やし大半はこれを迂回した後、Av Bay 3A（熱交換器と32… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-05 | 訓練マニュアルの表3-2〜3-5は、Av Bay 1・2・3A・3Bの機器を強制空冷・自然対流・水冷に分けて示す。 | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-06 | マスタタイミングユニット（MTU）はミッドデッキのAv Bay 3Bにあり、水冷却ループのコールドプレートで冷却される（… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-07 | 前方ベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータはコールドプレートに搭載されて水冷却ループで冷却さ… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-08 | ドッキング用投光器とフォワードバルクヘッド投光器は水冷却ループで冷やすコールドプレートを使い、OV-104にだけ残り、O… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-09 | MIN BYP位置でインターチェンジャ流量を600 lb/hr以上に保てないと、通常の再突入（GPC 5台）でAv Ba… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-10 | あるAv Bayの温度が上がる原因には、そのベイを通る水ループ経路の流れの制限もありうる（訓練マニュアル付録B.6）。 | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-AVL-001 | F-ARS-WCL-AVL-11 | IOAのCIL評価（1988年）は、窓の熱調整系（ARS-194）の故障はシールの喪失につながるとし、オービタの全シール… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-01 | インターチェンジャで冷えた水は液冷服熱交換器、ギャレーの水チラー、キャビン熱交換器、IMU熱交換器の順に流れ、バイパス流… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-02 | 液冷服（LCVG）熱交換器はエアロック内にあり、EVAの前後に液冷服を冷やす水ループを水冷却ループで冷却する（訓練マニュ… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-03 | エアロックにはEMUごとに閉じた2系統のLCVG冷却ループが出入りし、SCUにつないだ液冷服を冷やす水は、LCVG熱交換… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-04 | 飲料水チラーは、給水タンクからの乗員の飲料水を冷やす（訓練マニュアル3.3.8節）。 | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-05 | ギャレー給水弁を開くと、給水は水冷却ループの飲料水チラーで冷やす経路と、チラーを迂回する経路に分かれる（SCOM 2.9… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-06 | キャビン熱交換器はキャビン空気が拾った熱をARSの水冷却ループへ移し、空気中の湿分は熱交換器のスラーパーバーに凝縮する（… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-07 | IMUファンの出口空気は、フライトデッキのIMU熱交換器で水冷却ループにより冷やされてから乗員室へ戻る（SCOM 2.9… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-08 | SODBは水チラーの最低作動温度を35°Fとし、系内の水が凍ると機器が損傷して運用できなくなるとする。 | REQ-ARS-39 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-09 | EMUのファン・ポンプで液冷服配管の水をオービタのLCG熱交換器へ循環させれば、配管の圧力と温度を下げる非常手段になる（… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-10 | IOAのCIL評価（1988年）は、LCVG熱交換器（ARS-199）についてNASAのより保守的な冗長性の定義と高い臨… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-CLD-001 | F-ARS-WCL-CLD-11 | STS-114では、ドッキング中にFESを止めていたためフレオンループの温度が軌道周期で変動し、液冷服の冷却ループの温度… | REQ-ARS-33 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-01 | 3経路の合流水は再び2つに分かれ、一方はフレオン/水インターチェンジャで冷やされ、他方の温水はインターチェンジャと冷側の… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-02 | 水冷却ループが集めた熱はインターチェンジャでATCSのフレオン冷却ループへ移され、インターチェンジャは有毒なフレオン21… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-03 | インターチェンジャは対向流のプレートフィン熱交換器で、2系統の水ループと2系統のフレオンループがともに通り、フレオンルー… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-04 | 手動モードでは乗員がH2O LOOP BYPASSスイッチのINCRでバイパス流量を増やし（インターチェンジャ流量は減る… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-05 | 自動モードでは、ポンプ出口温度が設定値63.0±2.5°Fを超えるとバイパス弁を閉じる向きに動かしてインターチェンジャへ… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-06 | バイパス弁は打上げ前にインターチェンジャ流量が約950 lb/hrとなるよう手動で調整され、制御は軌道投入後まで手動モー… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-07 | 2ループを長時間同時に運転するとインターチェンジャの伝熱能力を超えて水ループに熱がたまり、インターチェンジャ経路の液冷服… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-08 | 上昇・再突入では、高熱負荷時のインターチェンジャでのフレオンと水の熱負荷の不整合でAUTOの制御が適切に働かないため、両… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-09 | 軌道上は、飛行データで不整合が予測ほど大きくないと分かったため稼働ループのバイパス弁をAUTOとし、STS-44ではルー… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-10 | ラジエータ制御器の低温保護は、ラジエータ出口温度が33±0.5°F未満になるとラジエータをバイパスし、停滞した水ループの… | REQ-ARS-39 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-11 | 両フレオンループの蒸発器出口温度が32°F未満になれば両水ループを運転し、両ループの運転と流量比例弁のICH位置で、イン… | REQ-ARS-39 | 要求あり |
| SSD-FD-ARS-WCL-ICH-001 | F-ARS-WCL-ICH-12 | インターチェンジャ流量が550 lb/hr未満になるとSM警報が出て、MANでバイパスを減らして流量が回復するかを確かめ… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-01 | H2O CNTLRはバイパス弁の駆動電力に加えてポンプパッケージのすべての計装（アキュムレータ量、ポンプ出口圧・出口温度… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-02 | 水ループの計装は、ポンプ出口圧・ポンプ出口温度・ポンプ差圧・アキュムレータ量と、インターチェンジャ流量・インターチェンジ… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-03 | SPEC 88 APU/ENVIRON THERM（SM OPS 2・4）は、各ループのポンプ出口圧（0〜150 psi… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-04 | SM SYS SUMM 2（DISP 79、BFSとPASS SM OPS 2・4）は、THERM CNTLの欄にH2O… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-05 | パネルO1のH2O PUMP OUT PRESS計器はLOOP 1・LOOP 2の切替でポンプ出口圧を示し、SM DIS… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-06 | パネルF7の黄色のH2O LOOP灯は、ループ1のポンプ出口圧（V61P2600A）が19.5 psia未満か79.5 … | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-07 | H2O LOOP灯のハードウェアチャネルは、ループ1が105、ループ2が115である（SCOM 2.2節）。 | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-08 | ループ2のポンプ出口圧のSM警報の限界は、スイッチがONまたはGPCでポンプON指令があるときは50〜75 psia、O… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-09 | SM警報は、ポンプ出口圧50 psia未満・75 psia超（非運転ループは20 psia未満）、ポンプ差圧33 psi… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-10 | アキュムレータ量は20%未満・80%超でSM警報を出し、水量が正常ならアキュムレータ量10%の変化でポンプ出口圧が約1 … | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-11 | インターチェンジャ出口温度35°F未満、キャビン熱交換器入口温度34°F未満、ポンプ出口温度45°F未満・90°F超でS… | REQ-ARS-39 | 要求あり |
| SSD-FD-ARS-WCL-MON-001 | F-ARS-WCL-MON-12 | バイパス制御器を失うと、そのループの計装は流量と一部の温度を除いて失われ、ポンプ出口圧とアキュムレータ量を失うとフレオン… | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-01 | 上昇中はループ2を運転しループ1を止め、両ループのバイパス弁でインターチェンジャ流量を約950 lb/hrにし、軌道上は… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-02 | ループ2を稼働ループとするのは、ポンプ1台のループ2を予備にするとそのポンプの故障がループ1の故障まで検知されないおそれ… | REQ-ARS-34 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-03 | SM OPS 2でGPC位置にすると、待機ループのポンプはOPSの移行時に6分のON指令を受けた後240分止まり、以後4… | REQ-ARS-35 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-04 | GPC位置ではSM GPCがPL MDM 1を通してループ1のポンプを、PL MDM 2を通してループ2のポンプを指令し… | REQ-ARS-35 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-05 | リレーの故障によるAC3とAC1の短絡で上昇中に主エンジンを失わないよう、ループ1ポンプAの遮断器（ループ2のGPC位置… | REQ-ARS-35 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-06 | H2O LOOP PRESS LOW（ポンプの故障かループの漏れ）ではループの切替をMECO後まで待ち、新しいポンプの起… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-07 | 上昇中のMECO前の再構成を認めるAC負荷のうち、水ループのポンプはアビオニクスの空気温度のFDAが出た場合に限る（A9… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-08 | ARS水ループは、アキュムレータ量0%、MIN BYPでインターチェンジャ流量600 lb/hr以上を保てない、14.7… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-09 | フレオン-水の漏れでは、135 psig以上になりうる圧力とフレオン21に適合しない部品のため影響ループを必要時以外運転… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-10 | 1ループの喪失はゼロフォールトトレラントとなり上昇中なら初日のPLSとし、両ループの喪失では上昇中はAOAとし、故障から… | REQ-ARS-38 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-11 | 冷却機器を止めておける最大時間は、水ループではS帯電力増幅器の冷却の制約から10分である（A18-501D）。 | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-OPS-001 | F-ARS-WCL-OPS-12 | Av Bayの温度が130°Fを超えて両ファンの運転でも下がらなければ水ループを切り替えて5分待ち、下がれば水ループの劣… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-01 | 水冷却ループ1（予備）はポンプ2台、ループ2（常用）は1台を持ち、ポンプは前方ロッカー下のECLSSベイにある三相115… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-02 | ループ1では各ポンプ下流の玉形の逆止弁が、非運転ポンプを通る逆流を防ぐ（SCOM 2.9節）。 | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-03 | アキュムレータはループの熱による容積変化を補い、ポンプの押込み圧を保ってキャビテーションを防ぎ、ベローズが伸び切ると水量… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-04 | 各ループのアキュムレータはGN2で19〜35 psiに加圧され、ポンプ入口に正圧を与え、熱膨張を吸収し、ポンプの起動・停… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-05 | ポンプの設計圧は90 psig、耐圧は135 psig、流量範囲は970±15 lb/hr、入口圧は18〜35 psig… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-06 | ループ1のポンプAはAC1、ポンプBはAC2、ループ2のポンプはAC3の三相電力を、パネルL4の各3個の遮断器からパネル… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-07 | ループ2のポンプはON位置ではAC3から給電され、上昇・再突入でBFSがペイロードMDMを制御しているときはGPC位置で… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-08 | SODBは、1相を失った水ポンプを停止し（フレオンとの流量の不整合と消費電力の増加を避けるため。必要なら再起動できる）、… | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-09 | ポンプは水の流れで自らを冷却するため、流路が極端に、または完全に閉塞すると数分で過熱して故障する（MAL 6.4l）。 | REQ-ARS-36 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-10 | 通常のアキュムレータ量はループ1で約45%、ループ2で約55%である（MAL 6.4l）。 | REQ-ARS-32 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-11 | アキュムレータのベローズが破れてGN2と水が混ざると、ループを動かしたときに窒素の泡がポンプを通って運転が不安定になるた… | REQ-ARS-37 | 要求あり |
| SSD-FD-ARS-WCL-PMP-001 | F-ARS-WCL-PMP-12 | IOAのCIL評価（1988年）は、アキュムレータ（ARS-108）が故障してもポンプの揚程でループを運転できるとのNA… | REQ-ARS-32 | 要求あり |

## 12. トレース表（PCS）

与圧系（PCS）の下位の機能行 71行と、割り付けた要求を示す（要求あり 63行）。

| 文書 | 機能行 | 機能（要約） | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-01 | 14.7 psiaキャビンレギュレータは入口弁が開いているとき乗員室圧を14.7 psiaに制御し、O2/N2マニホール… | REQ-PCS-01 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-02 | 8 psia非常用レギュレータは大きな漏れのときに乗員室圧を8 psiaに保つよう流し、入口弁がないため常に補給できる構… | REQ-PCS-01 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-03 | 14.7 psiレギュレータは14.7±0.2 psia、8 psiレギュレータは8±0.2 psiaに調圧し、仕様上の… | REQ-PCS-01 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-04 | レギュレータは、乗員室圧が14.7 psia付近の小さな需要に応じる低流量段（0〜0.75 lb/hr）と、大きく下回っ… | REQ-PCS-01 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-05 | O2/N2制御弁を開くと200 psiの窒素がマニホールドを満たしてO2の逆止弁を閉じ、閉じるとマニホールドの圧力が10… | REQ-PCS-02 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-06 | 軌道上は使用中の系統のO2/N2制御弁をAUTOにし、O2/N2コントローラがPPO2 2.95 psia未満で弁を閉じ… | REQ-PCS-02 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-07 | PPO2センサAのデータはO2/N2コントローラ1が、センサBのデータはコントローラ2が使い、PPO2 SNSR/VLV… | REQ-PCS-02 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-08 | PPO2 CNTLR SYS 1・2スイッチは、通常範囲（14.7 psiで2.95〜3.45 psia）と非常範囲（8… | REQ-PCS-02 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-09 | PPO2の制御は、自動・手動のどちらの方法でも乗員室へ流れる酸素量を制御できなくなったときに喪失とみなし、低い側は酸素を… | REQ-PCS-02 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-10 | O2/N2コントローラの飛行中の点検には、14.7 psia・AUTOでの両方向の切替の観測が要り、自然な切替が起きなけ… | REQ-PCS-02 | 要求あり |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-11 | 1979年の飛行運用マニュアルは、O2/N2コントローラが乗員室のPPO2を検知してO2/N2制御弁を開閉し、PPO2を… | — | 要求なしで妥当（同じ文書の REQ-PCS-01・REQ-PCS-02 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-PCS-MNF-001 | F-ECL-PCS-MNF-12 | STS-2までに、N2/O2の制御盤・供給盤とPPO2センサを交換し、改良したキャビンレギュレータを追加した（STS-2… | — | 要求なしで妥当（同じ文書の REQ-PCS-01・REQ-PCS-02 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-01 | O14のMNAとO15のMNBにあるO2/N2 CNTLRの遮断器は、O2/N2コントローラのほか、乗員室圧、PPO2セ… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-02 | O15のMNBのPPO2 C/CABIN dP/dT遮断器がPPO2センサCとハードウェアのdP/dTセンサに給電し、d… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-03 | BFSのバックアップdP/dTは乗員室圧トランスデューサの値を5秒ごとに30秒前と比べて算出し、等価dP/dTはdP/d… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-04 | O2濃度はPPO2センサA・B・Cの平均を乗員室圧で割ってPASSのSM SYS SUMM 1に表示し、N2タンクの量は… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-05 | 軌道上のPCSの主な表示はPASSのSM SPEC 66で、上昇・再突入ではBFSのSM SYS SUMM 1を使い、O… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-06 | 主C&WのCABIN ATM灯（赤）は乗員室圧、PPO2、O2流量、N2流量の限界外で点灯し、ハードウェアチャネルは乗員… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-07 | CABIN ATM灯の14.7 psiaでの既定の限界は、乗員室圧13.8〜15.2 psia、PPO2 A・B 2.7… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-08 | dP/dtセンサの値が-0.08 psi/minを超えると、4つのMASTER ALARM灯とクラクソン（クラス1）で急… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-09 | 使用中の流量センサは0 lbm/hrで下限外、5 lbm/hrで上限外となり、4.9 lbm/hrで高流量警報を出す。O… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-10 | PPO2センサは、互いに0.15 psi以内にある2個のうち近い方から0.15 psiを超えてずれると喪失とみなし、2個… | REQ-PCS-10 | 要求あり |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-11 | STS-4の上昇中にもdP/dtが-0.05 psi/minの警報点を超えてクラクソンが作動し、最初の4回の飛行で毎回起… | — | 要求なしで妥当（同じ文書の REQ-PCS-10 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-PCS-MON-001 | F-ECL-PCS-MON-12 | STS-108では、EVA後の再与圧の後に系統1の窒素流量センサの表示が0になったまま戻らず、飛行後の試験でセンサの故障… | — | 要求なしで妥当（同じ文書の REQ-PCS-10 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-01 | PCSの窒素は通常ペイロードベイの4基のタンクから供給するが、長期飛行では機体の漏れとウェットトラッシュのベント、RCR… | REQ-PCS-05 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-02 | 常設の4基のうち系統1のタンク3・4は重心の調整のため後部ペイロードベイに移され、系統2のタンク1・2は前部右側にあり、… | REQ-PCS-05 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-03 | SCOMは、系統1のタンクを左舷、系統2を右舷に置き、OV-103・OV-105は6基、OV-104は5基とし、タンクは… | REQ-PCS-05 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-04 | 3,300 psiaの窒素はモータ駆動のN2供給弁からN2供給マニホールドへ入り、N2レギュレータ入口弁を経て200 p… | REQ-PCS-03 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-05 | N2レギュレータの逃し弁は275 psigで開いて245 psigで閉じ、レギュレータの故障による過圧から窒素系を守るた… | REQ-PCS-03 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-06 | 調圧後の窒素は乗員室内の逆止弁で他系統への逆流と上流の配管漏れによる流出を防ぎ、N2クロスオーバ弁、水タンク用レギュレー… | REQ-PCS-03 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-07 | 水タンク用N2レギュレータは200 psiの窒素を15.5〜17.0 psigに下げる2段式のレギュレータで、2段目は1… | REQ-PCS-04 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-08 | 給水・廃水タンクは17 psigに加圧され、乗員の使用、船外ダンプ、FESへの給水に必要な圧力で水を押し出す（SCOM … | REQ-PCS-04 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-09 | N2タンクとN2供給弁の間のMMU GN2隔離弁を開くと高圧の窒素をMMUへ供給でき、ISSへの窒素の移送はPCSのN2… | REQ-PCS-03 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-10 | 通常は両方のN2系統を供給弁・レギュレータ入口弁とも開いて1系統として運用し、全タンクから均等に消費する。供給弁が閉じた… | REQ-PCS-03 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-11 | N2タンクの圧力が200（375）psia未満になると、N2レギュレータが制御を失って14.7 psiのキャビンレギュレ… | REQ-PCS-05 | 要求あり |
| SSD-FD-ECL-PCS-N2S-001 | F-ECL-PCS-N2S-12 | STS-3・STS-4では、テールを太陽に向けた低温の姿勢でGN2系統の漏れが同じ温度・同じ率で繰り返し現れ、真空ベント… | — | 要求なしで妥当（同じ文書の REQ-PCS-03・REQ-PCS-04・REQ-PCS-05 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-01 | PRSDは燃料電池と同じ極低温タンクからPCSへ酸素を供給し、タンクのヒータで811〜875 psiaに保たれた酸素は、… | REQ-PCS-06 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-02 | O2供給弁の下流のO2リストリクタは、過大な需要で燃料電池の極低温系の圧力が下がるのを防ぎ、系統1は23.9±1 lb/… | REQ-PCS-06 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-03 | L2のATM PRESS CONTROL O2 SYS 1・2 SUPPLYスイッチで供給弁を開くと、酸素は最大約25 … | REQ-PCS-06 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-04 | 酸素配管は576隔壁を貫いて乗員室に入り、逆止弁の下流で系統1・2がO2クロスオーバ管でつながり、クロスオーバマニホール… | REQ-PCS-06 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-05 | O2クロスオーバ弁は電源を失うと閉じる電磁弁で、並列の2個のLEHレギュレータが約840 psiaの酸素を100 psi… | REQ-PCS-06 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-06 | 打上げ・帰還時は、打上げ・帰還用与圧服（LES）のO2ホースをC6、MO32M、MO69MのLEHクイックディスコネクト… | REQ-PCS-07 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-07 | O2レギュレータ入口弁を開くと、100 psigのO2レギュレータが酸素を100 psiaに下げて逆止弁からO2/N2マ… | REQ-PCS-06 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-08 | エアロックのEMU用O2供給弁は、EMUの補給とISSへの酸素移送のために高圧の酸素をエアロックへ送る（訓練マニュアル2… | REQ-PCS-06 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-09 | 非常用O2キットはすべてのオービタから外されて配管はキャップで閉じられ、手動・自動の非常用O2弁は閉じたままとする（訓練… | — | 要求なしで妥当（同じ文書の REQ-PCS-06・REQ-PCS-07 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-10 | 軌道上の代謝用の酸素は、MO69MのLEH O2 8のクイックディスコネクトに差し込むブリードオリフィスから補給し、オリ… | REQ-PCS-07 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-11 | 打上げ・帰還用ヘルメット（LEH）は軌道上の非常呼吸ではオービタの酸素につなぎ、LEH O2の出口は8個しかないため、8… | REQ-PCS-07 | 要求あり |
| SSD-FD-ECL-PCS-O2S-001 | F-ECL-PCS-O2S-12 | O2クロスオーバ弁が閉じたまま開かない場合は、MO10WとC7の間にO2連絡ホースをつないで故障した弁を迂回し、2系統か… | REQ-PCS-07 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-01 | PCS 1は打上げから飛行の中間点まで、PCS 2は中間点から終わりまで運用し、中間で行う冗長機器の点検で系統を切り替え… | REQ-PCS-02 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-02 | 上昇・再突入では両系統の14.7 psiaキャビンレギュレータ入口弁とO2レギュレータ入口弁を閉じ、PCS 1のO2/N… | REQ-PCS-12 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-03 | O2ブリードオリフィスはPPO2が3.20 psia未満なら飛行1日目の就寝前にLEHのクイックディスコネクトに取り付け… | REQ-PCS-07 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-04 | 乗員室のO2濃度は、14.7 psiaの運用では25.9%未満、10.2 psiaの運用では30.0%未満に保つ（A17… | REQ-PCS-11 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-05 | 10.2 psia運用の減圧はエアロックの減圧弁で行い、10.2 psiaのキャビンレギュレータはないため、乗員室圧とP… | REQ-PCS-11 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-06 | 10.2 psia運用では、乗員室圧を10.0〜10.4 psia、PPO2を2.55〜2.80 psia（指示値）に保… | REQ-PCS-11 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-07 | PPO2センサ3個のうち2個が故障している場合や、N2の総量が計画量、N2レッドライン、10.2から14.7 psiaへ… | REQ-PCS-11 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-08 | 軌道離脱の前に乗員室を14.7 psiaへ再与圧し、複数のEVAでは最後のEVAまで10.2 psiaに留める。10.2… | REQ-PCS-11 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-09 | 上昇中に隔離できない0.15 psia/minを超える漏れが起きれば最も早く帰還・着陸できる緊急中止とし、0.02〜0.… | REQ-PCS-12 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-10 | 8 psia・165分の帰還能力は、LESヘルメットへ乗員1人あたり2.5 lb/hrの酸素を送れないとき、またはN2の… | REQ-PCS-05 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-11 | 漏れで消耗品が次の着陸機会まで14.7 psiaと8 psiaでの24時間の延長を賄えない場合や、火災・有害物質の漏洩で… | REQ-PCS-12 | 要求あり |
| SSD-FD-ECL-PCS-OPS-001 | F-ECL-PCS-OPS-12 | 乗員室の気密喪失ではN2が尽きる前に着陸できる最も遅い軌道離脱点火時刻（Tmax）を定め、大気での再与圧までは8 psi… | REQ-PCS-05・REQ-PCS-12 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-01 | 2個の正圧逃し弁は15.5 psidで開き、16.0 psidで全開、15.5 psid未満で閉じる。モータ駆動の逃し隔… | REQ-PCS-08 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-02 | 各逃し弁はL2のCABIN RELIEFスイッチで制御し、ENABLEで電動弁が開いて乗員室圧を逃し弁に導き、逃し弁の最… | REQ-PCS-08 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-03 | 2個の負圧逃し弁は外気圧が乗員室圧を0.2 psid上回ると開いて外気を入れ、乗員室がつぶれるのを防ぐ。弁はサイドハッチ… | REQ-PCS-08 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-04 | 負圧逃し弁は、漏れの後の再突入の終盤のように乗員室圧が外より低いときに開き、乗員の操作は要らない（SCOM 2.9節）。 | REQ-PCS-08 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-05 | キャビンベント隔離弁とキャビンベント弁は直列のモータ駆動弁で、地上で乗員室をペイロードベイへベントする。ベント管は2 p… | REQ-PCS-09 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-06 | 打上げ前の気密点検では地上要員が乗員室を16.7 psiaに加圧して35分間圧力の低下がないことを確かめ、その間にベント… | REQ-PCS-09 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-07 | 両方の正圧逃し弁は、開かない故障が過大圧になるまで検知できないため、すべての飛行段階で有効にしておく（A17-252）。 | REQ-PCS-08 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-08 | ベント弁は打上げ前に閉じ、上昇後に遮断器を開いて着陸後の引渡しまで開いたままにし、誤って弁が開くのを防ぐ（A17-253… | REQ-PCS-09 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-09 | 小さな乗員室漏れの隔離手順では、負圧逃し弁のキャップを押し込み、CAB RELIEF A・Bを閉じるなどして漏れ箇所を探… | REQ-PCS-08 | 要求あり |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-10 | 1979年の飛行運用マニュアルは、正圧逃し弁が15.5 psiで自動的に開き、ベント弁はペイロードベイへ直接ベントし、負… | — | 要求なしで妥当（同じ文書の REQ-PCS-08・REQ-PCS-09 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-PCS-RLF-001 | F-ECL-PCS-RLF-11 | 1988年のIOA評価は、FMEAが挙げた正圧・負圧逃し弁の取付けフランジの割れという故障モードを、原因（材料欠陥・機械… | — | 要求なしで妥当（同じ文書の REQ-PCS-08・REQ-PCS-09 が受け持つ構成・運用の記述） |

## 13. トレース表（WTR）

給水・廃水系（H2O）の下位の機能行 72行と、割り付けた要求を示す（要求あり 65行）。

| 文書 | 機能行 | 機能（要約） | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-01 | 給水はダンプ隔離弁（乗員室内）とダンプ弁（中胴）を通して全タンクから船外へダンプでき、タンクC・Dの水はクロスオーバ弁を… | REQ-WTR-07 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-02 | SUPPLY H2O DUMP VLV ENABLE/NOZ HTRスイッチはダンプノズルのヒータとダンプ弁に給電し、ノ… | REQ-WTR-03 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-03 | 給水ダンプノズルの上流の配管はサーモスタット制御のA・Bヒータで凍結を防ぎ、ヒータに給電するパネルML86BのH2O L… | REQ-WTR-03 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-04 | 給水ダンプの前に非常用クロスタイの給水QDへパージ装置を付け、ダンプ後に乗員室の空気（約3 lb/hr）でダンプ弁の残水… | REQ-WTR-03 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-05 | 給水・廃水ダンプ配管の隔離弁とダンプ弁の間には非常用クロスタイの接続があり、可撓ホースで両系をつないで一方のノズルから他… | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-06 | 余剰の給水は、ダンプ配管、FES、クロスタイからCWCへ、廃水ダンプ配管の順に捨て、給水系の無菌性を保つ（運用飛行規則A… | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-07 | 給水ダンプはノズル温度が100°F以上で始め、ノズル温度A・Bがともに90°F未満になれば中止して、以後そのノズルからの… | REQ-WTR-07 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-08 | 廃水ダンプはノズル温度150°F超で始め、ノズルヒータ作動中のノズル温度は周囲のタイルのはく離を防ぐため350°F以下と… | REQ-WTR-07 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-09 | 廃水ノズルに着氷を検知したときは、氷がなくなるまで両ノズルからのダンプを中止する。両ノズルは約6.5〜7.0 in離れて… | REQ-WTR-07 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-10 | 軌道運用チェックリストでは、給水ダンプはノズル温度が100°Fを超えてから（約5分）、廃水ダンプは250°Fを超えてから… | REQ-WTR-07 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-11 | 給水ダンプ弁が故障した場合は、クロスタイの給水QDと廃水QDをY/Yホースでつなぎ、燃料電池の生成水の空き容量を作るため… | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-DMP-001 | F-ECL-H2O-DMP-12 | STS-65では給水ダンプ中にノズル温度が50°Fへ急落してダンプを中止し、最大2ガロンの水が凍結したと推定され、13回… | REQ-WTR-07 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-01 | 3基の燃料電池は最大毎時25 lb（発電1 kWあたり約0.77 lb）の生成水を生み、生成水は単一の水リリーフ制御盤に… | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-02 | 生成水は、燃料電池と給水タンクの圧力差によって給水タンクへ送られる（訓練マニュアル5.1節）。 | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-03 | 水素を含む生成水は水リリーフ制御盤から2台の水素分離器を通り、余剰水素の85%が除かれる。分離器は水素と親和性のある銀パ… | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-04 | 水素は銀パラジウム管の壁を透過し、真空ベント配管から船外へ排出される（訓練マニュアル5.1節）。 | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-05 | タンクAへ入る水は微生物フィルタを通って約0.5 ppmのヨウ素を加えられ、タンクA内の微生物の増殖が防がれる（SCOM… | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-06 | タンクAが満杯か入口弁が閉じているときは、水は1.5 psidの逆止弁を経てタンクBへ、さらに次の1.5 psidの逆止… | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-07 | 主経路の閉塞に備えて、各燃料電池の生成水配管にはタンクBの入口マニホールドへ向かう並列の冗長経路が設けられ、この経路は水… | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-08 | 冗長経路には温度センサがあり、主経路の圧力はテレメトリとBFS THERMAL表示で監視でき、水リリーフ盤の共通出口のp… | REQ-WTR-01 | 要求あり |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-09 | 燃料電池水のpH表示が高いときは、生成水を小便器へ流してpH試験紙で確かめる。高いpHは水中の水酸化カリウム（KOH）の… | — | 要求なしで妥当（同じ文書の REQ-WTR-01 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-10 | 給水圧が40 psiaを超えると、故障処置手順6.5dでタンクの過充填かタンクA/B間の逆止弁の故障かを切り分け、タンク… | — | 要求なしで妥当（同じ文書の REQ-WTR-01 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-11 | STS-82では水素分離器のない冗長経路から給水系へ水素が入り、EMUへの水素の混入を防ぐため、すべてのEVAとEMU補… | — | 要求なしで妥当（同じ文書の REQ-WTR-01 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-H2O-FCW-001 | F-ECL-H2O-FCW-12 | IOAの評価（1988年）は、燃料電池出口配管の流れの制限は燃料電池の「デッドヘッド」を招いて生命・機体の喪失につながり… | — | 要求なしで妥当（同じ文書の REQ-WTR-01 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-01 | パネルR11LのSUPPLY H2O GALLEY SUP VLVスイッチを開にすると、給水は並列の2経路に分かれ、一方… | REQ-WTR-09 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-02 | ギャレー給水弁を閉じると飲料水はミッドデッキのECLSS給水パネルから切り離され、ギャレーを搭載しない飛行では冷水と常温… | REQ-WTR-09 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-03 | チラーはARSの水冷却ループで乗員の飲料水を冷やす（訓練マニュアル3.3.8節）。 | REQ-WTR-09 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-04 | ギャレーの復水ステーションは、食品・飲料パックへ0.5オンス刻みで0.5〜8オンスを給水し、温水（145〜165°F）と… | REQ-WTR-09 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-05 | 個人衛生用の水は、ギャレー搭載時は補助ポートのQDから、非搭載時は給水器のQDから12 ftのホースで取り出し、ホースの… | REQ-WTR-09 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-06 | ギャレーのヨウ素除去装置（GIRAまたはLIRS）は飛行1日目に取り付け、帰還日に水分補給の準備の後に外す。GIRAは冷… | REQ-WTR-10 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-07 | GIRAの使用中は常温・温水の摂取を1人1日16オンスまでとし、冷水は制限しない。就寝中は冷水ラインをGIRAから外し、… | REQ-WTR-10 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-08 | GIRAの取付けでは、常温（非断熱）の供給ラインに微生物チェック弁（MCV）を、冷水（断熱）のラインにフィルタと活性炭・… | REQ-WTR-10 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-09 | ISSドッキング飛行では余剰の給水を船外へダンプせず、専用の移送ラインか、ギャレーで手作業で満たす移送バッグでISSへ移… | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-10 | STS-114では19個のCWCに給水を満たし、そのうち18個（計1,739.7 lb）をISSへ移送した。 | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-11 | 水タンクの窒素加圧を失うとギャレーへの給水圧が下がり、復水ステーションの給水量が設定より少なくなることがある。タンクAを… | REQ-WTR-09 | 要求あり |
| SSD-FD-ECL-H2O-GAL-001 | F-ECL-H2O-GAL-12 | STS-59ではギャレーの温水・冷水に気泡が混じったが、オービタの給水系からの気体の混入ではなく、給水時のベンチュリ効果… | REQ-WTR-09 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-01 | 給水・廃水タンクは通常PCSの窒素で加圧され、窒素圧は乗員室圧より15.5〜17.0 psi高く保たれて、水を系統へ送る… | REQ-WTR-05 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-02 | PCS系統1・2の200 psigの窒素は水タンク用N2レギュレータ（流量1 lb/hrに制限）で15.5〜17.0 p… | REQ-WTR-05 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-03 | 窒素系統1・2はそれぞれ単独で水タンクを加圧でき、パネルMO10WのH2O TK N2 REG INLETとH2O TK… | REQ-WTR-05 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-04 | 打上げ時はタンクAを乗員室へベントする。機体の姿勢と加速度が生成水の流入を妨げ、窒素で加圧したままだと生成水が船外へ逃げ… | REQ-WTR-06 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-05 | パネルML26CのSUPPLY H2O GN2 TK A SPLY弁とTK VENT弁（いずれも2位置の手動弁）で、タン… | REQ-WTR-06 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-06 | タンクAの弁は、タンクAの量が98（93）%に達する前とタンクBが空になる前に開・加圧の位置へ戻す。満量前に加圧しないと… | REQ-WTR-06 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-07 | タンクA供給弁を開いてベント弁をベント位置にすると全タンクを乗員室圧にでき、漏れが乗員室内なら窒素圧を抜けば漏れが止まる… | REQ-WTR-05 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-08 | 窒素系統1・2がどちらも使えない場合は、パネルL1のH2O ALTERNATE PRESSスイッチを開にして乗員室の圧力… | REQ-WTR-05 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-09 | 代替加圧弁は飛行中は通常閉じる。開くと水系の圧力が乗員室圧まで下がるため、非常時にだけ使う（運用飛行規則A17-501）… | REQ-WTR-05 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-10 | 水タンクのN2圧が13.0 psig未満でSMアラートが出ると、故障処置手順6.2iでレギュレータやセンサの故障、N2の… | REQ-WTR-05 | 要求あり |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-11 | 湿度分離器の漏水などで水タンクを減圧している場合は、ダンプの約30分前から再加圧してダンプ時間を短くし、ダンプ後に再び減… | — | 要求なしで妥当（同じ文書の REQ-WTR-05・REQ-WTR-06 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-H2O-PRS-001 | F-ECL-H2O-PRS-12 | 廃水タンクにかかわる隔離できない窒素漏れでは水加圧系への窒素供給を止め、IFMで廃水タンクを切り離してから残りを通常の圧… | — | 要求なしで妥当（同じ文書の REQ-WTR-05・REQ-WTR-06 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-01 | 給水タンク4基（各165 lb）はミッドデッキ床下にあってPCSの窒素で加圧され、各タンクはベローズ、水量センサ、入口弁… | REQ-WTR-02 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-02 | 水量センサはタンクのベローズの位置から水量を示し、ベローズが漏れると表示は60〜70%付近にとどまる。疎水性フィルタは、… | REQ-WTR-02 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-03 | タンクAは処理水と未処理水を分けるため出口弁を通常閉じて乗員の飲用に充て、タンクB・C・DはFESの冷却に使われることが… | REQ-WTR-02 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-04 | 4基の出口は出口マニホールドにまとめられ、タンクBとCの間のクロスオーバ弁でA-B側とC-D側に分かれる。A-B側はFE… | REQ-WTR-02 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-05 | FES給水系統Aの水はFESへ直接送られ、系統Bの水はパネルR11LのSUPPLY H2O B SPLY ISOL VL… | REQ-WTR-02 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-06 | FES給水配管は約100 ftあり、パネルL2のFLASH EVAP FEEDLINE HTRスイッチで冗長のサーモスタ… | REQ-WTR-03 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-07 | 軌道上は燃料電池が飲用とFES冷却に要する以上の水を生むため、タンクA・Bのダンプと充填で水を管理する。ダンプは通常12… | REQ-WTR-04 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-08 | タンクCは、ペイロードベイ扉を閉じたままの軌道離脱の見送りや緊急の軌道離脱でFESに使う予備として、通常満杯に保つ（訓練… | REQ-WTR-04 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-09 | 運用飛行規則は、軌道上の標準構成（タンクA入口開・出口閉、タンクB〜Dの入口・出口開、クロスオーバ弁開）と、ISSへの給… | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-10 | ヨウ素がFESのコアを腐食させるため、タンクAの水を使うダンプとFES運転は最小にし、タンクAの水は飲用、非常時、着陸機… | REQ-WTR-04 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-11 | いつでも帰還できるための給水の最小量は175 lbm（165分の緊急軌道離脱の冷却に相当）とし、通常構成ではPLS点火の… | REQ-WTR-04 | 要求あり |
| SSD-FD-ECL-H2O-SPL-001 | F-ECL-H2O-SPL-12 | 乗員室に遊離した給水はIFMで直ちに処理し、修理できないか隔離できない漏れのあるタンクはベント・ダンプして隔離し、以後は… | — | 要求が抜けている（本書の判断。今後の課題） |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-01 | 廃水タンクは給水タンクと同じ形の1基で、ミッドデッキ床下にあり、乗員の液体廃棄物（尿）と湿度分離器の凝縮水を処分まで衛生… | REQ-WTR-11 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-02 | 廃水タンクの排出可能量は165 lb（残量3.3 lbを除く）で、給水タンクと同じ窒素源で加圧される（SCOM 2.9節… | REQ-WTR-11 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-03 | 廃水はパネルML31CのWASTE H2O TANK 1 VLVスイッチで操作する入口弁から入り、入口弁を開けばタンクの… | REQ-WTR-11 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-04 | 凝縮水QDの追加に伴い、湿度分離器の共通出口はドレン配管経由で廃水タンクにつながり、出口（ドレン）弁を開くと凝縮水がタン… | REQ-WTR-11 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-05 | 廃水タンクは量が80%に達する前に廃水ダンプ配管からダンプし、最後の着陸日を支える場合は最終着陸機会の2時間後に93（8… | REQ-WTR-12 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-06 | 廃水の管理は、ダンプとCWCの使用を優先し、次いでクロスタイ経由の給水ノズルからのダンプ、飛行の早期終了、最後のEMU補… | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-07 | 廃水タンクは0（5）%までダンプしない。0%ではダンプ配管とベローズが真空になり、WCSと湿度分離器の逆止弁が開いて乗員… | REQ-WTR-12 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-08 | 廃水タンクは、充填できない、タンクか入口マニホールドに修理できない漏れがある、98（93）%でダンプ能力を失った、または… | REQ-WTR-12 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-09 | 過去の飛行で廃水の生成量は1人1日最大6.2 lbあり、ISSミッションではISSとの結合中の廃水ダンプを減らすため湿度… | REQ-WTR-11 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-10 | 廃水タンクは1人1日約4.4%ずつ増え、尿と凝縮水の寄与はほぼ等しい（SCOM ECLSSの経験則）。 | REQ-WTR-11 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-11 | 漏れのある廃水タンクはベントして乗員室と同圧にしてダンプし、湿度分離器とWCSのファンセパレータの液体をCWCで集める。… | REQ-WTR-08 | 要求あり |
| SSD-FD-ECL-H2O-WST-001 | F-ECL-H2O-WST-12 | 廃水圧が13 psig未満か22 psig超でSMアラートが出ると、故障処置手順6.5cでベローズの損傷や、廃水量95%… | REQ-WTR-12 | 要求あり |

## 14. トレース表（WCS）

廃棄物収集系（WCS）の下位の機能行 60行と、割り付けた要求を示す（要求あり 59行）。

| 文書 | 機能行 | 機能（要約） | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-01 | 便器は27×27×29インチで通常のトイレと同様に使い、固形廃棄物を集めて貯蔵する多層の疎水性多孔質バッグライナを1枚持… | REQ-WCS-01 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-02 | 便器は使用中は加圧されてファンセパレータが搬送気流を作り、使わないときは減圧されて固形廃棄物を乾燥・不活性化する（SCO… | REQ-WCS-01 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-03 | 便と尿の収集モードでは、MODEスイッチをCOMMODE/MANUAL/EMUにしてCOMMODE CONTROLハンド… | REQ-WCS-02 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-04 | 糞便は直径4インチの座面開口から、座面下の穴を毎分30 ft³で流れるキャビン空気で引き込まれて多孔質ライナにたまり、空… | REQ-WCS-01 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-05 | 紙類はすべてWCSのキャニスタバッグに入れて補助ウェットトラッシュ区画に置き、ティッシュは気流を妨げ便器のかさを増すため… | REQ-WCS-01 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-06 | COMMODE CONTROLハンドルをBACK/DOWN位置にするとスライド弁が閉じて便器が減圧される。使用後にハンド… | REQ-WCS-02 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-07 | 1987年の飛行運用マニュアルは、収集器の必要気流を便器で毎分30 ft³、貯蔵容積を2.4 ft³、真空ベントを通る系… | REQ-WCS-01 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-08 | 便器の内容物は、トルクレンチ（50 in-lb）で2枚羽根の圧縮器のクランクを回して寄せ、1回目は時計回り、2回目は反時… | REQ-WCS-01 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-09 | スライド弁が開かない、便器が満杯で空にできない、糞便を保持する気流が得られない、使用時に真空ベントを外せない、糞便の貯蔵… | REQ-WCS-09 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-10 | COMMODE CONTROLハンドルには真空側と乗員室側が同時に開く可動範囲があり、ゆっくりまたは不完全に操作するとキ… | REQ-WCS-02 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-11 | 便器の制御弁が故障した場合は、制御弁の連結部を点検・試験し、必要なら手で操作する（IFMチェックリストW-61）。 | REQ-WCS-02 | 要求あり |
| SSD-FD-ECL-WCS-CMD-001 | F-ECL-WCS-CMD-12 | STS-8では、真空にさらした収集器の圧力が通常より高く、1〜2 lb/hrのキャビン漏れに相当した。スライド弁の開閉と… | REQ-WCS-02 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-01 | 尿と空気の混合物はファンセパレータに軸方向から入り、回転する衝突分離器が液体を回転貯液部の外壁へ飛ばす。遠心力で分離した… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-02 | 空気は回転室から引き出され、臭気・細菌フィルタを通ってキャビン空気と混ざり、乗員室へ戻る（SCOM 2.25節）。 | REQ-WCS-04 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-03 | WMSのすべての気体はファンセパレータから臭気・細菌フィルタへ導かれてキャビン空気と混ざり、フィルタは飛行中に取り外して… | REQ-WCS-04 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-04 | 臭気・細菌フィルタは長さ10インチ・直径7インチの円筒で、活性炭と、0.45 μmを超える粒子の99.999%を除くろ材… | REQ-WCS-04 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-05 | 各ファンセパレータは回転室5,800 rpm、1相あたり115±5 Vの三相交流で働き、3 Aの遮断器と248°Fの過熱… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-06 | ファンセパレータ1・2は、パネルMA73CのAC1・AC2 WCS FAN SEP遮断器（計6個）から三相交流を、パネル… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-07 | 交流の1相を失うと、WCSのファンセパレータは2相運転となり気流が低下する。EDO WCSの尿ファン・分離器は直流モータ… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-08 | 直流または交流の電力を確立できないか、分離器があふれて回復できない場合は、WCSのセパレータを喪失とする。セパレータの主… | REQ-WCS-09 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-09 | 両方のファンセパレータがあふれて止まった場合に限り、廃水ダンプ系を使って分離器の出口を真空にさらし、出口圧力を下げて回復… | REQ-WCS-09 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-10 | 臭気・細菌フィルタはWCSを通る気流からアンモニアを除くよう設計され、EVA後の大気除染では便器を運転してフィルタに最大… | REQ-WCS-04 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-11 | 火災の鎮火後は、WCSの活性炭フィルタ、ATCO、LiOHキャニスタで乗員室の大気を浄化する（SCOM 6.8節）。 | REQ-WCS-04 | 要求あり |
| SSD-FD-ECL-WCS-FSP-001 | F-ECL-WCS-FSP-12 | STS-65（EDO WCS）では、ファンセパレータ1が運転中に異音と臭気を出し、回転数が通常に達しなかったためファンセ… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-01 | WCSの制御器はVACUUM VALVE、FAN SEP選択スイッチ、MODEスイッチ、ファンセパレータのバイパススイッ… | REQ-WCS-02 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-02 | 不使用時は、COMMODE CONTROLハンドルをOFF（後ろ・下）、FAN SEPを1、MODEをOFF（尿収集弁を… | REQ-WCS-02 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-03 | レバーロック式のFAN SEP 1・2 BYPASSスイッチは、FAN SEPまたはMODEスイッチ内のリミットスイッチ… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-04 | ファンセパレータの切替では、ホースをクレードルに収めてFAN SEP選択スイッチをOFFにし、ホースブロックを切替先に合… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-05 | 乗員室の再与圧中（N2の大流量でO2濃度が下がりうる）と、EMUの排水中（分離器の最大廃水流量0.09 lbm/sを超え… | REQ-WCS-06 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-06 | インラインフィルタからWCS/廃水系の境界のQDまでの尿配管に修理できない漏れがある場合は、乗員室に水が漏れないよう、W… | REQ-WCS-06 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-07 | 便器を失った場合はアポロ型の便袋で、尿収集を失った場合は男性用の採尿具（UCD）か女性用の吸収具（UAS）で代替する。標… | REQ-WCS-09 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-08 | 隔離弁が閉で故障した場合は、収集器圧力で真空ベントのオリフィスからの排気を監視する。真空ベント機能を失った場合は、WCS… | REQ-WCS-08 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-09 | 飛行継続の判断（A17-1001）では、WCSがない場合は少なくともPLS＋2日（3日）分の袋が要り、飛行の終了時期は排… | REQ-WCS-09 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-10 | AC1母線を失った場合はWCSのファンセパレータ1が止まるため、ホースをクレードルに収め、ホースブロックとFAN SEP… | REQ-WCS-03 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-11 | 小さなキャビン漏れの切り分けでは、MCCの指示でCOMMODE CNTLを下げ、WCSのVAC VLVと真空ベント隔離弁… | REQ-WCS-06 | 要求あり |
| SSD-FD-ECL-WCS-OPS-001 | F-ECL-WCS-OPS-12 | 使用後はウェットワイプでWCSを清掃し、1日1回は消毒用ワイプで消毒する。小便器のファンネルも毎日消毒できる（SCOM … | — | 要求が抜けている（本書の判断。今後の課題） |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-01 | 小便器はホースに取り付けたファンネルで、男女とも使え、液体廃棄物を集めて廃水タンクへ運ぶ。液体の搬送気流はファンセパレー… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-02 | MODEスイッチがAUTOのとき、小便器のホースをクレードルから外すと選んだファンセパレータが働き、小便器を通して毎分1… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-03 | 1987年の飛行運用マニュアルは、無重量で液体を運ぶために気流を用い、尿の最大流量を0.09 lb/sとし、各乗員に個人… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-04 | ファンネルの根元には、気流中の異物を捕らえる円錐形の使い捨てプレフィルタ（40メッシュのステンレス網）があり、少なくとも… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-05 | EMU凝縮水の排出モードでは、MODEスイッチにガードをかぶせて停止を防ぎ、分離器があふれるおそれがあるため排出中は小便… | REQ-WCS-06 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-06 | EMU排出の配管はホースブロックの中央の管につながり、故障処置手順（ECLS 6.2b）はキャビン漏れの切り分けでこの管… | REQ-WCS-06 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-07 | 1987年の飛行運用マニュアルは、尿の流量を公称0.05 lb/s・最大0.09 lb/s、1回の最大量を1.8 lb、… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-08 | 配管の閉塞・漏れや両方の分離器の喪失などで、いずれの経路でも尿を廃水系へ運べない場合は、WCSの尿収集を喪失とする（A1… | REQ-WCS-09 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-09 | WCSの清掃では、プレフィルタを点検して1日1回または必要に応じて交換し、ホースブロックから外したホースのスクリーンを点… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-10 | 尿前処理のため、プレフィルタハウジングとホースブロック延長の間にOxoneホース区間（OHS）を取り付け、定期的に交換す… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-11 | STS-108では、STS-97のWCSで見つかった想定外の析出物に対処するため、アルカリ性と酸性の尿の固形物の生成を防… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-URN-001 | F-ECL-WCS-URN-12 | STS-4では小便器の気流が飛行中に低下し、プレフィルタを1回清掃すると回復した。飛行後の点検でプレフィルタの30%が目… | REQ-WCS-05 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-01 | 真空ベント系はオービタに制御された船外への抽気の経路を与え、真空ベント管は内径1.93インチで、乗員室内から船外へ通じる… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-02 | 真空ベント隔離弁は管の乗員室内の部分を隔離する。閉じても弁板のオリフィスが14.7 psiaで3.0±0.25 lb/h… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-03 | 隔離弁は上昇・再突入中は閉じ、軌道上で開くと管とノズルのヒータが働いて管内の水蒸気の凍結を防ぐ。WCSは真空ベント管で運… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-04 | 打上げ・再突入ではWCSのVACUUM VALVEを閉じ、軌道上でWCSを使わないときは開いて便器を船外にさらし、固形廃… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-05 | 真空ベント管はWCSの3方ボール弁で分岐し、便器の下流の手動弁でWCSを真空ベント系から隔離できる。WCSの故障でキャビ… | REQ-WCS-08 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-06 | 隔離弁はパネルML31CのWASTE H2O VACUUM VENT ISOL VLV CONTROLスイッチで開閉し、… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-07 | 真空ベント管のサーモスタット制御のA・BヒータはパネルML86BのH2O LINE HTR A・B遮断器から給電され、ノ… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-08 | ウェットトラッシュ区画の空気は約3 lb/dayで船外へ排気され、そのためにはWCSの真空ベント弁を開いておく必要がある… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-09 | 真空ベントの主な機能は、燃料電池の生成水から除いたH2（約9.75×10⁻⁵ lb/hr）などの気体廃棄物の船外排出と、… | REQ-WCS-07 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-10 | 真空ベント系が故障した場合は、WCSのボール弁と真空ベント弁の間にある真空ベントQDから非常用廃水クロスタイQDへ移送ホ… | REQ-WCS-08 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-11 | 隔離弁の閉固着とオリフィスの閉塞に対しては、真空ベント系を廃水ダンプ系に接続して、水素分離器のH2とウェットトラッシュの… | REQ-WCS-08 | 要求あり |
| SSD-FD-ECL-WCS-VAC-001 | F-ECL-WCS-VAC-12 | IOAのFMEA/CIL評価（1988年）は、真空ベントダンプ管の閉塞やヒータの喪失で管内に水素と酸素の危険な混合気が生… | REQ-WCS-08 | 要求あり |

## 15. トレース表（FDS）

火災検知・消火系（FDS）の下位の機能行 58行と、割り付けた要求を示す（要求あり 58行）。

| 文書 | 機能行 | 機能（要約） | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-01 | 煙検知・消火の警報は急減圧とともにクラス1（緊急）警報で、ハードウェアだけで発報し、音は煙検知系が起動するサイレンで、急… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-02 | 感知器のトリップ信号は、パネルL1の該当するSMOKE DETECTION灯と、パネルF2・F4・A7・MO52Jの4つ… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-03 | サイレンは666〜1,470 Hzを5秒周期で上下する音で、いずれかのMASTER ALARM押しボタンで止められる。バ… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-04 | L1のCABIN灯はキャビンファン・プレナムの感知器、L FLT DECK・R FLT DECK灯は左右の還流ダクトの感… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-05 | 警報はSENSOR RESETまでラッチされ、ラッチ中は別の火災が起きても2回目のサイレンは鳴らないが、L1灯とSM S… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-06 | CIRCUIT TESTをAまたはBにすると、AGENT DISCH灯が点灯し、約20秒後にSMOKE DETECTIO… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-07 | CIRCUIT TESTはCNTL BUS BC3の28 VをA群またはB群の感知器に加えて灯と20秒の遅れを試験し、S… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-08 | 軌道運用チェックリストの回路試験は、A・Bの各回路を5〜10秒でOFFにする方法と15〜25秒待つ方法の2通りで行い、A… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-09 | 警報後に感知器をリセットし、5秒で再警報すれば濃度、20秒で再警報すれば増加率による警報である。直ちに再警報すれば感知器… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-10 | 故障処置手順C/W 4.2dは、煙検知灯のないサイレンに対し、SM SYS SUMM 1の濃度（2.2超または20秒で0… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-11 | C&Wの電源A（B）を失うと、音声発生器A（B）による煙警報音が失われる（SCOM 2.2節）。 | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-ALM-001 | F-ECL-FDS-ALM-12 | SCOMの経験則は、煙濃度が1.8を下回ったらSENSOR RESETを押し、次の警報がマスクされるのを防ぐとする（SC… | REQ-FDS-03 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-01 | 煙感知器は乗員室と3つのアビオニクスベイに計9個あり、A群はキャビンファン出口・フライトデッキの左還流ダクト・各ベイに1… | REQ-FDS-01 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-02 | 感知器は煙粒子の濃度とその増加率を感知し、濃度2,000±200 µg/m³が5秒以上続くか、毎秒22 µg/m³の増加… | REQ-FDS-01 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-03 | 感知器は容積形ポンプで周囲の空気を連続して吸引し、入口で40ミクロンを超える粒子を除き、分離器で2ミクロン以下の粒子だけ… | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-04 | 感知室と基準室はアメリシウム241のα線で空気を電離し、煙の微粒子で感知室の電流が下がることによる両室の電流差から、警報… | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-05 | 感知器は過電流による電線束の加熱などで出る微小粒子に感度があり、火災の前段階（presmoke）で警報を出す（C&W訓練… | REQ-FDS-01 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-06 | 感知器はBrunswick社の能動式イオン化感知器で、交流同期電動機で回す回転ベーン式容積形ポンプで空気を吸い込み、大き… | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-07 | 開発では、当初の水晶振動子マイクロバランス（QCM）方式を寿命の問題からイオン化室に替え、空気密度による信号のずれを2つ… | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-08 | 空気ポンプはベーン材をFluoroloy Dに替えて12,000時間を超える運転を実証し、電動機は湿式軸受と低回転化で2… | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-09 | 各感知器は警報と濃度計測の2つの独立な指示を出し、回路試験で検出できるハードウェア故障は空気ポンプの故障だけである。試験… | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-10 | 煙検知が働くには、各区画でアビオニクスベイファンとキャビンファンによる空気の循環が必要である。感知器の温度制限（130°… | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-11 | STS-28（1989年）では、テレプリンタのケーブルの短絡で火花が出たが、感知器の濃度は最大でも警報設定値2,000 … | REQ-FDS-02 | 要求あり |
| SSD-FD-ECL-FDS-DET-001 | F-ECL-FDS-DET-12 | STS-8では、アビオニクスベイ1のB感知器が断続的に煙警報を出したが同じベイのA感知器は煙を示さず、9個すべてが試験で… | REQ-FDS-01 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-01 | 前方アビオニクスベイ1・2・3AにHalon消火ボトルが1本ずつ常設され、各ボトルは長さ8 in・直径4.25 inの圧… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-02 | 放出は、パネルL1の該当するFIRE SUPPRESSIONスイッチをARMにし、AGENT DISCH押しボタンを2秒… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-03 | FIRE SUPPRESSION AV BAY 1（2、3）のSAFE/ARMスイッチは、主母線B（C、A）からの電力を… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-04 | ARMでカバー付きのAGENT DISCH押しボタンに電力が加わり、押した後1秒の時間遅れで誤放出を防いでから主母線の電… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-05 | ボトルのノズル組立は1.5 inノズル・PIC・ばね・中空円筒形の刃から成り、PICの爆発でばねが刃を容器の隔膜に打ち込… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-06 | ボトル圧力が60±10 psigを下回るとAGENT DISCH灯が点灯し、ボトルが放出されたことを示す（SCOM 2.… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-07 | 放出でベイ内のHalon濃度は7.5〜9.5%になり、消火に必要な濃度は4〜5%である。携帯消火器をベイに放出した場合は… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-08 | ベイのHalonはベイファンが運転していても50時間有効である。放出時には感知器の濃度が約7,500 µg/m³に跳ね上… | REQ-FDS-05 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-09 | 放出時にはベイの圧力が一時的に約1 psia上がり、放出音は乗員に聞こえ、試験では最大143 dBに達した（C&W訓練マ… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-10 | AGENT DISCH灯が放出音を伴わずに点灯した場合、または音を伴う点灯から50時間（冷却を強化しアクティブ冷却のペイ… | REQ-FDS-05 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-11 | 固定ボトルのHalon充填量は1.7 kg、放出時間は1秒である（Friedman・Dietrich、1991年）。 | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-FIX-001 | F-ECL-FDS-FIX-12 | IOAのFMEA/CIL評価（1988年）は、ベイの消火ボトルの回路が単一系統であることを重視し、主ボトルが放出できない… | REQ-FDS-04 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-01 | 火災は、乗員による炎・煙の目視、またはベイでは同じ区画の2個の感知器が2,000 µg/m³を超える場合、1個が2,00… | REQ-FDS-08 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-02 | 乗員室の火災では、乗員は感知器の警報より先ににおいで気づくことが多く、Halonを放出する前に火元を特定して火災を確かめ… | REQ-FDS-08 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-03 | ベイの煙検知は、一方の感知器が回路試験の両方に不合格で他方がいずれかに不合格の場合、両感知器の電源を保てない場合、両ベイ… | REQ-FDS-09 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-04 | ベイの煙検知を失った場合は、持続的な短絡による機器故障があればHalonを放出し、ベイ1・2ではOMS-2後に空冷機器と… | REQ-FDS-09 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-05 | ベイ3は通信とC&Wの機器を切れないため、ベイ3の前のロッカーを外して乗員室の感知器と乗員で監視し、再突入の電源投入前に… | REQ-FDS-09 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-06 | 乗員室の煙検知を失った場合は乗員の1人が常に起きて煙・火災を監視し、区画に指示が2つしか残らない場合は毎日回路試験を行う… | REQ-FDS-09 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-07 | 火災の処置は、ベイではHalonボトルの放出・ベイファンの停止・ヘルメットのバイザーを下ろすこと、乗員室ではキャビンファ… | REQ-FDS-08 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-08 | ベイの火災後はベイを船外へパージし、乗員室に燃焼生成物があれば8 psiへ減圧して連続パージする。減圧中にベイの有毒物を… | REQ-FDS-08 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-09 | 火災の確認のないHalon放出では、ベイは船外へパージし、放出時刻が分からなければ打上げ時に放出したとみなす。携帯消火器… | REQ-FDS-08 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-10 | ベイへ放出したHalonは50時間で約50%、100時間で全量が乗員室へ拡散し、LiOHの活性炭やATCOではほとんど除… | REQ-FDS-07 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-11 | 火災後は、CSA-CPで15分ごとにO2・CO・HCN・HClを記録してMCCへ報告し、濃度に応じてATCO・活性炭・L… | REQ-FDS-08 | 要求あり |
| SSD-FD-ECL-FDS-OPS-001 | F-ECL-FDS-OPS-12 | 火災をDPS表示の濃度で確かめたら、軌道上はQDM、上昇・再突入中はバイザーを閉じて酸素を吸い、固定または携帯のHalo… | REQ-FDS-08 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-01 | 乗員室には携帯消火器が3本（ミッドデッキに2本、フライトデッキに1本）あり、ノズルは計器盤の消火ポートに合う先細形である… | REQ-FDS-06 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-02 | 消火ポートには、表示付きラベルで覆った直径1/2 inの穴と、表示のない1/2〜1/4 inの先細の穴の2種類があり、パ… | REQ-FDS-06 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-03 | 携帯消火器は380 psigに加圧され、ベイの固定ボトルよりやや小さい。約90秒で全量を放出し、最初の30秒で90%が出… | REQ-FDS-06 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-04 | 消火器は長さ約13.3 in・直径3.5 inで約3.75 lbのHalon 1301を収め、放出時間は1 gで18±2… | REQ-FDS-06 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-05 | 消火器は片手で2秒以内に取り外せ、リングピンを抜いてトリガを握って放出する。無重量では2.4 lbの推力で乗員が動かされ… | REQ-FDS-06 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-06 | 消火ポートはアビオニクスベイ・ギャレー・CFES・WCS・計器盤にあり、計器盤内部の火災ではポートに、開放空間の火災では… | REQ-FDS-06 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-07 | ベイの火災はパネルL1から遠隔操作する固定ボトルで消火し、その場合も再突入の直前に携帯消火器を該当するベイへ放出する（飛… | REQ-FDS-06 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-08 | 乗員室でHalonが有効なのはキャビンファンを止めたときだけで、空気が循環していると3本すべてを放出しても濃度は1%未満… | REQ-FDS-07 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-09 | Halon 1301は無色・無臭・非導電性で、暴露は7%以下なら15分、7〜10%は1分、10〜15%は30秒までとし、… | REQ-FDS-07 | 要求あり |
| SSD-FD-ECL-FDS-PFE-001 | F-ECL-FDS-PFE-10 | Halonは炎や約900°Fの高温面に触れて分解してから消火に働くとされ、分解生成物はわずかな濃度でも刺激臭のある有害な… | REQ-FDS-07 | 要求あり |

## 16. トレース表（ALS）

エアロック支援系（ALS）の下位の機能行 71行と、割り付けた要求を示す（要求あり 67行）。

| 文書 | 機能行 | 機能（要約） | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-01 | 外部エアロックはペイロードベイにあり、Xo 576隔壁のミッドデッキハッチからトランスファトンネル、エアロック、トンネル… | REQ-ALS-01 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-02 | 外部エアロックは直径63インチ、長さ83インチ強で、直径40インチのD字形開口が3つあり、内側ハッチ・EVハッチ・ドッキ… | REQ-ALS-01 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-03 | 各ハッチはギアボックス・アクチュエータ付きのラッチ、窓、保持装置付きのヒンジ、両側の差圧計、2個の均圧弁、二重の圧力シー… | REQ-ALS-01 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-04 | ミッドデッキハッチは常にB型、上部ハッチはEVA用では通常B型でドッキング用ではD型のこともあり、後部ハッチは与圧モジュ… | REQ-ALS-01 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-05 | 均圧弁はキャップと3位置スイッチ（OFF・NORM・EMER）を持ち、14.5 psidでNORMは240 lb/hr、… | REQ-ALS-01 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-06 | エアロック減圧弁は押してから回す3位置（CLOSED・5・0）の回転スイッチで、「5」位置は0.59インチのオリフィスで… | REQ-ALS-02 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-07 | 通常はハッチを開けたままで、エアロックの圧力は均圧弁で乗員室と等しく保たれ、減圧弁は乗員室の10.2 psiaへの減圧と… | REQ-ALS-02 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-08 | 乗員室の10.2 psiaへの減圧では、O2濃度を適正に保ちながら減圧弁を通常2回開き、「5」位置で約30分かかり、減圧… | REQ-ALS-02 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-09 | ドッキング前は内側ハッチと均圧弁を閉じてエアロックを隔離し、ドッキング後にエアロック圧力が下がらないことで漏れがないこと… | REQ-ALS-03 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-10 | トンネルアダプタを搭載する場合は、後部ハッチのトンネルアダプタ側のダクトにペイロード隔離弁を設け、トンネルアダプタを真空… | REQ-ALS-02 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-11 | 運用飛行規則は、乗員室の気密を保ったままエアロックを減圧・再与圧できない場合（いずれかのハッチの漏れによるエアロック圧力… | REQ-ALS-03 | 要求あり |
| SSD-FD-ECL-ALS-DEP-001 | F-ECL-ALS-DEP-12 | EVA乗員を与圧したエアロックの外に締め出すのは、乗員が大きく離れていて再与圧の時間が重要なアボートEVAの場合に限る。… | REQ-ALS-03 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-01 | 与圧区画の外を通る6本の水配管（EMU 1・2のLCG供給・戻り各1本、飲料水供給1本、廃水戻り1本）はQDパネルで2区… | REQ-ALS-04 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-02 | エアロック外殻の3区域（上部隔壁の前・後半分と下部隔壁のキール金具）の構造パッチヒータは、特に真空時にエアロック内部を氷… | REQ-ALS-05 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-03 | ベスティビュールヒータはドッキング機構の一部でECLSSには含まれないが、構造ヒータと同じ形式の二重冗長・3区域のヒータ… | REQ-ALS-05 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-04 | 各ヒータ系統（水配管・構造・ベスティビュール）は単独で熱調整できるため1系統ずつ運転し、軌道投入後に主母線AのMNA系統… | REQ-ALS-04 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-05 | 外部エアロックの構造・水配管ヒータは、打上げ前はペイロードベイの熱調整で不要なため入れず、軌道上でできるだけ早く入れる（… | REQ-ALS-05 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-06 | 軌道上のヒータ再構成（CONFIG B）では、パネルML86BのMNAの外部エアロックヒータ（配管区域1・2と構造区域1… | REQ-ALS-05 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-07 | 外部エアロックの水配管は、区域1・2のいずれかで配管温度を32°F（40°F）超に保てない場合に喪失とみなす（A18-6… | REQ-ALS-04 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-08 | EVA中でダクトを外している間は、エアロック内部の能動的な熱制御は構造ヒータだけで、機体姿勢によってはヒータ区域の故障で… | REQ-ALS-05 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-09 | EVA中は上部・後部ハッチの断熱カバーを閉じておき、開いた場合はEVA乗員がエアロックに戻って閉じる。カバーとハッチが開… | REQ-ALS-05 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-10 | 冗長のヒータ系統の計測を失った場合は両系統を同時に運転し、水配管ヒータは3系統のうち2系統を使う（A18-304）。 | REQ-ALS-04 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-11 | 水配管ヒータまたは構造ヒータを失った場合は、機体姿勢の管理で外部エアロック内外の水配管の凍結を防ぐ。水配管を失うとEMU… | REQ-ALS-04 | 要求あり |
| SSD-FD-ECL-ALS-HTR-001 | F-ECL-ALS-HTR-12 | SMのEXT A/L H2O LN T警報では、温度の変化からヒータの電源喪失やサーモスタットの開故障・閉故障を切り分け… | REQ-ALS-04 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-01 | LCVGの冷却水はEMUごとの2本の閉ループでエアロックに出入りし、SCUにつないだ状態でLCVGを冷やす。この水はLC… | REQ-ALS-06 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-02 | LCVG熱交換器は、EVAの前後にLCVGを冷やす水ループを冷却するもので、エアロック内にある（訓練マニュアル3.3.7… | REQ-ALS-06 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-03 | オービタの水冷却ループの冷えた水は、液冷服熱交換器、飲料水チラー、キャビン熱交換器、IMU熱交換器を通って各ループのポン… | REQ-ALS-06 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-04 | EMUの液体輸送系は遠心ポンプでLCVGに約240 lb/hrの水を循環させ、船内活動中はSCUを通してオービタの熱交換… | REQ-ALS-06 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-05 | LCG配管は外部エアロック・オービタの外を通り、機体姿勢による加熱やヒータの故障で圧力・温度が上がりやすい。ループにはア… | REQ-ALS-07 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-06 | SCUをEMUにつないだ状態でLCG配管の圧力が上がる場合は、18（16.6）psigに達する前にEMUのファン・ポンプ… | REQ-ALS-07 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-07 | LCG配管は、SCUを外した状態で圧力を28.1（26.4）psig以下に、SCUをEMUにつなぎEMUが非通電の状態で… | REQ-ALS-07 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-08 | LCG配管の予期しない圧力・温度上昇には、水配管ヒータの停止、機体姿勢の変更、EMUのファン・ポンプによる循環の順で対処… | REQ-ALS-07 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-09 | 有人のEMUにLCGの水を循環させるのはLCG2配管の温度が両区域で92°F以下のとき、無人のEMUでは110°F以下の… | REQ-ALS-07 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-10 | EVA中は、EMUの冷却故障に備えてLCGの冷却をいつでも使えるよう、LCG供給配管の温度を両区域で92°F以下に保つ（… | REQ-ALS-07 | 要求あり |
| SSD-FD-ECL-ALS-LCG-001 | F-ECL-ALS-LCG-11 | STS-108では、EVA中の機体姿勢が穏やかだったため、外部エアロックの補給配管は限界内に十分収まった。 | REQ-ALS-07 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-01 | エアロックと付属機器の各所のセンサが、空気と水の圧力、水と構造の温度、ベスティビュール弁の状態を乗員とMCCに提供し、専… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-02 | 構造温度センサはヒータ系統のサーモスタットの作動を監視する位置にあり、実際の構造温度やエアロック内の空気温度を測るもので… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-03 | 各ハッチの差圧は、ミッドデッキの乗員とEVA乗員の両方が読めるよう、ハッチの両側の差圧計に表示される（訓練マニュアル6.… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-04 | SPEC 177 EXTERNAL AIRLOCKはSM OPS 2だけで使え、エアロックの雰囲気、ベスティビュール減圧… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-05 | SPEC 177は、EXT A/L PRESS（0〜20 psia）、エアロック・ベスティビュール間差圧（±20 psi… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-06 | エアロック圧力（AIRLK P）はSM DISP 66 ENVIRONMENTにも表示される（SCOM 2.9節）。 | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-07 | 乗員室圧力トランスデューサの故障時は、SM 66のAIRLK PまたはSPEC 177のEXT A/L PRESSを乗員… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-08 | エアロック・船外間の差圧トランスデューサから求める乗員室圧力には最大±2.0 psiの誤差があり、10.2 psia運用… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-09 | 外部エアロックの圧力はドッキング機構のアビオニクス箱（DMCU・DSCU・LACU・PACU）内の雰囲気圧を代表し、8.… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-10 | 水配管の区域1・2には2個ずつの温度トランスデューサがあり、流れのないときの6本の配管の温度を代表するよう配置され、区域… | REQ-ALS-10 | 要求あり |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-11 | SPEC 177の故障メッセージ（177 EXT A/L PRESS、177 A/L VEST DP、177 AL H2… | — | 要求なしで妥当（同じ文書の REQ-ALS-10 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-ALS-MON-001 | F-ECL-ALS-MON-12 | OI MDM（OF1）を失うと、外部エアロックのLCG EV1供給配管圧、トラスフランジ温度、水配管ヒータ温度、水遮断弁… | — | 要求なしで妥当（同じ文書の REQ-ALS-10 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-01 | エアロックのEMUマウントはEMUの背面を壁の3つの取付具に固定して収納と着脱を支え、下部胴体拘束袋が打上げ・再突入時に… | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-02 | SCUは3本の水ホース、高圧O2ホース、電線、水圧調整器、張力保持テザーから成り、EMUとエアロックを結んで電力、有線通… | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-03 | エアロックを通るO2配管はEMUの補給に900 psiのO2を供給し、PCSのO2クロスオーバマニホールドから給気され、… | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-04 | エアロック床のEMU O2隔離弁は、エアロック内やペイロードベイへの移送配管の漏れを防ぐ手動の遮断弁で、その上流のEVL… | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-05 | EMUの給水（EVA中の昇華冷却用と飲用）は給水系のA・B出口系統から取り、途中のフィルタと逆止弁でEMUからオービタへ… | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-06 | PLSSの一次O2系は1.217 lbのO2を850 psiaで蓄え、SCUを通してオービタECLSSから850±50 … | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-07 | EMUの給水タンク（約9 lb、15 psig）は、オービタECLSSの飲料水で充填・再充填する（SCOM 2.11節）… | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-08 | EMU 1・2の電源・バッテリ充電器はパネルAW18Hで主母線A・Bのどちらかを選んで給電され、主母線A（MNA DA1… | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-09 | エアロックのオーディオ端末装置（ATU）は、パネルAW18DのMASTER VOLUME 1・2でエアロック内のCCU … | REQ-ALS-08 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-10 | EMUの消耗品のいずれかが残り30分になったEVA乗員はエアロックに入ってSCUに接続する。SCUはEMUのどの消耗品の… | REQ-ALS-09 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-11 | EMUのO2補給は、原則としてO2供給ラインの温度が80°F（指示値）以下のときに行い、EMUへ流れるO2を90°F未満… | REQ-ALS-09 | 要求あり |
| SSD-FD-ECL-ALS-SCU-001 | F-ECL-ALS-SCU-12 | EMUの給水の再充填は、外部エアロックの給水配管の温度が両区域で95°F以下のときに行う（A15-204D）。 | REQ-ALS-09 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-01 | エアロックにはキャビンファンの空気を回す吹出口がないため、乗員がダクトを手で張り、オービタARSの調整空気による湿度制御… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-02 | ダクトは、エアロックと上部ハッチ窓（ドッキングカメラ取付け部）の結露防止、床下のエアロック用アビオニクスベイの熱調整、ド… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-03 | ブースタファンは2台で1台ずつ使い、トンネルアダプタ（ない場合や後方搭載時はトンネルエクステンション）に取り付けられ、三… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-04 | ARSとのインタフェースはミッドデッキ床の継手で、外部エアロック構成では継手をXo 576隔壁寄りに移している。ファンは… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-05 | 訓練マニュアル図6-7は、ミッドデッキまたはブースタファンからの空気の入口、ハローダクト、ドッキング窓の曇り止め・ISS… | — | 要求なしで妥当（同じ文書の REQ-ALS-11 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-06 | 外部エアロックのハッチを開けた後、乗員がミッドデッキ床の継手からハッチ越しにダクトを張ってブースタファンにつなぎ、減圧の… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-07 | 軌道投入後の作業で、ミッドデッキの乗員がエアロックに入れるよう準備し、ダクトとブースタファンを設置してエアロックへ送気す… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-08 | ドッキングの最終接近の前に、内側のエアロックハッチを閉じ、エアロックファンの作動を確かめる（SCOM 2.19節）。 | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-09 | EVA後の乗員室大気の除染では、エアロックのハッチを開けた後、ブースタファンとダクトをできるだけ早く設置・起動する（A1… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-10 | AC1母線を失うとエアロック・トンネルのファンAを失うため、稼働中であればファンAを止めてファンBを運転する（MAL E… | REQ-ALS-11 | 要求あり |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-11 | キャビン・アビオニクスベイ・ブースタファンのフィルタ清掃は、MCCの指示がない限り行わない（IFM 4-2）。 | — | 要求なしで妥当（同じ文書の REQ-ALS-11 が受け持つ構成・運用の記述） |
| SSD-FD-ECL-ALS-VNT-001 | F-ECL-ALS-VNT-12 | STS-108では、ブースタファンAが3相とも正常に起動し、飛行中はファンAだけを運転した。 | REQ-ALS-11 | 要求あり |

## 17. トレース表（ATCS）

能動熱制御系（ATCS）の下位の機能行 33行と、割り付けた要求を示す（要求あり 32行）。

| 文書 | 機能行 | 機能（要約） | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-TCS-FCL-001 | F-TCS-FCL-01 | フレオン21冷却ループは同一構成の2系統で、各系統のポンプパッケージは2台のポンプとアキュムレータから成り、常に1台のポ… | REQ-ATCS-01 | 要求あり |
| SSD-FD-TCS-FCL-001 | F-TCS-FCL-02 | 金属ベローズ式のアキュムレータは窒素で加圧され、ポンプの吸入圧を確保し、熱膨張を吸収する。 | REQ-ATCS-01 | 要求あり |
| SSD-FD-TCS-FCL-001 | F-TCS-FCL-03 | フレオンは3基の燃料電池熱交換器と中胴コールドプレート網を並列に流れた後、油圧熱交換器、放熱器、GSE熱交換器、アンモニ… | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-FCL-001 | F-TCS-FCL-04 | その後、流路はECLSS酸素リストリクタ・ペイロード熱交換器・ARSインターチェンジャ側と、後部アビオニクスベイ4〜6側… | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-FCL-001 | F-TCS-FCL-05 | 左舷の放熱器パネルはループ1に、右舷のパネルはループ2に直列に接続される。 | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-FCL-001 | F-TCS-FCL-06 | 最初の39飛行では、コロンビアでのフレオン流量の低下が主要な問題の一つであった。 | REQ-ATCS-03 | 要求あり |
| SSD-FD-TCS-FES-001 | F-TCS-FES-01 | FESは上昇時の高度140,000 ft超で排熱し、軌道上では必要に応じて放熱器を補い、軌道離脱・再突入では高度約100… | REQ-ATCS-04 | 要求あり |
| SSD-FD-TCS-FES-001 | F-TCS-FES-02 | 1つの筐体に高負荷蒸発器とトッピング蒸発器があり、高負荷蒸発器は冷却能力が大きいが排気が左側のみで推力を生じる。 | REQ-ATCS-04 | 要求あり |
| SSD-FD-TCS-FES-001 | F-TCS-FES-03 | フィン付きの芯に水を噴霧して蒸発させ、水1 lbあたり約1,000 Btuの熱を奪う。 | REQ-ATCS-04 | 要求あり |
| SSD-FD-TCS-FES-001 | F-TCS-FES-04 | 水は飲料水タンクから給水系統A・Bで供給され、主制御器A・Bは出口温度を39°F、副制御器は62°Fに制御する。 | REQ-ATCS-04 | 要求あり |
| SSD-FD-TCS-FES-001 | F-TCS-FES-05 | トッピング蒸発器は、軌道上で余剰の飲料水を捨てるためにも使える。 | — | 要求が抜けている（本書の判断。今後の課題） |
| SSD-FD-TCS-FES-001 | F-TCS-FES-06 | STS-26とSTS-34では、FESの運用上の不具合が発生した。 | REQ-ATCS-04 | 要求あり |
| SSD-FD-TCS-GSE-001 | F-TCS-GSE-01 | 地上作業（点検・打上げ前・着陸後）では、フレオン21ループ内のGSE熱交換器が地上冷却によって機体の熱を排出する。 | REQ-ATCS-07 | 要求あり |
| SSD-FD-TCS-GSE-001 | F-TCS-GSE-02 | 打上げから高度140,000 ft未満（約125秒）までは、ループの熱容量（サーマルラグ）で熱を吸収する。 | REQ-ATCS-07 | 要求あり |
| SSD-FD-TCS-GSE-001 | F-TCS-GSE-03 | 射点ではパッド地上冷却系がGSE熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保する。 | REQ-ATCS-07 | 要求あり |
| SSD-FD-TCS-GSE-001 | F-TCS-GSE-04 | 地上冷却系は、整備施設・組立棟・着陸施設でのオービタ通電時にも必要とされた。 | REQ-ATCS-07 | 要求あり |
| SSD-FD-TCS-GSE-001 | F-TCS-GSE-05 | 着陸後の回収隊の冷却車は、T-0アンビリカルを通じてオービタの冷却系にFreon 114を供給した。 | REQ-ATCS-07 | 要求あり |
| SSD-FD-TCS-HX-001 | F-TCS-HX-01 | ATCSは、水／フレオン熱交換器でARSの熱を、各燃料電池熱交換器で燃料電池の熱を受け取り、ECLSS酸素供給ラインのP… | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-HX-001 | F-TCS-HX-02 | 開発では、フレオン冷却ループと他の5つの機体系の間で熱をやり取りする最適化された熱交換器が開発された。 | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-HX-001 | F-TCS-HX-03 | 油圧熱交換器は、軌道上の循環時は作動油を加温し、打上げ前・上昇・大気圏飛行中は油圧系の余剰熱をフレオンへ移す。 | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-HX-001 | F-TCS-HX-04 | フレオンポンプ、ARSインターチェンジャ、燃料電池熱交換器、ペイロード熱交換器、中胴コールドプレートは中胴前部の下部にあ… | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-HX-001 | F-TCS-HX-05 | 後部アビオニクスベイ4・5・6の電子機器とレートジャイロ組立も、フレオンのコールドプレートで冷却される。 | REQ-ATCS-02 | 要求あり |
| SSD-FD-TCS-NH3-001 | F-TCS-NH3-01 | アンモニアボイラは、アンモニアの低い沸点を利用して、高度100,000 ft以下の再突入中にフレオン21ループを冷却する… | REQ-ATCS-06 | 要求あり |
| SSD-FD-TCS-NH3-001 | F-TCS-NH3-02 | 独立した2系統のアンモニア貯蔵・制御系が、1つの共通ボイラへ供給する。 | REQ-ATCS-06 | 要求あり |
| SSD-FD-TCS-NH3-001 | F-TCS-NH3-03 | 各タンクは49 lbのアンモニアを持ち、ヘリウムで550〜83 psiaに加圧される。 | REQ-ATCS-06 | 要求あり |
| SSD-FD-TCS-NH3-001 | F-TCS-NH3-04 | 制御器はボイラ出口のフレオン温度を34°Fに保ち、31°Fを10秒超下回ると主制御器から副制御器へ自動で切り替わる。 | REQ-ATCS-06 | 要求あり |
| SSD-FD-TCS-NH3-001 | F-TCS-NH3-05 | 運転は着陸・滑走後も続き、地上冷却カートがGSE熱交換器に接続されるまで排熱する。 | REQ-ATCS-06 | 要求あり |
| SSD-FD-TCS-NH3-001 | F-TCS-NH3-06 | 初期の飛行では、アンモニアボイラ系の問題も報告されている。 | REQ-ATCS-06 | 要求あり |
| SSD-FD-TCS-RAD-001 | F-TCS-RAD-01 | 放熱器はペイロードベイドアの内面に取り付けられ、ドアを閉じている上昇・再突入時はバイパスされる。 | REQ-ATCS-05 | 要求あり |
| SSD-FD-TCS-RAD-001 | F-TCS-RAD-02 | 基本構成は左右各3枚のパネル（前方ドアの展開式2枚と後方ドアの固定式1枚）で、21,500 Btu/hの排熱を想定し、4… | REQ-ATCS-05 | 要求あり |
| SSD-FD-TCS-RAD-001 | F-TCS-RAD-03 | 展開式パネルはドアから35.5°開いて両面から放熱し、表面には放射特性を得るための銀蒸着テフロンテープが貼られる。 | REQ-ATCS-05 | 要求あり |
| SSD-FD-TCS-RAD-001 | F-TCS-RAD-04 | 各パネルは幅10 ft・長さ15 ftで、展開式2枚と固定式2枚を装備すると有効放熱面積は1,195 ft²となる。 | REQ-ATCS-05 | 要求あり |
| SSD-FD-TCS-RAD-001 | F-TCS-RAD-05 | 流量制御弁が高温のバイパス流と放熱器からの低温流を混合し、放熱器出口温度を通常38°F（高設定57°F）に制御する。 | REQ-ATCS-05 | 要求あり |

## 18. 要求が抜けている機能行

本来は値・機能の要求が要ると判断した機能行 6件を示す（今後の課題）。

| 機能行 | 文書 | 機能 |
|---|---|---|
| F-CO2-ATCO-09 | SSD-FD-CO2-ATCO-001 | Monje（2015年）はシャトルのATCO触媒を白金2%・炭素担体とし、COの宇宙機最大許容濃度（SMAC）を7日で55 ppm、30日・180日で15 ppmと示す。 |
| F-CO2-MON-10 | SSD-FD-CO2-MON-001 | COなどの燃焼生成物はCSA-CP（CO・HCN・HClを実時間で分析する携帯型分析器）で測り、通常は飛行1日目に取り出してセンサを確認し、必要ならゼロ校正する（SCOM 2.5節）。 |
| F-ARS-IMU-INL-11 | SSD-FD-ARS-IMU-INL-001 | IMU冷却系は当初オービタで最も大きな騒音源で、GFEの消音器（入口3個・出口1個）が追加された（Goodman、NOISE-CON 2010）。 |
| F-ECL-H2O-SPL-12 | SSD-FD-ECL-H2O-SPL-001 | 乗員室に遊離した給水はIFMで直ちに処理し、修理できないか隔離できない漏れのあるタンクはベント・ダンプして隔離し、以後は使わない（A18-58）。 |
| F-ECL-WCS-OPS-12 | SSD-FD-ECL-WCS-OPS-001 | 使用後はウェットワイプでWCSを清掃し、1日1回は消毒用ワイプで消毒する。小便器のファンネルも毎日消毒できる（SCOM 2.25節）。 |
| F-TCS-FES-05 | SSD-FD-TCS-FES-001 | トッピング蒸発器は、軌道上で余剰の飲料水を捨てるためにも使える。 |

## 19. 検証（V&V）

要求ごとの検証方法と検証の根拠を示す（根拠あり 79件・根拠なし 20件）。根拠ありは検証ケースの判定 pass、根拠なしは inconclusive とした（SysML の Results）。

| ID | 検証方法 | 状態 | 根拠 |
|---|---|---|---|
| REQ-ARS-01 | T（試験） | 根拠あり | STS-114 では ARS が満足に働き、データに異常は無かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ARS-02 | T（試験） | 根拠あり | JSC と Rockwell の試験で、2相で起動したキャビンファンはファンの 3 A 遮断器を作動させた。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948） |
| REQ-ARS-03 | I（検査） | 根拠あり | STS-8 ではキャビンファンのフィルタを3回清掃し、清掃後もろ過能力は十分であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=14） |
| REQ-ARS-04 | T（試験） | 根拠あり | STS-59 ではキャビンファン差圧が前回の OV-105 の飛行（STS-61）より低く、乗員室内のペイロードへの追加冷却によるものとされた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| REQ-ARS-05 | A（解析） | 根拠なし | 喪失の判定値と停止時間の限度は性能帯と冷却の制約の解析によるもので、飛行でこの判定によりファンを切り替えた記述は今回の資料に無い。 |
| REQ-ARS-06 | A（解析） | 根拠なし | 飛行中に火災後の大気の浄化を行った記述は今回の資料に無い。 |
| REQ-ARS-07 | D（実証） | 根拠あり | 飛行の経験から、ブースタファンのフィルタの飛行中の清掃は要らないことが分かっている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） |
| REQ-ARS-08 | T（試験） | 根拠なし | 各キャニスタへの分流量はオリフィスで決まり、飛行で分流量を計測した記述は今回の資料に無い。 |
| REQ-ARS-09 | T（試験） | 根拠あり | STS-65 では LiOH キャニスタを 15 時間ごとに交換し、CO2 分圧を平均 2.3 mmHg（最大 3.0 mmHg）に保った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| REQ-ARS-10 | A（解析） | 根拠あり | STS-108 では、乗員室が 14.7 psia のとき PPCO2 の最大は 5.38 mmHg であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| REQ-ARS-11 | T（試験） | 根拠あり | STS-108 では、10.2 psia の運用中にセンサが 6.02 を示し、Hamilton Sundstrand の換算で 9.35 に相当するとされた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| REQ-ARS-12 | A（解析） | 根拠あり | STS-108 では ISS の装置が CO2 の大部分を管理し、交換計画より 12 個の LiOH キャニスタが使われずに済んだ。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| REQ-ARS-13 | T（試験） | 根拠あり | STS-4 では ATCO の性能評価の飛行試験要求（FTR 61VV002）が一部達成された。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=40） |
| REQ-ARS-14 | D（実証） | 根拠あり | STS-50 が RCRS の初飛行で、RCRS は軌道投入直後に起動し、最初の 25 時間は満足に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-50%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| REQ-ARS-15 | I（検査） | 根拠なし | RCRS の流量を飛行で計測した記述は今回の資料に無い。 |
| REQ-ARS-16 | T（試験） | 根拠あり | STS-50 では RCRS が6回停止し、両方の制御器が影響を受けた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-50%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| REQ-ARS-17 | T（試験） | 根拠なし | RCRS の計装の値を飛行で確かめた記述は今回の資料に無い。 |
| REQ-ARS-18 | A（解析） | 根拠あり | STS-65 では RCRS をリストリクタ付きの LiOH キャニスタで補い、CO2 分圧を平均 2.3 mmHg（最大 3.0 mmHg）に保った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| REQ-ARS-19 | A（解析） | 根拠あり | 圧縮機が故障しても RCRS は運転を続けるが、再生のたびに真空へ失うキャビン空気が増え、この事象は飛行中にも起きている。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| REQ-ARS-20 | T（試験） | 根拠あり | STS-1 では、乗員が寒さを訴えたためバイパス弁を全WARM の位置へピン止めし、乗員は2回目の就寝時には快適だったと報告した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55） |
| REQ-ARS-21 | D（実証） | 根拠あり | STS-54 では、キャビン空気温度と相対湿度の最高値はそれぞれ 80°F と 56% だった。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| REQ-ARS-22 | T（試験） | 根拠あり | STS-1 の上昇中、インターチェンジャ入口のフレオン、キャビン熱交換器入口の水と出口の空気の温度の最高値が計測された（106・81・79°F）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55） |
| REQ-ARS-23 | A（解析） | 根拠あり | STS-5 では湿度分離器 B の入口の閉塞で湿度は変わらず、飛行管制官が廃水量の増加率の低下で故障を検知した。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930） |
| REQ-ARS-24 | D（実証） | 根拠あり | STS-54 では、ベイ 1・2・3 の空気出口温度の最高値は 104・105・87°F で、ARS の性能は正常だった。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| REQ-ARS-25 | T（試験） | 根拠あり | STS-1 では、ベイの水と空気の出口温度（93°F・107°F）は規定の上限 130°F を大きく下回った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55） |
| REQ-ARS-26 | A（解析） | 根拠あり | STS-54 では、ベイ 1・2・3 の水コールドプレート温度の最高値は 89・90・79°F だった。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| REQ-ARS-27 | A（解析） | 根拠なし | ベイの両ファンや IMU ファン3台を失って A17-1001 の判断を行った飛行の記録は、手元の資料には見当たらない。 |
| REQ-ARS-28 | A（解析） | 根拠なし | アビオニクスベイで火災が起きて Halon を放出した飛行の記録は、手元の資料には見当たらない。 |
| REQ-ARS-29 | D（実証） | 根拠あり | STS-125 では、ファン B から A へ、さらに C へ切り替え、以後の飛行はファン C で IMU を冷却した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ARS-30 | T（試験） | 根拠あり | STS-125 では、IMU ファンの差圧が飛行規則の限界 4.71 を上下したことを検知し、乗員にフィルタの点検を求めた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ARS-31 | D（実証） | 根拠あり | STS-125 では、乗員が3枚の IMU フィルタがほぼ同じ状態であることを確かめて清掃した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ARS-32 | T（試験） | 根拠あり | STS-1 では、軌道上の全段階で温度・圧力と冷却ループ（空気と水）の流量が正常だった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55） |
| REQ-ARS-33 | D（実証） | 根拠あり | STS-1 の上昇中、ポンプ出口（ベイへの供給）の水温は 69°F から 84°F へ上がったが、ベイの水と空気の出口温度はほとんど上がらなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55） |
| REQ-ARS-34 | T（試験） | 根拠あり | STS-44 では、ループ2が AUTO で正常に動作した。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062） |
| REQ-ARS-35 | D（実証） | 根拠あり | STS-1 では、ループ1の周期運転が GPC の制御で4時間ごとに行われた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55） |
| REQ-ARS-36 | T（試験） | 根拠あり | STS-1 では、軌道上の全段階で温度・圧力と冷却ループ（空気と水）の流量が正常だった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55） |
| REQ-ARS-37 | A（解析） | 根拠なし | 水ループの喪失を判定した飛行の記録は、手元の資料には見当たらない。 |
| REQ-ARS-38 | A（解析） | 根拠なし | 両水ループを失って AOA や早期の着陸をした飛行の記録は、手元の資料には見当たらない。 |
| REQ-ARS-39 | A（解析） | 根拠なし | 両フレオンループの低温で両水ループを運転した飛行の記録は、手元の資料には見当たらない。 |
| REQ-PCS-01 | T（試験） | 根拠あり | STS-114 では ARPCS が飛行の全期間正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-PCS-02 | D（実証） | 根拠あり | STS-114 では ARPCS が飛行の全期間正常に働いた（N2/O2 制御盤の自動切替の点検だけは飛行後に KSC で行う）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-PCS-03 | T（試験） | 根拠あり | STS-4 の ARPCS は STS-3 と同じく、テールを太陽に向けた姿勢での GN2 系の漏れを除いて正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| REQ-PCS-04 | T（試験） | 根拠あり | STS-114 では給水・廃水系（SWWMS）が飛行の全期間正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-PCS-05 | A（解析） | 根拠なし | 窒素の搭載量は飛行ごとの消耗品の解析で確かめるもので、照合した Mission Report にその妥当性を確かめた記述は無い。 |
| REQ-PCS-06 | T（試験） | 根拠あり | STS-114 では ARPCS がオービタのペイロード用 O2 弁を通じた ISS への O2 移送を支えた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-PCS-07 | D（実証） | 根拠なし | LES ヘルメットへの酸素の流量やブリードオリフィスの流量を飛行で確かめた記述は、照合した Mission Report に無い。 |
| REQ-PCS-08 | T（試験） | 根拠なし | 逃し弁は過大圧・過小圧のときだけ開くため、飛行で作動を確かめた記述は無い。地上の試験で確かめる。 |
| REQ-PCS-09 | T（試験） | 根拠あり | STS-4 では、乗員室の与圧殻の漏れ率は規定の値を大きく下回った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| REQ-PCS-10 | T（試験） | 根拠あり | STS-4 の上昇中にも dP/dt が −0.05 psi/min の警報点を超え、クラクソンが作動した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| REQ-PCS-11 | D（実証） | 根拠あり | STS-114 では ARPCS が3回の EVA を支え、10.2 psi の運用とオービタ・エアロックの再与圧を行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-PCS-12 | A（解析） | 根拠なし | 上昇中の乗員室の漏れでアボートや 8 psia の運用をした飛行の記述は、照合した Mission Report に無い。 |
| REQ-WTR-01 | T（試験） | 根拠あり | STS-1 では給水の貯蔵は全期間正常で、燃料電池の生成水の貯蔵に問題は無かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58） |
| REQ-WTR-02 | I（検査） | 根拠あり | STS-1 では FES への給水圧は FES の運転に十分であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58） |
| REQ-WTR-03 | T（試験） | 根拠あり | STS-114 では配管ヒータが給水ダンプ配管の温度を全期間 75〜94°F に保った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-WTR-04 | A（解析） | 根拠あり | STS-114 では給水を FES と ISS への移送で管理した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-WTR-05 | T（試験） | 根拠あり | STS-1 では FES への給水圧は FES の運転に十分であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58） |
| REQ-WTR-06 | D（実証） | 根拠あり | STS-1 では燃料電池の生成水の貯蔵に問題は無かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58） |
| REQ-WTR-07 | T（試験） | 根拠あり | STS-114 では廃水ダンプを5回、平均毎分 1.94% で行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50）STS-65 では給水ダンプ中にノズル温度が 50°F へ急落し、ダンプを中止した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| REQ-WTR-08 | D（実証） | 根拠あり | STS-114 では 19 個の CWC に給水を満たし、18 個を ISS へ移送した。CWC のダンプはすべて問題なく行えた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| REQ-WTR-09 | D（実証） | 根拠あり | STS-1 では飲料水は冷やされて給水所へ送られた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58） |
| REQ-WTR-10 | A（解析） | 根拠なし | 飛行中の GIRA・LIRS の除去性能や乗員のヨウ素摂取量の記録は、抽出テキストの Mission Report に見当たらない。 |
| REQ-WTR-11 | D（実証） | 根拠あり | STS-1 では廃水タンクが飛行中に液体廃棄物を集めた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59） |
| REQ-WTR-12 | A（解析） | 根拠あり | STS-1 では廃水量を管理するため廃水ダンプを2回行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59） |
| REQ-WCS-01 | T（試験） | 根拠あり | STS-1 では便器を通る気流が不足し、固形廃棄物を使用者から分けられなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59）STS-114 では WCS は問題なく働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| REQ-WCS-02 | T（試験） | 根拠あり | STS-125 では WCS は正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=62） |
| REQ-WCS-03 | T（試験） | 根拠あり | STS-65 ではファンセパレータ1の回転数が通常に達せず、乗員はファンセパレータ2に切り替えて残りの期間を使った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| REQ-WCS-04 | I（検査） | 根拠あり | STS-114 では WCS は問題なく働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| REQ-WCS-05 | T（試験） | 根拠あり | STS-4 では小便器の気流が飛行中に低下し、プレフィルタを1回清掃すると回復した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=43） |
| REQ-WCS-06 | A（解析） | 根拠なし | EMU の排水と小便器の同時使用、再与圧中の使用を試した飛行・試験の記録は、抽出テキストに見当たらない。 |
| REQ-WCS-07 | T（試験） | 根拠あり | STS-114 では真空ベント管の温度は 59.8〜79°F に保たれた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| REQ-WCS-08 | A（解析） | 根拠なし | 真空ベントの喪失と非常用の真空ベントの IFM を飛行で行った記録は、抽出テキストに見当たらない。 |
| REQ-WCS-09 | A（解析） | 根拠あり | STS-1 では便器を通る気流が不足し、固形廃棄物を使用者から分けられなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59） |
| REQ-FDS-01 | T（試験） | 根拠あり | STS-8 ではベイ1の B 感知器が断続的に警報を出したが、乗員室の9個の感知器はすべて試験で良好で、B 感知器の遮断器を開いて誤警報を防いだ。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| REQ-FDS-02 | T（試験） | 根拠あり | 開発では、空気ポンプのベーンを Fluoroloy D に替えて 12,000 時間を超える運転で目立つ摩耗が無いことを示した。（出典: https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=7） |
| REQ-FDS-03 | T（試験） | 根拠あり | STS-125 では感知器の点検を行い、A・B すべての感知器の回路が点検の要求を満たした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-FDS-04 | T（試験） | 根拠あり | 試験では、ボトルの放出の音圧レベルが最大 143 dB に達した。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） |
| REQ-FDS-05 | A（解析） | 根拠なし | 飛行でベイの固定ボトルを放出した記録は無く（STS-114・STS-125 では消火系の使用は不要）、50時間は解析の値である。 |
| REQ-FDS-06 | D（実証） | 根拠あり | シャトルの消火器は、宇宙では実演の目的でだけ放出された。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=4） |
| REQ-FDS-07 | A（解析） | 根拠あり | 試験では、14% に5分さらされた被験者も意識を失わなかった。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/122） |
| REQ-FDS-08 | A（解析） | 根拠なし | 飛行で火災の処置を行った記録は無い（STS-114・STS-125 では消火系の使用は不要）。手順は飛行規則と故障処置手順の解析による。 |
| REQ-FDS-09 | A（解析） | 根拠あり | STS-8 ではベイ1の B 感知器の誤警報に対し、B 感知器の遮断器を開いて飛行を続けた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| REQ-ALS-01 | T（試験） | 根拠あり | STS-114 では EVA 2 の終わりに後部ハッチ右舷の均圧弁でエアロックを減圧できず、左舷の弁で減圧した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ALS-02 | D（実証） | 根拠あり | STS-114 ではエアロックが3回の EVA を支え、EVA 乗員の退出のための減圧と再与圧を繰り返した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ALS-03 | T（試験） | 根拠あり | STS-114 ではエアロックが3回の EVA を含むすべての ISS の運用を支えた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ALS-04 | T（試験） | 根拠あり | STS-108 では、EVA 中の外部エアロックの補給配管は限界内に十分収まった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=39） |
| REQ-ALS-05 | T（試験） | 根拠あり | STS-114 ではすべての構造ヒータの系統を飛行の全期間監視し、正常に働くことを確かめた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ALS-06 | D（実証） | 根拠あり | STS-114 では外部エアロックから3回の EVA を正常に行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=57） |
| REQ-ALS-07 | A（解析） | 根拠あり | STS-108 では、EVA 中の外部エアロックの補給配管は限界内に十分収まった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=39） |
| REQ-ALS-08 | D（実証） | 根拠あり | STS-114 では外部エアロックから3回の EVA を正常に行った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=57） |
| REQ-ALS-09 | A（解析） | 根拠なし | EMU の補給の温度の制約や消耗品の残り30分での帰還を飛行で確かめた記述は、照合した Mission Report に無い。 |
| REQ-ALS-10 | T（試験） | 根拠あり | STS-114 ではすべての構造ヒータの系統を飛行の全期間監視し、正常に働くことを確かめた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ALS-11 | D（実証） | 根拠あり | STS-108 では、エアロックのブースタファン A が3相とも正常に起動した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| REQ-ATCS-01 | D（実証） | 根拠あり | STS-1 では ATCS が正常に働き、熱を発する機器から放熱の機器へ熱を運んだ。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=52） |
| REQ-ATCS-02 | I（検査） | 根拠あり | STS-1 では ATCS が正常に働き、熱を発する機器から放熱の機器へ熱を運んだ。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=52） |
| REQ-ATCS-03 | A（解析） | 根拠あり | STS-1 では、各ループの流量は予想の 15% 以内であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=52） |
| REQ-ATCS-04 | D（実証） | 根拠あり | STS-1 では FES の主制御器 A を予定どおり打上げの2分14秒後に入れ、出口温度を 39±1°F の制御幅に戻した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=52） |
| REQ-ATCS-05 | D（実証） | 根拠あり | STS-1 では放熱器の展開後、放熱器が予想どおりの割合で排熱した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=52）STS-54 では放熱器のコールドソークが着陸後4分間の冷却を担った。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| REQ-ATCS-06 | D（実証） | 根拠あり | STS-54 では着陸後、地上冷却がつながるまでアンモニアボイラの主制御器 B を35分、A を20分運転した。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18） |
| REQ-ATCS-07 | D（実証） | 根拠あり | STS-1 では T-15 秒に GSE のフレオンのアンビリカルを外した後、FES の出口温度が予想どおり上がった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=52） |

## 20. 図

図166 は L2 の要求（REQ-ECLSS-01〜13）からブロックごとの L3 の要求への導出の数を、図167 はブロックごとの範囲の文書・機能行と、要求の割付・判断の数を示す。

## 21. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-RQL-ECL-001.sysml](../SysML/SSD-RQL-ECL-001.sysml) に示す。ブロックごとのパッケージの requirement 99件（要求モデルの RequirementInfo・VerificationIntent を使う）、L2 → L3 の #derivation 110件、機能説明書の部品への satisfy、検証ケースの verification def と結果 99件から成る。要求モデル SSD_RQM_SYS_001 と構造モデル SSD_BLK_SYS_001 を読み込んでから読む。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 22. 注記（出典間の相違・構成変更）

> **注記** 本書の要求は、第3段・第4段の機能説明書の機能行と同じ公開資料（SCOM・ECLSS 訓練マニュアル・運用飛行規則など）から導いた。要求の数はブロックの文書の数と値を持つ規則の数に合わせた。

> **注記** 要求から参照されない機能行のうち、同じ文書に要求があって、その要求が受け持つ構成・運用の記述（過去の版の記述・飛行の実績・手順の注記など）は「要求なしで妥当」と判断した。行ごとに要否を詳しく検討したものではない。

> **注記** 要求が抜けていると判断した6行（ATCO の一酸化炭素の上限値、燃焼生成物の計測、IMU ファンの騒音、遊離水の処理、WCS の清掃・消毒、FES の余剰水の排出）は、今後の課題とした。

> **注記** 新しい要求書の文書番号は SSD-REQ- で始めない。以前の版の要求モデル・検証・形式化の生成は SSD-REQ- で始まる要求書19件を前提にしており、それらは作り直さない（後の版の注記を残すため）。L3 の要求・導出・充足・検証は、本書と SysML のパッケージ SSD_RQL_ECL_001 に置いた。

> **注記** 逆止弁の開く差圧など資料どうしで値の違うものは、要求の根拠に採った資料を示した（内部ブロック・流れ定義書の注記も参照）。

## 23. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
2. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-154 MANAGEMENT OF DEGRADED ROTATING EQUIPMENT（PDF p1948） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1948
4. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p58） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58
5. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
6. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-101 ATMOSPHERE REVITALIZATION SYSTEM (ARS) AIR LOSS DEFINITIONS（PDF p1929） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-151 CABIN ATMOSPHERE CONTROL（PDF p1939） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1939
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-501 MAXIMUM OFF TIME FOR COOLING EQUIPMENT（PDF p2127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 FIRE AND POST-FIRE ACTIONS（PDF p1923） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923
11. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
12. USA006020 Rev. B ECLSS 21002 訓練マニュアル 6.4 Airlock Booster Fans and Ductwork（PDF p178） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178
13. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p59） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59
14. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） （PDF p215） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-151 CABIN ATMOSPHERE CONTROL（PDF p1938） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938
16. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1775） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-157 LIOH REDLINE DETERMINATION（PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
18. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
19. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p64） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64
20. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
21. USA006020 Rev. B ECLSS 21002 訓練マニュアル 付録C C.2.2 Hardware・C.2.3 Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
22. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
23. USA006020 Rev. B ECLSS 21002 訓練マニュアル 付録C C.5 Fault Detection（PDF p228） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228
24. USA006020 Rev. B ECLSS 21002 訓練マニュアル 付録C C.4 Instrumentation and Displays（PDF p227） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227
25. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-155 REGENERATIVE CO2 REMOVAL SYSTEM (RCRS) MANAGEMENT（PDF p1950） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950
26. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-106 REGENERATIVE CO2 REMOVAL SYSTEM (RCRS) LOSS DEFINITION（PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
27. USA006020 Rev. B ECLSS 21002 訓練マニュアル 付録C C.2.3 Operations（State 5）（PDF p221） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=221
28. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p374） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374
29. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2j HUMID SEP（PDF p285） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=285
30. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-102 CABIN ATMOSPHERIC CONTROL（PDF p1930） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1930
31. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p65） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65
32. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1931） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1931
33. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-105 AVIONICS BAY COOLING（PDF p1934） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1934
34. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 LIFE SUPPORT GO/NO-GO CRITERIA（PDF p2034） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2034
35. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 FIRE AND POST-FIRE ACTIONS（PDF p1924） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1924
36. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p66） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=66
37. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-104 IMU FAN（PDF p1933） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933
38. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（PDF p264） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264
39. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（PDF p265） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265
40. In-Flight Maintenance Checklist Rev F PCN-13 I-1 IMU CONTINGENCY COOLING（PDF p173） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=173
41. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p377） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377
42. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
43. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p94） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=94
44. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
45. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p379） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/379
46. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151 ARS WATER LOOP（PDF p2061） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2061
47. JSC-48027 Rev. F Malfunction Procedures（MAL） （PDF p307） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=307
48. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-101 ARS WATER LOOP（PDF p2059） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059
49. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-1001 THERMAL GO/NO-GO CRITERIA（PDF p2149） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2149
50. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-151 ARS WATER LOOP（PDF p2062） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2062
51. JSC-48027 Rev. F Malfunction Procedures（MAL） （PDF p318） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=318
52. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p25） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=25
53. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p29） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29
54. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p365） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/365
55. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p23） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23
56. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-202 8 PSIA CABIN CONTINGENCY 165-MINUTE RETURN（PDF p1958） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1958
57. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-202 8 PSIA CABIN CONTINGENCY 165-MINUTE RETURN（PDF p1957） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1957
58. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p21） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21
59. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p362） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/362
60. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p30） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=30
61. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p368） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/368
62. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1966） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1966
63. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p123） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123
64. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 2.6.4（PDF p46） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=46
65. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1977） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1977
66. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-254 CABIN O2 CONCENTRATION（PDF p1967） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1967
67. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1955） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955
68. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1970） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1970
69. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
70. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p395） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395
71. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p143） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143
72. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p145） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=145
73. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p400） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400
74. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p152） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=152
75. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-59 SUPPLY WATER REDLINE（PDF p2054） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2054
76. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p146） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146
77. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-501 ALTERNATE PRESSURE VALVE MANAGEMENT（PDF p1993） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1993
78. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p150） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150
79. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-54 SUPPLY WATER TANK A PRESSURE CONTROL MANAGEMENT（PDF p2046） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2046
80. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p398） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/398
81. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-56 SUPPLY WATER DUMP NOZZLE TEMPERATURE CONSTRAINT（PDF p2048） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2048
82. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-505 WASTE WATER DUMP NOZZLE TEMPERATURE CONSTRAINTS（PDF p1996） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1996
83. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-503 WASTE WATER STORAGE（PDF p1995） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1995
84. Shuttle Crew Operations Manual 2.12 Galley/Food（USA007587 Rev. A CPN-1、PDF p465） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465
85. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-551 IODINE REMOVAL IMPLEMENTATION（PDF p2001） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2001
86. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p401） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401
87. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-503 WASTE WATER STORAGE（PDF p1994） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1994
88. Shuttle Crew Operations Manual 2.25 Waste Management System（USA007587 Rev. A CPN-1、PDF p759） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/759
89. Shuttle Crew Operations Manual 2.25 Waste Management System（USA007587 Rev. A CPN-1、PDF p755） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755
90. Shuttle Crew Operations Manual 2.25 Waste Management System（USA007587 Rev. A CPN-1、PDF p758） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/758
91. Shuttle Flight Operations Manual Vol. 12 Crew Systems 3.17.4 Systems Performance, Limitations, and Constraints（PDF p477） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=477
92. Shuttle Crew Operations Manual 2.25 Waste Management System（USA007587 Rev. A CPN-1、PDF p756） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/756
93. Shuttle Flight Operations Manual Vol. 12 Crew Systems Odor/Bacteria Filter（PDF p440） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=440
94. Shuttle Flight Operations Manual Vol. 12 Crew Systems 3.17.4.2 Waste Production Quantities（PDF p474） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=474
95. Shuttle Flight Operations Manual Vol. 12 Crew Systems （PDF p439） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=439
96. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-401 WCS USAGE CONSTRAINT（PDF p1987） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1987
97. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-354 VACUUM VENT LOSS DEFINITION（PDF p1986） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1986
98. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-405 VACUUM VENT SYSTEMS MANAGEMENT [CIL]（PDF p1989） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1989
99. Shuttle Crew Operations Manual 2.25 Waste Management System（USA007587 Rev. A CPN-1、PDF p760） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/760
100. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-403 ALTERNATE FECAL COLLECTION（PDF p1988） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1988
101. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-352 WCS URINE COLLECTION（PDF p1984） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1984
102. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 3.3 Fire Detection and Suppression（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23
103. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
104. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 3.3 Fire Detection and Suppression（PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25
105. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-2 SMOKE DETECTION LOSS DEFINITION（PDF p1917） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917
106. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.6.5 Smoke Detection and Fire Suppression Subsystem（PDF p225） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225
107. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p114） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114
108. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p119） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119
109. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 3.3 Fire Detection and Suppression（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35
110. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 3.3 Fire Detection and Suppression（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37
111. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-3 FORWARD AVIONICS BAY FIRE SUPPRESSION（PDF p1918） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1918
112. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p121） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121
113. Shuttle Flight Operations Manual Vol. 12 Crew Systems 3.24 Fire Extinguisher（PDF p573） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=573
114. Shuttle Flight Operations Manual Vol. 12 Crew Systems 3.24.4 Systems Performance, Limitations, and Constraints（PDF p574） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=574
115. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p122） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/122
116. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1 FIRE/POST-FIRE DEFINITIONS（PDF p1915） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1915
117. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 FIRE AND POST-FIRE ACTIONS（PDF p1925） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1925
118. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-51 MANAGEMENT FOLLOWING LOSS OF SMOKE DETECTION（PDF p1919） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1919
119. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-51 MANAGEMENT FOLLOWING LOSS OF SMOKE DETECTION（PDF p1921） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1921
120. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p452） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452
121. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.2（PDF p174） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=174
122. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.2（PDF p175） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=175
123. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.9.3（PDF p192） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192
124. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-101 EVA CAPABILITY（PDF p1855） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855
125. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.9.3.1（PDF p191） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=191
126. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.5（PDF p179） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179
127. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-60 EXTERNAL AIRLOCK WATER LINES（PDF p2055） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055
128. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.5（PDF p180） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180
129. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-301 TCS HEATER CONFIGURATION（PDF p2093） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2093
130. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
131. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p69） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69
132. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-61 EXTERNAL AIRLOCK LCG FLUID LINE LOSS DEFINITION（PDF p2057） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2057
133. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-204 EXTERNAL AIRLOCK EMU SERVICING CONSTRAINTS（PDF p1877） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1877
134. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
135. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p447） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447
136. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p449） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/449
137. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-204 EXTERNAL AIRLOCK EMU SERVICING CONSTRAINTS（PDF p1876） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1876
138. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-152 EMU CONSUMABLES WITH REAL-TIME EMU DATA DOWNLINK（PDF p1866） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866
139. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.8（PDF p187） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187
140. USA006020 Rev. B ECLSS 21002 訓練マニュアル Section 6.8.3（PDF p189） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=189
141. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p381） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/381
142. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-251 FREON COOLANT LOOPS (FCL)（PDF p2074） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2074
143. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
144. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p384） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384
145. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-201 FREON COOLANT LOOPS (FCL)（PDF p2064） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2064
146. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p389） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389
147. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p390） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390
148. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p387） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/387
149. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392
150. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-253 AMMONIA BOILER SUBSYSTEM (ABS)（PDF p2083） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2083
151. USA006020 Rev. B ECLSS 21002 訓練マニュアル （PDF p100） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=100
152. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p405） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405
153. STS-114 Mission Report Atmospheric Revitalization System（PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49
154. STS-8 Mission Report Environmental Control and Life Support System（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=14
155. STS-59 Mission Report Environmental Control and Life Support System（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22
156. STS-65 Mission Report （PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12
157. STS-108 Mission Report Environmental Control and Life Support System（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32
158. STS-108 Mission Report （PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31
159. STS-4 Orbiter Mission Report Flight Test Requirements（PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=40
160. NSTS-08277 STS-50 Space Shuttle Mission Report（1992-08、43頁、4,158,096 バイト） Environmental Control and Life Support System（PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-50%20Space%20Shuttle%20Mission%20Report.pdf#page=19
161. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） STS-1 Orbiter Final Mission Report（PDF p55） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=55
162. NASA-CR-194116 STS-54 Mission Report（1993） STS-54 Mission Report（PDF p18） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=18
163. NSTS-37452 STS-125 Mission Report（2010） STS-125 Mission Report（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=50
164. STS-4 Orbiter Mission Report STS-4 Orbiter Mission Report（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42
165. STS-114 Mission Report STS-114 Mission Report（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50
166. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） 2.0 Orbiter Performance（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=58
167. STS-65 Mission Report STS-65 Mission Report（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=32
168. STS-114 Mission Report STS-114 Mission Report（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51
169. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） 2.0 Orbiter Performance（PDF p59） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=59
170. NSTS-37452 STS-125 Mission Report（2010） STS-125 Mission Report（PDF p62） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=62
171. STS-65 Mission Report STS-65 Mission Report（PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34
172. STS-4 Orbiter Mission Report STS-4 Orbiter Mission Report（PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=43
173. STS-8 Mission Report Smoke Detector B in Avionics Bay 1 Tripped（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11
174. Gibb 1985（NTRS 19850008615） Air Moving Pump Design（PDF p7） — https://ntrs.nasa.gov/api/citations/19850008615/downloads/19850008615.pdf#page=7
175. NSTS-37452 STS-125 Mission Report（2010） Smoke Detection and Fire Suppression System（PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=49
176. Friedman 1991（NTRS 19910011869） Fire safety in spacecraft（PDF p4） — https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=4
177. STS-108 Mission Report （PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=39
178. STS-114 Mission Report STS-114 Mission Report（PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=57
179. JSC-17378 STS-1 Orbiter Final Mission Report（1981年8月） 2.4.1 Active Thermal Control System（PDF p52） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-1%20Orbiter%20Final%20Mission%20Report.pdf#page=52
180. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
181. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 24. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-08 | 初版作成（L3 の要求 99件、機能行 866行のトレース、検証 99件、図166・167、SysML v2 テキスト） |
