# ヘリウム加圧（HEP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-HEP-001 |
| 表題 | ヘリウム加圧（HEP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

前部・左・右の各RCSで、ヘリウムタンク2基のガスを並列の隔離弁・2段の調圧器・直並列の逆止弁・逃し弁を通して燃料タンクと酸化剤タンクへ送り、推進薬を噴射器へ押し出す圧力を与える機能と、その監視・操作・故障時の扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-HEP-01 | 各RCS（前部・左・右）は、ヘリウムタンク2基、ヘリウム隔離弁4個、調圧器4個、逆止弁2組、逃し弁2個と、充填・排出用の接続口を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| F-RCS-HEP-02 | 2基のヘリウムタンクは、それぞれ燃料タンクと酸化剤タンクに個別にヘリウムを送り、推進薬タンクのアレージ圧を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| F-RCS-HEP-03 | ヘリウムタンクが故障した場合に公称のアレージ圧のままで最大のΔVが得られる推進薬量を最大ブローダウンといい、前部RCSで22%、後部RCSで24%である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| F-RCS-HEP-04 | ヘリウム隔離弁は2個ずつ並列で、前部はパネルO8のFWD RCS He PRESS A・B、後部はパネルO7のAFT LEFT・AFT RIGHT RCS He PRESS A・Bのスイッチ（OPEN・GPC・CLOSE）で操作し、各スイッチが燃料側と酸化剤側の2個の弁を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| F-RCS-HEP-05 | ヘリウム隔離弁はソレノイド弁で、電気負荷制御組立を通した瞬時の通電で開いて磁気ラッチされ、ラッチ周りのソレノイドへの通電でばねとヘリウム圧により閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| F-RCS-HEP-06 | 計量シーケンスは、推進薬タンクのアレージ圧が300 psiaを超えると、軌道上で高圧ヘリウム隔離弁を自動的に閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |
| F-RCS-HEP-07 | 調圧器組立は2組が並列で、各組に一次・二次の2段が直列にあり、一次段は242〜248 psig、二次段は253〜259 psigに調圧し、一次段が開故障すると二次段が調圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| F-RCS-HEP-08 | 逆止弁組立は4個のポペットを直並列に配し、直列の配置で推進薬蒸気の逆流を抑えて上流のヘリウム漏れ時にもタンクの圧力を保ち、並列の配置で1個の閉故障時にも加圧を確保する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HEP-09 | 逃し弁組立はバースト膜・フィルタ・逃し弁から成り、膜は324〜340 psigで破れ、逃し弁は最小315 psigで開いて310 psigで再着座し、調圧器の全開故障時のヘリウム流量を処理できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HEP-10 | ヘリウムの供給圧は、パネルO3のロータリスイッチをRCS He X10にしてRCS/OMS/PRESSのOXID・FUEL計器で監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| F-RCS-HEP-11 | 運用飛行規則A6-1は、RCSのヘリウムタンクを圧力400（456）psia未満か、加圧経路がすべて閉じた場合に喪失とし、400 psiaは4噴射器の流量で推進薬タンク圧が公称を下回る値である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1127） |
| F-RCS-HEP-12 | 運用飛行規則A6-58は、冗長な加圧経路が残っている限り、調圧器の経路を切り分けるためにRCSをブローダウンで運転しないと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1191） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCS-01 | 推進薬貯蔵・分配 | 推進薬・流体 | 送信 | ヘリウムタンクのガスを隔離弁・調圧器を経て、調圧器組立と推進薬タンクの間にある逆止弁組立を通して燃料タンクと酸化剤タンクのアレージへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）調圧器は一次段で242〜248 psig、二次段で253〜259 psigに調圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） | — |
| IF-RCS-14 | 警報系（C/W） | データ・指令 | 送信 | ポッドのヘリウム圧（燃料か酸化剤）が500 psi未満になると、F(L,R) He Pの故障メッセージを出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）このメッセージには、ポケットチェックリストのRCS LEAK ISOLの手順で対処する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=92） | 上位: IF-ORB-41 |
| IF-RCS-17 | RCS運用管理 | データ・指令 | 受信 | パネルO7・O8のHe PRESS A・Bスイッチでヘリウム隔離弁を操作し、調圧器の故障ではRCS REGULATOR RECONFIGの手順で使う加圧経路を切り替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Helium System（PDF p725〜727）：ヘリウムタンク2基・並列の隔離弁・2段の調圧器（242〜248・253〜259 psig）・直並列の逆止弁・逃し弁と、最大ブローダウン量（前部22%・後部24%）を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-1（PDF p1127）とA6-58（p1191）：RCSのヘリウムタンクの喪失を400（456）psia未満か加圧経路の全閉と定め、冗長な経路があれば調圧器の切り分けのためのブローダウン運転をしないと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1127） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.2a RCS VLV tb - bp（PDF p756）：He PRESS A（B）を含むRCSの弁のトークバックがバーバーポールになった場合の切り分けと、弁の遮断器の公称構成を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=756） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | RCS REGULATOR RECONFIG（PDF p256）：He PRESS A・Bスイッチを操作して、使うヘリウムの調圧経路を切り替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256） |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | 表7-1（PDF p93）：F RCS He Pのメッセージを、Heタンク（燃料か酸化剤）の圧力の低下で出し、RCS LEAK ISOLのポケットチェックリストで処置すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=93） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：最大ブローダウンの推進薬量を、SCOM（PDF p725・p742）は前部22%・後部24%、運用飛行規則A6-52は前部23%・後部24%、A6-201は酸化剤22%・燃料23%とする。本書の機能の文はSCOMの値を記した。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1226）

> **注記** SCOMの付録Cは、ヘリウムタンクの漏れの処置を、上昇中は漏れていない側からのクロスフィードでET分離を守り、軌道上は最大ブローダウン（約23%）までRCSを噴射し、突入では漏れ切った後に漏れていない側からクロスフィードする、とまとめている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1133）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p725） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725
2. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p722） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722
3. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p727） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-1 OMS/RCS HELIUM TANK（PDF p1127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1127
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-58 RCS REGULATOR FAILURE TROUBLESHOOTING（PDF p1191） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1191
6. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
7. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 7.3 Fault message table（Comments）（PDF p92） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=92
8. Orbit Operations Checklist Rev M PCN-10 RCS REGULATOR RECONFIG（PDF p256） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-202 OMS LEAKING HE SYSTEM BURN（PDF p1226） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1226
10. Shuttle Crew Operations Manual 付録C Study Notes（USA007587 Rev. A CPN-1、PDF p1133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1133
11. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
