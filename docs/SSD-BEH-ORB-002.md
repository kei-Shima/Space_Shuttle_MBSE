# 故障処置の活動定義書（MPS ヘリウム漏れ・燃料電池の冷却喪失・火災）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BEH-ORB-002 |
| 表題 | 故障処置の活動定義書（MPS ヘリウム漏れ・燃料電池の冷却喪失・火災） |
| 版・日付 | Rev. C／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FMEA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図80 MPS ヘリウム漏れ処置 活動図・図81 燃料電池の冷却喪失処置 活動図・図82 火災処置 活動図 |

## 1. 目的

代表の故障処置を活動図で示す。図80 MPS ヘリウム漏れ処置 活動図・図81 燃料電池の冷却喪失処置 活動図・図82 火災処置 活動図 は、警報から判断・処置・帰還の判断までの流れを、運用飛行規則（[CIL] の規則を含む）と SCOM 6.8 の緊急手順の頁で裏付け、各行動を担う機能（F-ID）と故障解析表（FMEA・CIL）につなぐ。同じ節点と流れを SysML v2 のテキスト（SysML/SSD-BEH-ORB-002.sysml）でも示す。

## 2. 書き方

節点の種別は、開始・行動・判断・合流・終了の5つである。判断から出る流れにはガード（その流れを選ぶ条件）を書く。機能の欄は、その行動を担う機能説明書の行である。SysML の欄は SysML v2 テキストでの名前（行動・判断・合流）とガードの属性名である。

## 3. 図80 の節点

図80 MPS ヘリウム漏れ処置 活動図（MPS のエンジン系統のヘリウム漏れの処置（上昇中、MECO まで））の節点 14件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-HE | 開始 | — | — | start | — |
| AC-HE-01 | 行動 | エンジン系統の有意なヘリウム漏れを検知 | F-MPS-OPS-08 | AC_HE_01 | エンジン系統の有意なヘリウム漏れでは、隔離の試みでエンジンが止まらない限り、漏れの隔離を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| DC-HE-01 | 判断 | 隔離でエンジンが止まるか | — | DC_HE_01 | 電源母線の故障で leg A の隔離弁が閉じている場合は、leg B を閉じると SSME が停止するため、隔離を試みない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| AC-HE-02 | 行動 | 漏れの隔離の手順を行う | F-MPS-OPS-08・F-MPS-HE-07 | AC_HE_02 | エンジンのヘリウム系に漏れがあると、乗員はヘリウム漏れの隔離の手順を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| AC-HE-03 | 行動 | 隔離しない（エンジンの運転を続ける） | F-MPS-OPS-08 | AC_HE_03 | 電源母線の故障で leg A の隔離弁が閉じている場合は、隔離を試みない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| MG-HE-01 | 合流 | — | — | MG_HE_01 | — |
| DC-HE-02 | 判断 | 零G の停止の要件を満たせないか | — | DC_HE_02 | 漏れの減衰で零G の停止の要件を満たせない、または早期の停止になる場合は、ヘリウム系を相互接続する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1068） |
| AC-HE-04 | 行動 | ヘリウム系を相互接続（C&W 1,150 psia、遅くとも 920 psia） | F-MPS-HE-11・F-MPS-OPS-09 | AC_HE_04 | 相互接続の最低のタンク圧は 920 psia（必要 900 psia＋計測誤差 20 psia）で、通信が無いときは C&W の 1,150 psia を目安にする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1068） |
| MG-HE-02 | 合流 | — | — | MG_HE_02 | — |
| DC-HE-03 | 判断 | 空圧の蓄圧器が 700 psia 未満か | — | DC_HE_03 | 空圧の蓄圧器の 700 psia は、補給なしで MECO の時間内に LO2 プリバルブをすべて閉じられる最低の圧力である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| AC-HE-05 | 行動 | MECO−30秒に空圧系を再構成する | F-MPS-HE-10・F-MPS-HE-06 | AC_HE_05 | 蓄圧器が 700 psia を下回るときは、MECO の30秒前に空圧の隔離弁・左エンジンのクロスオーバ弁・相互接続弁を再構成して再加圧する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| MG-HE-03 | 合流 | — | — | MG_HE_03 | — |
| AC-HE-06 | 行動 | MECO（LO2 プリバルブを閉じる） | F-MPS-PMS-04 | AC_HE_06 | LO2 プリバルブは、高圧酸化剤ターボポンプの入口圧を保つため MECO で閉じる必要がある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067） |
| EN-HE | 終了 | — | — | done | — |

## 4. 図80 の流れ

図80 MPS ヘリウム漏れ処置 活動図の流れ 16件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-HE-01 | ST-HE（開始） | AC-HE-01（エンジン系統の有意なヘリウム漏れを検知） | — | — |
| FL-HE-02 | AC-HE-01（エンジン系統の有意なヘリウム漏れを検知） | DC-HE-01（隔離でエンジンが止まるか） | — | — |
| FL-HE-03 | DC-HE-01（隔離でエンジンが止まるか） | AC-HE-02（漏れの隔離の手順を行う） | 止まらない | not isolationStopsEngine |
| FL-HE-04 | DC-HE-01（隔離でエンジンが止まるか） | AC-HE-03（隔離しない（エンジンの運転を続ける）） | 止まる | isolationStopsEngine |
| FL-HE-05 | AC-HE-02（漏れの隔離の手順を行う） | MG-HE-01（合流） | — | — |
| FL-HE-06 | AC-HE-03（隔離しない（エンジンの運転を続ける）） | MG-HE-01（合流） | — | — |
| FL-HE-07 | MG-HE-01（合流） | DC-HE-02（零G の停止の要件を満たせないか） | — | — |
| FL-HE-08 | DC-HE-02（零G の停止の要件を満たせないか） | AC-HE-04（ヘリウム系を相互接続（C&W 1,150 psia、遅くとも 920 psia）） | 満たせない | cannotMeetZeroG |
| FL-HE-09 | DC-HE-02（零G の停止の要件を満たせないか） | MG-HE-02（合流） | 満たせる | not cannotMeetZeroG |
| FL-HE-10 | AC-HE-04（ヘリウム系を相互接続（C&W 1,150 psia、遅くとも 920 psia）） | MG-HE-02（合流） | — | — |
| FL-HE-11 | MG-HE-02（合流） | DC-HE-03（空圧の蓄圧器が 700 psia 未満か） | — | — |
| FL-HE-12 | DC-HE-03（空圧の蓄圧器が 700 psia 未満か） | AC-HE-05（MECO−30秒に空圧系を再構成する） | 700 psia 未満 | accumulatorBelow700 |
| FL-HE-13 | DC-HE-03（空圧の蓄圧器が 700 psia 未満か） | MG-HE-03（合流） | 700 psia 以上 | not accumulatorBelow700 |
| FL-HE-14 | AC-HE-05（MECO−30秒に空圧系を再構成する） | MG-HE-03（合流） | — | — |
| FL-HE-15 | MG-HE-03（合流） | AC-HE-06（MECO（LO2 プリバルブを閉じる）） | — | — |
| FL-HE-16 | AC-HE-06（MECO（LO2 プリバルブを閉じる）） | EN-HE（終了） | — | — |

## 5. 図81 の節点

図81 燃料電池の冷却喪失処置 活動図（燃料電池の冷却喪失の処置（軌道上））の節点 14件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-FC | 開始 | — | — | start | — |
| AC-FC-01 | 行動 | 冷却喪失の警報（FUEL CELL PUMP 灯・FC PUMP メッセージ） | F-EPS-FCP-05 | AC_FC_01 | 燃料電池の冷却喪失の合図は、MASTER ALARM、F7 の FUEL CELL PUMP 灯、FC PUMP のメッセージなどである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893） |
| DC-FC-01 | 判断 | 喪失の条件（A9-1）に当たるか | — | DC_FC_01 | A9-1 は、冷却材ポンプか水素ポンプ・水分離器を失った燃料電池を喪失とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1429） |
| AC-FC-07 | 行動 | 温度の兆候で切り分けを続ける | F-EPS-FCP-04 | AC_FC_07 | 冷却の問題の切り分けには、冷却材ポンプ・水素ポンプの状態による温度の兆候の経験則を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893） |
| EN-FC-2 | 終了 | — | — | done | — |
| AC-FC-02 | 行動 | 9分以内（7 kW）に燃料電池を停止する | F-EPS-FCP-05 | AC_FC_02 | 冷却を失った燃料電池は、7 kW では9分以内に停止しなければならない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1449） |
| AC-FC-03 | 行動 | 母線から切り離し、STOP にし、反応剤弁を閉じる | F-EPS-FCP-02 | AC_FC_03 | 燃料電池の停止は、母線からの切り離し、STOP、反応剤弁を閉じることと定義される。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1443） |
| AC-FC-04 | 行動 | 主母線を結んで3本の主母線の給電を保つ | F-EPS-DC-05 | AC_FC_04 | 燃料電池のセルの故障・劣化では、3本の主母線の給電を保つため主母線を結ぶ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1458） |
| AC-FC-05 | 行動 | 総電力を 18 kW 以内に管理する | F-EPS-FCP-07・F-EPS-DC-03 | AC_FC_05 | 軌道上でFCが1基故障した場合、スペースハブの電力はオービタ総電力18 kWの制限内で管理する。この18 kWの制限は、最後に残るFCの過負荷を防ぐためのものである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1509） |
| DC-FC-02 | 判断 | 喪失した燃料電池の数（A9-1001） | — | DC_FC_02 | A9-1001 の燃料電池（3基）の行は、MDF の列と次の PLS の列に喪失の数を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510） |
| AC-FC-06 | 行動 | MDF で帰還する（1基の喪失） | F-EPS-FCP-08 | AC_FC_06 | A9-1001 の燃料電池（3基）の行は、MDF の列と次の PLS の列に喪失の数を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510） |
| AC-FC-08 | 行動 | 次の PLS で帰還する（2基の喪失） | F-EPS-FCP-08 | AC_FC_08 | A9-1001 の燃料電池（3基）の行は、MDF の列と次の PLS の列に喪失の数を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510） |
| MG-FC-01 | 合流 | — | — | MG_FC_01 | — |
| EN-FC | 終了 | — | — | done | — |

## 6. 図81 の流れ

図81 燃料電池の冷却喪失処置 活動図の流れ 14件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-FC-01 | ST-FC（開始） | AC-FC-01（冷却喪失の警報（FUEL CELL PUMP 灯・FC PUMP メッセージ）） | — | — |
| FL-FC-02 | AC-FC-01（冷却喪失の警報（FUEL CELL PUMP 灯・FC PUMP メッセージ）） | DC-FC-01（喪失の条件（A9-1）に当たるか） | — | — |
| FL-FC-03 | DC-FC-01（喪失の条件（A9-1）に当たるか） | AC-FC-02（9分以内（7 kW）に燃料電池を停止する） | 当たる | fcLost |
| FL-FC-04 | DC-FC-01（喪失の条件（A9-1）に当たるか） | AC-FC-07（温度の兆候で切り分けを続ける） | 当たらない | not fcLost |
| FL-FC-05 | AC-FC-07（温度の兆候で切り分けを続ける） | EN-FC-2（終了） | — | — |
| FL-FC-06 | AC-FC-02（9分以内（7 kW）に燃料電池を停止する） | AC-FC-03（母線から切り離し、STOP にし、反応剤弁を閉じる） | — | — |
| FL-FC-07 | AC-FC-03（母線から切り離し、STOP にし、反応剤弁を閉じる） | AC-FC-04（主母線を結んで3本の主母線の給電を保つ） | — | — |
| FL-FC-08 | AC-FC-04（主母線を結んで3本の主母線の給電を保つ） | AC-FC-05（総電力を 18 kW 以内に管理する） | — | — |
| FL-FC-09 | AC-FC-05（総電力を 18 kW 以内に管理する） | DC-FC-02（喪失した燃料電池の数（A9-1001）） | — | — |
| FL-FC-10 | DC-FC-02（喪失した燃料電池の数（A9-1001）） | AC-FC-06（MDF で帰還する（1基の喪失）） | 1基 | oneFcLost |
| FL-FC-11 | DC-FC-02（喪失した燃料電池の数（A9-1001）） | AC-FC-08（次の PLS で帰還する（2基の喪失）） | 2基 | twoFcLost |
| FL-FC-12 | AC-FC-06（MDF で帰還する（1基の喪失）） | MG-FC-01（合流） | — | — |
| FL-FC-13 | AC-FC-08（次の PLS で帰還する（2基の喪失）） | MG-FC-01（合流） | — | — |
| FL-FC-14 | MG-FC-01（合流） | EN-FC（終了） | — | — |

## 7. 図82 の節点

図82 火災処置 活動図（乗員室・アビオニクスベイの火災（煙検知）の処置）の節点 15件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-FR | 開始 | — | — | start | — |
| AC-FR-01 | 行動 | 煙の警報（サイレン・MASTER ALARM・L1 の SMOKE DETECTION 灯） | F-ECL-FDS-ALM-02・F-ECL-FDS-ALM-03 | AC_FR_01 | 火災の合図は、サイレン、MASTER ALARM、パネル L1 の SMOKE DETECTION 灯、故障メッセージ、DPS 表示の煙濃度である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| DC-FR-01 | 判断 | DPS 表示の煙濃度で火災を確認できるか | — | DC_FR_01 | DPS 表示の煙濃度で火災を確認したら、乗員は身を守ってから消火の手順に移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| EN-FR-2 | 終了 | — | — | done | — |
| DC-FR-02 | 判断 | 飛行フェーズ | — | DC_FR_02 | 身の守り方は、軌道上ではクイックドンマスク（QDM）、上昇・再突入ではバイザーを閉じてスーツの酸素である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-FR-02 | 行動 | QDM を着ける（軌道上） | F-ECL-FDS-OPS-12 | AC_FR_02 | 軌道上では、乗員はクイックドンマスク（QDM）で身を守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-FR-03 | 行動 | バイザーを閉じてスーツの O2（上昇・再突入） | F-ECL-FDS-OPS-12・F-ECL-PCS-05 | AC_FR_03 | 上昇・再突入では、乗員はバイザーを閉じてスーツの酸素で身を守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| MG-FR-01 | 合流 | — | — | MG_FR_01 | — |
| AC-FR-04 | 行動 | 固定式または携帯式のハロン消火器で消火する | F-ECL-FDS-FIX-02・F-ECL-FDS-PFE-07・F-ECL-FDS-OPS-07 | AC_FR_04 | 消火には、固定式または携帯式のハロンのボトルを放出する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-FR-05 | 行動 | WCS の活性炭フィルタ・ATCO・LiOH で大気を浄化する | F-ARS-CO2-06・F-ECL-FDS-OPS-11 | AC_FR_05 | 鎮火の後は、WCS の活性炭フィルタ、ATCO、LiOH キャニスタで機内の大気から燃焼生成物を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| DC-FR-03 | 判断 | 安全なレベルまで浄化できたか | — | DC_FR_03 | 大気を安全なレベルまで浄化できなければ、早期の軌道離脱が要る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-FR-06 | 行動 | 運用を続ける | F-ECL-FDS-OPS-11 | AC_FR_06 | 鎮火の後は、WCS の活性炭フィルタ、ATCO、LiOH キャニスタで機内の大気から燃焼生成物を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-FR-07 | 行動 | 早期の軌道離脱（N2 はヘルメット着用で4〜8時間分） | F-ECL-FDS-OPS-12 | AC_FR_07 | ヘルメットを着けて酸素の多い息を吐く間、オービタの N2 では客室の PPO2 を可燃限界より下に保てるのは4〜8時間である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| MG-FR-02 | 合流 | — | — | MG_FR_02 | — |
| EN-FR | 終了 | — | — | done | — |

## 8. 図82 の流れ

図82 火災処置 活動図の流れ 16件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-FR-01 | ST-FR（開始） | AC-FR-01（煙の警報（サイレン・MASTER ALARM・L1 の SMOKE DETECTION 灯）） | — | — |
| FL-FR-02 | AC-FR-01（煙の警報（サイレン・MASTER ALARM・L1 の SMOKE DETECTION 灯）） | DC-FR-01（DPS 表示の煙濃度で火災を確認できるか） | — | — |
| FL-FR-03 | DC-FR-01（DPS 表示の煙濃度で火災を確認できるか） | DC-FR-02（飛行フェーズ） | 確認した | fireConfirmed |
| FL-FR-04 | DC-FR-01（DPS 表示の煙濃度で火災を確認できるか） | EN-FR-2（終了） | 確認できない | not fireConfirmed |
| FL-FR-05 | DC-FR-02（飛行フェーズ） | AC-FR-02（QDM を着ける（軌道上）） | 軌道 | onOrbit |
| FL-FR-06 | DC-FR-02（飛行フェーズ） | AC-FR-03（バイザーを閉じてスーツの O2（上昇・再突入）） | 上昇・再突入 | not onOrbit |
| FL-FR-07 | AC-FR-02（QDM を着ける（軌道上）） | MG-FR-01（合流） | — | — |
| FL-FR-08 | AC-FR-03（バイザーを閉じてスーツの O2（上昇・再突入）） | MG-FR-01（合流） | — | — |
| FL-FR-09 | MG-FR-01（合流） | AC-FR-04（固定式または携帯式のハロン消火器で消火する） | — | — |
| FL-FR-10 | AC-FR-04（固定式または携帯式のハロン消火器で消火する） | AC-FR-05（WCS の活性炭フィルタ・ATCO・LiOH で大気を浄化する） | — | — |
| FL-FR-11 | AC-FR-05（WCS の活性炭フィルタ・ATCO・LiOH で大気を浄化する） | DC-FR-03（安全なレベルまで浄化できたか） | — | — |
| FL-FR-12 | DC-FR-03（安全なレベルまで浄化できたか） | AC-FR-06（運用を続ける） | できた | atmosphereSafe |
| FL-FR-13 | DC-FR-03（安全なレベルまで浄化できたか） | AC-FR-07（早期の軌道離脱（N2 はヘルメット着用で4〜8時間分）） | できない | not atmosphereSafe |
| FL-FR-14 | AC-FR-06（運用を続ける） | MG-FR-02（合流） | — | — |
| FL-FR-15 | AC-FR-07（早期の軌道離脱（N2 はヘルメット着用で4〜8時間分）） | MG-FR-02（合流） | — | — |
| FL-FR-16 | MG-FR-02（合流） | EN-FR（終了） | — | — |

## 9. FMEA・CIL との対応

各活動図と、故障解析表・機能説明書の対応を示す。

| 活動図 | 文書 | 対応 |
|---|---|---|
| 図80 MPS ヘリウム漏れ処置 活動図 | SSD-FMEA-MPS-001 | A5-151 [CIL] |
| 図80 MPS ヘリウム漏れ処置 活動図 | SSD-FMEA-MPS-001 | A5-152 [CIL] |
| 図80 MPS ヘリウム漏れ処置 活動図 | SSD-FMEA-MPS-001 | CIL 課題：エンジンのヘリウム供給系・相互接続・空圧ヘリウム系 |
| 図81 燃料電池の冷却喪失処置 活動図 | SSD-FMEA-ORB-001 | A9-1・A9-55・A9-60・A9-107 [CIL]（EPS の規則は SSD-FMEA-ORB-001 §7） |
| 図81 燃料電池の冷却喪失処置 活動図 | SSD-FMEA-ORB-001 | EPS（PRSD）の CIL 項目 |
| 図82 火災処置 活動図 | SSD-FD-ECL-FDS-001 | 煙検知・消火の機能説明書 |
| 図82 火災処置 活動図 | SSD-FMEA-ECLSS-001 | ECLSS の FMEA・CIL（IOA の件数） |

## 10. SysML v2 テキスト

同じ節点と流れを SysML v2 のテキスト [SysML/SSD-BEH-ORB-002.sysml](../SysML/SSD-BEH-ORB-002.sysml) に示す。活動の action def 3件、行動 21件、流れ 46件（first … then と、判断の if … then）から成る。本書の表と同じデータから作り、SysML v2 の文法による構文の検査を通し、Rev. AG で OMG SysML v2 Pilot Implementation 0.62.0 により、ほかのモデルと一緒に読み込んで名前の解決・型の検査を行い、誤り 0件・警告 0件を確かめた（SSD-MDL-SYS-001）。

## 11. 注記（出典間の相違・構成変更）

> **注記** 図81 の「喪失した燃料電池の数」の分岐は A9-1001 の表の列による。表の記号は OCR で読み取れないため、本書は列の位置で読んだ。

> **注記** 図82 は火災を確認した後の処置を示す。確認できない場合の切り分け（感知器のリセット・回路試験など）は SSD-FD-ECL-FDS-001 の下位の説明書にある。

> **注記** 活動図は代表の故障処置で、故障処置手順（MAL）の全手順ではない。各行動の対応する機能は、その行動を担う機能説明書の行である。

> **注記** 活動図の行動から構造モデルの部品への割付は [SSD-ALC-SYS-001](SSD-ALC-SYS-001.md) に示す（SysML v2 テキスト：SysML/SSD-ALC-SYS-001.sysml）。

> **注記** 故障処置の活動図を起動する C/W の警報は [SSD-FDIR-ORB-001](SSD-FDIR-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-FDIR-ORB-001.sysml）。

## 12. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-151 PRE-MECO MPS HELIUM SYSTEM LEAK ISOLATION [CIL]（PDF p1067） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1067
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-152 PRE-MECO MPS HELIUM SYSTEM INTERCONNECTS（PDF p1068） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1068
3. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p893） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/893
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1 Fuel Cell (Fc) Loss [Cil]（PDF p1429） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1429
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-60 Fc Coolant Pump Failure Management [Cil]（PDF p1449） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1449
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-55 Fc Shutdown Definition [Cil]（PDF p1443） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1443
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-107 Main Bus Tie [Cil]（PDF p1458） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1458
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-356 Fuel Cell Failure Management（PDF p1509） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1509
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1001 Electrical Go/No-Go Criteria（PDF p1510） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1510
10. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891

## 13. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（図80 MPS ヘリウム漏れ処置 活動図の節点 14件・流れ 16件、図81 燃料電池の冷却喪失処置 活動図の節点 14件・流れ 14件、図82 火災処置 活動図の節点 15件・流れ 16件、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | 割付定義書 SSD-ALC-SYS-001 への参照を注記（Rev. AF） |
| Rev. B | 2026-10-03 | SysML v2 テキストの検査の記述を改めた（Pilot による名前の解決・型の検査、モデル統合・検査定義書 SSD-MDL-SYS-001）（Rev. AG） |
| Rev. C | 2026-10-03 | 故障検知・処置対応表 SSD-FDIR-ORB-001 への参照を注記（Rev. AP） |
