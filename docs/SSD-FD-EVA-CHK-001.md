# EMU点検・準備（CHK）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EVA-CHK-001 |
| 表題 | EMU点検・準備（CHK）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EVA-001 |
| 関連図 | SSD-SYS-ARC-001 図60 EVA 機能構成 |

## 1. 目的

エアロックに搭載したEMUの点検（電源・通信、主調圧器・ファン・ポンプ、SOP、電池）とSAFER・REBA給電機器の点検、ミッドデッキ準備・着用・窒素パージ・EMU内前呼吸から成るEVA準備と、EMUの正常値（EMU STATUS）の目的と条件を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EVA-CHK-01 | EMU点検は着用前にEMUの各系を事前に点検するもので、続くミッドデッキ準備と着用準備でEMUと付属品を乗員が着用できる構成にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460） |
| F-EVA-CHK-02 | EMU点検はエアロックの右舷・左舷の2着を同時に行う手順で、3着目は点検中のEMU交換の後に同じ手順で点検し、そのときはEMU間の通信を確かめるため点検済みの1着をエアロックに残す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=68） |
| F-EVA-CHK-03 | エアロックの電源を入れるときはEMUを電池電源にしておき、EMUの電源を入れ直すたびにPWR RESTARTの表示とBITE灯が点くが、表示とトーンの試験はコールドリスタートのときにだけ行われる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=68） |
| F-EVA-CHK-04 | 主調圧器の点検ではEMUを服圧4.2〜4.4 psidで安定させて自動の漏れ点検を行い、LEAKAGE HIの表示（ΔP 0.3 psi超）が出た場合はFAILED LEAK CHECK（14.7/10.2 PSI）のキューカードに移る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=70） |
| F-EVA-CHK-05 | ファン・ポンプの点検では、O2 ACTをOFFにしたままのファンの運転を約2分以内にとどめ、LCVGに冷却水が流れて水温が下がることを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=71） |
| F-EVA-CHK-06 | SOPの点検では中間段のゲージで第1段の調圧を確かめ、運用飛行規則は第1段の調圧を600 psig未満に保てない場合を、計画・計画外EVAではEMUのNO-GO（非常時EVAではSCUでの救援待機に限りGO）とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1858） |
| F-EVA-CHK-07 | SAFERの点検では自己試験で24個のスラスタの作動音を数え、GN2・電力の残量と電池電圧・製造番号をMCCに報告し、電源を入れている時間は約1分が望ましい。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=75） |
| F-EVA-CHK-08 | REBAで動く12 Vの機器（手袋ヒータ・EMU TV）の点検では、電池の消耗と発熱を避けるため、指先に熱を感じたら手袋ヒータを切る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=80） |
| F-EVA-CHK-09 | ペイロードベイの投光器はEMUの熱的な限界を超えるため、EVA乗員が近くで作業する場合はミッドデッキ準備の時点で消し（冷えるまで最長6時間）、無線ビデオのヒータは映像の品質のためEVAの4時間以上前に入れる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=82） |
| F-EVA-CHK-10 | EVA乗員はEMUに刺激物を持ち込まないよう、EVA当日の前から衛生用品・炭化水素系製品の使用を控え、EMUに入れてよい品目は承認済み非EMU機器の表（4-11）で定める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=82） |
| F-EVA-CHK-11 | 着用後の窒素パージの時間はキャビン圧10.2 psiで8分、14.7 psiで12分とし、パージと前呼吸の間は手足を時々動かして冷やしすぎないようにする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=87） |
| F-EVA-CHK-12 | 10.2 psiキャビンの前呼吸は、45分以上を12.5 psi未満への減圧の前に行う途切れのない初期前呼吸と、EVA直前のEMU内の途切れのない最終前呼吸（10.2 psiで24時間なら40分、12時間なら75分）から成る。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1783） |
| F-EVA-CHK-13 | EMU STATUSの表は服圧4.2〜4.4 psid（減圧後は4.2〜5.5 psid）、O2圧150〜950 psia、SOP圧5,410〜6,800 psia、CO2 0.2〜4.0 mmHgなどの正常値を示し、EMUデータのダウンリンクがないときは最初の6.5時間は1時間ごと、その後は10分ごとに状態をMCCへ報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=94） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EVA-01 | 合図と運用管理 | データ・指令 | 受信 | キャビンを10.2 psiにしてからの時間（12時間・24時間）に応じてEMU内の前呼吸を1時間15分・40分とし、14.7 psiのままなら4時間とする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=88）SCOMの選択肢1・2も、初期前呼吸60分の後の最終前呼吸を、10.2 psiaで12時間なら75分、24時間なら40分とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403） | — |
| IF-EVA-02 | 減圧・再与圧 | データ・指令 | 送信 | EMU内の前呼吸の時間が終わったらMCCに減圧のGOを確かめ、DEPRESS/REPRESSのキューカードで減圧を始める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89） | — |
| IF-EVA-03 | 工具・収納 | 構造・荷重 | 受信 | EVA準備で必要に応じてMWSとBRTをEMUに取り付け、エアロックにEVA工具が入っていることを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89）MWSはEMUの前面に付けて工具を収め、作業場所で乗員をテザーで拘束する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/457） | — |
| IF-ALS-07 | 液冷服冷却ループ（LCG） | 推進薬・流体 | 双方向 | SCU接続中は、EMUの液体輸送系のポンプがLCVGの水（約240 lb/hr）をSCUを通してオービタの熱交換器へも流し、乗員を冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448）LCVGの冷却水は、EMUごとの2本の閉ループでエアロックに出入りする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） | 上位: IF-ECL-20 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EV-01 | JSC-48023 Rev. H（PCN-20） | EVA Checklist（汎用、2005年、PCN-20 2010年） | 3〜5節（PDF p67〜96）：EMU点検（電源・通信、主調圧器・ファン・ポンプ、SOP、電池）、SAFER・REBA機器の点検、ミッドデッキ準備・着用・N2パージ・EMU内前呼吸とEMUの正常値を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=67） |
| EV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節 Life Support System（PDF p447〜450）：PLSSとSOP、通気・冷却・給水回路、電池、EMU無線、DCMとCWSを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447） |
| EV-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-102・A15-151・A15-154（PDF p1855〜1866・p1868）：EMUの能力ごとの喪失の条件とGo/No-Go、脱窒素（前呼吸）、EVA前の消耗品の条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1868） |
| EV-05 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.21節（PDF p530）：生体計測（OBS）の使用はEVAに限られ、EVAのOBSの信号はUHFでオービタへ送ることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=530） |
| EV-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.23節（PDF p90）：指摘のうち90件がPLSSとDCMに集中し、SOPで安全な場所へ戻れれば検知の基準を満たすとするNASAの解釈にIOAが同意しなかったことを示す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=90） |
| EV-09 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p62：EMUの点検でLCVGの流れの停止の後にLCG配管を温めるため高い設定点のCヒータを使ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=62） |
| EV-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p42：両EMUの点検が正常に終わり、約75分の前呼吸の後にEVAを始めたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |
| EV-12 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | PDF p23：キャビン圧10.2 psiaでのEMUの点検と、40分の前呼吸の後のEVAを示す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=23） |
| EV-14 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p22：EMUの点検とサイズの調整で、上腕と前腕の部材の向きと配線を撮影して確かめたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOM（PDF p460）はEMUの着用を約40分、前呼吸を40〜70分とするが、EVAチェックリスト（2005年）は着用を55分（4-5）、EMU内前呼吸を10.2 psiキャビン12時間で1時間15分・24時間で40分・14.7 psiで4時間（4-8）とし、SCOMの2.9節（PDF p403）も最終前呼吸を75分または40分とする。本書はチェックリストと運用飛行規則A13-103の値をとった。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460）

> **注記** LCVGの冷却水はSCU接続中にEMUのポンプでオービタの熱交換器へも流れ、本書ではECLSSの液冷服冷却ループ（SSD-FD-ECL-ALS-LCG-001）のIF-ALS-07をEMU点検・準備に結んで再利用する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448）

> **注記** IOA（1988年）は、乗員が安全な場所へ戻れれば服の故障の検知の基準（スクリーンB）を満たすとしたNASAの解釈に対し、非常系であるSOPを安全な場所へ戻るために使うことに同意しなかった。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=90）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p460） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460
2. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 3-2 EMU CHECKOUT（PDF p68） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=68
3. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 3-4 PRIMARY REGULATOR/FAN/PUMP CHECK（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=70
4. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 3-5 PRIMARY REGULATOR/FAN/PUMP CHECK（続き）（PDF p71） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=71
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-102 EMU GO/NO-GO CRITERIA（PDF p1858） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1858
6. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 3-8a SAFER CHECKOUT（PDF p75） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=75
7. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 3-12 REBA POWERED HARDWARE CHECKOUT（PDF p80） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=80
8. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-2 MIDDECK PREP（PDF p82） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=82
9. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-7 EMU PURGE（PDF p87） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=87
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-103 EVA PREBREATHE PROTOCOL（PDF p1783） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1783
11. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 5-2 EMU STATUS（PDF p94） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=94
12. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-8 EMU PREBREATHE（PDF p88） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=88
13. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p403） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/403
14. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-9 EMU PREBREATHE（続き）（PDF p89） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89
15. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p457） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/457
16. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Oxygen Ventilation Circuit・Liquid Transport System（PDF p448） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/448
17. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
18. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.23 Extravehicular Mobility Unit（PDF p90） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=90
19. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
