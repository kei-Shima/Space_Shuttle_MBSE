# C&T 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-CT-REF-001 |
| 表題 | C&T 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図59 C&T 関連文書マトリクス |

## 1. 目的

C&Tの各機能に関係する公開文書を機能別に整理し、各機能説明書と図59 C&T 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、C&Tの機能に関係する記述の頁を確かめた 14件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 C&T 全般（8件）

機能説明書：SSD-FD-CT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節（PDF p159〜207）：通信系が伝える情報（テレメトリ・コマンド・文書・音声）と、S帯PM・S帯FM・Ku帯・UHF・SSOR・ペイロード通信・音声・CCTVの小系への区分、GCILによるパネル/コマンドの制御を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 第11章 Communications（PDF p1671〜1708）：通信系の管理の規則（A11-1〜23）、故障時の規則（A11-51〜77）、Go/No-Go基準（A11-1001）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1671） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMMの章（PDF p49〜90）：音声、GCIL/Ku、S帯/UHF、S62 BCE BYP、PSP BIT、OI DSCの故障処置と、全音声喪失・OI MDM/DSC喪失のSSRから成る。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=49） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-6 AV BAY 3A（PDF p92）：アビオニクスベイ3AのS帯トランスポンダ・NSP・前置増幅器・電力増幅器・FM送信機・Ku帯電子組立・GCILなどの配置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=92） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | COMM/INSTの章の目次（PDF p33）：Ku帯アンテナの展開・起動・格納・手動捕捉・投棄、睡眠前後の音声構成、標準のS帯/Ku帯パネル構成、着陸前の通信点検、通信系統1の点検の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=33） |
| CT-08 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 表1-1（PDF p13）：C&TのFMEAをIOA 1,108件・NASA 697件（論点407件）、CILをIOA 298件・NASA 239件（論点294件）と集計する（1988年1月1日時点）。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4節（PDF p39）：通信・追跡系の性能は非常に良好で、S帯・UHFの音声、実時間・再生テレメトリ、実時間テレビを地上網で受信したと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39） |
| CT-14 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | Communications and Tracking Subsystem（PDF p35）：通信・追跡系は飛行全体で満足に動作し、重大な問題や飛行中の異常はなかったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=35） |

### 3.2 S帯PM・FM通信（SBD）（10件）

機能説明書：SSD-FD-CT-SBD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 S-Band Phase Modulation・S-Band Frequency Modulation（PDF p160〜170）：5つのチャネル、周波数とデータレート、電力モード、クワッド/ヘミアンテナ、前置増幅器・電力増幅器・トランスポンダ・NSP・COMSEC、FMの7つのデータ源を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-58・A11-61〜64（PDF p1694〜1698）：トランスポンダ、前置増幅器・電力増幅器、アンテナ電子装置、NSP、COMSECの喪失時の扱い（継続・MDF・次のPLS）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1694） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.3a NO S-BD COMM: TDRS（PDF p59〜62）：TDRSでのS帯の交信断の切り分け（Ku帯の受信への切替、系統1のTDRSモードの指令表を含む）を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=59） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | S-1 S-BAND DNLK RECOVERY（PDF p405〜406）：S帯トランスポンダの故障時に、MMUを迂回してNSPからS帯FM系へ実時間テレメトリを送る代替経路を作る手順（2時間）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=405） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-15 STD S-BD/KU-BD PNL CONFIG（PDF p59）：STDN（SGLS）・TDRSのS帯・TDRSのKu帯に応じたNSPのデータレート・アップリンク源・符号化とS帯PMモードのパネル構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=59） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4.1節（PDF p39）：上昇は系統2のS帯PMを高電力モード、軌道上は低電力モードで運用し、FM系統2で実時間TV・主エンジンデータ・再生テレメトリを送り、アンテナ管理はすべて自動のGPCモードであったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39） |
| CT-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.4.1節（PDF p24）：系統2のNSP・トランスポンダ・電力増幅器を全期間STDNの高電力・高周波数モードで運用し、FM系で主エンジンデータ・TV・OI記録器のダンプを送ったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |
| CT-12 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | Lower Right S-Band Quad Antenna Beam Selection Miscompare（PDF p11）：GPCが後方ビームを選んだ際の右下クワッドアンテナの位置の不一致の警報（トークバックの断続と判断）を報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| CT-13 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | Communications and Tracking Subsystem（PDF p20）：COMSEC装置が5回ハングアップして上りのコマンドが認証されず、アップリンクの変調を外して再び加えて回復したことを報告する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20） |
| CT-14 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p10）：TDRS Westの使用中にS帯電力増幅器2のRF出力が約20秒低下してSMメッセージが出たが、再発しなかったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

### 3.3 Ku帯通信・レーダ（KU）（7件）

機能説明書：SSD-FD-CT-KU-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Ku-Band System（PDF p171〜179）：TDRS経由の3チャネルの通信、展開アンテナ組立とジンバル、マスキング、展開・格納・投棄、ランデブレーダの角度・距離の追尾と4つの指向モードを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-16・A11-55〜57（PDF p1683・p1692〜1693）：beta plus maskによるKu帯の運用と、Ku帯の喪失、温度制御・温度監視の喪失時の停止と格納を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1692） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.2a GCIL CONFIG: PNL・KU TEMP（PDF p54）：GCILの電源喪失によるパネル構成への復帰と、Ku帯のジンバル・ジャイロ・PAの温度上昇（SMアラート）の処置を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=54） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | K-6 KU-BAND ANTENNA CONTINGENCY DEPLOY/STOW（PDF p182〜）：展開/格納スイッチの故障時に補助の直流電源でスイッチを迂回し、単一モータで展開・格納する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=182） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-3 KU-BD ACTIVATION（PDF p47）：パネルR14のMNB KU ELEC・MNC KU SIG PROCの遮断器を閉じ、約4分の暖機と自己試験を経てKu帯を起動する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=47） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節（PDF p186〜193）：Ku帯の展開アンテナ組立のジャイロのヒータと温度、ケーブル巻きの摩擦による振動と格納前の指向角、ジンバルロック中の機体の角速度の制限、レーダの自己試験・モード切替、内部故障のリセットの制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=188） |
| CT-14 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | Rendezvous and docking（PDF p10）：Ku帯レーダによるISSの捕捉（距離130,000 ft）、近傍での待機・通信モードへの切替を報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

### 3.4 UHF（SPLX・SSOR）（UHF）（9件）

機能説明書：SSD-FD-CT-UHF-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Ultrahigh Frequency System（PDF p181〜185）：UHFシンプレックス（259.7/296.8 MHz、ガード243.0 MHz）とEVA/SSOR（414.2/417.1 MHz）の2つの系、パネルO6の操作器、SPEC 76・SPEC 212の表示を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-10・A11-69（PDF p1678・p1702）：UHFの公称構成（シンプレックス259.7 MHz）とEVA時の構成、UHFの喪失時の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1678） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.3c NO UHF VOICE（PDF p64）：UHFの公称構成と、スケルチ・ACCU・周波数・ガード・電力増幅器の切替による切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=64） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-6 AV BAY 3A（PDF p92）：EVA/ATCのUHF送受信機（EVA ATC XCVR）のアビオニクスベイ3Aでの位置を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=92） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-12 PRE-SLEEP AUD CONFIG (UNDOCKED)（PDF p56）：ドッキングしていない時の睡眠前の構成でUHF MODEがOFFであることを確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=56） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節 6項（PDF p187）：オービタ下面のUHFアンテナが空対地のシンプレックスモードでだけ放射することを示す（3.4.2.5項を参照）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187） |
| CT-09 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | 4-10 EVA COMM CONFIG（PDF p90）：MNA・MNC UHF EVAの遮断器、UHF MODE（EVA）、送信周波数、EVA STRING、生体データのチャネル、ISSとのドッキング時のA/G 1の扱いを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=90） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4.2節（PDF p39）：オービタのEVA/ATCのUHF装置が全飛行段階で良好に働いたと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39） |
| CT-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.4.2節（PDF p24）：軌道上で初めてUHFの周波数を296.8 MHzから259.7 MHzに変えたことと、着陸時に2つの地上局のUHF送信が重なって上りの音声が乱れたことを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |

### 3.5 音声分配（ACCU・ATU）（AUD）（9件）

機能説明書：SSD-FD-CT-AUD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Audio Distribution System（PDF p185〜196）：ACCU・ATU・スピーカユニット・音声センタパネル・携帯通信機器・CCUの構成と8つの音声ループ、ATUの操作と冗長の切替を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/185） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-65〜68（PDF p1699〜1701）：ACCUの喪失の定義、ACCUバイパスIFM、PLTとMSのATUの喪失、インターコムの喪失を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1699） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.1a NO AUDIO（PDF p52）：複数の音声パネルやUHF・NSPの音声を失ったときの、ATUの電源とAUD CTRスイッチによる切り分けとACCUの切替を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=52） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | A-1 ACCU BYPASS CONNECTOR INSTALLATION（PDF p111〜114）：ACCUの片方または両方の全故障後にA/G通信を回復するバイパスコネクタの取付け（25分）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=111） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-12 PRE-SLEEP AUD CONFIG (UNDOCKED)（PDF p56）：睡眠前にミッドデッキのスピーカのATUをA/G 1送受信・A/G 2受信などに構成する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=56） |
| CT-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 9.3節 Audio Annunciation Control（PDF p119）：2台のトーン発生器の4つの警報トーンを、ACCU経由、専用のスピーカ、ACCUのバイパス、睡眠ステーションのヘッドセットへ出す3つの出力を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） |
| CT-09 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） | 3-2 EMU POWERUP AND COMM CHECK（PDF p68〜69）：音声センタのUHF A/A・A/G、IVAのATUの構成と、EMUとの機上A/A通話の点検の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=69） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4.3節（PDF p39）：ミニヘッドセットと無線送受信機の使用で音声品質が良好で、STS-1で見られた音響帰還がなかったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39） |
| CT-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.4.3節（PDF p24）：乗員がWCCU（無線乗員通信装置）とミニヘッドセットを使ったことを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |

### 3.6 閉回路テレビ（CCTV）（8件）

機能説明書：SSD-FD-CT-CCTV-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.3節（PDF p137〜157）：CCTVの構成、カメラ（CTVC・ITVC・Videospection）、VCU（RCU・VSU）・VPU・DTV・SSV、レンズ制御、PTU、機内カメラ、VTR、モニタ、OBSSを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-15・A11-72（PDF p1682・p1705）：肘カメラとペイロードの干渉の扱いと、TVの全部または一部を失っても飛行を続けることを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1705） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMMの目次（PDF p50）：CCTVカメラの過熱（S76 COMM CAMR OVERTEMP）などの故障メッセージには対応するMALの手順がないことを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=50） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | O-4 ODS CENTERLINE CAMR ANGULAR ALIGNMENT（PDF p256〜）：ODSのセンタラインカメラの位置の確認と角度の調整（2時間）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=256） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節 2項（PDF p186）：テレビカメラをC&Wの限界113°Fを超えて運用しないことと、冷却を30分を超えて失うとTVモニタ・RCU・VSUに影響しうることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=186） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4.6節（PDF p39〜40）：CCTVの運用と、後部左舷のカメラBの過熱（45°C）、RMSのTVの遮断器のトリップ、カメラのレンズの汚れの3件の問題を報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=40） |
| CT-12 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | CCTV Camera Failures（PDF p11）：カメラCの指令不応答・焦点不良、カメラDの映像の喪失、RMSの肘カメラのレンズ組立の部品の緩みを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| CT-13 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | Communications and Tracking Subsystem（PDF p20）：CCTVカメラDの映像の喪失（54°Cまでの温度上昇の後）、カメラBの同期の不良、カメラAの線状のノイズ、カメラCの低照度の性能を報告する（STS-54-V-02A〜D）。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20） |

### 3.7 計装・ペイロード通信（INST）（7件）

機能説明書：SSD-FD-CT-INST-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Instrumentation（PDF p196〜199）：OIの構成（変換器・DSC 14台・OI MDM 7台・PCMMU 2台・記録器2台）、PCMMUのTFLと冗長、MTUの同期、SSRを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-9・A11-71・A11-74〜77（PDF p1677〜1706）：記録器の使い方と喪失、PCMMUの喪失の定義と扱い、OI MDM・OI DSCの喪失時の継続を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1706） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 2.4 S62 BCE BYP（PDF p66〜78）：OI MDM・PDI・PSPとPCMMUの間のデータ経路の故障時のPCMMUの切替、I/O RESET、TFLの再ロードを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=67） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | P-49 PDI REPLACEMENT（PDF p319〜）：故障したPDIを予備品と交換する手順（2時間30分）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=319） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | PGSCの章の目次（PDF p36）：OCAとPCMMUのドッキングステーションカード、PCMMUを使わないPGSCの状態ベクトル更新などの手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=36） |
| CT-08 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 表1-1（PDF p13）：計装（INST）のFMEAをIOA 107件・NASA 96件（論点25件）、CILをIOA 22件・NASA 18件（論点5件）と集計する。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| CT-13 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | Communications and Tracking Subsystem（PDF p20）：OIが異常や問題なく公称に動作したことを報告する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20） |

### 3.8 C&T運用管理（OPS）（6件）

機能説明書：SSD-FD-CT-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.4節 Communications System Rules of Thumb（PDF p207）：TDRSの仰角が+70°超または-60°未満で機首・尾部による遮蔽の恐れがあること、電力増幅器は65 Wでも良好なダウンリンクを保てることなどの経験則を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/207） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-1001（PDF p1707〜1708）：通信と計装の各機能・機器の喪失について、MDFと次のPLSの判断基準を表で定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1707） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMM SSR-1 LOSS OF ALL VOICE COMM（PDF p84〜85）：全音声喪失時のACCUバイパス、OCAによる通話、スクラッチパッド行による連絡、次のPLSへの軌道離脱を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=84） |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 2-18 COMM STRING 1 C/O（PDF p62）：パネルC3のS-BD PM CNTLでS帯・NSPを系統1に切り替えて約24時間維持し、パネルA1Lを系統2に組み替える冗長系の点検を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=62） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節 4項（PDF p187）：GCILの温度限界と、入力電圧の低下による「Revert To Panel」の旗を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=187） |
| CT-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 2章（PDF p16）：C&W系が監視する通信系のパラメータ（温度、COMSECとNSPの事象、GCILの構成）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=16） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | SBD | KU | UHF | AUD | CCTV | INST | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | ● | ● | ● | ● | ● | ● | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| CT-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | ● | ● | ● | ● | ● |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 |  |  | ● | ● |  | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| CT-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） |  |  |  |  | ● |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| CT-08 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | ● |  |  |  |  |  | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| CT-09 | JSC-48023 Rev. H PCN-20 | EVA Checklist（Generic） |  |  |  | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | ● | ● |  | ● | ● | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf |
| CT-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） |  | ● |  | ● | ● |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf |
| CT-12 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） |  | ● |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf |
| CT-13 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） |  | ● |  |  |  | ● | ● |  | 新規 | https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf |
| CT-14 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | ● | ● | ● |  |  |  |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
