# 姿勢制御系（RCS）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-RCS-001 |
| 表題 | 姿勢制御系（RCS）要求書（L2） |
| 版・日付 | Rev. A／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

RCSに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、RCSの機能説明書（SSD-FD-RCS-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-13 | 打上げ前の計画と飛行中の延長の決定のときに、2日の延長日（着陸地の天候に1日、系統のウェーブオフに1日）の消耗品を確保すること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |

## 4. RCS要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-RCS-01 | 前部・左・右の各 RCS は2基のヘリウムタンクで燃料・酸化剤タンクを別々に加圧し、並列の隔離弁と2組の調圧器で冗長な加圧経路を持つこと。 | 一次 242〜248 psig・二次 253〜259 psig | 2基のヘリウムタンクは、それぞれ燃料タンクと酸化剤タンクに個別にヘリウムを送り、推進薬タンクのアレージ圧を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725）ヘリウム隔離弁は2個ずつ並列で、前部はパネルO8のFWD RCS He PRESS A・B、後部はパネルO7のAFT LEFT・AFT RIGHT RCS He PRESS A・Bのスイッチ（OPEN・GPC・CLOSE）で操作し、各スイッチが燃料側と酸化剤側の2個の弁を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725）調圧器組立は2組が並列で、各組に一次・二次の2段が直列にあり、一次段は242〜248 psig、二次段は253〜259 psigに調圧し、一次段が開故障すると二次段が調圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） | REQ-SYS-10 | F-RCS-HEP-01・F-RCS-HEP-02・F-RCS-HEP-04・F-RCS-HEP-05・F-RCS-HEP-07・F-RCS-HEP-08・F-RCS-HEP-09 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-RCS-02 | 表面張力式の推進薬捕捉装置で無重量下でも推進薬を噴射器へ送り、後部 RCS はアボート・突入でも正しく供給できること。 | 後部は突入用コレクタ・サンプ・ガストラップ付き | 各タンクはヘリウムで加圧されて推進薬を内蔵の表面張力式推進薬捕捉装置へ押し出し、前部RCSのタンクは主に低重力用に、後部RCSのタンクは高重力・低重力の両方で働くよう設計されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720）後部RCSのタンクには、アボートと突入の段階で正しく働くよう、突入用コレクタ、サンプ、ガストラップが組み込まれている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720） | REQ-SYS-15 | F-RCS-PRP-01・F-RCS-PRP-02・F-RCS-PRP-03・F-RCS-PRP-04・F-RCS-PRP-07・F-RCS-PRP-09・F-RCS-PRP-10 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-RCS-03 | 推進薬の量を PVT 法で計算し、燃料と酸化剤の量の差が 9.5% を超えたら警報を出すこと。 | 量の差 9.5% | 推進薬量はGPCが圧力・容積・温度（PVT）法で6基のタンクの使用可能量として計算し、対になるタンクの量の差があらかじめ定めた許容値を超えるかどうかで漏れを検知する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721）燃料と酸化剤の量の差が9.5%を超えると該当するRCSの赤色警報灯が点灯してBACKUP C/W ALARMが作動し、PASSでは同じモジュールの後続の漏れも検知できるよう9.5%のバイアスを加える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） | REQ-SYS-14 | F-RCS-PRP-11・F-RCS-PRP-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-RCS-04 | 主噴射器38基（各 870 lb）とバーニア噴射器6基（各 24 lb）を持ち、複数の主噴射器で冗長な姿勢制御・並進を行えること。 | 主 38・バーニア 6 | RCSの噴射器は計44基（主噴射器38基・バーニア噴射器6基）で、前部に主噴射器14基と横向きのバーニア2基、後部の各ポッドに主噴射器12基とバーニア2基があり、後部のバーニアは一方の組が横向き、他方の組が下向きである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718）主噴射器の真空推力は各870 lb、バーニア噴射器は各24 lbで、バーニアは軌道上の精密な姿勢制御にだけ使われ、狭い姿勢不感帯と推進薬の節約に用いる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） | REQ-SYS-10 | F-RCS-JET-01・F-RCS-JET-02・F-RCS-JET-03・F-RCS-JET-04・F-RCS-JET-05・F-RCS-JET-06・F-RCS-JET-07・F-RCS-JET-10 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-RCS-05 | 主噴射器の連続噴射を 150 秒、バーニアを 275 秒以内とし、燃焼不安定の保護で噴射器の焼損を防ぐこと。 | 主 150 秒・バーニア 275 秒 | 38基の主噴射器には燃焼不安定の保護があり、弁の電源線を燃焼室の外壁に巻き付けて、燃焼不安定による焼損で電線が切れると弁が閉じ、その噴射器を以後使えなくする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）運用飛行規則A6-153は主噴射器の連続噴射の運用限界を150秒、バーニアを275秒とし、バーニアには1時間あたり1000回以下の噴射指令という制約もある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1213） | REQ-SYS-10 | F-RCS-JET-08・F-RCS-JET-09・F-RCS-JET-11・F-RCS-JET-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-RCS-06 | RJD は GPC の噴射指令を弁の駆動電圧に変え、噴射したことを燃焼室圧の離散信号で冗長管理へ返すこと。 | Pc 離散 36 psi で ON・26 psi で OFF | RJDは、GPCの噴射指令を推進薬の二元弁を開くのに必要な電圧に変換し、燃焼過程を開始させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）RJDは燃焼室圧の離散信号を生成し、実際に噴射したことの表示として冗長管理へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）Pc離散信号は、燃焼室圧が36 psiに達するとONになり、26 psiを下回るまでONを保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） | REQ-SYS-10 | F-RCS-RJD-01・F-RCS-RJD-02・F-RCS-RJD-03・F-RCS-RJD-04・F-RCS-RJD-06・F-RCS-RJD-08・F-RCS-RJD-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | T（試験） |
| REQ-RCS-07 | ヒータで推進薬と噴射器を安全な温度に保ち、後部 RCS のタンクは突入時の燃料・酸化剤の爆発的反応を避ける温度以上に保つこと。 | 噴射器温度 ≧ 50（55）°F、後部タンク ≧ 68（70）°F | 前部RCSモジュールとOMS/RCSポッドには、推進薬を安全な温度に保ち、各主・バーニア噴射器の噴射器を安全な作動温度に保つ電気ヒータがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）主噴射器のヒータは、燃料・酸化剤の噴射器温度がともに50（55）°F未満へ下がると喪失とし、低温では噴射器の弁座が収縮して漏れるおそれがある（A6-9）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1141）後部RCSのタンク温度が68（70）°F未満になると、突入時のZOT（燃料・酸化剤の爆発的反応）を避けるため、非干渉の範囲で姿勢を変えて推進薬を温める（A6-258）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1244） | REQ-SYS-10 | F-RCS-HTR-01・F-RCS-HTR-02・F-RCS-HTR-03・F-RCS-HTR-05・F-RCS-HTR-06・F-RCS-HTR-07・F-RCS-HTR-10・F-RCS-HTR-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-RCS-08 | 冗長管理ソフトウェアで噴射器の fail-off・fail-on・fail-leak を3周期で検知して通報し、故障した噴射器を自動で選択解除すること。 | 検知 3周期・選択解除の上限 2（ポッドごと） | RMが検知する故障はfail-off・fail-on・fail-leakで、通報はマスタアラーム、パネルF7の黄色のRCS JETと赤色のBACKUP C/W ALARMの点灯、故障メッセージから成るクラス2の警報である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728）fail-offは、CMD BがあるのにPc離散信号がない状態が3周期続くと検知し、故障フラグを立てて通報し、ポッドの限度に達していなければその噴射器を選択解除する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728）SPEC 23のPRI JET FAIL LIM（I-load値2、変更可）はRMがポッドごとに自動で選択解除する主噴射器の数の上限で、ポッドの計数が限度に達すると以後の故障は通報するだけで選択解除しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731） | REQ-SYS-10 | F-RCS-RM-01・F-RCS-RM-02・F-RCS-RM-03・F-RCS-RM-04・F-RCS-RM-05・F-RCS-RM-06・F-RCS-RM-07・F-RCS-RM-08・IF-RCS-13 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-RCS-09 | 後部 RCS の推進薬は軌道離脱の準備・OMS 故障時の姿勢制御・軌道離脱の延期などのレッドラインを残し、突入に必要な量を保つこと。 | 後部 RCS の軌道離脱レッドライン | 後部RCSの軌道離脱レッドライン（A6-305）は、軌道離脱準備、OMSエンジン故障時の姿勢制御、軌道離脱の延期などの推進薬を確保し、突入（EI〜マッハ1）には重心位置に応じて1,175か1,375 lbを予約する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1261）OMSの推進薬はタンクの供給の制約で突入中のRCSに使えないため、RCSの突入レッドラインを守るためにOMS-RCS連結を使い、急角度の軌道離脱の保護より優先する（A6-354）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1278） | REQ-SYS-13・REQ-SYS-15 | F-RCS-OPS-04・F-RCS-OPS-10・F-RCS-OPS-11 | PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-RCS-10 | 後部 RCS のヘリウム・推進薬タンクの漏れなどに対し、A6-1001 の基準で次の PLS を判断し、漏れのあるマニホールドを隔離できること。 | 後部タンクの漏れ1件で次の PLS | A6-1001のGo/No-Goでは、後部RCSのHeか推進薬タンクの漏れ1件で次のPLSに入り、同じ側の後部主マニホールド2つの喪失でも次のPLSとする（いずれも突入の制御が1故障で失われうるため）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285）A6-60は、マニホールドを通常は開とし、漏れの切り分け、RMが示すON故障・漏れの噴射器の隔離、電源断に伴う系統の保護、指令経路やRJDの回復不能な喪失の場合にだけ閉じると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1193） | REQ-SYS-14 | F-RCS-OPS-05・F-RCS-OPS-06・F-RCS-OPS-07・F-RCS-OPS-08・F-RCS-OPS-09・F-RCS-OPS-12 | PH-3（軌道）・PH-6（再突入） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

RCSの機能説明書 8 件の機能行 91 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 60 件が要求から参照され、31 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-RCS-001 | F-RCS-01 | RCSは、前部・左・右の3つのモジュールに分かれて配置されている。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-RCS-001 | F-RCS-02 | 噴射器は計44基で、主噴射器38基（各870 lb）とバーニア噴射器6基（各24 lb）から成る。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-RCS-001 | F-RCS-03 | バーニア噴射器は、軌道上の精密な姿勢制御にのみ使用される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-RCS-001 | F-RCS-04 | 前部RCSは主噴射器14基とバーニア2基を、後部の各モジュールは主噴射器12基とバーニア2基を持つ。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-RCS-001 | F-RCS-05 | 酸化剤は四酸化二窒素、燃料はモノメチルヒドラジンで、いずれも常温で貯蔵でき接触で着火するハイパーゴリック推進薬である。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-RCS-001 | F-RCS-06 | OMS-2噴射後は、残留速度の打ち消し、姿勢保持、軌道上運用のための小さな並進に使用される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-RCS-001 | F-RCS-07 | OMSエンジンが故障した場合は、OMS－後部RCS連結でOMS推進薬を後部RCSへ送り、後部RCSの+X噴射器で予定の噴射を完了できる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-01 | 各RCS（前部・左・右）は、ヘリウムタンク2基、ヘリウム隔離弁4個、調圧器4個、逆止弁2組、逃し弁2個と、充填・排出用の接続口を持つ。 | REQ-RCS-01 | — |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-02 | 2基のヘリウムタンクは、それぞれ燃料タンクと酸化剤タンクに個別にヘリウムを送り、推進薬タンクのアレージ圧を与える。 | REQ-RCS-01 | — |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-03 | ヘリウムタンクが故障した場合に公称のアレージ圧のままで最大のΔVが得られる推進薬量を最大ブローダウンといい、前部RCSで22%、後部RCSで24%である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-01）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-04 | ヘリウム隔離弁は2個ずつ並列で、前部はパネルO8のFWD RCS He PRESS A・B、後部はパネルO7のAFT LEFT・AFT RIGHT RCS He PRESS A・Bのスイッチ（OPEN・GPC・CLOSE）で操作し、各スイッチが燃料側と酸化剤側の2個の弁を制御する。 | REQ-RCS-01 | — |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-05 | ヘリウム隔離弁はソレノイド弁で、電気負荷制御組立を通した瞬時の通電で開いて磁気ラッチされ、ラッチ周りのソレノイドへの通電でばねとヘリウム圧により閉じる。 | REQ-RCS-01 | — |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-06 | 計量シーケンスは、推進薬タンクのアレージ圧が300 psiaを超えると、軌道上で高圧ヘリウム隔離弁を自動的に閉じる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-01）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-07 | 調圧器組立は2組が並列で、各組に一次・二次の2段が直列にあり、一次段は242〜248 psig、二次段は253〜259 psigに調圧し、一次段が開故障すると二次段が調圧する。 | REQ-RCS-01 | — |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-08 | 逆止弁組立は4個のポペットを直並列に配し、直列の配置で推進薬蒸気の逆流を抑えて上流のヘリウム漏れ時にもタンクの圧力を保ち、並列の配置で1個の閉故障時にも加圧を確保する。 | REQ-RCS-01 | — |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-09 | 逃し弁組立はバースト膜・フィルタ・逃し弁から成り、膜は324〜340 psigで破れ、逃し弁は最小315 psigで開いて310 psigで再着座し、調圧器の全開故障時のヘリウム流量を処理できる。 | REQ-RCS-01 | — |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-10 | ヘリウムの供給圧は、パネルO3のロータリスイッチをRCS He X10にしてRCS/OMS/PRESSのOXID・FUEL計器で監視する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-01）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-11 | 運用飛行規則A6-1は、RCSのヘリウムタンクを圧力400（456）psia未満か、加圧経路がすべて閉じた場合に喪失とし、400 psiaは4噴射器の流量で推進薬タンク圧が公称を下回る値である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-01）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HEP-001 | F-RCS-HEP-12 | 運用飛行規則A6-58は、冗長な加圧経路が残っている限り、調圧器の経路を切り分けるためにRCSをブローダウンで運転しないと定める。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-01）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-01 | 前部RCSモジュールとOMS/RCSポッドには、推進薬を安全な温度に保ち、各主・バーニア噴射器の噴射器を安全な作動温度に保つ電気ヒータがある。 | REQ-RCS-07 | — |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-02 | 主噴射器のヒータは各20 W（後ろ向きの4基は30 W）、バーニア噴射器のヒータは各10 Wである。 | REQ-RCS-07 | — |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-03 | 前部RCSには輻射パネル上の6か所にヒータがあり、各OMS/RCSポッドは9つのヒータゾーンに分かれ、各ゾーンをA・Bのヒータ系が並列に制御する。 | REQ-RCS-07 | — |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-04 | 前部RCSのパネルヒータはパネルA14のFWD RCSスイッチで操作し、A AUTOかB AUTOでは左右のパネルのサーモスタットが約55°FでON、約75°FでOFFにする。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-05 | 後部RCSのヒータはパネルA14のLEFT POD・RIGHT PODのA AUTO・B AUTOスイッチで操作し、サーモスタットが各ポッドの9つのゾーンを概ね55〜75°Fに保つ。 | REQ-RCS-07 | — |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-06 | 噴射器のヒータはパネルA14のFWD・AFT RCS JET 1〜5スイッチ（番号はマニホールド）で操作し、AUTOでは各噴射器のサーモスタットが、主噴射器では約66〜76°FでON・約94〜109°FでOFF、バーニアでは約140〜150°FでON・約184〜194°FでOFFにする。 | REQ-RCS-07 | — |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-07 | 主噴射器のヒータは上昇中はOFF（発射場の気温が50°F未満の場合を除く）で、ほかの飛行段階ではONとし、バーニアのヒータは打上げ前にONにして突入ではOFFにする（A6-251C）。 | REQ-RCS-07 | — |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-08 | ポッドのヒータは各ヒータパッチにA・B両方の回路が入っており、両系を同時に使うとパッチが過熱して剥がれるため片方の系だけを使い、上昇中（OPS 1）はすべてOFFとする（A6-254）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-09 | 前部RCSモジュールのヒータは、SMのGPCが動いていないときはOFFとし、故障でONのままになったヒータがSMで知らされずにマニホールドの配管を過熱させるのを防ぐ（A6-253）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-10 | 主噴射器のヒータは、燃料・酸化剤の噴射器温度がともに50（55）°F未満へ下がると喪失とし、低温では噴射器の弁座が収縮して漏れるおそれがある（A6-9）。 | REQ-RCS-07 | — |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-11 | 主噴射器のヒータがOFFに故障した場合は、手動の噴射、優先度の変更、姿勢の変更で噴射器温度を42（47）°F超に保ち、噴射器温度が162（157）°Fを超えている間は原則として噴射しない（A6-257）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-HTR-001 | F-RCS-HTR-12 | 後部RCSのタンク温度が68（70）°F未満になると、突入時のZOT（燃料・酸化剤の爆発的反応）を避けるため、非干渉の範囲で姿勢を変えて推進薬を温める（A6-258）。 | REQ-RCS-07 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-01 | RCSの噴射器は計44基（主噴射器38基・バーニア噴射器6基）で、前部に主噴射器14基と横向きのバーニア2基、後部の各ポッドに主噴射器12基とバーニア2基があり、後部のバーニアは一方の組が横向き、他方の組が下向きである。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-02 | 主噴射器の真空推力は各870 lb、バーニア噴射器は各24 lbで、バーニアは軌道上の精密な姿勢制御にだけ使われ、狭い姿勢不感帯と推進薬の節約に用いる。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-03 | 各噴射器は推進薬を供給するマニホールドと噴流の向きで識別され、記号の1番目がポッド（F・L・R）、2番目がマニホールド番号（1〜5）、3番目が噴流の向き（A・F・L・R・U・D）を表す。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-04 | 各噴射器は燃料・酸化剤それぞれ1個のソレノイド式パイロット・ポペット弁を持ち、噴射指令で通電されると推進薬の液圧で主弁ポペットが開き、指令が終わるとばねと圧力で閉じる。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-05 | 主噴射器の噴射器板は燃料・酸化剤1対の孔（ダブレット）84組をシャワーヘッド状に配し、外周の追加の燃料孔で燃焼室壁を冷却し、バーニアは1対の孔だけを持つ。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-06 | 燃焼室はコロンビウム製で二ケイ化コロンビウムの被覆を持ち、ノズルは輻射冷却で、燃焼室とノズルの周りの断熱材が2,000〜2,400°Fの熱を機体構造へ放射させない。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-07 | 各噴射器の電気接続箱には、ヒータ、燃焼室圧力（Pc）トランスデューサ、漏れ検知用の燃料・酸化剤の噴射器温度トランスデューサ、推進薬弁の配線が接続される。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-08 | 38基の主噴射器には燃焼不安定の保護があり、弁の電源線を燃焼室の外壁に巻き付けて、燃焼不安定による焼損で電線が切れると弁が閉じ、その噴射器を以後使えなくする。 | REQ-RCS-05 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-09 | 主噴射器の定常噴射は1〜150秒が最大で、1ミッションの緊急時の上限は後部（+X）で800秒、前部（-X）で300秒であり、バーニアは2時間あたり275秒までの連続噴射が許される。 | REQ-RCS-05 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-10 | 下向きのバーニア1基を失うと制御能力が足りずバーニアモード全体を失うが、横向きのバーニア1基の喪失では、一部のRMS荷重下の運用を除いて制御を保てる。 | REQ-RCS-04 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-11 | 運用飛行規則A6-8は、GPCの指令がないのに噴射するもの（fail-on）、指令があっても噴射しないもの（fail-off）、噴射器弁からの漏れ（主噴射器で酸化剤の噴射器温度30°F未満・燃料20°F未満、バーニアで130°F未満）を噴射器の喪失と定める。 | REQ-RCS-05 | — |
| SSD-FD-RCS-JET-001 | F-RCS-JET-12 | 運用飛行規則A6-153は主噴射器の連続噴射の運用限界を150秒、バーニアを275秒とし、バーニアには1時間あたり1000回以下の噴射指令という制約もある。 | REQ-RCS-05 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-01 | 上昇中のRCSは外部タンクと結合した惰行中の回転制御とET分離時の-Z並進に使われ、ET分離の-Z並進は自動で行う唯一のRCSの並進である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-09・REQ-RCS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-02 | 異常時には、SSME 2基を失った場合のOMS-RCS連結（自動）と単発エンジンのロール制御、OMS噴射中の姿勢保持の補助（RCSラップアラウンド）、OMSの早期停止時の軌道調整、アボート時の推進薬投棄の補助にRCSを使う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-09・REQ-RCS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-03 | OMS-2噴射の後は残留速度の打ち消し、姿勢保持、軌道上の小さな並進に使われ、軌道上の姿勢保持には通常バーニア噴射器を選ぶ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-09・REQ-RCS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-04 | 前部RCSに残った推進薬は、重心の調整が必要なら突入インタフェースの前に前部のヨー噴射器で燃やして投棄できる。 | REQ-RCS-09 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-05 | 系統を閉じるときはマニホールドからヘリウムタンクへ向かって、開くときはヘリウムタンクからマニホールドへ向かって操作する（SCOMの経験則）。 | REQ-RCS-10 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-06 | 運用飛行規則A6-52は、前部RCSのHe・推進薬タンクの漏れ・故障と、後部RCSの1〜2基のHe・推進薬タンクの漏れ・故障について、打上げ〜OMS-1、OMS-1〜OMS-2、OMS-2〜軌道離脱の段階ごとの処置を定める。 | REQ-RCS-10 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-07 | A6-60は、マニホールドを通常は開とし、漏れの切り分け、RMが示すON故障・漏れの噴射器の隔離、電源断に伴う系統の保護、指令経路やRJDの回復不能な喪失の場合にだけ閉じると定める。 | REQ-RCS-10 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-08 | A6-61は、燃料・酸化剤の両方のマニホールド圧が130 psia超なら隔離弁で直接再加圧し、両方が130 psia未満なら弁のバウンスとZOTを避けるため段階的な再加圧の手順を使うと定める。 | REQ-RCS-10 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-09 | A6-156は、RMの検知機能（fail-off・leak・on・全体）を失った場合の処置を噴射器の種類とDAPごとに定め、軌道上の主噴射器は1方向・1ポッドあたり1基で姿勢を保てるが、時間・安全上重要な事象には2基が要るとする。 | REQ-RCS-10 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-10 | 後部RCSの軌道離脱レッドライン（A6-305）は、軌道離脱準備、OMSエンジン故障時の姿勢制御、軌道離脱の延期などの推進薬を確保し、突入（EI〜マッハ1）には重心位置に応じて1,175か1,375 lbを予約する。 | REQ-RCS-09 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-11 | OMSの推進薬はタンクの供給の制約で突入中のRCSに使えないため、RCSの突入レッドラインを守るためにOMS-RCS連結を使い、急角度の軌道離脱の保護より優先する（A6-354）。 | REQ-RCS-09 | — |
| SSD-FD-RCS-OPS-001 | F-RCS-OPS-12 | A6-1001のGo/No-Goでは、後部RCSのHeか推進薬タンクの漏れ1件で次のPLSに入り、同じ側の後部主マニホールド2つの喪失でも次のPLSとする（いずれも突入の制御が1故障で失われうるため）。 | REQ-RCS-10 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-01 | 各RCSモジュールには燃料タンクと酸化剤タンクが1基ずつあり、前部と各ポッドのタンクの公称満載量は酸化剤1,464 lb、燃料923 lbである。 | REQ-RCS-02 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-02 | 各タンクはヘリウムで加圧されて推進薬を内蔵の表面張力式推進薬捕捉装置へ押し出し、前部RCSのタンクは主に低重力用に、後部RCSのタンクは高重力・低重力の両方で働くよう設計されている。 | REQ-RCS-02 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-03 | 後部RCSのタンクには、アボートと突入の段階で正しく働くよう、突入用コレクタ、サンプ、ガストラップが組み込まれている。 | REQ-RCS-02 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-04 | タンク隔離弁は推進薬タンクとマニホールド隔離弁の間にある交流電動弁で、前部RCSと後部の1/2マニホールド系には1対、後部の3/4/5マニホールド系にはA・Bの2対が並列に入る。 | REQ-RCS-02 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-05 | タンク隔離弁のスイッチをOPENにすると電動機制御組立が交流電動弁のアクチュエータに給電し、弁が指令位置に達すると電動機制御組立の論理が給電を断つ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-02・REQ-RCS-03）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-06 | 後部のタンク隔離弁は、スイッチがGPC位置のとき、OPS 1・3・6で自動クロスフィードのためにGPCから開閉を指令できる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-02・REQ-RCS-03）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-07 | マニホールド隔離弁のうち1〜4番は交流電動弁で、MANIFOLD ISOLATIONスイッチが燃料・酸化剤の1対ずつを操作し、GPC位置はOPS 2・8でだけ使える。 | REQ-RCS-02 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-08 | 5番マニホールドの弁はバーニア噴射器だけに推進薬を送るソレノイド式のラッチ弁で、そのスイッチはGPC位置へのばね戻りである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-02・REQ-RCS-03）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-09 | 一方の後部ポッドの推進薬系を噴射器から切り離す必要がある場合は、交流電動の後部RCSクロスフィード弁を開き、他方のポッドの推進薬で左右の噴射器へ供給できる。 | REQ-RCS-02 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-10 | 後部RCSの噴射器はストレートフィード、クロスフィード（一方のRCSから後部の全噴射器へ）、連結（OMSの推進薬から後部の全噴射器へ）のいずれかで推進薬を受け、前部RCSは後部RCSとのクロスフィードもOMSとの連結もできない。 | REQ-RCS-02 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-11 | 推進薬量はGPCが圧力・容積・温度（PVT）法で6基のタンクの使用可能量として計算し、対になるタンクの量の差があらかじめ定めた許容値を超えるかどうかで漏れを検知する。 | REQ-RCS-03 | — |
| SSD-FD-RCS-PRP-001 | F-RCS-PRP-12 | 燃料と酸化剤の量の差が9.5%を超えると該当するRCSの赤色警報灯が点灯してBACKUP C/W ALARMが作動し、PASSでは同じモジュールの後続の漏れも検知できるよう9.5%のバイアスを加える。 | REQ-RCS-03 | — |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-01 | RJDは、GPCの噴射指令を推進薬の二元弁を開くのに必要な電圧に変換し、燃焼過程を開始させる。 | REQ-RCS-06 | — |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-02 | RJDは燃焼室圧の離散信号を生成し、実際に噴射したことの表示として冗長管理へ送る。 | REQ-RCS-06 | — |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-03 | Pc離散信号は、燃焼室圧が36 psiに達するとONになり、26 psiを下回るまでONを保つ。 | REQ-RCS-06 | — |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-04 | 上昇・突入時は、DAPの噴射器選択論理が38個の噴射器のON・OFF指令をRCS指令サブシステム運用プログラムへ出し、これが各RJDへの二重の噴射指令AとBを生成する。 | REQ-RCS-06 | — |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-05 | MDMの故障処置の表には、前方MDM（FF1〜FF4）と後方MDM（FA1〜FA4）に対応する前部RJD（RJDF 1A・1B・2A・2B）と後部RJD（RJDA 1A・1B・2A・2B）のDRIVERスイッチ（パネルO14〜O16）が挙げられている。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-06）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-06 | 主噴射器のRJDにはLOGICとDRIVERの電源スイッチが計16個あり、軌道上のRCS噴射試験ではこれらをONにして試験を行う。 | REQ-RCS-06 | — |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-07 | バーニアを失った場合の手順（LOSS OF VERNIERS）では、バーニアのRJD（L5・F5・R5 DRIVER）をOFFにする。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-06）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-08 | 主噴射器のRJDは、乗員の起床中（近傍運用・ペイロード放出・ランデブを含む）はすべてONとし、乗員の就寝中と貨物室外のEVA中は電源を切る（A6-151）。 | REQ-RCS-06 | — |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-09 | RJDの故障率は試験で100億時間に1回とされ、就寝中に電源を切るのは就寝中の乗員の対応が遅れるためである（A6-151の根拠）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-06）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-10 | RJDのロジック電源回路の故障をテレメトリで検知した場合は、電源を切ると2つのマニホールドの噴射器を恒久的に失うため、就寝中も電源を入れたままにする（A6-151C）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-06）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-11 | fail-onはRJDの弁電源出力が高に故障するか燃料・酸化剤の両弁が開故障すると起こり、fail-offはRJDの出力離散信号が低に故障するか弁の一方が閉故障すると起こる（A6-8）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-06）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RJD-001 | F-RCS-RJD-12 | 1つのRJDへの電源（冗長な2系統とも）かRJDの機能を回復できないほど失うと、そのマニホールドの噴射器をすべて失うため、マニホールドを閉じたままにする（A6-60E）。 | REQ-RCS-06 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-01 | RCSの冗長管理（RM）ソフトウェアは、噴射器の故障の検知と通報、噴射器の可用性、SPEC 23 RCS、SPEC 51 BFS OVERRIDE、マニホールド状態の処理から成る。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-02 | RMが検知する故障はfail-off・fail-on・fail-leakで、通報はマスタアラーム、パネルF7の黄色のRCS JETと赤色のBACKUP C/W ALARMの点灯、故障メッセージから成るクラス2の警報である。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-03 | RMが使う噴射器のパラメータは、Pc離散信号、CMD B、ドライバ出力離散信号、酸化剤・燃料の噴射器温度である。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-04 | fail-offは、CMD BがあるのにPc離散信号がない状態が3周期続くと検知し、故障フラグを立てて通報し、ポッドの限度に達していなければその噴射器を選択解除する。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-05 | fail-onは、CMD Bが出ていないのにドライバ出力離散信号がある状態が3周期続くと検知し、OPS 2（8）でAUT MANF CLが有効なら該当するマニホールドの弁に閉指令を送る。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-06 | fail-leakは、酸化剤か燃料の噴射器温度がRMの限界を3周期続けて下回ると検知し、ポッドの限度に達していなければその噴射器を選択解除し、バーニアの故障はOPS 2と8でだけ通報する。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-07 | 噴射器可用表は噴射器ごとに1ビットを持ち、ビットがONならDAPがその噴射器に噴射を指令でき、RMが使えないと判定した噴射器には噴射を指令しない。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-08 | SPEC 23のPRI JET FAIL LIM（I-load値2、変更可）はRMがポッドごとに自動で選択解除する主噴射器の数の上限で、ポッドの計数が限度に達すると以後の故障は通報するだけで選択解除しない。 | REQ-RCS-08 | — |
| SSD-FD-RCS-RM-001 | F-RCS-RM-09 | RMはマニホールド弁の状態を独自に評価し、状態が閉になると（手動で閉じた、通信障害、乗員の入力、一部のジレンマ）そのマニホールドの噴射器を可用表から外す。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RM-001 | F-RCS-RM-10 | マニホールドのRMは4つのマイクロスイッチ離散信号（OX OP・OX CL・FU OP・FU CL）から、ジレンマ（RCS RM DLMA）と電源故障（RCS PWR FAIL）を検知する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RM-001 | F-RCS-RM-11 | RMのフラグ・状態・計数はOPSの移行をまたいで引き継がれるが、BFSを結合するとすべて消去されて初期化される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RM-001 | F-RCS-RM-12 | BFSにはSPEC 23がなく、BFSは結合されたときだけfail-offとfail-onを通報し、fail-leakは通報しない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-RCS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-RCS-RM-001 | IF-RCS-13 | （IF の行。内容は所有文書） | REQ-RCS-08 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 31 件のうち、31 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-RCS-001 | 7 | 0 | 7 | 0 |
| SSD-FD-RCS-HEP-001 | 12 | 7 | 5 | 0 |
| SSD-FD-RCS-HTR-001 | 12 | 8 | 4 | 0 |
| SSD-FD-RCS-JET-001 | 12 | 12 | 0 | 0 |
| SSD-FD-RCS-OPS-001 | 12 | 9 | 3 | 0 |
| SSD-FD-RCS-PRP-001 | 12 | 9 | 3 | 0 |
| SSD-FD-RCS-RJD-001 | 12 | 7 | 5 | 0 |
| SSD-FD-RCS-RM-001 | 12 | 8 | 4 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（10件のうち根拠あり 10件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-RCS-01 | D（実証） | 根拠あり | RCS REGULATOR RECONFIG（PDF p256）：He PRESS A・Bスイッチを操作して、使うヘリウムの調圧経路を切り替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256） |
| REQ-RCS-02 | D（実証） | 根拠あり | Reaction Control System（PDF p40）：前部・左・右のRCSの酸化剤・燃料の目標搭載量と、PASS・BFSのヘリウム初期重量（WHI）を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=40） |
| REQ-RCS-03 | D（実証） | 根拠あり | Flight Day 10（PDF p20）：オービタによるISSのリブーストを左OMSの推進薬系と連結した状態で行ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| REQ-RCS-04 | D（実証） | 根拠あり | Reaction Control System（PDF p37）：バーニアR5RのPcが63 psiaまでしか上がらず、ヒータのON故障による高温の推進薬が原因とされ、RMのfail-offの限界（26 psia）には達しなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| REQ-RCS-05 | A（解析） | 根拠あり | C.27節（PDF p102）：主噴射器を失う故障を、RTLS・TALアボートでのOMS・RCSの推進薬投棄の速度の低下からIOAは臨界度1としたため、後部RCSのハードウェアの指摘6件が残ったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=102） |
| REQ-RCS-06 | T（試験） | 根拠あり | LOSS OF VERNIERS（PDF p254）：主噴射器のRJDのLOGIC・DRIVER（16個）をONにし、バーニアのRJD（L5・F5・R5 DRIVER）をOFFにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=254） |
| REQ-RCS-07 | D（実証） | 根拠あり | Reaction Control Subsystem（PDF p11）：左RCSのドレンパネルのA系ヒータが設定点で入らず、B系に切り替えたと記す（Flight Problem STS-35-04）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| REQ-RCS-08 | D（実証） | 根拠あり | Reaction Control System（PDF p41）：SRB分離時の窓の保護のためF1U・F2U・F3Uを2.08秒噴射し、前部RCSのTyvekカバーの放出時刻を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |
| REQ-RCS-09 | A（解析） | 根拠あり | Flight Day 10（PDF p19〜20）：RCSによるリブーストでΔV 5.4 ft/s、軌道を約1.5 nmi上げ、オービタによるリブーストは5年ぶりであったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| REQ-RCS-10 | A（解析） | 根拠あり | C.27節（PDF p99）：前部RCSの推進薬を投棄できないことの重大度について、IOAは突入に、NASA/RIはET分離にだけ重大とした相違を記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=99） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p725） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725
2. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p720） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720
3. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p721） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721
4. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p722） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722
5. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p718） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718
6. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p719） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-153 RCS JET MAXIMUM BURN TIME（PDF p1213） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1213
8. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p728） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728
9. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p727） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-9 RCS JET HEATER（PDF p1141） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1141
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-258 ARCS BULK PROPELLANT TEMPERATURE MANAGEMENT（PDF p1244） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1244
12. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p731） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-305 AFT RCS REDLINES（PDF p1261） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1261
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-354 RCS ENTRY REDLINE PROTECTION（PDF p1278） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1278
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-1001 OMS/RCS Go/No-Go Criteria（PDF p1285） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-60 RCS MANIFOLD CLOSURE CRITERIA（PDF p1193） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1193
17. Orbit Operations Checklist Rev M PCN-10 RCS REGULATOR RECONFIG（PDF p256） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256
18. NSTS-37452 STS-125 Mission Report（2010） Reaction Control System（PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=40
19. STS-122 Mission Report Flight Day 10（続き）（PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20
20. STS-114 Mission Report Reaction Control System（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37
21. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.27 Reaction Control System（続き）（PDF p102） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=102
22. Orbit Operations Checklist Rev M PCN-10 LOSS OF VERNIERS（PDF p254） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=254
23. STS-35 Mission Report Reaction Control Subsystem（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11
24. NSTS-37452 STS-125 Mission Report（2010） Reaction Control System（続き）（PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41
25. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.27 Reaction Control System（PDF p99） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=99

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 10件、機能行 91件とのトレース、検証の根拠） |
| Rev. A | 2026-10-07 | 上位の要求 REQ-SYS-13 の文を改めた（Rev. BG の要求の値の見直し）（Rev. BG） |
