# 乗員系（CREW）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-CREW-001 |
| 表題 | 乗員系（CREW）要求書（L2） |
| 版・日付 | Rev. B／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図64 乗員系 機能構成 |

## 1. 目的

CREWに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、CREWの機能説明書（SSD-FD-CREW-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-03 | 直径 15 ft・長さ 60 ft のペイロードベイにペイロードを収めること。 |
| REQ-SYS-05 | 最大8人の乗員を運べること。 |
| REQ-SYS-06 | 通常のミッションで 4〜16 日の軌道滞在ができること。 |
| REQ-SYS-07 | 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |

## 4. 乗員系要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-CREW-01 | 軌道上で乗員が過ごせるよう、被服・個人衛生・睡眠設備を持ち、1日を8時間の睡眠と16時間の活動に分けられること。 | 睡眠 8時間・活動 16時間 | 乗員の被服は飛行前に各乗員が必須・任意の装備の一覧から選び、軌道上ではズボン・上着・シャツ・睡眠用ショーツなどを着る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209）1日は通常8時間の睡眠と16時間の活動に分ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209）睡眠設備は寝袋とライナー、または寝台ごとに寝袋1つとライナー2つの固定式睡眠ステーションで、寝袋は中甲板右舷の壁に取り付けて軌道上で移す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210） | REQ-SYS-05・REQ-SYS-06 | F-CREW-HAB-01・F-CREW-HAB-02・F-CREW-HAB-03・F-CREW-HAB-04・F-CREW-HAB-05 | PH-3（軌道） | I（検査） |
| REQ-CREW-02 | 心肺機能の低下と骨・筋肉の減少を防ぐ運動器具を持ち、CDR・PLT・MS2 には FD04 から EOM-1 まで少なくとも1日おきに運動を組むこと。 | 1日おき（11日超では他の乗員も3日ごと） | 運動は心肺機能の低下と骨・筋肉の減少を防ぐためで、主な器具は中甲板の床のスタッドに取り付ける自転車エルゴメータ（CE）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/212）CDR・PLT・MS2にはFD04からEOM-1まで少なくとも1日おきに処方の運動を組み、11日を超える飛行ではほかの乗員にも3日ごとに組む。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1771） | REQ-SYS-06 | F-CREW-HAB-06・F-CREW-OPS-03 | PH-3（軌道） | D（実証） |
| REQ-CREW-03 | 清掃作業と湿ったごみの収納・排気で居住区画を清潔に保ち、24時間平均の騒音が 74 dBA 以上なら処置をとること。 | 騒音 74 dBA、ごみ排気 約 3 lb/日 | 各乗員は1日に何度か5〜15分の清掃作業（廃棄物処理区画・食事区域・空気フィルタの清掃、ごみ処理、LiOHキャニスタの交換）を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/212）中甲板の床下の8 ft3の湿ったごみの収納区画（Volume F）は、臭気を抑えるため船外へ約3 lb/日で排気する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/213）居住区画の24時間平均の騒音が74 dBA以上なら、騒音源の電源を切る、日程を組み替える、睡眠中に耳栓を使うなどの処置をとる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1765） | REQ-SYS-06・REQ-SYS-07 | F-CREW-HAB-07・F-CREW-HAB-08・F-CREW-OPS-04 | PH-3（軌道） | A（解析） |
| REQ-CREW-04 | 約 150 ft3 の交換可能なロッカーと床下の区画に装備を収め、拘束具と移動補助具で乗員が安全に作業できること。 | 収納 約 150 ft3、ロッカー ≦ 68 lb | 収納容積は約150 ft3で、その95%近くが中甲板にあり、ロッカー1つは2 ft3・68 lb以下を収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/747）拘束具（足ループ・座席拘束・保持ネット・ベルクロなど）と移動補助具（手すり・中甲板の非常脱出ネット・甲板間のはしご）で、乗員は乗込み・退出・軌道飛行の作業を安全に行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/213） | REQ-SYS-05 | F-CREW-STW-01・F-CREW-STW-02・F-CREW-STW-03・F-CREW-STW-04・F-CREW-STW-05・F-CREW-STW-06・F-CREW-STW-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-CREW-05 | 軽い傷病の治療と重い傷病者の安定のため医療キット・蘇生器・洗眼器を持ち、地上の航空医官と相談して診断・治療できること。 | 補助酸素 100% | SOMSは軽い病気やけがの飛行中の治療と、重い傷病者を地球に帰るまで安定させるためのもので、主に用途別のサブパックに分けた医療キットから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218）蘇生器は中甲板のパネルMO32M・MO69Mと飛行甲板のパネルC6でオービタの酸素供給につなぎ、100%の補助酸素を手動または要求流量で与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219）機上の診断装置と乗員からの情報により、管制センターの航空医官と相談して傷病を診断・治療する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220） | REQ-SYS-05 | F-CREW-MED-01・F-CREW-MED-02・F-CREW-MED-03・F-CREW-MED-04・F-CREW-MED-05・F-CREW-OPS-01・F-CREW-OPS-02・F-CREW-OPS-07 | PH-3（軌道） | D（実証） |
| REQ-CREW-06 | 乗員の被ばくを線量計で測り、法定の限度内かつ合理的に達成できる限り低く（ALARA）保つこと。 | 実績 0.05〜0.07 rem | 各乗員は飛行の間ずっと受動線量計を身に着け、太陽フレアなどのときは能動線量計を読み出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/222）乗員の電離放射線の被ばくは法定の限度を守り、合理的に達成できる限り低く（ALARA）保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1830） | REQ-SYS-05 | F-CREW-MED-06・F-CREW-MED-07・F-CREW-OPS-05・F-CREW-OPS-08 | PH-3（軌道） | A（解析） |
| REQ-CREW-07 | 機内・機外の照明を持ち、必須母線から給電する非常照明と、ペイロードベイドア・EVA・RMS・ドッキングの視界を与える投光照明を持つこと。 | 操縦室照明 1〜2 kW | 非常照明は、必須母線からの別の電源入力で給電される特定の照明器具である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/561）機外の投光照明は、ペイロードベイドアの操作・EVA・RMSの操作・ステーションキーピング・ドッキングの視界を良くする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574） | REQ-SYS-03・REQ-SYS-10 | F-CREW-LTG-01・F-CREW-LTG-02・F-CREW-LTG-03・F-CREW-LTG-04・F-CREW-LTG-05・F-CREW-LTG-06・F-CREW-LTG-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-CREW-08 | 高度 30,000 ft 以下の制御された滑空中に、与圧服・パラシュート・側面ハッチ投棄・脱出ポールで乗員が脱出できること。 | 高度 ≦ 30,000 ft、ACES 3.67 psia | 飛行中の脱出は高度30,000 ft以下の制御された滑空中に行い、与圧服・酸素ボトル・パラシュート・救命いかだ・キャビンベントと側面ハッチ投棄の火工品・脱出ポールを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421）先進乗員脱出服（ACES）は全与圧服で、2重の服制御器が圧力を保ち、全膨張で絶対圧3.67 psiaを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/424）脱出ポールは、側面ハッチから出る乗員を左翼に当たらない軌道に導く、ばね式の伸縮する湾曲した筒である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433） | REQ-SYS-05 | F-CREW-ESC-01・F-CREW-ESC-02・F-CREW-ESC-03・F-CREW-ESC-04・F-CREW-ESC-05・F-CREW-ESC-06 | PH-2（上昇）・PH-6（再突入） | A（解析） |
| REQ-CREW-09 | 側面ハッチと頭上窓の2つの脱出口と射点のスライドワイヤを持ち、キャビンベントとハッチ投棄は電力なしでも作動すること。 | 脱出口 2、火工品は電力不要 | 側面ハッチから出られないときは左舷の頭上窓（窓8）が2次の非常脱出口となり、各乗員は降下器（Sky Genie）で右舷側の地上へ降りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438）キャビンベントとハッチ投棄の火工品はオービタの電力を要さず、電力を失っても作動できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/441） | REQ-SYS-05・REQ-SYS-10 | F-CREW-ESC-07・F-CREW-ESC-08・F-CREW-ESC-09 | PH-1（打上げ前）・PH-7（着陸後） | A（解析） |
| REQ-CREW-10 | LES の酸素供給系を2系統持ち、1系統の喪失で MDF、2系統の喪失で次の PLS と判断すること。 | 2系統（1喪失 MDF・2喪失 次の PLS） | 生命維持のGo/No-Go基準は、LESの酸素供給系（2系統）の1系統の喪失でMDF、2系統の喪失で次のPLSとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032） | REQ-SYS-10・REQ-SYS-14 | F-CREW-OPS-06 | PH-3（軌道） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

CREWの機能説明書 7 件の機能行 52 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 46 件が要求から参照され、6 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-CREW-001 | F-CREW-01 | 乗員系は、他の大きな系に属さない、乗員の効率と快適のための装備（被服、衛生用品、睡眠設備、運動器具、清掃用具、拘束具、収納容器、撮影機器、医療キット、生体計測、放射線計測、空気サンプリング）から成る。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CREW-001 | F-CREW-02 | 睡眠設備は寝袋とライナー、または寝台ごとに寝袋1つとライナー2つを備えた固定式の睡眠ステーションで、ステーションの各段は照明と換気の吸気口・排気口を持つ。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CREW-001 | F-CREW-03 | 脱出系は乗員の緊急・非常脱出のための装備で、乗員が着用する装備、オービタに組み込まれた機器、射点の外部設備から成り、脱出の形態はミッションの段階（打上げ前・飛行中・着陸後）で異なる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CREW-001 | F-CREW-04 | 飛行中の脱出系は、高度30,000 ft以下の制御された滑空飛行中に乗員が脱出できるよう、与圧服、酸素ボトル、パラシュート、救命いかだ、キャビンベントと側面ハッチ投棄の火工品、脱出ポールを備える。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CREW-001 | F-CREW-05 | 射点で破局的な事態が迫った場合、乗員はスライドワイヤのバスケットで安全な区域へ降りる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CREW-001 | F-CREW-06 | 左側の頭上窓は2次の緊急脱出口で、外側の窓ガラスを投棄して20×20インチの開口を得る。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-01 | 脱出系は乗員が着る装備、オービタに組み込んだ機器、射点の外部設備から成り、脱出の形態は打上げ前・飛行中・着陸後で異なる。 | REQ-CREW-08 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-02 | 飛行中の脱出は高度30,000 ft以下の制御された滑空中に行い、与圧服・酸素ボトル・パラシュート・救命いかだ・キャビンベントと側面ハッチ投棄の火工品・脱出ポールを使う。 | REQ-CREW-08 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-03 | 先進乗員脱出服（ACES）は全与圧服で、2重の服制御器が圧力を保ち、全膨張で絶対圧3.67 psiaを与える。 | REQ-CREW-08 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-04 | ACESの酸素マニホールドは、オービタの酸素供給ホース、パラシュートハーネスの非常用酸素ボトル、呼吸用の調整器をつなぐ。 | REQ-CREW-08 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-05 | 側面ハッチの3組の火工品は前方のT字ハンドルで同時に作動し、ヒンジを切る線形成形爆薬4個、70本の破断ボルトを割る膨張チューブ2組、ハッチを約45 ft/sで離すスラスタパック3個から成る。 | REQ-CREW-08 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-06 | 脱出ポールは、側面ハッチから出る乗員を左翼に当たらない軌道に導く、ばね式の伸縮する湾曲した筒である。 | REQ-CREW-08 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-07 | 側面ハッチから出られないときは左舷の頭上窓（窓8）が2次の非常脱出口となり、各乗員は降下器（Sky Genie）で右舷側の地上へ降りる。 | REQ-CREW-09 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-08 | 射点の非常脱出では乗員はスライドワイヤのバスケットで安全な区域へ降り、その終点の近くにM-113装甲車が待機する。 | REQ-CREW-09 | — |
| SSD-FD-CREW-ESC-001 | F-CREW-ESC-09 | キャビンベントとハッチ投棄の火工品はオービタの電力を要さず、電力を失っても作動できる。 | REQ-CREW-09 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-01 | 乗員の被服は飛行前に各乗員が必須・任意の装備の一覧から選び、軌道上ではズボン・上着・シャツ・睡眠用ショーツなどを着る。 | REQ-CREW-01 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-02 | 洗顔用の常温の温水はギャレーの補助ポートにつないだ個人衛生ホース（PHH）から得て、ほかの衛生用品は中甲板のロッカーなどに収める。 | REQ-CREW-01 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-03 | 1日は通常8時間の睡眠と16時間の活動に分ける。 | REQ-CREW-01 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-04 | 睡眠設備は寝袋とライナー、または寝台ごとに寝袋1つとライナー2つの固定式睡眠ステーションで、寝袋は中甲板右舷の壁に取り付けて軌道上で移す。 | REQ-CREW-01 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-05 | 24時間運用のミッションでは4段の固定式睡眠ステーションを中甲板右舷に置き、各段は照明と換気の吸気口・排気口を持つ。 | REQ-CREW-01 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-06 | 運動は心肺機能の低下と骨・筋肉の減少を防ぐためで、主な器具は中甲板の床のスタッドに取り付ける自転車エルゴメータ（CE）である。 | REQ-CREW-02 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-07 | 各乗員は1日に何度か5〜15分の清掃作業（廃棄物処理区画・食事区域・空気フィルタの清掃、ごみ処理、LiOHキャニスタの交換）を行う。 | REQ-CREW-03 | — |
| SSD-FD-CREW-HAB-001 | F-CREW-HAB-08 | 中甲板の床下の8 ft3の湿ったごみの収納区画（Volume F）は、臭気を抑えるため船外へ約3 lb/日で排気する。 | REQ-CREW-03 | — |
| SSD-FD-CREW-LTG-001 | F-CREW-LTG-01 | 照明系は機内と機外の照明から成り、機内照明は投光照明・パネル照明・計器照明・数字表示・表示灯である。 | REQ-CREW-07 | — |
| SSD-FD-CREW-LTG-001 | F-CREW-LTG-02 | 非常照明は、必須母線からの別の電源入力で給電される特定の照明器具である。 | REQ-CREW-07 | — |
| SSD-FD-CREW-LTG-001 | F-CREW-LTG-03 | 中甲板の天井には8つの投光照明器具があり、パネルMO13QのMID DECK FLOODSスイッチで個別に入切する。 | REQ-CREW-07 | — |
| SSD-FD-CREW-LTG-001 | F-CREW-LTG-04 | 機外の投光照明は、ペイロードベイドアの操作・EVA・RMSの操作・ステーションキーピング・ドッキングの視界を良くする。 | REQ-CREW-07 | — |
| SSD-FD-CREW-LTG-001 | F-CREW-LTG-05 | ペイロードベイの投光照明はメタルハライド灯で、各灯に高電圧を作るDC/DC電源があり、電力は中部電力制御組立から10 Aの遠隔電力制御器で供給する。 | REQ-CREW-07 | — |
| SSD-FD-CREW-LTG-001 | F-CREW-LTG-06 | メタルハライド灯の電源は、フレオンループで冷やす投光照明電子組立に取り付けられる。 | REQ-CREW-07 | — |
| SSD-FD-CREW-LTG-001 | F-CREW-LTG-07 | 操縦室の照明をすべて点けると消費電力は1〜2 kWになり、ペイロードベイの投光照明は点けたら10分以上点けたままにする。 | REQ-CREW-07 | — |
| SSD-FD-CREW-MED-001 | F-CREW-MED-01 | SOMSは軽い病気やけがの飛行中の治療と、重い傷病者を地球に帰るまで安定させるためのもので、主に用途別のサブパックに分けた医療キットから成る。 | REQ-CREW-05 | — |
| SSD-FD-CREW-MED-001 | F-CREW-MED-02 | SOMSの多くは中甲板のロッカー1つにまとめて収め、使うときに取り出してベルクロで取り付ける。 | REQ-CREW-05 | — |
| SSD-FD-CREW-MED-001 | F-CREW-MED-03 | 蘇生器は中甲板のパネルMO32M・MO69Mと飛行甲板のパネルC6でオービタの酸素供給につなぎ、100%の補助酸素を手動または要求流量で与える。 | REQ-CREW-05 | — |
| SSD-FD-CREW-MED-001 | F-CREW-MED-04 | 汚染除去キット（CCK）の非常用洗眼器はギャレーの清水につないで、化学やけどや煙で傷んだ目を洗う。 | REQ-CREW-05 | — |
| SSD-FD-CREW-MED-001 | F-CREW-MED-05 | 生体計測系（OBS）は乗員の心電図の信号をアビオニクスに送り、デジタルデータにして実時間で地上へ送るか記録する。 | REQ-CREW-05 | — |
| SSD-FD-CREW-MED-001 | F-CREW-MED-06 | 各乗員は飛行の間ずっと受動線量計を身に着け、太陽フレアなどのときは能動線量計を読み出す。 | REQ-CREW-06 | — |
| SSD-FD-CREW-MED-001 | F-CREW-MED-07 | 空気サンプリングは、採気容器（GSC）による飛行後の分析と、一酸化炭素・シアン化水素・塩化水素の実時間の分析の2つの方式がある。 | REQ-CREW-06 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-01 | 医療キットのうち「医師の承認が必要」とした品は、医師でない乗員はFCRの航空医官か搭乗した医師の指示でのみ使い、使った品は記録する。 | REQ-CREW-05 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-02 | 乗員の健康に関わる飛行の早期終了は実時間で判断し、軌道上で適切な治療ができないときだけ考える。 | REQ-CREW-05 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-03 | CDR・PLT・MS2にはFD04からEOM-1まで少なくとも1日おきに処方の運動を組み、11日を超える飛行ではほかの乗員にも3日ごとに組む。 | REQ-CREW-02 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-04 | 居住区画の24時間平均の騒音が74 dBA以上なら、騒音源の電源を切る、日程を組み替える、睡眠中に耳栓を使うなどの処置をとる。 | REQ-CREW-03 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-05 | 乗員の電離放射線の被ばくは法定の限度を守り、合理的に達成できる限り低く（ALARA）保つ。 | REQ-CREW-06 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-06 | 生命維持のGo/No-Go基準は、LESの酸素供給系（2系統）の1系統の喪失でMDF、2系統の喪失で次のPLSとする。 | REQ-CREW-10 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-07 | 機上の診断装置と乗員からの情報により、管制センターの航空医官と相談して傷病を診断・治療する。 | REQ-CREW-05 | — |
| SSD-FD-CREW-OPS-001 | F-CREW-OPS-08 | これまでの飛行の被ばく線量は0.05〜0.07 remで、乗員の被ばく限度を十分下回る。 | REQ-CREW-06 | — |
| SSD-FD-CREW-STW-001 | F-CREW-STW-01 | 収納はおもに硬い容器と柔らかい容器から成り、収納場所は飛行甲板・中甲板・エアロック・下部機器ベイにある。 | REQ-CREW-04 | — |
| SSD-FD-CREW-STW-001 | F-CREW-STW-02 | モジュラーロッカーは交換可能で、ばね付きの拘束ボルトでオービタに取り付け、軌道上で乗員が外したり付けたりできる。 | REQ-CREW-04 | — |
| SSD-FD-CREW-STW-001 | F-CREW-STW-03 | 収納容積は約150 ft3で、その95%近くが中甲板にあり、ロッカー1つは2 ft3・68 lb以下を収める。 | REQ-CREW-04 | — |
| SSD-FD-CREW-STW-001 | F-CREW-STW-04 | 中甲板の前方アビオニクスベイに33個、エアロックの右舷側に11個のロッカーを取り付けられる。 | REQ-CREW-04 | — |
| SSD-FD-CREW-STW-001 | F-CREW-STW-05 | 床下には7つの収納区画があり、Volume F は湿ったごみ、Volume G は非常用の衛生用品、Volume H は EVA の付属品を収める。 | REQ-CREW-04 | — |
| SSD-FD-CREW-STW-001 | F-CREW-STW-06 | 拘束具（足ループ・座席拘束・保持ネット・ベルクロなど）と移動補助具（手すり・中甲板の非常脱出ネット・甲板間のはしご）で、乗員は乗込み・退出・軌道飛行の作業を安全に行う。 | REQ-CREW-04 | — |
| SSD-FD-CREW-STW-001 | F-CREW-STW-07 | 中甲板収納ラック（MAR）は側面ハッチの前方に置き、約15 ft3・約340 lbまでの小型ペイロードや実験を収める。 | REQ-CREW-04 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 6 件のうち、6 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-CREW-001 | 6 | 0 | 6 | 0 |
| SSD-FD-CREW-ESC-001 | 9 | 9 | 0 | 0 |
| SSD-FD-CREW-HAB-001 | 8 | 8 | 0 | 0 |
| SSD-FD-CREW-LTG-001 | 7 | 7 | 0 | 0 |
| SSD-FD-CREW-MED-001 | 7 | 7 | 0 | 0 |
| SSD-FD-CREW-OPS-001 | 8 | 8 | 0 | 0 |
| SSD-FD-CREW-STW-001 | 7 | 7 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（10件のうち根拠あり 10件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-CREW-01 | I（検査） | 根拠あり | 3.15節 Personal Hygiene Provisions（PDF p359〜）：個人衛生ホース・衛生キット・タオルなどを述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=359） |
| REQ-CREW-02 | D（実証） | 根拠あり | CYCLE ERGOMETER OPS（PDF p87）：エルゴメータを床から外して運動の場所の座席スタッドに取り付ける手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=87） |
| REQ-CREW-03 | A（解析） | 根拠あり | A13-29（PDF p1765）：居住区画の24時間平均の騒音（LEQ）が音響線量計で 74 dBA 以上なら、騒音の大きい機器の電源を切るなどの処置をとると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1765） |
| REQ-CREW-04 | I（検査） | 根拠あり | 1-6 VOL E REMOVAL（PDF p50）：床下の Volume E を外して下部機器ベイへ近づく手順と、睡眠ステーションがあると外せない場合を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=50） |
| REQ-CREW-05 | D（実証） | 根拠あり | A13-22（PDF p1758）：医療キットの使用の承認と記録を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1758） |
| REQ-CREW-06 | A（解析） | 根拠あり | A14-51（PDF p1830）：乗員の電離放射線の被ばく限度とALARAを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1830） |
| REQ-CREW-07 | D（実証） | 根拠あり | （PDF p22）：6つのペイロードベイ投光照明を点けたときの電流の増え方から、中部左舷の投光照明の不具合を見つけた例を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| REQ-CREW-08 | A（解析） | 根拠あり | 3.5節 Emergency Egress Provisions（PDF p123〜）：脱出パネル・降下器・PEAPなどの非常脱出の装備を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=123） |
| REQ-CREW-09 | A（解析） | 根拠あり | 2.10節 Escape Systems（PDF p438）：側面ハッチから出られないときの2次の非常脱出口として、左舷の頭上窓（窓8）の投棄系を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438） |
| REQ-CREW-10 | A（解析） | 根拠あり | A17-1001（PDF p2032）：LESの酸素供給系の喪失に対するMDF・次のPLSの基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

> **注記** NASA-STD-3001 との照合：REQ-CREW-03（検証の判定 VC-REQ-CREW-03 pass）は [V2 6078]（HSI-161）・[V2 6115]（HSI-162）・[V2 9056]（HSI-376） による評価では 不適合。REQ-CREW-08（検証の判定 VC-REQ-CREW-08 pass）は [V2 11032]（HSI-492） による評価では 不適合。既存の判定と 3001 による評価が食い違うが、判定は据え置く（[SSD-HSI-SYS-001](SSD-HSI-SYS-001.md) §7）。

> **注記** 乗員系の要求と人間系の基準（NASA-STD-3001）との照合は [SSD-HSI-SYS-001](SSD-HSI-SYS-001.md) に示す（SysML v2 テキスト：SysML/SSD-HSI-SYS-001.sysml）。

> **注記** REQ-CREW-05（医療）の装備・役割・処置の流れは [SSD-MED-ORB-001](SSD-MED-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-MED-ORB-001.sysml）。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p209） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209
2. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p210） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/210
3. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p212） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/212
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-33 EXERCISE REQUIREMENTS（PDF p1771） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1771
5. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p213） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/213
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-29 NOISE LEVEL CONSTRAINTS（PDF p1765） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1765
7. Shuttle Crew Operations Manual 2.24 Stowage（USA007587 Rev. A CPN-1、PDF p747） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/747
8. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p218） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/218
9. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p219） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/219
10. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p220） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220
11. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p222） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/222
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A14-51 CREW RADIATION EXPOSURE LIMITS [HC]（PDF p1830） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1830
13. Shuttle Crew Operations Manual 2.15 Lighting System（USA007587 Rev. A CPN-1、PDF p561） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/561
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.15節 Exterior Lighting（PDF p574） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/574
15. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p421） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/421
16. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p424） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/424
17. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p433） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/433
18. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p438） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438
19. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p441） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/441
20. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（表）（PDF p2032） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032
21. Shuttle Flight Operations Manual Vol. 12 Crew Systems 3.15 Personal Hygiene Provisions（PDF p359） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=359
22. Orbit Operations Checklist Rev M PCN-10 Cycle Ergometer Ops（PDF p87） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=87
23. In-Flight Maintenance Checklist Rev F PCN-13 1-6 Vol E Removal (MD76C)（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=50
24. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-22 ONBOARD MEDICAL KIT（PDF p1758） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1758
25. STS-122 Mission Report Orbiter Anomalies（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=22
26. Shuttle Flight Operations Manual Vol. 12 Crew Systems 3.5 Emergency Egress Provisions（PDF p123） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=123

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 10件、機能行 52件とのトレース、検証の根拠） |
| Rev. A | 2026-10-06 | 検証の根拠の文の行ずれを直した（REQ-CREW-02・03・06・09・10）。検証方法・状態・判定は変更なし、NASA-STD-3001 による評価との食い違い 2件の要求を注記（判定は据え置き）、人間系の基準の照合表 SSD-HSI-SYS-001 への参照を注記（Rev. AY） |
| Rev. B | 2026-10-09 | 医療の構造と処置定義書 SSD-MED-ORB-001 への参照を注記（Rev. BP） |
