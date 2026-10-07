# 運用・非常時の活動定義書（キャビン減圧・EVA・ペイロードベイドア閉鎖不能）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-BEH-ORB-004 |
| 表題 | 運用・非常時の活動定義書（キャビン減圧・EVA・ペイロードベイドア閉鎖不能） |
| 版・日付 | Rev. C／2026-10-07 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BEH-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図86 キャビン減圧処置 活動図・図87 EVA 準備〜再与圧 活動図・図88 ペイロードベイドア閉鎖不能処置 活動図 |

## 1. 目的

系をまたぐ運用と非常時の処置を活動図で示す。図86 キャビン減圧処置 活動図・図87 EVA 準備〜再与圧 活動図・図88 ペイロードベイドア閉鎖不能処置 活動図 は、警報や手順の開始から判断・処置までの流れを、SCOM の緊急手順と EVA・MECH の機能説明書の文で裏付け、各行動を担う機能（F-ID）と故障解析表・要求につなぐ。同じ節点と流れを SysML v2 のテキスト（model/SSD-BEH-ORB-004.sysml）でも示す。

## 2. 書き方

節点の種別は、開始・行動・判断・合流・終了の5つである。判断から出る流れにはガード（その流れを選ぶ条件）を書く。機能の欄は、その行動を担う機能説明書の行である。SysML の欄は SysML v2 テキストでの名前（行動・判断・合流）とガードの属性名である。

## 3. 図86 の節点

図86 キャビン減圧処置 活動図（乗員室の圧力の低下（キャビンの漏れ）の処置）の節点 13件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-LK | 開始 | — | — | start | — |
| AC-LK-01 | 行動 | 減圧の警報（クラクソン・MASTER ALARM・CABIN ATM 灯） | F-ECL-PCS-10 | AC_LK_01 | キャビン圧の異常の合図は、クラクソン、MASTER ALARM、キャビン圧計、dP/dt 計、SM SYS SUMM、O2・N2 の大流量、F7 の CABIN ATM 灯である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/890） |
| AC-LK-02 | 行動 | 客室の逃し弁の隔離弁を閉じ、表示と計器で漏れを確かめる | F-ECL-PCS-04 | AC_LK_02 | 乗員は、まず客室の逃し弁の隔離弁を閉じ、DPS の表示と計器で漏れを確かめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| DC-LK-01 | 判断 | 漏れを確認したか | — | DC_LK_01 | 漏れを確認したら、漏れ率で上昇のアボートか緊急の軌道離脱かを決める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| EN-LK-2 | 終了 | — | — | done | — |
| AC-LK-03 | 行動 | 大きな漏れでは 8 psi の非常用調圧器が流量を与える | F-ECL-PCS-09 | AC_LK_03 | 8 psi の非常用調圧器は 8±0.2 psia に調圧し、大きなキャビンの漏れのときに流量を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） |
| DC-LK-02 | 判断 | 隔離の時間の余裕があるか | — | DC_LK_02 | 時間の余裕があれば、追加の漏れ隔離の手順を試みる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-LK-07 | 行動 | 上昇のアボートまたは緊急の軌道離脱（漏れ率で決める） | — | AC_LK_07 | 漏れ率によって、上昇のアボートか緊急の軌道離脱が必要かが決まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-LK-04 | 行動 | 追加の漏れ隔離の手順を行う | F-ECL-PCS-07 | AC_LK_04 | 時間の余裕があれば、追加の漏れ隔離の手順を試みる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| AC-LK-05 | 行動 | 減電する | F-EPS-DC-03 | AC_LK_05 | キャビンの漏れへの対処は、漏れの大きさの評価、系の組替えによる隔離、減電、軌道離脱の準備の4つの段階から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/890） |
| AC-LK-06 | 行動 | 軌道離脱の準備をする | — | AC_LK_06 | キャビンの漏れへの対処は、漏れの大きさの評価、系の組替えによる隔離、減電、軌道離脱の準備の4つの段階から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/890） |
| MG-LK-01 | 合流 | — | — | MG_LK_01 | — |
| EN-LK | 終了 | — | — | done | — |

## 4. 図86 の流れ

図86 キャビン減圧処置 活動図の流れ 13件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-LK-01 | ST-LK（開始） | AC-LK-01（減圧の警報（クラクソン・MASTER ALARM・CABIN ATM 灯）） | — | — |
| FL-LK-02 | AC-LK-01（減圧の警報（クラクソン・MASTER ALARM・CABIN ATM 灯）） | AC-LK-02（客室の逃し弁の隔離弁を閉じ、表示と計器で漏れを確かめる） | — | — |
| FL-LK-03 | AC-LK-02（客室の逃し弁の隔離弁を閉じ、表示と計器で漏れを確かめる） | DC-LK-01（漏れを確認したか） | — | — |
| FL-LK-04 | DC-LK-01（漏れを確認したか） | AC-LK-03（大きな漏れでは 8 psi の非常用調圧器が流量を与える） | 確認した | leakConfirmed |
| FL-LK-05 | DC-LK-01（漏れを確認したか） | EN-LK-2（終了） | 確認できない | not leakConfirmed |
| FL-LK-06 | AC-LK-03（大きな漏れでは 8 psi の非常用調圧器が流量を与える） | DC-LK-02（隔離の時間の余裕があるか） | — | — |
| FL-LK-07 | DC-LK-02（隔離の時間の余裕があるか） | AC-LK-04（追加の漏れ隔離の手順を行う） | 余裕がある | timeAvailable |
| FL-LK-08 | DC-LK-02（隔離の時間の余裕があるか） | AC-LK-07（上昇のアボートまたは緊急の軌道離脱（漏れ率で決める）） | 余裕がない | not timeAvailable |
| FL-LK-09 | AC-LK-04（追加の漏れ隔離の手順を行う） | AC-LK-05（減電する） | — | — |
| FL-LK-10 | AC-LK-05（減電する） | AC-LK-06（軌道離脱の準備をする） | — | — |
| FL-LK-11 | AC-LK-06（軌道離脱の準備をする） | MG-LK-01（合流） | — | — |
| FL-LK-12 | AC-LK-07（上昇のアボートまたは緊急の軌道離脱（漏れ率で決める）） | MG-LK-01（合流） | — | — |
| FL-LK-13 | MG-LK-01（合流） | EN-LK（終了） | — | — |

## 5. 図87 の節点

図87 EVA 準備〜再与圧 活動図（EVA の前呼吸からエアロックの再与圧・EMU の再充填まで（10.2 psi キャビン））の節点 17件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-EV | 開始 | — | — | start | — |
| AC-EV-01 | 行動 | 10.2 psi キャビンで45分以上の初期前呼吸 | F-EVA-CHK-12・F-EVA-OPS-02 | AC_EV_01 | 10.2 psiキャビンの前呼吸は、45分以上を12.5 psi未満への減圧の前に行う途切れのない初期前呼吸と、EVA直前のEMU内の途切れのない最終前呼吸（10.2 psiで24時間なら40分、12時間なら75分）から成る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1783） |
| AC-EV-02 | 行動 | EMU を着用し主調圧器の漏れ点検（4.2〜4.4 psid） | F-EVA-CHK-04 | AC_EV_02 | 主調圧器の点検ではEMUを服圧4.2〜4.4 psidで安定させて自動の漏れ点検を行い、LEAKAGE HIの表示（ΔP 0.3 psi超）が出た場合はFAILED LEAK CHECK（14.7/10.2 PSI）のキューカードに移る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=70） |
| AC-EV-03 | 行動 | 窒素パージ（10.2 psi で8分） | F-EVA-CHK-11 | AC_EV_03 | 着用後の窒素パージの時間はキャビン圧10.2 psiで8分、14.7 psiで12分とし、パージと前呼吸の間は手足を時々動かして冷やしすぎないようにする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=87） |
| AC-EV-04 | 行動 | エアロックの減圧を始める | F-EVA-DPR-02 | AC_EV_04 | 減圧は前呼吸の完了後に始め、減圧中は服圧計が5.5を超えないことを見て、超えた場合は減圧を止めてMCCに確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| AC-EV-05 | 行動 | 5.0 psi で止めて EMU の漏れ点検 | F-EVA-DPR-03 | AC_EV_05 | エアロックを5.0 psiで止めてEMUの漏れ点検を行い、LEAKAGE HIの表示が出た場合はキューカード裏面のFAILED LEAK CHECK（5 PSI）へ移り、合格すればO2 ACTをEVAにしてから0 psiまで減圧する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| DC-EV-01 | 判断 | 漏れ点検に合格したか | — | DC_EV_01 | エアロックを5.0 psiで止めてEMUの漏れ点検を行い、LEAKAGE HIの表示が出た場合はキューカード裏面のFAILED LEAK CHECK（5 PSI）へ移り、合格すればO2 ACTをEVAにしてから0 psiまで減圧する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| AC-EV-06 | 行動 | FAILED LEAK CHECK（5 PSI）の手順へ | F-EVA-DPR-03 | AC_EV_06 | エアロックを5.0 psiで止めてEMUの漏れ点検を行い、LEAKAGE HIの表示が出た場合はキューカード裏面のFAILED LEAK CHECK（5 PSI）へ移り、合格すればO2 ACTをEVAにしてから0 psiまで減圧する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| EN-EV-2 | 終了 | — | — | done | — |
| AC-EV-07 | 行動 | 0 psi まで減圧して EVA（安全テザーで常時つなぐ） | F-EVA-TLS-03 | AC_EV_07 | 運用飛行規則は、閉じたエアロックの中を除きEVA中は各乗員を安全テザーでオービタにつなぎ、工具は使用中は常に乗員にテザーでつなぐと定める。浮遊した工具はオービタに当たって損傷させるおそれがある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846） |
| AC-EV-08 | 行動 | 消耗品の残り30分までにエアロックへ進入 | F-EVA-OPS-11 | AC_EV_08 | MCCが判断するいずれかの消耗品の残りが30分になる時までにEVA乗員はエアロックへの進入を終えてSCUにつなぐ。30分は補充できない予備のSOPを使わないための予備である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866） |
| AC-EV-09 | 行動 | 再与圧（5.0 psi で気密を確かめる） | F-EVA-DPR-05 | AC_EV_09 | 再与圧は内側ハッチの均圧弁でエアロックを5.0 psiまで戻して止め、2分間のΔPが0.1 psi以下であることでエアロックの気密を確かめてから、乗員室の圧力に合わせる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| DC-EV-02 | 判断 | 減圧症の症状があるか | — | DC_EV_02 | 減圧症治療アダプタ（BTA）は、減圧症にかかったEVA乗員の処置のためEMUを高圧治療室に変え、キャビン圧より8.0 psid高く加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451） |
| AC-EV-10 | 行動 | BTA で処置（6〜8 psid、地上の医師が決める） | F-EVA-EMG-09・F-EVA-EMG-10 | AC_EV_10 | BTAによる処置はカフ2・3では6 psidから始めて症状が消えなければ8 psidに上げ、カフ4では8 psidから始め、処置の時間と圧力の変更は地上の医師（Surgeon）が決める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=160） |
| MG-EV-01 | 合流 | — | — | MG_EV_01 | — |
| AC-EV-11 | 行動 | EMU の O2・水を再充填する | F-EVA-MNT-03 | AC_EV_11 | O2の再充填はO2圧が約850になれば完了とし、水の充填は水圧（WP）が8〜15 psiで約30秒安定すれば完了とし、満充填で給水タンクBの約6%を使う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=116） |
| EN-EV | 終了 | — | — | done | — |

## 6. 図87 の流れ

図87 EVA 準備〜再与圧 活動図の流れ 17件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-EV-01 | ST-EV（開始） | AC-EV-01（10.2 psi キャビンで45分以上の初期前呼吸） | — | — |
| FL-EV-02 | AC-EV-01（10.2 psi キャビンで45分以上の初期前呼吸） | AC-EV-02（EMU を着用し主調圧器の漏れ点検（4.2〜4.4 psid）） | — | — |
| FL-EV-03 | AC-EV-02（EMU を着用し主調圧器の漏れ点検（4.2〜4.4 psid）） | AC-EV-03（窒素パージ（10.2 psi で8分）） | — | — |
| FL-EV-04 | AC-EV-03（窒素パージ（10.2 psi で8分）） | AC-EV-04（エアロックの減圧を始める） | — | — |
| FL-EV-05 | AC-EV-04（エアロックの減圧を始める） | AC-EV-05（5.0 psi で止めて EMU の漏れ点検） | — | — |
| FL-EV-06 | AC-EV-05（5.0 psi で止めて EMU の漏れ点検） | DC-EV-01（漏れ点検に合格したか） | — | — |
| FL-EV-07 | DC-EV-01（漏れ点検に合格したか） | AC-EV-07（0 psi まで減圧して EVA（安全テザーで常時つなぐ）） | 合格 | leakCheckPassed |
| FL-EV-08 | DC-EV-01（漏れ点検に合格したか） | AC-EV-06（FAILED LEAK CHECK（5 PSI）の手順へ） | LEAKAGE HI | not leakCheckPassed |
| FL-EV-09 | AC-EV-06（FAILED LEAK CHECK（5 PSI）の手順へ） | EN-EV-2（終了） | — | — |
| FL-EV-10 | AC-EV-07（0 psi まで減圧して EVA（安全テザーで常時つなぐ）） | AC-EV-08（消耗品の残り30分までにエアロックへ進入） | — | — |
| FL-EV-11 | AC-EV-08（消耗品の残り30分までにエアロックへ進入） | AC-EV-09（再与圧（5.0 psi で気密を確かめる）） | — | — |
| FL-EV-12 | AC-EV-09（再与圧（5.0 psi で気密を確かめる）） | DC-EV-02（減圧症の症状があるか） | — | — |
| FL-EV-13 | DC-EV-02（減圧症の症状があるか） | MG-EV-01（合流） | 症状なし | not decompressionSickness |
| FL-EV-14 | DC-EV-02（減圧症の症状があるか） | AC-EV-10（BTA で処置（6〜8 psid、地上の医師が決める）） | 症状あり | decompressionSickness |
| FL-EV-15 | AC-EV-10（BTA で処置（6〜8 psid、地上の医師が決める）） | MG-EV-01（合流） | — | — |
| FL-EV-16 | MG-EV-01（合流） | AC-EV-11（EMU の O2・水を再充填する） | — | — |
| FL-EV-17 | AC-EV-11（EMU の O2・水を再充填する） | EN-EV（終了） | — | — |

## 7. 図88 の節点

図88 ペイロードベイドア閉鎖不能処置 活動図（軌道離脱の前にペイロードベイドアを閉じられないときの処置）の節点 11件を示す。

| ID | 種別 | 内容 | 機能 | SysML | 根拠 |
|---|---|---|---|---|---|
| ST-PB | 開始 | — | — | start | — |
| AC-PB-01 | 行動 | ドアを閉じる（右舷を後に閉め、32 のラッチで保つ） | F-MECH-PLB-03・F-MECH-PLB-05 | AC_PB_01 | 右舷のドアは左舷のドアに重なってセンタラインの圧力・熱のシールとなるため、右舷を先に開けて後に閉める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627）ドアは合計32のラッチ（センタラインの16と前後の隔壁の各8）で閉じた状態に保たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） |
| DC-PB-01 | 判断 | 1モータの時間内に閉じたか | — | DC_PB_01 | 機械系を操作するときは常にタイマを使い、1モータの時間を過ぎても所定の状態にならなければ駆動の指令を続けない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640） |
| EN-PB-2 | 終了 | — | — | done | — |
| AC-PB-02 | 行動 | 駆動の指令を止め、故障とみなす | F-MECH-ACT-07・F-MECH-OPS-02 | AC_PB_02 | ベント扉・PLBD・放熱器・ET扉・ペイロード保持ラッチなどの駆動機構は冗長のため2つのモータを持ち、駆動時間が1モータの時間を超えると故障とみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605） |
| DC-PB-02 | 判断 | 外れたラッチギャングは1つまでか | — | DC_PB_02 | ラッチギャングに閉用のモータが2基そろっていなくても、冗長側のモータで閉じられるので機体はフェイルセーフで、1つのギャングが外れたままでも突入できる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622） |
| AC-PB-03 | 行動 | そのまま突入できる（フェイルセーフ） | F-MECH-OPS-03 | AC_PB_03 | ラッチギャングに閉用のモータが2基そろっていなくても、冗長側のモータで閉じられるので機体はフェイルセーフで、1つのギャングが外れたままでも突入できる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622） |
| AC-PB-04 | 行動 | 非常時 EVA でドア・ラッチを手動で処置する | F-EVA-EMG-01・F-EVA-EMG-02 | AC_PB_04 | 非常時EVAは計画外だがオービタと乗員の安全な帰還に必要なEVAで、オービタの機器が故障したときに行い、手順・工具・作業位置はどのミッションでも練習できるよう定めてある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/459）想定するオービタの故障は放熱器アクチュエータ、ペイロードベイドア、隔壁ラッチ、中心線ラッチ、エアロックハッチ、RMS、隔壁カメラ、Ku帯アンテナ、ET扉で、故障ごとの処置（切り離し、ウインチ、ラッチ工具、手動操作など）を表に定める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462） |
| AC-PB-05 | 行動 | ペイロードベイを軌道離脱の構成にして EVA を終える | F-EVA-OPS-13 | AC_PB_05 | 計画・計画外EVAは将来の非常時EVAの能力（再充填の消耗品など）を損なう場合は行わず、EVAの終わりにはペイロードベイを軌道離脱のために次のEVAが要らない構成にしておく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1848） |
| MG-PB-01 | 合流 | — | — | MG_PB_01 | — |
| EN-PB | 終了 | — | — | done | — |

## 8. 図88 の流れ

図88 ペイロードベイドア閉鎖不能処置 活動図の流れ 11件を示す。

| ID | 元 | 先 | ガード | SysML のガード |
|---|---|---|---|---|
| FL-PB-01 | ST-PB（開始） | AC-PB-01（ドアを閉じる（右舷を後に閉め、32 のラッチで保つ）） | — | — |
| FL-PB-02 | AC-PB-01（ドアを閉じる（右舷を後に閉め、32 のラッチで保つ）） | DC-PB-01（1モータの時間内に閉じたか） | — | — |
| FL-PB-03 | DC-PB-01（1モータの時間内に閉じたか） | AC-PB-02（駆動の指令を止め、故障とみなす） | 閉じない | not closedInTime |
| FL-PB-04 | DC-PB-01（1モータの時間内に閉じたか） | EN-PB-2（終了） | 閉じた | closedInTime |
| FL-PB-05 | AC-PB-02（駆動の指令を止め、故障とみなす） | DC-PB-02（外れたラッチギャングは1つまでか） | — | — |
| FL-PB-06 | DC-PB-02（外れたラッチギャングは1つまでか） | AC-PB-04（非常時 EVA でドア・ラッチを手動で処置する） | 2つ以上・ドアが閉じない | not atMostOneGangOpen |
| FL-PB-07 | DC-PB-02（外れたラッチギャングは1つまでか） | AC-PB-03（そのまま突入できる（フェイルセーフ）） | 1つまで | atMostOneGangOpen |
| FL-PB-08 | AC-PB-03（そのまま突入できる（フェイルセーフ）） | MG-PB-01（合流） | — | — |
| FL-PB-09 | AC-PB-04（非常時 EVA でドア・ラッチを手動で処置する） | AC-PB-05（ペイロードベイを軌道離脱の構成にして EVA を終える） | — | — |
| FL-PB-10 | AC-PB-05（ペイロードベイを軌道離脱の構成にして EVA を終える） | MG-PB-01（合流） | — | — |
| FL-PB-11 | MG-PB-01（合流） | EN-PB（終了） | — | — |

## 9. FMEA・CIL との対応

各活動図と、故障解析表・機能説明書の対応を示す。

| 活動図 | 文書 | 対応 |
|---|---|---|
| 図86 キャビン減圧処置 活動図 | SSD-FD-ECL-PCS-001 | 与圧制御系の機能説明書 |
| 図86 キャビン減圧処置 活動図 | SSD-FMEA-ECLSS-001 | ECLSS の FMEA・CIL（ARPCS の件数） |
| 図87 EVA 準備〜再与圧 活動図 | SSD-FD-EVA-001 | 船外活動の機能説明書 |
| 図87 EVA 準備〜再与圧 活動図 | SSD-REQ-EVA-001 | EVA の要求（REQ-EVA-01〜08） |
| 図87 EVA 準備〜再与圧 活動図 | SSD-FMEA-EVA-001 | EVA の故障解析表（EMU の CIL 課題） |
| 図88 ペイロードベイドア閉鎖不能処置 活動図 | SSD-FMEA-MECH-001 | A2-106 PBD OPERATIONS [CIL] |
| 図88 ペイロードベイドア閉鎖不能処置 活動図 | SSD-FD-MECH-PLB-001 | ペイロードベイドアの機能説明書 |
| 図88 ペイロードベイドア閉鎖不能処置 活動図 | SSD-REQ-EVA-001 | REQ-EVA-06 非常時 EVA |

## 10. SysML v2 テキスト

同じ節点と流れを SysML v2 のテキスト [model/SSD-BEH-ORB-004.sysml](../../model/SSD-BEH-ORB-004.sysml) に示す。活動の action def 3件、行動 23件、流れ 41件（first … then と、判断の if … then）から成る。本書の表と同じデータから作り、SysML v2 の文法による構文の検査を通し、Rev. AG で OMG SysML v2 Pilot Implementation 0.62.0 により、ほかのモデルと一緒に読み込んで名前の解決・型の検査を行い、誤り 0件・警告 0件を確かめた（SSD-MDL-SYS-001）。

## 11. 注記（出典間の相違・構成変更）

> **注記** 図86 の「確認できない」の後の切り分けと、PCS の漏れ（客室圧の上昇）の処置は、SCOM 6.8 と ECLSS の説明書による。本図は客室の漏れの処置の流れだけを示す。

> **注記** 図87 は 10.2 psi キャビンの手順の代表の流れで、EVA の作業そのもの（工具・RMS の支援など）は SSD-FD-EVA-001 の下位の説明書にある。

> **注記** 図88 の「2つ以上・ドアが閉じない」は、外れたラッチギャングが2つ以上の場合とドアそのものが閉じない場合をまとめた分岐で、非常時 EVA の故障ごとの処置は F-EVA-EMG-02 の表による。

> **注記** 活動図の行動から構造モデルの部品への割付は [SSD-ALC-SYS-001](SSD-ALC-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-ALC-SYS-001.sysml）。

> **注記** EVA の準備（前呼吸・エアロックの減圧）の EV・IV の作業の段は [SSD-TSK-ORB-001](SSD-TSK-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-TSK-ORB-001.sysml）。

## 12. 参考文献

1. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p890） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/890
2. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen/Nitrogen Manifold・PPO2 Control（PDF p366） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-103 EVA PREBREATHE PROTOCOL（PDF p1783） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1783
5. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 3-4 PRIMARY REGULATOR/FAN/PUMP CHECK（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=70
6. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-7 EMU PURGE（PDF p87） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=87
7. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） CC A6-2 DEPRESS/REPRESS（NOM A/L）（PDF p98） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-13 Airlock Configuration（PDF p1846） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-152 EMU Consumables with Real-Time EMU Data Downlink（PDF p1866） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866
10. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p451） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451
11. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12-20 BTA TREATMENT（PDF p160） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=160
12. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 9-4 OXYGEN RECHARGE VERIFICATION・WATER FILL VERIFICATION（PDF p116） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=116
13. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p627） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627
14. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p640） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/640
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-161 DRIVE MECHANISMS LOSS DEFINITIONS（PDF p1605） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1605
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-209 PLBD Rule Reference Matrix（PDF p1622） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1622
17. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p459） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/459
18. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p462） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462
19. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-15 CONTINGENCY EVA PROTECTION（PDF p1848） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1848

## 13. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（図86 キャビン減圧処置 活動図の節点 13件・流れ 13件、図87 EVA 準備〜再与圧 活動図の節点 17件・流れ 17件、図88 ペイロードベイドア閉鎖不能処置 活動図の節点 11件・流れ 11件、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | 割付定義書 SSD-ALC-SYS-001 への参照を注記（Rev. AF） |
| Rev. B | 2026-10-03 | SysML v2 テキストの検査の記述を改めた（Pilot による名前の解決・型の検査、モデル統合・検査定義書 SSD-MDL-SYS-001）（Rev. AG） |
| Rev. C | 2026-10-07 | 乗員の作業分析・機能の分担定義書 SSD-TSK-ORB-001 への参照を注記（Rev. BA） |
