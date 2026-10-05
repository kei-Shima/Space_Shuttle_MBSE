# ベイ熱交換器（HX）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-AVB-HX-001 |
| 表題 | ベイ熱交換器（HX）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-AVB-001 |
| 関連図 | SSD-SYS-ARC-001 図32 アビオニクスベイ空冷 機能構成 |

## 1. 目的

各ベイのファン出口空気をミッドデッキ床下のベイ熱交換器で水冷却ループにより冷やしてベイへ戻す機能と、水冷却ループのベイの経路、供給空気温度の設計値、冷却能力が下がる要因を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-AVB-HX-01 | ファンは機器の熱を受け取った空気をベイ熱交換器へ吹き出し、ベイの熱はそこでARSの水冷却ループへ移される（訓練マニュアル3.2.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| F-ARS-AVB-HX-02 | ベイファンの出口空気は、ミッドデッキ乗員室の床下にあるそのベイの熱交換器で水冷却ループにより冷やされ、ベイへ戻る（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-HX-03 | 各水冷却ループはポンプの下流で3つの並列経路に分かれ、ベイ1とベイ2の空気/水熱交換器とコールドプレート、および乗員室のMDMコールドプレート・Av Bay 3Aの空気/水熱交換器とコールドプレート・Av Bay 3Bのコールドプレートを通る。ベイ2の経路は乗員室の窓の熱調整も行う（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| F-ARS-AVB-HX-04 | ベイ1の経路では、水はまずベイ1の空気/水熱交換器を通ってベイの空気から熱を受け、次に25 ft²のコールドプレートを通る。ベイ2の経路は熱交換器と30 ft²のコールドプレートを冷やす（訓練マニュアル3.3.2・3.3.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| F-ARS-AVB-HX-05 | ベイ3の経路は一部がMDMのコールドプレートを冷やし（大部分はバイパスする）、その後Av Bay 3Aと3Bに分かれ、3Aは熱交換器と32 ft²のコールドプレートを、水冷の機器だけを収める別区画の3Bは5 ft²のコールドプレートを冷やす（訓練マニュアル3.3.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| F-ARS-AVB-HX-06 | ベイへの供給空気の温度は14.7 psiで最高95°Fが設計仕様で、ベイ熱交換器を出る空気は水冷却ループのポンプ出口温度より約10°F高いため、ポンプ出口温度を85°F未満に保てないとベイの機器が過熱するおそれがある（A18-101C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| F-ARS-AVB-HX-07 | 2つの水冷却ループを同時に運転するとインターチェンジャの能力を超えて水温が上がり、インターチェンジャ出口が63°Fに近づくとAv Bayの経路の冷却能力も失われる（訓練マニュアル3.3.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69） |
| F-ARS-AVB-HX-08 | 水冷却ループが故障するとキャビン熱交換器出口温度とベイの空気出口温度が目に見えて上がり、新しいループへの切替後はそれらが安定または低下することを確かめる（訓練マニュアル付録B.4）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204） |
| F-ARS-AVB-HX-09 | ベイを通る水冷却ループの経路の流れの制限でも、そのベイの温度が上がることがある（訓練マニュアル付録B.6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207） |
| F-ARS-AVB-HX-10 | 故障処置手順は、複数のベイで温度が高く上がり続けるかを確かめ、水冷却ループを切り替えて温度が下がる場合を水冷却ループの劣化とする（MAL 6.1b）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-AVB-05 | ベイファン・逆止弁 | 推進薬・流体 | 受信 | ファンの出口は空気をそのベイの熱交換器へ送り、非運転ファンの出口の逆止弁が逆流を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-AVB-09 | ベイ内循環・機器空冷 | 推進薬・流体 | 送信 | ベイ熱交換器で水冷却ループにより冷やした空気を、ベイへ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-AVB-10 | 水冷却ループ：アビオニクス冷却経路 | 熱 | 送信 | 各ベイの空気/水熱交換器で、水冷却ループがファン出口空気から熱を受け取る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68）熱交換器を出る空気は、水冷却ループのポンプ出口温度より約10°F高い（A18-101C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） | 上位: IF-ARS-07 |
| IF-AVB-11 | 温度・差圧監視 | 推進薬・流体 | 送信 | ミッドデッキ床下のファンプレナムで、ベイの空気/水熱交換器の近くにある温度センサがベイの空気温度を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.3.2〜3.3.4節（PDF p68）：水冷却ループのベイ1・2・3の経路がベイの空気/水熱交換器とコールドプレートを通るとし、3.3.6節（p69）でインターチェンジャ出口が63°Fに近づくとAv Bayの経路の冷却能力も失われるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376・p378）：ファン出口空気をミッドデッキ床下のベイ熱交換器で水冷却ループが冷やしてベイへ戻すとし、水冷却ループがベイ1・2・3Aの空気/水熱交換器を並列の経路で通ると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378） |
| AV-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | ファン出口の空気を水冷却ループで冷やす熱交換器へ送り、ベイへ戻すと記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-101C（PDF p2059）：ベイへの供給空気は最高95°F（14.7 psi）で、熱交換器を出る空気はポンプ出口温度より約10°F高いとし、A18-205（p2070）でGPCを1台追加するとベイ出口温度が約10〜15°F上がるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059） |
| AV-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1b AV BAY TEMP（PDF p261）：複数のベイの温度上昇を確かめ、水冷却ループを切り替えて温度が下がる場合を水冷却ループの劣化とする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261） |
| AV-06 | JSC-16720 | STS-1 ECLSS Consumables and Thermal Analysis | アビオニクスベイ1〜3の空気入口・出口とコールドプレートの温度の解析値を仕様上限（空気出口130°F）と比べる。（出典: https://ntrs.nasa.gov/api/citations/19800020909/downloads/19800020909.pdf） |
| AV-10 | NASA-CR-134164（SP02T73） | Space Shuttle Atmospheric Revitalization Subsystem/Active Thermal Control Subsystem Computer Program（Users Manual）（Hamilton Standard、1973年） | アビオニクスベイを3並列でモデル化し（2.2節）、ベイのコールドプレートを表す発熱ノードを水/空気熱交換器の上流に加えたと記す。（出典: https://ntrs.nasa.gov/citations/19740006419） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：各ベイに空気を冷やす熱交換器があるとし、水冷却ループのベイ1の経路がハッチを、ベイ2の経路がキャビンの窓を熱調整すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 各ベイの一部の電子機器はコールドプレートに取り付けられて水冷却ループで直接冷やされる（SCOM PDF p377）。コールドプレートは水冷却ループ（IF-ARS-20・21）で扱い、本機能には含めない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377）

> **注記** 検証メモ：1979年の飛行運用マニュアル（PDF p37）は、水冷却ループのベイ1の経路がハッチを、ベイ2の経路がキャビンの窓を熱調整するとする。訓練マニュアル（3.3.3節）とSCOM（PDF p378）はベイ2の経路が窓の熱調整を行うとし、ハッチには触れない。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.7節 Avionics Bay Fans（PDF p65） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Avionics Bay Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.2〜3.3.4節 Av Bay 1・2・3 Leg（PDF p68） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=68
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-101 ARS Water Loop（C項）（PDF p2059） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2059
6. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.3.6節 Interchanger Mismatch（PDF p69） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=69
7. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.4 H2O Loop Press Low（PDF p204） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=204
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（続き）（PDF p207） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1b AV BAY TEMP（PDF p261） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=261
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（PDF p206） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=206
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Coolant Loop System（PDF p377） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377
12. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（続き）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
