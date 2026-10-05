# 吸収器装着部（ABS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CO2-ABS-001 |
| 表題 | 吸収器装着部（ABS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CO2-001 |
| 関連図 | SSD-SYS-ARC-001 図14 CO2・CO除去 機能構成 |

## 1. 目的

キャビンファン下流のダクトで2個のCO2吸収器（LiOHキャニスタ）に空気を配分する装着部の機能と、交換口・再突入時の取外しなどの運用上の扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CO2-ABS-01 | キャビンファン出口のダクトでは2個のLiOHキャニスタとオリフィスが並列に並び、オリフィスによって各キャニスタに約120 lb/hrの空気が流れる（訓練マニュアル3.2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） |
| F-CO2-ABS-02 | LiOHキャニスタはECLSSベイにあり、ミッドデッキ床の開口MD54Gから交換する（訓練マニュアル3.2.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） |
| F-CO2-ABS-03 | CO2吸収器の使用位置はMD54G、搭載時の収納位置はMD52Mである（SCOM 2.24節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/748） |
| F-CO2-ABS-04 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、CO2吸収器をMD54Gの付近に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| F-CO2-ABS-05 | 8 psiでの再突入では時間が許せばLiOHキャニスタを取り外し、キャビンファン1台の流量を820 lb/hr（装着時）から870 lb/hr（取外し時）に増やして、減圧下で重要な冷却の効率を上げる（A17-151B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| F-CO2-ABS-06 | A17-151Bの取外しは、乗員が打上げ・再突入用与圧服（LES）のヘルメットを着用しているか、PPCO2が管理下にあることを前提とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| F-CO2-ABS-07 | RCRS搭載機では打上げ用と再突入用にLiOHキャニスタを1個ずつ使い、もう一方のCO2吸収器スロットには臭気を除く活性炭キャニスタを入れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-CO2-ABS-08 | STS-135では交換口（ARS LiOHサービスドア）のラッチの1個が外れずキャニスタを交換できなくなり、軌道上の保守手順（IFM）でドアを開けた（IFA STS-135-V-05）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CO2-01 | キャビン空気循環 | 推進薬・流体 | 受信 | キャビンファン出口の空気を、2個のLiOHキャニスタとオリフィスを並列に置いたダクトに受け入れ、通過後の空気は同じダクトでキャビン温度制御弁とキャビン熱交換器へ向かう。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58） | 上位: IF-ARS-01 |
| IF-CO2-02 | 交換式キャニスタ（LiOH・活性炭） | 推進薬・流体 | 送信 | ダクト内のオリフィスで配分した各120 lb/hrの空気を、2つのスロットに装着したキャニスタに通す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35）STS-122では開口端のテープ覆いを外し忘れたキャニスタを装着したため、キャビンファン差圧がわずかに上がり、PPCO2が通常の速さで下がらなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52） | — |
| IF-CO2-03 | CO2・CO監視 | 推進薬・流体 | 送信 | PPCO2トランスデューサはLiOHキャニスタへ分かれる手前のダクトに接続され、キャビンファン出口の空気のCO2分圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.2節（PDF p59）：流量オリフィスが2個のLiOHキャニスタにそれぞれ約120 lb/hrを流し、キャニスタはECLSSベイにあってミッドデッキ床の開口MD54Gから交換すると示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Lithium Hydroxide Canisters（PDF p370）：ダクト内のオリフィスで約120 lb/hrずつを2個のキャニスタへ流すと述べ、2.24節（p748）でCO2吸収器の使用位置をMD54G、収納位置をMD52Mとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） |
| CR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-151B（PDF p1938）：8 psiでの再突入では時間が許せばLiOHキャニスタを取り外し、ファン1台の流量を820 lb/hrから870 lb/hrに増やすと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938） |
| CR-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | オリフィスで各約120 lb/hrを2個のLiOHキャニスタへ流すと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| CR-18 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p35）：ファンが空気をLiOHキャニスタへ送り、ダクト内のオリフィスが各キャニスタに120 lb/hrを流すと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35） |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-8 Lower Equipment Bay（PDF p94〜96、OV-103・104・105）：CO2吸収器の位置をMD54Gの付近に示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| CR-38 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p14：ARS LiOHサービスドアのラッチ1個が外れずキャニスタを交換できなくなり、軌道上の保守手順でドアを開けたと記す（IFA STS-135-V-05）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 図14では、キャニスタを通った空気が主流に戻る流れを独立のIFとして描いていない（図12のIF-ARS-01と同じ）。訓練マニュアルの図3-1では、2個のキャニスタとオリフィスが並列に並び、通過した空気は同じダクトでキャビン温度制御弁とキャビン熱交換器へ向かう。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.2節 LiOH Canisters（PDF p59） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=59
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.24節 Stowage（Floor Compartments）（PDF p748） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/748
3. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 3-8 Lower Equipment Bay (OV103)（PDF p94） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-151 Cabin Atmosphere Control（PDF p1938） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1938
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
6. JSC 37461 STS-135 Space Shuttle Mission Report（2011年） Flight Day 8〜9（IFA STS-135-V-05）（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=14
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-1 Cabin air system（PDF p58） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58
8. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=35
9. NSTS 37446 STS-122 Space Shuttle Mission Report（2008年） LiOH canister change-out（PDF p52） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-12 Cabin air system instrumentation（PDF p75） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
