# C&T運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-OPS-001 |
| 表題 | C&T運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

GCILによるパネル/コマンドの切替と地上指令による通信系の構成管理、アップリンクの保護、運用飛行規則（第11章）の使用規則・故障時の規則とGo/No-Go、故障処置手順とIFMによるC&Tの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-OPS-01 | GCIL（GCILC）はS帯PM・S帯FM・Ku帯・ペイロード通信・CCTVの選択した機能を制御し、各系のCONTROLスイッチがPANELなら乗員のパネルスイッチ、COMMANDならGCIL経由の地上指令で制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159） |
| F-CT-OPS-02 | 地上からの指令はすべてS帯のアップリンクまたはKu帯のフォワードリンクでNSPとFF MDMを経てGPCへ送られ、GCILで制御する通信系を組み替える指令はGPCからPF MDMを経てGCILへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160） |
| F-CT-OPS-03 | S帯PM系は系統2のLRUを飛行全体を通じてコマンドで選び（機上のスイッチは系統1の構成）、地上が運用の主体となってTDRS・GSTDN・SGLSのモードを切り替え、アンテナはGPCの自動選択で管理する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1680） |
| F-CT-OPS-04 | 上昇中に飛行を打ち切る通信の故障はなく、打上げではS帯PMの音声を主とし、UHFを送受信モードでS帯PMのバックアップに構成する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1671） |
| F-CT-OPS-05 | SMが使えるときは、サイトインビューの旗がなければSMソフトウェアがアップリンクの指令を自動で遮断し、SMも暗号化も使えないときは乗員がパネルC3のUPLINKスイッチで遮断する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1685） |
| F-CT-OPS-06 | Ku帯系は、ペイロードがペイロードベイドアの包絡域を超えない限り21度の「beta plus mask」モードで運用し、ベイのどの部分も10 V/m（ICDの限度）を超える放射を受けないようにする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1683） |
| F-CT-OPS-07 | Ku帯のベータマスクまたはオービタ構造の遮蔽で守られる区域でのEVAでは、Ku帯をAOS中は指向の制約なしに運用し、LOS中は待機にして、EVA乗員の被曝をEMUの仕様の20 V/m未満に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1674） |
| F-CT-OPS-08 | 記録器は地上から管理して各LOSの間に1台が記録しているようにし、運用データと音声（192 kbps）は活動の多い期間か乗員の音声記録が要るときに記録し、それ以外はデータ（128 kbps）だけを記録する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1677） |
| F-CT-OPS-09 | 通信のGo/No-Go基準（A11-1001）は、2-way音声（A/G 1・2・UHFの3系統）、コマンド、テレメトリ、NSP・トランスポンダのアップリンク・ダウンリンク、ACCU、PCMMUなどの喪失ごとにMDFと次のPLSの判断を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1707） |
| F-CT-OPS-10 | PCMMUは実時間・記録のテレメトリと乗員表示・クラス3アラートのための機上データを供給し、故障の回避策がないため、1台を失うとMDF、2台を失うと次のPLSとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1706） |
| F-CT-OPS-11 | ACCUを1台失ったときはACCUバイパスIFMの半分（J4）をなるべく早く行って飛行を続け、それが失敗すれば次のPLSとし、2台とも失ったときはIFMを完了してMDFとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1700） |
| F-CT-OPS-12 | 全音声を失ったときは、ACCUバイパスコネクタを取り付け、コマンドが使えればKu帯を展開・起動してOCAの通話を試み、なお音声が得られなければ次の日のPLSへ軌道離脱し、スクラッチパッド行でMCCへ知らせる（MAL COMM SSR-1）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=84） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-07 | DPS：データバス網・MDM | データ・指令 | 受信 | GCILで制御する通信系を組み替える指令は、GPCからPF MDMを経てGCILへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160）ペイロード通信系への指令もペイロードMDM 1・2からGCILCを経て送られ、これらのMDMはオービタの指令にも使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/180） | 上位: IF-ORB-01 |
| IF-CT-19 | S帯PM・FM通信 | データ・指令 | 送信 | S帯PMのトランスポンダなどの選択は通常GCILを経た地上指令で行い、パネルC3のS-BAND PM CONTROLスイッチがPANELのときはパネルA1Lのスイッチで行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/166）S帯FM系の乗員の操作器はパネルA1Rにあり、電子機器の状態と構成はCONTROLスイッチの位置に応じてパネルのスイッチまたはGCILで選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168） | — |
| IF-CT-20 | Ku帯通信・レーダ | データ・指令 | 送信 | パネルA1UのKU BAND CONTROLスイッチは、COMMAND（GCILまたはキーボード指令による制御）とPANEL（パネルのスイッチによる乗員の制御）を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/174）MCCは飛行ごとの理由でKu帯のRF搬送波を地上指令で禁止でき、この放射の制御をKu帯アンテナのマスキングと呼ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Communications System Rules of Thumb（PDF p207）：TDRSの仰角が+70°超または-60°未満で機首・尾部による遮蔽の恐れがあること、電力増幅器は65 Wでも良好なダウンリンクを保てることなどの経験則を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/207） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-1001（PDF p1707〜1708）：通信と計装の各機能・機器の喪失について、MDFと次のPLSの判断基準を表で定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1707） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMM SSR-1 LOSS OF ALL VOICE COMM（PDF p84〜85）：全音声喪失時のACCUバイパス、OCAによる通話、スクラッチパッド行による連絡、次のPLSへの軌道離脱を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=84） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-18 COMM STRING 1 C/O（PDF p62）：パネルC3のS-BD PM CNTLでS帯・NSPを系統1に切り替えて約24時間維持し、パネルA1Lを系統2に組み替える冗長系の点検を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=62） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節 4項（PDF p187）：GCILの温度限界と、入力電圧の低下による「Revert To Panel」の旗を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187） |
| CT-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 2章（PDF p16）：C&W系が監視する通信系のパラメータ（温度、COMSECとNSPの事象、GCILの構成）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=16） |

## 5. 注記（出典間の相違・構成変更）

> **注記** GCILへの電力が一時的または継続して失われると、通信系の構成はパネルA1のスイッチが示す構成に戻り、S帯PMは高い周波数に戻る（MAL 2.2a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=54）

> **注記** SODBは、GCILの入力電圧が短時間（400マイクロ秒〜1.0ミリ秒）22 V dc未満になると「Revert To Panel」のモード・旗となり、リセット指令まで保持されるとする（OCRの誤読が多い頁である）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187）

> **注記** 検証メモ：A11-12はS帯PMの系統2を通常の選択とし、初期のSTS-2でも上昇は系統2のS帯PM機器を高電力モードで運用した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39）

> **注記** C&W系は、通信系の温度、COMSECとNSPの事象、GCILの構成を監視する（C&W訓練マニュアル2章）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=16）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p159） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159
2. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p160） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-12 S-BAND PM USAGE（PDF p1680） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1680
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-1 COMMUNICATIONS DURING ASCENT（PDF p1671） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1671
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-19 UPLINK BLOCK（PDF p1685） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1685
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-16 KU-BAND MANAGEMENT（PDF p1683） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1683
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-7 KU-BAND OPERATIONS DURING EVA（PDF p1674） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1674
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-9 RECORDER USAGE（PDF p1677） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1677
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-1001 COMMUNICATIONS GO/NO-GO CRITERIA（PDF p1707） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1707
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-75 LOSS OF PCMMU’S（PDF p1706） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1706
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-66 LOSS OF ACCU’S（PDF p1700） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1700
12. JSC-48027 Rev. F Malfunction Procedures（MAL） COMM SSR-1 LOSS OF ALL VOICE COMM（PDF p84） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=84
13. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p180） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/180
14. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p166） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/166
15. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p168） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168
16. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p174） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/174
17. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p175） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175
18. JSC-48027 Rev. F Malfunction Procedures（MAL） 2.2a GCIL CONFIG: PNL（PDF p54） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=54
19. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.2 Communication and Tracking Subsystem（PDF p187） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187
20. STS-2 Orbiter Mission Report 2.3.4.3 Audio Distribution（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39
21. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 2章 C&W System（PDF p16） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=16
22. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
