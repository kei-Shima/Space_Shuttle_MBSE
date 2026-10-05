# 船外活動（EVA/EMU）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-EVA-001 |
| 表題 | 船外活動（EVA/EMU）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図60 EVA 機能構成 |

## 1. 目的

EVAに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、EVAの機能説明書（SSD-FD-EVA-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-05 | 最大8人の乗員を運べること。 |
| REQ-SYS-06 | 通常のミッションで 4〜16 日の軌道滞在ができること。 |
| REQ-SYS-07 | 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |

## 4. EVA要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-EVA-01 | EMU は着用前に、服圧 4.2〜4.4 psid での漏れ点検、SOP の点検などを行い、各系が使えることを確かめること。 | 服圧 4.2〜4.4 psid | EMU点検は着用前にEMUの各系を事前に点検するもので、続くミッドデッキ準備と着用準備でEMUと付属品を乗員が着用できる構成にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460）主調圧器の点検ではEMUを服圧4.2〜4.4 psidで安定させて自動の漏れ点検を行い、LEAKAGE HIの表示（ΔP 0.3 psi超）が出た場合はFAILED LEAK CHECK（14.7/10.2 PSI）のキューカードに移る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=70） | REQ-SYS-10 | F-EVA-CHK-01・F-EVA-CHK-02・F-EVA-CHK-03・F-EVA-CHK-04・F-EVA-CHK-05・F-EVA-CHK-06・F-EVA-CHK-07・F-EVA-CHK-13 | PH-3（軌道）・PH-5（EVA） | T（試験） |
| REQ-EVA-02 | 減圧症の危険を減らすため、着用後の窒素パージと、所定の時間の前呼吸を減圧の前に行うこと。 | 10.2 psi キャビンで初期前呼吸 45分以上 | 着用後の窒素パージの時間はキャビン圧10.2 psiで8分、14.7 psiで12分とし、パージと前呼吸の間は手足を時々動かして冷やしすぎないようにする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=87）10.2 psiキャビンの前呼吸は、45分以上を12.5 psi未満への減圧の前に行う途切れのない初期前呼吸と、EVA直前のEMU内の途切れのない最終前呼吸（10.2 psiで24時間なら40分、12時間なら75分）から成る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1783）10.2 psiaキャビンの手順は減圧症の危険を減らすため飛行医が定めたもので、計画EVAではEMU内の前呼吸を短くできる選択肢1・2（初期前呼吸60分、10.2 psiaで12時間または24時間、EMU内で75分または40分）を選び、10.2 psiaの調圧器がないため圧力とPPO2を手動で管理する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403） | REQ-SYS-07 | F-EVA-CHK-11・F-EVA-CHK-12・F-EVA-OPS-01・F-EVA-OPS-02・F-EVA-OPS-03・F-EVA-OPS-04 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-EVA-03 | エアロックは乗員室の気密を保ったまま減圧・再与圧でき、減圧の途中 5.0 psi で EMU の漏れ点検を行えること。 | エアロック容積 228 ft3、漏れ点検 5.0 psi | エアロックを5.0 psiで止めてEMUの漏れ点検を行い、LEAKAGE HIの表示が出た場合はキューカード裏面のFAILED LEAK CHECK（5 PSI）へ移り、合格すればO2 ACTをEVAにしてから0 psiまで減圧する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98）エアロックを乗員室の気密を保ったまま減圧・再与圧できなければEVA能力の喪失とし、いずれかのハッチの漏れによるエアロック圧の低下が0.2 psi/minを超えれば喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855） | REQ-SYS-07 | F-EVA-DPR-01・F-EVA-DPR-02・F-EVA-DPR-03・F-EVA-DPR-04・F-EVA-DPR-05・F-EVA-DPR-06・F-EVA-DPR-08 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-EVA-04 | 閉じたエアロックの中を除き、EVA 中は各乗員を安全テザーでオービタにつなぐこと。 | 常時テザー（エアロック外） | 安全テザーはペイロードベイのどこへでも行けるよう乗員をオービタにつなぎ、エアロックを出る前に腰テザーに付けてEVA中は常に付けておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）運用飛行規則は、閉じたエアロックの中を除きEVA中は各乗員を安全テザーでオービタにつなぎ、工具は使用中は常に乗員にテザーでつなぐと定める。浮遊した工具はオービタに当たって損傷させるおそれがある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846） | REQ-SYS-05 | F-EVA-TLS-01・F-EVA-TLS-02・F-EVA-TLS-03・F-EVA-TLS-06・F-EVA-TLS-08 | PH-5（EVA） | D（実証） |
| REQ-EVA-05 | EVA の後に EMU の O2・水を再充填し、電池と LiOH カートリッジを交換・充電して次の EVA に備えること。 | O2 約 850、水圧 8〜15 psi | EVA後の手順はEMUの停止と脱衣、EMUの保守・再充填は電池とLiOHカートリッジの交換・充電と次のEVAのための清掃・給水、EVA後の帰還準備はEMUとエアロック機器の再構成と再収納である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460）O2の再充填はO2圧が約850になれば完了とし、水の充填は水圧（WP）が8〜15 psiで約30秒安定すれば完了とし、満充填で給水タンクBの約6%を使う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=116） | REQ-SYS-06 | F-EVA-MNT-01・F-EVA-MNT-02・F-EVA-MNT-03・F-EVA-MNT-04・F-EVA-MNT-07・F-EVA-MNT-09・F-EVA-MNT-10 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-EVA-06 | 放熱器・ペイロードベイドア・ラッチなどオービタの機器の故障に対し、安全な帰還に必要な非常時の EVA を行えること。 | 非常時 EVA 1回分を常に確保 | 非常時EVAは計画外だがオービタと乗員の安全な帰還に必要なEVAで、オービタの機器が故障したときに行い、手順・工具・作業位置はどのミッションでも練習できるよう定めてある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/459）想定するオービタの故障は放熱器アクチュエータ、ペイロードベイドア、隔壁ラッチ、中心線ラッチ、エアロックハッチ、RMS、隔壁カメラ、Ku帯アンテナ、ET扉で、故障ごとの処置（切り離し、ウインチ、ラッチ工具、手動操作など）を表に定める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462）計画・計画外EVAは将来の非常時EVAの能力（再充填の消耗品など）を損なう場合は行わず、EVAの終わりにはペイロードベイを軌道離脱のために次のEVAが要らない構成にしておく。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1848） | REQ-SYS-10・REQ-SYS-15 | F-EVA-EMG-01・F-EVA-EMG-02・F-EVA-EMG-03・F-EVA-OPS-13・IF-EVA-11・IF-EVA-12 | PH-3（軌道）・PH-5（EVA） | A（解析） |
| REQ-EVA-07 | 減圧症の乗員を EMU を使った減圧症治療アダプタ（BTA）で処置できること。 | 6〜8 psid | 減圧症治療アダプタ（BTA）は、減圧症にかかったEVA乗員の処置のためEMUを高圧治療室に変え、キャビン圧より8.0 psid高く加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451）BTAによる処置はカフ2・3では6 psidから始めて症状が消えなければ8 psidに上げ、カフ4では8 psidから始め、処置の時間と圧力の変更は地上の医師（Surgeon）が決める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=160） | REQ-SYS-07 | F-EVA-EMG-09・F-EVA-EMG-10・F-EVA-EMG-11・F-EVA-OPS-08 | PH-5（EVA） | A（解析） |
| REQ-EVA-08 | 消耗品の残りが 30分になる時までに EVA 乗員がエアロックへの進入を終え、計画 EVA は MET 72時間より前には行わないこと。 | 残り 30分、MET 72時間 | MCCが判断するいずれかの消耗品の残りが30分になる時までにEVA乗員はエアロックへの進入を終えてSCUにつなぐ。30分は補充できない予備のSOPを使わないための予備である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866）計画EVAはMET 72時間より前には行わず、計画外EVAは最初の24時間には行わず72時間より前に行うには飛行医の健康評価とフライトディレクタの承認を要し、帰還日にはEVAを行わない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1847） | REQ-SYS-05 | F-EVA-OPS-09・F-EVA-OPS-10・F-EVA-OPS-11・F-EVA-OPS-12・IF-EVA-15 | PH-3（軌道）・PH-5（EVA） | D（実証） |

## 5. トレース表（機能行・IF → 要求）

EVAの機能説明書 7 件の機能行 85 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 45 件が要求から参照され、40 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-EVA-001 | F-EVA-01 | EVAは乗員が与圧キャビンの保護環境を出て、宇宙服で宇宙の真空へ出る活動で、2回をペイロード用、1回をオービタの非常時用に確保する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-EVA-001 | F-EVA-02 | 各ミッションで宇宙服を2着搭載し、消耗品は2人・6時間のEVA 3回分を用意する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-EVA-001 | F-EVA-03 | EVAにはエアロックを使い、乗員が入った状態でエアロックを減圧して真空へ出る。これにより乗員室全体ではなく小さな容積だけを減圧できる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-EVA-001 | F-EVA-04 | EVAには、計画、計画外、非常の3つの区分がある。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-EVA-001 | F-EVA-05 | EMUは、地球周回軌道でEVAを行う乗員に環境防護・可動性・生命維持・通信を提供する独立した人型のシステムである。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-EVA-001 | F-EVA-06 | EMUは、脱出15分、有効作業6時間、進入15分、予備30分の、合計最大7時間のEVAに対応するよう設計されている。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-EVA-001 | F-EVA-07 | 宇宙服組立（SSA）は胴体・手足・頭部を覆う人型の圧力容器で、服圧の保持、液冷の分配、酸素換気、EMU無線による心電図のダウンリンクなどを行う。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-01 | EMU点検は着用前にEMUの各系を事前に点検するもので、続くミッドデッキ準備と着用準備でEMUと付属品を乗員が着用できる構成にする。 | REQ-EVA-01 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-02 | EMU点検はエアロックの右舷・左舷の2着を同時に行う手順で、3着目は点検中のEMU交換の後に同じ手順で点検し、そのときはEMU間の通信を確かめるため点検済みの1着をエアロックに残す。 | REQ-EVA-01 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-03 | エアロックの電源を入れるときはEMUを電池電源にしておき、EMUの電源を入れ直すたびにPWR RESTARTの表示とBITE灯が点くが、表示とトーンの試験はコールドリスタートのときにだけ行われる。 | REQ-EVA-01 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-04 | 主調圧器の点検ではEMUを服圧4.2〜4.4 psidで安定させて自動の漏れ点検を行い、LEAKAGE HIの表示（ΔP 0.3 psi超）が出た場合はFAILED LEAK CHECK（14.7/10.2 PSI）のキューカードに移る。 | REQ-EVA-01 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-05 | ファン・ポンプの点検では、O2 ACTをOFFにしたままのファンの運転を約2分以内にとどめ、LCVGに冷却水が流れて水温が下がることを確かめる。 | REQ-EVA-01 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-06 | SOPの点検では中間段のゲージで第1段の調圧を確かめ、運用飛行規則は第1段の調圧を600 psig未満に保てない場合を、計画・計画外EVAではEMUのNO-GO（非常時EVAではSCUでの救援待機に限りGO）とする。 | REQ-EVA-01 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-07 | SAFERの点検では自己試験で24個のスラスタの作動音を数え、GN2・電力の残量と電池電圧・製造番号をMCCに報告し、電源を入れている時間は約1分が望ましい。 | REQ-EVA-01 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-08 | REBAで動く12 Vの機器（手袋ヒータ・EMU TV）の点検では、電池の消耗と発熱を避けるため、指先に熱を感じたら手袋ヒータを切る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-01・REQ-EVA-02）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-09 | ペイロードベイの投光器はEMUの熱的な限界を超えるため、EVA乗員が近くで作業する場合はミッドデッキ準備の時点で消し（冷えるまで最長6時間）、無線ビデオのヒータは映像の品質のためEVAの4時間以上前に入れる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-01・REQ-EVA-02）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-10 | EVA乗員はEMUに刺激物を持ち込まないよう、EVA当日の前から衛生用品・炭化水素系製品の使用を控え、EMUに入れてよい品目は承認済み非EMU機器の表（4-11）で定める。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-01・REQ-EVA-02）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-11 | 着用後の窒素パージの時間はキャビン圧10.2 psiで8分、14.7 psiで12分とし、パージと前呼吸の間は手足を時々動かして冷やしすぎないようにする。 | REQ-EVA-02 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-12 | 10.2 psiキャビンの前呼吸は、45分以上を12.5 psi未満への減圧の前に行う途切れのない初期前呼吸と、EVA直前のEMU内の途切れのない最終前呼吸（10.2 psiで24時間なら40分、12時間なら75分）から成る。 | REQ-EVA-02 | — |
| SSD-FD-EVA-CHK-001 | F-EVA-CHK-13 | EMU STATUSの表は服圧4.2〜4.4 psid（減圧後は4.2〜5.5 psid）、O2圧150〜950 psia、SOP圧5,410〜6,800 psia、CO2 0.2〜4.0 mmHgなどの正常値を示し、EMUデータのダウンリンクがないときは最初の6.5時間は1時間ごと、その後は10分ごとに状態をMCCへ報告する。 | REQ-EVA-01 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-01 | 外部エアロックの空の容積は228 ft³で、EMU 2着を入れて減圧する容積は208 ft³である。 | REQ-EVA-03 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-02 | 減圧は前呼吸の完了後に始め、減圧中は服圧計が5.5を超えないことを見て、超えた場合は減圧を止めてMCCに確かめる。 | REQ-EVA-03 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-03 | エアロックを5.0 psiで止めてEMUの漏れ点検を行い、LEAKAGE HIの表示が出た場合はキューカード裏面のFAILED LEAK CHECK（5 PSI）へ移り、合格すればO2 ACTをEVAにしてから0 psiまで減圧する。 | REQ-EVA-03 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-04 | エアロックに戻った乗員はSCUをつないで昇華器の水を切り、水を切って2分経つまでは外部ハッチを閉じない。 | REQ-EVA-03 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-05 | 再与圧は内側ハッチの均圧弁でエアロックを5.0 psiまで戻して止め、2分間のΔPが0.1 psi以下であることでエアロックの気密を確かめてから、乗員室の圧力に合わせる。 | REQ-EVA-03 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-06 | SOPで呼吸している場合は再与圧の間もO2 ACTをEVAのままにし、減圧症の症状があればO2 ACTをPRESSのままにし、カフ1の症状が再与圧で消えた場合はカフ2として報告する。 | REQ-EVA-03 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-07 | トンネルアダプタ構成の減圧（25分）では、5 psiでの漏れ点検の後に後部モジュールの気密をMCCに確かめ、再与圧での気密の確認は4分間とする。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-03）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-08 | エアロックを乗員室の気密を保ったまま減圧・再与圧できなければEVA能力の喪失とし、いずれかのハッチの漏れによるエアロック圧の低下が0.2 psi/minを超えれば喪失とする。 | REQ-EVA-03 | — |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-09 | EMUの正圧逃し弁が閉じたまま開かない故障は減圧中にだけ検知でき、弁を開けられなければ過加圧に対してフェイルセーフでないため、EMUはEVAにNO-GOとする。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-03）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-10 | EVA中は外部エアロックの上部・後部ハッチの保温カバーを閉じておき、開いた場合は乗員が次の都合のよい機会に戻って閉じる。真空中に保温カバーが開いているとエアロック内の水配管が凍るおそれがあるためである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-03）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-11 | STS-125の2回目のEVAでは減圧弁の蓋を付けたまま減圧を始めたため、10.2から7 psiaへの減圧率が0.44 psia/minと遅く（通常は10.2から5 psiaで2.8 psia/min）、乗員が蓋を外して通常どおり減圧した。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-03）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-DPR-001 | F-EVA-DPR-12 | STS-114では、EVA 2の後にエアロックを再び減圧して乗員が入る際、外部ハッチの右舷均圧弁がEMER位置で流れなくなり、左舷の均圧弁で減圧した（IFA STS-114-V-15）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-03）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-01 | 非常時EVAは計画外だがオービタと乗員の安全な帰還に必要なEVAで、オービタの機器が故障したときに行い、手順・工具・作業位置はどのミッションでも練習できるよう定めてある。 | REQ-EVA-06 | — |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-02 | 想定するオービタの故障は放熱器アクチュエータ、ペイロードベイドア、隔壁ラッチ、中心線ラッチ、エアロックハッチ、RMS、隔壁カメラ、Ku帯アンテナ、ET扉で、故障ごとの処置（切り離し、ウインチ、ラッチ工具、手動操作など）を表に定める。 | REQ-EVA-06 | — |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-03 | 着用中の真空中の給水は非常時EVAを行う場合に限る手順で、エアロックに入って外部ハッチを閉じ、SCUを通してEMUに給水する。 | REQ-EVA-06 | — |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-04 | 着用中に電池を交換してもEMUが計算するTIME EV・TIME LFはリセットされず、リセットにはコールドリスタートが要る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-05 | EMUのコールドリスタートはファンとO2を止めるため、エアロック圧8.0 psi以上でだけ行い、できるだけ速く行う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-06 | 主母線Aを失ってEMU 2の給水・廃水弁が動かなくなった場合は、EMU 2をSCU 1につないで給水・再充填を行うことがある。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-07 | EMUの化学汚染が目視または検知器で確かめられた場合はヒドラジンの汚染除去の手順を行い、数の限られた検知管（Draeger）は汚染が疑われる場合にだけ使う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-08 | 汚染が確かめられた場合は進入からEMUの脱衣までに1時間55分（ISSのスラスタによる汚染は2時間10分）、疑いの場合は55分（同1時間10分）のEMU消耗品を残すようEVA作業を後回しにし、SCUにつないだベークアウトはヘルメットのパージ弁を開ければLiOHを消費しない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-09 | 減圧症治療アダプタ（BTA）は、減圧症にかかったEVA乗員の処置のためEMUを高圧治療室に変え、キャビン圧より8.0 psid高く加圧する。 | REQ-EVA-07 | — |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-10 | BTAによる処置はカフ2・3では6 psidから始めて症状が消えなければ8 psidに上げ、カフ4では8 psidから始め、処置の時間と圧力の変更は地上の医師（Surgeon）が決める。 | REQ-EVA-07 | — |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-11 | カフ4の症状は医学的緊急であるII型の減圧症によることがあり、急いで再与圧することが重要なため、患者1人だけの再与圧になることがある。 | REQ-EVA-07 | — |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-12 | SAFERはEMUのPLSSの下に付ける単一系統の推進式背負い装置で、ISSなど大きな構造物にドッキング中でオービタが救出できない状況で離れたEVA乗員が自力で戻るためのもので、電池は最低13分、24個のGN2スラスタで6自由度の制御を行う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-13 | EVA中のオービタは乗員のいる区域に応じてRCSジェットの禁止や駆動器の電源断などを構成し、この構成から外れるとEVA乗員がRCSの噴流を浴びるおそれがある。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | F-EVA-EMG-14 | ISSからシャトルのエアロックへの非常進入では、EV1が先にシャトルのエアロックの後部ハッチを準備して開け、EV2はシャトルのハッチが開いてからISSのクルーロックのハッチを閉じる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-06・REQ-EVA-07）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-01 | EVA後の手順はEMUの停止と脱衣、EMUの保守・再充填は電池とLiOHカートリッジの交換・充電と次のEVAのための清掃・給水、EVA後の帰還準備はEMUとエアロック機器の再構成と再収納である。 | REQ-EVA-05 | — |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-02 | EVA後の手順は随意の手順を行わなければ45分、すべて行うと1時間25分で、再与圧でDCSの症状が消えた場合はEMUを脱がずに私的医療会議（PMC）でMCCに確かめる。 | REQ-EVA-05 | — |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-03 | O2の再充填はO2圧が約850になれば完了とし、水の充填は水圧（WP）が8〜15 psiで約30秒安定すれば完了とし、満充填で給水タンクBの約6%を使う。 | REQ-EVA-05 | — |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-04 | EMUへの給水はタンクAの出口を閉じて給水タンクBから行い、満充填には約15分かかる。 | REQ-EVA-05 | — |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-05 | 水の再充填は外部エアロックの給水配管の温度が両区域で95°F以下のときに行い、これはSCUの細菌フィルタの寿命を守り、給水袋のヨウ素濃度が高くなる危険を減らすためである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-05）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-06 | EMUの凝縮水はエアロック支援系を通してWCSのファンセパレータから廃水タンクへ捨て、その間はセパレータがあふれるおそれがあるためWCSの小便器を使わない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-05）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-07 | LiOHカートリッジの交換では、10.2 psiキャビンを使った場合にカートリッジのキャップの前後に差圧が生じうるため、ポートを顔に向けず、キャップを外したポートの露出時間を短くする。 | REQ-EVA-05 | — |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-08 | EMU電池のミッドデッキでの単独充電では、電池内の不動態化で充電完了と誤表示されることがあり、2〜3回充電を繰り返すと解消する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-05）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-09 | SCUを通したEMU内での電池の充電は、確認には15分以上、満充電には最長20時間をかける。 | REQ-EVA-05 | — |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-10 | EMU電池の交換はエアロックの電源を切りEMUの電源スイッチをSCU位置にして行い、電池を壁にぶつけてアルミ製のカバーを傷めないよう扱う。 | REQ-EVA-05 | — |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-11 | EVA後の帰還準備（SAFERを搭載しない場合45分）ではEMU O2隔離弁とSCUのO2弁・給水弁を閉じ、着陸前にEMU TVとヘルメットライトを外して、EMUを着陸構成で拘束袋に固定し、外部ハッチの漏れが疑われる場合は内側ハッチの均圧弁をOFFにしてキャップを付ける。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-05）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-12 | 帰還前日のEVAは、単一シフトの飛行では就寝7時間前までにエアロックへの進入を終える場合に限る。再与圧、EVA後の手順、EMUの保守・再充填、EVA後の帰還準備、キャビンの収納などに最低7時間を要するためである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-05）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-MNT-001 | F-EVA-MNT-13 | STS-54では、EVA後にEMUにO2を再充填し、電池を一晩充電した。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-05）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-01 | 10.2 psiaキャビンの手順は減圧症の危険を減らすため飛行医が定めたもので、計画EVAではEMU内の前呼吸を短くできる選択肢1・2（初期前呼吸60分、10.2 psiaで12時間または24時間、EMU内で75分または40分）を選び、10.2 psiaの調圧器がないため圧力とPPO2を手動で管理する。 | REQ-EVA-02 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-02 | マスク前呼吸はEV1・EV2が45分を終えるまで減圧を始めず、キャビンが10.2 psiaに達して1時間の前呼吸を終えるまで終えない。 | REQ-EVA-02 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-03 | 減圧中はキャビン圧とPPO2を図表に記入して弁の構成を変え、可燃性の増大を防ぐためキャビンのO2濃度を28.5%未満に保ち、14.7 CAB REG INLET SYS 1からN2を流す間はWCSを使わない。 | REQ-EVA-02 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-04 | 10.2 psiaの運用ではキャビン圧を10.0〜10.4 psia、PPO2を2.55〜2.80 psia（指示値）に手動で保ち、10.0 psiaの下限は冷却のための電力削減を避け、C&Wの上限10.6は前呼吸のPPN2 8.44 psiの限界を守るためである。 | REQ-EVA-02 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-05 | EMUの搭載替え（30分）ではエアロックのEMUとミッドデッキのEMUを入れ替え、搭載したEMUを点検する前にそのSCUのO2弁を閉じておく。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-02・REQ-EVA-07・REQ-EVA-08・REQ-EVA-06）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-06 | エアロックの空気循環系は非EVA時にエアロックへ調整空気を送るもので、ブースタファンにつなぐダクトは減圧のために乗員室とエアロックの間のハッチを閉じる前に外す。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-02・REQ-EVA-07・REQ-EVA-08・REQ-EVA-06）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-07 | カフチェックリストは手首のバンドに付けたアルミ合金の金具で綴じた約4×5インチのカードで、EVA作業の手順と参照データ、EMUの故障の診断と解決の補助を載せる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-02・REQ-EVA-07・REQ-EVA-08・REQ-EVA-06）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-08 | 減圧症はカフ区分1〜4に分け、1はEVAを続けてEVA後のPMCで報告、2は作業場所を片付けてTERMINATE EVA、3は患者をエアロックへ補助しペイロードベイを安全にしてTERMINATE EVA、4はABORT EVAとして患者を単独で再与圧する。 | REQ-EVA-07 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-09 | TERMINATE EVAはEVA作業をやめてペイロードベイを片付け、エアロックに戻って再与圧することで、SCUで安定・是正できるEMUの問題ならその乗員は真空中でSCUにつないで救援に備え、もう1人がEVAを終えてよい。 | REQ-EVA-08 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-10 | 加圧したエアロックからEVA乗員を締め出してはならないが、乗員が大きく離れて再与圧の時間が重要なABORT EVAは例外で、離れた乗員は外部ハッチの均圧弁でエアロックを減圧して入れる。 | REQ-EVA-08 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-11 | MCCが判断するいずれかの消耗品の残りが30分になる時までにEVA乗員はエアロックへの進入を終えてSCUにつなぐ。30分は補充できない予備のSOPを使わないための予備である。 | REQ-EVA-08 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-12 | 計画EVAはMET 72時間より前には行わず、計画外EVAは最初の24時間には行わず72時間より前に行うには飛行医の健康評価とフライトディレクタの承認を要し、帰還日にはEVAを行わない。 | REQ-EVA-08 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-13 | 計画・計画外EVAは将来の非常時EVAの能力（再充填の消耗品など）を損なう場合は行わず、EVAの終わりにはペイロードベイを軌道離脱のために次のEVAが要らない構成にしておく。 | REQ-EVA-06 | — |
| SSD-FD-EVA-OPS-001 | F-EVA-OPS-14 | 本書のキューカードはSAFER点検結果・SAFER状態の切り分け、DEPRESS/REPRESS（通常構成・トンネルアダプタ）、FAILED LEAK CHECKと、EMERGENCY AIRLOCK REPRESSのデカールである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-02・REQ-EVA-07・REQ-EVA-08・REQ-EVA-06）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-01 | EVA支援機器は作業に応じてエアロックの外に用意され、乗員をオービタ・RMSに固定し、機械的な補助を与え、移動を助ける。 | REQ-EVA-04 | — |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-02 | 安全テザーはペイロードベイのどこへでも行けるよう乗員をオービタにつなぎ、エアロックを出る前に腰テザーに付けてEVA中は常に付けておく。 | REQ-EVA-04 | — |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-03 | 運用飛行規則は、閉じたエアロックの中を除きEVA中は各乗員を安全テザーでオービタにつなぎ、工具は使用中は常に乗員にテザーでつなぐと定める。浮遊した工具はオービタに当たって損傷させるおそれがある。 | REQ-EVA-04 | — |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-04 | EVAの付属品（LCVG、EMUの電池とライト、工具など）はミッドデッキ床のVolume H（MD23R）に収納する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-04）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-05 | エアロック収納袋はEVA前後の物品の一時収納に使い、エアロックの減圧前に中身ごと取り出すが、EVAバッグ（カメラ・保温ミトン・工具キャディなど）はEVA中もエアロックに置く。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-04）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-06 | 左舷の軽量工具収納組立（TSA）は前後のトレイに調整式テザー、RMSロープリール、中心線ラッチ工具2個、3点ラッチ工具2個などを収め、扉を閉じるときはラッチの固定タブを矢印どうしが合う位置にする。 | REQ-EVA-04 | — |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-07 | STS-114のEVA 2では左舷TSAの4個のラッチの1個が回らず、PGTでEVA用の手動オーバーライドボルトを緩めて開けたが、ボルトは規定の4 ft-lbに対し16 ft-lbで締められていた（IFA STS-114-V-18）。帰還は4個のうち3個のラッチが掛かっていれば支障ない。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-04）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-08 | ミニワークステーション（MWS）はEMUの前面に付けて工具を収め、作業場所で乗員をテザーで拘束し、携帯式足部拘束具はつま先ガイドとかかとクリップでEMUのブーツを固定する。 | REQ-EVA-04 | — |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-09 | PGTは使用前に電池を入れて校正し、トリガで駆動して電池電圧と両方向の回転を確かめ、モード・トルク・回転数の設定をPGTの設定表と比べる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-04）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-10 | PGTの標準設定は、トルクA1〜A7が2.5〜9.2 ft-lb、B1〜B7が12.0〜25.5 ft-lb、回転数10・30・60 rpm、スリープ15分・自動電源断30分で、多段トルクリミッタ（MTL）は2.5〜30.5の6段である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-04）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-11 | PGTの異常表示（電池の高温・低温・低電圧、校正失敗、過電流など）では電源の入れ直しと再校正を試み、回復しなければ電源を切ってラチェット（手動）モードで使う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-04）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-TLS-001 | F-EVA-TLS-12 | RMSに付けた足部拘束具（MFR）・PADは、RMSがEMUに過大な荷重をかけない範囲でだけ使い、衝撃に最も弱いPLSSは直径2インチの球・2 ft/sで400 lbの衝撃まで認定されている。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-EVA-04）が受け持つ構成・運用の記述。 |
| SSD-FD-EVA-EMG-001 | IF-EVA-11 | （IF の行。内容は所有文書） | REQ-EVA-06 | — |
| SSD-FD-EVA-EMG-001 | IF-EVA-12 | （IF の行。内容は所有文書） | REQ-EVA-06 | — |
| SSD-FD-EVA-OPS-001 | IF-EVA-15 | （IF の行。内容は所有文書） | REQ-EVA-08 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 40 件のうち、40 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-EVA-001 | 7 | 0 | 7 | 0 |
| SSD-FD-EVA-CHK-001 | 13 | 10 | 3 | 0 |
| SSD-FD-EVA-DPR-001 | 12 | 7 | 5 | 0 |
| SSD-FD-EVA-EMG-001 | 14 | 6 | 8 | 0 |
| SSD-FD-EVA-MNT-001 | 13 | 7 | 6 | 0 |
| SSD-FD-EVA-OPS-001 | 14 | 10 | 4 | 0 |
| SSD-FD-EVA-TLS-001 | 12 | 5 | 7 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（8件のうち根拠あり 8件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-EVA-01 | T（試験） | 根拠あり | PDF p62：EMUの点検でLCVGの流れの停止の後にLCG配管を温めるため高い設定点のCヒータを使ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=62） |
| REQ-EVA-02 | D（実証） | 根拠あり | PDF p65：1回目のEVAの後に、地上の専門家の評価のためEMUの手袋を撮影したことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=65） |
| REQ-EVA-03 | D（実証） | 根拠あり | PDF p48：減圧弁の蓋の付け忘れによる減圧の遅れと、通常の減圧率（10.2から5 psiaで2.8 psia/min）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| REQ-EVA-04 | D（実証） | 根拠あり | PDF p82：左舷の軽量工具収納組立のラッチが開かなかったこと（IFA STS-114-V-18）とEVAボルトの過大な締付けを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=82） |
| REQ-EVA-05 | D（実証） | 根拠あり | PDF p17：EMUの電源・電池充電器の騒音（STS-54-V-11）を示す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=17） |
| REQ-EVA-06 | A（解析） | 根拠あり | C.12節（PDF p71）：エアロック支援系は非常時EVAに使われうるとしても非常用の機器ではなく、EMUも非常系とはしないとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |
| REQ-EVA-07 | A（解析） | 根拠あり | C.23節（PDF p90）：EMUのハードウェアの解析で497件の故障モード表と390件の潜在的な重要品目を挙げ、指摘153件を示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=90） |
| REQ-EVA-08 | D（実証） | 根拠あり | PDF p30：キャビンを乗員がエアロックを出るまで10.2 psiaに保ち、キャビンを14.7 psiaへ戻してから進入の再与圧を行ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p460） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460
2. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 3-4 PRIMARY REGULATOR/FAN/PUMP CHECK（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=70
3. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-7 EMU PURGE（PDF p87） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=87
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-103 EVA PREBREATHE PROTOCOL（PDF p1783） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1783
5. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p403） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403
6. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） CC A6-2 DEPRESS/REPRESS（NOM A/L）（PDF p98） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-101 EVA Capability（PDF p1855） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855
8. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-13 Airlock Configuration（PDF p1846） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1846
10. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 9-4 OXYGEN RECHARGE VERIFICATION・WATER FILL VERIFICATION（PDF p116） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=116
11. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p459） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/459
12. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p462） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-15 CONTINGENCY EVA PROTECTION（PDF p1848） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1848
14. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p451） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451
15. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12-20 BTA TREATMENT（PDF p160） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=160
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-152 EMU Consumables with Real-Time EMU Data Downlink（PDF p1866） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1866
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-14 SCHEDULED AND UNSCHEDULED EVA CONSTRAINTS（PDF p1847） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1847
18. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Extravehicular Activity Equipment Evaluation（PDF p62） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=62
19. STS-122 Mission Report Extravehicular Activity Summary（PDF p65） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=65
20. NSTS-37452 STS-125 Mission Report（2010） Atmospheric Revitalization Pressure Control System（PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48
21. STS-114 Mission Report 付録B IFA STS-114-V-18（PDF p82） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=82
22. NASA-CR-194116 STS-54 Mission Report（1993） Electrical Power Distribution and Control（STS-54-V-11）（PDF p17） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=17
23. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（McDonnell Douglas、1988年） 付録C.12節 LSS・ALSS の評価（SD/FS）（PDF p71） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71
24. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.23 Extravehicular Mobility Unit（PDF p90） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=90
25. NSTS-37436 STS-108 Space Shuttle Mission Report（2002年） Orbiter Docking System・ARPCS（PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 8件、機能行 85件とのトレース、検証の根拠） |
