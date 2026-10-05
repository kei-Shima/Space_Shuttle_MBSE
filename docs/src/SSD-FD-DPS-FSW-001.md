# 飛行ソフトウェア・MMU（FSW）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-FSW-001 |
| 表題 | 飛行ソフトウェア・MMU（FSW）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

PASS（主飛行ソフトウェア）とBFS（予備飛行システム）の構成、主機能・OPS・メジャーモードとメモリ構成、ソフトウェアを格納する2台のMMUとIPL・OPS遷移でのロード、BFSの追従とエンゲージを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-FSW-01 | PASSは全飛行段階で機体を飛ばし機体・ペイロード系を管理するための全プログラムを持つ主ソフトウェアで、上昇・再突入では5台中4台のGPCに同じPASSを搭載してGNC機能を同時・冗長に実行する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244） |
| F-DPS-FSW-02 | BFSはPASSと別の会社が作った別のソフトウェアで、PASSの共通的な誤りや多重の誤りで機体の制御を失ったときに制御を引き継ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244） |
| F-DPS-FSW-03 | システムソフトウェア（FCOS・ユーザインタフェースプログラム・システム制御プログラム）は常にGPC主記憶にあって入出力、メモリ構成のロード、計時、離散入力の監視を行い、データバスの指令元・聴取の割当ても管理する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244） |
| F-DPS-FSW-04 | 応用ソフトウェアはGNC・SM・ペイロード（PL）の3つの主機能に分かれ、冗長セットの同期はGNCだけで起こり、SMは一度に1台のGPCだけが処理する単独の主機能である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245） |
| F-DPS-FSW-05 | 主機能はOPSに、OPSはメジャーモードに分かれ、上昇用のメモリ構成1はOPS 1（上昇）とOPS 6（RTLS）を併せ持つ（RTLSで新しいソフトウェアをロードする時間がないため）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245） |
| F-DPS-FSW-06 | OPS遷移ではMMUから応用ソフトウェアをロードし、同じ主機能の中の遷移では主機能ベース（MFB）を残してOPSオーバレイだけを書き替え、メモリ構成はIPL直後のCONFIG 0のほかに8種類ある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/265） |
| F-DPS-FSW-07 | MMUは2台あって1台に128 Mbitを記憶でき、重要なプログラムとデータは両方のMMUに消去保護して格納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） |
| F-DPS-FSW-08 | MMUは基本の飛行ソフトウェアのほか、一部の表示の背景書式とコードと、SM GPCの故障に備えて選んだデータを定期的に書くチェックポイントを格納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） |
| F-DPS-FSW-09 | MMU 1はパネルO14のスイッチでMNA、MMU 2はパネルO15のスイッチでMNBから給電され、MMU 1はアビオニクスベイ1、MMU 2はベイ2にあって水冷却ループのコールドプレートで冷やされ、消費電力は83 W（うちSSMMが9 W）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） |
| F-DPS-FSW-10 | IPLではパネルO6のIPL SOURCEスイッチでソフトウェア源のMMUを選び、OPS遷移では主機能ごとに割り当てたMMU（SPEC 1 DPS UTILITY）を使い、選んだMMUが使用中か2回失敗すればもう一方を自動で試す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/266） |
| F-DPS-FSW-11 | BFSのソフトウェアは全体が1台のGPCに収まって大容量記憶を使う必要がないが、BFS GPCが故障して新しいBFS GPCをIPLする場合に備えてMMUにも格納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/247） |
| F-DPS-FSW-12 | エンゲージ前のBFSは飛行重要バスでPASSの要求と応答を聴取してPASSに同期し、2本以上のストリングを聴取している間（PASSの追従）は状態ベクトルなど機体を飛ばすための情報を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/247） |
| F-DPS-FSW-13 | BFSのエンゲージは、OUTPUTスイッチがBACKUPのときにCDRまたはPLTのRHCのBFS ENGAGE押しボタン（3接点すべてが必要）を押して行い、PASSは制御を明け渡す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-28 | 能動熱制御系（ATCS） | データ・指令 | 送信 | FES制御器は上昇時の高度140,000 ft超でBFS計算機が自動でオンにし、再突入時の100,000 ftでオフにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389）アンモニア制御器は、オービタがMM 304で高度120,000 ftを降下通過するとき（RTLSアボートではMM 602への移行時）にBFS計算機がオンにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392） | 上位: IF-ORB-19 下位: IF-TCS-18 下位: IF-TCS-19 下位: IF-TCS-21 |
| IF-ECL-29 | 大気再生系（ARS） | データ・指令 | 双方向 | スイッチをGPC位置にすると、GPCが水冷却ループのポンプを指令する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378）ポンプの出口圧力とポンプ前後の差圧はシステム管理用GPCへ送られ、DPS表示（DISP 88 APU/ENVIRON THERM）に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）キャビン熱交換器下流の温度センサのデータはAIR TEMP計器に直接送られ、SM SYS SUMM 1とSPEC 66 ENVIRONMENTにも表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788）キャビン空気のCO2分圧（PPCO2）をSM GPCへ送り、SM OPS 2・4のDISP 66（ENVIRONMENT）に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） | 上位: IF-ORB-19 下位: IF-ARS-30 下位: IF-ARS-31 下位: IF-ARS-25 下位: IF-ARS-26 下位: IF-ARS-27 下位: IF-ARS-28 下位: IF-ARS-29 下位: IF-ARS-37 |
| IF-EPS-09 | 燃料電池発電装置（FCP×3） | データ・指令 | 双方向 | 自動パージでは、GPCがパージ配管ヒータを入れて温度を確認し、燃料電池1・2・3のパージ弁を順に2分間開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326） | 上位: IF-ORB-20 |
| IF-DPS-04 | 誘導・航法・制御（GN&C） | データ・指令 | 受信 | CDRとPLTのRHCにあるBFS ENGAGE押しボタンの信号を予備飛行制御器（BFC）へ送り、BFCがエンゲージの論理を処理してBFSに機体の制御を移す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248）誤ってエンゲージしないよう押しボタンを押すには約8 lbの力を要し、軌道上ではBFSのOUTPUTスイッチの再構成で実質的に無効にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/273） | 上位: IF-ORB-02 |
| IF-DPS-12 | 警報系（C/W） | データ・指令 | 送信 | GPCはMDMを通じた12の離散入力でC&Wのマスタアラームの論理回路を使い、6つで予備C&W灯とC&W音（クラス2）を、6つでSMアラート音（クラス3）を作動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=58）FDAソフトウェアが限界外を検出すると、DPS表示に故障メッセージを出し、前方またはペイロードMDM経由でC&W系A・Bに信号を送ってMASTER ALARM灯・予備C&W灯・警報音を作動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） | 上位: IF-ORB-42 |
| IF-DPS-13 | ペイロード支援（PDRS・ODS） | データ・指令 | 双方向 | RMSのMCIUは、SM GPC、表示・操作器、RMSの間の情報のやり取りを取り扱って評価する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689）打上げデータバス1は、軌道上でSM GPCがRMSの制御器とのインタフェースに使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233） | 上位: IF-ORB-48 |
| IF-DPS-15 | 汎用計算機・冗長セット | データ・指令 | 送信 | IPL後のGPCにはシステムソフトウェアだけがあり、応用ソフトウェアはOPS遷移の際にMMUからロードする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/265）各MMUは1本の大容量記憶データバスにだけつながり、そのバスは5台のGPCすべてにつながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237） | — |
| IF-APU-12 | APU制御器 | データ・指令 | 受信 | APU制御器は燃料タンクの温度とGN2圧力をGPCへ送り、GPCが燃料量を計算して専用のMEDS表示のAPU FUEL/H2O QTY計に示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85）潤滑油ポンプの出口圧力・出口温度とWSBからの戻り温度は、APU制御器からGPCを経てBFS SM SYS SUMM 2に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） | 上位: IF-ORB-23 |
| IF-APU-13 | 循環ポンプ・熱調整 | データ・指令 | 双方向 | HYD CIRC PUMPスイッチがGPCのとき、SM GPCは油圧配管の温度とアキュムレータ圧力に基づく制御プログラムで循環ポンプを入り切りする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103）循環ポンプの出口圧力と油圧配管・機器の温度は、PASSのSM HYD THERMAL表示（DISP 87）に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） | 上位: IF-ORB-23 |
| IF-APU-14 | 水噴霧ボイラ | データ・指令 | 受信 | 各ボイラのGN2容器と水タンクの冗長な圧力・温度センサの値を制御器を通してSM GPCへ送り、GPCが水タンクの量を計算して専用のMEDS表示へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/97）ボイラの水量・窒素タンク圧力・調圧器圧力・窒素タンク温度は、軌道上ではSM APU/HYD表示（DISP 86）の右側に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） | 上位: IF-ORB-23 |
| IF-CT-23 | CT：S帯PM・FM通信 | データ・指令 | 双方向 | PCMMU のテレメトリは NSP を経て SSR へも送られ、記録された後 S 帯 FM または Ku 帯でダウンリンクされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197）2台の SSR はデジタル音声と PCM データの記録・再生に使い、MMU に内蔵されるので、パネル A1 では Ku 帯・S 帯 FM で再生する源を「MMU1」「MMU2」と表す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199） | 上位: IF-ORB-01 |
| IF-CT-24 | CT：Ku帯通信・レーダ | データ・指令 | 送信 | Mode 1 のリターンリンクは3チャネルで、Ch 1 は運用データ 192 kbps（テレメトリ 128 kbps と A/G 音声 32 kbps×2）、Ch 2 は 2 Mbps（ペイロード・OCA・MMU 1/2 の SSR から選ぶ）、Ch 3 は 50 Mbps の PL MAX（DTV など）である。Mode 2 の Ch 3 は 4 Mbps（実時間の CCTV 映像などから選ぶ）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）2台の SSR はデジタル音声と PCM データの記録・再生に使い、MMU に内蔵されるので、パネル A1 では Ku 帯・S 帯 FM で再生する源を「MMU1」「MMU2」と表す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199） | 上位: IF-ORB-01 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 Software（PDF p244〜249）：PASSとBFSの構成、システムソフトウェアと応用ソフトウェア、主機能・OPS・メジャーモード、BFSのエンゲージを示し、p236〜237とp265〜267でMMUとOPS遷移を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-51〜A7-53（PDF p1313〜1319）：BFSの故障・エンゲージ不可・疑わしい状態の定義と上昇・再突入と軌道上のBFSの管理を定め、A7-14〜A7-16でG3アーカイブ・SM OPS 4・GPCのメモリ書き込みを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1313） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.2a I/O ERROR MMU 1(2)（PDF p156）：表示のロールイン、OPS遷移、SMチェックポイントの最中のMMUの入出力エラーの切り分けと、GPCの指令元の入れ替えを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=156） |
| DP-05 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.7節 Backup Flight System（PDF p60）：1986〜1987年のCILの書き直しで、BFSを独立のサブシステムから外してDPSのCILに統合したことを記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=60） |
| DP-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 4-6 G2 TO G8 TRANSITION（PDF p108）：飛行制御系の点検のためのG8へのOPS遷移（メモリ構成8、MMU 2台をON）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=108） |
| DP-07 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 4.5節 Backup C&W（PDF p70）：予備C&WはGPCのFDAまたはGNCのソフトウェアが限界外を検出してMDM経由でC&W系A・Bに信号を送るソフトウェアの系であり、限界はSPEC 60で変えられると述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） |
| DP-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | MMU CONTINGENCY PWRUP（PDF p250）：機体の電力の喪失で止まったMMUを、IFMのブレークアウトボックスと直流電源ケーブルで回復する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=250） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.8節（PDF p42）：BFSは打上げ前にMM 101で4本すべての飛行重要ストリングでPASSに追従し、上昇・再突入ではすべてのメジャーモードを正しく進んだと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42） |
| DP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p51：BFSが車輪停止からOPS 000への遷移までの間に19件のGPCの「B1」エラーを記録し、ユーザノートで説明されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：運用飛行規則A7-106（2002年版）は、テープ式のMass Memory UnitとSSMMの両方の運用を定め、SSMMはテープ式の置き換えであり、Modular Memory UnitがSSMMとSSRを収めるとする。本書はSCOM（OI-33）のSSMMの構成によった。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1329）

> **注記** 上昇中にBFSをエンゲージした場合でも、PASSのIMUの基準を確立し直して約2時間で軌道上のPASSのGPCを回復でき、すべてのPASS GPCのダンプと再ロードの後にパネルF6のBFC DISENGAGEスイッチでBFSを切り離す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249）

> **注記** 本書の解釈：MMUはDPSのハードウェアであるが、格納するのが飛行ソフトウェアとチェックポイントであり、IPL・OPS遷移でソフトウェアをGPCへロードする役割が主であるため、飛行ソフトウェアと同じブロックとした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p244） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244
2. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p245） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/245
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p265） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/265
4. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p237） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237
5. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p266） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/266
6. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p247） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/247
7. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p248） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248
8. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p389） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389
9. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Loop Flow（PDF p378） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/378
11. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
12. Shuttle Crew Operations Manual 4.1 Instrument Markings（USA007587 Rev. A CPN-1、PDF p788） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/788
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
14. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p326） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/326
15. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p273） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/273
16. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 4章 C&W Electronics（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=58
17. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.5節 Backup C&W（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70
18. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p689） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689
19. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
20. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p85） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85
21. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p88） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88
22. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p103） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103
23. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p97） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/97
24. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p95） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95
25. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-106 MMU OPERATIONS（PDF p1329） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1329
26. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p249） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/249
27. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
28. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p197） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197
29. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p199） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199
30. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p171） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-CT-23・IF-CT-24 を足した（GAP-09 の解消）（Rev. AU） |
