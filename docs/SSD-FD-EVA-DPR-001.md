# 減圧・再与圧（DPR）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EVA-DPR-001 |
| 表題 | 減圧・再与圧（DPR）機能説明書 |
| 版・日付 | Rev. A／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EVA-001 |
| 関連図 | SSD-SYS-ARC-001 図60 EVA 機能構成 |

## 1. 目的

前呼吸を終えたEVA乗員がエアロックを2段階（5 psi・0 psi）で減圧してEMUの漏れを点検し外部ハッチを開けるまでと、エアロックに戻ってSCUにつなぎ再与圧して気密を確かめるまでの、乗員・EMU側の手順の目的と条件（通常構成・トンネルアダプタ）を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EVA-DPR-01 | 外部エアロックの空の容積は228 ft³で、EMU 2着を入れて減圧する容積は208 ft³である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| F-EVA-DPR-02 | 減圧は前呼吸の完了後に始め、減圧中は服圧計が5.5を超えないことを見て、超えた場合は減圧を止めてMCCに確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| F-EVA-DPR-03 | エアロックを5.0 psiで止めてEMUの漏れ点検を行い、LEAKAGE HIの表示が出た場合はキューカード裏面のFAILED LEAK CHECK（5 PSI）へ移り、合格すればO2 ACTをEVAにしてから0 psiまで減圧する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| F-EVA-DPR-04 | エアロックに戻った乗員はSCUをつないで昇華器の水を切り、水を切って2分経つまでは外部ハッチを閉じない。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=201） |
| F-EVA-DPR-05 | 再与圧は内側ハッチの均圧弁でエアロックを5.0 psiまで戻して止め、2分間のΔPが0.1 psi以下であることでエアロックの気密を確かめてから、乗員室の圧力に合わせる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| F-EVA-DPR-06 | SOPで呼吸している場合は再与圧の間もO2 ACTをEVAのままにし、減圧症の症状があればO2 ACTをPRESSのままにし、カフ1の症状が再与圧で消えた場合はカフ2として報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| F-EVA-DPR-07 | トンネルアダプタ構成の減圧（25分）では、5 psiでの漏れ点検の後に後部モジュールの気密をMCCに確かめ、再与圧での気密の確認は4分間とする。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=100） |
| F-EVA-DPR-08 | エアロックを乗員室の気密を保ったまま減圧・再与圧できなければEVA能力の喪失とし、いずれかのハッチの漏れによるエアロック圧の低下が0.2 psi/minを超えれば喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855） |
| F-EVA-DPR-09 | EMUの正圧逃し弁が閉じたまま開かない故障は減圧中にだけ検知でき、弁を開けられなければ過加圧に対してフェイルセーフでないため、EMUはEVAにNO-GOとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1858） |
| F-EVA-DPR-10 | EVA中は外部エアロックの上部・後部ハッチの保温カバーを閉じておき、開いた場合は乗員が次の都合のよい機会に戻って閉じる。真空中に保温カバーが開いているとエアロック内の水配管が凍るおそれがあるためである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1869） |
| F-EVA-DPR-11 | STS-125の2回目のEVAでは減圧弁の蓋を付けたまま減圧を始めたため、10.2から7 psiaへの減圧率が0.44 psia/minと遅く（通常は10.2から5 psiaで2.8 psia/min）、乗員が蓋を外して通常どおり減圧した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| F-EVA-DPR-12 | STS-114では、EVA 2の後にエアロックを再び減圧して乗員が入る際、外部ハッチの右舷均圧弁がEMER位置で流れなくなり、左舷の均圧弁で減圧した（IFA STS-114-V-15）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=16） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EVA-02 | EMU点検・準備 | データ・指令 | 受信 | EMU内の前呼吸の時間が終わったらMCCに減圧のGOを確かめ、DEPRESS/REPRESSのキューカードで減圧を始める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89） | — |
| IF-EVA-04 | 区画・減圧・再与圧（ALS） | 推進薬・流体 | 双方向 | エアロック減圧弁でエアロックを5.0 psiまで下げてEMUの漏れを点検してから0 psiまで減圧し、再与圧は内側ハッチの均圧弁で5.0 psiまで戻して気密を確かめてから乗員室の圧力に合わせる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98）EMU 2着を入れて減圧するエアロックの容積は208 ft³である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） | 上位: IF-ORB-45 |
| IF-EVA-05 | 合図と運用管理 | データ・指令 | 受信 | 減圧・再与圧はエアロックの構成ごとのDEPRESS/REPRESSキューカード（通常構成・トンネルアダプタ）に従い、漏れ点検の不合格時の手順はその裏面のFAILED LEAK CHECKに載せる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=232） | — |
| IF-EVA-06 | EVA後の手入れ・再充填 | データ・指令 | 送信 | 再与圧でエアロックの気密を確かめてO2 ACTをIVにした後にPOST EVAへ移り、再与圧でDCSの症状が消えた場合はMCCに確かめるまでEMUを脱がない。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=114） | — |
| IF-EVA-07 | 非常時の手順 | データ・指令 | 受信 | EMUの汚染が疑われた場合はエアロックを5 psiaまで再与圧した状態で保ち、検知管による汚染試験を行ってから再与圧を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1873）汚染の除去では真空で15分保持した後に、エアロックを5 psiまで再与圧する（REPRESSの手順1〜8）。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=149） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EV-01 | JSC-48023 Rev. H（PCN-20） | EVA Checklist（汎用、2005年、PCN-20 2010年） | 6節（PDF p97〜102）：通常構成とトンネルアダプタのDEPRESS/REPRESSキューカード（5 psiでの漏れ点検、0 psiへの減圧、5 psiでの気密確認）と、漏れ点検の不合格時の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98） |
| EV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節 External Airlock（PDF p451〜455）：外部エアロックの寸法・容積（減圧する容積208 ft³）、3枚のハッチと均圧弁、減圧・再与圧を操作する場所を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452） |
| EV-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-101・A15-13・A15-201（PDF p1846・p1855・p1869）：ハッチの漏れによるEVA能力の喪失、加圧したエアロックからの締め出しの禁止、EVA中のハッチの保温カバーを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855） |
| EV-04 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.1節・表6-1（PDF p173・p192）：トンネルアダプタ（130 ft³、上面のEVAハッチ）と、内側・外部ハッチの均圧弁（OFF・NORM・EMER）、エアロック減圧弁を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=173） |
| EV-09 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p81：EVA 2の後の進入のための減圧で、外部ハッチの右舷均圧弁が流れなくなったこと（IFA STS-114-V-15）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=81） |
| EV-10 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p48：減圧弁の蓋の付け忘れによる減圧の遅れと、通常の減圧率（10.2から5 psiaで2.8 psia/min）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |

## 5. 注記（出典間の相違・構成変更）

> **注記** エアロックの減圧弁・均圧弁・ハッチと換気の機器はECLSSのエアロック支援系（区画・減圧・再与圧、SSD-FD-ECL-ALS-DEP-001）で扱い、本書はEVA乗員とEMUの側の手順の目的と条件に絞る（IF-EVA-04）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192）

> **注記** 検証メモ：STS-114ではEVA 1で外部エアロック後部ハッチを外側から閉じてラッチを掛けるのが難しく、ハッチ外面の取っ手が以前の飛行の図面変更で外されていたことが一因とされた。外側からのハッチの閉鎖はそれまでの飛行で使われていなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=16）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** 減圧・再与圧の前の前呼吸の手順と R 値は [SSD-EPB-EVA-001](SSD-EPB-EVA-001.md) に示す（SysML v2 テキスト：SysML/SSD-EPB-EVA-001.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 External Airlock・External Airlock Hatches（PDF p452） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/452
2. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） CC A6-2 DEPRESS/REPRESS（NOM A/L）（PDF p98） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=98
3. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 15-9 AIRLOCK INGRESS（カフ30）（PDF p201） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=201
4. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） CC B6-2 DEPRESS/REPRESS（TNL）（PDF p100） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=100
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-101 EVA Capability（PDF p1855） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1855
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-102 EMU GO/NO-GO CRITERIA（PDF p1858） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1858
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-201 External Airlock Hatch Thermal Cover（PDF p1869） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1869
8. NSTS-37452 STS-125 Mission Report（2010） Atmospheric Revitalization Pressure Control System（PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48
9. STS-114 Mission Report Flight Day 7（IFA STS-114-V-15）（PDF p16） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=16
10. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 4-9 EMU PREBREATHE（続き）（PDF p89） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=89
11. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 20-2 CUE CARD CONFIGURATION（PDF p232） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=232
12. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 9-2 POST EVA（PDF p114） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=114
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-203 Cabin Atmosphere Decontamination Following EVA（続き）（PDF p1873） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1873
14. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12.1 STS EVA DECONTAMINATION（続き）（PDF p149） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=149
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.9.3.2節 EVA・表6-1 Airlock controls（PDF p192） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=192
16. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-09 | EMU の消耗品と前呼吸の定義書 SSD-EPB-EVA-001 への参照を注記（Rev. BN） |
