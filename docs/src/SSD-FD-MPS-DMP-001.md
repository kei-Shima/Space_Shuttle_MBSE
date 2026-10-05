# 充填・ダンプ・不活性化（DMP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-DMP-001 |
| 表題 | 充填・ダンプ・不活性化（DMP）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図50 MPS 機能構成 |

## 1. 目的

打上げ前のT-0アンビリカルからの推進薬の充填とエンジンの熱調整、MECO後のLO2・LH2のダンプと真空不活性化、RTLS・TALのダンプ、再突入前のマニホールドの再加圧の順序を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-DMP-01 | LO2・LH2それぞれに直径8インチの外側・内側の充填排出弁が直列にあって打上げ前のETへの充填とMECO後のダンプに使われ、パネルR4のPROPELLANT FILL/DRAINスイッチ（OPEN・GND・CLOSE）でも操作できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/592） |
| F-MPS-DMP-02 | 打上げ前、LO2は地上支援設備のLO2 T-0アンビリカルから外側・内側の充填排出弁とLO2供給配管マニホールドを通り、供給配管アンビリカル切離し部からETのLO2タンクへ入り、充填排出弁はスイッチをGNDにして打上げ処理システム（LPS）が制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605） |
| F-MPS-DMP-03 | LH2は外側充填排出弁から入ってトッピング弁を通りエンジンを循環して熱調整した後ETへ送られてタンクのトッピングに使われ、LO2にはトッピング弁がなく熱調整に使ったLO2はエンジンのLO2ブリード弁と船外ブリード弁から船外へ捨てられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） |
| F-MPS-DMP-04 | MECOの10秒後にLH2バックアップダンプ弁を2分間開き、LH2マニホールドの圧力で供給ライン逃がし弁が作動しないようにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） |
| F-MPS-DMP-05 | ET分離後もSSMEに約1,700 lb、MPS供給ラインに約3,700 lbの推進薬が残って重心を約7インチ移動させ、残ったLH2は再突入時に大気の酸素と爆発性の混合気を作るおそれがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） |
| F-MPS-DMP-06 | MPSダンプ（LO2・LH2同時）は完全に自動でMECOの2分後に始まり、MECO+20秒以降はMPS PRPLT DUMP SEQUENCEスイッチで手動で始めることもでき、LH2マニホールド圧が60 psiを超えるとMECO+2分より前に自動で始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） |
| F-MPS-DMP-07 | LO2ダンプでは、GPCがLO2マニホールド再加圧弁2個を開き、各制御器に主酸化剤弁（MOV）を開かせ、LO2プリバルブを開いてヘリウムの圧力でマニホールドのLO2をSSMEのノズルから押し出し、このダンプは推進的で約9〜11 fpsの軌道速度変化を与えて90秒間続く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610） |
| F-MPS-DMP-08 | LH2ダンプはLO2ダンプと同時にGPCが内側・外側の充填排出弁、トッピング弁、LH2プリバルブを開いて行い、マニホールドのLH2はヘリウムの圧力を使わずに船外へ流れ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610） |
| F-MPS-DMP-09 | ダンプ終了の15分後にGPCがLO2の内側・外側充填排出弁とLH2バックアップダンプ弁を開き、LO2・LH2のマニホールドを2分間同時に真空不活性化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610） |
| F-MPS-DMP-10 | 真空不活性化の後もLO2・LH2の内側充填排出弁は弁間の圧力上昇を防ぐため開いたままとし、OMS 2燃焼後のMM 106への移行時にはLH2系の2回目の真空不活性化（約3分）を行って、OMSの燃焼の振動で昇華した残りのLH2を排出する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611） |
| F-MPS-DMP-11 | GH2のET加圧マニホールドは、MPSの電源断・隔離の後にパネルR4のH2 PRESS LINE VENTスイッチをOPENにして約1分間手動で真空不活性化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610） |
| F-MPS-DMP-12 | RTLSのダンプはMM 602で始まり、LO2はプリバルブとMOVから（動圧20 psf超では充填排出弁からも）ヘリウム加圧なしに自己沸騰で排出し、LH2はRTLSマニホールド加圧弁を通るヘリウムで2分間押し出しを補助する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/612） |
| F-MPS-DMP-13 | 再突入ではVREL 5,300 fpsでMANF PRESS LH2・LO2弁が開いてマニホールドを加圧し、地上でノズルにスロートプラグを付けるまで汚染物の侵入を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/612） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MPS-03 | 打上げ処理システム（KSC） | 推進薬・流体 | 受信 | 打上げ前、地上支援設備のLO2・LH2はそれぞれのT-0アンビリカルから外側・内側の充填排出弁を通ってオービタの供給配管マニホールドへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605）充填中はパネルR4のPROPELLANT FILL/DRAINスイッチをGNDにして、打上げ処理システムが充填排出弁の位置を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605） | 上位: IF-ORB-29 |
| IF-MPS-14 | ヘリウム・空圧 | 推進薬・流体 | 受信 | 空圧ヘリウム調圧器下流のマニホールド加圧弁が、通常のLO2ダンプと再突入時のLH2・LO2マニホールドの再加圧のためにヘリウムを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600）MECO+20秒にGPCが空圧ヘリウムとエンジンヘリウムの系統を相互接続し、10個のタンクすべてを共通のマニホールドにつないでダンプに十分なヘリウムを確保する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） | — |
| IF-MPS-15 | 推進薬供給 | 推進薬・流体 | 双方向 | LO2・LH2の各マニホールドには、内側と外側の充填排出弁を直列に持つ8インチの充填排出ラインがつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/591）MECO後のダンプでは、マニホールドのLH2が内側・外側の充填排出弁とトッピング弁から2分間船外へ流れ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610） | — |
| IF-MPS-19 | MPS運用管理 | データ・指令 | 受信 | 乗員はMPS PRPLT DUMP SEQUENCEスイッチのSTARTでMECO+20秒以降にダンプを手動で始め、STOPでET分離の遅れの間の自動ダンプを止める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609）自動の真空不活性化が十分でないときは、乗員がLO2・LH2の供給系統を手動で真空不活性化する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031） | — |
| IF-MPS-21 | 宇宙空間（船外） | 推進薬・流体 | 送信 | LH2 加圧系には MECO 後の不活性化で LH2 加圧マニホールドをベントする管があり、H2 PRESS LINE VENT 弁を約1分開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/594）MECO 後、3基の主酸化剤弁を開いて残留 LO2 をエンジンノズルから捨て、LH2 充填排出弁2個と燃料ブリード弁を開いて残留 LH2 を左翼の上へ排出する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「Operations」（PDF p604〜612）：打上げ前の充填、MECO後のダンプと真空不活性化、RTLS・TALのダンプ、再突入の再加圧の順序を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-13・A5-201〜A5-210（PDF p1031〜1121）：MPSダンプと真空不活性化の定義と、ダンプの抑止、マニホールドの過圧、手動ダンプ、ダンプの故障、手動真空不活性化、再突入のダンプの故障の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p101〜102）：通常・AOA・ATOとRTLSのダンプの経路と時間の制約、真空への暴露による不活性化と再突入前のヘリウム加圧を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=102） |
| MP-04 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | MPS-334X（PDF p285）：LH2供給のRTLS内側ダンプ弁について、RI/NASAが臨界度をIOAの推奨どおり1/1に改めたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=285） |
| MP-08 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 8-2 MPS VACUUM INERT（PDF p232）：軌道上でLH2外側充填排出弁を開閉してLH2系を真空不活性化する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=232） |
| MP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：残留推進薬のダンプと系統の不活性化が計画どおり行われ、充填時の水素の漏れはMPSの8インチLH2 T-0切離し部からだったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-10 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.1.1節（PDF p7）：供給ラインからのダンプがMECOの2分後に始まって3分2秒続き、その後に充填排出弁を開いて真空不活性化したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7） |
| MP-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p35：LO2・LH2の充填の各パラメータと充填排出弁がすべて正常で、LH2の予加圧の回数がLCCの基準内だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=35） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SODBは、通常・AOA・ATOのダンプでLO2はエンジンから、LH2は充填排出・再循環/補給系から捨てることとし、LH2をエンジンからダンプすると高圧酸化剤ターボポンプが過回転するとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=101）

> **注記** STS-4では、オービタの供給ラインからの推進薬のダンプがMECOの2分後に始まって3分2秒続き、ダンプ後数分で充填排出弁を開いて真空不活性化した（初期の飛行の実績）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7）

> **注記** 運用飛行規則A5-13は、MPSダンプ（MM 104の加圧LO2・非加圧LH2のダンプ）、GH2の手動不活性化、1回目・2回目の自動真空不活性化、手動真空不活性化、再突入のMPSダンプ（MM 303、RTLSはMM 602）を区別して定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p592） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/592
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p605） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605
3. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p593） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593
4. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p609） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/609
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p610） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610
6. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p611） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p612） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/612
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p600） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600
9. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p591） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/591
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-13 MPS DUMPS AND VACUUM INERTING DEFINITIONS（PDF p1031） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1031
11. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.1 Main Propulsion Subsystem（推進薬ダンプ）（PDF p101） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=101
12. STS-4 Orbiter Mission Report 2.1.1節 Main Propulsion System（PDF p7） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=7
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
14. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p594） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/594
15. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p585） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/585

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-MPS-21 を足した（GAP-09 の解消）（Rev. AU） |
