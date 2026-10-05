# 温度制御弁・給気混合（TCV）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-THC-TCV-001 |
| 表題 | 温度制御弁・給気混合（TCV）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-THC-001 |
| 関連図 | SSD-SYS-ARC-001 図30 キャビン温湿度制御 機能構成 |

## 1. 目的

キャビン温度制御弁で熱交換器を迂回する空気の割合を変え、熱交換器を通った冷たい空気と給気ダクトで混ぜて乗員室の温度を制御する機能と、2台のコントローラ・手動のピン止め・コントローラ切替の手順を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-THC-TCV-01 | キャビン温度制御弁はキャビン熱交換器を迂回する空気の流量を変える可変位置弁で、迂回した暖かい空気と熱交換器を通った冷たい空気の比率でキャビン温度が決まる（訓練マニュアル3.2.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） |
| F-ARS-THC-TCV-02 | CABIN TEMPロータリスイッチの位置に応じて、有効なコントローラが空気流の0〜70%を熱交換器の外へ迂回させ、全COOLは約65°F、全WARMは約80°Fに当たる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| F-ARS-THC-TCV-03 | コントローラはモータ駆動のアクチュエータで、弁と2台のコントローラはパネルMD44Fの下のECLSSベイにあり、単一のバイパス弁にアクチュエータアームでつながる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| F-ARS-THC-TCV-04 | 自動では弁アームを弁アームリンクに、リンクを主または副のコントローラのアクチュエータにピン止めしてからコントローラに給電し、全COOLから全HOTまでの移動は最大4分である（訓練マニュアル3.2.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| F-ARS-THC-TCV-05 | 手動では弁アームを4つの固定穴の一つにピン止めし、FULL COOLは熱交換器への流量が最大、2/3 COOLと1/3 COOLは最大冷却能力の約2/3と約1/3、FULL HEATは流量が最小となる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） |
| F-ARS-THC-TCV-06 | 1979年の飛行運用マニュアルは、各コントローラが給気ダクトと還流ダクトの温度を検知して乗員の選んだ65〜80°Fの温度に制御し、バイパス弁は全閉にならない仕切り板のようなもので空気流の0〜70%を迂回させるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| F-ARS-THC-TCV-07 | パネルL1のCABIN TEMPロータリスイッチ（COOL–WARM）で65〜80°Fの間の温度を選び、CABIN TEMP CNTRLスイッチ（1–OFF–2）で2台のコントローラの一方を選ぶ（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90） |
| F-ARS-THC-TCV-08 | コントローラの切替では、CAB TEMP選択器をWARM（COOL）に回してリンクが副（主）アクチュエータにつながる位置に来るまで平均約5分待ち、CNTLRをOFFにしてMD44Fでリンクを付け替え、CNTLRを2（1）にしてから温度を選び直す（Orbit Opsチェックリスト5-42）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=152） |
| F-ARS-THC-TCV-09 | 熱交換器を通った空気とバイパス空気は熱交換器下流の給気ダクトで合流し、CDR・PLTのコンソールと各所のダクト吹出口から乗員室へ吹き出す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| F-ARS-THC-TCV-10 | 1979年の飛行運用マニュアルは、合流した空気をコンソール、ミッドデッキ、MS・PSのステーションの給気口から乗員室へ出すとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| F-ARS-THC-TCV-11 | STS-2では、STS-1で環境の影響を受けたセンサが高温を示したため自動のキャビン温度コントローラを使わず、作業中は全COOL、就寝中は全WARMにバイパス弁をピン止めする計画とし、乗員は初日の就寝中も全COOLのままとした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CAC-13 | キャビン空気循環：送風ダクト・分配 | 推進薬・流体 | 受信 | LiOHキャニスタへの分流を除いた主流を、キャビン温度制御弁とキャビン熱交換器（バイパスを含む）へ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） | 上位: IF-ARS-03 |
| IF-THC-01 | キャビン熱交換器・凝縮 | 推進薬・流体 | 送信 | キャビン温度制御弁が迂回させなかった空気を、キャビン熱交換器へ流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57）FULL COOLでは熱交換器への流量が最大、FULL HEATでは最小となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | — |
| IF-THC-02 | キャビン熱交換器・凝縮 | 推進薬・流体 | 受信 | 熱交換器で冷やした空気を、下流の給気ダクトでバイパス空気と合流させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） | — |
| IF-THC-07 | 乗員室（制御対象） | 推進薬・流体 | 送信 | 給気ダクトで合流した空気を、CDR・PLTのコンソールと各所のダクト吹出口から乗員室へ吹き出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374）1979年の飛行運用マニュアルは、吹出口をコンソール、ミッドデッキ、MS・PSのステーションの給気口とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） | 上位: IF-ARS-10 |
| IF-THC-10 | 温度・分離器監視 | データ・指令 | 受信 | 有効なコントローラは、給気ダクトと還流ダクトの温度を検知して、乗員が選んだ温度に制御する。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35）SCOMの系統図は、キャビン温度センサとダクト温度センサをキャビン温度コントローラにつないで示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | — |
| IF-THC-14 | 温湿度運用管理 | データ・指令 | 受信 | パネルL1のCABIN TEMP CNTLRスイッチで有効なコントローラを選び、CABIN TEMPロータリスイッチで温度を選ぶ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90）コントローラで弁を制御できない場合は、MD44Fで弁アームを4つの固定穴の一つにピン止めする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375） | — |
| IF-THC-16 | 電力系（EPS） | 電力（28 VDC） | 受信 | キャビン温度コントローラ1にはAC2 φA（CABIN T CNTLR 1）、コントローラ2にはAC1 φA（CABIN CNTLR 2）の交流電力を、パネルL4の遮断器からパネルL1のスイッチを通して供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） | 上位: IF-ARS-40 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TH-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.3節（PDF p59・p63）：可変位置の温度制御弁と2台のコントローラ（MD44Fの下）、手動の4つの固定穴、自動時の弁アーム・リンク・アクチュエータのピン止め、全COOLから全HOTまで最大4分の移動を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63） |
| TH-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Cabin Air Temperature Control（PDF p374〜375）：単一のバイパス弁と2台のコントローラ、空気流の0〜70%の迂回（全COOL約65°F、全WARM約80°F）、コントローラ2への付け替え、上昇・再突入の全COOL、手動の4位置と給気ダクトでの合流を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374） |
| TH-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | バイパスダクトで熱交換器を迂回した空気を混ぜ、キャビン温度を65〜80°Fに制御すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| TH-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151A・A17-152A（PDF p1938・p1940）：上昇・再突入ではバイパス弁を自動でFULL COOLへ駆動すると定め、A17-152B2（p1941）で寒すぎる場合の最初の処置を弁の手動ピン止めとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| TH-06 | NASA CR-1981 | Space Shuttle EC/LSS（Hamilton Standard、1972年） | 選定系統（表1、p5）で、温度制御を凝縮熱交換器を迂回する空気流で行う構成を採用した。（出典: https://ntrs.nasa.gov/api/citations/19720017476/downloads/19720017476.pdf） |
| TH-08 | JSC-16730 | ECLSS Analysis of STS-1: 9-psia EVA Configuration | キャビン熱交換器の空気バイパス弁をゼロ流量に設定することの効果を再検討するよう提言する（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19800020542） |
| TH-09 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更としてキャビンヒータの廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| TH-11 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | キャビン温度制御弁が熱交換器を迂回する空気量を調整し、自動では全COOLから全HOTまで最大4分で動くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| TH-14 | NSTS-23370 | STS-27 National Space Transportation System Mission Report（1989年） | キャビン温度コントローラ2が応答しなかったことを記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-27%20National%20Space%20Transportation%20System%20Mission%20Report.pdf） |
| TH-16 | NASA-CR-195739 | STS-57 Space Shuttle Mission Report（1993年） | キャビン温度制御弁がどのアクチュエータにもピン止めされずに全HOT側へ動き、キャビンが85.6°Fになったことを記録する。（出典: https://ntrs.nasa.gov/citations/19940023717） |
| TH-17 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | 二次側のキャビン温度コントローラへの切替点検を行ったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| TH-18 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1（p8）のオービタ欄で、熱交換器の空気バイパス比で温度を制御すると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| TH-20 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35・p37）：各コントローラが給気・還流ダクトの温度を検知して65〜80°Fに制御し、バイパス弁は空気流の0〜70%を迂回させて全行程は最大4分とし、合流した空気をコンソール・ミッドデッキ・MS・PSのステーションの給気口から出すと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| TH-23 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 5-42 CABIN TEMP CONTROLLER RECONFIG（PDF p152）：CAB TEMP選択器を回してリンクが副（主）アクチュエータにつながるまで約5分待ち、OFFにしてMD44Fでリンクを付け替えるコントローラの切替手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=152） |
| TH-25 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p50：STS-1でセンサの高温指示があったため自動のキャビン温度コントローラを使わず、バイパス弁を作業中は全COOL、就寝中は全WARMにピン止めする計画としたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：訓練マニュアル3.2節（PDF p57）は、冷えた調整空気と暖かいバイパス空気が合流して還流ダクト（return air ducts）を通って乗員室へ戻ると記すが、SCOM（PDF p374）と1979年の飛行運用マニュアルは給気ダクトと吹出口とする。本書はSCOMの記述を用いた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57）

> **注記** 給気ダクトでの合流と乗員室への吹出しは、ARS段ではキャビン温湿度制御の出口（IF-ARS-10）に当たる。資料の記述が短いため独立の下位機能とせず、本機能に含めた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374）

> **注記** コントローラの電源は、コントローラ1がAC2 φA（CABIN T CNTLR 1）、コントローラ2がAC1 φA（CABIN CNTLR 2）の遮断器による（IF-THC-16）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.2〜3.2.3節 LiOH Canisters・Cabin Temperature Control Valve（PDF p59） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air Temperature Control（PDF p374） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.3〜3.2.5節 Cabin Temperature Control Valve・Cabin Heat Exchanger・Humidity Separator（PDF p63） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=63
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Temperature Monitoring〜Cabin Air Humidity Control（PDF p375） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/375
5. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p90） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=90
7. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 5-42 Cabin Temp Controller Reconfig（PDF p152） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=152
8. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（続き）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
9. JSC-17959 STS-2 Orbiter Mission Report（1982年） ECLSS（ARS configuration）（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=50
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2節 Cabin Air（PDF p57） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air（系統図）（PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
