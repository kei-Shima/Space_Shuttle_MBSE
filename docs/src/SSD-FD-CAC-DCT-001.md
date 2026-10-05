# 送風ダクト・分配（DCT）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CAC-DCT-001 |
| 表題 | 送風ダクト・分配（DCT）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CAC-001 |
| 関連図 | SSD-SYS-ARC-001 図16 キャビン空気循環 機能構成 |

## 1. 目的

キャビンファン出口からキャビン熱交換器の入口までのダクトで空気をLiOHキャニスタと主流に分け、ミッドデッキ床の継手からエアロックへ空気を送る機能と、換気量・流量の値を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CAC-DCT-01 | キャビンファンを出た約1,400 lb/hrの空気のうち、ダクト内のオリフィスで約120 lb/hrずつを2個のLiOHキャニスタへ流す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| F-CAC-DCT-02 | 残りの主流は、キャビン熱交換器のすぐ上流でキャビン温度制御弁により熱交換器とバイパスに分けられる（訓練マニュアル3.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） |
| F-CAC-DCT-03 | 乗員室容積2,300 ft³に対し毎分330 ft³を循環させ、約7分で1回、1時間に約8.5回空気が入れ替わる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） |
| F-CAC-DCT-04 | 1979年の飛行運用マニュアルは、キャビンの公称の気流速度を25 ft/min、キャビン空気流量を約1,400 lb/hrとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58） |
| F-CAC-DCT-05 | 8 psiでの再突入でLiOHキャニスタを外すと、ファン1台の流量は820 lb/hr（装着時）から870 lb/hrに増える（A17-151B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| F-CAC-DCT-06 | エアロックにはキャビンファンの空気を回す吹出口がないため、乗員がダクトを張ってオービタの調整空気を送り、湿度を制御してCO2・O2・N2のよどみを防ぐ（訓練マニュアル6.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） |
| F-CAC-DCT-07 | ARSとエアロックのブースタファン・ダクトとの接続はミッドデッキ床の継手で行い、ブースタファン（2台、1台ずつ使用、三相115 V AC・180 W）は541〜767 lb/hrを流す（訓練マニュアル6.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） |
| F-CAC-DCT-08 | 外部エアロックのハッチを開けた後、乗員が床の継手からハッチ越しにダクトを張ってブースタファンにつなぎ、ハッチを閉じる前にダクトを外す（SCOM 2.11節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| F-CAC-DCT-09 | Spacehab・ドッキング飛行では、エアロック前方左のミッドデッキ床にARSホースのスクリーンがあり、フィルタ清掃の対象になる（IFM 4-4）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=100） |
| F-CAC-DCT-10 | IOAのCIL評価（1988年）は、還流・供給ダクト（ARS-3601X、NASA臨界度2/2）の外部漏れをダクト自体では起こりにくい故障とし、気流中の部品の故障と同じ影響として扱って指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=138） |
| F-CAC-DCT-11 | 故障処置手順は、ダクトの漏れや閉塞は、すべての吸込口と吹出口の気流を確かめれば見つけられる場合があるとする（MAL 6.1a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CO2-01 | CO2・CO除去：吸収器装着部 | 推進薬・流体 | 送信 | キャビンファン出口の空気を、2個のLiOHキャニスタとオリフィスを並列に置いたダクトに受け入れ、通過後の空気は同じダクトでキャビン温度制御弁とキャビン熱交換器へ向かう。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） | 上位: IF-ARS-01 |
| IF-CAC-06 | キャビンファン・逆止弁 | 推進薬・流体 | 受信 | 運転中のファンは逆止弁を通して約1,400 lb/hrの空気を出口ダクトへ送り、逆止弁は非運転ファンを通る逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | — |
| IF-CAC-13 | キャビン温湿度制御 | 推進薬・流体 | 送信 | LiOHキャニスタへの分流を除いた主流を、キャビン温度制御弁とキャビン熱交換器（バイパスを含む）へ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57） | 上位: IF-ARS-03 |
| IF-CAC-14 | エアロック支援系（ALS） | 推進薬・流体 | 送信 | ミッドデッキ床の継手から、乗員が張るダクトを通してエアロックのブースタファンへ空気を送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178）ダクトはハッチ越しに張り、ハッチを閉じる前に外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） | 上位: IF-ARS-13 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2節（PDF p57）と6.4節（p178）：主流がキャビン温度制御弁で熱交換器とバイパスに分かれると述べ、エアロックのブースタファン・ダクトとの接続をミッドデッキ床の継手とする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p370）と2.11節（p456）：ファンを出た約1,400 lb/hrのうちオリフィスで各約120 lb/hrをLiOHキャニスタへ流すと述べ、乗員が床の継手からハッチ越しにエアロックのブースタファンへダクトを張ると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151B（PDF p1938）：8 psiでの再突入でLiOHキャニスタを外すと、ファン1台の流量が820 lb/hrから870 lb/hrに増えると示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a（PDF p260）：ダクトの漏れ・閉塞を、すべての吸込口と吹出口の気流で確かめる注記を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260） |
| CA-08 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-3601X（C.13-36、PDF p138）：還流・供給ダクトの外部漏れをダクト自体では起こりにくい故障として扱い、指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=138） |
| CA-09 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 比較表（表1、p8）のオービタ欄で、換気ダクトによる換気を記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.4節（PDF p58）：キャビンの公称の気流速度（25 ft/min）とキャビン空気流量（約1,400 lb/hr）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58） |
| CA-14 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-4（PDF p100）：Spacehab・ドッキング飛行で使うARSホースのスクリーンの位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=100） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 熱交換器を通った空気とバイパス空気は熱交換器の下流の供給ダクトで合流し、CDR・PLTコンソールとステーションの吹出口から乗員室へ出る（SCOM PDF p374）。この給気はキャビン温湿度制御の出口（IF-ARS-10）として扱い、本機能には含めない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374）

> **注記** 図16では、LiOHキャニスタへの分流を図14のIF-CO2-01のまま示した（同じ物理IFのため新しい番号を作らない）。IF-CO2-01の上位IFはIF-ARS-01である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）

> **注記** エアロック用の床継手は、訓練マニュアル図3-1では熱交換器の下流の供給側（Airlock Duct）にある。ARSの段ではエアロックへの送気（IF-ARS-13）をキャビン空気循環に割り当てている（Rev. E）ため、本書でも送風ダクト・分配で扱った。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air（PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2節 Cabin Air（PDF p57） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=57
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Atmospheric Revitalization System・Cabin Air Flow（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
4. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.4節 ARS Systems Performance, Limitations, and Capabilities（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=58
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-151 Cabin Atmosphere Control（PDF p1938） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.4節 Airlock Booster Fans and Ductwork（PDF p178） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=178
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Airlock Air Circulation（PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
8. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 4-4 Filter Cleaning（Middeck Floor・WCS）（PDF p100） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=100
9. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-36 ARS-3601X Return and Supply Air Duct Sections（PDF p138） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=138
10. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1a CABIN FAN ∆P（PDF p260） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.1節 Cabin Fan・図3-1 Cabin air system（PDF p58） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Temperature Control（PDF p374） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/374

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
