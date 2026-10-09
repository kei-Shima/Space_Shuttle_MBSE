# 閉回路テレビ（CCTV）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-CCTV-001 |
| 表題 | 閉回路テレビ（CCTV）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CT-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

VCU（RCU・VSU）を中心に、ペイロードベイ・RMS・ODSのカメラとPTU、カムコーダ・VTR・カラーモニタ、VPU・DTVによって軌道上のオービタとペイロードの作業を映像で監視・記録し、Ku帯・S帯FMなどでMCCへ送る機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-CCTV-01 | CCTVは軌道上でオービタとペイロードの作業を支援し、実時間と記録の映像をS帯FM、S帯PM、Ku帯の通信系でMCCへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137） |
| F-CT-CCTV-02 | CCTVは映像処理装置、テレビカメラ、PTU、カムコーダ、VTR、カラーモニタ（CTVM）と配線・付属品から成り、大半の構成指令はMCCのINCOも実行できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137） |
| F-CT-CCTV-03 | ペイロードベイにはCTVC（カラー）、ITVC（白黒・低照度用）、Videospectionの3種類のカメラを搭載し、カメラとPTUには-8°Cで入り0°Cで切れるサーモスタット制御のヒータがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/138） |
| F-CT-CCTV-04 | VCUはCCTVの中央処理装置で、RCUとVSUの2つのLRUから成り、後部フライトデッキのパネルR17・R18の裏にあってキャビンファンで強制空冷される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/142） |
| F-CT-CCTV-05 | RCUは乗員とMCCのすべてのCCTV指令を受け、MCCがアップリンクで指令できるのはパネルA7UのTV POWER CONTROLスイッチがCMDのときだけである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/142） |
| F-CT-CCTV-06 | RCUの同期信号はカメラとVSUへ配られ、カメラへの指令は同期信号に埋め込まれ、アドレスが合うカメラだけが応答する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/143） |
| F-CT-CCTV-07 | VSUは最大13入力・7出力（パネルA7Uで使えるのは10入力・4出力）で映像を切り替え、カメラのID・温度・パン/チルト角を読み、45°Cを超えるカメラを検知するとRCUへ過熱警告を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/144） |
| F-CT-CCTV-08 | VPU（STS-92から）はCCTVからISSへ2本、ISSからCCTVへ1本の映像を渡し、EVAヘルメットカメラ（WVS）のインタフェースボックスを含む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/145） |
| F-CT-CCTV-09 | DTV（STS-110から）はCCTVのアナログNTSC映像をデジタルに変換して記録またはKu帯のチャネル3（PAYLOAD MAX）でMCCへ送り、そのVIPはAC2 PAYLOAD 3相から給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/145） |
| F-CT-CCTV-10 | PTUはカメラA・B・C・DとRMSの肘カメラに使い、正負各170°のパン・チルトを高速12°/s、低速1.2°/sで行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/147） |
| F-CT-CCTV-11 | パネルA3には10インチのカラーモニタ（CTVM）2台が常に搭載され、NTSCとFSCのカラー映像を表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/150） |
| F-CT-CCTV-12 | OBSS（STS-114から）は右舷シルに格納した50 ftのブームの後端に2つのセンサパッケージを持ち、TPSの点検映像とデータはKu帯でMCCへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/155） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-11 | ペイロード支援（PDRS・ODS） | データ・指令 | 双方向 | RMSのエンドエフェクタの固定カメラ（ズーム可）と肘の下のパン・チルト付きカメラの映像をCCTVに取り込み、PDRSの作業を監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/695）ドッキングミッションでは、ODSに取り付けたCTVCをセンタラインカメラとして使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/138） | 上位: IF-ORB-49 |
| IF-CT-13 | 電力系（EPS）：直流配電 | 電力（28 VDC） | 受信 | VCUにはGCILのドライバによりDC Main AまたはBからパネルR14を経て給電し、GCILのドライバは乗員とMCCが同時にVCUを入切するのを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/142）標準のCCTV機器はパネルR14の遮断器から給電され、飛行ごとのキールカメラは通常キャビンのペイロード母線から給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137） | 上位: IF-ORB-14 |
| IF-CT-18 | Ku帯通信・レーダ | データ・指令 | 送信 | DTVはCCTVの映像をKu帯のチャネル3でMCCへ送り、INCOがKu帯をデジタル（チャネル3 PL MAX）とアナログ（チャネル3 TV）のダウンリンクの間で構成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/145）パネルA7UのTV DOWNLINKスイッチは、VSUからアナログのKu帯とS帯FMのダウンリンクへの出力を禁止できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/143） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CT-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.3節（PDF p137〜157）：CCTVの構成、カメラ（CTVC・ITVC・Videospection）、VCU（RCU・VSU）・VPU・DTV・SSV、レンズ制御、PTU、機内カメラ、VTR、モニタ、OBSSを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137） |
| CT-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A11-15・A11-72（PDF p1682・p1705）：肘カメラとペイロードの干渉の扱いと、TVの全部または一部を失っても飛行を続けることを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1705） |
| CT-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | COMMの目次（PDF p50）：CCTVカメラの過熱（S76 COMM CAMR OVERTEMP）などの故障メッセージには対応するMALの手順がないことを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=50） |
| CT-04 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | O-4 ODS CENTERLINE CAMR ANGULAR ALIGNMENT（PDF p256〜）：ODSのセンタラインカメラの位置の確認と角度の調整（2時間）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=256） |
| CT-06 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.2節 2項（PDF p186）：テレビカメラをC&Wの限界113°Fを超えて運用しないことと、冷却を30分を超えて失うとTVモニタ・RCU・VSUに影響しうることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=186） |
| CT-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.4.6節（PDF p39〜40）：CCTVの運用と、後部左舷のカメラBの過熱（45°C）、RMSのTVの遮断器のトリップ、カメラのレンズの汚れの3件の問題を報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=40） |
| CT-12 | JSC-19278 | STS-8 National Space Transportation Systems Program Mission Report（1983年） | CCTV Camera Failures（PDF p11）：カメラCの指令不応答・焦点不良、カメラDの映像の喪失、RMSの肘カメラのレンズ組立の部品の緩みを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| CT-13 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | Communications and Tracking Subsystem（PDF p20）：CCTVカメラDの映像の喪失（54°Cまでの温度上昇の後）、カメラBの同期の不良、カメラAの線状のノイズ、カメラCの低照度の性能を報告する（STS-54-V-02A〜D）。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20） |

## 5. 注記（出典間の相違・構成変更）

> **注記** S帯PMで送るのはSSVで、乗員が設置した圧縮符号器が映像をデジタル化し、映像ではなくデータとしてMCCへ送る（更新は通常10秒ごと）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/146）

> **注記** 検証メモ：VSUの過熱の限界をSCOMは45°C（PDF p144）とし、SODBはテレビカメラをC&Wの限界113°Fを超えて運用しないとする。113°Fは45°Cに当たり、両者は一致する（本書の換算）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=186）

> **注記** STS-54では、カムコーダの映像のダウンリンクのため警報を無効にしていた間にカメラDの温度が54°C（レッドラインより9度高い）に達し、その後映像が断続的に使えなくなった（STS-54-V-02A）。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p137） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137
2. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p138） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/138
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.3節 Video Processing Equipment（PDF p142） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/142
4. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p143） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/143
5. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p144） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/144
6. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p145） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/145
7. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p147） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/147
8. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p150） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/150
9. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p155） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/155
10. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p695） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/695
11. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p146） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/146
12. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.2 Communications and Tracking Subsystems（PDF p186） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=186
13. NASA-CR-194116 STS-54 Mission Report（1993） Communications and Tracking Subsystem（PDF p20） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20
14. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
