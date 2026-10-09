# 系の状態遷移定義書（GPC・燃料電池・APU・RMS・排熱）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BEH-ORB-005 |
| 表題 | 系の状態遷移定義書（GPC・燃料電池・APU・RMS・排熱） |
| 版・日付 | Rev. B／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BEH-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図98 GPC 状態遷移図・図99 燃料電池 状態遷移図・図100 APU 状態遷移図・図101 RMS 状態遷移図・図102 ATCS 排熱 状態遷移図・図103 系のモード × フェーズ 行列 |

## 1. 目的

系の中の状態（モード）と遷移を、状態遷移図で示す。ミッション全体のフェーズ（SSD-BEH-ORB-001 の図76）に対して、GPC・燃料電池・APU・RMS・能動熱制御系（排熱）の5つの系が、どの操作・事象で状態を変えるかを、乗員運用マニュアル（SCOM）と運用飛行規則の頁で裏付け、状態ごとに機能（F-ID）につなぐ。各フェーズでの系の状態は 図103 系のモード × フェーズ 行列 に示す。同じ状態と遷移を SysML v2 のテキスト（SysML/SSD-BEH-ORB-005.sysml）でも示す。

## 2. 書き方

状態の種別は、通常・故障・非常（安全化・投棄）の3つである。親の欄のある状態は、その親の状態（複合状態）の中の状態で、親から出る遷移は中のどの状態からでも起こる。トリガは遷移を起こす操作・事象、ガードはその遷移を選ぶ条件である。機能の欄は、その状態で働く機能説明書の行である。

## 3. 図98 の状態

図98 GPC 状態遷移図（汎用計算機（GPC）の状態、GPC（汎用計算機））の状態 10件を示す。初期状態は GP-OFF である。

| ID | 状態 | 親 | 種別 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| GP-OFF | 電源断 | — | 通常 | F-DPS-GPC-05・F-DPS-GPC-07 | GP_OFF | 各GPCのGENERAL PURPOSE COMPUTER POWERスイッチをONにすると、3つの必須母線の電力でRPCが働き、主母線の直流電力がGPCへ供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227）他のGPCと同期できないGPCは、誤った指令を出さないよう、できるだけ早く電源断またはHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GP-HALT | HALT（停止） | — | 通常 | F-DPS-GPC-09・F-DPS-OPS-01 | GP_HALT | HALTはソフトウェアを一切実行しないハードウェア制御の状態である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228）軌道上のGPCはある記憶構成のソフトウェアを読み込んだ後HALTにする「フリーズドライ」ができ、その構成へのOPS遷移の前にRUNへ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229） |
| GP-STBY | STBY（待機） | — | 通常 | F-DPS-GPC-09 | GP_STBY | STBYは処理の秩序ある開始・停止のための状態で、RUNとHALTの間を移るPASS GPCは手順として3秒を超えてSTBYを経る必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GP-RUN | RUN（処理） | — | 通常 | F-DPS-GPC-09 | GP_RUN | 各GPCはパネルO6のMODEスイッチからRUN・STBY・HALTの離散入力を受け、それによりソフトウェアを処理できるかが決まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GP-OPS0 | OPS 0（システムのみ） | GP-RUN（RUN（処理）） | 通常 | F-DPS-FSW-03 | GP_OPS0 | STBYからRUNにしたGPCは、システムソフトウェアだけを処理する状態（OPS 0）に初期化される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GP-RS | 冗長セット（GNC） | GP-RUN（RUN（処理）） | 通常 | F-DPS-GPC-10・F-DPS-GPC-11 | GP_RS | GPCの運用モードは冗長セット・共通セット・単独（simplex）であり、冗長セットの一員は共通セットの一員でもある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）打上げ・上昇・再突入では、通常GPC 1〜4が冗長セットとしてGNCを受け持ち、GPC 5がBFSとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234） |
| GP-SPX | 単独（SM・PL） | GP-RUN（RUN（処理）） | 通常 | F-DPS-GPC-10・F-DPS-FSW-04 | GP_SPX | SMとペイロードの主機能は常に単独のGPCで処理される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）軌道投入後、GPC 1・2にGNC OPS 2、GPC 4にSMを読み込み、GPC 3はGNC OPS 2でフリーズドライ、GPC 5はBFSのままHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827） |
| GP-BFT | BFS追従（待機） | GP-RUN（RUN（処理）） | 通常 | F-DPS-FSW-02・F-DPS-FSW-12 | GP_BFT | BFSは上昇・再突入では通常RUNとし、PASSのSM GPCが動いている間はSTBYにする。STBYのBFSはペイロードバスを指令しないだけで、ソフトウェアはRUNと同じく動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/247）エンゲージ前のBFSはPASSに同期し、2本以上のストリングを聴取している間はPASSを追従していると言う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/247） |
| GP-BFE | BFSエンゲージ | GP-RUN（RUN（処理）） | 通常 | F-DPS-FSW-13・F-DPS-OPS-02 | GP_BFE | BFSは、OUTPUTスイッチがBACKUPのときにRHCのBFS ENGAGE押しボタン（3接点すべてが必要）を押すとエンゲージし、PASSは制御を手放す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248） |
| GP-FAIL | 故障（同期外れ） | — | 故障 | F-DPS-GPC-11・F-DPS-GPC-12・F-DPS-OPS-03 | GP_FAIL | 他のGPCと同期できないGPCは、誤った指令を出さないよう、できるだけ早く電源断またはHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228）冗長セットのGPCが冗長同期点を満たさないと、残りのGPCが直ちにそれを冗長セットから投票で外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230） |

## 4. 図98 の遷移

図98 GPC 状態遷移図の遷移 14件を示す。トリガは遷移を起こす事象、ガードはその遷移を選ぶ条件である。

| ID | 元 | 先 | トリガ | ガード | SysML | 根拠 |
|---|---|---|---|---|---|---|
| GPT-01 | GP-OFF（電源断） | GP-HALT（HALT（停止）） | POWERスイッチをON | — | GPT_01（accept GpcEv01） | 各GPCのGENERAL PURPOSE COMPUTER POWERスイッチをONにすると、3つの必須母線の電力でRPCが働き、主母線の直流電力がGPCへ供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| GPT-02 | GP-HALT（HALT（停止）） | GP-STBY（STBY（待機）） | MODEスイッチをSTBY | — | GPT_02（accept GpcEv02） | STBYは処理の秩序ある開始・停止のための状態で、RUNとHALTの間を移るPASS GPCは手順として3秒を超えてSTBYを経る必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GPT-03 | GP-STBY（STBY（待機）） | GP-OPS0（OPS 0（システムのみ）） | MODEスイッチをRUN | STBYに3秒超とどまった | GPT_03（accept GpcEv03 if gpcGuard03） | STBYは処理の秩序ある開始・停止のための状態で、RUNとHALTの間を移るPASS GPCは手順として3秒を超えてSTBYを経る必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228）STBYからRUNにしたGPCは、システムソフトウェアだけを処理する状態（OPS 0）に初期化される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GPT-04 | GP-OPS0（OPS 0（システムのみ）） | GP-RS（冗長セット（GNC）） | GNC OPSの要求（OPS 1・2・3） | 冗長セットに指定 | GPT_04（accept GpcEv04 if gpcGuard04） | GPCの運用モードは冗長セット・共通セット・単独（simplex）であり、冗長セットの一員は共通セットの一員でもある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）打上げ前、L−1:00にPASS OPS 1のロードを始め、L−58:30にCDRがBFSをOPS 1へ遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822）軌道離脱の約2時間16分前に、GPC 1〜4をPASS OPS 3、GPC 5をBFS OPS 3にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842） |
| GPT-05 | GP-OPS0（OPS 0（システムのみ）） | GP-SPX（単独（SM・PL）） | SM OPSの要求 | 冗長セットに指定しない | GPT_05（accept GpcEv05 if gpcGuard05） | SMとペイロードの主機能は常に単独のGPCで処理される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）軌道投入後、GPC 1・2にGNC OPS 2、GPC 4にSMを読み込み、GPC 3はGNC OPS 2でフリーズドライ、GPC 5はBFSのままHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827） |
| GPT-06 | GP-RS（冗長セット（GNC）） | GP-FAIL（故障（同期外れ）） | 冗長同期点を満たさない | — | GPT_06（accept GpcEv06） | 冗長セットのGPCが冗長同期点を満たさないと、残りのGPCが直ちにそれを冗長セットから投票で外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230） |
| GPT-07 | GP-FAIL（故障（同期外れ）） | GP-HALT（HALT（停止）） | MODEをHALT（または電源断） | できるだけ早く | GPT_07（accept GpcEv07 if gpcGuard07） | 他のGPCと同期できないGPCは、誤った指令を出さないよう、できるだけ早く電源断またはHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GPT-08 | GP-RUN（RUN（処理）） | GP-STBY（STBY（待機）） | MODEスイッチをSTBY | — | GPT_08（accept GpcEv08） | STBYは処理の秩序ある開始・停止のための状態で、RUNとHALTの間を移るPASS GPCは手順として3秒を超えてSTBYを経る必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228） |
| GPT-09 | GP-STBY（STBY（待機）） | GP-HALT（HALT（停止）） | MODEスイッチをHALT（フリーズドライ） | STBYに3秒超とどまった | GPT_09（accept GpcEv09 if gpcGuard09） | STBYは処理の秩序ある開始・停止のための状態で、RUNとHALTの間を移るPASS GPCは手順として3秒を超えてSTBYを経る必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228）軌道上のGPCはある記憶構成のソフトウェアを読み込んだ後HALTにする「フリーズドライ」ができ、その構成へのOPS遷移の前にRUNへ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229） |
| GPT-10 | GP-HALT（HALT（停止）） | GP-BFT（BFS追従（待機）） | BFS GPCをRUN、OPS 1・3の要求 | BFSソフトウェアを搭載 | GPT_10（accept GpcEv10 if gpcGuard10） | BFS GPCはHALTのとき軌道上でフリーズドライとも呼ばれ、突入の前にRUNにするとMMUを使わずにOPS 3の要求で突入ソフトウェアを処理し始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）打上げ前、L−1:00にPASS OPS 1のロードを始め、L−58:30にCDRがBFSをOPS 1へ遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| GPT-11 | GP-BFT（BFS追従（待機）） | GP-BFE（BFSエンゲージ） | RHCのBFS ENGAGE押しボタン | OUTPUTがBACKUP、3接点すべて | GPT_11（accept GpcEv11 if gpcGuard11） | BFSは、OUTPUTスイッチがBACKUPのときにRHCのBFS ENGAGE押しボタン（3接点すべてが必要）を押すとエンゲージし、PASSは制御を手放す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248）BFSがPASSの追従を失って単独になるとBFC灯が点滅し、乗員はエンゲージするかI/O RESETで追従を再開するかを決める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248） |
| GPT-12 | GP-BFE（BFSエンゲージ） | GP-BFT（BFS追従（待機）） | BFC DISENGAGEスイッチをRIGHT | PASS GPCのダンプ・再ロード完了 | GPT_12（accept GpcEv12 if gpcGuard12） | BFSの解除は、PASS GPCをすべてハードウェアダンプ・再ロードした後、パネルF6のBFC DISENGAGEスイッチをRIGHTにして行い、PASSとBFSはエンゲージ前の状態に戻る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249） |
| GPT-13 | GP-BFT（BFS追従（待機）） | GP-HALT（HALT（停止）） | 軌道上でBFS GPCをHALT | 軌道投入後（OPS 2） | GPT_13（accept GpcEv13 if gpcGuard13） | BFS GPCはHALTのとき軌道上でフリーズドライとも呼ばれ、突入の前にRUNにするとMMUを使わずにOPS 3の要求で突入ソフトウェアを処理し始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229）軌道投入後、GPC 1・2にGNC OPS 2、GPC 4にSMを読み込み、GPC 3はGNC OPS 2でフリーズドライ、GPC 5はBFSのままHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827） |
| GPT-14 | GP-RUN（RUN（処理）） | GP-OFF（電源断） | POWERスイッチをOFF | 着陸後の停止・故障GPC | GPT_14（accept GpcEv14 if gpcGuard14） | 他のGPCと同期できないGPCは、誤った指令を出さないよう、できるだけ早く電源断またはHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228）着陸後はGNC OPS 901へ遷移し、延長給電のGOの後、GPC 2〜4を停止してストリングをGPC 1へ割り当て直す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |

## 5. 図99 の状態

図99 燃料電池 状態遷移図（燃料電池（FC）の状態、燃料電池発電装置）の状態 9件を示す。初期状態は FC-STOP である。

| ID | 状態 | 親 | 種別 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| FC-STOP | 停止（STOP） | — | 通常 | F-EPS-FCP-01 | FC_STOP | 燃料電池の停止は待機の後にSTART/STOPスイッチをSTOPにして冷却材ポンプと水素ポンプを止めることで、安全化は反応剤弁を閉じて内部の反応剤を消費することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/348）飛行規則A9-55は、燃料電池の停止を母線からの切離し・STOP・反応剤弁閉と定め、再使用可能な停止中の燃料電池は40°F超に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1443） |
| FC-START | 始動・暖機 | — | 通常 | F-EPS-FCP-04・F-EPS-FCP-05 | FC_START | START/STOPスイッチをSTARTに保持すると、ECUが冷却材ポンプと水素ポンプ/水分離器に交流電力を、起動・維持ヒータに直流電力を加える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330）燃料電池の暖機に25分を超えることはなく、実時間は初期温度による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） |
| FC-STBY | 待機（無負荷） | — | 通常 | F-EPS-FCP-04 | FC_STBY | 燃料電池の待機は電気負荷を外してポンプ・制御・弁の運転を続ける状態で、区画温度が40°F未満なら凍結を防ぐため停止せず待機に留める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） |
| FC-OPER | 運転（母線給電） | — | 通常 | F-EPS-FCP-02・F-EPS-FCP-07・F-EPS-FCP-08 | FC_OPER | READY FOR LOAD表示は、30秒のタイマ終了とスタック出口温度187°F超の遅い方で灰色になり、負荷を接続できる状態を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330）EPSはすべての飛行段階で動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356） |
| FC-GSE | 地上と負荷分担 | FC-OPER（運転（母線給電）） | 通常 | F-EPS-FCP-02 | FC_GSE | 打上げ前、T−50秒までは燃料電池とGSEで負荷を分担し、T−50秒にGSE電力が切られて燃料電池が残りの負荷を自動的に引き受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） |
| FC-FULL | 全負荷給電 | FC-OPER（運転（母線給電）） | 通常 | F-EPS-FCP-02・F-EPS-FCP-08 | FC_FULL | 打上げ前、T−50秒までは燃料電池とGSEで負荷を分担し、T−50秒にGSE電力が切られて燃料電池が残りの負荷を自動的に引き受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） |
| FC-PURGE | パージ中 | FC-OPER（運転（母線給電）） | 通常 | F-EPS-FCP-06 | FC_PURGE | パージ中も発電は続き、パージする燃料電池の負荷は10 kW（350 A）以下とし、離脱まで3時間超あることを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/325） |
| FC-COOLF | 冷却喪失 | — | 故障 | F-EPS-FCP-05 | FC_COOLF | 冷却材ポンプの差圧を失うと、パネルF7のFUEL CELL PUMP灯が点灯しDPS表示に故障メッセージが出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327）燃料電池の冷却を失ったときは、スタックの過熱を防ぐため9分以内に燃料電池を確保（停止）しなければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893） |
| FC-SAFE | 安全化（反応剤弁閉） | — | 非常 | F-EPS-PRSD-07 | FC_SAFE | 燃料電池の停止は待機の後にSTART/STOPスイッチをSTOPにして冷却材ポンプと水素ポンプを止めることで、安全化は反応剤弁を閉じて内部の反応剤を消費することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/348）REACスイッチをCLOSEにすると水素・酸素の反応剤弁が閉じ、燃料電池は反応剤から隔離されて動作不能になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/318）飛行規則A9-56は、反応剤の交差・内部短絡などで安全化を行い、安全化は冷却材圧力が15 psi未満で完了し、その後母線から切り離してSTOPにすると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1444） |

## 6. 図99 の遷移

図99 燃料電池 状態遷移図の遷移 13件を示す。トリガは遷移を起こす事象、ガードはその遷移を選ぶ条件である。

| ID | 元 | 先 | トリガ | ガード | SysML | 根拠 |
|---|---|---|---|---|---|---|
| FCT-01 | FC-STOP（停止（STOP）） | FC-START（始動・暖機） | START/STOPをSTART（ΔP灰まで保持） | 反応剤弁開・再使用可（40°F超） | FCT_01（accept FcEv01 if fcGuard01） | START/STOPスイッチをSTARTに保持すると、ECUが冷却材ポンプと水素ポンプ/水分離器に交流電力を、起動・維持ヒータに直流電力を加える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330）飛行規則A9-55は、燃料電池の停止を母線からの切離し・STOP・反応剤弁閉と定め、再使用可能な停止中の燃料電池は40°F超に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1443） |
| FCT-02 | FC-START（始動・暖機） | FC-GSE（地上と負荷分担） | READY FOR LOAD後に母線へ接続 | 打上げ前（地上電力あり） | FCT_02（accept FcEv02 if fcGuard02） | READY FOR LOAD表示は、30秒のタイマ終了とスタック出口温度187°F超の遅い方で灰色になり、負荷を接続できる状態を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330）打上げ前、T−8:00にPLTが必須母線を燃料電池へつなぎ、L−30:00ごろ地上制御の燃料電池パージが行われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822） |
| FCT-03 | FC-GSE（地上と負荷分担） | FC-FULL（全負荷給電） | T−50秒に地上電力を断 | — | FCT_03（accept FcEv03） | 打上げ前、T−50秒までは燃料電池とGSEで負荷を分担し、T−50秒にGSE電力が切られて燃料電池が残りの負荷を自動的に引き受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） |
| FCT-04 | FC-START（始動・暖機） | FC-FULL（全負荷給電） | READY FOR LOAD後に母線へ接続 | 飛行中の再始動 | FCT_04（accept FcEv04 if fcGuard04） | READY FOR LOAD表示は、30秒のタイマ終了とスタック出口温度187°F超の遅い方で灰色になり、負荷を接続できる状態を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330）燃料電池の暖機に25分を超えることはなく、実時間は初期温度による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） |
| FCT-05 | FC-FULL（全負荷給電） | FC-PURGE（パージ中） | パージ弁を開く（自動・手動） | 負荷350 A未満、離脱まで3時間超 | FCT_05（accept FcEv05 if fcGuard05） | パージ中も発電は続き、パージする燃料電池の負荷は10 kW（350 A）以下とし、離脱まで3時間超あることを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/325） |
| FCT-06 | FC-PURGE（パージ中） | FC-FULL（全負荷給電） | パージ弁を閉じる | — | FCT_06（accept FcEv06） | パージ中も発電は続き、パージする燃料電池の負荷は10 kW（350 A）以下とし、離脱まで3時間超あることを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/325） |
| FCT-07 | FC-OPER（運転（母線給電）） | FC-STBY（待機（無負荷）） | 母線から切り離す（負荷を外す） | — | FCT_07（accept FcEv07） | 燃料電池の待機は電気負荷を外してポンプ・制御・弁の運転を続ける状態で、区画温度が40°F未満なら凍結を防ぐため停止せず待機に留める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） |
| FCT-08 | FC-STBY（待機（無負荷）） | FC-FULL（全負荷給電） | 母線へ再接続 | — | FCT_08（accept FcEv08） | 燃料電池の待機は電気負荷を外してポンプ・制御・弁の運転を続ける状態で、区画温度が40°F未満なら凍結を防ぐため停止せず待機に留める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） |
| FCT-09 | FC-STBY（待機（無負荷）） | FC-STOP（停止（STOP）） | START/STOPをSTOP | 区画温度40°F以上 | FCT_09（accept FcEv09 if fcGuard09） | 燃料電池の待機は電気負荷を外してポンプ・制御・弁の運転を続ける状態で、区画温度が40°F未満なら凍結を防ぐため停止せず待機に留める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347）燃料電池の停止は待機の後にSTART/STOPスイッチをSTOPにして冷却材ポンプと水素ポンプを止めることで、安全化は反応剤弁を閉じて内部の反応剤を消費することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/348） |
| FCT-10 | FC-OPER（運転（母線給電）） | FC-COOLF（冷却喪失） | 冷却材ポンプ差圧喪失 | — | FCT_10（accept FcEv10） | 冷却材ポンプの差圧を失うと、パネルF7のFUEL CELL PUMP灯が点灯しDPS表示に故障メッセージが出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327）燃料電池の冷却を失ったときは、スタックの過熱を防ぐため9分以内に燃料電池を確保（停止）しなければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893） |
| FCT-11 | FC-COOLF（冷却喪失） | FC-STOP（停止（STOP）） | FC SHUTDOWN手順 | 9分以内 | FCT_11（accept FcEv11 if fcGuard11） | 燃料電池の冷却を失ったときは、スタックの過熱を防ぐため9分以内に燃料電池を確保（停止）しなければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）故障で停止が必要なときはFC SHUTDOWN手順を使い、終了後にLOSS OF 1 FCの電力削減を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）飛行規則A9-55は、燃料電池の停止を母線からの切離し・STOP・反応剤弁閉と定め、再使用可能な停止中の燃料電池は40°F超に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1443） |
| FCT-12 | FC-OPER（運転（母線給電）） | FC-SAFE（安全化（反応剤弁閉）） | 反応剤弁を閉じる | 交差・内部短絡・KOH・冷却材高圧 | FCT_12（accept FcEv12 if fcGuard12） | REACスイッチをCLOSEにすると水素・酸素の反応剤弁が閉じ、燃料電池は反応剤から隔離されて動作不能になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/318）飛行規則A9-56は、反応剤の交差・内部短絡などで安全化を行い、安全化は冷却材圧力が15 psi未満で完了し、その後母線から切り離してSTOPにすると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1444） |
| FCT-13 | FC-SAFE（安全化（反応剤弁閉）） | FC-STOP（停止（STOP）） | 母線から切り離しSTOP | 冷却材圧力15 psi未満 | FCT_13（accept FcEv13 if fcGuard13） | 飛行規則A9-56は、反応剤の交差・内部短絡などで安全化を行い、安全化は冷却材圧力が15 psi未満で完了し、その後母線から切り離してSTOPにすると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1444） |

## 7. 図100 の状態

図100 APU 状態遷移図（補助動力装置（APU）の状態、補助動力装置（APU/HYD））の状態 10件を示す。初期状態は AP-OFF である。

| ID | 状態 | 親 | 種別 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| AP-OFF | 停止（冷態・保温） | — | 通常 | F-APU-TRB-11・F-APU-FUL-10 | AP_OFF | 燃料・水配管のヒータはAPU/HYD停止の直後に入れ、APUが冷える間の凍結を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105）APUは完全な噴射器水冷却（3.5分）の後、または軌道上で約180分の受動冷却の後に手動で再始動できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107） |
| AP-PRE | 始動準備 | — | 通常 | F-APU-CTL-09・F-APU-HYD-03 | AP_PRE | T−6:15にPLTは始動準備を始め、WSBの起動を確かめ、APU制御器を入れて主油圧ポンプを減圧し、燃料タンク弁を開いて3つのREADY TO START表示を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）READY TO START表示の条件には、ガス発生器温度190°F超とタービン回転数80%未満が含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）離脱の45分前に制御器を入れ主ポンプを低圧にし、燃料タンク弁を開いてREADY TO STARTを確かめた後、タンク弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| AP-RUN | 運転 | — | 通常 | F-APU-CTL-04・F-APU-CTL-08 | AP_RUN | 始動の論理は、始動指令から10.5秒間は低速度の検査を遅らせるが、過速度の検査は遅らせない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） |
| AP-LOW | 運転・油圧低圧 | AP-RUN（運転） | 通常 | F-APU-HYD-03・F-APU-OPS-05 | AP_LOW | T−5:00にOPERATEスイッチをSTART/RUNにして3台を起動し、約800 psiを確かめた後に主ポンプを加圧して約3,000 psiを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）主油圧ポンプ圧をNORMにしたままではAPUを始動できず、始動後にLOWからNORMへ切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100）離脱噴射の5分前に1台を起動して油圧は低圧運転とし、突入インタフェースの13分前に残る2台を起動して3系統とも通常圧にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| AP-NORM | 通常速度・通常圧 | AP-RUN（運転） | 通常 | F-APU-CTL-06・F-APU-HYD-02 | AP_NORM | T−5:00にOPERATEスイッチをSTART/RUNにして3台を起動し、約800 psiを確かめた後に主ポンプを加圧して約3,000 psiを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）SPEED SELECTのNORMは74,160 rpm（103%）、HIGHは81,360 rpm（113%）に制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） |
| AP-HIGH | 高速（113%） | AP-RUN（運転） | 通常 | F-APU-CTL-06・F-APU-OPS-07 | AP_HIGH | SPEED SELECTのNORMは74,160 rpm（103%）、HIGHは81,360 rpm（113%）に制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）APU故障ではAPU SHUTDOWN手順で始動指令を除きタンク隔離弁を閉じ、飛行段階によって残りのAPUを高速にし自動停止を禁止する。不足速度の停止ならCOOLDOWN手順の後に再始動を試みてよいが、確認された過速度の停止では再始動しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884）APUの高速への移行は、制御器の電子的な故障や主制御弁の開故障でも起こる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/885） |
| AP-SOAK | 停止直後（高温） | — | 通常 | F-APU-TRB-08・F-APU-TRB-10 | AP_SOAK | 噴射器の水冷却は約180分の通常の冷却期間がとれないときだけ使い、噴射器400°F超または触媒床ヒータ430°F超なら3.5分冷却してから始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93）冷却の終了から始動までが1秒を超えると噴射器の温度が始動限界を超えるおそれがあり、燃料ポンプ210°F超・ガス発生器弁モジュール200°F超では再始動できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93） |
| AP-INJC | 噴射器冷却 | — | 通常 | F-APU-TRB-08・F-APU-TRB-09 | AP_INJC | 噴射器の水冷却は約180分の通常の冷却期間がとれないときだけ使い、噴射器400°F超または触媒床ヒータ430°F超なら3.5分冷却してから始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93） |
| AP-ASD | 自動停止（不足速度） | — | 故障 | F-APU-CTL-07・F-APU-CTL-11 | AP_ASD | AUTO SHUT DOWNをENABLEにすると、制御器は回転数が80%未満または129%超でAPUを自動停止し、副燃料弁とタンク隔離弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）APU故障ではAPU SHUTDOWN手順で始動指令を除きタンク隔離弁を閉じ、飛行段階によって残りのAPUを高速にし自動停止を禁止する。不足速度の停止ならCOOLDOWN手順の後に再始動を試みてよいが、確認された過速度の停止では再始動しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884） |
| AP-OVSP | 過速度停止（再始動禁止） | — | 故障 | F-APU-CTL-07・F-APU-CTL-12 | AP_OVSP | 過速度で停止したAPUは再始動してはならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）APU故障ではAPU SHUTDOWN手順で始動指令を除きタンク隔離弁を閉じ、飛行段階によって残りのAPUを高速にし自動停止を禁止する。不足速度の停止ならCOOLDOWN手順の後に再始動を試みてよいが、確認された過速度の停止では再始動しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884） |

## 8. 図100 の遷移

図100 APU 状態遷移図の遷移 13件を示す。トリガは遷移を起こす事象、ガードはその遷移を選ぶ条件である。

| ID | 元 | 先 | トリガ | ガード | SysML | 根拠 |
|---|---|---|---|---|---|---|
| APT-01 | AP-OFF（停止（冷態・保温）） | AP-PRE（始動準備） | 制御器ON・主ポンプLOW・タンク弁開 | WSBの準備完了 | APT_01（accept ApuEv01 if apuGuard01） | T−6:15にPLTは始動準備を始め、WSBの起動を確かめ、APU制御器を入れて主油圧ポンプを減圧し、燃料タンク弁を開いて3つのREADY TO START表示を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）離脱の45分前に制御器を入れ主ポンプを低圧にし、燃料タンク弁を開いてREADY TO STARTを確かめた後、タンク弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| APT-02 | AP-PRE（始動準備） | AP-OFF（停止（冷態・保温）） | 燃料タンク弁を閉じる | 離脱前の始動準備の確認後 | APT_02（accept ApuEv02 if apuGuard02） | 離脱の45分前に制御器を入れ主ポンプを低圧にし、燃料タンク弁を開いてREADY TO STARTを確かめた後、タンク弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| APT-03 | AP-PRE（始動準備） | AP-LOW（運転・油圧低圧） | OPERATEをSTART/RUN | READY TO START（GG床190°F超） | APT_03（accept ApuEv03 if apuGuard03） | T−5:00にOPERATEスイッチをSTART/RUNにして3台を起動し、約800 psiを確かめた後に主ポンプを加圧して約3,000 psiを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）READY TO START表示の条件には、ガス発生器温度190°F超とタービン回転数80%未満が含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）主油圧ポンプ圧をNORMにしたままではAPUを始動できず、始動後にLOWからNORMへ切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） |
| APT-04 | AP-LOW（運転・油圧低圧） | AP-NORM（通常速度・通常圧） | 主ポンプ圧をNORM | — | APT_04（accept ApuEv04） | T−5:00にOPERATEスイッチをSTART/RUNにして3台を起動し、約800 psiを確かめた後に主ポンプを加圧して約3,000 psiを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）離脱噴射の5分前に1台を起動して油圧は低圧運転とし、突入インタフェースの13分前に残る2台を起動して3系統とも通常圧にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| APT-05 | AP-NORM（通常速度・通常圧） | AP-LOW（運転・油圧低圧） | 主ポンプ圧をLOW | AOAの惰行・油圧系の不調 | APT_05（accept ApuEv05 if apuGuard05） | APUは上昇から最初のOMS噴射まで運転し、主エンジンのパージ・投棄・格納の後に停止する。AOAではAPUを止めずに油圧ポンプを減圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| APT-06 | AP-NORM（通常速度・通常圧） | AP-HIGH（高速（113%）） | SPEED SELECTをHIGH | 他系の故障・制御器の高速移行 | APT_06（accept ApuEv06 if apuGuard06） | APU故障ではAPU SHUTDOWN手順で始動指令を除きタンク隔離弁を閉じ、飛行段階によって残りのAPUを高速にし自動停止を禁止する。不足速度の停止ならCOOLDOWN手順の後に再始動を試みてよいが、確認された過速度の停止では再始動しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884）APUの高速への移行は、制御器の電子的な故障や主制御弁の開故障でも起こる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/885） |
| APT-07 | AP-RUN（運転） | AP-SOAK（停止直後（高温）） | OPERATEをOFF・タンク弁閉 | OMS 1後・点検後・着陸後 | APT_07（accept ApuEv07 if apuGuard07） | APUは上昇から最初のOMS噴射まで運転し、主エンジンのパージ・投棄・格納の後に停止する。AOAではAPUを止めずに油圧ポンプを減圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）軌道離脱の前日にMCCが選んだ1台を起動して舵面の点検を行い、約5分で停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105）着陸後に油圧負荷試験を行うことがあり、主エンジンを輸送位置にした後APUとWSBを停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105） |
| APT-08 | AP-SOAK（停止直後（高温）） | AP-OFF（停止（冷態・保温）） | 約180分の受動冷却 | — | APT_08（accept ApuEv08） | 噴射器の水冷却は約180分の通常の冷却期間がとれないときだけ使い、噴射器400°F超または触媒床ヒータ430°F超なら3.5分冷却してから始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93）APUは完全な噴射器水冷却（3.5分）の後、または軌道上で約180分の受動冷却の後に手動で再始動できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107） |
| APT-09 | AP-SOAK（停止直後（高温）） | AP-INJC（噴射器冷却） | OPERATEをINJECTOR COOL | 噴射器400°F超または床430°F超 | APT_09（accept ApuEv09 if apuGuard09） | 噴射器の水冷却は約180分の通常の冷却期間がとれないときだけ使い、噴射器400°F超または触媒床ヒータ430°F超なら3.5分冷却してから始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93） |
| APT-10 | AP-INJC（噴射器冷却） | AP-LOW（運転・油圧低圧） | OPERATEをSTART/RUN | 3.5分以上冷却、間隔1秒以内 | APT_10（accept ApuEv10 if apuGuard10） | 噴射器の水冷却は約180分の通常の冷却期間がとれないときだけ使い、噴射器400°F超または触媒床ヒータ430°F超なら3.5分冷却してから始動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93）冷却の終了から始動までが1秒を超えると噴射器の温度が始動限界を超えるおそれがあり、燃料ポンプ210°F超・ガス発生器弁モジュール200°F超では再始動できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93）APUは完全な噴射器水冷却（3.5分）の後、または軌道上で約180分の受動冷却の後に手動で再始動できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107） |
| APT-11 | AP-RUN（運転） | AP-ASD（自動停止（不足速度）） | 回転数80%未満 | 自動停止ENABLE、始動後10.5秒経過 | APT_11（accept ApuEv11 if apuGuard11） | 始動の論理は、始動指令から10.5秒間は低速度の検査を遅らせるが、過速度の検査は遅らせない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）AUTO SHUT DOWNをENABLEにすると、制御器は回転数が80%未満または129%超でAPUを自動停止し、副燃料弁とタンク隔離弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） |
| APT-12 | AP-RUN（運転） | AP-OVSP（過速度停止（再始動禁止）） | 回転数129%超 | 自動停止ENABLE | APT_12（accept ApuEv12 if apuGuard12） | AUTO SHUT DOWNをENABLEにすると、制御器は回転数が80%未満または129%超でAPUを自動停止し、副燃料弁とタンク隔離弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90）過速度で停止したAPUは再始動してはならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90） |
| APT-13 | AP-ASD（自動停止（不足速度）） | AP-INJC（噴射器冷却） | APU COOLDOWN手順 | 不足速度による停止 | APT_13（accept ApuEv13 if apuGuard13） | APU故障ではAPU SHUTDOWN手順で始動指令を除きタンク隔離弁を閉じ、飛行段階によって残りのAPUを高速にし自動停止を禁止する。不足速度の停止ならCOOLDOWN手順の後に再始動を試みてよいが、確認された過速度の停止では再始動しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884） |

## 9. 図101 の状態

図101 RMS 状態遷移図（遠隔操作アーム（RMS）の状態、遠隔操作アーム（RMS））の状態 9件を示す。初期状態は RM-STOW である。

| ID | 状態 | 親 | 種別 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| RM-STOW | 収納・非作動 | — | 通常 | F-PLS-ARM-08・F-PLS-MPM-04 | RM_STOW | 受け台に置いたアームはMRLを持つ3つのMPM台座に載り、打上げ・再突入・非使用時に固定される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）非作動化の手順はRMSのヒータの電源を断ちMCIUを切るもので、その飛行のアーム運用をすべて終えた後にだけ行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RM-CRDL | 受け台・待機 | — | 通常 | F-PLS-OPS-01・F-PLS-CTL-01 | RM_CRDL | RMSの運用の前に肩のブレースを解除し、荷物を持つ運用ではMPMを展開する（軌道上初期化、通常MET約2.5時間）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705）パワーダウンの手順はアームを受け台に戻してMRLを再ラッチし、ABEの電源は断つがMCIUは電源を保ってSM GPCと通信を続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RM-ON | 作動（電源ON） | — | 通常 | F-PLS-ARM-06 | RM_ON | パワーアップの手順はMRLを解放してアームを受け台から「受け台直前」の形へ出し、アームは使わないときは通常電源を落とす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） |
| RM-SJ | 単関節（SINGLE） | RM-ON（作動（電源ON）） | 通常 | F-PLS-ARM-02 | RM_SJ | 単関節モードは1度に1関節だけを駆動し、受け台からの取出し・収納は単関節で行う。SINGLEは計算機支援、DIRECTは配線信号とMN A、BACKUPは配線信号とMN Bを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）ソフトストップに達したアームはSINGLE・DIRECT・BACKUPモードでしか動かせない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/696） |
| RM-MAN | 手動補助 | RM-ON（作動（電源ON）） | 通常 | F-PLS-CTL-03・F-PLS-CTL-04 | RM_MAN | 手動補助モード（ORB UNL・ORB LD・END EFF・PL）は手動コントローラで軌跡を制御する計算機支援モードで、パネルA8UのMODEロータリスイッチで選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）RMS/EVA運用ではアームを足場として、先端に足部拘束で固定したEVA乗員を運ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RM-AUTO | 自動 | RM-ON（作動（電源ON）） | 通常 | F-PLS-CTL-01 | RM_AUTO | 自動モードではSM GPCがアームの軌跡を制御し、AUTO 1〜4を選んでAUTO SEQスイッチで開始する。操作員指令の自動では終点で停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/709） |
| RM-HW | 直接・予備駆動 | RM-ON（作動（電源ON）） | 通常 | F-PLS-ARM-06 | RM_HW | 単関節モードは1度に1関節だけを駆動し、受け台からの取出し・収納は単関節で行う。SINGLEは計算機支援、DIRECTは配線信号とMN A、BACKUPは配線信号とMN Bを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RM-BRK | ブレーキ・安全化 | — | 通常 | F-PLS-ARM-05・F-PLS-CTL-06 | RM_BRK | SAFINGスイッチがAUTOのとき、重大なBITE故障やSM GPCとの通信喪失でMCIUが安全化を始め、サーボ制御でアームを止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697）ブレーキはBRAKESスイッチをOFFにするとMCIUが解除し、故障の疑いがあれば操作員は直ちにONにする（DIRECTとBACKUPを除く）。DIRECTではMODEスイッチをDIRECT以外へ、BACKUPではRMS SELECTをOFFにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697）関節のブレーキを外すには28 V DCを加え続ける必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690） |
| RM-JETT | 投棄 | — | 非常 | F-PLS-MPM-05・F-PLS-OPS-05 | RM_JETT | RMS投棄はアームのみ、アームとMPM台座、アームとペイロードを分離する非常時の手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）投棄系は、ペイロードベイドアを閉じる前にアームを受け台に戻して収納できない場合に、アームなどを機体から非衝撃的に分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/711） |

## 10. 図101 の遷移

図101 RMS 状態遷移図の遷移 13件を示す。トリガは遷移を起こす事象、ガードはその遷移を選ぶ条件である。

| ID | 元 | 先 | トリガ | ガード | SysML | 根拠 |
|---|---|---|---|---|---|---|
| RMT-01 | RM-STOW（収納・非作動） | RM-CRDL（受け台・待機） | 軌道上初期化（ブレース解除） | — | RMT_01（accept RmsEv01） | RMSの運用の前に肩のブレースを解除し、荷物を持つ運用ではMPMを展開する（軌道上初期化、通常MET約2.5時間）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705） |
| RMT-02 | RM-CRDL（受け台・待機） | RM-SJ（単関節（SINGLE）） | パワーアップ（MRL解放） | — | RMT_02（accept RmsEv02） | パワーアップの手順はMRLを解放してアームを受け台から「受け台直前」の形へ出し、アームは使わないときは通常電源を落とす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705）単関節モードは1度に1関節だけを駆動し、受け台からの取出し・収納は単関節で行う。SINGLEは計算機支援、DIRECTは配線信号とMN A、BACKUPは配線信号とMN Bを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RMT-03 | RM-SJ（単関節（SINGLE）） | RM-MAN（手動補助） | MODEをORB UNL・ORB LD等 | ソフトストップ域の外 | RMT_03（accept RmsEv03 if rmsGuard03） | 手動補助モード（ORB UNL・ORB LD・END EFF・PL）は手動コントローラで軌跡を制御する計算機支援モードで、パネルA8UのMODEロータリスイッチで選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）ソフトストップに達したアームはSINGLE・DIRECT・BACKUPモードでしか動かせない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/696） |
| RMT-04 | RM-MAN（手動補助） | RM-AUTO（自動） | MODEをAUTO 1〜4・AUTO SEQ | — | RMT_04（accept RmsEv04） | 自動モードではSM GPCがアームの軌跡を制御し、AUTO 1〜4を選んでAUTO SEQスイッチで開始する。操作員指令の自動では終点で停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/709） |
| RMT-05 | RM-AUTO（自動） | RM-MAN（手動補助） | 自動シーケンス終了・モード変更 | — | RMT_05（accept RmsEv05） | 自動モードではSM GPCがアームの軌跡を制御し、AUTO 1〜4を選んでAUTO SEQスイッチで開始する。操作員指令の自動では終点で停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/709） |
| RMT-06 | RM-MAN（手動補助） | RM-SJ（単関節（SINGLE）） | MODEをSINGLE（受け台へ） | — | RMT_06（accept RmsEv06） | 単関節モードは1度に1関節だけを駆動し、受け台からの取出し・収納は単関節で行う。SINGLEは計算機支援、DIRECTは配線信号とMN A、BACKUPは配線信号とMN Bを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RMT-07 | RM-SJ（単関節（SINGLE）） | RM-HW（直接・予備駆動） | MODEをDIRECT・BACKUP | — | RMT_07（accept RmsEv07） | 単関節モードは1度に1関節だけを駆動し、受け台からの取出し・収納は単関節で行う。SINGLEは計算機支援、DIRECTは配線信号とMN A、BACKUPは配線信号とMN Bを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RMT-08 | RM-HW（直接・予備駆動） | RM-SJ（単関節（SINGLE）） | MODEをDIRECT以外 | DIRECTで故障の疑い | RMT_08（accept RmsEv08 if rmsGuard08） | ブレーキはBRAKESスイッチをOFFにするとMCIUが解除し、故障の疑いがあれば操作員は直ちにONにする（DIRECTとBACKUPを除く）。DIRECTではMODEスイッチをDIRECT以外へ、BACKUPではRMS SELECTをOFFにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697） |
| RMT-09 | RM-ON（作動（電源ON）） | RM-BRK（ブレーキ・安全化） | BRAKES ON・自動ブレーキ・安全化 | — | RMT_09（accept RmsEv09） | SAFINGスイッチがAUTOのとき、重大なBITE故障やSM GPCとの通信喪失でMCIUが安全化を始め、サーボ制御でアームを止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697）ブレーキはBRAKESスイッチをOFFにするとMCIUが解除し、故障の疑いがあれば操作員は直ちにONにする（DIRECTとBACKUPを除く）。DIRECTではMODEスイッチをDIRECT以外へ、BACKUPではRMS SELECTをOFFにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697）関節の暴走につながる異常（CONTR ERR）では、ソフトウェアが自動的にブレーキをかける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/710） |
| RMT-10 | RM-BRK（ブレーキ・安全化） | RM-ON（作動（電源ON）） | BRAKES OFF・SAFING CANCEL | — | RMT_10（accept RmsEv10） | SAFINGスイッチがAUTOのとき、重大なBITE故障やSM GPCとの通信喪失でMCIUが安全化を始め、サーボ制御でアームを止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697）ブレーキはBRAKESスイッチをOFFにするとMCIUが解除し、故障の疑いがあれば操作員は直ちにONにする（DIRECTとBACKUPを除く）。DIRECTではMODEスイッチをDIRECT以外へ、BACKUPではRMS SELECTをOFFにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697） |
| RMT-11 | RM-SJ（単関節（SINGLE）） | RM-CRDL（受け台・待機） | パワーダウン（MRL再ラッチ） | 受け台に収めた | RMT_11（accept RmsEv11 if rmsGuard11） | パワーダウンの手順はアームを受け台に戻してMRLを再ラッチし、ABEの電源は断つがMCIUは電源を保ってSM GPCと通信を続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RMT-12 | RM-CRDL（受け台・待機） | RM-STOW（収納・非作動） | 非作動化（ヒータ・MCIU断） | 全アーム運用の終了後 | RMT_12（accept RmsEv12 if rmsGuard12） | 非作動化の手順はRMSのヒータの電源を断ちMCIUを切るもので、その飛行のアーム運用をすべて終えた後にだけ行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707） |
| RMT-13 | RM-BRK（ブレーキ・安全化） | RM-JETT（投棄） | RMS投棄の手順 | ドア閉鎖前に収納できない | RMT_13（accept RmsEv13 if rmsGuard13） | RMS投棄はアームのみ、アームとMPM台座、アームとペイロードを分離する非常時の手順である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）投棄系は、ペイロードベイドアを閉じる前にアームを受け台に戻して収納できない場合に、アームなどを機体から非衝撃的に分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/711） |

## 11. 図102 の状態

図102 ATCS 排熱 状態遷移図（能動熱制御系（ATCS）の排熱の状態、能動熱制御系（ATCS））の状態 9件を示す。初期状態は TC-GSE である。

| ID | 状態 | 親 | 種別 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| TC-GSE | 地上冷却（GSE） | — | 通常 | F-ECL-ATCS-03 | TC_GSE | 打上げ前はGSEが冷却し、リフトオフ後はSRB分離のころまで能動冷却の手段がなく、フレオンループの熱慣性で温度上昇を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）GSE熱交換器は打上げ前と着陸後の冷却に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-INER | 熱慣性（能動冷却なし） | — | 通常 | F-ECL-ATCS-03 | TC_INER | 打上げ前はGSEが冷却し、リフトオフ後はSRB分離のころまで能動冷却の手段がなく、フレオンループの熱慣性で温度上昇を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TC-FES | FES排熱 | — | 通常 | F-ECL-ATCS-03・F-ECL-ATCS-05 | TC_FES | SRB分離でFESがBFSからGPC ONの指令を受けて能動冷却を始め、上昇から軌道投入後までの主な冷却源となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）FESは上昇中の140,000 ft以上で使い、軌道上では必要に応じ放熱器を補い、離脱・突入では約100,000 ftまで排熱する。BFSがMM103で入れ、MM305で切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） |
| TC-RAD | 放熱器排熱 | — | 通常 | F-ECL-ATCS-04・F-ECL-ATCS-06 | TC_RAD | 軌道投入後に放熱器へ流れを通しペイロードベイドアを開くと放熱器が主な冷却源となり、トッピングFESを補助に残すことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）上昇中はドアが閉じているため放熱器は通常バイパスされ、放熱器の流れは軌道上でドアを開く少し前に確立する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384） |
| TC-RADO | 放熱器のみ | TC-RAD（放熱器排熱） | 通常 | F-ECL-ATCS-04 | TC_RADO | 軌道投入後に放熱器へ流れを通しペイロードベイドアを開くと放熱器が主な冷却源となり、トッピングFESを補助に残すことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TC-RADF | 放熱器＋FES補助 | TC-RAD（放熱器排熱） | 通常 | F-ECL-ATCS-04 | TC_RADF | 軌道投入後に放熱器へ流れを通しペイロードベイドアを開くと放熱器が主な冷却源となり、トッピングFESを補助に残すことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）暖かい姿勢では放熱器だけでは足りず、FESが追加の冷却を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TC-CSK | 放熱器コールドソーク | — | 通常 | F-ECL-ATCS-04 | TC_CSK | 離脱準備では放熱器の制御温度設定をNORMからHIにして放熱器をコールドソークし、1時間余り後に放熱器をバイパスしてFESが全冷却を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TC-RCSK | コールドソーク利用 | — | 通常 | F-ECL-ATCS-05 | TC_RCSK | V=12kで放熱器制御器を起動して放熱器の流れを再開し、コールドソークを接地・滑走まで使い、使い切るとアンモニアボイラを地上冷却カートの接続まで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TC-NH3 | アンモニアボイラ | — | 通常 | F-ECL-ATCS-05 | TC_NH3 | V=12kで放熱器制御器を起動して放熱器の流れを再開し、コールドソークを接地・滑走まで使い、使い切るとアンモニアボイラを地上冷却カートの接続まで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）上昇アボートでは放熱器のコールドソークがないため、突入の低高度はアンモニアボイラで冷却し、TAL・AOAはMM304の120,000 ft、RTLSは外部タンク分離（MM602）でBFSがONにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）コールドソークを使った突入では、着陸後に放熱器出口温度が55°Fに達したときアンモニア系を起動し、地上冷却カートが接続されるまで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） |

## 12. 図102 の遷移

図102 ATCS 排熱 状態遷移図の遷移 11件を示す。トリガは遷移を起こす事象、ガードはその遷移を選ぶ条件である。

| ID | 元 | 先 | トリガ | ガード | SysML | 根拠 |
|---|---|---|---|---|---|---|
| TCT-01 | TC-GSE（地上冷却（GSE）） | TC-INER（熱慣性（能動冷却なし）） | リフトオフ | — | TCT_01（accept AtcsEv01） | 打上げ前はGSEが冷却し、リフトオフ後はSRB分離のころまで能動冷却の手段がなく、フレオンループの熱慣性で温度上昇を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TCT-02 | TC-INER（熱慣性（能動冷却なし）） | TC-FES（FES排熱） | SRB分離でBFSがFESをON | 140,000 ft超（MM103） | TCT_02（accept AtcsEv02 if atcsGuard02） | SRB分離でFESがBFSからGPC ONの指令を受けて能動冷却を始め、上昇から軌道投入後までの主な冷却源となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）FESは上昇中の140,000 ft以上で使い、軌道上では必要に応じ放熱器を補い、離脱・突入では約100,000 ftまで排熱する。BFSがMM103で入れ、MM305で切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） |
| TCT-03 | TC-FES（FES排熱） | TC-RADF（放熱器＋FES補助） | 放熱器へ流し、ドアを開く | 軌道投入後 | TCT_03（accept AtcsEv03 if atcsGuard03） | 軌道投入後に放熱器へ流れを通しペイロードベイドアを開くと放熱器が主な冷却源となり、トッピングFESを補助に残すことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）上昇中はドアが閉じているため放熱器は通常バイパスされ、放熱器の流れは軌道上でドアを開く少し前に確立する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384） |
| TCT-04 | TC-RADF（放熱器＋FES補助） | TC-RADO（放熱器のみ） | トッピングFESを停止 | 放熱器で冷却が足りる | TCT_04（accept AtcsEv04 if atcsGuard04） | 軌道投入後に放熱器へ流れを通しペイロードベイドアを開くと放熱器が主な冷却源となり、トッピングFESを補助に残すことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TCT-05 | TC-RADO（放熱器のみ） | TC-RADF（放熱器＋FES補助） | FESが補助を開始 | 暖かい姿勢・高い熱負荷 | TCT_05（accept AtcsEv05 if atcsGuard05） | 暖かい姿勢では放熱器だけでは足りず、FESが追加の冷却を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TCT-06 | TC-RAD（放熱器排熱） | TC-CSK（放熱器コールドソーク） | RAD OUT設定をHI、FES再起動 | 離脱準備・ドア閉鎖前 | TCT_06（accept AtcsEv06 if atcsGuard06） | 離脱準備では放熱器の制御温度設定をNORMからHIにして放熱器をコールドソークし、1時間余り後に放熱器をバイパスしてFESが全冷却を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TCT-07 | TC-CSK（放熱器コールドソーク） | TC-FES（FES排熱） | 放熱器をバイパス | 約1時間後 | TCT_07（accept AtcsEv07 if atcsGuard07） | 離脱準備では放熱器の制御温度設定をNORMからHIにして放熱器をコールドソークし、1時間余り後に放熱器をバイパスしてFESが全冷却を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TCT-08 | TC-FES（FES排熱） | TC-RCSK（コールドソーク利用） | V=12kで放熱器流を再開 | コールドソーク済み | TCT_08（accept AtcsEv08 if atcsGuard08） | V=12kで放熱器制御器を起動して放熱器の流れを再開し、コールドソークを接地・滑走まで使い、使い切るとアンモニアボイラを地上冷却カートの接続まで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） |
| TCT-09 | TC-FES（FES排熱） | TC-NH3（アンモニアボイラ） | BFSがNH3ボイラをON | アボート（MM304の120k ft・MM602） | TCT_09（accept AtcsEv09 if atcsGuard09） | 上昇アボートでは放熱器のコールドソークがないため、突入の低高度はアンモニアボイラで冷却し、TAL・AOAはMM304の120,000 ft、RTLSは外部タンク分離（MM602）でBFSがONにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）コールドソークを使った突入では、着陸後に放熱器出口温度が55°Fに達したときアンモニア系を起動し、地上冷却カートが接続されるまで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） |
| TCT-10 | TC-RCSK（コールドソーク利用） | TC-NH3（アンモニアボイラ） | 放熱器出口温度55°F到達 | 着陸後 | TCT_10（accept AtcsEv10 if atcsGuard10） | V=12kで放熱器制御器を起動して放熱器の流れを再開し、コールドソークを接地・滑走まで使い、使い切るとアンモニアボイラを地上冷却カートの接続まで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）コールドソークを使った突入では、着陸後に放熱器出口温度が55°Fに達したときアンモニア系を起動し、地上冷却カートが接続されるまで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）着陸後、CDRは冷却の必要に応じて放熱器の再構成とNH3ボイラの起動を早い時期に行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849） |
| TCT-11 | TC-NH3（アンモニアボイラ） | TC-GSE（地上冷却（GSE）） | 地上冷却カートの接続完了 | — | TCT_11（accept AtcsEv11） | 地上冷却の接続が完了するとアンモニア冷却を止めてGSE冷却を始める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）コールドソークを使った突入では、着陸後に放熱器出口温度が55°Fに達したときアンモニア系を起動し、地上冷却カートが接続されるまで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） |

## 13. フェーズとの対応

ミッションフェーズ（SSD-OPS-PHASE-001）ごとの、系の状態を示す（図103 系のモード × フェーズ 行列）。複数の状態があるのは、そのフェーズの中で移り変わるか、機体・運用で違うものである。根拠は表の後ろに示す。

| 系 | PH-1 打上げ前 | PH-2 上昇 | PH-3 軌道 | PH-4 離脱準備 | PH-5 EVA | PH-6 再突入 | PH-7 着陸後 |
|---|---|---|---|---|---|---|---|
| GPC（汎用計算機） | GP-RS・GP-BFT | GP-RS・GP-BFT | GP-RS・GP-SPX・GP-HALT | GP-RS・GP-BFT | GP-RS・GP-SPX・GP-HALT | GP-RS・GP-BFT | GP-RS・GP-OFF |
| 燃料電池発電装置 | FC-GSE・FC-PURGE | FC-FULL | FC-FULL・FC-PURGE | FC-FULL | FC-FULL | FC-FULL | FC-FULL |
| 補助動力装置（APU/HYD） | AP-PRE・AP-NORM | AP-NORM | AP-SOAK・AP-OFF | AP-OFF・AP-NORM・AP-PRE | AP-OFF | AP-LOW・AP-NORM | AP-NORM・AP-SOAK |
| 遠隔操作アーム（RMS） | RM-STOW | RM-STOW | RM-CRDL・RM-MAN・RM-AUTO | RM-STOW | RM-MAN | RM-STOW | RM-STOW |
| 能動熱制御系（ATCS） | TC-GSE | TC-INER・TC-FES | TC-RADO・TC-RADF | TC-CSK・TC-FES | TC-RADO・TC-RADF | TC-FES・TC-RCSK | TC-RCSK・TC-NH3・TC-GSE |

- GPC（汎用計算機）・PH-1：打上げ・上昇・再突入では、通常GPC 1〜4が冗長セットとしてGNCを受け持ち、GPC 5がBFSとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234）打上げ前、L−1:00にPASS OPS 1のロードを始め、L−58:30にCDRがBFSをOPS 1へ遷移させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822）
- GPC（汎用計算機）・PH-2：打上げ・上昇・再突入では、通常GPC 1〜4が冗長セットとしてGNCを受け持ち、GPC 5がBFSとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234）BFSは上昇・再突入では通常RUNとし、PASSのSM GPCが動いている間はSTBYにする。STBYのBFSはペイロードバスを指令しないだけで、ソフトウェアはRUNと同じく動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/247）
- GPC（汎用計算機）・PH-3：軌道投入後、GPC 1・2にGNC OPS 2、GPC 4にSMを読み込み、GPC 3はGNC OPS 2でフリーズドライ、GPC 5はBFSのままHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827）
- GPC（汎用計算機）・PH-4：軌道離脱の約2時間16分前に、GPC 1〜4をPASS OPS 3、GPC 5をBFS OPS 3にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842）
- GPC（汎用計算機）・PH-5：軌道投入後、GPC 1・2にGNC OPS 2、GPC 4にSMを読み込み、GPC 3はGNC OPS 2でフリーズドライ、GPC 5はBFSのままHALTにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827）
- GPC（汎用計算機）・PH-6：打上げ・上昇・再突入では、通常GPC 1〜4が冗長セットとしてGNCを受け持ち、GPC 5がBFSとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234）軌道離脱の約2時間16分前に、GPC 1〜4をPASS OPS 3、GPC 5をBFS OPS 3にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842）
- GPC（汎用計算機）・PH-7：着陸後はGNC OPS 901へ遷移し、延長給電のGOの後、GPC 2〜4を停止してストリングをGPC 1へ割り当て直す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849）
- 燃料電池発電装置・PH-1：打上げ前、T−50秒までは燃料電池とGSEで負荷を分担し、T−50秒にGSE電力が切られて燃料電池が残りの負荷を自動的に引き受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347）打上げ前、T−8:00にPLTが必須母線を燃料電池へつなぎ、L−30:00ごろ地上制御の燃料電池パージが行われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822）
- 燃料電池発電装置・PH-2：打上げ前、T−50秒までは燃料電池とGSEで負荷を分担し、T−50秒にGSE電力が切られて燃料電池が残りの負荷を自動的に引き受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347）EPSはすべての飛行段階で動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）
- 燃料電池発電装置・PH-3：パージ中も発電は続き、パージする燃料電池の負荷は10 kW（350 A）以下とし、離脱まで3時間超あることを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/325）EPSはすべての飛行段階で動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）
- 燃料電池発電装置・PH-4：パージ中も発電は続き、パージする燃料電池の負荷は10 kW（350 A）以下とし、離脱まで3時間超あることを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/325）EPSはすべての飛行段階で動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）
- 燃料電池発電装置・PH-5：EPSはすべての飛行段階で動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）
- 燃料電池発電装置・PH-6：EPSはすべての飛行段階で動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）
- 燃料電池発電装置・PH-7：EPSはすべての飛行段階で動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）
- 補助動力装置（APU/HYD）・PH-1：T−6:15にPLTは始動準備を始め、WSBの起動を確かめ、APU制御器を入れて主油圧ポンプを減圧し、燃料タンク弁を開いて3つのREADY TO START表示を確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）T−5:00にOPERATEスイッチをSTART/RUNにして3台を起動し、約800 psiを確かめた後に主ポンプを加圧して約3,000 psiを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）
- 補助動力装置（APU/HYD）・PH-2：APUは上昇から最初のOMS噴射まで運転し、主エンジンのパージ・投棄・格納の後に停止する。AOAではAPUを止めずに油圧ポンプを減圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）
- 補助動力装置（APU/HYD）・PH-3：APUは上昇から最初のOMS噴射まで運転し、主エンジンのパージ・投棄・格納の後に停止する。AOAではAPUを止めずに油圧ポンプを減圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104）燃料・水配管のヒータはAPU/HYD停止の直後に入れ、APUが冷える間の凍結を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105）
- 補助動力装置（APU/HYD）・PH-4：軌道離脱の前日にMCCが選んだ1台を起動して舵面の点検を行い、約5分で停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105）離脱の45分前に制御器を入れ主ポンプを低圧にし、燃料タンク弁を開いてREADY TO STARTを確かめた後、タンク弁を閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105）
- 補助動力装置（APU/HYD）・PH-5：（根拠なし。調査の注記を参照）
- 補助動力装置（APU/HYD）・PH-6：離脱噴射の5分前に1台を起動して油圧は低圧運転とし、突入インタフェースの13分前に残る2台を起動して3系統とも通常圧にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105）
- 補助動力装置（APU/HYD）・PH-7：着陸後に油圧負荷試験を行うことがあり、主エンジンを輸送位置にした後APUとWSBを停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105）着陸後、PLTは自動停止がENABLEで速度選択がNORMであることを確かめ、主エンジンの再配置の後にAPU/HYDを停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849）
- 遠隔操作アーム（RMS）・PH-1：受け台に置いたアームはMRLを持つ3つのMPM台座に載り、打上げ・再突入・非使用時に固定される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）
- 遠隔操作アーム（RMS）・PH-2：受け台に置いたアームはMRLを持つ3つのMPM台座に載り、打上げ・再突入・非使用時に固定される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）
- 遠隔操作アーム（RMS）・PH-3：RMSの運用の前に肩のブレースを解除し、荷物を持つ運用ではMPMを展開する（軌道上初期化、通常MET約2.5時間）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705）パワーダウンの手順はアームを受け台に戻してMRLを再ラッチし、ABEの電源は断つがMCIUは電源を保ってSM GPCと通信を続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）自動モードではSM GPCがアームの軌跡を制御し、AUTO 1〜4を選んでAUTO SEQスイッチで開始する。操作員指令の自動では終点で停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/709）
- 遠隔操作アーム（RMS）・PH-4：非作動化の手順はRMSのヒータの電源を断ちMCIUを切るもので、その飛行のアーム運用をすべて終えた後にだけ行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）
- 遠隔操作アーム（RMS）・PH-5：RMS/EVA運用ではアームを足場として、先端に足部拘束で固定したEVA乗員を運ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707）
- 遠隔操作アーム（RMS）・PH-6：受け台に置いたアームはMRLを持つ3つのMPM台座に載り、打上げ・再突入・非使用時に固定される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）
- 遠隔操作アーム（RMS）・PH-7：受け台に置いたアームはMRLを持つ3つのMPM台座に載り、打上げ・再突入・非使用時に固定される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）
- 能動熱制御系（ATCS）・PH-1：打上げ前はGSEが冷却し、リフトオフ後はSRB分離のころまで能動冷却の手段がなく、フレオンループの熱慣性で温度上昇を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）GSE熱交換器は打上げ前と着陸後の冷却に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382）
- 能動熱制御系（ATCS）・PH-2：打上げ前はGSEが冷却し、リフトオフ後はSRB分離のころまで能動冷却の手段がなく、フレオンループの熱慣性で温度上昇を抑える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）SRB分離でFESがBFSからGPC ONの指令を受けて能動冷却を始め、上昇から軌道投入後までの主な冷却源となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）
- 能動熱制御系（ATCS）・PH-3：軌道投入後に放熱器へ流れを通しペイロードベイドアを開くと放熱器が主な冷却源となり、トッピングFESを補助に残すことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）暖かい姿勢では放熱器だけでは足りず、FESが追加の冷却を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）
- 能動熱制御系（ATCS）・PH-4：離脱準備では放熱器の制御温度設定をNORMからHIにして放熱器をコールドソークし、1時間余り後に放熱器をバイパスしてFESが全冷却を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）
- 能動熱制御系（ATCS）・PH-5：軌道投入後に放熱器へ流れを通しペイロードベイドアを開くと放熱器が主な冷却源となり、トッピングFESを補助に残すことがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）
- 能動熱制御系（ATCS）・PH-6：FESは上昇中の140,000 ft以上で使い、軌道上では必要に応じ放熱器を補い、離脱・突入では約100,000 ftまで排熱する。BFSがMM103で入れ、MM305で切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389）V=12kで放熱器制御器を起動して放熱器の流れを再開し、コールドソークを接地・滑走まで使い、使い切るとアンモニアボイラを地上冷却カートの接続まで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）
- 能動熱制御系（ATCS）・PH-7：V=12kで放熱器制御器を起動して放熱器の流れを再開し、コールドソークを接地・滑走まで使い、使い切るとアンモニアボイラを地上冷却カートの接続まで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405）コールドソークを使った突入では、着陸後に放熱器出口温度が55°Fに達したときアンモニア系を起動し、地上冷却カートが接続されるまで使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）着陸後、CDRは冷却の必要に応じて放熱器の再構成とNH3ボイラの起動を早い時期に行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849）

## 14. 構造との対応

状態機械を持つ部品を示す。SysML v2 テキストでは、構造モデル（SSD-BLK-SYS-001）の部品の定義を特化した part def に、状態機械を exhibit state で持たせた。

| 系 | 機能説明書 | 構造の part def | 特化した part def | state def |
|---|---|---|---|---|
| GPC（汎用計算機） | SSD-FD-DPS-GPC-001 | SSD_BLK_SYS_001::DPS_GPC | GpcModesHolder | GpcModes |
| 燃料電池発電装置 | SSD-FD-EPS-FCP-001 | SSD_BLK_SYS_001::EPS_FCP | FuelCellStatesHolder | FuelCellStates |
| 補助動力装置（APU/HYD） | SSD-FD-APU-001 | SSD_BLK_SYS_001::APU | ApuStatesHolder | ApuStates |
| 遠隔操作アーム（RMS） | SSD-FD-PLS-ARM-001 | SSD_BLK_SYS_001::PLS_ARM | RmsModesHolder | RmsModes |
| 能動熱制御系（ATCS） | SSD-FD-ECL-ATCS-001 | SSD_BLK_SYS_001::ECL_ATCS | HeatRejectionModesHolder | HeatRejectionModes |

## 15. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-BEH-ORB-005.sysml](../SysML/SSD-BEH-ORB-005.sysml) に示す。状態機械の state def 5件（状態 47件・遷移 64件、事象の item def、ガードの属性、フェーズとの対応の metadata）と、状態機械を持たせた part def 5件から成り、構造モデル（SysML/SSD-BLK-SYS-001.sysml）を読み込んでから読む。本書の表と同じデータから作り、OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 16. 注記（出典間の相違・構成変更）

> **注記** 状態と遷移は、SCOM と運用飛行規則の記述から、系の操作の手順の区切りを状態として起こしたもので、各系の設計仕様の状態定義ではない。

> **注記** 調査で根拠が不足した点：GPC：電源投入直後の MODE 位置（HALT とした）と OPS 9（整備）の扱いは SCOM に明記がない。共通セットは冗長セットの包含関係として状態に入れていない。

> **注記** 調査で根拠が不足した点：FC：着陸後（PH-7）の燃料電池の運転は SCOM 5.5 に明記がなく、『EPS は全飛行段階で動作』（R7-044）で支える。軌道上の再始動は飛行規則 A9-55 で確認条件付き。

> **注記** 調査で根拠が不足した点：APU：EVA（PH-5）中の APU の状態を直接示す文はない（軌道上は停止のまま、PH-3 と同じとした）。

> **注記** 調査で根拠が不足した点：RMS：RMS を積まない飛行では全フェーズ該当しない。DIRECT と BACKUP は1つの状態（RM-HW）にまとめた。

> **注記** 調査で根拠が不足した点：ATCS：FES の自動停止（下限温度・過熱）による状態は含めていない。

> **注記** 状態遷移の事象を送る C/W の警報（FUEL CELL PUMP・FUEL CELL REAC・GPC・APU OVERSPEED・UNDERSPEED）は [SSD-FDIR-ORB-001](SSD-FDIR-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-FDIR-ORB-001.sysml）。

> **注記** ほかの系（OMS・RCS・MPS・C&T・与圧系・ODS）の状態遷移は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-006.sysml）。

## 17. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p227） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227
2. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p228） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/228
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p229） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229
4. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p234） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234
5. Shuttle Crew Operations Manual 5.2 Ascent（USA007587 Rev. A CPN-1、PDF p827） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/827
6. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p247） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/247
7. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p248） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248
8. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p230） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230
9. Shuttle Crew Operations Manual 5.1 Prelaunch（USA007587 Rev. A CPN-1、PDF p822） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/822
10. Shuttle Crew Operations Manual 5.4 Entry（USA007587 Rev. A CPN-1、PDF p842） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/842
11. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p249） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249
12. Shuttle Crew Operations Manual 5.5 Postlanding（USA007587 Rev. A CPN-1、PDF p849） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/849
13. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p348） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/348
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-55 Fc Shutdown Definition [Cil]（PDF p1443） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1443
15. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p330） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330
16. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p347） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347
17. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p356） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356
18. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p325） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/325
19. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p327） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/327
20. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p893） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893
21. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p318） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/318
22. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-56 FUEL CELL SAFING（PDF p1444） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1444
23. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p105） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/105
24. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p107） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107
25. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p104） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104
26. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p90） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/90
27. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p89） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89
28. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p100） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100
29. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p884） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/884
30. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p885） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/885
31. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p93） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93
32. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
33. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p707） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/707
34. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p705） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/705
35. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p696） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/696
36. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p709） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/709
37. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p697） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/697
38. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p690） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/690
39. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p711） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/711
40. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p710） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/710
41. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p405） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405
42. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382
43. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p389） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389
44. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p384） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384
45. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392

## 18. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（図98 GPC 状態遷移図の状態 10件・遷移 14件、図99 燃料電池 状態遷移図の状態 9件・遷移 13件、図100 APU 状態遷移図の状態 10件・遷移 13件、図101 RMS 状態遷移図の状態 9件・遷移 13件、図102 ATCS 排熱 状態遷移図の状態 9件・遷移 11件、図103 系のモード × フェーズ 行列、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | 故障検知・処置対応表 SSD-FDIR-ORB-001 への参照を注記（Rev. AP） |
| Rev. B | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
