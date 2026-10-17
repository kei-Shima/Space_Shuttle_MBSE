# 地上処理・ターンアラウンド定義書（着陸後から打上げまでの活動、地上の機体の状態、段と秒読みの節目）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-GND-ORB-001 |
| 表題 | 地上処理・ターンアラウンド定義書（着陸後から打上げまでの活動、地上の機体の状態、段と秒読みの節目） |
| 版・日付 | 初版（Rev. -）／2026-10-17 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-OPS-PHASE-001 |
| 関連図 | SSD-SYS-ARC-001 図254 着陸後から打上げまでの地上処理 活動図・図255 地上の機体の状態 状態遷移図・図256 地上処理の段と秒読みの節目 |

## 1. 目的

着陸後から次の打上げまでの地上処理（ターンアラウンド）を、資料に述べられた順の活動図（図254）と、地上の機体の状態遷移図（図255）で示す。施設・時間・秒読みの節目は図256 と表に示す。これまでのモデルには、着陸後（PH-7）と打上げ前（PH-1）の運用はあったが、その間の整備・結合・ロールアウト・射点での準備と、最終秒読み（図95）の前の T-43〜T-11 時間の保持が無かった。本書はその間をつなぐ。新しい機能・IF は足さず、地上の行動は外部系の打上げ処理（F-LPS-01・02）に割り付ける。

## 2. 書き方

活動図・状態機械は残りの系の定義書（SSD-BEH-ORB-008）と同じ書き方で、節点・状態・遷移の根拠は資料の文と頁で示す。基準の時期は NASA Facts の2006年の記述（Discovery の例）で、1985年の論文（1983年ごろの STS-1〜7）の数字は注記に年つきで書き、図表に混ぜない。日数は、本文・表に書かれたものだけを資料の語のまま載せる（換算・推定・図の読み取りをしない）。本文・表で日数が取れる段が少なかったので、日数の表は作っていない（注記）。T-9分以降の最終秒読みは SSD-BEH-ORB-003 の図95（AS-01〜AS-08）が示すので、本書は重ねて描かず、そこへつなぐ。

## 3. 図254 の節点

図254 着陸後から打上げまでの地上処理 活動図（着陸後から打上げまでの地上処理（資料の順。施設は図256））の節点 15件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-TA | 開始 | — | — | start | — |
| AC-TA-01 | 行動 | 着陸後、コンボイが滑走路に展開して蒸気を測り、機体をパージして乗員が退出する | — | AC_TA_01 | 着陸・車輪停止の後、約25台の専用車両と約150人の要員からなるコンボイが滑走路に展開する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=1）コンボイの最初の待機位置はオービタから 1,250 フィートで、安全評価班が水素・ヒドラジン・MMH・四酸化二窒素・アンモニアの蒸気を検知器で測る。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）機体のパージは、オービタが完全に停止してから通常 45〜60分以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）乗員は白い部屋（white room）経由で退出し、医師の簡単な予備診察は着陸後おおむね1時間以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| AC-TA-02 | 行動 | 乗員の退出と地上冷却のあと JSC が KSC に責任を引き渡し、機体を OPF へ牽引する | — | AC_TA_02 | 乗員の退出と地上冷却の確立の後、飛行中に機体を管制する JSC が機体の責任を KSC に引き渡す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）牽引は通常着陸後4時間以内に始まり、6時間以内に完了する（滑走路上で時間に敏感な実験の取り出しが要る場合を除く）。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）牽引車はオービタを Shuttle Landing Facility から2マイルの tow-way で OPF まで曳き、OPF には約197フィート×150フィート×95フィートの3つのベイがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| AC-TA-03 | 行動 | OPF でエンジンを外し、タイル・構造・降着装置を点検し、重量と重心を測る | — | AC_TA_03 | OPF では主エンジンのパージ、ペイロードベイ扉の開放、燃料電池極低温タンクの排出、3基のエンジンの取り外しと Main Engine Processing 施設への搬送を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF では熱防護系・構造・降着装置の目視点検を行い、熱防護系の損傷は次の飛行前に直す。外側に約25,000枚のタイルとブランケットがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF 処理の最後の段は、オービタの重量と重心の測定である。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3） |
| DC-TA-01 | 判断 | 熱防護系などに損傷があるか | — | DC_TA_01 | OPF では熱防護系・構造・降着装置の目視点検を行い、熱防護系の損傷は次の飛行前に直す。外側に約25,000枚のタイルとブランケットがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3） |
| MG-TA-01 | 合流 | — | — | MG_TA_01 | — |
| AC-TA-05 | 行動 | VAB へ移し、MLP 上で外部タンク・SRB と結合して6日の点検を行う | F-LPS-02 | AC_TA_05 | OPF から VAB への移送は、通常 76輪の orbiter transfer system で行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）VAB は高さ 525 フィート・長さ 716 フィート・幅 518 フィートで、bay 1 と bay 3 が垂直結合に使われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）オービタは transfer aisle で垂直にされ、bay 1 で MLP 上の外部タンク・SRB の横に降ろされて結合される。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）VAB での点検は6日後に完了し、その後クローラ・トランスポータが MLP ごと機体を載せてロールアウトが始まる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| AC-TA-06 | 行動 | クローラ・トランスポータで射点へ運び、MLP を台座に据える | F-LPS-02 | AC_TA_06 | クローラウェイ経由の射点への移動は約6時間で、クローラの最高速度は空荷で 2 mph、積載時で 1 mph である。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）MLP が射点の台座に hard down した後、クローラは後退して駐機場へ戻る。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| AC-TA-07 | 行動 | 射点でペイロード・後部エンジン区画・火工品の最終処理を行い、乗員が TCDT を行う | F-LPS-02 | AC_TA_07 | 射点 39A・39B には固定整備構造（FSS）と回転整備構造があり、打上げ前の最終のペイロード処理を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）打上げ前の最終準備として、ペイロードの最終点検、後部エンジン区画の閉鎖点検、SRB 点火・分離用火工品の電気接続を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）打上げの数週間前に乗員が KSC に到着し、Terminal Countdown Demonstration Test（スライドワイヤ脱出と模擬カウントダウン）を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）ペイロードは OPF で水平に、または射点のペイロード交換室で垂直に取り付けられる。ペイロード処理は機体の処理と並行して行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| AC-TA-08 | 行動 | T-43 時間にカウントダウンを始め、T-27・T-19 時間の保持で試験・切り離し・搭載を行う | F-LPS-01・F-LPS-02 | AC_TA_08 | 打上げカウントダウンは T-43 時間（打上げの約3日前）に始まり、管制員は firing room で飛行系と飛行ソフトウェアを点検する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）T-27 時間に計画の保持（built-in hold）に入り、火工品イニシエータ制御器を試験し、再開後に燃料電池の極低温反応物を搭載する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）T-19 時間の保持で、オービタ中間体アンビリカルユニットの切り離しと、音響抑制系の水タンクの充填を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| AC-TA-09 | 行動 | T-11 時間の保持で未了の準備と不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す | F-LPS-02 | AC_TA_09 | T-11 時間の第3の保持で、未了の準備の追い込みと不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| AC-TA-10 | 行動 | 射点で外部タンクに約 500,000 gal の極低温推進薬を充填する（打上げ予定の約8時間前） | F-LPS-02 | AC_TA_10 | 外部タンクへの約 500,000 ガロンの極低温推進薬の充填は、射点で打上げ予定の約8時間前に行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |
| AC-TA-11 | 行動 | 乗員が搭乗し、最終の確認とターミナル・シーケンス（図95）を経て打ち上げる | F-LPS-01 | AC_TA_11 | カウントダウンの最終の数時間には、乗員の搭乗、乗員モジュールと white room の閉じ込み、最終のコンピュータ・ソフトウェアの構成、打上げチームの最終の準備確認、ターミナル・シーケンスがあり、そのあとリフトオフする。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |
| EN-TA | 終了 | — | — | done | — |
| AC-TA-04 | 行動 | 損傷を次の飛行の前に直す | — | AC_TA_04 | OPF では熱防護系・構造・降着装置の目視点検を行い、熱防護系の損傷は次の飛行前に直す。外側に約25,000枚のタイルとブランケットがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3） |

## 4. 図254 の流れ

図254 着陸後から打上げまでの地上処理 活動図の流れ 15件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-TA-01 | ST-TA（開始） | AC-TA-01（着陸後、コンボイが滑走路に展開して蒸気を測り、機体をパージして乗員が退出する） | — | — |
| FL-TA-02 | AC-TA-01（着陸後、コンボイが滑走路に展開して蒸気を測り、機体をパージして乗員が退出する） | AC-TA-02（乗員の退出と地上冷却のあと JSC が KSC に責任を引き渡し、機体を OPF へ牽引する） | — | — |
| FL-TA-03 | AC-TA-02（乗員の退出と地上冷却のあと JSC が KSC に責任を引き渡し、機体を OPF へ牽引する） | AC-TA-03（OPF でエンジンを外し、タイル・構造・降着装置を点検し、重量と重心を測る） | — | — |
| FL-TA-04 | AC-TA-03（OPF でエンジンを外し、タイル・構造・降着装置を点検し、重量と重心を測る） | DC-TA-01（熱防護系などに損傷があるか） | — | — |
| FL-TA-05 | DC-TA-01（熱防護系などに損傷があるか） | MG-TA-01（合流） | 損傷なし | noDamage |
| FL-TA-06 | DC-TA-01（熱防護系などに損傷があるか） | AC-TA-04（損傷を次の飛行の前に直す） | 損傷あり | not noDamage |
| FL-TA-07 | AC-TA-04（損傷を次の飛行の前に直す） | MG-TA-01（合流） | — | — |
| FL-TA-08 | MG-TA-01（合流） | AC-TA-05（VAB へ移し、MLP 上で外部タンク・SRB と結合して6日の点検を行う） | — | — |
| FL-TA-09 | AC-TA-05（VAB へ移し、MLP 上で外部タンク・SRB と結合して6日の点検を行う） | AC-TA-06（クローラ・トランスポータで射点へ運び、MLP を台座に据える） | — | — |
| FL-TA-10 | AC-TA-06（クローラ・トランスポータで射点へ運び、MLP を台座に据える） | AC-TA-07（射点でペイロード・後部エンジン区画・火工品の最終処理を行い、乗員が TCDT を行う） | — | — |
| FL-TA-11 | AC-TA-07（射点でペイロード・後部エンジン区画・火工品の最終処理を行い、乗員が TCDT を行う） | AC-TA-08（T-43 時間にカウントダウンを始め、T-27・T-19 時間の保持で試験・切り離し・搭載を行う） | — | — |
| FL-TA-12 | AC-TA-08（T-43 時間にカウントダウンを始め、T-27・T-19 時間の保持で試験・切り離し・搭載を行う） | AC-TA-09（T-11 時間の保持で未了の準備と不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す） | — | — |
| FL-TA-13 | AC-TA-09（T-11 時間の保持で未了の準備と不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す） | AC-TA-10（射点で外部タンクに約 500,000 gal の極低温推進薬を充填する（打上げ予定の約8時間前）） | — | — |
| FL-TA-14 | AC-TA-10（射点で外部タンクに約 500,000 gal の極低温推進薬を充填する（打上げ予定の約8時間前）） | AC-TA-11（乗員が搭乗し、最終の確認とターミナル・シーケンス（図95）を経て打ち上げる） | — | — |
| FL-TA-15 | AC-TA-11（乗員が搭乗し、最終の確認とターミナル・シーケンス（図95）を経て打ち上げる） | EN-TA（終了） | — | — |

## 5. 図255 の状態

図255 地上の機体の状態 状態遷移図（地上の機体の状態（着陸後から打上げの最終まで）、地上処理（GND））の状態 12件を示す。初期状態は GNDS-01 である。

| ID | 状態 | 親 | 種別 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|---|
| GNDS-01 | 着陸後・滑走路上（コンボイ展開・安全化・乗員退出。PH-7 と重なる） | — | 通常 | — | GNDS_01 | 着陸・車輪停止の後、約25台の専用車両と約150人の要員からなるコンボイが滑走路に展開する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=1）コンボイの最初の待機位置はオービタから 1,250 フィートで、安全評価班が水素・ヒドラジン・MMH・四酸化二窒素・アンモニアの蒸気を検知器で測る。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）機体のパージは、オービタが完全に停止してから通常 45〜60分以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）乗員は白い部屋（white room）経由で退出し、医師の簡単な予備診察は着陸後おおむね1時間以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| GNDS-02 | 引継ぎ・牽引（滑走路から OPF へ） | — | 通常 | — | GNDS_02 | 乗員の退出と地上冷却の確立の後、飛行中に機体を管制する JSC が機体の責任を KSC に引き渡す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）牽引は通常着陸後4時間以内に始まり、6時間以内に完了する（滑走路上で時間に敏感な実験の取り出しが要る場合を除く）。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）牽引車はオービタを Shuttle Landing Facility から2マイルの tow-way で OPF まで曳き、OPF には約197フィート×150フィート×95フィートの3つのベイがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| GNDS-03 | OPF で処理中 | — | 通常 | — | GNDS_03 | OPF では主エンジンのパージ、ペイロードベイ扉の開放、燃料電池極低温タンクの排出、3基のエンジンの取り外しと Main Engine Processing 施設への搬送を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF では熱防護系・構造・降着装置の目視点検を行い、熱防護系の損傷は次の飛行前に直す。外側に約25,000枚のタイルとブランケットがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF 処理の最後の段は、オービタの重量と重心の測定である。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF で過ごす時間は、典型的には 100日未満である（2006年の記述）。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3） |
| GNDS-04 | VAB で結合・点検中 | — | 通常 | F-LPS-02 | GNDS_04 | VAB は高さ 525 フィート・長さ 716 フィート・幅 518 フィートで、bay 1 と bay 3 が垂直結合に使われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）オービタは transfer aisle で垂直にされ、bay 1 で MLP 上の外部タンク・SRB の横に降ろされて結合される。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）VAB での点検は6日後に完了し、その後クローラ・トランスポータが MLP ごと機体を載せてロールアウトが始まる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| GNDS-05 | クローラでロールアウト中 | — | 通常 | F-LPS-02 | GNDS_05 | クローラウェイ経由の射点への移動は約6時間で、クローラの最高速度は空荷で 2 mph、積載時で 1 mph である。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| GNDS-06 | 射点で最終処理 | — | 通常 | F-LPS-02 | GNDS_06 | MLP が射点の台座に hard down した後、クローラは後退して駐機場へ戻る。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）射点 39A・39B には固定整備構造（FSS）と回転整備構造があり、打上げ前の最終のペイロード処理を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）打上げ前の最終準備として、ペイロードの最終点検、後部エンジン区画の閉鎖点検、SRB 点火・分離用火工品の電気接続を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）打上げの数週間前に乗員が KSC に到着し、Terminal Countdown Demonstration Test（スライドワイヤ脱出と模擬カウントダウン）を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）ペイロードは OPF で水平に、または射点のペイロード交換室で垂直に取り付けられる。ペイロード処理は機体の処理と並行して行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDS-07 | カウントダウン計数中（T-43 時間から。保持から戻る） | — | 通常 | F-LPS-01 | GNDS_07 | 打上げカウントダウンは T-43 時間（打上げの約3日前）に始まり、管制員は firing room で飛行系と飛行ソフトウェアを点検する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDS-08 | T-27 時間の保持 | — | 通常 | F-LPS-01 | GNDS_08 | T-27 時間に計画の保持（built-in hold）に入り、火工品イニシエータ制御器を試験し、再開後に燃料電池の極低温反応物を搭載する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDS-09 | T-19 時間の保持 | — | 通常 | F-LPS-01・F-LPS-02 | GNDS_09 | T-19 時間の保持で、オービタ中間体アンビリカルユニットの切り離しと、音響抑制系の水タンクの充填を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDS-10 | T-11 時間の保持（第3） | — | 通常 | F-LPS-02 | GNDS_10 | T-11 時間の第3の保持で、未了の準備の追い込みと不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDS-11 | 最終の数時間（外部タンクの充填・乗員搭乗・最終確認） | — | 通常 | F-LPS-01・F-LPS-02 | GNDS_11 | 外部タンクへの約 500,000 ガロンの極低温推進薬の充填は、射点で打上げ予定の約8時間前に行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6）カウントダウンの最終の数時間には、乗員の搭乗、乗員モジュールと white room の閉じ込み、最終のコンピュータ・ソフトウェアの構成、打上げチームの最終の準備確認、ターミナル・シーケンスがあり、そのあとリフトオフする。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |
| GNDS-12 | ターミナル・シーケンス以降（図95 の最終秒読み。PH-1 の末） | — | 通常 | F-LPS-01 | GNDS_12 | カウントダウンの最終の数時間には、乗員の搭乗、乗員モジュールと white room の閉じ込み、最終のコンピュータ・ソフトウェアの構成、打上げチームの最終の準備確認、ターミナル・シーケンスがあり、そのあとリフトオフする。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |

## 6. 図255 の遷移

図255 地上の機体の状態 状態遷移図の遷移 14件を示す。トリガは遷移を起こす事象、ガードはその遷移を選ぶ条件である。

| ID | 元 | 先 | トリガ | ガード | SysML | 根拠 |
|---|---|---|---|---|---|---|
| GNDT-01 | GNDS-01（着陸後・滑走路上（コンボイ展開・安全化・乗員退出。PH-7 と重なる）） | GNDS-02（引継ぎ・牽引（滑走路から OPF へ）） | JSC が機体の責任を KSC に引き渡す | 乗員が退出し、地上冷却が確立している | GNDT_01（accept GndEv01 if gndGuard01） | 乗員の退出と地上冷却の確立の後、飛行中に機体を管制する JSC が機体の責任を KSC に引き渡す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）乗員は白い部屋（white room）経由で退出し、医師の簡単な予備診察は着陸後おおむね1時間以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| GNDT-02 | GNDS-02（引継ぎ・牽引（滑走路から OPF へ）） | GNDS-03（OPF で処理中） | 牽引車が OPF へ機体を曳き入れる（着陸後4時間以内に始まり6時間以内に完了） | — | GNDT_02（accept GndEv02） | 牽引は通常着陸後4時間以内に始まり、6時間以内に完了する（滑走路上で時間に敏感な実験の取り出しが要る場合を除く）。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）牽引車はオービタを Shuttle Landing Facility から2マイルの tow-way で OPF まで曳き、OPF には約197フィート×150フィート×95フィートの3つのベイがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| GNDT-03 | GNDS-03（OPF で処理中） | GNDS-04（VAB で結合・点検中） | orbiter transfer system で OPF から VAB へ移す | 重量と重心の測定が済んでいる | GNDT_03（accept GndEv03 if gndGuard03） | OPF 処理の最後の段は、オービタの重量と重心の測定である。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF から VAB への移送は、通常 76輪の orbiter transfer system で行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| GNDT-04 | GNDS-04（VAB で結合・点検中） | GNDS-05（クローラでロールアウト中） | クローラ・トランスポータが MLP ごと機体を載せてロールアウトを始める | VAB の点検が完了している（6日） | GNDT_04（accept GndEv04 if gndGuard04） | VAB での点検は6日後に完了し、その後クローラ・トランスポータが MLP ごと機体を載せてロールアウトが始まる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| GNDT-05 | GNDS-05（クローラでロールアウト中） | GNDS-06（射点で最終処理） | MLP が射点の台座に据えられる（hard down） | — | GNDT_05（accept GndEv05） | MLP が射点の台座に hard down した後、クローラは後退して駐機場へ戻る。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| GNDT-06 | GNDS-06（射点で最終処理） | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | T-43 時間にカウントダウンが始まる（打上げの約3日前） | 最終準備（ペイロード・後部エンジン区画・火工品）が行われている | GNDT_06（accept GndEv06 if gndGuard06） | 打上げカウントダウンは T-43 時間（打上げの約3日前）に始まり、管制員は firing room で飛行系と飛行ソフトウェアを点検する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）打上げ前の最終準備として、ペイロードの最終点検、後部エンジン区画の閉鎖点検、SRB 点火・分離用火工品の電気接続を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDT-07 | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | GNDS-08（T-27 時間の保持） | T-27 時間に計画の保持に入る（火工品イニシエータ制御器の試験） | — | GNDT_07（accept GndEv07） | T-27 時間に計画の保持（built-in hold）に入り、火工品イニシエータ制御器を試験し、再開後に燃料電池の極低温反応物を搭載する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDT-08 | GNDS-08（T-27 時間の保持） | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | カウントダウンが再開する（燃料電池の極低温反応物を搭載） | — | GNDT_08（accept GndEv08） | T-27 時間に計画の保持（built-in hold）に入り、火工品イニシエータ制御器を試験し、再開後に燃料電池の極低温反応物を搭載する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDT-09 | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | GNDS-09（T-19 時間の保持） | T-19 時間に保持に入る（中間体アンビリカルの切り離し・音響抑制系の水タンクの充填） | — | GNDT_09（accept GndEv09） | T-19 時間の保持で、オービタ中間体アンビリカルユニットの切り離しと、音響抑制系の水タンクの充填を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDT-10 | GNDS-09（T-19 時間の保持） | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | カウントダウンが再開する（3基のメインエンジンを推進薬の搭載と飛行に向けて準備する） | — | GNDT_10（accept GndEv10） | T-19 時間の保持で、オービタ中間体アンビリカルユニットの切り離しと、音響抑制系の水タンクの充填を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDT-11 | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | GNDS-10（T-11 時間の保持（第3）） | T-11 時間に第3の保持に入る（未了の準備と不具合の調査） | — | GNDT_11（accept GndEv11） | T-11 時間の第3の保持で、未了の準備の追い込みと不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDT-12 | GNDS-10（T-11 時間の保持（第3）） | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | カウントダウンが再開し、回転整備構造を引き戻す | 問題がない | GNDT_12（accept GndEv12 if gndGuard12） | T-11 時間の第3の保持で、未了の準備の追い込みと不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| GNDT-13 | GNDS-07（カウントダウン計数中（T-43 時間から。保持から戻る）） | GNDS-11（最終の数時間（外部タンクの充填・乗員搭乗・最終確認）） | 外部タンクへの推進薬の充填が始まる（打上げ予定の約8時間前） | — | GNDT_13（accept GndEv13） | 外部タンクへの約 500,000 ガロンの極低温推進薬の充填は、射点で打上げ予定の約8時間前に行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |
| GNDT-14 | GNDS-11（最終の数時間（外部タンクの充填・乗員搭乗・最終確認）） | GNDS-12（ターミナル・シーケンス以降（図95 の最終秒読み。PH-1 の末）） | 最終の準備確認がそろい、ターミナル・シーケンスに入る | 乗員が搭乗し、最終の準備確認がそろっている | GNDT_14（accept GndEv14 if gndGuard14） | カウントダウンの最終の数時間には、乗員の搭乗、乗員モジュールと white room の閉じ込み、最終のコンピュータ・ソフトウェアの構成、打上げチームの最終の準備確認、ターミナル・シーケンスがあり、そのあとリフトオフする。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |

## 7. 警報との対応

C/W の警告灯（SSD-FDIR-ORB-001）で始まる遷移 0件を示す。該当する遷移は無い。本書の状態機械に、C/W の警告灯で始まる遷移は無い。

| 遷移 | 状態機械 | 警報 | 警告灯 | トリガ |
|---|---|---|---|---|

## 8. フェーズとの対応

ミッションフェーズ（SSD-OPS-PHASE-001）ごとの状態を示す。— は、そのフェーズでの状態の記述が資料に無いもの。根拠は表の後ろに示す。

| 状態機械 | PH-1 打上げ前 | PH-2 上昇 | PH-3 軌道 | PH-4 離脱準備 | PH-5 EVA | PH-6 再突入 | PH-7 着陸後 |
|---|---|---|---|---|---|---|---|
| 地上処理（GND） | GNDS-07・GNDS-08・GNDS-09・GNDS-10・GNDS-11・GNDS-12 | — | — | — | — | — | GNDS-01 |

- 地上処理（GND）・PH-1：打上げカウントダウンは T-43 時間（打上げの約3日前）に始まり、管制員は firing room で飛行系と飛行ソフトウェアを点検する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）カウントダウンの最終の数時間には、乗員の搭乗、乗員モジュールと white room の閉じ込み、最終のコンピュータ・ソフトウェアの構成、打上げチームの最終の準備確認、ターミナル・シーケンスがあり、そのあとリフトオフする。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6）
- 地上処理（GND）・PH-7：機体のパージは、オービタが完全に停止してから通常 45〜60分以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）乗員は白い部屋（white room）経由で退出し、医師の簡単な予備診察は着陸後おおむね1時間以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）

## 9. 構造との対応

状態機械を持つ部品を示す。構造モデルの部品の定義を特化した part def に、状態機械を exhibit state で持たせた。

| 状態機械 | 機能説明書 | 構造の part def | 特化した part def | state def |
|---|---|---|---|---|
| 地上処理（GND） | SSD-FD-EXT-001 | SSD_BLK_SYS_001::LaunchProcessing | GroundProcessingStatesHolder | GroundProcessingStates |

## 10. 地上処理の段と施設

着陸後から打上げまでの主な段 10件を、資料に述べられた順に示す（NASA Facts 2006 の OPF から打上げまで）。時間の欄は、本文に書かれた時間・日数を資料の語のまま転記したもので、日数が書かれた段は少ない（注記）。基準の時期は2006年。

| ID | 順 | 段 | 施設 | 資料の時間の記述 | 根拠 |
|---|---|---|---|---|---|
| CMS-01 | 1 | 着陸とコンボイの展開 | シャトル着陸施設 | — | 地上処理の仕事は主に Launch Complex 39 Area で行われ、Kennedy の Shuttle Landing Facility が主な着陸場所である（2006年の記述）。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=1）着陸・車輪停止の後、約25台の専用車両と約150人の要員からなるコンボイが滑走路に展開する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=1） |
| CMS-02 | 2 | 安全化（蒸気検査・パージ・乗員退出） | シャトル着陸施設 | パージは完全停止後 45〜60分以内。乗員の予備診察は着陸後おおむね1時間以内 | コンボイの最初の待機位置はオービタから 1,250 フィートで、安全評価班が水素・ヒドラジン・MMH・四酸化二窒素・アンモニアの蒸気を検知器で測る。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）機体のパージは、オービタが完全に停止してから通常 45〜60分以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）乗員は白い部屋（white room）経由で退出し、医師の簡単な予備診察は着陸後おおむね1時間以内に行われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| CMS-03 | 3 | JSC から KSC への引継ぎと牽引 | シャトル着陸施設から OPF への tow-way | 牽引は着陸後4時間以内に始まり、6時間以内に完了 | 乗員の退出と地上冷却の確立の後、飛行中に機体を管制する JSC が機体の責任を KSC に引き渡す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）牽引は通常着陸後4時間以内に始まり、6時間以内に完了する（滑走路上で時間に敏感な実験の取り出しが要る場合を除く）。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2）牽引車はオービタを Shuttle Landing Facility から2マイルの tow-way で OPF まで曳き、OPF には約197フィート×150フィート×95フィートの3つのベイがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2） |
| CMS-04 | 4 | OPF での後処理・整備・重量測定 | オービタ整備施設（OPF） | 典型的には 100日未満（less than 100 days。上限の語で、点の値ではない） | OPF では主エンジンのパージ、ペイロードベイ扉の開放、燃料電池極低温タンクの排出、3基のエンジンの取り外しと Main Engine Processing 施設への搬送を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF では熱防護系・構造・降着装置の目視点検を行い、熱防護系の損傷は次の飛行前に直す。外側に約25,000枚のタイルとブランケットがある。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF 処理の最後の段は、オービタの重量と重心の測定である。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3）OPF で過ごす時間は、典型的には 100日未満である（2006年の記述）。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3） |
| CMS-05 | 5 | OPF から VAB への移送 | 機体組立棟（VAB） | — | OPF から VAB への移送は、通常 76輪の orbiter transfer system で行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| CMS-06 | 6 | VAB での外部タンク・SRB との結合と点検 | 機体組立棟（VAB） | 6日で点検が完了（本文は six days と語で書く） | VAB は高さ 525 フィート・長さ 716 フィート・幅 518 フィートで、bay 1 と bay 3 が垂直結合に使われる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）オービタは transfer aisle で垂直にされ、bay 1 で MLP 上の外部タンク・SRB の横に降ろされて結合される。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）VAB での点検は6日後に完了し、その後クローラ・トランスポータが MLP ごと機体を載せてロールアウトが始まる。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| CMS-07 | 7 | クローラ・トランスポータによるロールアウト | クローラウェイ | 約6時間（クローラの最高速度は空荷で 2 mph、積載時で 1 mph） | クローラウェイ経由の射点への移動は約6時間で、クローラの最高速度は空荷で 2 mph、積載時で 1 mph である。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| CMS-08 | 8 | 射点での設置と最終処理 | 発射台 39A・39B | — | MLP が射点の台座に hard down した後、クローラは後退して駐機場へ戻る。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4）射点 39A・39B には固定整備構造（FSS）と回転整備構造があり、打上げ前の最終のペイロード処理を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4） |
| CMS-09 | 9 | 打上げ前の最終準備と乗員の模擬カウントダウン | 発射台 | TCDT は打上げの数週間前 | 打上げ前の最終準備として、ペイロードの最終点検、後部エンジン区画の閉鎖点検、SRB 点火・分離用火工品の電気接続を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）打上げの数週間前に乗員が KSC に到着し、Terminal Countdown Demonstration Test（スライドワイヤ脱出と模擬カウントダウン）を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| CMS-10 | 10 | 打上げカウントダウン | 発射管制センターの firing room と発射台 | — | 打上げカウントダウンは T-43 時間（打上げの約3日前）に始まり、管制員は firing room で飛行系と飛行ソフトウェアを点検する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）T-27 時間に計画の保持（built-in hold）に入り、火工品イニシエータ制御器を試験し、再開後に燃料電池の極低温反応物を搭載する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）T-19 時間の保持で、オービタ中間体アンビリカルユニットの切り離しと、音響抑制系の水タンクの充填を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）T-11 時間の第3の保持で、未了の準備の追い込みと不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5）外部タンクへの約 500,000 ガロンの極低温推進薬の充填は、射点で打上げ予定の約8時間前に行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |

## 11. 秒読みの節目

カウントダウンの節目 6点を、資料の表記のまま示す。T- 時刻は T-43・T-27・T-19・T-11 の4点で、残る2点は「打上げ予定の約8時間前」「打上げの数週間前」の相対の表記（T- 時刻に数えない）。T-9分以降（T-6:15・T-5分・T-31秒・T-6.6秒を含む）は SSD-BEH-ORB-003 の AS-01〜AS-08（図95）にあり、本書は写さない。

| ID | 節目 | 資料の表記 | 根拠 |
|---|---|---|---|
| CMT-01 | カウントダウン開始（約3日前） | T-43 hour | 打上げカウントダウンは T-43 時間（打上げの約3日前）に始まり、管制員は firing room で飛行系と飛行ソフトウェアを点検する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| CMT-02 | T-27 時間の保持と極低温反応物の搭載 | T-27 hours | T-27 時間に計画の保持（built-in hold）に入り、火工品イニシエータ制御器を試験し、再開後に燃料電池の極低温反応物を搭載する。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| CMT-03 | T-19 時間の保持とアンビリカルの切り離し | T-19 hours | T-19 時間の保持で、オービタ中間体アンビリカルユニットの切り離しと、音響抑制系の水タンクの充填を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| CMT-04 | T-11 時間の保持（第3） | T-11 hours | T-11 時間の第3の保持で、未了の準備の追い込みと不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |
| CMT-05 | 外部タンクの推進薬充填（打上げ予定の約8時間前） | approximately eight hours before the scheduled launch | 外部タンクへの約 500,000 ガロンの極低温推進薬の充填は、射点で打上げ予定の約8時間前に行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6） |
| CMT-06 | TCDT（打上げの数週間前） | Several weeks before launch | 打上げの数週間前に乗員が KSC に到着し、Terminal Countdown Demonstration Test（スライドワイヤ脱出と模擬カウントダウン）を行う。（出典: https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5） |

## 12. 図

図254 は着陸後から打上げまでの活動図（節点は資料の述べる順の行動、判断は熱防護系などの損傷の有無）、図255 は地上の機体の状態遷移図（秒読みの保持 T-27・T-19・T-11 の周期を含む）、図256 は段・施設・秒読みの節目の表である。

## 13. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-GND-ORB-001.sysml](../SysML/SSD-GND-ORB-001.sysml) に示す。地上処理の action def 1件（行動 11件・判断・合流と流れ）、地上の機体の state def 1件（状態 12件・遷移 14件）と、外部系の打上げ処理（LaunchProcessing）に状態機械を持たせた part def から成る。構造モデル・SSD-BEH-ORB-005 を読み込んでから読む。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。要求への SysML の関係は張らず、トレースの外に置いた。

## 14. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：事前に決めた最低限（計画 PLAN_CM 追記1）の (b)「主な段の日数が本文か表で5段以上」は満たさなかった。本文・表で日数が取れる段は OPF の「100日未満」（上限の語）だけで、VAB の6日は数を語で書き、牽引とロールアウトは時間の単位である。射点の日数は資料に無い。そのため日数の表は作っていない（事前の規則どおり）。

> **注記** 範囲・取れなかった値・本書の判断：事前に決めた最低限の (c)「秒読みの節目（T- 時刻）が5点以上」は、本書の資料の T- 時刻が4点（T-43・T-27・T-19・T-11）で届かなかった。結果を見たあとに、図95（SSD-BEH-ORB-003）の既存の行（T-9分・T-6:15・T-5分・T-31秒・T-6.6秒。AS-01〜AS-08）をリンクで合わせて満たすと判断した（本書の判断。事前の計画に、未達のときの扱いは書いていなかった）。「打上げ予定の約8時間前」「打上げの数週間前」は T- 時刻に数えず、表には相対の表記のまま載せた。

> **注記** 範囲・取れなかった値・本書の判断：STS-1〜7 の時期（1983年ごろ）の施設ごとの日数は、論文（NTRS 19850008617）の図1（OPF・射点の棒グラフ）に図だけで載り、本文に値が無い。図から読んでいない。

> **注記** 範囲・取れなかった値・本書の判断：SRB の回収・整備（Hangar AF）、RPSF（固体ロケットブースタの処理施設）、MLP の整備、T-9分の保持以降の詳細は、取り込んだ2つの資料に無い（T-9分以降は図95の既存の根拠）。

> **注記** 範囲・取れなかった値・本書の判断：基準の時期は、NASA Facts の2006年（運用の晩期、Discovery の例）。1985年の論文の数字（1983年ごろ）は時期が違うので図表に混ぜず、注記に年つきで書いた。

> **注記** 範囲・取れなかった値・本書の判断：状態機械の遷移は、資料の述べる順序から起こした。保持の長さ、保持の中の作業の順序、T-27・T-19 の保持から再開する条件は資料に無い（T-11 の保持だけ「問題がなければ再開」と書く）。

> **注記** 範囲・取れなかった値・本書の判断：NTRS 19940014704（KSC のペイロード処理）は小型ペイロードに限られるため取り込まなかった。ペイロードの取付けは、資料の「OPF で水平に、または射点のペイロード交換室で垂直に」の一文だけを使った。

> **注記** 1985年の論文（NTRS 19850008617。STS-1〜7 の時期、1983年ごろ）の数字（原文のまま。基準の時期が違うので図表に載せていない）：（1）総ターンアラウンド時間は STS-2 の 187日から STS-7 の 60日に、着陸のターンアラウンドは 14日から 5日に短縮された（1985年の論文の要旨）。（2）OPF の時間は引き続きターンアラウンドの約半分で、VAB での結合は流れの約10パーセント、射点作業は40パーセントである（STS-1〜7 の時期）。（3）オービタ 102 は 1979年3月25日に KSC に到着し、1981年4月12日に打ち上げられた（到着から 744日後）。STS-1 の処理は運用のターンアラウンドの尺度にならないとされる。（4）STS-7 の総処理時間は 60 working days で、STS-8 は約 50 working days と見込まれた（1983年ごろ）。

> **注記** フェーズとの対応（本書の判断）：PH-1 の行は、秒読みの状態（GNDS-07〜12）だけにした。根拠の秒読みの文（T-43 以降）が PH-1（SRB 点火まで）の飛行当日の運用に当たるため。着陸後の牽引・OPF・VAB・ロールアウト・射点での最終処理（GNDS-02〜06）は飛行と飛行の間の地上処理で、どのフェーズにも入れていない。

> **注記** 機能の割付（本書の判断）：データバスを通した飛行系・飛行ソフトウェアの点検と火工品の試験に当たる行動・状態は F-LPS-01、射点・VAB での整備と推進薬・水の搭載に当たるものは F-LPS-02 とし、両方に当たるもの（T-19 時間の保持、最終の数時間、T-27・T-19 の保持を含む秒読み）は両方を付けた。略語は、回転整備構造を既存の略語表の RSS（Range Safety System）と区別するため、本文では書き下した。

> **注記** 既存との重なり：着陸後の安全化・乗員退出は PH-7（SSD-OPS-PHASE-001）、最終秒読みは図95（SSD-BEH-ORB-003）、結合・ロールアウト・射点での整備は外部系の機能 F-LPS-02（SSD-FD-EXT-001）、打上げデータバスは F-LPS-01。TPS の点検の活動は Rev. BT の活動図（飛行中の点検）と別の、着陸後の OPF での点検・補修（本書）である。ID は文字列として引き、リンクと注記でつないだ。

## 15. 参考文献

1. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p1） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=1
2. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p2） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2
3. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p2） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2
4. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p2） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2
5. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p2） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2
6. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p2） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2
7. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p2） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=2
8. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p3） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3
9. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p3） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3
10. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p3） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3
11. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p3） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3
12. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p4） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4
13. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p4） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4
14. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p4） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4
15. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p4） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4
16. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p4） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4
17. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p4） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4
18. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p4） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=4
19. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p5） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5
20. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p5） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5
21. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p5） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5
22. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p5） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5
23. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p5） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5
24. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p5） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5
25. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p5） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=5
26. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p6） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6
27. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p6） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=6
28. NASA Facts FS-2005-06-018-KSC (Rev. 2006) Space Shuttle: Orbiter Processing From Landing To Launch (NASA KSC、2006、8頁、4,804,696 バイト) （PDF p3） — https://www.nasa.gov/sites/default/files/167429main_OrbiterProcessing08.pdf#page=3
29. NTRS 19850008617 (N85-16926) Overview of STS Ground Operations/Orbiter Turnaround STS-1 through STS-7 (R. Schwartz、Rockwell International KSC、1985、8頁、2,700,119 バイト) （PDF p1） — https://ntrs.nasa.gov/api/citations/19850008617/downloads/19850008617.pdf#page=1
30. NTRS 19850008617 (N85-16926) Overview of STS Ground Operations/Orbiter Turnaround STS-1 through STS-7 (R. Schwartz、Rockwell International KSC、1985、8頁、2,700,119 バイト) （PDF p2） — https://ntrs.nasa.gov/api/citations/19850008617/downloads/19850008617.pdf#page=2
31. NTRS 19850008617 (N85-16926) Overview of STS Ground Operations/Orbiter Turnaround STS-1 through STS-7 (R. Schwartz、Rockwell International KSC、1985、8頁、2,700,119 バイト) （PDF p3） — https://ntrs.nasa.gov/api/citations/19850008617/downloads/19850008617.pdf#page=3
32. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
33. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 16. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-17 | 初版作成（活動図 1件：節点 15件、状態機械 1件：状態 12件・遷移 14件、段 10件・秒読みの節目 6点、図254〜256、SysML v2 テキスト） |
