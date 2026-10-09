# 解析定義書（CO2 除去のトレード・質量特性・Δv・故障の木）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-ANA-ORB-001 |
| 表題 | 解析定義書（CO2 除去のトレード・質量特性・Δv・故障の木） |
| 版・日付 | Rev. C／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BUD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図104 CO2 除去のトレードスタディ・図105 質量特性・Δv の解析・図106 故障の木 A（28 VDC 主電力の喪失）・図107 故障の木 B（空力舵面の油圧の喪失）・図108 故障の木 C（CO2 制御の喪失） |

## 1. 目的

収支（SSD-BUD-ORB-001）とパラメトリック（SSD-PAR-ORB-001）を受けて、設計の判断に使う解析を示す。LiOH の不足（負のマージン）に対する CO2 除去のトレードスタディ、着陸重量・重心の質量特性、OMS・RCS の Δv、冗長の段階（SSD-FMEA-ORB-001）から組み立てた故障の木（28 VDC 主電力・空力舵面の油圧・CO2 制御）である。同じ値・式・論理を SysML v2 のテキスト（SysML/SSD-ANA-ORB-001.sysml）でも示す。

## 2. 書き方

値は一次資料の頁から取り、資料に無い値は「資料に無い」とした（推定で埋めない）。計算の値は本書の生成の中で計算し直し、調査の値と照らした（§7）。故障の木のゲートの論理は、運用飛行規則に書かれたもの（規則）と、系の構成から組み立てたもの（推定）を、ゲートの説明に区別して書いた。

## 3. CO2 除去のトレードスタディ

対象は標準ミッション 7人・10日（SSD-BUD-ORB-001）と EDO 7人・16日である。重みは付けない。TC-02（収納上限）と TC-09（可用性）は合否の制約であり、重み付きの合計で他の評価項目と相殺できないため。資料に重みの根拠も無い。

| ID | 評価項目 | 単位 | ALT-A LiOH キャニスタのみ | ALT-B RCRS（再生式 CO2 除去）＋打上げ・突入用 LiOH |
|---|---|---|---|---|
| TC-01 | 所要キャニスタ数（2日予備を含む） | 個 | 10日 42個／16日 63個：計算：10日は1,680÷48 = 35個 + 2日予備7個 = 42個、16日は2,688÷48 = 56個 + 7個 = 63個。1日あたり 7人×24時間÷48 = 3.5個（50人・時の目安では3.36個）。各 LiOH キャニスタの定格は48人・時であり、予備は最大30個をミッドデッキ床下に収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）LiOH の2日分の予備に要するキャニスタ数の目安は搭乗乗員数と同じであり、キャニスタ1個は約50人・時の CO2 除去能力を持つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）使用前の LiOH を最低2日分予備に保持し、PPCO2 は最大7.6 mmHg を守る（A17-157）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） | 9個（10日・16日とも）：計算：打上げ1個 + 突入1個 + 2日予備7個 = 9個。ほかに活性炭キャニスタ（10日以上の飛行では中間で交換）。RCRS 喪失時は予備の LiOH で EOM が決まる。RCRS は再生に真空排気を要するため上昇・再突入では使えず、RCRS 搭載機は打上げと再突入に LiOH キャニスタを1個ずつ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）LiOH の2日分の予備に要するキャニスタ数の目安は搭乗乗員数と同じであり、キャニスタ1個は約50人・時の CO2 除去能力を持つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）RCRS を失ったときは LiOH キャニスタを装着し、その数が EOM を決める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| TC-02 | 収納上限（32個）への適合 | 可否 | 否：不適合。10日は予備を含まなくても35個で3個不足（予備込みで10個不足）、16日は24〜31個不足。32個で7人なら約9.1日分（SSD-BUD-ORB-001 BUD-CON-04）。キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）各 LiOH キャニスタの定格は48人・時であり、予備は最大30個をミッドデッキ床下に収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）使用前の LiOH を最低2日分予備に保持し、PPCO2 は最大7.6 mmHg を守る（A17-157）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） | 可：適合（9個 ≤ 32個）。各 LiOH キャニスタの定格は48人・時であり、予備は最大30個をミッドデッキ床下に収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）RCRS は再生に真空排気を要するため上昇・再突入では使えず、RCRS 搭載機は打上げと再突入に LiOH キャニスタを1個ずつ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| TC-03 | LiOH キャニスタの質量 | lb | 282.7 lb：計算：10日 42個×6.73 = 282.7 lb、16日 63個×6.73 = 424.0 lb（キャニスタ質量は FOM Vol.12 の値）。LiOH キャニスタは直径6.68 in・長さ11.3 in、質量6.73 lb である（乗員系の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=554） | 60.6 lb：計算：9個×6.73 = 60.6 lb。LiOH キャニスタは直径6.68 in・長さ11.3 in、質量6.73 lb である（乗員系の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=554） |
| TC-04 | CO2 除去装置の機器質量 | lb | 0 lb：専用の機器なし（キャニスタはキャビン空気ループのオリフィスで分流した流れに置く）。キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 資料に無い：資料に無い。SCOM は RCRS が10〜16日・7人の重量と収納容積の問題を解決したとし、訓練マニュアルは期間が長いほど重量で有利とするが、RCRS 本体（ベッド2個・弁・ファン・圧縮機・制御器2台）の質量の値は無い。のちに重量の考慮で OV-105 から撤去された。EDO オービタで RCRS を使えるようにしたことで、7人までの乗員による10〜16日のミッションで生じた重量と収納容積の大きな問題が解決した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）再生式の生命維持装置は消耗式より開発費が高く運用の電力も大きいが、ミッション期間が長くなると費用と重量の両面で有利になる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）重量の考慮と ISS ミッションの短さから RCRS は OV-105 から撤去され、RCRS に対応する機体は残っていない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） |
| TC-05 | 追加の電力 | kW | 0 kW：追加なし（キャビンファンは常時運転の既存負荷）。キャビンファン自体は495 W。キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 資料に無い：資料に無い。消耗式より電力が大きいこと、ウェーブオフ日の再起動は極低温反応剤が追加電力を許す場合に限ることだけが示されている。再生式の生命維持装置は消耗式より開発費が高く運用の電力も大きいが、ミッション期間が長くなると費用と重量の両面で有利になる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）ウェーブオフ日の RCRS 再起動は極低温消耗品が追加の電力消費を許す場合に限り、通常は収納した LiOH で少なくとも2日の延長ができる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| TC-06 | 窒素・キャビン空気の消費 | lb/日 | 0 lb/日：船外への排気なし。キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 資料に無い：値は資料に無い。真空ベントのサイクルで窒素を消費し、アレッジ回収圧縮機がベッド内の空気の70〜80%を回収する（圧縮機故障では損失が増える）。RCRS の運転は船外ベントのサイクルで窒素を消費する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23）アレッジ回収圧縮機はベッド内の空気の70〜80%をキャビンへ戻し、圧縮機が故障しても RCRS は動くが、真空へ失うキャビン空気が増える。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| TC-07 | 上昇・再突入での使用 | 可否 | 可：上昇・再突入を含む全フェーズで使える（LiOH は主たる CO2 除去手段）。RCRS は再生に真空排気を要するため上昇・再突入では使えず、RCRS 搭載機は打上げと再突入に LiOH キャニスタを1個ずつ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 否：真空源が無い上昇・突入では使えないため LiOH を併用する。RCRS は再生に真空排気を要するため上昇・再突入では使えず、RCRS 搭載機は打上げと再突入に LiOH キャニスタを1個ずつ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| TC-08 | 故障時の扱い | — | 数が EOM を決める：キャニスタの数と乗員数が EOM を決め、使い切ると船外パージで約2時間しかもたない。7.6 mmHg 交換計画や使用済みキャニスタの再使用で延長できる（A17-158）。LiOH を使い切った後に残る CO2 除去の手段はキャビン空気の船外パージだけであり、7人では2時間程度しかもたない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）使用前の LiOH を最低2日分予備に保持し、PPCO2 は最大7.6 mmHg を守る（A17-157）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）RCRS を失ったときは LiOH キャニスタを装着し、その数が EOM を決める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） | 2台の制御器で冗長、喪失時は LiOH：両制御器の故障、真空ベントの閉塞、PPCO2 の把握喪失で喪失とし、火災後は手動停止（アミン床の不可逆劣化を防ぐ）。喪失時は LiOH の数が EOM を決める。RCRS を失ったときは LiOH キャニスタを装着し、その数が EOM を決める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951）PPCO2 を7.6 mmHg 未満に保てないとき、または PPCO2 の把握を失ったとき RCRS は喪失とみなし、真空ベントの閉塞や両コントローラの故障では RCRS は働かない（A17-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937）火災の燃焼生成物のうち HCl・HF・HCN は固体アミンと不可逆に反応するため、キャビンまたはアビオニクスベイの火災後は RCRS を手動停止する（A17-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）RCRS のコントローラ1は AC1 と主母線 A、コントローラ2は AC3 と主母線 C から給電される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225） |
| TC-09 | 現在の可用性 | 可否 | 可：全機で使える。キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | 否：OV-105 だけが能力を持っていたが撤去され、今後使う予定は無い。RCRS のハードウェア能力を持つのは OV-105 だけであり、ISS ドッキング中は不要で、今後は使う予定がない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）重量の考慮と ISS ミッションの短さから RCRS は OV-105 から撤去され、RCRS に対応する機体は残っていない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） |

結論：7人・10日では LiOH だけだと予備を含めて42個が要り、収納上限32個を10個超える（予備を除いても3個不足）。16日では63個で上限の約2倍となり、LiOH だけでは成立しない。RCRS なら LiOH は打上げ・突入と2日予備の9個で済み、SCOM が述べるとおり10〜16日・7人の重量と収納の問題を解く。ただし RCRS 本体の質量・電力・窒素消費の値は資料に無く、期間の損益分岐点は算出できない。RCRS は現在どの機体にも無いため、単独の標準ミッション（7人・10日）は乗員数か期間を減らす（7人なら約9日）、LiOH の追加収納、7.6 mmHg 交換計画のいずれかで成立させる必要がある。実績では STS-65（7人・14日計画）が RCRS とリストリクタ付き LiOH の併用で PPCO2 を平均2.3 mmHg に保った。なお16日の飛行は CO2 除去だけでなく反応剤も制約で、PRSD 5組では12日、8組で18日までである（EDO 改修は16＋2日を目標とした）。

- キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）
- 各 LiOH キャニスタの定格は48人・時であり、予備は最大30個をミッドデッキ床下に収納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）
- EDO オービタで RCRS を使えるようにしたことで、7人までの乗員による10〜16日のミッションで生じた重量と収納容積の大きな問題が解決した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）
- RCRS は再生に真空排気を要するため上昇・再突入では使えず、RCRS 搭載機は打上げと再突入に LiOH キャニスタを1個ずつ使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）
- RCRS の2個のベッドは13分ごとに吸着と再生を自動で切り替え、流量制御弁は乗員数「4」または「5〜7」に応じて72 lb/hr または110 lb/hr を流す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）
- RCRS のハードウェア能力を持つのは OV-105 だけであり、ISS ドッキング中は不要で、今後は使う予定がない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371）
- 再生式の生命維持装置は消耗式より開発費が高く運用の電力も大きいが、ミッション期間が長くなると費用と重量の両面で有利になる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）
- 重量の考慮と ISS ミッションの短さから RCRS は OV-105 から撤去され、RCRS に対応する機体は残っていない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）
- オービタはもともと8日間＋予備2日のミッション向けに設計され、EDO 改修で最大16＋2日に延ばした。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）
- LiOH の2日分の予備に要するキャニスタ数の目安は搭乗乗員数と同じであり、キャニスタ1個は約50人・時の CO2 除去能力を持つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）
- 使用前の LiOH を最低2日分予備に保持し、PPCO2 は最大7.6 mmHg を守る（A17-157）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）
- LiOH キャニスタは直径6.68 in・長さ11.3 in、質量6.73 lb である（乗員系の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=554）
- STS-65（OV-102、7人、14日＋予備2日の計画）では、RCRS をリストリクタ付き LiOH キャニスタで補い、15時間ごとの交換で PPCO2 を平均2.3 mmHg に保った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12）
- STS-65 は14日間＋予備2日で計画され、乗員は7人であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=7）
- シャトルの公称ミッションは宇宙滞在4〜16日である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31）
- PRSD の酸素・水素タンクは3基で最大8日、5基で最大12日、8基で最大18日の軌道上運用に足りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356）

## 4. 質量特性の値

着陸重量・重心・ET・SRB・推進薬の値を示す。

| ID | 項目 | 値 | 根拠 |
|---|---|---|---|
| MS-01 | オービタの空虚重量（乾燥重量） | 資料に無い | — |
| MS-02 | 着陸重量の上限（EOM、全傾斜角） | 233,000 lb | 着陸重量の上限は軌道傾斜角28.5°・39.0°・51.6°・57.0°について、RTLS 248k・248k・245k・242k lb、TAL 248k・248k・244k・241k lb、AOA/ATO 248k・248k・242k・239k lb、EOM はすべて233k lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807）性能の経験則は着陸重量の上限を EOM 233k lb、RTLS 242〜248k lb、TAL 241〜248k lb、AOA 233〜240k lb とする（アボートの上限は軌道傾斜角による）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| MS-03 | 着陸重量の上限（RTLS、28.5°/39.0°/51.6°/57.0°） | 248,000／248,000／245,000／242,000 lb | 着陸重量の上限は軌道傾斜角28.5°・39.0°・51.6°・57.0°について、RTLS 248k・248k・245k・242k lb、TAL 248k・248k・244k・241k lb、AOA/ATO 248k・248k・242k・239k lb、EOM はすべて233k lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807） |
| MS-04 | 着陸重量の上限（TAL、同上） | 248,000／248,000／244,000／241,000 lb | 着陸重量の上限は軌道傾斜角28.5°・39.0°・51.6°・57.0°について、RTLS 248k・248k・245k・242k lb、TAL 248k・248k・244k・241k lb、AOA/ATO 248k・248k・242k・239k lb、EOM はすべて233k lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807） |
| MS-05 | 着陸重量の上限（AOA/ATO、同上） | 248,000／248,000／242,000／239,000 lb | 着陸重量の上限は軌道傾斜角28.5°・39.0°・51.6°・57.0°について、RTLS 248k・248k・245k・242k lb、TAL 248k・248k・244k・241k lb、AOA/ATO 248k・248k・242k・239k lb、EOM はすべて233k lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807） |
| MS-06 | 着陸重量の上限（SODB の旧値：EOM 211,000、免除で214,000／アボート240,000、RTLS 免除で244,000） | 211,000／214,000／240,000／244,000 lb | SODB（JSC-08934）は EOM 着陸重量211,000 lb 超を Level II の免除で214,000 lb まで、アボート着陸重量240,000 lb 超を RTLS に限り244,000 lb まで認めるとしている。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=47） |
| MS-07 | 着陸重量の実績（STS-125／STS-122） | 232,591／207,215 lb | STS-125 の着陸時のオービタ重量は232,591.4 lb であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=57）STS-122 の着陸時のオービタ重量は207,215 lb であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=59） |
| MS-08 | ペイロード能力（28.5°・57°の円軌道、高度別） | 資料に無い | SCOM の性能の節は、28.5°と57°の円軌道へ打ち上げられる最大ペイロード重量を、直接投入と標準投入、SSME 104%と109%について図で示す（数値は図のみ）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/997）シャトルは高度100〜312 nm の地球近傍軌道へペイロードを運べ、ペイロードベイは直径15 ft・長さ60 ft である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） |
| MS-09 | X 重心の前方限界（公称／RTLS） | 1,076.7／1,079 in | X 方向重心の限界は前方1076.7 in（RTLS は1079.0 in）、後方1109.0 in、不測時の後方1119.0 in である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| MS-10 | X 重心の前方限界（A4-153：EOM・ATO・AOA） | 1,075.2 in | 運用飛行規則 A4-153 の公称 CG 範囲では、前方限界は EOM・ATO・AOA で X=1075.2 in、GRTLS（迎角30°未満）と TAL で X=1076.7 in である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=946） |
| MS-11 | X 重心の後方限界（公称／不測時） | 1,109／1,119 in | X 方向重心の限界は前方1076.7 in（RTLS は1079.0 in）、後方1109.0 in、不測時の後方1119.0 in である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| MS-12 | Y 重心の認定範囲（X 1075.7〜1110 in／X 1074.2〜1075.7 in） | 2／1.5 in（±） | 空力・飛行制御の検証で、Y 方向重心は X=1075.7〜1110 in で±2 in、X=1074.2〜1075.7 in で±1.5 in まで認定され、質量特性の不確かさは X で約±1 in、Y で±0.5 in である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=947） |
| MS-13 | Z 重心の範囲（突入インタフェース） | 360／384 in | Z 方向重心は突入インタフェース（約400,000 ft）で360.0〜384.0 in の範囲になければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/811） |
| MS-14 | ET（SLWT）の不活性重量 | 58,500 lb | STS-91 以降の超軽量外部タンク（SLWT）の不活性重量は約58,500 lb で、軽量タンクより7,500 lb 軽い。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| MS-15 | ET の構成品重量（LO2 タンク・インタータンク・LH2 タンク・TPS・金具類） | 12,000／12,100／29,000／4,823／9,100 lb | ET の液体酸素タンクは空で12,000 lb、インタータンクは12,100 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68）ET の液体水素タンクの乾燥重量は29,000 lb、熱防護系は4,823 lb、外部の金具・取付具・電気・射場安全系は9,100 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| MS-16 | MPS 推進薬の搭載量（推定：1% = 15,310 lb から100倍） | 1,531,000 lb | MPS 推進薬の1%は LO2/LH2 約15,310 lb に相当し、計画に使う飛行性能予備（FPR）は4,652 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1001） |
| MS-17 | SRB 1基の打上げ時重量／推進薬 | 1,300,000／1,100,000 lb | SRB は1基あたり打上げ時約1,300,000 lb（うち推進薬約1,100,000 lb）で、海面推力は約3,300,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| MS-18 | SSME 1基の重量 | 7,000 lb | SSME は1基約7,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| MS-19 | 打上げ総重量（GLOW） | 資料に無い | STS-91 以降の超軽量外部タンク（SLWT）の不活性重量は約58,500 lb で、軽量タンクより7,500 lb 軽い。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67）MPS 推進薬の1%は LO2/LH2 約15,310 lb に相当し、計画に使う飛行性能予備（FPR）は4,652 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1001）SRB は1基あたり打上げ時約1,300,000 lb（うち推進薬約1,100,000 lb）で、海面推力は約3,300,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| MS-20 | OMS 推進薬の最大／最小搭載量（OV-103/104）、OMS バラストの最大 | 25,064／10,800／4,000 lb | 性能の経験則では、OMS は220k lb で1 ft/s あたり21.8 lb、RCS は1 ft/s あたり25 lb（+X）または35〜40 lb（多軸）を使い、OMS の最大搭載量は OV-103/104で25,064 lb、最小10,800 lb、OMS バラストの最大は4,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| MS-21 | 性能の図が前提とするオービタ重量（軌道上の抗力） | 180,000 lb | SCOM の軌道上の抗力の図はオービタ重量180,000 lb・速度26,000 fps を前提とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1007） |

## 5. 質量特性の制約

着陸のときに満たす制約を示す。SysML v2 テキストでは、着陸重量と X 重心の制約を assert constraint、質量モーメントを式の属性にした。

| ID | 制約 | 根拠 |
|---|---|---|
| MC-01 | 着陸重量 W_land ≤ W_max(フェーズ, 傾斜角)（EOM 233k lb、アボートは表）。超える場合は熱解析に基づく免除が要る。 | 着陸重量の上限は軌道傾斜角28.5°・39.0°・51.6°・57.0°について、RTLS 248k・248k・245k・242k lb、TAL 248k・248k・244k・241k lb、AOA/ATO 248k・248k・242k・239k lb、EOM はすべて233k lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807）着陸重量の上限はオービタの熱的制約のため高傾斜角の飛行では下がり、上限を超える飛行には個別の熱解析に基づく免除が要る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807） |
| MC-02 | 1076.7 in（EOM は A4-153 で 1075.2 in）≤ Xcg ≤ 1109.0 in（不測時 1119.0 in）。 | X 方向重心の限界は前方1076.7 in（RTLS は1079.0 in）、後方1109.0 in、不測時の後方1119.0 in である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022）運用飛行規則 A4-153 の公称 CG 範囲では、前方限界は EOM・ATO・AOA で X=1075.2 in、GRTLS（迎角30°未満）と TAL で X=1076.7 in である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=946） |
| MC-03 | |Ycg| ≤ 2.0 in（1075.7 ≤ Xcg ≤ 1110 in）、|Ycg| ≤ 1.5 in（1074.2 ≤ Xcg < 1075.7 in）。測定の不確かさ X ±1 in・Y ±0.5 in を差し引く。 | 空力・飛行制御の検証で、Y 方向重心は X=1075.7〜1110 in で±2 in、X=1074.2〜1075.7 in で±1.5 in まで認定され、質量特性の不確かさは X で約±1 in、Y で±0.5 in である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=947） |
| MC-04 | 突入インタフェースで 360.0 in ≤ Zcg ≤ 384.0 in。 | Z 方向重心は突入インタフェース（約400,000 ft）で360.0〜384.0 in の範囲になければならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/811） |
| MC-05 | 質量モーメント MM = W_TD × (1172.3 − Xcg)/12 [ft-lb]。湖底滑走路で MM > 1.47 M ならコンクリート滑走路が望ましく、MM > 1.54 M なら必要。計算例：W = 233,000 lb・Xcg = 1076.7 in で MM = 1.86 M ft-lb（コンクリート必要）、Xcg = 1109.0 in で 1.23 M ft-lb。 | 質量モーメントは MM = 接地重量×(1172.3 − Xcg)/12 で、湖底滑走路では1.47 M ft-lb 超でコンクリートが望ましく、1.54 M ft-lb 超でコンクリートが必要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| MC-06 | 着陸時の OMS 推進薬 ≤ 片側22%（SODB：TAEM で酸化剤 < 1,707 lb/タンク、燃料 < 1,032 lb/タンク）。 | OMS 推進薬1,000 lb（約8%）は X 重心を1.5 in 後方へ、Y 重心を左右に0.5 in 動かし、着陸時の OMS の最大量は片側22%である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671）SODB は TAEM インタフェースで OMS の酸化剤を1タンク1,707 lb 未満、燃料を1,032 lb 未満（搭載量の約22%）とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=141） |
| MC-07 | 重心の移動：ΔXcg = +1.5 in／OMS 1,000 lb 消費（後方へ）、+1.2 in／後部 RCS 1,000 lb、−3.5 in／前部 RCS 1,000 lb。EOM の重心は前部 RCS の投棄と軌道離脱噴射での OMS 消費で調整する。 | EOM 重量・重心は消耗品の実時間管理で限界内に収め、それには前方 RCS 推進薬の投棄と軌道離脱噴射での OMS 推進薬の消費が最も簡単である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/811）OMS 推進薬1,000 lb（約8%）は X 重心を1.5 in 後方へ、Y 重心を左右に0.5 in 動かし、着陸時の OMS の最大量は片側22%である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671）後部 RCS 推進薬1,000 lb は X 重心を1.2 in、前部 RCS 推進薬1,000 lb は X 重心を−3.5 in 動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742） |

## 6. Δv の値

OMS・RCS の推進薬・比推力・推力と、噴射ごとの Δv の値を示す。

| ID | 項目 | 値 | 根拠 |
|---|---|---|---|
| DV-01 | OMS 推進薬の最大搭載量（OV-103/104、両ポッド） | 25,064 lb | 性能の経験則では、OMS は220k lb で1 ft/s あたり21.8 lb、RCS は1 ft/s あたり25 lb（+X）または35〜40 lb（多軸）を使い、OMS の最大搭載量は OV-103/104で25,064 lb、最小10,800 lb、OMS バラストの最大は4,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| DV-02 | OMS 推進薬の最大搭載量（SODB、1ポッドあたり燃料＋酸化剤 4,711.5 + 7,743.5） | 12,455 lb/ポッド | SODB は OMS タンクの推進薬の最大搭載量を1ポッドあたり燃料4,711.5 lb・酸化剤7,743.5 lb、打上げ時の最小を燃料2,038 lb・酸化剤3,362 lb とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=141） |
| DV-03 | OMS 推進薬の最小搭載量（OV-103/104） | 10,800 lb | 性能の経験則では、OMS は220k lb で1 ft/s あたり21.8 lb、RCS は1 ft/s あたり25 lb（+X）または35〜40 lb（多軸）を使い、OMS の最大搭載量は OV-103/104で25,064 lb、最小10,800 lb、OMS バラストの最大は4,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| DV-04 | OMS エンジンの比推力 | 313.2 s | OMS エンジンの比推力は313秒であり、OMS 推進薬の1%（130 lb、酸化剤80 lb・燃料50 lb）は6 fps・3 nm に相当し、OMS エンジン1基で約1 fps² の加速度となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671）OMS/RCS の推定性能表は、比推力を OMS 313.2 s・主 RCS 280.0 s・バーニア RCS 265.0 s、推力を6,000・870・24 lb、推進薬流量を19.16・3.11・0.09 lb/s、混合比を1.65・1.60・1.60 とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1009） |
| DV-05 | OMS エンジンの推力（1基） | 6,087 lbf | OMS エンジンは各6,087 lb の推力を出し、典型的なオービタ重量で2基合わせて約2 ft/s²（0.06 g）の加速度を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| DV-06 | OMS エンジンの推進薬流量（1基） | 19.16 lb/s | OMS/RCS の推定性能表は、比推力を OMS 313.2 s・主 RCS 280.0 s・バーニア RCS 265.0 s、推力を6,000・870・24 lb、推進薬流量を19.16・3.11・0.09 lb/s、混合比を1.65・1.60・1.60 とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1009） |
| DV-07 | OMS 満載の速度変化（SCOM の値） | 1,000 ft/s | 満載のタンクを使い切ると OMS は合計約1,000 ft/s の速度変化を与え、軌道投入噴射と軌道離脱噴射はそれぞれ通常約100〜500 ft/s を要し、軌道調整は高度1 nm あたり約2 ft/s を要する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| DV-08 | OMS-2 の速度変化 | 200／550 ft/s | OMS-2 噴射は必要に応じて軌道速度に200〜550 fps を加える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32） |
| DV-09 | 軌道投入・軌道離脱噴射の典型的な速度変化（2.18 節） | 100／500 ft/s | 満載のタンクを使い切ると OMS は合計約1,000 ft/s の速度変化を与え、軌道投入噴射と軌道離脱噴射はそれぞれ通常約100〜500 ft/s を要し、軌道調整は高度1 nm あたり約2 ft/s を要する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| DV-10 | 軌道離脱噴射の速度変化（1.1 節） | 200／550 ft/s | 軌道離脱噴射は軌道高度に応じて軌道速度を通常200〜550 fps 減らす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33） |
| DV-11 | 軌道調整の速度変化（高度1 nm あたり） | 2 ft/s/nm | 満載のタンクを使い切ると OMS は合計約1,000 ft/s の速度変化を与え、軌道投入噴射と軌道離脱噴射はそれぞれ通常約100〜500 ft/s を要し、軌道調整は高度1 nm あたり約2 ft/s を要する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| DV-12 | 軌道面変更の速度変化（1°あたり） | 440 ft/s/deg | 性能の経験則では、前部 RCS の満載は2,446 lb、後部 RCS の満載は4,970 lb（100%超）、軌道面の1°の変更には440 ft/s を要し、RCS の最大噴射は250秒で55 fps である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| DV-13 | OMS の推進薬使用率（オービタ 220k lb、+X） | 21.8 lb/(ft/s) | 同表の並進噴射の OMS 推進薬使用量は、オービタ重量180〜260千 lb に対して17.9・19.8・21.8・23.8・25.8 lb/fps であり、OMS の1%は130 lb、RCS の1%は22 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1009）性能の経験則では、OMS は220k lb で1 ft/s あたり21.8 lb、RCS は1 ft/s あたり25 lb（+X）または35〜40 lb（多軸）を使い、OMS の最大搭載量は OV-103/104で25,064 lb、最小10,800 lb、OMS バラストの最大は4,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| DV-14 | OMS の1%（片側） | 130 lb | OMS エンジンの比推力は313秒であり、OMS 推進薬の1%（130 lb、酸化剤80 lb・燃料50 lb）は6 fps・3 nm に相当し、OMS エンジン1基で約1 fps² の加速度となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671）同表の並進噴射の OMS 推進薬使用量は、オービタ重量180〜260千 lb に対して17.9・19.8・21.8・23.8・25.8 lb/fps であり、OMS の1%は130 lb、RCS の1%は22 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1009）性能の経験則では、OMS は220k lb で1 ft/s あたり21.8 lb、RCS は1 ft/s あたり25 lb（+X）または35〜40 lb（多軸）を使い、OMS の最大搭載量は OV-103/104で25,064 lb、最小10,800 lb、OMS バラストの最大は4,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| DV-15 | OMS キット（追加タンク） | 資料に無い | かつて OMS キットで能力を追加する計画があったが、使われる見込みはなく、関連するスイッチと計器は作動しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） |
| DV-16 | 主 RCS の比推力／推力（1基） | 280／870 s／lbf | OMS/RCS の推定性能表は、比推力を OMS 313.2 s・主 RCS 280.0 s・バーニア RCS 265.0 s、推力を6,000・870・24 lb、推進薬流量を19.16・3.11・0.09 lb/s、混合比を1.65・1.60・1.60 とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1009） |
| DV-17 | RCS の推進薬使用率（220k lb、+X／多軸） | 25／35／40 lb/(ft/s) | 性能の経験則では、OMS は220k lb で1 ft/s あたり21.8 lb、RCS は1 ft/s あたり25 lb（+X）または35〜40 lb（多軸）を使い、OMS の最大搭載量は OV-103/104で25,064 lb、最小10,800 lb、OMS バラストの最大は4,000 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| DV-18 | 前部 RCS 満載／後部 RCS 満載 | 2,446／4,970 lb | 性能の経験則では、前部 RCS の満載は2,446 lb、後部 RCS の満載は4,970 lb（100%超）、軌道面の1°の変更には440 ft/s を要し、RCS の最大噴射は250秒で55 fps である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022） |
| DV-19 | RCS 1モジュールの公称満載（酸化剤＋燃料 1,464 + 923） | 2,387 lb | 前部・後部 RCS の各モジュールの公称満載は、酸化剤タンク1,464 lb、燃料タンク923 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720） |
| DV-20 | 軌道離脱時の後部 RCS 残量（各ポッド）／突入中の使用量 | 1,100／350 lb | オービタは通常、後部 RCS 推進薬を各ポッド約50%（約1,100 lb）残して軌道離脱し、ラップアラウンド DAP 以降の突入中の後部 RCS 使用量は平均16%（350 lb）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1012） |
| DV-21 | OMS から RCS へ供給できる推進薬（各ポッド） | 1,000 lb 超 | 各 OMS ポッドは RCS へ1,000 lb 超の推進薬を供給できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） |
| DV-22 | RCS の速度変化能力（資料の値） | 資料に無い | — |

## 7. Δv の式と計算

式と計算の結果を示す。後ろの表は、調査の計算の値と本書の生成の中で計算し直した値の照合である（差は丸めの範囲）。

| ID | 式・計算 |
|---|---|
| DE-01 | ロケット方程式：Δv = Isp·g0·ln(m0/m1)、m1 = m0 − mp（g0 = 32.174 ft/s²）。 |
| DE-02 | 推進薬使用率：dm/dv = m/(Isp·g0)。OMS（Isp 313.2 s、m = 220,000 lb）で 21.83 lb/(ft/s) となり、SCOM の 21.8 lb/(ft/s) と一致する（本書の計算）。 |
| DE-03 | 比推力の照合：Isp = F/ṁ = 6,000 / 19.16 = 313.2 s（表の 313.2 s と一致）。2.18 節の推力 6,087 lbf を使うと 317.7 s となり、表の推力 6,000 lbf と 1.4% 違う。 |
| DE-04 | OMS 満載 25,064 lb を使い切るときの Δv：m0 = 220,000 lb で 1219 ft/s、m0 = 245,064 lb（燃焼後 220,000 lb）で 1087 ft/s、m0 = 260,000 lb で 1021 ft/s。SCOM の「約1,000 ft/s」は重い機体（約 260k lb）か残留・使えない推進薬を見込んだ値と整合する（推定）。オービタの軌道上重量は資料に無い。 |
| DE-05 | 加速度：a = 2×6,087/220,000×g0 = 1.78 ft/s²（SCOM「約2 ft/s²」）、1基で 0.89 ft/s²（「約1 fps²」）。 |
| DE-06 | OMS 1%：130 lb ÷ 21.8 lb/(ft/s) = 5.96 ft/s（SCOM「6 fps」と一致。1%は片側の値）。 |
| DE-07 | RCS：dm/dv = 220,000/(280.0×g0) = 24.4 lb/(ft/s)（SCOM「25 lbs (+X)」と整合）。後部 RCS 満載 4,970 lb を +X に使い切ったときの理論値は Δv = 206 ft/s、前部 RCS 満載 2,446 lb では 101 ft/s（本書の計算。噴射器の向き・多軸の損失は含まない）。 |
| DE-08 | 面変更：Δv = 2·V·sin(Δi/2)。V = 26,000 ft/s（SCOM の抗力図の前提）で Δi = 1° のとき 454 ft/s（SCOM の 440 ft/s と 3% 違う。軌道速度の値は資料に無い）。 |
| DE-09 | OMS の速度変化の収支：OMS-2 + 軌道離脱 + 軌道調整 ≤ 1,000 ft/s。2.18 節の上限（500 + 500）で余裕 0、1.1 節の上限（550 + 550）で −100 ft/s（SSD-BUD-ORB-001 BUD-PRP-01 と同じ）。 |
| DE-10 | SODB の最大搭載量 2×(4,711.5 + 7,743.5) = 24,910 lb は SCOM の 25,064 lb より 154 lb（0.6%）少ない。資料の版の違い（推定）。 |

| 計算 | 調査の値 | 計算し直した値 |
|---|---|---|
| OMS の有効排気速度 Isp·g0（ft/s） | 10,076.9 | 10,076.90 |
| OMS の推進薬使用率（220k lb、lb/(ft/s)） | 21.83 | 21.83 |
| 推力と流量からの Isp（s） | 313.2 | 313.15 |
| OMS 満載の Δv（m0 220k lb、ft/s） | 1,219 | 1,218.86 |
| OMS 満載の Δv（燃焼後 220k lb、ft/s） | 1,087 | 1,087.22 |
| OMS 満載の Δv（m0 260k lb、ft/s） | 1,021 | 1,021.48 |
| 後部 RCS 満載の Δv（理論、ft/s） | 206 | 205.85 |
| 前部 RCS 満載の Δv（理論、ft/s） | 101 | 100.72 |

## 8. 図106 の故障の木

図106（頂上事象 TOP-A：再突入中に 28 VDC の主直流電力をすべて失う（飛行制御・航法の電力を失い突入できない））のゲート 5件と基本事象 7件を示す。

| ID | ゲート | 内容（規則・推定） | 入力 |
|---|---|---|---|
| A-G1 | OR | 全電源の喪失、または全主母線の喪失（推定：主母線3本が直流負荷の主電源。予備バッテリが無いことは SSD-FD-EPS-FCP-001 F-EPS-FCP-08 による） | A-G2・A-G3 |
| A-G2 | OR | 燃料電池3基をすべて失う（推定：各燃料電池は独立した電源） | A-G4・A-G5 |
| A-G4 | AND | 燃料電池1・2・3がそれぞれ独立に故障する（1基喪失で単一故障許容→MDF、2基で0故障許容→次の PLS（規則 A9-1001 注[4]・[5]）） | A-E1・A-E2・A-E3 |
| A-G5 | AND | 共通原因：PRSD 中央マニホールドの漏れで2基を失い、残る1基も故障する（規則 A9-252 の根拠文が2基喪失を述べる。3基目との組合せは推定） | A-E4・A-E3 |
| A-G3 | AND | 主母線 MNA・MNB・MNC の3本とも、バスタイで回復できない故障（短絡）で失う（推定：燃料電池だけの故障はバスタイで母線を回復できるが、短絡母線へはタイしない（SCOM）） | A-E5・A-E6・A-E7 |

| ID | 基本事象 | 関係する機能・IF | 根拠 |
|---|---|---|---|
| A-E1 | 燃料電池1の喪失（内部短絡・冷却喪失で9分以内に停止・反応剤供給の喪失） | SSD-FD-EPS-FCP-001 F-EPS-FCP-02・IF-EPS-05 | 3基の燃料電池は独立した電源としてそれぞれ分離された直流母線に同時に給電し、各基は通常10 kW、1基以上の故障時は12 kW を連続で出せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）燃料電池の冷却を失った場合はスタックの過熱を防ぐため9分以内に燃料電池を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）電気系の Go/No-Go 基準（A9-1001）の燃料電池の欄の注記[4]は単一故障許容、注記[5]はゼロ故障許容である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517） |
| A-E2 | 燃料電池2の喪失（同上） | SSD-FD-EPS-FCP-001 F-EPS-FCP-02・IF-EPS-05 | 3基の燃料電池は独立した電源としてそれぞれ分離された直流母線に同時に給電し、各基は通常10 kW、1基以上の故障時は12 kW を連続で出せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）燃料電池の冷却を失った場合はスタックの過熱を防ぐため9分以内に燃料電池を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）電気系の Go/No-Go 基準（A9-1001）の燃料電池の欄の注記[4]は単一故障許容、注記[5]はゼロ故障許容である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517） |
| A-E3 | 燃料電池3の喪失（同上） | SSD-FD-EPS-FCP-001 F-EPS-FCP-02・IF-EPS-05 | 3基の燃料電池は独立した電源としてそれぞれ分離された直流母線に同時に給電し、各基は通常10 kW、1基以上の故障時は12 kW を連続で出せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）燃料電池の冷却を失った場合はスタックの過熱を防ぐため9分以内に燃料電池を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）燃料電池2基で突入すると、残る燃料電池のどちらかの故障で単一燃料電池の運用になる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1441） |
| A-E4 | PRSD 中央マニホールドの漏れによる燃料電池2基の喪失（共通原因） | SSD-FD-EPS-001 F-EPS-02・SSD-FD-EPS-FCP-001 IF-EPS-03 | 酸素タンク1・2の次の最悪の故障（中央マニホールドの漏れ）は燃料電池2基の喪失になりうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1483） |
| A-E5 | 主母線 MNA の短絡（MNA 下位母線と付属機器をすべて失う） | SSD-FD-EPS-DC-001 F-EPS-DC-01・F-EPS-DC-05 | 同基準の注記[9]は主母線 A の喪失ですべての MNA 下位母線と付属機器を失うことを、注記[17]はさらに別の母線が故障すると APU の燃料タンク弁を開けなくなることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517）短絡している母線へは決してバスタイしない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1118） |
| A-E6 | 主母線 MNB の短絡 | SSD-FD-EPS-DC-001 F-EPS-DC-01・F-EPS-DC-05 | 短絡している母線へは決してバスタイしない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1118） |
| A-E7 | 主母線 MNC の短絡 | SSD-FD-EPS-DC-001 F-EPS-DC-01・F-EPS-DC-05 | 短絡している母線へは決してバスタイしない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1118） |

- 3基の燃料電池は独立した電源としてそれぞれ分離された直流母線に同時に給電し、各基は通常10 kW、1基以上の故障時は12 kW を連続で出せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320）
- 電気的な故障時や負荷分担のため、パネル R1 の MN BUS TIE スイッチで任意の主母線を他の主母線に接続できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）
- 必須母線 ESS 1BC・2CA・3AB は3つの冗長な電源から給電され、例えば ESS 1BC は燃料電池1と主母線 B・C から受電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/334）
- 重要度に応じて一部の負荷は2本または3本の主母線から冗長に給電され、これは冗長のためで総電力のためではない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/331）
- 上昇中は燃料電池1基では主母線3本の負荷を支えられず、1本を切り離す必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）
- 燃料電池2基を失った場合、軌道上では減電の後に主母線3本を結合できるが、上昇・突入では残る1基の過負荷を防ぐため主母線1本を無電のままにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/900）
- 電気系の Go/No-Go 基準（A9-1001）の燃料電池の欄の注記[4]は単一故障許容、注記[5]はゼロ故障許容である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517）
- 同基準の注記[9]は主母線 A の喪失ですべての MNA 下位母線と付属機器を失うことを、注記[17]はさらに別の母線が故障すると APU の燃料タンク弁を開けなくなることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517）
- 同基準は燃料電池（3基）、主直流母線 MNA・MNB・MNC などの各項目について、上昇継続・MDF・次の PLS の判定を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510）
- 酸素タンク1・2の次の最悪の故障（中央マニホールドの漏れ）は燃料電池2基の喪失になりうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1483）
- 燃料電池2基で突入すると、残る燃料電池のどちらかの故障で単一燃料電池の運用になる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1441）
- 短絡している母線へは決してバスタイしない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1118）
- 燃料電池の冷却を失った場合はスタックの過熱を防ぐため9分以内に燃料電池を停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893）

## 9. 図107 の故障の木

図107（頂上事象 TOP-B：再突入中に空力舵面（エレボン等）の作動器へ油圧を供給できない（突入・着陸の制御を失う））のゲート 6件と基本事象 11件を示す。

| ID | ゲート | 内容（規則・推定） | 入力 |
|---|---|---|---|
| B-G1 | OR | 3系統すべての喪失、または作動器側の切替弁の共通故障（推定：各作動器は3系統から切替弁を通して受圧する） | B-G2・B-G6 |
| B-G2 | AND | APU/油圧系1・2・3をすべて失う（規則：突入には少なくとも1系統が要る（A10-21A.4））。1系統の喪失は EOM 継続、2系統で次の PLS・単一 APU 突入（規則 A10-21A） | B-G3・B-G4・B-G5 |
| B-G3 | OR | 系統1の喪失（推定：APU・主ポンプ・WSB のどれか1つで系統の圧力を失う） | B-E1・B-E2・B-E3・B-E10 |
| B-G4 | OR | 系統2の喪失（同上） | B-E4・B-E5・B-E6・B-E10 |
| B-G5 | OR | 系統3の喪失（同上） | B-E7・B-E8・B-E9・B-E10 |
| B-G6 | AND | 待機2弁の待機2位置への固着（2系統の喪失）と、待機2系統の喪失（規則 A10-51 の定義。組合せは推定） | B-E11・B-G5 |

| ID | 基本事象 | 関係する機能・IF | 根拠 |
|---|---|---|---|
| B-E1 | APU1 の故障（タービン・制御器・燃料供給。各 APU は専用の制御器と燃料タンクを持つ） | SSD-FD-APU-001 F-APU-03・SSD-FD-APU-CTL-001 IF-APU-17 | 各 APU は専用の燃料タンク（容量約350 lb のヒドラジン）を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）各 APU は専用のデジタル制御器を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88）各 APU の燃料タンクの搭載量は約325 lb のヒドラジンである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107） |
| B-E2 | 系統1の主油圧ポンプの故障・作動油の漏れ | SSD-FD-APU-HYD-001 F-APU-HYD-01・IF-APU-04 | オービタには独立した3系統の油圧系があり、各系統は空力舵面（エレボン・ボディフラップ・ラダー／スピードブレーキ）の作動器に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| B-E3 | 系統1の水噴霧ボイラ（WSB）の冷却喪失 | SSD-FD-APU-HYD-001 IF-APU-07 | オービタには独立した3系統の油圧系があり、各系統は空力舵面（エレボン・ボディフラップ・ラダー／スピードブレーキ）の作動器に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| B-E4 | APU2 の故障 | SSD-FD-APU-001 F-APU-03 | 各 APU は専用の燃料タンク（容量約350 lb のヒドラジン）を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）各 APU は専用のデジタル制御器を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） |
| B-E5 | 系統2の主油圧ポンプの故障・作動油の漏れ | SSD-FD-APU-HYD-001 F-APU-HYD-01・IF-APU-04 | オービタには独立した3系統の油圧系があり、各系統は空力舵面（エレボン・ボディフラップ・ラダー／スピードブレーキ）の作動器に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| B-E6 | 系統2の WSB の冷却喪失 | SSD-FD-APU-HYD-001 IF-APU-07 | オービタには独立した3系統の油圧系があり、各系統は空力舵面（エレボン・ボディフラップ・ラダー／スピードブレーキ）の作動器に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| B-E7 | APU3 の故障 | SSD-FD-APU-001 F-APU-03 | 各 APU は専用の燃料タンク（容量約350 lb のヒドラジン）を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）各 APU は専用のデジタル制御器を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） |
| B-E8 | 系統3の主油圧ポンプの故障・作動油の漏れ | SSD-FD-APU-HYD-001 F-APU-HYD-01・IF-APU-04 | オービタには独立した3系統の油圧系があり、各系統は空力舵面（エレボン・ボディフラップ・ラダー／スピードブレーキ）の作動器に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| B-E9 | 系統3の WSB の冷却喪失 | SSD-FD-APU-HYD-001 IF-APU-07 | オービタには独立した3系統の油圧系があり、各系統は空力舵面（エレボン・ボディフラップ・ラダー／スピードブレーキ）の作動器に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） |
| B-E10 | 主直流母線2本の故障で APU の燃料タンク弁を開けない（共通原因。FTA-A からの波及） | SSD-FD-APU-CTL-001 IF-APU-17・SSD-FD-EPS-DC-001 F-EPS-DC-01 | 同基準の注記[9]は主母線 A の喪失ですべての MNA 下位母線と付属機器を失うことを、注記[17]はさらに別の母線が故障すると APU の燃料タンク弁を開けなくなることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517） |
| B-E11 | エレボン作動器の切替弁（待機1／待機2）が待機2位置に固着 | SSD-FD-APU-HYD-001 F-APU-HYD-10・IF-APU-10 | 各エレボンのサーボ作動器にはオービタの3系統の油圧が供給され、切替弁が主系統の圧力が約1,200〜1,500 psia まで下がると第1待機系統へ切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510）切替弁の故障では、待機2弁が待機2位置に固着すると2系統の喪失、主／待機1弁の固着は1系統の喪失となる（A10-51）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1566） |

- 同基準の注記[9]は主母線 A の喪失ですべての MNA 下位母線と付属機器を失うことを、注記[17]はさらに別の母線が故障すると APU の燃料タンク弁を開けなくなることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517）
- オービタには独立した3系統の油圧系があり、各系統は空力舵面（エレボン・ボディフラップ・ラダー／スピードブレーキ）の作動器に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83）
- 各エレボンのサーボ作動器にはオービタの3系統の油圧が供給され、切替弁が主系統の圧力が約1,200〜1,500 psia まで下がると第1待機系統へ切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510）
- 切替弁の故障では、待機2弁が待機2位置に固着すると2系統の喪失、主／待機1弁の固着は1系統の喪失となる（A10-51）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1566）
- 突入・アボートと計画では、空力舵面の作動器のための APU/油圧2系統などを「必要」と定義し、単一 APU/油圧系での着陸は認定されていない（A10-33）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1564）
- APU/油圧系を1系統失っても飛行は公称 EOM まで続ける（A10-21A.1）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532）
- APU/油圧系を2系統失うと単一 APU で突入することになり、次の PLS で突入する。突入には少なくとも1系統の APU/油圧系が要る（A10-21A.3・4）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1533）
- APU を2基失うと空力舵面の作動速度の能力が低下し、1基を失っても残る2基は通常速度で全舵面の速度要求を満たせる（A10-25）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1546）
- オービタは単一 APU の運用が認定されていないため、APU/油圧系は1系統の喪失でフェイルセーフでなくなる（A2-102）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581）
- 各 APU は専用の燃料タンク（容量約350 lb のヒドラジン）を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）
- 各 APU は専用のデジタル制御器を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88）
- 油圧2系統を失うと滑空飛行の飛行制御にも影響し、空力舵面の速度が下がる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/900）
- 各 APU の燃料タンクの搭載量は約325 lb のヒドラジンである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107）

## 10. 図108 の故障の木

図108（頂上事象 TOP-C：軌道上でキャビンの PPCO2 を 7.6 mmHg 未満に保てない（船外パージで約2時間しかもたない））のゲート 3件と基本事象 6件を示す。

| ID | ゲート | 内容（規則・推定） | 入力 |
|---|---|---|---|
| C-G1 | AND | RCRS を失い、かつ LiOH でも代替できない（規則：RCRS 喪失時は LiOH を装着しその数が EOM を決める（A17-155B.4）） | C-G2・C-G3 |
| C-G2 | OR | RCRS の喪失（規則：A17-106 の喪失の定義と根拠） | C-E1・C-E2・C-E3・C-E4 |
| C-G3 | OR | LiOH による代替ができない（推定） | C-E5・C-E6 |

| ID | 基本事象 | 関係する機能・IF | 根拠 |
|---|---|---|---|
| C-E1 | RCRS の制御器1・2の両方の故障（手動の代替は無い） | SSD-FD-ARS-RCRS-001 F-ARS-RCRS-08・IF-ARS-33 | PPCO2 を7.6 mmHg 未満に保てないとき、または PPCO2 の把握を失ったとき RCRS は喪失とみなし、真空ベントの閉塞や両コントローラの故障では RCRS は働かない（A17-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937）RCRS のコントローラ1は AC1 と主母線 A、コントローラ2は AC3 と主母線 C から給電される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225） |
| C-E2 | 真空ベント配管の閉塞または隔離弁の閉 | SSD-FD-ARS-RCRS-001 IF-ARS-16 | PPCO2 を7.6 mmHg 未満に保てないとき、または PPCO2 の把握を失ったとき RCRS は喪失とみなし、真空ベントの閉塞や両コントローラの故障では RCRS は働かない（A17-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| C-E3 | 火災の燃焼生成物（HCl・HF・HCN）によるアミン床の不可逆な劣化 | SSD-FD-ARS-RCRS-001 F-ARS-RCRS-10 | 火災の燃焼生成物のうち HCl・HF・HCN は固体アミンと不可逆に反応するため、キャビンまたはアビオニクスベイの火災後は RCRS を手動停止する（A17-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| C-E4 | PPCO2 の把握の喪失（計測喪失も RCRS 喪失とみなす） | SSD-FD-ARS-CO2-001 F-ARS-CO2-11・IF-ARS-37 | PPCO2 を7.6 mmHg 未満に保てないとき、または PPCO2 の把握を失ったとき RCRS は喪失とみなし、真空ベントの閉塞や両コントローラの故障では RCRS は働かない（A17-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） |
| C-E5 | 未使用の LiOH キャニスタの枯渇（2日予備＝乗員数と同数を使い切る） | SSD-FD-ARS-CO2-001 F-ARS-CO2-08 | LiOH の2日分の予備に要するキャニスタ数の目安は搭乗乗員数と同じであり、キャニスタ1個は約50人・時の CO2 除去能力を持つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）使用前の LiOH を最低2日分予備に保持し、PPCO2 は最大7.6 mmHg を守る（A17-157）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）RCRS を失ったときは LiOH キャニスタを装着し、その数が EOM を決める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| C-E6 | キャビンファン A・B の両方の故障（LiOH への流れを失う。推定） | SSD-FD-ARS-CO2-001 IF-ARS-01・F-ARS-CO2-01 | キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |

- キャビンファン出口の空気のうち約120 lb/hr ずつが2個の LiOH キャニスタへ流れ、キャニスタは通常1日1〜2回（大人数の乗員ではより頻繁に）交換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370）
- LiOH の2日分の予備に要するキャニスタ数の目安は搭乗乗員数と同じであり、キャニスタ1個は約50人・時の CO2 除去能力を持つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）
- LiOH を使い切った後に残る CO2 除去の手段はキャビン空気の船外パージだけであり、7人では2時間程度しかもたない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）
- 使用前の LiOH を最低2日分予備に保持し、PPCO2 は最大7.6 mmHg を守る（A17-157）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）
- RCRS を起動できないと、ミッション期間は搭載した LiOH キャニスタの数で制限される（A17-155）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950）
- ウェーブオフ日の RCRS 再起動は極低温消耗品が追加の電力消費を許す場合に限り、通常は収納した LiOH で少なくとも2日の延長ができる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951）
- RCRS を失ったときは LiOH キャニスタを装着し、その数が EOM を決める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951）
- PPCO2 を7.6 mmHg 未満に保てないとき、または PPCO2 の把握を失ったとき RCRS は喪失とみなし、真空ベントの閉塞や両コントローラの故障では RCRS は働かない（A17-106）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937）
- 火災の燃焼生成物のうち HCl・HF・HCN は固体アミンと不可逆に反応するため、キャビンまたはアビオニクスベイの火災後は RCRS を手動停止する（A17-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952）
- RCRS のコントローラ1は AC1 と主母線 A、コントローラ2は AC3 と主母線 C から給電される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225）

## 11. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-ANA-ORB-001.sysml](../SysML/SSD-ANA-ORB-001.sysml) に示す。トレードスタディの analysis def 1件と案の part 2件、質量特性・Δv の制約（constraint def 3件と assert constraint）、故障の木の part def 3件（事象と AND／OR ゲートを Boolean の属性の式で表す）から成る。本書の表と同じデータから作り、OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。式の求解・故障の木の確率の計算はしていない。Rev. AN で、質量・長さ・時間・加速度・速度を SysML v2 の量（ISQ）と単位（lb・in・s・ft/s²・ft/s）で型付けした。質量モーメントの式の ÷12（in から ft への換算）は単位が受け持つので式から除き、比べる値を 1,540,000 [lb·ft] と書いた（量の種類と単位の一覧は SSD-IBD-ORB-001）。

## 12. 注記（出典間の相違・構成変更）

> **注記** 故障の木は確率を付けない定性の木である。ゲートの論理のうち「推定」としたものは、系の構成（冗長の数・母線・弁）から組み立てたもので、ハザード報告の木ではない。

> **注記** MS-01：オービタの空虚重量は抽出テキストに無い（SCOM 1.1 の統計表は画像）。None とした。

> **注記** MS-08：ペイロード能力は SCOM 9.1 の図（28.5°・57°、104%・109%、直接・標準投入）にしかなく、数値を読み取れない。None とした。

> **注記** MS-15：構成品の合計 67,023 lb は SLWT の不活性重量 58,500 lb より大きい。構成品の値は SLWT 以前のタンクの値が残っている可能性がある（推定）。

> **注記** MS-19：打上げ総重量は資料に無い。オービタを除く合計は 2×1,300,000 + 58,500 + 1,531,000 = 4,189,500 lb（本書の計算、MPS 推進薬は推定）。

> **注記** MS-02・MS-05：性能の経験則（SCOM p1022）は AOA を 233〜240k lb とし、4.6 節の表（p807）の 239〜248k lb と食い違う。

> **注記** MS-06：SODB の EOM 211,000 lb は SCOM（OI-33）の 233k lb より古い値である。

> **注記** MS-09・MS-10：SCOM の前方限界 1076.7 in は A4-153 では GRTLS（迎角30°未満）と TAL の値で、EOM は 1075.2 in である。

> **注記** DV-15：OMS キットは計画されたが使われる見込みはなく、追加タンクの容量の値は資料に無い。

> **注記** DV-22：RCS の速度変化能力そのものの値は資料に無い（DE-07 は本書の理論値）。

> **注記** DV-08〜DV-10：OMS-2・軌道離脱の範囲は 1.1 節（200〜550）と 2.18 節（100〜500）で違う。

> **注記** 軌道離脱の速度変化は下降側の進入が最悪で、90°のプリバンクで約10 ft/s 減る（R8-077）。目標を浅くするプリバンクは推進薬を減らすが熱負荷が増える（R8-076）。

> **注記** 部分的な喪失：燃料電池2基を失うと上昇・突入では主母線1本を無電にする（R8-085）。必須母線は3電源から、重要な負荷は2〜3本の主母線から冗長に受電するため（R8-082・R8-083）、主母線1本の喪失は頂上事象に至らない（推定）。

> **注記** FTA-B への波及：主母線の故障に続いて別の母線が故障すると APU の燃料タンク弁を開けなくなる（A9-1001 注[17]、R8-087）。FTA-B の E11 に対応する。

> **注記** G5 の根拠は A9-252 CRYO HEATER MANAGEMENT FOR ORBIT [CIL]（運用飛行規則 PDF p1483）である。

> **注記** 劣化の段階：1系統の喪失では残る2系統で全舵面の速度要求を満たし（A10-25）、2系統の喪失では舵面の速度が下がり単一 APU での着陸は認定外（A10-33）。頂上事象の手前に「単一 APU 突入（認定外）」の中間状態がある。

> **注記** E10 は1つの母線ではなく、どの APU の弁かは資料が示さない（注[17] は主母線 A の行の注記）。G3〜G5 すべてに入れたのは保守的な推定である。

> **注記** 上昇中の油圧喪失（SSME の油圧ロックアップ・TVC 喪失）はこの木の範囲外とした。

> **注記** 標準ミッション（LiOH のみ）では G2 が常に真（RCRS 無し）であり、頂上事象は E5・E6 の OR となる。7人・10日では E5 が計画段階で成立する（TRADE_LIOH_RCRS の TC-02）。

> **注記** ウェーブオフ日の RCRS 再起動は極低温反応剤が追加電力を許す場合に限る（R8-016）ため、FTA-A の電力の制約とも結びつく。

> **注記** LiOH の前提の見直し（Rev. BG）：LiOH の搭載数を規則から求めた必要搭載数 42個に改め、標準ミッションの LiOH の負のマージンは解消した。CO2 除去のトレードスタディは、RCRS と LiOH の比較（質量・収納・電力）として残る（目的の節の「LiOH の不足」は見直し前の前提による）。

> **注記** 故障の木 C（CO2 制御の喪失）を空気の経路まで広げた故障の木 X2は [SSD-FMX-ECL-001](SSD-FMX-ECL-001.md) に示す（SysML v2 テキスト：SysML/SSD-FMX-ECL-001.sysml）。

## 13. 参考文献

1. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
2. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-156 RCRS Manual Shutdown Criteria・A17-157 LiOH Redline Determination（NSTS-12820 PCN-1、PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-155 RCRS Management（続き）（PDF p1951） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951
5. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.22節 LiOH Canister（諸元）（PDF p554） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=554
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.1・C.2.1 EDO Modifications・Carbon Dioxide Removal（PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.2節 Nitrogen System（PDF p23） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
9. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-106 Regenerative CO2 Removal System (RCRS) Loss Definition（NSTS-12820 PCN-1、PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.3 Controls（図C-14 Panel MO51F）（PDF p225） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225
11. NSTS-08292 STS-65 Space Shuttle Mission Report（1994年） Mission summary（CO2 control）（PDF p12） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=12
12. NSTS-08292 STS-65 Space Shuttle Mission Report（1994年） Introduction（PDF p7） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=7
13. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p31） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31
14. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p356） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/356
15. Shuttle Crew Operations Manual 4.6 Landing Weight Limitations（USA007587 Rev. A CPN-1、PDF p807） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807
16. Shuttle Crew Operations Manual 9.3 Entry（USA007587 Rev. A CPN-1、PDF p1022） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1022
17. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） （PDF p47） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=47
18. NSTS-37452 STS-125 Mission Report（2010） （PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=57
19. STS-122 Mission Report （PDF p59） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=59
20. Shuttle Crew Operations Manual 9.1 Ascent（USA007587 Rev. A CPN-1、PDF p997） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/997
21. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p946） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=946
22. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p947） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=947
23. Shuttle Crew Operations Manual 4.8 Center of Gravity Limitations（USA007587 Rev. A CPN-1、PDF p811） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/811
24. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
25. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p68） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68
26. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p69） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69
27. Shuttle Crew Operations Manual 9.1 Ascent（USA007587 Rev. A CPN-1、PDF p1001） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1001
28. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p71） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71
29. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p579） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579
30. Shuttle Crew Operations Manual 9.2 Orbit（USA007587 Rev. A CPN-1、PDF p1007） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1007
31. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p671） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/671
32. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.3節 Orbital Maneuvering Subsystem（6. Propellant Loads）（PDF p141） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=141
33. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p742） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742
34. Shuttle Crew Operations Manual 9.2 Orbit（USA007587 Rev. A CPN-1、PDF p1009） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1009
35. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
36. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p32） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/32
37. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p33） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/33
38. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
39. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p720） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720
40. Shuttle Crew Operations Manual 9.3 Entry（USA007587 Rev. A CPN-1、PDF p1012） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1012
41. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p320） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/320
42. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p893） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893
43. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1001 Electrical Go/No-Go Criteria（PDF p1517） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517
44. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1441） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1441
45. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p1483） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1483
46. Shuttle Crew Operations Manual 付録C Study Notes（USA007587 Rev. A CPN-1、PDF p1118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1118
47. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
48. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p334） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/334
49. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p331） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/331
50. Shuttle Crew Operations Manual 6.9 Multiple Failure Scenarios（USA007587 Rev. A CPN-1、PDF p900） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/900
51. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1001 Electrical Go/No-Go Criteria（PDF p1510） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510
52. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p84） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84
53. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p88） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88
54. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p107） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107
55. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83
56. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p510） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/510
57. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-51 HYDRAULIC LOSS DEFINITIONS（PDF p1566） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1566
58. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-33 APU DEFINITIONS（PDF p1564） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1564
59. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-21 LOSS OF APU/HYDRAULIC SYSTEM(S) ACTIONS（PDF p1532） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1532
60. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-21 LOSS OF APU/HYDRAULIC SYSTEM(S) ACTIONS（PDF p1533） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1533
61. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-25 APU HIGH SPEED SELECTION/SHIFT（PDF p1546） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1546
62. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-102 Mission Duration Requirements（PDF p581） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581
63. Space Shuttle Operational Flight Rules Vol. A – All Flights A17-155 Regenerative CO2 Removal System (RCRS) Management（NSTS-12820 PCN-1、PDF p1950） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1950

## 14. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（CO2 除去のトレードスタディ 評価項目 9件・案 2件、質量特性 21件・制約 7件、Δv 22件・式 10件、故障の木 3件、図104〜108、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | SysML v2 テキストの属性を量（ISQ）と単位で型付けし直した（内部ブロック・流れ定義書 SSD-IBD-ORB-001）（Rev. AN） |
| Rev. B | 2026-10-07 | LiOH の前提の見直しを注記（Rev. BG） |
| Rev. C | 2026-10-09 | ECLSS の故障モード定義書 SSD-FMX-ECL-001 への参照を注記（Rev. BL） |
