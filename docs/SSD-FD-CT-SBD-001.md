# S帯PM・FM通信（SBD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-SBD-001 |
| 表題 | S帯PM・FM通信（SBD）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

S帯PM系（トランスポンダ・前置増幅器・電力増幅器・アンテナ切替電子装置・クワッドアンテナ）とNSP・COMSECによる地上・TDRSとの双方向の音声・コマンド・テレメトリ・測距の伝送と、S帯FM系による地上局への広帯域のダウンリンクを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-SBD-01 | S帯PM系は、地上局またはTDRSを経由してオービタと地上の間の双方向通信を行い、コマンド、音声、テレメトリ、トーン測距、2-wayドップラ追跡の5つの機能のチャネルを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160） |
| F-CT-SBD-02 | フォワードリンクの高データレートは72 kbps（A/G音声2チャネル各32 kbpsとコマンド8 kbps）、リターンリンクの高データレートは192 kbps（A/G音声2チャネル各32 kbpsとテレメトリ128 kbps）で、2-way測距はTDRSを経由しては働かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162） |
| F-CT-SBD-03 | 電力モードはSGLS、STDN LO・HI、TDRS DATA・RNGから選び、高電力モード（TDRSとSTDN HI）では受信信号を前置増幅器、送信信号を電力増幅器に通し、低電力モード（STDN LOとSGLS）では増幅しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162） |
| F-CT-SBD-04 | 前方胴体の外板に約90°おきに4基のクワッドアンテナがあり、各アンテナが前方・後方の2つのビームを持つため実質8つのアンテナとして働き、GPC制御（PASS SMまたはBFS）、アップリンクコマンド、パネルC3の手動で選択する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/163） |
| F-CT-SBD-05 | 前置増幅器はTDRSとSTDN HIのモードで使う2台の冗長な装置で、一度に1台を使い、約25 dBのRF利得を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/164） |
| F-CT-SBD-06 | 電力増幅器は2台の冗長（公称利得約17 dB）で進行波管を使い、コールドスタートからOPERATEを選ぶと140秒のタイマで予熱し、STANDBYではフィラメントを暖めておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/165） |
| F-CT-SBD-07 | トランスポンダは2台の冗長で一度に1台が働き、フォワードリンクのコマンドと音声をNSPへ渡してNSPからリターンリンクのテレメトリと音声を受け、2-wayドップラと2-wayトーン測距の信号をコヒーレントに折り返す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/165） |
| F-CT-SBD-08 | NSPは2台の冗長で、ACCUからのA/G音声をデジタル化してPCMMUのテレメトリと時分割多重してトランスポンダへ送り、フォワードリンクでは音声をACCUへ戻し、地上コマンドを解読してFF MDM（NSP 1はFF 1、NSP 2はFF 3）へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167） |
| F-CT-SBD-09 | COMSEC装置はNSPと組んで運用データの暗号化・復号を行い、現在はSELECT/RCVモードでアップリンク（音声とコマンド）だけを暗号化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167） |
| F-CT-SBD-10 | S帯FM系は受信できない送信専用の系で、2,250 MHzに同調した2台の冗長な送信機の一方から最大7つの源のうち1つのデータを地上局へ直接送り、TDRSは経由しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168） |
| F-CT-SBD-11 | FM信号処理器は一度に1台を使い、現在のS帯FM系は主に上昇中の主エンジンデータと軌道上のMMU1・MMU2の記録器のダンプの送信に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/169） |
| F-CT-SBD-12 | 2基のヘミアンテナは前方胴体の上下に約180°離れてS帯FMのリターンリンクを放射し、GPCモードではSM計算機がSTDNまたはAFSCFの地上局への見通しからアンテナを選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/169） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-01 | 追跡・通信網（TDRS・STDN） | RF（無線） | 双方向 | S帯PMのフォワードリンク（2,041.9 MHz主・2,106.4 MHz副）とリターンリンクを、STDNの地上局またはTDRSとの間で送受信する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162）TDRSSを使うと通信の覆域は約80%となり、インド洋上空の不可視域（ZOE）ではどちらの衛星とも見通せない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160） | 上位: IF-ORB-16 |
| IF-CT-02 | 追跡・通信網（TDRS・STDN） | RF（無線） | 送信 | S帯FM送信機から2,250 MHzのリターンリンクで、FM信号処理器が選んだ1つの源のデータをSTDNまたは空軍の地上局へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168）S帯FMのリターンリンクはS帯PMのリターンリンクと同時に送れるが、TDRSは経由しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168） | 上位: IF-ORB-16 |
| IF-CT-05 | DPS：データバス網・MDM | データ・指令 | 送信 | NSPはフォワードリンクの地上コマンドを解読し、FF MDM（NSP 1はFF 1、NSP 2はFF 3）を通して機上の計算機へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167）NSPはコマンドを検証してGPCが飛行重要MDMを通して要求したときにGPCへ送り、GPCも実行の前にコマンドを検証する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234） | 上位: IF-ORB-01 |
| IF-CT-14 | 計装・ペイロード通信 | データ・指令 | 受信 | PCMMUはインタリーブ・形式化したデータをNSPへ送り、NSPがACCUからのA/G音声と合わせてS帯PMのダウンリンクとKu帯のリターンリンクのチャネル1で送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197）PCMMUのテレメトリはNSPを経てSSRへも送られて記録され、後でS帯FMまたはKu帯でダウンリンクされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197） | — |
| IF-CT-15 | 音声分配（ACCU・ATU） | データ・指令 | 双方向 | 働いているNSPはACCUから1本（低データレート）または2本（高データレート）のA/Gのアナログ音声を受けてデジタル化し、フォワードリンクでは逆に1本または2本のアナログ音声をACCUへ出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167）パネルA1RのVOICE RECORD SELECTで選んだ音声は、NSPを経て記録器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/192） | — |
| IF-CT-16 | Ku帯通信・レーダ | データ・指令 | 双方向 | 通信モードでは、NSPがリターンリンクのデータ（音声とテレメトリ）をKu帯信号処理器へも送り、Ku帯のフォワードリンクの音声とコマンドはKu帯信号処理器からNSPへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）フォワードリンクの源は地上がGCILで、または乗員がパネルA1LのNSP UPLINK DATAスイッチで選び、SMソフトウェアで自動で切り替えることもできる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171） | — |
| IF-CT-19 | C&T運用管理 | データ・指令 | 受信 | S帯PMのトランスポンダなどの選択は通常GCILを経た地上指令で行い、パネルC3のS-BAND PM CONTROLスイッチがPANELのときはパネルA1Lのスイッチで行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/166）S帯FM系の乗員の操作器はパネルA1Rにあり、電子機器の状態と構成はCONTROLスイッチの位置に応じてパネルのスイッチまたはGCILで選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168） | — |
| IF-CT-21 | DPS：上昇系インタフェース | データ・指令 | 受信 | S 帯 FM のリターンリンクは、打上げ中の EIU からの SSME 実時間データ（各 60 kbps）などを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168）S 帯 FM 系は主エンジン EIU の高速データの唯一の実時間の経路で、上昇中の送信が必須である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=410） | 上位: IF-ORB-01 |
| IF-CT-23 | DPS：飛行ソフトウェア・MMU | データ・指令 | 双方向 | PCMMU のテレメトリは NSP を経て SSR へも送られ、記録された後 S 帯 FM または Ku 帯でダウンリンクされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197）2台の SSR はデジタル音声と PCM データの記録・再生に使い、MMU に内蔵されるので、パネル A1 では Ku 帯・S 帯 FM で再生する源を「MMU1」「MMU2」と表す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199） | 上位: IF-ORB-01 |
| IF-CT-25 | DPS：データバス網・MDM | データ・指令 | 受信 | アンテナはアンテナ切替電子装置が GPC 制御・アップリンク指令・パネル C3 のスイッチで選び、切替指令は PF MDM を経て切替組立へ送られる。選択は STDN・AFSCF 地上局または TDRS への見通しの計算に基づく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/163） | 上位: IF-ORB-01 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
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

## 5. 注記（出典間の相違・構成変更）

> **注記** S帯のトランスポンダ・NSP・前置増幅器・電力増幅器・FM送信機・FM信号処理器とKu帯の電子組立1・2、GCILは、IFMチェックリストのアビオニクスベイ3Aの配置図に示されている（IFM 3-6）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=92）

> **注記** 故障処置手順のS帯PMの系統図は、系統1の機器の電源をCNTL BC1とMN B FLC2とする（MAL 2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=56）

> **注記** 同じ系統図の続きは、系統2の機器の電源をCNTL BC2とMN C FLC3とする（MAL 2.3）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=57）

> **注記** STS-8では、GPCが後方ビームを選んだ際に系統2で右下クワッドアンテナの位置の不一致の警報が出たが、系統1の電子装置でも続き、S帯の通信は保たれたため、アンテナのビーム位置のトークバックの断続と判断された。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11）

> **注記** STS-108では、TDRS Westの使用中にS帯電力増幅器2のRF出力が約20秒低下してSMメッセージが出たが再発せず、系統1の冗長系の点検の24時間を除き電力増幅器2を使い続けた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p160） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160
2. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p162） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162
3. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p163） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/163
4. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p164） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/164
5. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p165） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/165
6. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p167） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/167
7. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p168） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168
8. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p169） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/169
9. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p234） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234
10. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p197） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197
11. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p192） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/192
12. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p171） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171
13. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p166） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/166
14. In-Flight Maintenance Checklist Rev F PCN-13 3-6 Av Bay 3A（PDF p92） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=92
15. JSC-48027 Rev. F Malfunction Procedures（MAL） 2.3 COMM S-BAND PM SCHEMATIC（PDF p56） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=56
16. JSC-48027 Rev. F Malfunction Procedures（MAL） 2.3 COMM S-BAND PM SCHEMATIC（続き）（PDF p57） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=57
17. JSC-19278 STS-8 National Space Transportation Systems Program Mission Report（1983年） Smoke Detector B in Avionics Bay 1 Tripped（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11
18. STS-108 Mission Report Rendezvous and docking（S-band PA 2）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10
19. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
20. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p410） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=410
21. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p199） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-CT-21・IF-CT-23・IF-CT-25 を足した（GAP-09 の解消）（Rev. AU） |
