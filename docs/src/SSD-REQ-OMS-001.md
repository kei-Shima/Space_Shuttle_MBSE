# 軌道制御系（OMS）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-OMS-001 |
| 表題 | 軌道制御系（OMS）要求書（L2） |
| 版・日付 | Rev. A／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

OMSに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、OMSの機能説明書（SSD-FD-OMS-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 |
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-13 | 打上げ前の計画と飛行中の延長の決定のときに、2日の延長日（着陸地の天候に1日、系統のウェーブオフに1日）の消耗品を確保すること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |
| REQ-SYS-17 | 着陸重量を、EOM で 233,000 lb、アボートで軌道傾斜角に応じた 239,000〜248,000 lb の認定限界以下にすること。 |

## 4. OMS要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-OMS-01 | 各 OMS エンジンは 6,087 lb の推力を出し、1,000回の始動と累積15時間の噴射ができること。 | 6,087 lb、始動 1,000回・15時間 | 各OMSエンジンの推力は6,087 lbで、典型的な機体重量では2基で約2 ft/s²（0.06 g）の加速度を生じ、満載のタンクを使い切ると約1,000 ft/sの速度変化が得られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643）各OMSエンジンは1,000回の始動と累積15時間の噴射ができ、噴射の最短時間は2秒である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） | REQ-SYS-02・REQ-SYS-04 | F-OMS-ENG-01・F-OMS-ENG-02・F-OMS-ENG-05・F-OMS-ENG-06・F-OMS-ENG-07 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | D（実証） |
| REQ-OMS-02 | 推進薬弁は燃料・酸化剤とも2個を直列に持って漏れに冗長に備え、噴射後は窒素で燃焼室と噴射器をパージすること。 | 直列 2個、停止 0.36 秒後にパージ | 二元推進薬弁組立は燃料弁2個と酸化剤弁2個をそれぞれ直列に持ち、漏れに対する冗長な防護となる一方、推進薬を流すには直列の両方の弁が開く必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643）噴射が終わると自動の噴射シーケンスにより、推力停止の0.36秒後に直列2個のパージ弁が開いて窒素が燃焼室と噴射器を2秒間吹き抜け、残った燃料を除いて安全な再始動を可能にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649） | REQ-SYS-10 | F-OMS-ENG-03・F-OMS-ENG-04・F-OMS-ENG-08・F-OMS-ENG-09・F-OMS-ENG-10 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | A（解析） |
| REQ-OMS-03 | 冗長管理ソフトウェアでエンジンの故障を検知し、燃料噴射器温度と入口圧の限界でエンジンを守ること。 | 燃料噴射器温度 260°F | エンジンの故障検知は冗長管理ソフトウェアが行い、PASSは速度比較（MECO後のみ）と燃焼室圧比較を、BFSは燃焼室圧比較だけを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/662）燃料噴射器温度が260°Fを超え、燃料入口圧がエンジンの製造番号（101〜117）ごとに定めた上限以上であれば、ボール弁より下流の燃料の閉塞としてエンジンを喪失とする（A6-3C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1132） | REQ-SYS-10 | F-OMS-ENG-11・F-OMS-ENG-12・F-OMS-ENG-13 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | D（実証） |
| REQ-OMS-04 | 1基のヘリウムタンクで燃料と酸化剤のタンクを同じ圧力に加圧し、並列の弁・二重の調圧器・直並列の逆止弁で冗長な加圧経路を持つこと。 | 一次調圧 252〜262 psig | 1基のヘリウムタンクが燃料タンクと酸化剤タンクの両方を加圧するため両タンクが同じ圧力に保たれて混合比の誤りが避けられ、ヘリウムタンクの使用圧力範囲は4,800〜390 psiaである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649）ヘリウム圧力弁A・Bは並列でヘリウムの冗長な経路となり、ばねで閉・ソレノイドで開く弁で、噴射以外は閉じておき、スイッチがGPC位置なら自動の噴射シーケンスが噴射の開始時に開き終了時に閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650）逆止弁組立は4個の独立した逆止弁を直並列につないだもので、並列の経路がヘリウムの冗長な経路を、直列が逆流に対する冗長な防護を与え、各組立の入口にフィルタがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） | REQ-SYS-10 | F-OMS-HE-01・F-OMS-HE-02・F-OMS-HE-04・F-OMS-HE-05・F-OMS-HE-06・F-OMS-HE-07・F-OMS-HE-08・F-OMS-HE-09 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | A（解析） |
| REQ-OMS-05 | 両ポッドの OMS 推進薬で、65,000 lb のペイロードを積んだオービタに 1,000 ft/s の速度変化を与えられること。 | 1,000 ft/s（ペイロード 65,000 lb） | 両ポッドのOMS推進薬で、65,000 lbのペイロードを積んだオービタに1,000 ft/sの速度変化を与えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） | REQ-SYS-02 | F-OMS-PSD-01・F-OMS-PSD-02・F-OMS-PSD-03・F-OMS-PSD-12 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | A（解析） |
| REQ-OMS-06 | 無重量下でもガスを含まない推進薬をエンジンへ送る取得装置を持ち、タンク圧を公称 250 psi・最大 313 psia 以下に保つこと。 | 公称 250 psi・最大 313 psia | 後端の推進薬取得・保持組立は前後室を仕切るメッシュスクリーンと取得装置から成り、無重量下ではスクリーンの表面張力が後室に推進薬を保持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652）推進薬タンクの公称の使用圧力は250 psi、最大使用圧力の限界は313 psiaである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652） | REQ-SYS-02 | F-OMS-PSD-04・F-OMS-PSD-05・F-OMS-PSD-06・F-OMS-PSD-07・F-OMS-PSD-08・F-OMS-PSD-09・F-OMS-PSD-11 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | D（実証） |
| REQ-OMS-07 | クロスフィード配管で一方のポッドの推進薬を他方のエンジンと両側の RCS へ送れ（インタコネクト）、ポッド間の推進薬の不均衡を正せること。 | クロスフィード弁 並列 2個／配管 | 一方のポッドのOMSエンジンに他方のポッドの推進薬を送ることをOMSクロスフィードといい、ポッド間の推進薬重量の均衡を取るときや、エンジンまたはタンクが故障したときに行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655）OMSクロスフィード、RCSクロスフィード、OMS－RCSインタコネクトには同じクロスフィード配管を使い、RCSクロスフィード弁がRCSの推進薬配管をこの配管につなぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656）インタコネクトは通常1つのOMSポッドが両側のRCSに供給するもので軌道上では手動で組まれ、最も重要な用途は上昇アボートで、そのときは自動で組まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656） | REQ-SYS-10・REQ-SYS-15 | F-OMS-XFD-01・F-OMS-XFD-02・F-OMS-XFD-03・F-OMS-XFD-04・F-OMS-XFD-05・F-OMS-XFD-06・F-OMS-XFD-09・F-OMS-XFD-10 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | D（実証） |
| REQ-OMS-08 | OMS エンジンを冗長な2台の電動機を持つアクチュエータでジンバルさせ、推力を重心に向けること。 | ピッチ ±6°・ヨー ±7° | 1基で噴射するときは推力を重心に向け、2基のときは両方の推力をX軸に平行にし、1基の噴射ではRCSによるロール制御が必要になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643）各アクチュエータは冗長な2台のブラシレス直流電動機と歯車列、1本のジャッキねじとナットチューブ、冗長な直線位置フィードバック変換器を持ち、一次・二次の駆動系は分離されて同時には運転されない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660）ジンバルの可動範囲はピッチ±6°・ヨー±7°である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671） | REQ-SYS-10 | F-OMS-TVC-01・F-OMS-TVC-02・F-OMS-TVC-03・F-OMS-TVC-04・F-OMS-TVC-05・F-OMS-TVC-06・F-OMS-TVC-07・F-OMS-TVC-10 | PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | A（解析） |
| REQ-OMS-09 | 冗長なヒータで OMS の推進薬を 40〜100°F、クロスフィード配管を 40〜125°F に保つこと。 | 推進薬 40〜100°F・配管 40〜125°F | OMSの推進薬の温度が40°F未満か100°F超になると推進薬タンクを喪失とし、これは安全に始動・運転できることが分かっているエンジンの設計仕様の範囲である（A6-2C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1128）クロスフィード配管の温度が40°F未満か125°F超になるとクロスフィード配管を喪失とし、30°F未満では酸化剤が凍って配管を破損・閉塞するおそれがある（A6-6A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1137）推進薬を含む機器を守る重要なヒータ回路はすべて冗長で、AとBの両方を失って姿勢でも熱の限界を保てなければ、次のPLSで突入する（A6-252）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231） | REQ-SYS-10 | F-OMS-THM-01・F-OMS-THM-02・F-OMS-THM-03・F-OMS-THM-05・F-OMS-THM-06・F-OMS-THM-07・F-OMS-THM-10 | PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-OMS-10 | OMS エンジンを1基失っても、残る OMS エンジンと RCS の +X ジェットで軌道離脱でき、エンジン2基の喪失などでは OMS/RCS の Go/No-Go 基準で次の PLS を判断すること。 | 軌道離脱手段 2（1基喪失後） | 1基のOMSエンジンを失った場合は残るOMSエンジンとRCSの+Xジェット4基が残り2つの軌道離脱手段となり、+Xジェットを噴射したことがなければEOMまで続ける前に試験噴射する（A6-107B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1210）OMS/RCSのGo/No-Go基準では、OMSエンジン2基の喪失、推進薬タンク1基の漏れ、入口配管1本の漏れ、クロスフィードの2流路の喪失が次のPLSで突入する理由になる（A6-1001）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285） | REQ-SYS-10・REQ-SYS-14 | F-OMS-OPS-09・F-OMS-OPS-10・F-OMS-OPS-11 | PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入） | A（解析） |
| REQ-OMS-11 | OMS の推進薬は、軌道離脱の延期日などのレッドラインを残し、着陸時は各ポッド 22% 以下として重心を管理すること。 | 着陸時 各ポッド ≦ 22% | OMSのレッドラインはタンク内に捕捉される644 lb、分散、急角度の軌道離脱のΔV、軌道離脱の延期日（156 lb）、エンジン故障（106 lb）などを確保し、違反して推進薬の融通もできなければ次のPLSで軌道離脱する（A6-303A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1249）着陸時のOMS推進薬は各ポッド22%以下とし、1,000 lb（約8%）のOMS推進薬はX方向の重心を1.5インチ後方へ、Y方向を0.5インチ左右へ動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671） | REQ-SYS-13・REQ-SYS-17 | F-OMS-OPS-06・F-OMS-OPS-07・F-OMS-OPS-08 | PH-3（軌道）・PH-6（再突入） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

OMSの機能説明書 8 件の機能行 93 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 61 件が要求から参照され、32 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-OMS-001 | F-OMS-01 | OMSは、軌道投入、軌道の円化、軌道遷移、ランデブ、軌道離脱のための推力を供給し、各OMSポッドはRCSへ1,000 lb以上の推進薬を供給できる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-OMS-001 | F-OMS-02 | OMSは後部胴体の両側にある独立した2つのポッドに収められ、ポッドには後部RCSも同居する（OMS/RCSポッド）。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-OMS-001 | F-OMS-03 | 各ポッドにOMSエンジン1基と推進薬の加圧・貯蔵・分配機器があり、OMSエンジン1基だけでも噴射でき、左右のポッドを結ぶクロスフィード配管で一方のポッドの推進薬を他方のポッドのエンジンへ送れる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-OMS-001 | F-OMS-04 | 燃料はモノメチルヒドラジン、酸化剤は四酸化二窒素で、ヘリウムで加圧されて供給され、接触すると着火する（ハイパーゴリック）。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-OMS-001 | F-OMS-05 | 各OMSエンジンの推力は6,087 lbである。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-OMS-001 | F-OMS-06 | 軌道離脱噴射の目標データは地上で計算され、アップリンクで機上のGPCに格納される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-01 | 各OMSエンジンの推力は6,087 lbで、典型的な機体重量では2基で約2 ft/s²（0.06 g）の加速度を生じ、満載のタンクを使い切ると約1,000 ft/sの速度変化が得られる。 | REQ-OMS-01 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-02 | 各OMSエンジンは1,000回の始動と累積15時間の噴射ができ、噴射の最短時間は2秒である。 | REQ-OMS-01 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-03 | 二元推進薬弁組立は燃料弁2個と酸化剤弁2個をそれぞれ直列に持ち、漏れに対する冗長な防護となる一方、推進薬を流すには直列の両方の弁が開く必要がある。 | REQ-OMS-02 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-04 | ボール弁はばねで閉に保たれた空気圧ピストンで開閉され、GPCの指令で動くソレノイド式の制御弁がピストンへの窒素の流れを制御し、2個の制御弁が両方働かないとボール弁は開かない。 | REQ-OMS-02 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-05 | 燃料は燃焼室を囲む冷却ジャケットを通って燃焼室を冷やしてから噴射器に達し、酸化剤は二元推進薬弁から噴射器へ直接送られる。 | REQ-OMS-01 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-06 | 燃料噴射器温度は冷却ジャケットを出た燃料の温度で燃焼室壁の温度を間接的に示し、噴射中は約218°F、安全な運転の限界は260°Fである。 | REQ-OMS-01 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-07 | 噴射していないときのエンジン入口圧は推進薬タンク圧（通常254 psi）に一致し、噴射中は燃料が約220〜235 psi、酸化剤が約200〜206 psiに下がり、入口圧は推進薬流量の間接的な指標となる。 | REQ-OMS-01 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-08 | GN2系は各エンジンの燃焼室の脇にある球形のタンク（ボール弁の作動とパージ10回分）から、圧力隔離弁・調圧器・逆止弁・アキュムレータを経て制御弁とパージ弁へ窒素を送る。 | REQ-OMS-02 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-09 | 調圧器はタンク圧（最大3,000 psig）を作動圧315〜360 psigに下げ、19立方インチのアキュムレータは圧力隔離弁が閉じていても少なくとも1回はボール弁を作動させられる。 | REQ-OMS-02 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-10 | 噴射が終わると自動の噴射シーケンスにより、推力停止の0.36秒後に直列2個のパージ弁が開いて窒素が燃焼室と噴射器を2秒間吹き抜け、残った燃料を除いて安全な再始動を可能にする。 | REQ-OMS-02 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-11 | エンジンの故障検知は冗長管理ソフトウェアが行い、PASSは速度比較（MECO後のみ）と燃焼室圧比較を、BFSは燃焼室圧比較だけを使う。 | REQ-OMS-03 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-12 | 燃料噴射器温度が260°Fを超え、燃料入口圧がエンジンの製造番号（101〜117）ごとに定めた上限以上であれば、ボール弁より下流の燃料の閉塞としてエンジンを喪失とする（A6-3C）。 | REQ-OMS-03 | — |
| SSD-FD-OMS-ENG-001 | F-OMS-ENG-13 | SODBは安全なエンジン運転の最低高度を70,000 ftとし、通常運用での噴射間の最小休止時間を240秒とする。 | REQ-OMS-03 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-01 | 各ポッドのヘリウム加圧系は、高圧ヘリウムタンク、ヘリウム圧力隔離弁2個、二重調圧器組立2組、酸化剤タンク側だけの並列の蒸気隔離弁、直並列の逆止弁組立、逃し弁から成る。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-02 | 1基のヘリウムタンクが燃料タンクと酸化剤タンクの両方を加圧するため両タンクが同じ圧力に保たれて混合比の誤りが避けられ、ヘリウムタンクの使用圧力範囲は4,800〜390 psiaである。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-03 | 推進薬の残量が最大ブローダウン（OMSタンクで約39%）を下回ると、タンク内に残ったヘリウムの圧力だけでそのタンクの推進薬を使い切ることができる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-04）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-HE-001 | F-OMS-HE-04 | ヘリウム圧力弁A・Bは並列でヘリウムの冗長な経路となり、ばねで閉・ソレノイドで開く弁で、噴射以外は閉じておき、スイッチがGPC位置なら自動の噴射シーケンスが噴射の開始時に開き終了時に閉じる。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-05 | 圧力弁を手動で開くときはAとBの間に2秒置き、急な圧力変化によるウォータハンマを防ぐ。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-06 | 各調圧器組立は流量制限器と直列の一次・二次の調圧器を持ち、通常は一次（正常流量で252〜262 psig）が制御し、一次が故障すると二次（259〜269 psig）が圧力制御を続ける。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-07 | 酸化剤タンクへの加圧配管の蒸気隔離弁は、逆止弁を透過した酸化剤の蒸気が上流へ移って燃料系に入り、ハイパーゴリック反応を起こすのを防ぐ。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-08 | 逆止弁組立は4個の独立した逆止弁を直並列につないだもので、並列の経路がヘリウムの冗長な経路を、直列が逆流に対する冗長な防護を与え、各組立の入口にフィルタがある。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-09 | 逆止弁の下流の逃し弁は推進薬タンクを過圧から守り、破裂板は303〜313 psigで破れ、逃し弁は286 psigで開いて280 psigで再着座する。 | REQ-OMS-04 | — |
| SSD-FD-OMS-HE-001 | F-OMS-HE-10 | ヘリウムタンク圧が390 psia未満になるか、すべての加圧経路が閉じた場合は、ヘリウムタンクを喪失とする（A6-1）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-04）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-HE-001 | F-OMS-HE-11 | 漏れているヘリウム系は、ヘリウムタンク圧が正常な推進薬タンク圧を保てる限り、両エンジンへの供給に使ってアレージ容積を増やしてよい（A6-202）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-04）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-HE-001 | F-OMS-HE-12 | IOA（1988年）は、並列の一方の圧力弁の流れの制限は両弁を開くOMS-1・OMS-2では検出できないが、発射台での予圧とOMS-2以後の噴射では弁を単独で使うため検出できるとして指摘を取り下げた。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-04）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-01 | 6 fps未満の速度変化にはRCSを使い、6 fpsを超える場合はエンジンの寿命の点で始動回数を減らすため1基の噴射が好まれ、大きな速度変化や重要な噴射には2基を使う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-11・REQ-OMS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-02 | OMS噴射はMM 104、105、202、302でのみ行え、OMSの推進薬投棄はMM 102、103、304、601、602で行える。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-11・REQ-OMS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-03 | 乗員はMNVR表示で2基・1基・RCSを選び、PEG 4またはPEG 7の目標を入れて誘導に噴射解を計算させ、点火の15秒前に点滅するEXECの表示でEXECキーを押して点火を許可する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-11・REQ-OMS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-04 | 噴射シーケンスは選ばれたエンジンに応じてヘリウム蒸気隔離弁とGN2制御弁を開く指令を出し、エンジン故障フラグを監視して、乗員がOMS ENGスイッチをOFFにして故障を確認すると停止指令を出す。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-11・REQ-OMS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-05 | 軌道上のOMS噴射の準備ではOMS/MPS表示でヘリウムタンク圧が1,500 psiaを超え、N2タンク圧が564 psiaを超えることを確かめ、限界内でなければ噴射しない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-11・REQ-OMS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-06 | OMSのレッドラインはタンク内に捕捉される644 lb、分散、急角度の軌道離脱のΔV、軌道離脱の延期日（156 lb）、エンジン故障（106 lb）などを確保し、違反して推進薬の融通もできなければ次のPLSで軌道離脱する（A6-303A）。 | REQ-OMS-11 | — |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-07 | OMSの推進薬は左右のポッドの不均衡でY方向の重心のずれをゼロにするよう管理され、インタコネクトの予定は軌道離脱の前の重心を改善するために変更できる（A6-353B）。 | REQ-OMS-11 | — |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-08 | 着陸時のOMS推進薬は各ポッド22%以下とし、1,000 lb（約8%）のOMS推進薬はX方向の重心を1.5インチ後方へ、Y方向を0.5インチ左右へ動かす。 | REQ-OMS-11 | — |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-09 | OMSの故障管理（A6-51）は、ヘリウムタンク・ヘリウムレグ・GN2タンク・GN2アキュムレータ・推進薬タンク・入口配管・エンジンの1〜2箇所の漏れや故障について、上昇の段階ごとの処置と噴射の構成（2基2ポッドTETP、1基良好ポッドSEGPなど）を定める。 | REQ-OMS-10 | — |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-10 | 1基のOMSエンジンを失った場合は残るOMSエンジンとRCSの+Xジェット4基が残り2つの軌道離脱手段となり、+Xジェットを噴射したことがなければEOMまで続ける前に試験噴射する（A6-107B）。 | REQ-OMS-10 | — |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-11 | OMS/RCSのGo/No-Go基準では、OMSエンジン2基の喪失、推進薬タンク1基の漏れ、入口配管1本の漏れ、クロスフィードの2流路の喪失が次のPLSで突入する理由になる（A6-1001）。 | REQ-OMS-10 | — |
| SSD-FD-OMS-OPS-001 | F-OMS-OPS-12 | OMS噴射中は44.8 kbpsの高速GNCダウンリストが必要で、OMSのPcや入口圧など故障モードの判定に要る値は低速のダウンリストにないためである（A6-103）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-11・REQ-OMS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-01 | 推進薬貯蔵・分配系は各ポッドの燃料タンク1基と酸化剤タンク1基、推進薬供給配管、クロスフィード配管、隔離弁、クロスフィード弁から成る。 | REQ-OMS-05 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-02 | 両ポッドのOMS推進薬で、65,000 lbのペイロードを積んだオービタに1,000 ft/sの速度変化を与えられる。 | REQ-OMS-05 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-03 | 燃料と酸化剤は各ポッド内のドーム付き円筒形のチタン製タンクに貯蔵され、タンクはヘリウム系で加圧され、内部は前室と後室に分かれる。 | REQ-OMS-05 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-04 | 後端の推進薬取得・保持組立は前後室を仕切るメッシュスクリーンと取得装置から成り、無重量下ではスクリーンの表面張力が後室に推進薬を保持する。 | REQ-OMS-06 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-05 | 取得装置は4本のスタブギャラリとコレクタマニホールドから成り、コレクタのガス阻止スクリーンがガスの吸込みを防ぐため、RCSによる推進薬の沈降操作なしにOMSエンジンを点火できる。 | REQ-OMS-06 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-06 | 推進薬タンクの公称の使用圧力は250 psi、最大使用圧力の限界は313 psiaである。 | REQ-OMS-06 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-07 | 各タンクの静電容量式の計測系は前後のプローブとトータライザから成り、トータライザはOMS弁の動作情報からどのエンジンがどのタンクで噴射しているかを判断して、全量・後室量・低レベルの信号を出す。 | REQ-OMS-06 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-08 | トータライザは噴射開始から14.8秒間は既定の流量で表示量を減じてからプローブの出力で更新し、残量が5%に下がると低レベル信号を出す。 | REQ-OMS-06 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-09 | タンク隔離弁A・Bは各ポッドで推進薬タンクとエンジン・クロスフィード弁の間に並列に置かれ、三相（2相でも可）の交流モータで駆動され、パネルO8のLEFT・RIGHT OMS TANK ISOLATIONスイッチ（OPEN・GPC・CLOSE）で制御される。 | REQ-OMS-06 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-10 | 弁が指令位置に達すると電動機制御組立の論理が弁アクチュエータの電力を切り、各スイッチの上のトークバックは弁のマイクロスイッチにより開・過渡（バーバーポール）・閉を示す。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-05・REQ-OMS-06）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-11 | 後室量が11%未満でスクリーンが露出しているときは、ヘリウムの吸込みを防ぐため、OMSエンジンを再始動する前にRCSの+Xジェット2基で15秒の沈降噴射を行う（A6-102）。 | REQ-OMS-06 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-12 | 打上げ時の搭載量はポッドあたり燃料2,038〜4,711.5 lb・酸化剤3,362〜7,743.5 lbの範囲とし、TAEMインタフェースでは酸化剤1,707 lb・燃料1,032 lb未満（搭載量の約22%）とする。 | REQ-OMS-05 | — |
| SSD-FD-OMS-PSD-001 | F-OMS-PSD-13 | STS-114では最初の打上げ試行の後に電源を再投入するとトータライザの出力が既知の特性どおり無作為な値となり、5%未満の表示で警報が出たが、OMSアシストの14秒後にプローブから正しい値に更新された。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-05・REQ-OMS-06）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-THM-001 | F-OMS-THM-01 | OMSの熱制御はOMS機器を囲むポッド内面のストリップヒータと断熱材で行い、クロスフィード配管は巻付けヒータと断熱材で調整され、ヒータがタンクと配管の推進薬の凍結を防ぐ。 | REQ-OMS-09 | — |
| SSD-FD-OMS-THM-001 | F-OMS-THM-02 | 各OMS/RCSポッドは8つのヒータ区域に分かれ、各区域のA・B素子は素子ごとのサーモスタットで55〜75°Fに制御され、パネルA14のRCS/OMS HEATERS LEFT POD・RIGHT PODのA AUTO・B AUTOスイッチで操作される。 | REQ-OMS-09 | — |
| SSD-FD-OMS-THM-001 | F-OMS-THM-03 | 後部胴体のクロスフィード配管は11のヒータ区域に分かれ、各区域をA・B系統が並列に加熱して制御サーモスタットが55〜75°Fに保ち、各回路には故障して入りっぱなしのヒータに備える過温度サーモスタットがある。 | REQ-OMS-09 | — |
| SSD-FD-OMS-THM-001 | F-OMS-THM-04 | ポッド内とクロスフィード配管のサーモスタット付近の温度センサの値は、SM SPEC 89 PRPLT THERMAL表示（POD・OMS CRSFDの項目）とテレメトリに送られる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-09）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-THM-001 | F-OMS-THM-05 | OMSの推進薬の温度が40°F未満か100°F超になると推進薬タンクを喪失とし、これは安全に始動・運転できることが分かっているエンジンの設計仕様の範囲である（A6-2C）。 | REQ-OMS-09 | — |
| SSD-FD-OMS-THM-001 | F-OMS-THM-06 | クロスフィード配管の温度が40°F未満か125°F超になるとクロスフィード配管を喪失とし、30°F未満では酸化剤が凍って配管を破損・閉塞するおそれがある（A6-6A）。 | REQ-OMS-09 | — |
| SSD-FD-OMS-THM-001 | F-OMS-THM-07 | ポッドのヒータはA・Bのパッチが重ねて貼られて両方を入れると剥離のおそれがあるため同時には使わず、クロスフィード配管のヒータはA・B回路を1本に巻いたもので両方を同時に入れられる（A6-251A）。 | REQ-OMS-09 | — |
| SSD-FD-OMS-THM-001 | F-OMS-THM-08 | 上昇中（OPS 1）はポッドのヒータをすべて切り（ポッドは打上げ前に高温のGN2で温められる）、突入のための着席時からもポッドのヒータは切っておく（A6-254B・C）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-09）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-THM-001 | F-OMS-THM-09 | クロスフィード配管のヒータは軌道上では一方（AかB）を入れ、突入のための着席時からはA・B両方を入れて突入中も入れたままにする（A6-255B・C）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-09）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-THM-001 | F-OMS-THM-10 | 推進薬を含む機器を守る重要なヒータ回路はすべて冗長で、AとBの両方を失って姿勢でも熱の限界を保てなければ、次のPLSで突入する（A6-252）。 | REQ-OMS-09 | — |
| SSD-FD-OMS-THM-001 | F-OMS-THM-11 | 故障処置手順（MAL 11.3）は、SPEC 89やBFS THERMAL表示の限界外れに対してA14でもう一方のヒータ・サーモスタット回路へ切り替えて切り分け、ポッドでA・B回路を同時に使うとヒータが焼損すると注意する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-09）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-THM-001 | F-OMS-THM-12 | STS-114では左上部Yウェブの構造温度がSRB点火時から不規則な指示となり（IFA STS-114-V-03）、ヒータの性能は冗長な計測で監視された。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-09）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-01 | OMSエンジンはジンバル架台に取り付けられ、2基の電気機械式アクチュエータでヨーとピッチに振られ、デジタルオートパイロットまたは手動操縦の指令で推力の向きを制御して噴射中の機体を操舵する。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-02 | 1基で噴射するときは推力を重心に向け、2基のときは両方の推力をX軸に平行にし、1基の噴射ではRCSによるロール制御が必要になる。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-03 | TVC系はジンバルリング組立、ジンバルアクチュエータ組立2組、ジンバルアクチュエータ制御器2台から成る。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-04 | 各アクチュエータは冗長な2台のブラシレス直流電動機と歯車列、1本のジャッキねじとナットチューブ、冗長な直線位置フィードバック変換器を持ち、一次・二次の駆動系は分離されて同時には運転されない。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-05 | 一次の電子制御器からのGPCの位置指令で一次の直流電動機が動き、一次が働かないときは二次の電子制御器からの指令で二次の電動機が動き、各駆動系のノーバック装置が待機系の逆駆動を防ぐ。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-06 | 作動・待機の制御チャネルの電気インタフェース・電源・電子制御要素は別々の筐体（作動・待機アクチュエータ制御器）に収められてOMS/RCSポッドの構造に取り付けられ、両者は電気的・機械的に互換である。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-07 | ジンバルの可動範囲はピッチ±6°・ヨー±7°である。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-08 | TVC指令SOPはピッチ・ヨーのアクチュエータ指令とアクチュエータ電源選択の離散信号を出し、OMS-1・OMS-2、軌道巡航、軌道離脱、軌道離脱巡航、RTLSアボート（MM 104、105、201、301、302、303、601）で働く。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-09 | 乗員はMNVR表示の項目入力（PRI 28・29、SEC 30・31）でピッチ・ヨーのアクチュエータの一次・二次の電動機を選ぶか、電動機を切ることができる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-10 | ジンバルの故障検知は動くべきときに閾値以上動いたかを確かめ、故障の計数がIロード値の4に達するとアクチュエータを故障と宣言し、乗員はMNVR表示の項目入力で二次のアクチュエータ電子回路を選ぶ。 | REQ-OMS-08 | — |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-11 | OMS TVCにはFF MDMからのイネーブル離散信号とFA MDMからの指令が必要である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-TVC-001 | F-OMS-TVC-12 | 上昇中の高動圧域でTVCの動きが2つの情報源で確認された場合は、エンジンベルが空力で損傷したおそれがあるため、アボートの推進薬投棄を含むすべての用途でそのエンジンを故障とし、OMS ENGスイッチを直ちにOFFにする（A6-101A）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-08）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-01 | 一方のポッドのOMSエンジンに他方のポッドの推進薬を送ることをOMSクロスフィードといい、ポッド間の推進薬重量の均衡を取るときや、エンジンまたはタンクが故障したときに行う。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-02 | クロスフィード配管はタンク隔離弁と二元推進薬弁の間で左右のOMS推進薬配管を結び、各配管には並列2個のクロスフィード弁があって推進薬の冗長な流路となる。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-03 | クロスフィードを組むときは受け側のタンク隔離弁を閉じ（左右のタンクは通常は直接つながない）、供給側と受け側のクロスフィード弁を開いて一方のタンクから他方のエンジンへの流路を作る。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-04 | OMSクロスフィード、RCSクロスフィード、OMS－RCSインタコネクトには同じクロスフィード配管を使い、RCSクロスフィード弁がRCSの推進薬配管をこの配管につなぐ。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-05 | インタコネクトはRCSタンク隔離弁を閉じてRCSクロスフィード弁を開いた後にOMSクロスフィード弁の1個（B弁）を開き、非供給側のOMSクロスフィード弁を閉じたままにする順序で組み、OMSとRCSのタンクが直接つながるのを防ぐ。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-06 | インタコネクトは通常1つのOMSポッドが両側のRCSに供給するもので軌道上では手動で組まれ、最も重要な用途は上昇アボートで、そのときは自動で組まれる。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-07 | RCSタンクはOMSエンジンが必要とする流量を支えられないため、後部RCSからOMSへ推進薬を送ることはない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-08 | クロスフィード配管の圧力変換器は計測誤差（34 psia）が大きいため、軌道上ではRCSマニホールドの圧力でクロスフィード配管の状態を確かめてからタンクから再加圧し、酸化剤49 psia・燃料35 psia未満なら配管を故障とする（A6-61B）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-09 | 軌道上のインタコネクトはORBITAL DAPでFREEを選んでから、パネルO7で後部RCSタンク隔離弁を閉じてRCSクロスフィード弁を開き、O8で供給側のOMSクロスフィード弁Bを開いて、SPEC 23のOMS PRESS ENAで計量を始める手順で組む。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-10 | インタコネクト中のOMS推進薬の使用量はRCSジェットの作動回数から噴射時間の積分で求められ、計量シーケンスが左右のOMS推進薬の累計を保持する。 | REQ-OMS-07 | — |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-11 | OMSタンクを自動で再加圧するソフトウェアもあるが、OMSやRCSの漏れに推進薬を送り続けるため通常は使わない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-12 | SODBは、OMS－RCSインタコネクトを上昇アボート（正の+X沈降力がある場合）、OMS噴射中、軌道上の運用に限り、加速度や推進薬量が制約を外れる突入の段階では認めない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-07）が受け持つ構成・運用の記述。 |
| SSD-FD-OMS-XFD-001 | F-OMS-XFD-13 | 推進薬が故障したときの混合クロスフィード（OMS SSR-1）では、メモリの読み書きでタンク隔離弁とクロスフィード弁の指令を設定し、使えるタンクを反対側のエンジンにつなぐ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-OMS-07）が受け持つ構成・運用の記述。 |

## 6. 要求から参照されない機能行

要求から参照されない機能行 32 件のうち、32 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-OMS-001 | 6 | 0 | 6 | 0 |
| SSD-FD-OMS-ENG-001 | 13 | 13 | 0 | 0 |
| SSD-FD-OMS-HE-001 | 12 | 8 | 4 | 0 |
| SSD-FD-OMS-OPS-001 | 12 | 6 | 6 | 0 |
| SSD-FD-OMS-PSD-001 | 13 | 11 | 2 | 0 |
| SSD-FD-OMS-THM-001 | 12 | 7 | 5 | 0 |
| SSD-FD-OMS-TVC-001 | 12 | 8 | 4 | 0 |
| SSD-FD-OMS-XFD-001 | 13 | 8 | 5 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（11件のうち根拠あり 11件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-OMS-01 | D（実証） | 根拠あり | PDF p45：左ポッド04・エンジンS/N 108、右ポッド01・エンジンS/N 109の構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| REQ-OMS-02 | A（解析） | 根拠あり | OMS-248・322・330（PDF p752・765・766）：エンジン入口フィルタ、GN2アキュムレータ、エンジン制御弁の評価を示す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=752） |
| REQ-OMS-03 | D（実証） | 根拠あり | PDF p42：右エンジンS/N 109（改修後12回目の飛行）と左エンジンS/N 108の構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| REQ-OMS-04 | A（解析） | 根拠あり | OMS-111・119・121・127（PDF p729〜735）：ヘリウム隔離弁・調圧器の流れの制限と、酸化剤の蒸気隔離弁の評価を示す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=731） |
| REQ-OMS-05 | A（解析） | 根拠あり | PDF p41：電源の再投入後にトータライザの出力が無作為な値となる既知の特性を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |
| REQ-OMS-06 | D（実証） | 根拠あり | OMS節（PDF p45）：搭載量と、後室計・噴射時間の積分・SODBの流量による残量の比較を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| REQ-OMS-07 | D（実証） | 根拠あり | OMS節（PDF p27）：OMS推進薬23,313 lbmのうち2,188.8 lbmをインタコネクトでRCSへ供給したことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| REQ-OMS-08 | A（解析） | 根拠あり | OMS-363・367（PDF p768〜769）：ジンバルリング軸受とACMEねじの故障でエンジンが位置を外れた場合のRCSの消費を評価する。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=769） |
| REQ-OMS-09 | D（実証） | 根拠あり | PDF p42：左上部Yウェブの構造温度の不規則な指示（IFA STS-114-V-03）と冗長な計測による監視を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| REQ-OMS-10 | A（解析） | 根拠あり | C.26節（PDF p95）：OMSの解析はハードウェア284件・EPD&C 667件の故障モードのワークシートから成り、NASAの基準との比較で残った課題を示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95） |
| REQ-OMS-11 | A（解析） | 根拠あり | OMS節（PDF p43）：OMSは正常に機能して飛行中の異常はなく、OMS-2以後の噴射の構成とΔVを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=43） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p649） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649
3. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p662） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/662
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-3 OMS ENGINE（PDF p1132） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1132
5. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p650） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650
6. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p651） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651
7. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p652） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/652
8. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p655） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655
9. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p656） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656
10. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p660） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660
11. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p671） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-2 OMS PROPELLANT TANK (OXIDIZER OR FUEL)（PDF p1128） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1128
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-6 OMS/RCS CROSSFEED LINE（PDF p1137） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1137
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-252 OMS/RCS POD HEATER（PDF p1231） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-107 OMS ENGINE FAILURE MANAGEMENT（PDF p1210） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1210
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-1001 OMS/RCS Go/No-Go Criteria（PDF p1285） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1285
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-303 OMS REDLINES [CIL]（PDF p1249） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1249
18. STS-122 Mission Report Orbital Maneuvering System（OMS Propellant Loading Data）（PDF p45） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45
19. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.17-26 OMS-248 Engine Inlet Filter and Orifice（PDF p752） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=752
20. STS-135 Mission Report Orbital Maneuvering System（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42
21. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.17-5 OMS-119 Regulator Assembly, Helium Pressure（PDF p731） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=731
22. STS-114 Mission Report Orbital Maneuvering System（PDF p41） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=41
23. STS-108 Mission Report Power Reactant Storage and Distribution（PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=27
24. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.17-43 OMS-367 ACME Screw/Nut Tube（PDF p769） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=769
25. STS-114 Mission Report Orbital Maneuvering System（続き）（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=42
26. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.25 Main Propulsion System（PDF p95） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=95
27. NSTS-37452 STS-125 Mission Report（2010） Orbital Maneuvering System（PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=43

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 11件、機能行 93件とのトレース、検証の根拠） |
| Rev. A | 2026-10-07 | 上位の要求 REQ-SYS-13 の文を改めた（Rev. BG の要求の値の見直し）（Rev. BG） |
