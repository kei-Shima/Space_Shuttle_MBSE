# 通信・追跡系（C&T）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CT-001 |
| 表題 | 通信・追跡系（C&T）機能説明書 |
| 版・日付 | Rev. K／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

通信・追跡系の機能と、DPS・外部の追跡通信網とのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CT-01 | S帯FM、S帯PM、Ku帯、UHFの各系が、RF信号でオービタと地上の間の情報を伝送する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159） |
| F-CT-02 | ペイロード通信系はハードラインまたはRFでオービタとペイロードの間の情報を伝送し、音声系は機内の音声通信を、CCTVは作業の目視監視と記録を担う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159） |
| F-CT-03 | NASAのS帯フォワードリンクは2,041.9 MHz（主）または2,106.4 MHz（副）、リターンリンクは2,217.5 MHz（主）または2,287.5 MHz（副）の位相変調で、STDNまたはTDRSを経由する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162） |
| F-CT-04 | Ku帯系は、ランデブ時に分離衛星の距離と角度を測るレーダと、双方向通信の二役を担う。（出典: https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-01 | データ処理系（DPS） | データ・指令 | 双方向 | 地上へのダウンリンクには、GPCが収集したデータ（ダウンリスト）、ペイロードデータ、計測データ、機上音声が含まれる。（出典: https://www.spaceshuttleguide.com/system/navigation.htm）機上の状態ベクトルは、地上管制網から通信アップリンクで定期的に更新される。（出典: https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm） | 下位: IF-CT-05 下位: IF-CT-06 下位: IF-CT-07 下位: IF-CT-21 下位: IF-CT-22 下位: IF-CT-23 下位: IF-CT-24 下位: IF-CT-25 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-16 | 追跡・通信網 | RF（無線） | 双方向 | S帯FM、S帯PM、Ku帯、UHFの各系が、RF信号でオービタと地上の間の情報を伝送する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159）UHFは船外活動中の宇宙飛行士との音声・データ通信と、大気圏飛行中の航空交通管制用の音声に使われる。（出典: https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm） | 上位: IF-SYS-04 下位: IF-CT-01 下位: IF-CT-02 下位: IF-CT-03 下位: IF-CT-04 |
| IF-ORB-24 | 誘導・航法・制御（GN&C） | データ・指令 | 送信 | ランデブ時は、Ku帯レーダがセンサとして目標の角度・角速度・距離変化率を与え、GNCコンピュータのランデブ航法データを更新する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177）自動追尾モードでは、Ku帯系がアンテナ角・角速度・距離・距離変化率をMDM経由で送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177） | 下位: IF-CT-08 |
| IF-ORB-43 | 警報系（C/W） | データ・指令 | 受信 | 聴覚の合図は通信系へ送られ、乗員のヘッドセットやスピーカボックスへ配られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113） | 下位: IF-CT-09 |
| IF-ORB-46 | 船外活動（EVA/EMU） | RF（無線） | 双方向 | SSORは、オービタとISS・EMUの間の情報の伝送に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159）EVA通信系は、オービタのUHF系、EMU無線、EMU電気ハーネス、通信キャリア組立、生体センサなどから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/450） | 下位: IF-CT-10 |
| IF-ORB-49 | ペイロード支援（PDRS・ODS） | データ・指令 | 双方向 | PDRSは、SM GPC、電力分配系（EPDS）、CCTVなど他のオービタ系とインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）ODSのトラス組立は、カメラ・照明組立などのランデブ・ドッキング支援機器を収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） | 下位: IF-CT-11 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-CT-SBD-001](SSD-FD-CT-SBD-001.md) | S帯PM・FM通信（SBD）機能説明書 |
| [SSD-FD-CT-KU-001](SSD-FD-CT-KU-001.md) | Ku帯通信・レーダ（KU）機能説明書 |
| [SSD-FD-CT-UHF-001](SSD-FD-CT-UHF-001.md) | UHF（SPLX・SSOR）（UHF）機能説明書 |
| [SSD-FD-CT-AUD-001](SSD-FD-CT-AUD-001.md) | 音声分配（ACCU・ATU）（AUD）機能説明書 |
| [SSD-FD-CT-CCTV-001](SSD-FD-CT-CCTV-001.md) | 閉回路テレビ（CCTV）機能説明書 |
| [SSD-FD-CT-INST-001](SSD-FD-CT-INST-001.md) | 計装・ペイロード通信（INST）機能説明書 |
| [SSD-FD-CT-OPS-001](SSD-FD-CT-OPS-001.md) | C&T運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図58 C&T 機能構成、関係する公開文書は SSD-CT-REF-001（図59 C&T 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-CT-01〜ACT-CT-09）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、2,106.4 MHzと2,287.5 MHzを主、2,041.9 MHzと2,217.5 MHzを副としていた。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-ovcomm.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162）

> **注記** 下位機能説明書7件（SBD・KU・UHF・AUD・CCTV・INST・OPS）と下位の図への展開を追加した。IF-ORB-16（追跡・通信網）は、S帯PM（IF-CT-01）、S帯FM（IF-CT-02）、Ku帯（IF-CT-03）、UHFシンプレックス（IF-CT-04）の4つのRFの下位IFに分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159）

> **注記** IF-ORB-01（DPS）は、NSPからFF MDMへのアップリンクのコマンド（IF-CT-05）、GPCのダウンリストとPCMMUのOI・PDIデータ（IF-CT-06）、PF MDMからGCILへの通信系の構成の指令（IF-CT-07）の3つの下位IFに分けた。DPSの説明書は下位IFを定義せず、所有側の本書の下位IFを参照する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234）

> **注記** IF-ORB-24（GN&C）は、Ku帯レーダの角度・角速度・距離・距離変化率をMDM経由で送る下位IF（IF-CT-08）とした。GNCの目標位置をSMのアンテナ管理プログラムが指向角に変えてKu帯へ送る逆向きの流れ（ペイロード1データバス・PF1 MDM経由）はDPSとの間のデータとし、Ku帯の機能の文で示した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/178）

> **注記** IF-ORB-43（C/W）とIF-ORB-49（PDRS・ODS）は所有がSSD-FD-CW-001・SSD-FD-PLS-001（7系以外）のため、本書で下位IF（IF-CT-09・IF-CT-11）を定義した。IF-ORB-46（EVA）は本書の所有で、SSORとEMUの無線（SSER）・ISSの無線（SSSR）の下位IF（IF-CT-10）とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184）

> **注記** 電力のIF-ORB-14は、代表として音声分配（ACCUの主系・副系、IF-CT-12）とCCTV（VCUほか、IF-CT-13）への給電の2本を描き、S帯の系統1・2、Ku帯（MNB KU ELEC・MNC KU SIG PROC）、UHF（MNA・MNC UHF EVA）の給電は下位説明書の機能の文と注記で示した。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=47）

> **注記** 検証メモ：SCOMの要約（PDF p200）はTVのダウンリンクをKu帯とS帯FMだけとするが、2.3節（PDF p137）はS帯PMも挙げる。S帯PMで送るのは圧縮した静止画をデータとして送るSSV（PDF p146）であり、本書はS帯PMの映像を静止画のデータの伝送と解した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/200）

> **注記** 検証メモ：SCOMはKu帯の運用帯域を15,250〜17,250 MHzとしつつ、搬送波周波数を「13,755 GHz」「15,003 GHz」と記し、両者は合わない。下位説明書では搬送波の値を引かず、TDRS経由の通信として扱った。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）

> **注記** C&Tの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-CT-001](SSD-REQ-CT-001.md) に示す。

> **注記** C&Tの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-CT-001](SSD-FMEA-CT-001.md) に示す。

> **注記** 地上からの指令とテレメトリの経路のシーケンス図（図85）は [SSD-BEH-ORB-003](SSD-BEH-ORB-003.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-003.sysml）。

> **注記** 通信・追跡系（C&T）の状態と遷移（図139）は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：model/SSD-BEH-ORB-006.sysml）。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Orbiter Communications（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-ovcomm.html
2. NASA SP-504 Section 4 – Communications and Tracking（klabs 転載） — https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm
3. Space Shuttle Guide – Guidance, Navigation and Control — https://www.spaceshuttleguide.com/system/navigation.htm
4. NASA SP-504 Section 4 – Avionics System Functions（klabs 転載） — https://www.klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_02_avionics_system_functions.htm
5. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
6. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
7. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p177） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177
8. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
9. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p159） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159
10. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p450） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/450
11. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
12. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p674） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674
13. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p162） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162
14. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p234） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/234
15. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p178） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/178
16. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p184） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184
17. Orbit Operations Checklist Rev M PCN-10 2-3 KU-BD ACTIVATION（PDF p47） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=47
18. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p200） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/200
19. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p171） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-24・IF-ORB-43・IF-ORB-46・IF-ORB-49 を追加（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（4文。うち本文を改めた1文に注記）（Rev. Q） |
| Rev. E | 2026-10-01 | 下位機能説明書（7件）と図への展開を追加し、IF-ORB-01・14・16・24・43・46・49に下位IF（IF-CT）を付記、注記・検証メモ（IFの分け方、電力IFの代表、TVのダウンリンクの経路、Ku帯の周波数の表記）を追加（Rev. R） |
| Rev. F | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記（Rev. V） |
| Rev. G | 2026-10-02 | 要求文書 SSD-REQ-CT-001 への参照を注記（Rev. W） |
| Rev. H | 2026-10-02 | 故障解析表 SSD-FMEA-CT-001 への参照を注記（Rev. X） |
| Rev. I | 2026-10-02 | シーケンス定義書 SSD-BEH-ORB-003 への参照を注記（Rev. AB） |
| Rev. J | 2026-10-04 | IF-ORB-01 に下位 IF-CT-21・IF-CT-22・IF-CT-23・IF-CT-24・IF-CT-25 を付記した（Rev. AU） |
| Rev. K | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
