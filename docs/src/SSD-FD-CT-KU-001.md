# Ku帯通信・レーダ（KU）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-KU-001 |
| 表題 | Ku帯通信・レーダ（KU）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

ペイロードベイの展開アンテナ組立（2軸ジンバルの高利得アンテナ）によるTDRS経由の大容量の通信（3チャネル）と、ランデブ時に目標の角度・角速度・距離・距離変化率を測るレーダの機能、アンテナの展開・格納・投棄とRF放射のマスキングを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-KU-01 | Ku帯系はペイロードベイドアを開いた後に展開するアンテナでTDRSを介して地上と送受信し、ランデブではレーダとしても使えるが、通信とレーダを同時には使えない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） |
| F-CT-KU-02 | 通信モードでは、NSPがリターンリンクのデータをKu帯信号処理器とS帯PMトランスポンダの両方へ送り、フォワードリンクはKu帯とS帯PMの一方だけをNSPが処理する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） |
| F-CT-KU-03 | モード1のリターンリンクは3チャネルで、チャネル1は192 kbpsの運用データ、チャネル2は2 Mbpsの低データレート源（ペイロードインタロゲータ、OCA、MMU 1・2のSSR）、チャネル3は50 MbpsのPL MAX（DTVなど）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） |
| F-CT-KU-04 | モード2ではチャネル3が4 Mbpsの高データレート源となり、ペイロードのデータのほか実時間のCCTV映像のダウンリンクを選べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） |
| F-CT-KU-05 | モード1のフォワードリンクは72 kbpsの運用データのほか128 kbpsのOCAのアップリンクを含み、COMMモードではEA1を経たKu帯信号処理器が音声とコマンドをNSPへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/173） |
| F-CT-KU-06 | 展開アンテナ組立は右舷のシルロンジロンに取り付けられ、2軸ジンバルの高利得アンテナ（直径3 ftのグラファイトエポキシ製パラボラ）、ジャイロ組立、RF電子箱から成り、組立の質量は180 lb、系全体は304 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/173） |
| F-CT-KU-07 | ベータジンバルの動きが162°に限られるため、極の周りに直径4°、ペイロードベイ側に直径32°の非カバー域があり、アンテナはパネルA1Uの手動またはSMソフトウェアで指向する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/174） |
| F-CT-KU-08 | MCCは、ペイロード、EVA乗員、ISSをKu帯の放射から守るため、ベータ角によるマスク（beta MASK・beta + MASK）やEVA防護域で送信機を止めるマスキングを地上指令で設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175） |
| F-CT-KU-09 | アンテナの展開・格納は通常23秒かかり、突入に備えてペイロードベイドアを閉じる前に格納しなければならず、通常の格納とDIRECT STOWができないときは組立を投棄する（約4秒）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175） |
| F-CT-KU-10 | ランデブではレーダがGNC計算機のランデブ航法データを更新するセンサとして目標の角度・角速度・距離変化率を与え、受動（RDR PASSIVE）と協力（RDR COOP）のモードがあるが、これまでRDR PASSIVEだけが使われた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177） |
| F-CT-KU-11 | GPCモードでは、GNC SPEC 33の2つの指令によりGNCの目標位置をSMのアンテナ管理プログラムへ送り、指向角と距離をペイロード1データバスとPF1 MDMを経てKu帯系へ送って探索・自動追尾させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/178） |
| F-CT-KU-12 | SM COMMUNICATIONS表示（SPEC 76）は、Ku帯の温度（PA・GMBL・GYRO）、出力電力、フレーム同期、モード（COMM・RDR）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/179） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-03 | 追跡・通信網（TDRS・STDN） | RF（無線） | 双方向 | 展開したKu帯アンテナで、オービタとTDRSの間に見通しがあるときにTDRSを介して地上と送受信する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/173）3チャネルのデータはKu帯信号処理器でリターンリンクにインタリーブされ、送信機を含む展開電子組立からKu帯アンテナを通してTDRSへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/173） | 上位: IF-ORB-16 |
| IF-CT-08 | GN&C：誘導・航法演算 | データ・指令 | 送信 | 自動追尾モードでは、Ku帯系がアンテナの角度・角速度・距離・距離変化率をMDMを通してランデブ・近傍運用のために送り、GNC計算機のランデブ航法データの更新に使わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177）自動の角度追尾は航法データの更新に使える角度データを与える唯一の角度追尾モードで、パネルA2の表示器へのデータはGPCで処理しない配線の信号である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177） | 上位: IF-ORB-24 |
| IF-CT-16 | S帯PM・FM通信 | データ・指令 | 双方向 | 通信モードでは、NSPがリターンリンクのデータ（音声とテレメトリ）をKu帯信号処理器へも送り、Ku帯のフォワードリンクの音声とコマンドはKu帯信号処理器からNSPへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）フォワードリンクの源は地上がGCILで、または乗員がパネルA1LのNSP UPLINK DATAスイッチで選び、SMソフトウェアで自動で切り替えることもできる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） | — |
| IF-CT-18 | 閉回路テレビ | データ・指令 | 受信 | DTVはCCTVの映像をKu帯のチャネル3でMCCへ送り、INCOがKu帯をデジタル（チャネル3 PL MAX）とアナログ（チャネル3 TV）のダウンリンクの間で構成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/145）パネルA7UのTV DOWNLINKスイッチは、VSUからアナログのKu帯とS帯FMのダウンリンクへの出力を禁止できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/143） | — |
| IF-CT-20 | C&T運用管理 | データ・指令 | 受信 | パネルA1UのKU BAND CONTROLスイッチは、COMMAND（GCILまたはキーボード指令による制御）とPANEL（パネルのスイッチによる乗員の制御）を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/174）MCCは飛行ごとの理由でKu帯のRF搬送波を地上指令で禁止でき、この放射の制御をKu帯アンテナのマスキングと呼ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175） | — |
| IF-CT-24 | DPS：飛行ソフトウェア・MMU | データ・指令 | 受信 | Mode 1 のリターンリンクは3チャネルで、Ch 1 は運用データ 192 kbps（テレメトリ 128 kbps と A/G 音声 32 kbps×2）、Ch 2 は 2 Mbps（ペイロード・OCA・MMU 1/2 の SSR から選ぶ）、Ch 3 は 50 Mbps の PL MAX（DTV など）である。Mode 2 の Ch 3 は 4 Mbps（実時間の CCTV 映像などから選ぶ）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）2台の SSR はデジタル音声と PCM データの記録・再生に使い、MMU に内蔵されるので、パネル A1 では Ku 帯・S 帯 FM で再生する源を「MMU1」「MMU2」と表す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199） | 上位: IF-ORB-01 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Ku-Band System（PDF p171〜179）：TDRS経由の3チャネルの通信、展開アンテナ組立とジンバル、マスキング、展開・格納・投棄、ランデブレーダの角度・距離の追尾と4つの指向モードを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-16・A11-55〜57（PDF p1683・p1692〜1693）：beta plus maskによるKu帯の運用と、Ku帯の喪失、温度制御・温度監視の喪失時の停止と格納を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1692） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.2a GCIL CONFIG: PNL・KU TEMP（PDF p54）：GCILの電源喪失によるパネル構成への復帰と、Ku帯のジンバル・ジャイロ・PAの温度上昇（SMアラート）の処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=54） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | K-6 KU-BAND ANTENNA CONTINGENCY DEPLOY/STOW（PDF p182〜）：展開/格納スイッチの故障時に補助の直流電源でスイッチを迂回し、単一モータで展開・格納する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=182） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-3 KU-BD ACTIVATION（PDF p47）：パネルR14のMNB KU ELEC・MNC KU SIG PROCの遮断器を閉じ、約4分の暖機と自己試験を経てKu帯を起動する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=47） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節（PDF p186〜193）：Ku帯の展開アンテナ組立のジャイロのヒータと温度、ケーブル巻きの摩擦による振動と格納前の指向角、ジンバルロック中の機体の角速度の制限、レーダの自己試験・モード切替、内部故障のリセットの制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=188） |
| CT-14 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | Rendezvous and docking（PDF p10）：Ku帯レーダによるISSの捕捉（距離130,000 ft）、近傍での待機・通信モードへの切替を報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

## 5. 注記（出典間の相違・構成変更）

> **注記** Ku帯の起動では、パネルR14のMNB KU ELECとMNC KU SIG PROCの遮断器を閉じ、ANT HTRが閉、CABLE HTRが開であることを確かめ、約4分の暖機の後に自己試験を行う（ORB OPS 2-3）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=47）

> **注記** SODBは、ジンバルロックの間はオービタの加速度と角速度（5 deg/sec）を制限してロックを確実にすること、主RCSの噴射による加速度はレーダの測定精度を下げてブレイクトラックを招きうることを制約とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=190）

> **注記** STS-108では、Ku帯レーダが距離130,000 ft（約21.7 nmi）でISSを捕捉し、距離48 ftで電力節約のため待機モードにした。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10）

> **注記** 検証メモ：SCOMはKu帯の運用帯域を15,250〜17,250 MHzとし、搬送波周波数を「13,755 GHz」（TDRS→オービタ）・「15,003 GHz」（オービタ→TDRS）と記すが、両者は合わない。本書では搬送波の値を引かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p171） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171
2. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p173） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/173
3. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p174） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/174
4. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p175） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175
5. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p177） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177
6. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p178） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/178
7. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p179） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/179
8. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p145） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/145
9. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p143） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/143
10. Orbit Operations Checklist Rev M PCN-10 2-3 KU-BD ACTIVATION（PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=47
11. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.2 Communications and Tracking Subsystems（PDF p190） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=190
12. STS-108 Mission Report Rendezvous and docking（S-band PA 2）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
14. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p199） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-CT-24 を足した（GAP-09 の解消）（Rev. AU） |
