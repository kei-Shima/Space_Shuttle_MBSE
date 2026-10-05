# 構造（STR）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-STR-001 |
| 表題 | 構造（STR）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図70 構造 機能構成 |

## 1. 目的

STRに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、STRの機能説明書（SSD-FD-STR-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-01 | システムは、オービタ、2本の SRB、推進薬を収める外部タンク、3基の SSME の4つの主要素で構成すること。 |
| REQ-SYS-03 | 直径 15 ft・長さ 60 ft のペイロードベイにペイロードを収めること。 |
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 |
| REQ-SYS-05 | 最大8人の乗員を運べること。 |
| REQ-SYS-07 | 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 |
| REQ-SYS-09 | 帰還時に約 1,100 n.mi. の横方向移動（クロスレンジ）ができること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |

## 4. 構造要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-STR-01 | オービタの構造を9つの主要区分に分け、大部分をアルミニウムで造って再使用の表面断熱材で守ること。 | 主要区分 9 | オービタの構造は9つの主要区分（前胴・翼・中胴・PLBD・後胴・前部RCS・垂直尾翼・OMS/RCSポッド・ボディフラップ）に分かれ、大部分は通常のアルミニウムで再使用の表面断熱材に守られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） | REQ-SYS-01・REQ-SYS-04 | F-STR-FWD-01・F-STR-FWD-03・F-STR-FWD-04 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-STR-02 | 前胴は与圧乗員室を囲み、前部 RCS モジュール・前脚・前部のオービタ/ET 結合金具を支えること。 | 前部 RCS 留め具 16本 | 前胴は上下の部分から成って与圧乗員室を囲み、前部RCSモジュール・ノーズキャップ・前脚格納部・前脚・前脚扉を支える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51）前部のオービタ/ET結合金具は、Xo=378隔壁と前脚格納部の後方の外板構造にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52）前部RCSモジュールは16本の留め具で前胴の機首部と前部隔壁に固定され、取付け・取外しができる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） | REQ-SYS-01 | F-STR-FWD-02・F-STR-FWD-05・F-STR-FWD-06・F-STR-FWD-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-STR-03 | 乗員室は溶接した気密の圧力容器とし、14.7±0.2 psia に保たれ、設計圧力 16 psia に耐えること。 | 14.7±0.2 psia・設計 16 psia・2,553 ft3 | 3層の乗員室は2219アルミ合金板を溶接した気密の圧力容器で、側面ハッチ・中甲板からエアロックへのハッチ・エアロックからペイロードベイへのハッチを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53）乗員室は14.7±0.2 psia・窒素80%・酸素20%に保たれ、設計圧力は16 psiaである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54）エアロックをペイロードベイに置いたときの乗員室の容積は2,553 ft3である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54） | REQ-SYS-05・REQ-SYS-07 | F-STR-CRM-01・F-STR-CRM-02・F-STR-CRM-03・F-STR-CRM-04・F-STR-CRM-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-STR-04 | 前方の窓は3枚の板ガラスで造り、内側の圧力ペインに与圧の冗長を持たせ、圧力ペインが故障したら客室圧を 10.2 psi に下げて次の PLS で帰還すること。 | 板ガラス 3枚・圧力ペイン 0.625 in | 前方の6枚の窓はそれぞれ3枚の板ガラスから成り、最も内側の板（0.625 in）は乗員室の圧力に耐える圧力ペインである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/56）圧力ペインか冗長ペインが故障したときは客室圧を10.2 psiに下げ、軌道上では次のPLSで帰還する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1659）窓系には与圧の冗長が必要で、熱ペインは与圧の冗長にならない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1659） | REQ-SYS-07・REQ-SYS-14 | F-STR-CRM-06・F-STR-CRM-07・F-STR-OPS-01・F-STR-OPS-02・F-STR-OPS-03・F-STR-OPS-04 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-STR-05 | 中胴は長さ 60 ft・幅 17 ft のペイロードベイを形作り、ペイロードの縦方向の荷重と主脚の横方向の荷重を受けること。 | 60 ft×17 ft×13 ft | 中胴は主にアルミニウムの構造で、長さ60 ft・幅17 ft・高さ13 ft、重量約13,502 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59）縦通材は主な曲げ部材であるとともに、ペイロードベイのペイロードからの縦方向の荷重を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60）翼の前方の側壁は主脚の内側の支えとなり、脚の横方向の荷重はすべて中胴が受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） | REQ-SYS-03 | F-STR-MID-01・F-STR-MID-02・F-STR-MID-03・F-STR-MID-04・F-STR-MID-05・F-STR-MID-06・F-STR-MID-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-STR-06 | 後胴の推力構造で3基の SSME を支え、後部のオービタ/ET 結合点と OMS/RCS ポッドの取付けを受け持つこと。 | SSME 3、ポッド ボルト 11本 | 内部の推力構造は3基のSSMEを支え、上部が上のSSMEを、下部が下の2基を支える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61）オービタ/ETの2つの後部結合点は、縦通材の金具で結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61）各OMS/RCSポッドはOMS・RCSの推進の構成品をすべて収め、11本のボルトで後胴に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62） | REQ-SYS-01 | F-STR-AFT-01・F-STR-AFT-02・F-STR-AFT-03・F-STR-AFT-04・F-STR-AFT-05・F-STR-AFT-06・F-STR-AFT-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-STR-07 | 翼・エレボン・ボディフラップ・垂直尾翼で大気中の飛行制御とトリムを行い、ボディフラップは突入中に SSME を熱から守ること。 | エレボン 33°上・18°下 | エレボンは大気中の飛行制御を行い、各翼で2つの区分に分かれ、各区分は3つのヒンジで支えられ、33°上・18°下まで動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58）ボディフラップは突入中に3基のSSMEを熱から守り、大気中の飛行でピッチのトリムを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62）垂直尾翼は構造のフィン・ラダー/スピードブレーキ・翼端・下部後縁から成り、ラダーは2つに割れてスピードブレーキになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63） | REQ-SYS-09 | F-STR-WNG-01・F-STR-WNG-02・F-STR-WNG-03・F-STR-WNG-04・F-STR-WNG-05・F-STR-WNG-06・F-STR-WNG-07・F-STR-WNG-08 | PH-2（上昇）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-STR-08 | オービタの姿勢で TPS の接着層の温度を −170°F より高く保ち、軌道デブリに弱い姿勢で過ごす時間を最小にすること。 | 接着層 > −170°F | オービタの姿勢は、TPSの接着層の温度を−170°Fより高く、突入時の最高温度未満に保つよう管理する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2101）軌道デブリに対しては、ペイロードベイを前に向ける姿勢などで過ごす時間を飛行前の計画と実時間の運用で最小にする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=681） | REQ-SYS-04 | F-STR-OPS-05・F-STR-OPS-06・F-STR-OPS-07 | PH-3（軌道）・PH-4（離脱準備） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

STRの機能説明書 7 件の機能行 51 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 43 件が要求から参照され、8 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-STR-001 | F-STR-01 | オービタ構造は、前部胴体、主翼、中部胴体、ペイロードベイドア、後部胴体、前部RCS、垂直尾翼、OMS/RCSポッド、ボディフラップの9つの主要部分に分かれ、大部分は通常のアルミニウム製で、再使用型表面断熱材で保護される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-001 | F-STR-02 | 前部胴体は与圧された乗員室を収め、前部RCSモジュール、ノーズキャップ、前脚格納部、前脚と前脚扉を支持する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-001 | F-STR-03 | 3層の乗員室は2219アルミニウム合金板を溶接した与圧容器で、ECLSS、アビオニクス、GN&C機器、IMU、表示・操作器、スタートラッカ、就寝・廃棄物処理・座席などの乗員設備を支持する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-001 | F-STR-04 | 乗員室は14.7±0.2 psiaに与圧され、ECLSSにより窒素80%・酸素20%の組成に保たれる。乗員室は16 psiaで設計されている。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-001 | F-STR-05 | 中部胴体は前部胴体・後部胴体・主翼と結合し、ペイロードベイドアとそのヒンジ、固定金具、前部主翼グラブ、各種の搭載機器を支持して、ペイロードベイを形成する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-001 | F-STR-06 | 後部胴体は、左右のOMS/RCSポッド、主翼後桁、中部胴体、オービタ／外部タンクの後部結合部、主エンジン、後部熱シールド、ボディフラップ、垂直尾翼、2つのT-0打上げアンビリカルパネルを支持し、これらと結合する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-001 | F-STR-07 | 後部胴体の内部推力構造は3基のSSMEとその低圧ターボポンプ・推進薬配管を支持する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-001 | F-STR-08 | ボディフラップは再突入時に3基のSSMEを熱的に遮蔽し、大気圏飛行中のピッチトリムを与える。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-STR-AFT-001 | F-STR-AFT-01 | 後胴は外殻・推力構造・内部の二次構造から成る。 | REQ-STR-06 | — |
| SSD-FD-STR-AFT-001 | F-STR-AFT-02 | 後胴は中胴の主縦通材への荷重経路、前部隔壁を越える主翼桁の連続、ボディフラップの支持を受け持つ。 | REQ-STR-06 | — |
| SSD-FD-STR-AFT-001 | F-STR-AFT-03 | 内部の推力構造は3基のSSMEを支え、上部が上のSSMEを、下部が下の2基を支える。 | REQ-STR-06 | — |
| SSD-FD-STR-AFT-001 | F-STR-AFT-04 | オービタ/ETの2つの後部結合点は、縦通材の金具で結合する。 | REQ-STR-06 | — |
| SSD-FD-STR-AFT-001 | F-STR-AFT-05 | 内部の推力構造は主に28本の拡散接合したチタンのトラス部材から成る（OV-105は鍛造品）。 | REQ-STR-06 | — |
| SSD-FD-STR-AFT-001 | F-STR-AFT-06 | 各OMS/RCSポッドはOMS・RCSの推進の構成品をすべて収め、11本のボルトで後胴に取り付けられる。 | REQ-STR-06 | — |
| SSD-FD-STR-AFT-001 | F-STR-AFT-07 | ポッドは162 dBの音響と−170〜+135°Fの温度に耐える。 | REQ-STR-06 | — |
| SSD-FD-STR-CRM-001 | F-STR-CRM-01 | 3層の乗員室は2219アルミ合金板を溶接した気密の圧力容器で、側面ハッチ・中甲板からエアロックへのハッチ・エアロックからペイロードベイへのハッチを持つ。 | REQ-STR-03 | — |
| SSD-FD-STR-CRM-001 | F-STR-CRM-02 | 圧力殻の約300の貫通部はプレートと金具で封じられる。 | REQ-STR-03 | — |
| SSD-FD-STR-CRM-001 | F-STR-CRM-03 | 乗員室は、両者の間の熱伝導を小さくするため、前胴の中に4つの取付点だけで支えられる。 | REQ-STR-03 | — |
| SSD-FD-STR-CRM-001 | F-STR-CRM-04 | 乗員室は14.7±0.2 psia・窒素80%・酸素20%に保たれ、設計圧力は16 psiaである。 | REQ-STR-03 | — |
| SSD-FD-STR-CRM-001 | F-STR-CRM-05 | エアロックをペイロードベイに置いたときの乗員室の容積は2,553 ft3である。 | REQ-STR-03 | — |
| SSD-FD-STR-CRM-001 | F-STR-CRM-06 | 前方の6枚の窓はそれぞれ3枚の板ガラスから成り、最も内側の板（0.625 in）は乗員室の圧力に耐える圧力ペインである。 | REQ-STR-04 | — |
| SSD-FD-STR-CRM-001 | F-STR-CRM-07 | 前方の窓の外側の板は前胴に、中央と内側の板は乗員室に取り付けられ、各窓に冗長なシールが使われる。 | REQ-STR-04 | — |
| SSD-FD-STR-FWD-001 | F-STR-FWD-01 | オービタの構造は9つの主要区分（前胴・翼・中胴・PLBD・後胴・前部RCS・垂直尾翼・OMS/RCSポッド・ボディフラップ）に分かれ、大部分は通常のアルミニウムで再使用の表面断熱材に守られる。 | REQ-STR-01 | — |
| SSD-FD-STR-FWD-001 | F-STR-FWD-02 | 前胴は上下の部分から成って与圧乗員室を囲み、前部RCSモジュール・ノーズキャップ・前脚格納部・前脚・前脚扉を支える。 | REQ-STR-02 | — |
| SSD-FD-STR-FWD-001 | F-STR-FWD-03 | 前胴は2024アルミ合金のスキン・ストリンガのパネル・フレーム・隔壁で造られ、主フレームの間隔は30〜36 inである。 | REQ-STR-01 | — |
| SSD-FD-STR-FWD-001 | F-STR-FWD-04 | ノーズキャップは強化炭素・炭素（RCC）の再使用TPSで、ノーズキャップと構造の境に熱障壁を持つ。 | REQ-STR-01 | — |
| SSD-FD-STR-FWD-001 | F-STR-FWD-05 | 前部のオービタ/ET結合金具は、Xo=378隔壁と前脚格納部の後方の外板構造にある。 | REQ-STR-02 | — |
| SSD-FD-STR-FWD-001 | F-STR-FWD-06 | 前部RCSモジュールは16本の留め具で前胴の機首部と前部隔壁に固定され、取付け・取外しができる。 | REQ-STR-02 | — |
| SSD-FD-STR-FWD-001 | F-STR-FWD-07 | 前胴は、Xo=582の柔軟な膜でペイロードベイと仕切られる。 | REQ-STR-02 | — |
| SSD-FD-STR-MID-001 | F-STR-MID-01 | 中胴は前胴・後胴・翼とつながり、ペイロードベイドア・ヒンジ・固定金具・前部翼グラブなどを支えてペイロードベイを形作る。 | REQ-STR-05 | — |
| SSD-FD-STR-MID-001 | F-STR-MID-02 | 中胴は主にアルミニウムの構造で、長さ60 ft・幅17 ft・高さ13 ft、重量約13,502 lbである。 | REQ-STR-05 | — |
| SSD-FD-STR-MID-001 | F-STR-MID-03 | 中胴は12の主フレーム組立で安定させる。 | REQ-STR-05 | — |
| SSD-FD-STR-MID-001 | F-STR-MID-04 | 縦通材は主な曲げ部材であるとともに、ペイロードベイのペイロードからの縦方向の荷重を受ける。 | REQ-STR-05 | — |
| SSD-FD-STR-MID-001 | F-STR-MID-05 | シルの縦通材は、マニピュレータアーム・Ku帯アンテナ・ペイロードベイドアの作動系の取付けの基盤となる。 | REQ-STR-05 | — |
| SSD-FD-STR-MID-001 | F-STR-MID-06 | 翼の前方の側壁は主脚の内側の支えとなり、脚の横方向の荷重はすべて中胴が受ける。 | REQ-STR-05 | — |
| SSD-FD-STR-MID-001 | F-STR-MID-07 | 飛行データの解析から、下部の中胴の縦通材に捩り帯を足し、降下時の熱勾配に対して正の安全余裕を確保した。 | REQ-STR-05 | — |
| SSD-FD-STR-OPS-001 | F-STR-OPS-01 | 圧力ペインか冗長ペインが故障したときは客室圧を10.2 psiに下げ、軌道上では次のPLSで帰還する。 | REQ-STR-04 | — |
| SSD-FD-STR-OPS-001 | F-STR-OPS-02 | 窓系には与圧の冗長が必要で、熱ペインは与圧の冗長にならない。 | REQ-STR-04 | — |
| SSD-FD-STR-OPS-001 | F-STR-OPS-03 | 熱ペインは破片が欠けたときに故障とみなし、RTLSの境界より前に前方の窓か側面ハッチの熱ペインが故障したらRTLSでアボートする。 | REQ-STR-04 | — |
| SSD-FD-STR-OPS-001 | F-STR-OPS-04 | ビューポートを使わないときは外側の覆いを閉じておく。 | REQ-STR-04 | — |
| SSD-FD-STR-OPS-001 | F-STR-OPS-05 | オービタの姿勢は、TPSの接着層の温度を−170°Fより高く、突入時の最高温度未満に保つよう管理する。 | REQ-STR-08 | — |
| SSD-FD-STR-OPS-001 | F-STR-OPS-06 | 軌道デブリに対しては、ペイロードベイを前に向ける姿勢などで過ごす時間を飛行前の計画と実時間の運用で最小にする。 | REQ-STR-08 | — |
| SSD-FD-STR-OPS-001 | F-STR-OPS-07 | 軌道離脱の準備の姿勢の手順の前にすべての熱の制約を満たすことが解析で示されれば、軌道離脱の実時間の熱解析は要らない。 | REQ-STR-08 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-01 | 翼の4本の主桁は、熱荷重を抑えるため波形のアルミニウムで造られる。 | REQ-STR-07 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-02 | 前桁は再使用のRCCの前縁構造の取付けとなり、後桁はエレボンと油圧・電気の構成品の取付けとなる。 | REQ-STR-07 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-03 | エレボンは大気中の飛行制御を行い、各翼で2つの区分に分かれ、各区分は3つのヒンジで支えられ、33°上・18°下まで動く。 | REQ-STR-07 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-04 | 翼は上面の引張ボルトの継手と下面のせん断継手で胴体に取り付けられる。 | REQ-STR-07 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-05 | ボディフラップは突入中に3基のSSMEを熱から守り、大気中の飛行でピッチのトリムを与える。 | REQ-STR-07 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-06 | 垂直尾翼は構造のフィン・ラダー/スピードブレーキ・翼端・下部後縁から成り、ラダーは2つに割れてスピードブレーキになる。 | REQ-STR-07 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-07 | フィンは前桁の根元の2本の引張ボルトで後胴の前部隔壁に、後桁の根元の8本のせん断ボルトで後胴の上面に取り付けられる。 | REQ-STR-07 | — |
| SSD-FD-STR-WNG-001 | F-STR-WNG-08 | 垂直尾翼の構造は163 dBの音響と最高350°Fに耐えるよう設計される。 | REQ-STR-07 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 8 件のうち、8 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-STR-001 | 8 | 0 | 8 | 0 |
| SSD-FD-STR-AFT-001 | 7 | 7 | 0 | 0 |
| SSD-FD-STR-CRM-001 | 7 | 7 | 0 | 0 |
| SSD-FD-STR-FWD-001 | 7 | 7 | 0 | 0 |
| SSD-FD-STR-MID-001 | 7 | 7 | 0 | 0 |
| SSD-FD-STR-OPS-001 | 7 | 7 | 0 | 0 |
| SSD-FD-STR-WNG-001 | 8 | 8 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（8件のうち根拠あり 8件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-STR-01 | I（検査） | 根拠あり | 1.2節（PDF p51〜66）：オービタの構造の9つの主要区分と各区分の構造を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） |
| REQ-STR-02 | I（検査） | 根拠あり | （PDF p17）：窓の断熱ブランケットの重点点検の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17） |
| REQ-STR-03 | T（試験） | 根拠あり | （PDF p10）：SRB分離モータの噴流を乗員室の窓から遠ざけるRCSの窓保護噴射を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| REQ-STR-04 | A（解析） | 根拠あり | A10-382（PDF p1659）：圧力ペイン・冗長ペインの故障の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1659） |
| REQ-STR-05 | A（解析） | 根拠あり | （PDF p18）：縦通材・キールのトラニオンの計測で縦通材とペイロードの相互作用を調べたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| REQ-STR-06 | A（解析） | 根拠あり | （PDF p35）：改設計した後胴の試料ボトルの圧力の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=35） |
| REQ-STR-07 | A（解析） | 根拠あり | （PDF p10）：WLEIDSのセンサ1080が応答しなかった記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| REQ-STR-08 | A（解析） | 根拠あり | 1.2節 Thermal Protection System（PDF p65）：TPSが外板を350°F以下に保つことを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p51） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p52） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p53） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53
4. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p54） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54
5. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p56） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/56
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-382 Pressure/Redundant Windowpane Failure（PDF p1659） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1659
7. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p59） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59
8. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p60） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60
9. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p61） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61
10. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p62） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62
11. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p58） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58
12. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p63） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-401 THERMAL PROTECTION SYSTEM (TPS) BONDLINE TEMPERATURES（PDF p2101） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2101
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-131 ATTITUDE RESTRICTIONS FOR ORBITAL DEBRIS（PDF p681） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=681
15. STS-114 Mission Report Flight Summary（PDF p17） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=17
16. NSTS-37452 STS-125 Mission Report（2010） Mission Summary（IFA STS-125-V-01）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10
17. STS-108 Mission Report Payloads（PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=18
18. STS-135 Mission Report Orbiter Systems: Main Propulsion System（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=35
19. STS-135 Mission Report Flight Day 3（GPC 3）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10
20. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 8件、機能行 51件とのトレース、検証の根拠） |
