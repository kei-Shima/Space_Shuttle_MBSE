# 水噴霧ボイラ（WSB）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-WSB-001 |
| 表題 | 水噴霧ボイラ（WSB）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

APU・油圧系ごとの3台の水噴霧ボイラが、APUの潤滑油と作動油の管に水を噴霧して蒸発冷却する機能と、GN2による給水、冗長な制御器A・Bによる自動制御、作動油のバイパス弁、ヒータと蒸気ベント、凍結への対策、WSBの喪失判定と処置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-WSB-01 | 水噴霧ボイラ系はAPU・油圧系ごとに1台の同一で独立した3台のボイラから成り、各ボイラは潤滑油系と油圧系の管に水を噴霧して蒸発させることで潤滑油と作動油を冷やし、蒸気は垂直尾翼の右舷側にあるボイラごとの排気ダクトから出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| F-APU-WSB-02 | 各ボイラは45×31×19インチで制御器とベントノズルを含めて181 lbあり、後部胴体のXo 1340〜1400に取り付けられ、水の容量は142 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| F-APU-WSB-03 | 作動油はボイラを3回、潤滑油は2回通り、作動油の管には3本、潤滑油の管には2本の噴霧バーで水を吹き付け、両者の給水弁は別々に制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| F-APU-WSB-04 | 冗長な電気制御器が完全に自動で運転し、潤滑油を約250°F、作動油を210〜220°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| F-APU-WSB-05 | 2台の制御器はパネルR2のBOILER CNTLR/HTRスイッチで選んで給電し（OFFで両方の電源を断つ）、水量はA・Bのどちらかの制御器に給電していれば得られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/97） |
| F-APU-WSB-06 | 予め入れた水が蒸発した後で能動冷却が始まる前に残った水が凍る凍結への対策として、ベローズ式の貯水タンクに水とPGMEの混合液（PGME 47%・水53%）を入れ、STS-114以後はボイラとタンクの両方に搭載している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| F-APU-WSB-07 | 各ボイラのGN2は直径6インチの球形容器に70°Fで2,400 psi・0.77 lb入り、R2のBOILER N2 SUPPLYスイッチで操作する遮断弁と24.5〜26 psigに調圧する調圧器を経て水タンクを加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96） |
| F-APU-WSB-08 | 打上げ時は各ボイラに最大4.86 lbのPGME/水の混合液を入れておくプールモードで、上昇中に水が沸騰し尽くすと打上げの約13分後に噴霧モードに移り、作動油は上昇中は通常は噴霧冷却を要しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/98） |
| F-APU-WSB-09 | 運転中の制御器は作動油と潤滑油の出口温度をそれぞれ208°F・250°Fの設定点と比べて給水弁を開き、水は最大で作動油部に毎分10 lb、潤滑油部に毎分5 lb流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） |
| F-APU-WSB-10 | 作動油の流量の一時的な急増（最大63 gpm）でボイラが流量を制限しないよう、ボイラ前後の差圧が49 psiを超えるとばね式のポペット弁が開いて逃がす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） |
| F-APU-WSB-11 | ボイラ・水タンク・蒸気ベントには軌道上の凍結を防ぐ電気ヒータがあり、水タンクとボイラのヒータは50°Fで入り55°Fで切れ、蒸気ベントのヒータはAPU起動の約2時間前から使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） |
| F-APU-WSB-12 | WSBは、N2・H2Oの漏れが消耗品のレッドラインを割る場合、制御器A・Bのどちらでも潤滑油戻り温度325°F未満・リザーバ温度230°F未満を保てない場合、2つの蒸気ベントヒータをともに失った場合などに喪失とし、WSBの喪失はやがて対応するAPU・油圧系の喪失につながる（A10-101）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1581） |
| F-APU-WSB-13 | WSBのN2供給弁は、APUの運転の準備と運転中を除いて閉じておく（A10-121）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1583） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-APU-05 | タービン・ギアボックス | 熱 | 受信 | 各APUの潤滑油を、対応する水噴霧ボイラの熱交換器に通して冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）ボイラは潤滑油を約250°Fに保ち、潤滑油はボイラを2回通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） | — |
| IF-APU-07 | 主油圧ポンプ・供給 | 熱 | 受信 | 主油圧ポンプが送る作動油を、対応する水噴霧ボイラの油圧用熱交換器に通して冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）作動油は温度が210°Fになるとボイラへ導かれ、190°Fに下がると温度制御のバイパス弁でボイラを迂回する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） | — |
| IF-APU-14 | DPS：飛行ソフトウェア・MMU | データ・指令 | 送信 | 各ボイラのGN2容器と水タンクの冗長な圧力・温度センサの値を制御器を通してSM GPCへ送り、GPCが水タンクの量を計算して専用のMEDS表示へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/97）ボイラの水量・窒素タンク圧力・調圧器圧力・窒素タンク温度は、軌道上ではSM APU/HYD表示（DISP 86）の右側に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） | 上位: IF-ORB-23 |
| IF-APU-21 | APU/HYD運用管理 | データ・指令 | 双方向 | パネルR2のBOILER N2 SUPPLY 1・2・3スイッチで各ボイラの窒素遮断弁を開閉し、遮断弁は2つの独立したソレノイドで主・副どちらの制御器からも操作できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96）制御器が有効で、窒素遮断弁が開、蒸気ベントのノズル温度が130°F超、作動油のバイパス弁が正しい位置のとき、R2のAPU/HYD READY TO START表示へ準備完了の信号を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/98） | — |
| IF-APU-23 | 宇宙空間（船外） | 推進薬・流体 | 送信 | WSB の蒸気は垂直尾翼の右舷側にあるボイラごとの排気ダクトから出て、作動油はボイラを3回、潤滑油は2回通り、ボイラは潤滑油を約250°F、作動油を210〜220°F に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95）給水弁が開くと作動油部に最大毎分10ポンド、潤滑油部に最大毎分5ポンドの水が流れ、蒸気は機外の蒸気ベントから出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Water Spray Boilers（PDF p95〜99）：3台のボイラの構成、GN2・給水系、制御器A・Bによる温度制御、作動油のバイパス弁、ヒータを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-101（PDF p1581）とA10-121・122（p1583〜1584）：WSBの喪失の定義、N2供給弁の構成、WSBを失ったときの処置（2台の喪失で次のPLS）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1583） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.2b（PDF p37）：APU停止中の公称構成として、BLR CNTLR/HTR・BLR PWR・BLR N2 SPLYのスイッチ位置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=37） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.4節（PDF p84・p86）：WSBのGN2タンク圧力、調圧器の出口圧力（19.0〜33.5 psig）、APU起動時のベント温度、水温の限界を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=86） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.17節（PDF p79）：油圧・WSBのNASAの基準（FMEA 364件・CIL 111件）とIOAの相違は、準拠した基準文書の違いによると記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=79） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7-15（PDF p205）：FCSチェックアウトの起動前にBLR N2 SPLYをON、ボイラの制御器・ヒータをBにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=205） |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 飛行試験問題報告4（PDF p145）：WSB 3の凍結による潤滑油の過熱の原因（予め入れた水が多すぎた）と、STS-3での予め入れる水の削減を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=145） |
| AP-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | PDF p6：MECOの後にWSB 3が制御器A・BのいずれでもAPU 3の潤滑油を冷却せず、APU 3を停止した（解析ではWSBの凍結）と記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p10：DTO 850で水・PGMEの混合液によるWSBのホットリスタートと、飛行開始後3.5時間での潤滑油の冷却を実証したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | HYD/WSB System（PDF p45）：上昇・突入のWSBの噴霧開始温度・定常温度とPGME/水の使用量を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| AP-15 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p7：上昇後にWSB 2が冷却せず、乗員が制御器を2Aから切り替えたが潤滑油戻り温度が323°Fに達してAPU 2を停止したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=7） |
| AP-16 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.2.2節（PDF p16）：WSB 3に0.80インチの蒸気ベントノズルを入れ、3台とも5 lbの水を予め入れた結果と、WSB 3の凍結と1分後の解凍を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=16） |

## 5. 注記（出典間の相違・構成変更）

> **注記** STS-2ではボイラに予め入れた水（5 lb）が上昇中に急に沸騰して残りの水が凍り、WSB 3が17.5分凍結してAPU 3を早く停止したため、STS-3では予め入れる水をボイラ1・2・3でそれぞれ4・3・2 lbに減らした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=145）

> **注記** STS-54ではMECOの後にWSB 3が制御器A・BのいずれでもAPU 3の潤滑油を冷却せず、軸受温度が335°Fに達してAPU 3を停止し、解析ではWSBの凍結と判断された。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6）

> **注記** STS-114ではDTO 850として水・PGMEの混合液でのWSBのホットリスタートを行い、飛行開始後3.5時間で潤滑油を冷却できることを示し、緊急時の早期帰還の能力を確かめた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=10）

> **注記** WSBの準備完了の信号はAPUの始動の参考情報で、インタロックではない（STS-2の飛行試験問題報告28）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=168）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p95） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95
2. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p97） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/97
3. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p96） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/96
4. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p98） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/98
5. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p99） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/99
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-101 WSB LOSS DEFINITIONS（PDF p1581） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1581
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-121 WSB CONFIGURATION（PDF p1583） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1583
8. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p84） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84
9. STS-2 Orbiter Mission Report Flight Test Problem Report No. 4（PDF p145） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=145
10. NASA-CR-194116 STS-54 Mission Report（1993） Mission Summary（PDF p6） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6
11. STS-114 Mission Report Mission Summary（DTO 850）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=10
12. STS-2 Orbiter Mission Report Flight Test Problem Report No. 28（PDF p168） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=168
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-APU-23 を足した（GAP-09 の解消）（Rev. AU） |
