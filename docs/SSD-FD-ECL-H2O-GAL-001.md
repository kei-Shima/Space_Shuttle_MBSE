# 飲料水供給（GAL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-H2O-GAL-001 |
| 表題 | 飲料水供給（GAL）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-H2O-001 |
| 関連図 | SSD-SYS-ARC-001 図20 給水・廃水系 機能構成 |

## 1. 目的

タンクAの飲料水をギャレー給水弁から、水冷却ループのチラーで冷やす冷水経路と常温経路でギャレー（またはApollo給水器）と個人衛生用ホースへ送る機能と、ギャレーのヨウ素除去、ISSへの給水の移送を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-H2O-GAL-01 | パネルR11LのSUPPLY H2O GALLEY SUP VLVスイッチを開にすると、給水は並列の2経路に分かれ、一方はARSの水冷却ループの飲料水チラーで冷やされ、他方はチラーを通らない常温水となる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| F-ECL-H2O-GAL-02 | ギャレー給水弁を閉じると飲料水はミッドデッキのECLSS給水パネルから切り離され、ギャレーを搭載しない飛行では冷水と常温水をApollo給水器につないで飲用と食品の復水に使う（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） |
| F-ECL-H2O-GAL-03 | チラーはARSの水冷却ループで乗員の飲料水を冷やす（訓練マニュアル3.3.8節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70） |
| F-ECL-H2O-GAL-04 | ギャレーの復水ステーションは、食品・飲料パックへ0.5オンス刻みで0.5〜8オンスを給水し、温水（145〜165°F）と冷水（40〜60°F）を出す（SCOM 2.12節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465） |
| F-ECL-H2O-GAL-05 | 個人衛生用の水は、ギャレー搭載時は補助ポートのQDから、非搭載時は給水器のQDから12 ftのホースで取り出し、ホースの上流には微生物の逆汚染を防ぐ微生物チェック弁がある（1987年の飛行運用マニュアル）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=363） |
| F-ECL-H2O-GAL-06 | ギャレーのヨウ素除去装置（GIRAまたはLIRS）は飛行1日目に取り付け、帰還日に水分補給の準備の後に外す。GIRAは冷水のヨウ素を除き、常温・温水では約1.5 ppmに下げ、乗員のヨウ素摂取を1人1日1 mg未満に保つ（運用飛行規則A17-551A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2001） |
| F-ECL-H2O-GAL-07 | GIRAの使用中は常温・温水の摂取を1人1日16オンスまでとし、冷水は制限しない。就寝中は冷水ラインをGIRAから外し、ヨウ素を含む水をギャレー内に残して微生物の増殖を防ぐ（A17-551B・C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2002） |
| F-ECL-H2O-GAL-08 | GIRAの取付けでは、常温（非断熱）の供給ラインに微生物チェック弁（MCV）を、冷水（断熱）のラインにフィルタと活性炭・イオン交換（ACTEX）カートリッジをつなぐ（軌道運用チェックリスト5-53）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=163） |
| F-ECL-H2O-GAL-09 | ISSドッキング飛行では余剰の給水を船外へダンプせず、専用の移送ラインか、ギャレーで手作業で満たす移送バッグでISSへ移す（訓練マニュアル5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146） |
| F-ECL-H2O-GAL-10 | STS-114では19個のCWCに給水を満たし、そのうち18個（計1,739.7 lb）をISSへ移送した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| F-ECL-H2O-GAL-11 | 水タンクの窒素加圧を失うとギャレーへの給水圧が下がり、復水ステーションの給水量が設定より少なくなることがある。タンクAを隔離するとギャレーへは燃料電池の生成量分しか給水できない（MAL 6.2i）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=284） |
| F-ECL-H2O-GAL-12 | STS-59ではギャレーの温水・冷水に気泡が混じったが、オービタの給水系からの気体の混入ではなく、給水時のベンチュリ効果によるものと判断された。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-H2O-03 | 給水貯蔵・分配 | 推進薬・流体 | 受信 | タンクAの飲料水を、ギャレー給水弁を通してギャレーへ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143）ギャレー給水弁へは、微生物フィルタの下流の給水が導かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） | — |
| IF-WCL-22 | 水冷却ループ：冷側熱交換器 | 熱 | 受信 | 冷側経路の飲料水チラーで、ギャレーへ送る給水の一方の経路を冷やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400）飲料水チラーは給水タンクからの乗員の飲料水を冷やす。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70） | 上位: IF-ARS-23 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.8節（PDF p70）と1.4節（p19）：チラーが乗員の飲料水を冷やすと述べ、ARSが給水を冷やして冷たい飲料水を供給することを給水・廃水系のIFに挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p400〜401）：ギャレー給水弁、チラーを通る冷水経路と常温経路、Apollo給水器を示し、2.12節（p465〜466）でギャレーの復水ステーションと補助ポートを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-551（PDF p2001〜2002）：GIRA・LIRSの取付け・取外し、GIRA使用中の常温・温水の摂取制限、就寝時の構成を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2001） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2i（PDF p284）：水タンクの窒素加圧を失ったときのギャレーへの給水圧への影響を注記する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=284） |
| WA-08 | SAE 2006-01-2014 | Shuttle Potable Water Quality from STS-26 to STS-114 | 乗員はギャレーの復水装置から飲料水を取り、飲む前にヨウ素除去装置でヨウ素を除くと記し、軌道上の飲料水が水質要求を満たしたとする（抄録で確認）。（出典: https://saemobilus.sae.org/content/2006-01-2014） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | ギャレーの搭載時は給水をギャレーへ送り、冷水を45〜55°Fで供給すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-13 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.15節（PDF p363）：個人衛生用の水をギャレーの補助ポートまたは給水器から12 ftのホースで取り出し、上流の微生物チェック弁で逆汚染を防ぐと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=363） |
| WA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist | GALLEY, FAILED SUPPLY LINE, BYPASS（W-28、PDF p452）：ギャレー給水配管の故障時に、微生物フィルタを逆流させてタンクAから給水する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=452） |
| WA-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist | GIRAの取付け（5-53、PDF p163）：常温ラインへのMCVと冷水ラインへのACTEXの接続を示し、夜間・朝の構成（5-55）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=163） |
| WA-19 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p31：ギャレーの温水・冷水に気泡が混じり、オービタの給水系からの気体の混入ではなく、給水時のベンチュリ効果によると判断したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| WA-21 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p51：19個のCWCに給水を満たし、18個（計1,739.7 lb）をISSへ移送したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 飲料水チラーでの冷却は図12のIF-ARS-23をそのまま用いた（同じ物理IFのため新しい番号を作らない）。IF-ARS-23は図12では図示省略・上位IFなしであり、訓練マニュアル1.4節がARSによる給水の冷却を給水・廃水系のIFに挙げていることから、ECLSSの段にARSとの熱のIFを足す案を示した（ECL_NEW_IFS）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=19）

> **注記** ギャレー本体（オーブン、温水タンク、復水ステーション）は乗員装備（SCOM 2.12節）であり、ECLSSの機能ブロックには含めない。本書ではギャレーへの給水と、給水にかかわるヨウ素除去・移送の運用を扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465）

> **注記** 検証メモ：ギャレーの冷水の温度を、SCOM 2.12節は40〜60°F、1988年版マニュアル（SSD-H2O-REF-001のWA-10）は45〜55°Fとする。本書はSCOMの値を用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Contingency Crosstie・Galley Water Supply（PDF p400） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/400
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Galley Water Supply・Waste Water System（PDF p401） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.8節 Water Chiller（PDF p70） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=70
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.12節 Galley（PDF p465） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/465
5. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.15.2節 Personal Hygiene Station（PDF p363） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=363
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-551 Iodine Removal Implementation（PDF p2001） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2001
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-551（続き）（PDF p2002） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2002
8. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 5-53 Galley Iodine Removal Assembly (GIRA) Installation（PDF p163） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=163
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.1節 Supply Water Storage System（続き）（PDF p146） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=146
10. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Supply and Waste Water System（続き）（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51
11. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2i（続き）（PDF p284） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=284
12. NSTS-08291 STS-59 Space Shuttle Mission Report（1994年） Flight Crew Equipment（PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=31
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.0節・5.1節 Supply Water Storage System（PDF p143） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=143
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（続き）（PDF p395） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395
15. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 1.4節 Supply and Wastewater System Interfaces（PDF p19） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=19

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
