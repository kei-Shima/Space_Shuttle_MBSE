# データ処理系（DPS）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-DPS-001 |
| 表題 | データ処理系（DPS）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

DPSに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、DPSの機能説明書（SSD-FD-DPS-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-01 | システムは、オービタ、2本の SRB、推進薬を収める外部タンク、3基の SSME の4つの主要素で構成すること。 |
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |
| REQ-SYS-16 | 地上支援設備に接続していない間、オービタ・外部タンク・SRB・ペイロードの電力をすべて機上で供給すること。 |

## 4. DPS要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-DPS-01 | 同一の GPC 5台を持ち、上昇・再突入では4台以上の GPC を冗長セットとして同じ GNC ソフトウェアを実行させ、出力を照合すること。 | GPC 5（冗長セット 4＋BFS 1） | オービタには同一のIBM AP-101S型GPCが5台あり、データバス網を通じて接続機器とデータを送受信し、機上のデータ処理の主体となるソフトウェアを収める（SCOM 2.6節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226）GPCの運用モードには冗長セット・共通セット・単独（simplex）があり、冗長セットでは2台以上のGPCが同じ入力で同じGNCソフトウェアを実行して同じ出力を出し、SMとペイロードの主機能は常に単独のGPCで処理する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229） | REQ-SYS-10 | F-DPS-GPC-01・F-DPS-GPC-10・F-DPS-FSW-01 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-DPS-02 | 冗長セットの各 GPC は処理結果を毎秒数百回照合し、同期点を満たさない GPC を残りの GPC の票決で直ちに外し、故障を乗員に示すこと。 | 照合 毎秒数百回 | 冗長セットの各GPCは同期した段階で動作して処理結果を毎秒数百回照合し、同期点を満たさないGPCは残りのGPCが直ちに冗長セットから票決で外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230）GPC STATUSマトリクス（パネルO1の5×5の灯）は各GPCの故障票を示し、黄色の対角灯（自己故障）が点灯するとパネルF7のGPC警報灯とMASTER ALARMが点灯し、DPS表示にGPCの故障メッセージが出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230） | REQ-SYS-10 | F-DPS-GPC-09・F-DPS-GPC-11・F-DPS-GPC-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-DPS-03 | 各 GPC には3つの主母線から RPC を通じて給電し、主母線または必須母線を1つ失っても GPC が電力を失わないこと。 | GPC ごとの RPC 3 | 各GPCのGENERAL PURPOSE COMPUTER POWERスイッチ（パネルO6）はESS 1BC・2CA・3ABの電力でRPCを働かせてMN A・B・Cの直流で給電し、GPCごとにRPCが3個あるため主母線または必須母線を2つ失っても正常に動作し、1台の消費電力は560 Wである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） | REQ-SYS-10・REQ-SYS-16 | F-DPS-GPC-07・F-DPS-GPC-02 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-DPS-04 | PASS の共通的な誤りに備え、別の会社が作った BFS を1台の GPC に持ち、PASS が機体の制御を失ったときに乗員の操作で制御を引き継げること。 | BFS 1（エンゲージは RHC の押しボタン） | BFSはPASSと別の会社が作った別のソフトウェアで、PASSの共通的な誤りや多重の誤りで機体の制御を失ったときに制御を引き継ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244）BFSのエンゲージは、OUTPUTスイッチがBACKUPのときにCDRまたはPLTのRHCのBFS ENGAGE押しボタン（3接点すべてが必要）を押して行い、PASSは制御を明け渡す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248） | REQ-SYS-10 | F-DPS-FSW-02・F-DPS-FSW-11・F-DPS-FSW-12・F-DPS-FSW-13・F-DPS-OPS-02 | PH-2（上昇）・PH-6（再突入） | A（解析） |
| REQ-DPS-05 | 飛行ソフトウェアと重要なデータは2台の MMU の両方に消去保護して格納し、OPS 遷移と GPC の再 IPL でロードできること。 | MMU 2（各 128 Mbit） | MMUは2台あって1台に128 Mbitを記憶でき、重要なプログラムとデータは両方のMMUに消去保護して格納する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237）IPLではパネルO6のIPL SOURCEスイッチでソフトウェア源のMMUを選び、OPS遷移では主機能ごとに割り当てたMMU（SPEC 1 DPS UTILITY）を使い、選んだMMUが使用中か2回失敗すればもう一方を自動で試す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/266） | REQ-SYS-10 | F-DPS-FSW-03・F-DPS-FSW-04・F-DPS-FSW-05・F-DPS-FSW-06・F-DPS-FSW-07・F-DPS-FSW-08・F-DPS-FSW-09・F-DPS-FSW-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-DPS-06 | 飛行重要バス8本を4つのストリングに分け、同種の GNC 機器を別々の MDM とバスに配線して、1本のストリングを失っても運用を続け、2本目を失っても安全に帰還できること。 | FC バス 8（ストリング 4） | 飛行重要（FC）バスは8本で2本ずつFCストリングを作り、FC1〜4はFF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に、FC5〜8は同じFF・FA MDMとMEC 2台・EIU 3台につながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232）同種のGNC機器は複数台が別々のMDMと飛行重要バスに配線され、1本のストリングを失っても通常の運用を続け、2本目を失っても安全に帰還できるよう機器を分けている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232） | REQ-SYS-10 | F-DPS-BUS-01・F-DPS-BUS-02・F-DPS-BUS-03・F-DPS-BUS-04・F-DPS-BUS-05・F-DPS-BUS-07 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |
| REQ-DPS-07 | MDM は GPC の指令と機体各系のデータを相互に変換し、2つの主母線から冗長に給電され、ポートの故障ではもう一方のポートへ切り替えられること。 | DPS の MDM 13・OI MDM 7 | MDMはGPCのシリアルデジタル指令を離散・デジタル・アナログの並列指令に変換し、逆に機体各系のデータをシリアルデジタルに変換してGPCへ送り、各MDMは別々のバスにつながる2つの冗長なMIAを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235）ポートモードはMDMの使うMIAポートをソフトウェアで切り替える方法で、FC MDMは通常ポート1で動作し、ポート1が故障すると乗員がポート2を選び、ストリングの2台のMDMを同時に切り替える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235）MDMはパネルO6のMDM PL1・PL2・FLT CRIT AFT・FLT CRIT FWDスイッチで2つの主母線から冗長に給電され、どちらの主母線または電源を失っても機能を失わず、電源を切るとサブシステムへの離散・アナログ指令がリセットされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） | REQ-SYS-10 | F-DPS-BUS-06・F-DPS-BUS-08・F-DPS-BUS-09・F-DPS-BUS-10・F-DPS-BUS-11・F-DPS-BUS-12・IF-DPS-10・IF-DPS-11 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-DPS-08 | SSME への指令は各エンジン専用の EIU が4つの GPC から受けて検査し、検証した指令だけをエンジン制御器へ渡すこと。 | EIU 3（各エンジン専用） | 各SSME制御器は専用のEIU（GPCおよび制御器とつながる特殊なMDM）を通じてGPCの指令を受け、各EIUは1基のSSMEの制御器とだけ通信し、3台のEIUの間にインタフェースはない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587）EIUは受けたエンジン指令の伝送誤りを検査し、検証した指令だけをCIAへ渡し、CIA 3の選択論理で4つの入力指令を3つの出力指令にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588） | REQ-SYS-10・REQ-SYS-02 | F-DPS-ASC-02・F-DPS-ASC-03・F-DPS-ASC-04・F-DPS-ASC-05・F-DPS-ASC-06 | PH-1（打上げ前）・PH-2（上昇） | D（実証） |
| REQ-DPS-09 | SRB の点火と、SRB・ET の分離の火工品は、GPC の arm・fire 1・fire 2 の3信号を MEC が整形して起爆すること。 | MEC 2・信号 3 | 固体ロケットモータの点火指令はGPCがMECを通じて各SRBのS&A装置のNSI起爆器へ送り、PICの発火に要するarm・fire 1・fire 2の3信号はGPCで生じ、MECが28 VDCの信号に整形する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74）MECは、SRBを外部タンクから、外部タンクをオービタから切り離す火工品の起爆を開始する（SCOM 2.16節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） | REQ-SYS-01・REQ-SYS-15 | F-DPS-ASC-01・F-DPS-ASC-07・F-DPS-ASC-08・F-DPS-ASC-09・F-DPS-ASC-10・F-DPS-ASC-11・F-DPS-ASC-12・IF-DPS-07・IF-DPS-08・IF-DPS-09 | PH-1（打上げ前）・PH-2（上昇） | D（実証） |
| REQ-DPS-10 | 表示・キーボードは4台の IDP と11台の MDU から成る MEDS とし、MDU は2台の IDP につながって選んだ IDP との通信を失えば自動でもう一方へ切り替わること。 | IDP 4・MDU 11・ADC 4・キーボード 3 | MEDSはIDP 4台、MDU 11台、ADC 4台、キーボード3台から成り、DKデータバスでGPCと通信する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237）MDUは11台（パネルF6・F7・F8・R12と後部操縦席）あり、各MDUは2つのポートで2台のIDPにつながるが、CRT MDUは主ポートだけを使い、1台のIDPと1本のDKバスに対応する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/239）MDUは通常主ポートで自動ポート再構成モードとし、選択中のIDPとの通信を失うと自動で他方のポートに切り替わり、両ポートとも通信を失うと「MDU IS AUTONOMOUS」を表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/256） | REQ-SYS-10 | F-DPS-MEDS-01・F-DPS-MEDS-02・F-DPS-MEDS-03・F-DPS-MEDS-04・F-DPS-MEDS-05・F-DPS-MEDS-06・F-DPS-MEDS-07・F-DPS-MEDS-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-DPS-11 | GPC 群に GMT・MET の基準時刻を与える MTU は、冗長な2台の発振器と3つの累算器を持ち、2つの必須母線から給電されること。 | 発振器 2・累算器 3（GPC は 1 ms 未満で同期） | MTUは2台の発振器を冗長に持つ水晶制御の周波数源で、一方の発振器の信号を整形器と周波数ドライバを通して3つのGMT/MET累算器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240）GPCはまずMTUの累算器1を時刻源とし、毎秒自身の内部時刻と照合して差が1 ms未満なら内部時計を累算器の時刻に合わせ、許容外なら他の累算器、さらに番号の最も小さいGPCを試す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241）MTUはパネルO13の遮断器ESS 1BC MTU AとESS 2CA MTU Bで冗長に給電され、パネルO6のMASTER TIMING UNITスイッチがAUTOのとき、一方の発振器の時刻信号が許容外になると自動で他方に切り替わり、通常は発振器2を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） | REQ-SYS-10 | F-DPS-MTU-01・F-DPS-MTU-02・F-DPS-MTU-03・F-DPS-MTU-04・F-DPS-MTU-06・F-DPS-MTU-08 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-DPS-12 | ランデブー・ペイロード回収・安全上重要な噴射などには冗長な GNC GPC を用い、故障した GPC は HALT・電源断で冗長セットから外すこと。 | 冗長な GNC GPC を要する運用 | ランデブー・近傍運用、ペイロード回収、有人自由飛行体を伴うEVA、安全上重要なOMS/RCS噴射には冗長なGNC GPCを要し、BFSはPASSのDPS冗長度要求に数えない（A7-11・A7-12）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1302）故障したGPCは、上昇（MM 102〜104）・再突入（MM 304・305・601〜603）ではできるだけ早くHALTにし、それ以外ではできるだけ早く電源を切り、軌道上ではA7-13・A7-102に従ってDPSを構成して回復を試みる（A7-3）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293） | REQ-SYS-10 | F-DPS-OPS-01・F-DPS-OPS-03・F-DPS-OPS-04・F-DPS-OPS-05・F-DPS-OPS-06・F-DPS-OPS-07・F-DPS-OPS-11 | PH-3（軌道） | D（実証） |
| REQ-DPS-13 | GPC・IDP・MMU などの喪失の数に応じて、DPS の Go/No-Go 基準で MDF・次の PLS を判断し、EOM まで続けるのに必要なデータ経路と軌道離脱用ソフトウェアの独立した2つの源を保つこと。 | GPC 2台の喪失で MDF | EOMまで続けるには、回復不能と宣言したGPCが1台以内であること、必要なLRUと表示の冗長度を支えるデータ経路、軌道離脱用PASSソフトウェアの独立した2つの源（MMU 2台、またはG3アーカイブ／G3フリーズドライのGPCとMMU 1台）を要する（A7-201）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1338）DPSのGo/No-Go表の根拠では、多重故障は一般的な故障の兆候でありうるとしてGPC 2台・IDP 2台（MEDSの機体）の喪失でMDFとし、MMU 2台の喪失も以後のGPC・DEUの回復ができなくなるためMDFとする（A7-1001）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1341） | REQ-SYS-14 | F-DPS-OPS-08・F-DPS-OPS-09・F-DPS-OPS-10・F-DPS-OPS-12 | PH-2（上昇）・PH-3（軌道） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

DPSの機能説明書 8 件の機能行 91 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 70 件が要求から参照され、21 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-DPS-001 | F-DPS-01 | DPSのハードウェアは、5台のGPC、大容量記憶用の2台のモジュラメモリユニット（MMU）、GPCと機体各系の間のデータを運ぶシリアルデジタルデータバス網、オービタ用20台・SRB用4台のMDM、SSMEへ指令する3台のSSMEインタフェースユニット、多機能電子表示系（MEDS）などから成る。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-DPS-001 | F-DPS-02 | 5台のGPCはいずれもIBM AP-101Sで、中央処理装置（CPU）と入出力プロセッサ（IOP）で構成される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-DPS-001 | F-DPS-03 | 上昇・再突入などの飛行重要フェーズでは、4台のGPCが同一コードを同時に実行して入出力を同期する冗長セットを構成し、5台目はRockwellが独立に開発したバックアップ飛行システム（BFS）用に確保される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-DPS-001 | F-DPS-04 | BFSは、乗員の操作によってのみ起動（エンゲージ）できる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-DPS-001 | F-DPS-05 | 機上の全サブシステムは少なくとも2本のデータバスに冗長接続され、データバスは24本あり、マルチプレクサを介して各系が共用する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-01 | DPSは、GSE・打上げ処理システムとSRBとのインタフェースのための2台のデータバス絶縁増幅器と、2台のマスターイベントコントローラ（MEC）を含む（SCOM 2.6節）。 | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-02 | 各SSME制御器は専用のEIU（GPCおよび制御器とつながる特殊なMDM）を通じてGPCの指令を受け、各EIUは1基のSSMEの制御器とだけ通信し、3台のEIUの間にインタフェースはない。 | REQ-DPS-08 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-03 | 冗長セットの各GPCは割り当てられた飛行重要バス（公称はGPC 1〜4がFC5〜8）でエンジン指令を出すため、各EIUは4つの指令を受ける。 | REQ-DPS-08 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-04 | EIUは受けたエンジン指令の伝送誤りを検査し、検証した指令だけをCIAへ渡し、CIA 3の選択論理で4つの入力指令を3つの出力指令にする。 | REQ-DPS-08 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-05 | EIUはパネルO17のEIUスイッチで給電され、EIUが電力を失うと対応するエンジンはスロットル・停止・ダンプの指令を受けられず、GPCとも通信できない。 | REQ-DPS-08 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-06 | BFS（GPC 5）はSSMEハードウェアインタフェースプログラムを持ち、エンゲージ時はFC5〜8でEIUに指令してデータを要求し、EIUとエンジン制御器を通る指令の流れは4台の冗長セットのときと同じである。 | REQ-DPS-08 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-07 | 固体ロケットモータの点火指令はGPCがMECを通じて各SRBのS&A装置のNSI起爆器へ送り、PICの発火に要するarm・fire 1・fire 2の3信号はGPCで生じ、MECが28 VDCの信号に整形する。 | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-08 | MECは、SRBを外部タンクから、外部タンクをオービタから切り離す火工品の起爆を開始する（SCOM 2.16節）。 | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-09 | 打上げデータバス2本は主に地上点検と打上げ段階に使い、5台のGPCをGSE・打上げ処理システム、オービタのLF1・LM1・LA1 MDM、左右のSRBのMDM（LL1・LL2・LR1・LR2）に結ぶ。 | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-10 | SRB MDMはSRB内にあって受動のコールドプレートで冷やされ、MECの回路で制御されるSRBバスA・Bから給電されて乗員の操作器はなく、LF・LM・LA MDMは打上げ前試験バスから給電される。 | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-11 | 打上げMDMのポートは乗員が切り替えられないが、打上げ前にLF1またはLA1で入出力エラーを検出すると自動で切り替わる。 | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | F-DPS-ASC-12 | 軌道投入後はパネルO17のスイッチで4台のATVC、3台のEIU、2台のMECの電源をすべて切る（SCOM 2.16節）。 | REQ-DPS-09 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-01 | データバス網はGPCと機体各系の間でシリアルデジタルの指令とデータを運び、飛行重要・ペイロード・打上げ・大容量記憶・表示/キーボード・計装/PCMMU・計算機間通信の7群から成る。 | REQ-DPS-06 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-02 | 計装/PCMMUバスを除く各群のバスは5台のGPCすべてにつながるが、各バスで指令を送るのは一度に1台のGPCで、受信は複数のGPCが同時にできる。 | REQ-DPS-06 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-03 | 飛行重要（FC）バスは8本で2本ずつFCストリングを作り、FC1〜4はFF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に、FC5〜8は同じFF・FA MDMとMEC 2台・EIU 3台につながる。 | REQ-DPS-06 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-04 | 同種のGNC機器は複数台が別々のMDMと飛行重要バスに配線され、1本のストリングを失っても通常の運用を続け、2本目を失っても安全に帰還できるよう機器を分けている。 | REQ-DPS-06 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-05 | 上昇・再突入では冗長セットの4台のPASS GNC GPCにそれぞれ別のストリングを割り当て、各GPCは自分のストリングの指令元となり、他のGPCは聴取して4本すべてのデータの写しを得る。 | REQ-DPS-06 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-06 | ペイロードバス2本は5台のGPCをペイロードMDM 2台とPDIに結び、計装/PCMMUバス5本は各GPCに1本ずつ専用で、2台のPCMMUへダウンリストを送る。 | REQ-DPS-07 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-07 | 計算機間通信（ICC）バスは5本で、PASSのGPCは入出力エラー、故障メッセージ、GPC STATUSマトリクスのデータ、キーボード入力、MTUの時刻、状態ベクトルなどを交換する。 | REQ-DPS-06 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-08 | MDMはGPCのシリアルデジタル指令を離散・デジタル・アナログの並列指令に変換し、逆に機体各系のデータをシリアルデジタルに変換してGPCへ送り、各MDMは別々のバスにつながる2つの冗長なMIAを持つ。 | REQ-DPS-07 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-09 | オービタのMDMは20台で、DPSのMDM 13台（FF 1〜4、FA 1〜4、PL 1・2、LF1・LM1・LA1）はGPCに直結し、残る7台は計装系のOI MDM（OF1〜4、OA1〜3）でPCMMUへ計装データを送る。 | REQ-DPS-07 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-10 | ポートモードはMDMの使うMIAポートをソフトウェアで切り替える方法で、FC MDMは通常ポート1で動作し、ポート1が故障すると乗員がポート2を選び、ストリングの2台のMDMを同時に切り替える。 | REQ-DPS-07 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-11 | MDMはパネルO6のMDM PL1・PL2・FLT CRIT AFT・FLT CRIT FWDスイッチで2つの主母線から冗長に給電され、どちらの主母線または電源を失っても機能を失わず、電源を切るとサブシステムへの離散・アナログ指令がリセットされる。 | REQ-DPS-07 | — |
| SSD-FD-DPS-BUS-001 | F-DPS-BUS-12 | FF・PL・LF・LM MDMは前方アビオニクスベイで水冷却ループの、LA・FA MDMは後部アビオニクスベイでフレオン冷却ループのコールドプレートで冷やされ、MDMは13×11×7 in、約38.5 lb、消費電力80 W未満である。 | REQ-DPS-07 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-01 | PASSは全飛行段階で機体を飛ばし機体・ペイロード系を管理するための全プログラムを持つ主ソフトウェアで、上昇・再突入では5台中4台のGPCに同じPASSを搭載してGNC機能を同時・冗長に実行する。 | REQ-DPS-01 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-02 | BFSはPASSと別の会社が作った別のソフトウェアで、PASSの共通的な誤りや多重の誤りで機体の制御を失ったときに制御を引き継ぐ。 | REQ-DPS-04 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-03 | システムソフトウェア（FCOS・ユーザインタフェースプログラム・システム制御プログラム）は常にGPC主記憶にあって入出力、メモリ構成のロード、計時、離散入力の監視を行い、データバスの指令元・聴取の割当ても管理する。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-04 | 応用ソフトウェアはGNC・SM・ペイロード（PL）の3つの主機能に分かれ、冗長セットの同期はGNCだけで起こり、SMは一度に1台のGPCだけが処理する単独の主機能である。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-05 | 主機能はOPSに、OPSはメジャーモードに分かれ、上昇用のメモリ構成1はOPS 1（上昇）とOPS 6（RTLS）を併せ持つ（RTLSで新しいソフトウェアをロードする時間がないため）。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-06 | OPS遷移ではMMUから応用ソフトウェアをロードし、同じ主機能の中の遷移では主機能ベース（MFB）を残してOPSオーバレイだけを書き替え、メモリ構成はIPL直後のCONFIG 0のほかに8種類ある。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-07 | MMUは2台あって1台に128 Mbitを記憶でき、重要なプログラムとデータは両方のMMUに消去保護して格納する。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-08 | MMUは基本の飛行ソフトウェアのほか、一部の表示の背景書式とコードと、SM GPCの故障に備えて選んだデータを定期的に書くチェックポイントを格納する。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-09 | MMU 1はパネルO14のスイッチでMNA、MMU 2はパネルO15のスイッチでMNBから給電され、MMU 1はアビオニクスベイ1、MMU 2はベイ2にあって水冷却ループのコールドプレートで冷やされ、消費電力は83 W（うちSSMMが9 W）である。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-10 | IPLではパネルO6のIPL SOURCEスイッチでソフトウェア源のMMUを選び、OPS遷移では主機能ごとに割り当てたMMU（SPEC 1 DPS UTILITY）を使い、選んだMMUが使用中か2回失敗すればもう一方を自動で試す。 | REQ-DPS-05 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-11 | BFSのソフトウェアは全体が1台のGPCに収まって大容量記憶を使う必要がないが、BFS GPCが故障して新しいBFS GPCをIPLする場合に備えてMMUにも格納する。 | REQ-DPS-04 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-12 | エンゲージ前のBFSは飛行重要バスでPASSの要求と応答を聴取してPASSに同期し、2本以上のストリングを聴取している間（PASSの追従）は状態ベクトルなど機体を飛ばすための情報を保つ。 | REQ-DPS-04 | — |
| SSD-FD-DPS-FSW-001 | F-DPS-FSW-13 | BFSのエンゲージは、OUTPUTスイッチがBACKUPのときにCDRまたはPLTのRHCのBFS ENGAGE押しボタン（3接点すべてが必要）を押して行い、PASSは制御を明け渡す。 | REQ-DPS-04 | — |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-01 | オービタには同一のIBM AP-101S型GPCが5台あり、データバス網を通じて接続機器とデータを送受信し、機上のデータ処理の主体となるソフトウェアを収める（SCOM 2.6節）。 | REQ-DPS-01 | — |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-02 | GPC 1・4は中デッキ前方のアビオニクスベイ1、GPC 2・5はベイ2、GPC 3は中デッキ後方のベイ3にあり、アビオニクスベイのファン（各ベイ2台、同時に使うのは1台）による強制空冷を受ける。 | REQ-DPS-03 | — |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-03 | アビオニクスベイのファンが2台とも故障すると、GPCは25分（14.7 psi）または17分（10.2 psi）で過熱し、以後の動作は保証されない（SCOM 2.6節の注意）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-01・REQ-DPS-03・REQ-DPS-02）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-04 | 各GPCは中央処理装置（CPU）と入出力プロセッサ（IOP）を1つの筐体に収め、筐体は19.55×7.62×10.2 in、質量は約60 lbである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-01・REQ-DPS-03・REQ-DPS-02）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-05 | 主記憶は揮発性であるが、GPCの電源断の間は電池パックが内容を保持し、記憶容量256 kフルワードのうち通常は下位128 kフルワードをソフトウェアの処理に使う。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-01・REQ-DPS-03・REQ-DPS-02）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-06 | IOPはバス制御素子（BCE）で24本のデータバスにつながり、機体各系への指令を整形・送信し、応答データを受信・検証して、CPUや他のGPCとのインタフェースの状態を保つ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-01・REQ-DPS-03・REQ-DPS-02）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-07 | 各GPCのGENERAL PURPOSE COMPUTER POWERスイッチ（パネルO6）はESS 1BC・2CA・3ABの電力でRPCを働かせてMN A・B・Cの直流で給電し、GPCごとにRPCが3個あるため主母線または必須母線を2つ失っても正常に動作し、1台の消費電力は560 Wである。 | REQ-DPS-03 | — |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-08 | OUTPUTスイッチ（BACKUP・NORMAL・TERMINATE）はGPCが飛行重要バスへ出力するのをハードウェアで禁止でき、PASSのGNC GPCはNORMAL、BFSのGPC 5はBACKUP、軌道上のSM GPCはTERMINATEとする。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-01・REQ-DPS-03・REQ-DPS-02）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-09 | MODEスイッチ（RUN・STBY・HALT）でGPCがソフトウェアを処理できるかを決め、他と同期できないGPCは誤った指令を出さないようできるだけ早く電源を切るかHALTにする。 | REQ-DPS-02 | — |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-10 | GPCの運用モードには冗長セット・共通セット・単独（simplex）があり、冗長セットでは2台以上のGPCが同じ入力で同じGNCソフトウェアを実行して同じ出力を出し、SMとペイロードの主機能は常に単独のGPCで処理する。 | REQ-DPS-01 | — |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-11 | 冗長セットの各GPCは同期した段階で動作して処理結果を毎秒数百回照合し、同期点を満たさないGPCは残りのGPCが直ちに冗長セットから票決で外す。 | REQ-DPS-02 | — |
| SSD-FD-DPS-GPC-001 | F-DPS-GPC-12 | GPC STATUSマトリクス（パネルO1の5×5の灯）は各GPCの故障票を示し、黄色の対角灯（自己故障）が点灯するとパネルF7のGPC警報灯とMASTER ALARMが点灯し、DPS表示にGPCの故障メッセージが出る。 | REQ-DPS-02 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-01 | MEDSはIDP 4台、MDU 11台、ADC 4台、キーボード3台から成り、DKデータバスでGPCと通信する。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-02 | 各IDPは飛行重要バス1〜4と1本のDKバス、パネルのスイッチとキーボードにつながり、MEDS側では1本の1553BデータバスでMDUと2台のADCを結ぶ。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-03 | IDPはMN A/FPC1（IDP 1）、MN B/FPC2（IDP 2）、MN C/FPC3（IDP 3・4）の28 VDCで動作し、電源スイッチはパネルC2とR11にあってCRT MDUにも給電し、強制空冷される。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-04 | IDPはMEDSとGPCの間のインタフェースで、GPCとADCのデータをMDU用に整形し、スイッチ・エッジキー・キーボードの入力を受け、自身と他のMEDS LRUの状態をBITEと自己試験で監視する。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-05 | MDUは11台（パネルF6・F7・F8・R12と後部操縦席）あり、各MDUは2つのポートで2台のIDPにつながるが、CRT MDUは主ポートだけを使い、1台のIDPと1本のDKバスに対応する。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-06 | ADCはMPS・HYD・APU・OMS・SPIのアナログデータを12ビットのデジタルデータに変換してIDPに渡し、ADC 1A・1BがMPS・OMS・SPI、ADC 2A・2BがAPU・HYDの信号を受け持つ。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-07 | キーボードは32個の押しボタンキーを持ち、前方のパネルC2に2台、後部操縦席のR11Lに1台あり、各キーは二重接点で2台のIDPと別々の経路で通信する。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-08 | DPS表示はOPS（メジャーモード表示）・SPEC・DISPの3階層で、SPECは乗員がキーボードで系のパラメータを監視・変更でき、DISPは監視専用である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-09 | IDPごとのMAJ FUNCスイッチ（GNC・SM・PL）で、どの主機能のソフトウェアをそのIDPのDPS表示に出すかをGPCに知らせ、その主機能の応用ソフトウェアを持つGPCがDPS表示を駆動する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-10 | PASSが同時に駆動できるのは4台のIDPのうち3台までで、どのGPCからも駆動されないIDPはDPS表示に大きな「X」を出し、POLL FAILメッセージを表示する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-11 | 故障メッセージはDPS表示の故障メッセージ行に出て、PASSのFAULT表示（DISP 99）には最新の15件が新しい順に残る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MEDS-001 | F-DPS-MEDS-12 | MDUは通常主ポートで自動ポート再構成モードとし、選択中のIDPとの通信を失うと自動で他方のポートに切り替わり、両ポートとも通信を失うと「MDU IS AUTONOMOUS」を表示する。 | REQ-DPS-10 | — |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-01 | GPC群のソフトウェアはGMTで処理の予定を立てるため安定で正確な時刻源を要し、各GPCはMTUで内部時計を更新する。 | REQ-DPS-11 | — |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-02 | MTUはGPC群をはじめ多くのオービタの系に計時と同期のための精密な周波数出力を与え、3つの時刻累算器がGMTとMETを示す（外部から更新でき、1年まで計時する）。 | REQ-DPS-11 | — |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-03 | MTUは2台の発振器を冗長に持つ水晶制御の周波数源で、一方の発振器の信号を整形器と周波数ドライバを通して3つのGMT/MET累算器へ送る。 | REQ-DPS-11 | — |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-04 | MTUは累算器を通じて要求に応じてシリアルデジタルの時刻データ（GMT/MET）をGPCへ出し、GPCはこれを基準時刻とし、GNCとSMの処理の時刻付けに間接的に使う。 | REQ-DPS-11 | — |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-05 | MTUは乗員室の4つのデジタル計時器（ミッションタイマ2台・イベントタイマ2台）を駆動し、PCMMU、COMSEC、ペイロード信号処理器、FM信号処理器と各種ペイロードにも信号を送る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-11）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-06 | GPCはまずMTUの累算器1を時刻源とし、毎秒自身の内部時刻と照合して差が1 ms未満なら内部時計を累算器の時刻に合わせ、許容外なら他の累算器、さらに番号の最も小さいGPCを試す。 | REQ-DPS-11 | — |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-07 | PASSのGPCはMTUから受け取るMETを使わず、現在のGMTとリフトオフ時刻からMETを計算する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-11）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-08 | MTUはパネルO13の遮断器ESS 1BC MTU AとESS 2CA MTU Bで冗長に給電され、パネルO6のMASTER TIMING UNITスイッチがAUTOのとき、一方の発振器の時刻信号が許容外になると自動で他方に切り替わり、通常は発振器2を使う。 | REQ-DPS-11 | — |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-09 | MTUは中デッキのアビオニクスベイ3Bにあり、水冷却ループのコールドプレートで冷やされる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-11）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-10 | MISSION TIME表示はパネルO3・A4にあってGMTまたはMETを示し、前方のEVENT TIME表示はパネルF7（操作はC2）、後部のEVENT TIME表示はA4（操作はA6U）にある。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-11）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-11 | 各GPCは内部の発振器で内部時計を保ち、MTUの時刻信号の予備としてGMTとMETを計時する（SCOM 2.6節）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-11）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-MTU-001 | F-DPS-MTU-12 | MTUは運用前に12時間の暖機を要し、運用温度に達するまで所定の精度と安定度が得られない（SODB 3.4.5.5節）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-11）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-01 | 軌道上の公称のGPC構成は、GPC 1がGNC 2、GPC 2がGNC 2（電力節約のためフリーズドライ可）、GPC 3がGNC 2（またはGNC 3）のフリーズドライ、GPC 4がSM 2、GPC 5がBFSである（A7-13A）。 | REQ-DPS-12 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-02 | 上昇・再突入の動的段階で冗長セットが故障した場合は、機体の制御を取り戻すためBFSをエンゲージする（A7-8）。 | REQ-DPS-04 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-03 | 故障したGPCは、上昇（MM 102〜104）・再突入（MM 304・305・601〜603）ではできるだけ早くHALTにし、それ以外ではできるだけ早く電源を切り、軌道上ではA7-13・A7-102に従ってDPSを構成して回復を試みる（A7-3）。 | REQ-DPS-12 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-04 | IPLに応答しないGPC、原因不明で2回以上故障したGPC、FCまたはICCのBCE受信器が故障したGPCは回復不能とし、冗長セット・共通セットにもBFSにも使わない（A7-2）。 | REQ-DPS-12 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-05 | 一時故障のGPCは、軌道上では安全上重要な運用を除いて冗長なGNC GPCに使い、電力節約のためフリーズドライのGNC 2にもでき、再突入に使うときはストリング4を割り当てる（A7-13C）。 | REQ-DPS-12 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-06 | ランデブー・近傍運用、ペイロード回収、有人自由飛行体を伴うEVA、安全上重要なOMS/RCS噴射には冗長なGNC GPCを要し、BFSはPASSのDPS冗長度要求に数えない（A7-11・A7-12）。 | REQ-DPS-12 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-07 | 2台のGNC GPCでの軌道上の公称のストリング割当ては、ストリング1・3を一方、2・4を他方とし、一方のGNC GPCが故障しても連続して機体を制御できるようにする（A7-102C）。 | REQ-DPS-12 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-08 | MM 102ではFC・ペイロードMDMのポートモードは重要な系の能力を回復するために必要な場合だけ行い、MM 102後〜MECO前は重要な能力の回復か2つ目の故障の後に行える（A7-105A・B）。 | REQ-DPS-13 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-09 | EOMまで続けるには、回復不能と宣言したGPCが1台以内であること、必要なLRUと表示の冗長度を支えるデータ経路、軌道離脱用PASSソフトウェアの独立した2つの源（MMU 2台、またはG3アーカイブ／G3フリーズドライのGPCとMMU 1台）を要する（A7-201）。 | REQ-DPS-13 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-10 | DPSのGo/No-Go表の根拠では、多重故障は一般的な故障の兆候でありうるとしてGPC 2台・IDP 2台（MEDSの機体）の喪失でMDFとし、MMU 2台の喪失も以後のGPC・DEUの回復ができなくなるためMDFとする（A7-1001）。 | REQ-DPS-13 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-11 | 軌道上で単独のGPCが故障した場合は、動作中のPASS GPCのソフトウェアダンプと故障GPCのハードウェアダンプ（HISAM）を取ってIPLで回復を試み、回復したGPCを冗長なG2・G2FD・SMのいずれかにする（GPC FRP-1）。 | REQ-DPS-12 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-12 | アビオニクスベイの冷却を失った場合は、GPCの過熱を防ぐためG2・SM・BFSの機能を冷却の効くベイのGPCへ移し、冷却のないベイのGPCにはG3FD・G2FDを置いてHALTにする（GPC FRP-7）。 | REQ-DPS-13 | — |
| SSD-FD-DPS-OPS-001 | F-DPS-OPS-13 | STS-135では乗員睡眠中にSM GPCであったGPC 4が故障してMASTER ALARMが出たため、GPC 2をPASSのSM GPCに割り当て直してDPSを安定な構成に戻した（IFA STS-135-V-08）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-DPS-12・REQ-DPS-04・REQ-DPS-13）が受け持つ構成・運用の記述。 |
| SSD-FD-DPS-ASC-001 | IF-DPS-07 | （IF の行。内容は所有文書） | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | IF-DPS-08 | （IF の行。内容は所有文書） | REQ-DPS-09 | — |
| SSD-FD-DPS-ASC-001 | IF-DPS-09 | （IF の行。内容は所有文書） | REQ-DPS-09 | — |
| SSD-FD-DPS-BUS-001 | IF-DPS-10 | （IF の行。内容は所有文書） | REQ-DPS-07 | — |
| SSD-FD-DPS-BUS-001 | IF-DPS-11 | （IF の行。内容は所有文書） | REQ-DPS-07 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 21 件のうち、21 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-DPS-001 | 5 | 0 | 5 | 0 |
| SSD-FD-DPS-ASC-001 | 12 | 12 | 0 | 0 |
| SSD-FD-DPS-BUS-001 | 12 | 12 | 0 | 0 |
| SSD-FD-DPS-FSW-001 | 13 | 13 | 0 | 0 |
| SSD-FD-DPS-GPC-001 | 12 | 7 | 5 | 0 |
| SSD-FD-DPS-MEDS-001 | 12 | 8 | 4 | 0 |
| SSD-FD-DPS-MTU-001 | 12 | 6 | 6 | 0 |
| SSD-FD-DPS-OPS-001 | 13 | 12 | 1 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（13件のうち根拠あり 13件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-DPS-01 | D（実証） | 根拠あり | PDF p51：DPSは異常なく機能し、着陸後にPASSの冗長セットが出した10件のGPCエラーはPASSのプログラムノートで説明されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| REQ-DPS-02 | D（実証） | 根拠あり | PDF p13：軌道上でGPC 1・2が冗長セットで同期を失った（共通セットには残った）が、GPC 1をIPLで回復し、再突入ではGPC 1とGPC 4のストリングの割当てを入れ替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=13） |
| REQ-DPS-03 | A（解析） | 根拠あり | C.15節 Data Processing System（PDF p74）：DPSのハードウェアの解析をNASAのPost 51-Lの基準（FMEA 78件・CIL 25件）と比べ、DPSの外の故障モードを含めた4件のFMEAの是正を勧める。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=74） |
| REQ-DPS-04 | A（解析） | 根拠あり | C.7節 Backup Flight System（PDF p60）：1986〜1987年のCILの書き直しで、BFSを独立のサブシステムから外してDPSのCILに統合したことを記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=60） |
| REQ-DPS-05 | D（実証） | 根拠あり | PDF p10：ランデブー前のGroup Bの電源投入でGPC 3が共通セットに加わった後にHALTになり、IPLの再ロードで回復したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| REQ-DPS-06 | A（解析） | 根拠あり | 表1-1（PDF p13）：サブシステムごとのFMEA/CILの評価の概要で、DPSとBFSの件数をIOAとNASAで比べる。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |
| REQ-DPS-07 | D（実証） | 根拠あり | 2.3.6節（PDF p42）：打上げ前に2台のMDMが故障し（交換用も不良）、OV-099のMDMを取り寄せて搭載したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42） |
| REQ-DPS-08 | D（実証） | 根拠あり | PDF p34：打上げ前にLPSでSSME 2の60 kbitデータの列パリティエラーが見られ、EIUの60 kbit回路（臨界度3）とLPSの間の伝送回路が疑われたが、GPCとSSME制御器の間のEIUの回路の問題ではないとされたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| REQ-DPS-09 | D（実証） | 根拠あり | （PDF p10）：SRBとETの分離が明瞭に記録されたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| REQ-DPS-10 | D（実証） | 根拠あり | PDF p13：CDR 2 MDUの電源投入時に指令元のIDP 1がBITE故障を報告し、MDUの電源の入れ直しで一時的なエラー表示が消えたこと（副ポートの一時故障、IFA STS-114-V-10）を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |
| REQ-DPS-11 | D（実証） | 根拠あり | PDF p11：MTU累算器の不一致の報告は、ELOGの再確認とODRCのデータでMTU BITE故障表示が見つからなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| REQ-DPS-12 | D（実証） | 根拠あり | PDF p54：ランデブーのためにトリプルG2へ共通セットを広げる際、GPC 3が予期せず共通セットから外れたが、ユーザノートで説明のつく事象とされたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=54） |
| REQ-DPS-13 | A（解析） | 根拠あり | PDF p13〜14：SM GPCのGPC 4の故障（IFA STS-135-V-08）でGPC 2をSM GPCにし、GPC 1・4のデータを地上へ降ろした後、IPLでGPC 4を回復してフリーズドライにしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p226） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226
2. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p229） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/229
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p230） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/230
4. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p227） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227
5. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p244） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/244
6. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p248） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/248
7. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p237） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/237
8. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p266） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/266
9. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p232） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232
10. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p235） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/235
11. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p236） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236
12. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p587） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587
13. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p588） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588
14. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
15. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
16. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p239） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/239
17. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p256） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/256
18. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p240） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240
19. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.6節 Master Timing Unit（PDF p241） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241
20. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-11 GNC GPC REDUNDANCY REQUIREMENTS（PDF p1302） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1302
21. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-3 GPC FAILURE（PDF p1293） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1293
22. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-201 DPS Redundancy Requirements（PDF p1338） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1338
23. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-1001 DPS GO/NO-GO MATRIX（PDF p1341） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1341
24. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Supply and Waste Water System（続き）（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51
25. STS-8 Mission Report General Purpose Computers 1 and 2 Redundant Set Split（PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=13
26. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.15 Data Processing System（PDF p74） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=74
27. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report EPD&C の評価概要（C.8節）（PDF p60） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=60
28. STS-135 Mission Report Flight Day 3（GPC 3）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10
29. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13
30. STS-2 Orbiter Mission Report 2.3.6節 Data Processing System（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=42
31. NSTS-37436 STS-108 Space Shuttle Mission Report（2002年） Supply and Waste Water・Waste Collection Subsystem（PDF p34） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34
32. STS-122 Mission Report Flight Summary（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10
33. STS-114 Mission Report Flight Day 2（MDU CDR 2 BITE failure）（PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=13
34. NSTS-37452 STS-125 Mission Report（2010） Data Processing System（MTU accumulator miscompare）（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=11
35. STS-122 Mission Report Data Processing System Hardware（PDF p54） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=54
36. STS-135 Mission Report Flight Day 7（GPC 4 failure）（PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 13件、機能行 91件とのトレース、検証の根拠） |
