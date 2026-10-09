# 電力系（EPS）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-EPS-001 |
| 表題 | 電力系（EPS）要求書（L2） |
| 版・日付 | Rev. E／2026-10-08 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図6 EPS 機能構成 |

## 1. 目的

電力系（EPS）に対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、電力系の機能説明書5件の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、ここでは要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 |
| REQ-SYS-06 | 通常のミッションで 4〜16 日の軌道滞在ができること。 |
| REQ-SYS-07 | 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-13 | 打上げ前の計画と飛行中の延長の決定のときに、2日の延長日（着陸地の天候に1日、系統のウェーブオフに1日）の消耗品を確保すること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-16 | 地上支援設備に接続していない間、オービタ・外部タンク・SRB・ペイロードの電力をすべて機上で供給すること。 |

## 4. 電力系要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-EPS-01 | EPS は、反応剤の貯蔵・分配、燃料電池による発電、電力の分配・制御により、地上設備に接続していない間の全電力を供給すること。 | 全電力（オービタ・ET・SRB・ペイロード） | EPS は、地上支援設備に接続していないときに、オービタ・外部タンク・SRB・ペイロードの電力をすべてまかない、PRSD・燃料電池・EPDC の3つに分かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） | REQ-SYS-16 | F-EPS-01・IF-ORB-14・IF-ORB-27・IF-ORB-28 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-EPS-02 | 予備電池を持たず、3基の燃料電池で T-50 秒から着陸の滑走終了まで機体の 28 V 直流電力のすべてを発電すること。 | T-50 秒〜滑走終了 | 3基の燃料電池は、打上げの50秒前から着陸の滑走終了まで、機体の 28 V 直流電力のすべてを発電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）燃料電池は、T-50 秒に地上設備が切られた後、SRB・オービタ・ペイロードの電力をすべて受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） | REQ-SYS-16 | F-EPS-03・F-EPS-FCP-08・IF-ORB-31 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-EPS-03 | 3基の燃料電池を独立した電源とし、それぞれが分離された直流主母線に同時に給電し、故障時は母線を相互に接続（バスタイ）できること。 | 独立電源 3・主母線 3 | オービタの3基の燃料電池は独立した電源として動作し、それぞれが分離された直流母線に同時に給電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）電気的な故障のときや燃料電池間で負荷を分担するときは、バスタイのスイッチで任意の主母線を別の主母線につなげる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | REQ-SYS-10 | F-EPS-04・F-EPS-FCP-02・F-EPS-DC-01・F-EPS-DC-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-EPS-04 | 燃料電池1基を 2〜10 kW で連続、10〜12 kW で3時間ごとに15分以内運転でき、故障時は残る燃料電池を 2〜12 kW で連続、16 kW まで10分運転できること。 | 通常 2〜10 kW 連続・10〜12 kW は15分/3時間、故障時 2〜12 kW 連続・16 kW 10分 | 燃料電池は 2〜12 kW の任意の出力で運転でき、通常は 2〜10 kW を連続、10〜12 kW は3時間ごとに15分以内とする。故障時は残りを 2〜12 kW で連続、12〜13 kW を4時間未満、16 kW までを10分運転できる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1438）各燃料電池は、通常時に最大 10 kW を連続、1基以上の故障時に 12 kW を連続、16 kW までを10分供給できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） | REQ-SYS-16・REQ-SYS-10 | F-EPS-05・F-EPS-FCP-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-EPS-05 | 燃料電池の出力電圧は、負荷 2 kW で 32.5 V、12 kW で 27.5 V の範囲にあること。 | 27.5〜32.5 V DC（12〜2 kW） | 各燃料電池の公称の電圧・電流は、2 kW（61.5 A）で 32.5 V、12 kW（436 A）で 27.5 V である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） | REQ-SYS-16 | F-EPS-FCP-03・F-EPS-FCP-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-EPS-06 | 直流主母線の電圧を 27.0 V を超え 32.0 V 未満に保ち、26.4 V で主母線低電圧の警報を出すこと。 | 27.0 < V < 32.0 V DC、警報 26.4 V | 直流主母線の電圧は 27.0 V DC を超え 32.0 V DC 未満に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1453）主母線の電圧が 26.4 V になると主母線低電圧の赤い C/W ライトが点灯し、機器の最低動作電圧 24 V に近づいていることを乗員に知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | REQ-SYS-16 | F-EPS-DC-01・F-EPS-DC-05・IF-ORB-41 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-EPS-07 | 必須母線は3つの電源すべてに接続し、GPC などの重要機器への給電の冗長を最も高く保つこと。 | 電源 3 | 各必須母線は3つの電源すべてに接続し、最高の冗長度を保つ。必須母線は GPC などのオービタの重要機器に給電する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1453） | REQ-SYS-10 | F-EPS-DC-02・F-CW-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-EPS-08 | 各直流主母線から3台の静止形インバータで 3相 117 V（実効値）・400 Hz の交流母線（AC1〜AC3）を作ること。 | 117 V rms・400 Hz、インバータ 9 | 各交流母線は3相で、相ごとに1台の静止形インバータが前方アビオニクスベイにあり、各インバータの出力は 117 V（実効値）・400 Hz である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/337） | REQ-SYS-16 | F-EPS-AC-01・F-EPS-AC-02・F-EPS-AC-03・IF-EPS-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-EPS-09 | 上昇中は交流電力を途切れさせず、交流母線センサは主エンジン制御器を守るため母線を切り離さずに警報だけを出すこと。 | 上昇中は監視のみ（自動遮断しない） | 各エンジン制御器は3本の交流母線のうち2本から給電され、交流母線センサを MONITOR にすると過電圧・不足電圧・過負荷を警報するが、乗員が確かめる前に母線を切り離さない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）上昇中に交流電力が途切れると主エンジン制御器の冗長を失うため、MECO 前の交流機器の再構成は避ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） | REQ-SYS-16・REQ-SYS-10 | F-EPS-AC-04・IF-ORB-06 | PH-2（上昇） | D（実証） |
| REQ-EPS-10 | PRSD は水素と酸素を超臨界状態（酸素 731 psia 以上・−285°F、水素 188 psia 以上・−420°F）で真空断熱タンクに貯蔵し、ヒータで圧力を保って燃料電池へ供給すること。 | O2 > 731 psia・−285°F、H2 > 188 psia・−420°F | 水素と酸素は、液体酸素 −285°F・液体水素 −420°F の極低温、酸素 731 psia・水素 188 psia を超える超臨界圧で貯蔵する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）タンクは真空の環状部を持つ二重壁の断熱球形タンクで、消費に伴って反応剤に熱を加え圧力を保つヒータを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） | REQ-SYS-16 | F-EPS-02・F-EPS-PRSD-01・F-EPS-PRSD-02・F-EPS-PRSD-03 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-EPS-11 | PRSD は乗員室の与圧用の酸素を ECLSS へ供給すること。 | — | PRSD は、乗員室の与圧用に極低温の酸素を ECLSS へ供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） | REQ-SYS-07 | F-EPS-02・IF-ORB-09・IF-ECL-01 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-EPS-12 | 反応剤のタンクをミッション期間に応じて搭載し、3セットで最大8日、5セットで12日、8セットで18日の軌道滞在をまかなうこと。 | 3セット 8日・5セット 12日・8セット 18日 | 酸素・水素のタンクは3基で最大8日、5基で12日、8基で18日の軌道滞在に足りる。正確な日数は乗員数と電力負荷で変わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）タンクは水素1基と酸素1基を1セットとし、ミッションと機体に応じて中胴に最大5セットを搭載する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） | REQ-SYS-06・REQ-SYS-13 | F-EPS-PRSD-04・F-EPS-PRSD-05・F-EPS-PRSD-08 | PH-3（軌道） | A（解析） |
| REQ-EPS-13 | 1基のタンクが漏れても、弁モジュールの逆止弁で他のタンクへの逆流を止め、反応剤のすべてを失わないこと。 | — | 弁モジュールは各タンクの配管に逆止弁を持ち、漏れがあっても反応剤が他のタンクへ流れないようにして、反応剤のすべてを失うことを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/318） | REQ-SYS-10 | F-EPS-PRSD-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-EPS-14 | 燃料電池のパージは各燃料電池を2分以上とし、定期のパージの間隔を96時間以内とし、頻度は燃料電池の電圧の低下（0.2 V）で決めること。パージは1基ずつ行うこと。 | 各 2 分以上・間隔 96 時間以内（電圧の低下 0.2 V で頻度を決める） | 燃料電池は酸素と水素で順にパージし、定期のパージの間隔は96時間を超えず、頻度はパージの間の燃料電池の性能の低下 0.2 V で決める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1439）GPC は水素・酸素のパージ弁を燃料電池1について2分開いて閉じ、燃料電池2・3について順に繰り返す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326） | REQ-SYS-16 | F-EPS-FCP-06・IF-ORB-20 | PH-3（軌道） | D（実証） |
| REQ-EPS-15 | 燃料電池の排熱はフレオン冷却ループへ移し、スタックを約 200°F に保つこと。冷却を失ったときは 7 kW の負荷で9分以内に処置すること。 | 約 200°F、冷却喪失時 9 分（7 kW） | 燃料電池の冷却材は、スタックの排熱を燃料電池熱交換器を通じて中胴のフレオン冷却ループへ移し、スタックを負荷に応じた約 200°F に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）燃料電池の冷却を失った場合、火災・爆発による破局を防ぐため9分以内に乗員が処置しなければならない。停止までの運転時間は 7 kW の負荷で9分である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） | REQ-SYS-16 | F-EPS-FCP-04・F-EPS-FCP-05・IF-ORB-11・IF-ECL-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-EPS-16 | 燃料電池の生成水を取り除き続け、ECLSS の飲料水タンクへ送ること。 | 除去が止まると約20分で浸水（7 kW） | 生成水を取り除かなければセルは水で満たされ、7 kW の負荷では約20分で燃料電池が浸水して発電が止まる。凝縮した水は ECLSS の飲料水タンクに蓄える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/324） | REQ-SYS-07 | F-EPS-FCP-04・IF-ORB-10・IF-ECL-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-EPS-17 | 遠隔電力制御器（RPC）は、出力電流を定格の150%に2〜3秒制限し、3秒以内に遮断すること。 | 150%・3秒以内 | RPC は出力電流を定格の150%に2〜3秒制限でき、3秒以内に遮断して出力電流を断つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338） | REQ-SYS-10 | F-EPS-DC-04 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-EPS-18 | 極低温タンク・マニホールド、燃料電池、直流主母線などの喪失の数に応じて、A9-1001 の判定基準で上昇の継続・MDF・次の PLS を判断できる冗長を持つこと。 | 判定区分 3 | A9-1001 は、極低温系（O2・H2 タンク、マニホールド）、燃料電池、配電系（直流主母線など）の喪失について、上昇の継続・MDF の宣言・次の PLS への着陸の判定基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510） | REQ-SYS-14 | F-EPS-04・F-EPS-PRSD-04・F-EPS-DC-01 | PH-2（上昇）・PH-3（軌道） | A（解析） |
| REQ-EPS-19 | オービタの平均消費電力（軌道で約 14 kW）を超える発電能力を持ち、主ペイロード母線などからペイロードへ給電できること。 | 軌道の平均 約14 kW | 軌道でのオービタの平均消費電力は約 14 kW で、ペイロードに使える能力が残る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） | REQ-SYS-16 | F-EPS-05・F-EPS-DC-06 | PH-3（軌道） | A（解析） |
| REQ-EPS-20 | 燃料電池は飛行の間に整備して再使用し、累積 2,000 時間の運転まで使えること。 | 2,000 時間 | 各燃料電池は飛行の間に整備され、累積の運転時間が 2,000 時間になるまで再使用される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320） | REQ-SYS-04 | F-EPS-FCP-01 | PH-8（ターンアラウンド） | I（検査） |
| REQ-EPS-21 | 反応剤のタンクは、中央マニホールドの追加タンクから先に使ってタンク1・2を再突入用に残し、水素は2基に各4%の残量を確保して再突入の燃料電池の流量をまかなうこと。 | タンク1・2を再突入用に保持、H2 残量 各4%（2基）・約 20 kW 相当 | 4組以上のタンクを積むミッションでは中央マニホールドの追加タンクをできるだけ早く使い切り、タンク1・2は再突入用に残す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1489）水素の2基に各4%の残量を確保するのは、再突入の燃料電池の流量（2基のヒータで約1.8 lb/hr、約20 kW）を守るためである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1490） | REQ-SYS-16 | F-EPS-PRSD-06 | PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-EPS-22 | 中胴の配電機器はフレオン冷却ループのコールドプレートで、前部アビオニクスベイの電力制御組立・負荷制御組立・モータ制御組立とインバータは水冷却ループのコールドプレートで冷却すること。 | 中胴・後部：フレオンループ、前部ベイ1〜3：水ループ（インバータ分配組立は空冷） | 中胴の電気部品はコールドプレートに取り付けてフレオン冷却ループで冷やし、前部アビオニクスベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立とインバータはコールドプレートで水冷却ループにより冷やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | REQ-SYS-16 | F-EPS-DC-07・IF-ORB-35 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |

## 5. トレース表（機能行・IF → 要求）

電力系の機能説明書5件の機能行 33 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 31 件が要求から参照され、2 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-EPS-001 | F-EPS-01 | EPSは、反応剤貯蔵・分配（PRSD）、燃料電池発電装置、電力分配・制御（EPDC）の3サブシステムから成る。 | REQ-EPS-01 | — |
| SSD-FD-EPS-001 | F-EPS-02 | PRSDは極低温の水素と酸素を貯蔵して3基の燃料電池へ供給し、あわせて乗員室の与圧用に極低温酸素をECLSSへ供給する。 | REQ-EPS-10・REQ-EPS-11 | — |
| SSD-FD-EPS-001 | F-EPS-03 | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。 | REQ-EPS-02 | — |
| SSD-FD-EPS-001 | F-EPS-04 | 3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。 | REQ-EPS-03・REQ-EPS-18 | — |
| SSD-FD-EPS-001 | F-EPS-05 | 基本構成での3基の燃料電池の能力は、合計で平均14 kW、ピーク最大24 kWである（1975年の設計論文）。 | REQ-EPS-04・REQ-EPS-19 | — |
| SSD-FD-EPS-AC-001 | F-EPS-AC-01 | 各主直流母線は3台の単相静止形インバータに給電し、これが1本の3相交流母線を構成する。 | REQ-EPS-08 | — |
| SSD-FD-EPS-AC-001 | F-EPS-AC-02 | 9台のインバータで115 V・400 Hzの交流を作り、交流母線AC1・AC2・AC3へ配電する。 | REQ-EPS-08 | — |
| SSD-FD-EPS-AC-001 | F-EPS-AC-03 | インバータは前部アビオニクスベイにあり、出力は116〜120 V（実効値）・400±7 Hzである。 | REQ-EPS-08 | — |
| SSD-FD-EPS-AC-001 | F-EPS-AC-04 | 交流母線センサは過電圧・不足電圧・過負荷を監視し、自動トリップ位置では異常のあるインバータを母線から切り離す。 | REQ-EPS-09 | — |
| SSD-FD-EPS-AC-001 | F-EPS-AC-05 | 10台のモータ制御組立が、ベントドア、ペイロードベイドア、RCS/OMSの電動弁などの交流モータへ電力を供給する。 | （なし） | 要求なしで妥当：モータ制御組立の構成の記述で、交流モータ負荷への給電は REQ-EPS-08 の交流電源の要求が受け持つ。 |
| SSD-FD-EPS-DC-001 | F-EPS-DC-01 | 3本の主直流母線（MNA・MNB・MNC）が機体の直流負荷の主電源となり、前部・中部・後部へ配電する。 | REQ-EPS-03・REQ-EPS-06・REQ-EPS-18 | — |
| SSD-FD-EPS-DC-001 | F-EPS-DC-02 | このほか、必須負荷用の必須母線3本、乗員操作用の制御電力のみを供給する制御母線9本、地上作業専用の予備母線2本がある。 | REQ-EPS-07 | — |
| SSD-FD-EPS-DC-001 | F-EPS-DC-03 | 電力は分配組立、電力制御組立、負荷制御組立、モータ制御組立で制御・分配される。 | （なし） | 要求なしで妥当：分配組立などの構成の記述で、配電の要求は REQ-EPS-03・06・07 が受け持つ。 |
| SSD-FD-EPS-DC-001 | F-EPS-DC-04 | 遠隔電力制御器（RPC）は3〜20 Aの負荷用の半導体スイッチで、定格の150%で電流を制限し、3秒以内に遮断する。 | REQ-EPS-17 | — |
| SSD-FD-EPS-DC-001 | F-EPS-DC-05 | 主母線同士はバスタイで接続でき、主母線電圧が26.4 V以下になるとC/W警報が点灯する。 | REQ-EPS-03・REQ-EPS-06 | — |
| SSD-FD-EPS-DC-001 | F-EPS-DC-06 | ペイロード用には主ペイロード母線（燃料電池3または主母線B・Cから給電）、後部ペイロード母線、補助ペイロード母線がある。 | REQ-EPS-19 | — |
| SSD-FD-EPS-DC-001 | F-EPS-DC-07 | 中胴の電気部品はフレオン21ループのコールドプレートで、前部アビオニクスベイの配電組立は水冷却ループで冷却される。 | REQ-EPS-22 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-01 | 3基の燃料電池は再使用・再起動が可能で、中胴前部のペイロードベイの下に置かれる。 | REQ-EPS-20 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-02 | 3基は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。 | REQ-EPS-03 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-03 | 発電部は3つのサブスタックに収めた96セルから成り、電解質は水酸化カリウム水溶液である。 | REQ-EPS-05 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-04 | 補機部は反応剤流量を監視し、排熱と生成水を取り除き、スタック温度を制御する。 | REQ-EPS-15・REQ-EPS-16 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-05 | 冷却材がスタックの排熱を燃料電池熱交換器経由でフレオン21冷却ループへ移し、スタックを約200°Fに保つ。 | REQ-EPS-15 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-06 | 反応剤中の不活性ガスなどを除くため、少なくとも1日2回パージが必要である。 | REQ-EPS-14 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-07 | 1基の能力は最大連続7 kW・ピーク12 kWで、3基では連続21 kW・15分間のピーク36 kWとされ、オービタの平均消費電力は約14 kWと見込まれている。 | REQ-EPS-04・REQ-EPS-05 | — |
| SSD-FD-EPS-FCP-001 | F-EPS-FCP-08 | オービタには予備バッテリがなく、3基の燃料電池が機上電力のすべてを生み出す。 | REQ-EPS-02 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-01 | PRSDは極低温の水素と酸素を超臨界状態で貯蔵して3基の燃料電池へ供給し、あわせて乗員室与圧用の酸素をECLSSへ供給する。 | REQ-EPS-10 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-02 | 液体酸素は−285°F、液体水素は−420°Fで貯蔵される。 | REQ-EPS-10 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-03 | タンクは真空断熱層を持つ二重壁の球形で、消費に伴う圧力低下をヒータで補い、残量を計測できる。 | REQ-EPS-10 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-04 | タンクは水素1基と酸素1基を1セットとし、ミッションに応じて最大5セットを中胴のペイロードベイ内張の下に搭載する。 | REQ-EPS-12・REQ-EPS-18 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-05 | 酸素タンクは1基あたり781 lb、水素タンクは92 lbを貯蔵する。 | REQ-EPS-12 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-06 | 軌道上ではヒータ制御の圧力設定が高いタンク3・4が燃料電池へ供給し、再突入ではタンク1・2が供給する。 | REQ-EPS-21 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-07 | 弁モジュール内の逆止弁が、1基のタンクが漏れても反応剤全体を失わないようにする。 | REQ-EPS-13 | — |
| SSD-FD-EPS-PRSD-001 | F-EPS-PRSD-08 | STS-50では、通常の4セットに加えて4セットのタンクを積むEDO極低温パレットが初めて飛行した。 | REQ-EPS-12 | — |
| SSD-FD-ECL-PCS-001 | IF-ECL-01 | （IF の行。内容は所有文書） | REQ-EPS-11 | — |
| SSD-FD-ECL-ATCS-001 | IF-ECL-09 | （IF の行。内容は所有文書） | REQ-EPS-15 | — |
| SSD-FD-ECL-H2O-001 | IF-ECL-10 | （IF の行。内容は所有文書） | REQ-EPS-16 | — |
| SSD-FD-EPS-AC-001 | IF-EPS-12 | （IF の行。内容は所有文書） | REQ-EPS-08 | — |
| SSD-FD-DPS-001 | IF-ORB-06 | （IF の行。内容は所有文書） | REQ-EPS-09 | — |
| SSD-FD-EPS-001 | IF-ORB-09 | （IF の行。内容は所有文書） | REQ-EPS-11 | — |
| SSD-FD-EPS-001 | IF-ORB-10 | （IF の行。内容は所有文書） | REQ-EPS-16 | — |
| SSD-FD-EPS-001 | IF-ORB-11 | （IF の行。内容は所有文書） | REQ-EPS-15 | — |
| SSD-FD-EPS-001 | IF-ORB-14 | （IF の行。内容は所有文書） | REQ-EPS-01 | — |
| SSD-FD-EPS-001 | IF-ORB-20 | （IF の行。内容は所有文書） | REQ-EPS-14 | — |
| SSD-FD-EPS-001 | IF-ORB-27 | （IF の行。内容は所有文書） | REQ-EPS-01 | — |
| SSD-FD-EPS-001 | IF-ORB-28 | （IF の行。内容は所有文書） | REQ-EPS-01 | — |
| SSD-FD-EXT-001 | IF-ORB-31 | （IF の行。内容は所有文書） | REQ-EPS-02 | — |
| SSD-FD-ECLSS-001 | IF-ORB-35 | （IF の行。内容は所有文書） | REQ-EPS-22 | — |
| SSD-FD-CW-001 | IF-ORB-41 | （IF の行。内容は所有文書） | REQ-EPS-06 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 2 件の判断を示す。いずれも構成の説明で要求を持たなくてよい「要求なしで妥当」である。Rev. A で「要求が抜けている」とした F-EPS-PRSD-06・F-EPS-DC-07 には、REQ-EPS-21・22 を足した。

| 文書 | 機能行 | 判断 | 理由 |
|---|---|---|---|
| SSD-FD-EPS-DC-001 | F-EPS-DC-03 | 要求なしで妥当 | 分配組立などの構成の記述で、配電の要求は REQ-EPS-03・06・07 が受け持つ。 |
| SSD-FD-EPS-AC-001 | F-EPS-AC-05 | 要求なしで妥当 | モータ制御組立の構成の記述で、交流モータ負荷への給電は REQ-EPS-08 の交流電源の要求が受け持つ。 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（22件のうち根拠あり 22件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-EPS-01 | I（検査） | 根拠あり | IOA の報告は、電力系のハードウェアを PRSD（EPG/PRSD）と配電・制御（EPD&C/EPG）に分け、燃料電池（EPG/FCP、C.1節）と合わせて3つの部分ごとに故障モードを評価しており、EPS が PRSD・燃料電池・EPDC の3つで構成されることを設計資料の検査で確かめられることを示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=92）STS-108 の飛行報告は、PRSD が燃料電池に酸素 2,687 lb と水素 338 lb を供給して 3,912 kWh の電力を作ったことを示し、反応剤の貯蔵・供給から発電までの流れで電力をまかなったことの記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| REQ-EPS-02 | D（実証） | 根拠あり | STS-4 の飛行報告は、燃料電池が飛行の間オービタの電力をすべて供給し、3基が打上げ前の起動から着陸後の停止まで（運転時間は各214〜215時間）運転したことを示し、燃料電池だけで打上げ前から着陸後まで発電したことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20）STS-135 の飛行報告は、燃料電池の運転時間を打上げ前・軌道上・着陸後を通して積算したものとして示しており、着陸後まで燃料電池が電力を受け持つ運用の記録である（T-50 秒という切替時刻そのものはこの頁には無い）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| REQ-EPS-03 | D（実証） | 根拠あり | STS-2 の飛行報告は、燃料電池1を停止して燃料電池2・3が残りの飛行の電力を受け持ったこと、STS-2 が燃料電池1の喪失に対してバスタイを初めて使った飛行であることを示し、独立した電源とバスタイの機能の実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=32）同じ報告は、燃料電池1を主母線 A から切り離す前に主母線 A を主母線 B にバスタイし、残る2基（主母線 B・C）の負荷分担をヒータやファンの切替で改善したことを示し、燃料電池ごとに分かれた主母線と相互接続の運用を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=34） |
| REQ-EPS-04 | T（試験） | 根拠あり | SODB 3.4.4.1 は、燃料電池1基の出力限界を連続 7 kW、10 kW は1時間、12 kW は3時間ごとに15分、16 kW の過負荷は 26.5 V で10分と定め、過負荷の能力は開発データと解析で示されたものとしており、出力範囲が試験データに基づくことを示す（連続出力は要求の 10 kW より保守的な旧版の値である）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154）STS-2（軌道飛行試験）の飛行報告は、上昇中の出力が3基で約 23.2 kW だったこと、燃料電池1の故障後は2基が残りの飛行の電力を受け持ったことを示し、1基を失ったときに残りの燃料電池が負荷を増して運転できることを飛行試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=32） |
| REQ-EPS-05 | T（試験） | 根拠あり | STS-4 の飛行報告は、3基の燃料電池の性能が起動から停止まで予測値を上回り、軌道飛行試験の試験要求 V45VV006（燃料電池の性能）を達成して運用飛行に認定されたことを示し、燃料電池の電圧・電流特性を飛行試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20）SODB の表 3.4.5.6-2 は、上昇中の燃料電池の電圧（V45V0100A ほか）の設計範囲を 27.5〜32 V としており、要求の 27.5〜32.5 V の範囲と合う。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=214） |
| REQ-EPS-06 | T（試験） | 根拠あり | STS-4（最後の軌道飛行試験）の飛行報告は、オービタの母線電圧がすべての飛行段階で設計限界の十分内側にあったことを示し、主母線電圧の範囲を飛行試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=22）SODB の表 3.4.5.6-2 は、上昇中の主配電制御組立（V76V0100A ほか）の電圧の設計範囲を 27.0〜32 V としており、要求の主母線電圧の範囲の根拠となる設計値である。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=214） |
| REQ-EPS-07 | I（検査） | 根拠あり | STS-114 の飛行報告は、飛行ごとに評価する EPDC の項目に燃料電池から必須母線へのスイッチの状態と主母線から必須母線への RPC・スイッチの状態を含め、その評価で EPDC の飛行中チェックアウトの要求を満たしたことを示し、必須母線の給電経路を毎飛行検査していることの根拠である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=48）STS-125 の飛行報告も、毎飛行少なくとも解析する EPDC の項目として、燃料電池から必須母線へのスイッチと主母線から必須母線への RPC・スイッチの状態を挙げており、同じ検査が続けられていることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=47） |
| REQ-EPS-08 | T（試験） | 根拠あり | SODB 3.4.5.6 は、インバータの交流母線の電圧限界を各相とも連続負荷で 115 ± 5 Vrms と定め、超えるとインバータが交流母線から切り離されるとしており、117 V の出力がこの範囲に入ることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=210）STS-2（軌道飛行試験）の飛行報告は、交流電力系が飛行の間すべての電力要求を十分にまかなったことを示し、インバータによる交流母線の供給を飛行試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=34） |
| REQ-EPS-09 | D（実証） | 根拠あり | STS-2 の飛行報告は、交流電力系が上昇を含む飛行の間すべての電力要求を十分にまかなったことを示し、上昇中に交流電力が途切れなかったことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=34）STS-114 の飛行報告は、飛行ごとに交流母線センサのモニタ／自動切替の状態と過負荷・過電圧の警報を評価することを示し、交流母線センサの運用モードと警報を毎飛行確かめていることの根拠である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| REQ-EPS-10 | T（試験） | 根拠あり | STS-4（軌道飛行試験）の飛行報告は、PRSD の詳細試験目標 DTO 445-03（低密度成層試験）を完了して低密度・大流量での供給性能を示し、PRSD タンクを初めて残量まで使い切ったことを示し、超臨界の貯蔵と供給を飛行試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20）STS-2 の飛行報告は、再突入では酸素・水素のタンク2だけをヒータ出力半分の自動制御とする最小電力の構成で、燃料電池の約 18 kW の負荷を支えられたことを示し、ヒータで圧力を保って供給する機能を飛行で試した記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=32） |
| REQ-EPS-11 | D（実証） | 根拠あり | STS-122 の飛行報告は、PRSD から Shuttle/ISS の ECLSS へ供給した酸素が 272 lb で、そのうちシャトルの ECLSS が 178 lb を使ったことを示し、PRSD が乗員室用の酸素を ECLSS へ供給したことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=48）STS-135 の飛行報告も、PRSD から ECLSS へ 106 lb の酸素（スタックの再加圧用の 65 lb を含む）を供給したことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |
| REQ-EPS-12 | A（解析） | 根拠あり | STS-54 の飛行報告は、4セットのタンク構成（前頁）で約6日の飛行を終えた時点の延長能力を平均 14.4 kW で 111.5 時間と評価しており、4セットで約10日の滞在をまかなえることを消耗品の解析で示す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14）STS-122 の飛行報告は、5基ずつのタンク（次頁の表）で 306.38 時間の飛行を平均 13.5 kW で行い、着陸時の残量でさらに57時間延長できたと評価しており、5セットで12日を超える滞在をまかなえることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=47） |
| REQ-EPS-13 | A（解析） | 根拠あり | IOA の PRSD の評価票（PRSD-313）は、酸素タンクの逆止弁が開いたまま故障し、さらに大きな外部漏れが重なると7秒で極低温の圧力が安全な値を下回るとして重要度 2/1R とし、この故障は飛行中に検出できない（スクリーン B 不合格）と評価しており、逆止弁が他のタンクの反応剤を守る機能を故障解析で確かめた根拠である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=209）同じ評価は水素の逆止弁（PRSD-237、CV031・CV041）についても同じ故障の組合せで重要度 2/1R とし、NASA の FMEA と一致したことを示す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=191） |
| REQ-EPS-14 | D（実証） | 根拠あり | A9-52A（PDF p1439）：定期のパージの間隔を96時間以内とし、96時間は燃料電池の電圧が 0.2 V 低下するまでの時間の平均の最大を飛行の経験から取ったものとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1439）STS-135 の飛行報告（p44）はパージの間隔を 42〜60時間とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=44）STS-65 の飛行報告（p30）は8回のパージを MET 約19〜347時間に行ったとする（間隔は約19〜62時間、本書の計算）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| REQ-EPS-15 | T（試験） | 根拠あり | SODB 3.4.4.1 は、重要な飛行段階ではポンプなしでの燃料電池の非常運転を 7 kW で最大9分まで認め、スタック冷却材の入口温度を 176〜191°F と定めており、冷却を失ったときの9分（7 kW）の値が開発データと解析で示された能力であることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=158）SODB の図 3.4.4.1-1 は、燃料電池のスタック出口温度の許容範囲を負荷電流に対して 180〜230°F の目盛りの上で示しており、スタックを負荷に応じた約 200°F に保つ要求と合う。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=160） |
| REQ-EPS-16 | T（試験） | 根拠あり | STS-2（軌道飛行試験）の飛行報告は、燃料電池1の高 pH の生成水を飲料水タンク A から切り離して補給タンク B へ流し、乗員が燃料電池からの供給管の水を直接飲んだことを示し、生成水が ECLSS の水タンクへ送られる経路を飛行試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51）STS-108 の飛行報告は、燃料電池が 3,912 kWh を発電する間に 3,025 lb の飲料水を作ったことを示し、生成水が発電の間取り除かれ続けたことの記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| REQ-EPS-17 | D（実証） | 根拠あり | STS-125 の飛行報告は、主母線 A・B の電流が RPC-10（APCA-4）で 12.5 A、RPC-12（APCA-5）で 7.5 A に上がり、2.5秒続いた後に遮断したことを示し、短絡のときに RPC が電流を保ったまま3秒以内に遮断したことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=47） |
| REQ-EPS-18 | A（解析） | 根拠あり | 飛行規則 A9-1001 の根拠の欄は、極低温タンク1基の故障では喪失までにさらに2故障を要するため MDF、2基の故障では同種の故障の危険が増すため次の PLS とし、極低温の喪失は乗員・機体の喪失であるとしており、判定区分を故障の余裕の評価で導いていることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1518）IOA の PRSD の評価票（PRSD-216）は、水素タンクの外部漏れを重要度 1/1 と評価しており、タンクの喪失を判定基準で数える根拠となる故障解析である。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=188） |
| REQ-EPS-19 | A（解析） | 根拠あり | SODB 3.4.4.1 は、燃料電池1基の連続出力を 7 kW（3基で 21 kW）とし、系全体の出力を 36 kW 以下に制限しており、発電能力の上限を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154）STS-135 の飛行報告は、飛行の平均電力と負荷が 13.6 kW・442 A だったことを示し、平均消費電力が連続の発電能力（21 kW）を下回り、ペイロードに使える余裕が残ることを裏づける。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| REQ-EPS-20 | I（検査） | 根拠あり | STS-125 の飛行報告は、燃料電池1を運転時間に基づいて機体から取り外し、製造元へ戻して試験と保管に回すとしており、燃料電池の累積運転時間を管理して整備・交換していることの根拠である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=47）STS-135 の飛行報告は、飛行終了時の3基の累積運転時間を 2,176・903・2,411 時間としており、燃料電池を 2,000 時間を超えて再使用した記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=44） |
| REQ-EPS-21 | A（解析） | 根拠あり | 飛行規則 A9-257 の根拠の欄は、水素2基・各2台のヒータ（計400 W）で得られる流量を 400×3.41/750 ≒ 1.8 lb/hr（約20 kW）と計算しており、再突入用の残量の値を解析で導いていることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1490）STS-2 の飛行報告は、再突入では酸素・水素のタンク2だけをヒータ出力半分の自動制御とする最小電力の構成で供給したことを示し、前方のタンクで再突入の燃料電池の流量をまかなった記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=32） |
| REQ-EPS-22 | I（検査） | 根拠あり | ECLSS の訓練マニュアルの中胴コールドプレートの冷却の表は、左右のパネルに主配電組立（MNA DA1 ほか）と電力制御組立（MNA MPC1 ほか）が取り付けられ、両方のフレオンループで冷やされることを示し、配電機器の冷却の構成を設計資料の検査で確かめられることを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=101）STS-114 の飛行報告は、能動熱制御系のすべてのパラメータが飛行の間正常なハードウェアの性能を示したとしており、コールドプレートによる冷却が飛行で保たれた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |

## 8. 注記（出典間の相違・構成変更）

> **注記** 燃料電池の出力の限界は版ごとに異なる。SODB は1基 7 kW を連続、10 kW を1時間、12 kW を3時間ごとに15分、16 kW を10分とし、運用飛行規則 A9-51（2002年）は 2〜10 kW を連続、SCOM（2008年）は通常時に最大 10 kW 連続・故障時 12 kW 連続とする。REQ-EPS-04 は A9-51 に従う。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154）（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1438）

> **注記** SODB は燃料電池全体の最大出力を 36 kW とし、これを超えると ATCS の設計能力を超えるおそれがあるとしている。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154）

> **注記** 燃料電池の能力 F-EPS-05（平均 14 kW・ピーク 24 kW）は1975年の設計論文の値で、SCOM・運用飛行規則の運用値とは前提が異なる。要求の値には運用値を使った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）

> **注記** REQ-EPS-03 の検証方法を I（検査） から D（実証） に改めた。要求は構成（独立電源3・主母線3・バスタイ）だが、公開資料で確かめられるのは STS-2 で燃料電池1を失ったときにバスタイで2基に負荷を移した飛行の記録であり、構成の検査記録は無いため実証（D）とする。

> **注記** REQ-EPS-13 の検証方法を I（検査） から A（解析） に改めた。公開資料に逆止弁の検査記録は無く、IOA の FMEA が逆止弁の開固着と外部漏れの組合せを評価しているため、解析（A）とする。

> **注記** REQ-EPS-17 の検証方法を T（試験） から D（実証） に改めた。公開資料に RPC の電流制限・遮断の試験記録は無く、飛行中の短絡で RPC が2.5秒後に遮断した記録が根拠となるため、実証（D）とする。

> **注記** REQ-EPS-21・22 は、Rev. A で要求が抜けているとした機能行 F-EPS-PRSD-06（軌道と再突入で供給するタンクを分ける）と F-EPS-DC-07（配電機器の冷却）に対して、運用飛行規則 A9-256・A9-257 と SCOM 2.8 の記述から起こした。REQ-EPS-21 の値は A9-257 の再突入用の水素の残量による。

> **注記** REQ-EPS-14（パージ間隔）の、飛行の実績の値による判定（満たさない）は [SSD-RQF-SYS-001](SSD-RQF-SYS-001.md) に示す（SysML v2 テキスト：SysML/SSD-RQF-SYS-001.sysml）。

> **注記** 要求の値の見直し（Rev. BG）：REQ-EPS-14 のパージの間隔は、以前は SODB Rev. E（JSC-08934）の制約「最大12時間」を値としていたが、飛行の実績（約19〜93時間）と合わなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154）運用飛行規則 A9-52A は 0.2 V の電圧の低下を頻度の基準とし、間隔の上限を飛行の経験から96時間とする（規則の変更記録から 1994年ごろの改訂と読める）ので、これに改め、検証の状態を根拠ありとした。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1439）12時間の値が使われなくなった経緯は Rev. BH の注記に示す。機能行 F-EPS-FCP-06 の「少なくとも1日2回」も古い資料の記述である。

> **注記** パージの間隔の経緯（Rev. BH の調査）：1984年の運用マニュアル（JSC-12770 Vol. 2）は、パージの間隔を最大8時間とし、就寝の前後に行うとしていた。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.2%20-%20Shuttle%20Flight%20Operations%20Manual,%20Electrical%20Power%20Systems%20(1984-11-28).pdf#page=35）1992年、STS-50 で240時間以上パージしなかった燃料電池の電圧の低下が小さかったことから、STS-46 以降のパージの計画を改めた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-46%20Space%20Shuttle%20Mission%20Report.pdf#page=15）STS-46 は48時間ごと、または 0.2 V の低下でパージした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-46%20Space%20Shuttle%20Mission%20Report.pdf#page=7）1993年の STS-56 の規則は72時間ごと（または 0.2 V の低下）とした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=23）1994年の STS-59 で初めて96時間の間隔で飛んだ。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=20）1996年版の運用飛行規則（NSTS-12820 PCN-8）は、96時間を超えない間隔と 0.2 V の基準を定めている。（出典: https://www.ibiblio.org/apollo/Shuttle/NSTS-12820,%20Vol.A,%20PCN-8%20-%20Space%20Shuttle%20Operational%20Flight%20Rules,%20Volume%20A,%20All%20Flights%20(Final,%201996-06-06).PDF#page=1374）このように 12時間（その前は8時間）から、飛行の実績を見ながら 48 → 72 → 96時間へ段階的に延ばした。燃料電池の機器の改修を理由に挙げた資料は見つからない（規則の変更記録の番号から、規則化は1994年9月ごろと読める）。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p311） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311
2. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p356） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356
3. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p320） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320
4. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-51 FC Power Level Constraints（PDF p1438） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1438
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-101 DC Bus Voltage Limits（PDF p1453） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1453
7. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p337） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/337
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
9. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p318） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/318
10. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.4.1 Fuel Cell Powerplant Subsystem（PDF p154） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=154
11. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p326） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326
12. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p324） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/324
13. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p338） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1001 Electrical Go/No-Go Criteria（PDF p1510） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510
15. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report EPG/PRSD の評価概要（C.24節）（PDF p92） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=92
16. STS-108 Mission Report Power Reactant Storage and Distribution（PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27
17. STS-4 Orbiter Mission Report 2.2.4 Power Generation System（PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20
18. STS-135 Mission Report Fuel Cell System（PDF p44） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=44
19. STS-2 Orbiter Mission Report 2.2.5 Electrical Power Distribution and Control（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=32
20. STS-2 Orbiter Mission Report 2.2.5 Electrical Power Distribution and Control（PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=34
21. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） Table 3.4.5.6-2 Minimum and Maximum Bus Voltages During Ascent（PDF p214） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=214
22. STS-4 Orbiter Mission Report 2.2.5 Electrical Power Distribution and Control（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=22
23. STS-114 Mission Report Electrical Power Distribution and Control（PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=48
24. NSTS-37452 STS-125 Mission Report（2010） Electrical Power Distribution and Control System（PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=47
25. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.6 Electrical Power Distribution and Control Subsystems（PDF p210） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=210
26. STS-122 Mission Report Power Reactant Storage and Distribution System（PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=48
27. STS-135 Mission Report Power Reactant Storage and Distribution System（PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=43
28. NASA-CR-194116 STS-54 Mission Report（1993） Power Reactant Storage and Distribution Subsystem（PDF p14） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=14
29. STS-122 Mission Report Power Reactant Storage and Distribution System（PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=47
30. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） Appendix C Assessment Worksheet PRSD-313（PDF p209） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=209
31. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） Appendix C Assessment Worksheet PRSD-237（PDF p191） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=191
32. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.4.1 Fuel Cell Powerplant Subsystem (Concluded)（PDF p158） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=158
33. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） Figure 3.4.4.1-1 Fuel cell powerplant stack exit temperature（PDF p160） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=160
34. JSC-17959 STS-2 Orbiter Mission Report（1982年） 2.4.3節 Air Revitalization Pressure Control Subsystem（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51
35. STS-108 Mission Report Power Reactant Storage and Distribution（PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28
36. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1001 Electrical Go/No-Go Criteria（PDF p1518） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1518
37. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） Appendix C Assessment Worksheet PRSD-216（PDF p188） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=188
38. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-256 CRYO O2/H2 TANK QUANTITY BALANCING（PDF p1489） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1489
39. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-257 POWER REACTANT STORAGE AND DISTRIBUTION (PRSD) H2 AND O2 REDLINE DETERMINATION（PDF p1490） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1490
40. USA006020 Rev. B ECLSS 21002 訓練マニュアル 4.5 Midbody Coldplates（PDF p101） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=101
41. STS-114 Mission Report Active Thermal Control System（PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49
42. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-52 FC PURGE（PDF p1439） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1439
43. STS-65 Mission Report （PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30
44. JSC-12770 Vol. 2 Shuttle Flight Operations Manual, Electrical Power Systems（1984-11-28、114頁、6,134,496 バイト） Fuel cell purge（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.2%20-%20Shuttle%20Flight%20Operations%20Manual,%20Electrical%20Power%20Systems%20(1984-11-28).pdf#page=35
45. NSTS-08278 STS-46 Space Shuttle Mission Report（1992-10、34頁、2,454,037 バイト） Fuel cell（PDF p15） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-46%20Space%20Shuttle%20Mission%20Report.pdf#page=15
46. NSTS-08278 STS-46 Space Shuttle Mission Report（1992-10、34頁、2,454,037 バイト） Summary（PDF p7） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-46%20Space%20Shuttle%20Mission%20Report.pdf#page=7
47. STS-56 Space Shuttle Mission Report（1993、51頁、4,013,614 バイト） Fuel cell（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-56%20Space%20Shuttle%20Mission%20Report.pdf#page=23
48. STS-59 Mission Report Fuel cell（PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=20
49. NSTS-12820 Vol. A PCN-8 Space Shuttle Operational Flight Rules, Volume A, All Flights（Final 1996-06-06、2313頁、5,885,090 バイト） A9.1.2-2 FC PURGE（PDF p1374） — https://www.ibiblio.org/apollo/Shuttle/NSTS-12820,%20Vol.A,%20PCN-8%20-%20Space%20Shuttle%20Operational%20Flight%20Rules,%20Volume%20A,%20All%20Flights%20(Final,%201996-06-06).PDF#page=1374

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（L2 電力系要求 20件、機能行 33件とのトレース、要求の無い機能行 4件の判断） |
| Rev. A | 2026-10-01 | 要求ごとの検証の根拠と状態（V&V）の表を追加（根拠あり 19件・根拠なし 1件）、3件の検証方法を改めた（Rev. S） |
| Rev. B | 2026-10-02 | 要求が抜けていた F-EPS-PRSD-06・F-EPS-DC-07 に REQ-EPS-21（再突入用の反応剤の確保）・REQ-EPS-22（配電機器の冷却）と検証の根拠を追加（Rev. V） |
| Rev. C | 2026-10-03 | 要求の形式化定義書 SSD-RQF-SYS-001 への参照を注記（Rev. AS） |
| Rev. D | 2026-10-07 | REQ-EPS-14 のパージの間隔を運用飛行規則 A9-52A の96時間以内に見直し、検証の状態を根拠ありにした（要求の値の見直し）、上位の要求 REQ-SYS-13 の文を改めた（Rev. BG の要求の値の見直し）（Rev. BG） |
| Rev. E | 2026-10-08 | パージの間隔が12時間から96時間へ変わった経緯（1992〜1996年）を注記（Rev. BH） |
