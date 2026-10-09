# 通信・追跡（C&T）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-CT-001 |
| 表題 | 通信・追跡（C&T）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図58 C&T 機能構成 |

## 1. 目的

C&Tに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、C&Tの機能説明書（SSD-FD-CT-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 |
| REQ-SYS-03 | 直径 15 ft・長さ 60 ft のペイロードベイにペイロードを収めること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |

## 4. C&T要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-CT-01 | S帯 PM 系で地上局または TDRS を経由した双方向の通信（コマンド・音声・テレメトリ）を行い、トランスポンダ・前置増幅器・電力増幅器・NSP を2台ずつ冗長に持つこと。 | フォワード 72 kbps、主要 LRU 各 2 | S帯PM系は、地上局またはTDRSを経由してオービタと地上の間の双方向通信を行い、コマンド、音声、テレメトリ、トーン測距、2-wayドップラ追跡の5つの機能のチャネルを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160）フォワードリンクの高データレートは72 kbps（A/G音声2チャネル各32 kbpsとコマンド8 kbps）、リターンリンクの高データレートは192 kbps（A/G音声2チャネル各32 kbpsとテレメトリ128 kbps）で、2-way測距はTDRSを経由しては働かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162）トランスポンダは2台の冗長で一度に1台が働き、フォワードリンクのコマンドと音声をNSPへ渡してNSPからリターンリンクのテレメトリと音声を受け、2-wayドップラと2-wayトーン測距の信号をコヒーレントに折り返す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/165） | REQ-SYS-10・REQ-SYS-14 | F-CT-SBD-01・F-CT-SBD-02・F-CT-SBD-03・F-CT-SBD-04・F-CT-SBD-05・F-CT-SBD-06・F-CT-SBD-07・F-CT-SBD-08・F-CT-SBD-09 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-CT-02 | S帯 FM 系の送信専用の冗長な2台の送信機で、上昇中の主エンジンのデータや記録データをダウンリンクできること。 | 2,250 MHz、送信機 2 | S帯FM系は受信できない送信専用の系で、2,250 MHzに同調した2台の冗長な送信機の一方から最大7つの源のうち1つのデータを地上局へ直接送り、TDRSは経由しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168）FM信号処理器は一度に1台を使い、現在のS帯FM系は主に上昇中の主エンジンデータと軌道上のMMU1・MMU2の記録器のダンプの送信に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/169） | REQ-SYS-10 | F-CT-SBD-10・F-CT-SBD-11・F-CT-SBD-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | D（実証） |
| REQ-CT-03 | Ku帯系は TDRS を介した高速の通信（3チャネル）と、ランデブ時に目標の角度・距離を測るレーダの機能を持つこと。 | チャネル 3（運用 192 kbps・最大 4 Mbps 級） | Ku帯系はペイロードベイドアを開いた後に展開するアンテナでTDRSを介して地上と送受信し、ランデブではレーダとしても使えるが、通信とレーダを同時には使えない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）モード1のリターンリンクは3チャネルで、チャネル1は192 kbpsの運用データ、チャネル2は2 Mbpsの低データレート源（ペイロードインタロゲータ、OCA、MMU 1・2のSSR）、チャネル3は50 MbpsのPL MAX（DTVなど）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171）ランデブではレーダがGNC計算機のランデブ航法データを更新するセンサとして目標の角度・角速度・距離変化率を与え、受動（RDR PASSIVE）と協力（RDR COOP）のモードがあるが、これまでRDR PASSIVEだけが使われた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177） | REQ-SYS-02 | F-CT-KU-01・F-CT-KU-02・F-CT-KU-03・F-CT-KU-04・F-CT-KU-05・F-CT-KU-06・F-CT-KU-10・F-CT-KU-11 | PH-3（軌道） | D（実証） |
| REQ-CT-04 | Ku帯アンテナは突入に備えてペイロードベイドアを閉じる前に格納でき、ペイロード・EVA 乗員・ISS を放射から守るマスクを設定できること。 | 展開・格納 23 秒 | MCCは、ペイロード、EVA乗員、ISSをKu帯の放射から守るため、ベータ角によるマスク（beta MASK・beta + MASK）やEVA防護域で送信機を止めるマスキングを地上指令で設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175）アンテナの展開・格納は通常23秒かかり、突入に備えてペイロードベイドアを閉じる前に格納しなければならず、通常の格納とDIRECT STOWができないときは組立を投棄する（約4秒）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175） | REQ-SYS-03 | F-CT-KU-07・F-CT-KU-08・F-CT-KU-09・F-CT-OPS-06・F-CT-OPS-07 | PH-3（軌道）・PH-4（離脱準備） | D（実証） |
| REQ-CT-05 | UHF シンプレックス系を上昇・再突入の S帯 PM のバックアップとし、EVA では SSOR で船外の乗員と通信できること。 | 259.7 MHz（予備 296.8 MHz）、SSOR 2組 | UHFシンプレックス（ATC）系は上昇・再突入でS帯PMのバックアップとしてSTDN地上局経由でMCCと通信し、送信と受信を同時にはできない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181）UHF MODEのEVAはSSORを働かせてSPLXを止め、SSORは宇宙間通信系（SSCS）の一部で、SSCSは414.2または417.1 MHzで動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184）SSORは主・予備の2組の無線機（EVA STRINGで1・2を選び、1が主）を持ち、送信電力は低電力19.1 dBm（約80 mW）と高電力31.6 dBm（約1.44 W）で、高電力はFCCの限度を超えるため使わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184） | REQ-SYS-10 | F-CT-UHF-01・F-CT-UHF-02・F-CT-UHF-03・F-CT-UHF-04・F-CT-UHF-05・F-CT-UHF-06・F-CT-UHF-07・F-CT-UHF-08 | PH-2（上昇）・PH-5（EVA）・PH-6（再突入） | D（実証） |
| REQ-CT-06 | 音声分配系は内部が冗長な ACCU を中心に8つの音声ループを配り、ATU の故障では乗員が別の ATU へ切り替えられること。 | 音声ループ 8・ATU 6 | 音声系には、A/G 1、A/G 2、A/A（UHF SPLX）、ICOM A、ICOM B、PAGE、C/W、TACANの8つのループがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/186）ACCUはミッドデッキの前方アビオニクスベイにあり、同じ筐体に冗長な2台を持つが、一度に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/186）4台のATU（パネルO5、O9、AW18D、R10）は、故障したATUの乗員がCONTROLノブで別のATUへ切り替えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/191） | REQ-SYS-10 | F-CT-AUD-01・F-CT-AUD-02・F-CT-AUD-03・F-CT-AUD-04・F-CT-AUD-05・F-CT-AUD-06・F-CT-AUD-08・F-CT-AUD-09・IF-CT-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-CT-07 | CCTV は、ペイロードベイと RMS のカメラの映像を切り替えて記録・表示し、S帯・Ku帯でダウンリンクして軌道上の作業を支えること。 | VSU 13入力・7出力 | CCTVは軌道上でオービタとペイロードの作業を支援し、実時間と記録の映像をS帯FM、S帯PM、Ku帯の通信系でMCCへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137）VSUは最大13入力・7出力（パネルA7Uで使えるのは10入力・4出力）で映像を切り替え、カメラのID・温度・パン/チルト角を読み、45°Cを超えるカメラを検知するとRCUへ過熱警告を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/144） | REQ-SYS-03 | F-CT-CCTV-01・F-CT-CCTV-02・F-CT-CCTV-03・F-CT-CCTV-04・F-CT-CCTV-07・F-CT-CCTV-10・IF-CT-11 | PH-3（軌道） | D（実証） |
| REQ-CT-08 | 計装系は変換器・DSC・OI MDM・2台の PCMMU で機体とペイロードのデータを集めてテレメトリを作り、2台の記録器でダウンリンクまで記録できること。 | DSC 14・OI MDM 7・PCMMU 2・SSR 2 | 計装系は変換器、DSC 14台、MDM 7台、PCMMU 2台、記録器2台、主時刻装置、機上点検装置から成り、センサと一部のDSCを除き前方・後方のアビオニクスベイにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196）PCMMUはOI MDMのデータ、GPCのダウンリスト、PDIのペイロードテレメトリを受け、テレメトリ形式ロード（TFL）に従ってインタリーブ・形式化する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197）2台のSSRはOI系のデジタル音声とPCMデータを記録・ダンプし、MMUに内蔵されているためパネルA1ではMMU1・MMU2と表示され、乗員の操作器はなく地上指令だけで制御される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199） | REQ-SYS-10 | F-CT-INST-01・F-CT-INST-02・F-CT-INST-03・F-CT-INST-04・F-CT-INST-05・F-CT-INST-06・F-CT-INST-08・F-CT-INST-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-CT-09 | 地上からの指令をすべて NSP と FF MDM を経て GPC で受け取り、通信の Go/No-Go 基準（A11-1001）で音声・コマンドの喪失に対し次の PLS を判断すること。 | 音声 3系統・コマンド 2系統（2系統の喪失で次の PLS） | 地上からの指令はすべてS帯のアップリンクまたはKu帯のフォワードリンクでNSPとFF MDMを経てGPCへ送られ、GCILで制御する通信系を組み替える指令はGPCからPF MDMを経てGCILへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160）通信のGo/No-Go基準（A11-1001）は、2-way音声（A/G 1・2・UHFの3系統）、コマンド、テレメトリ、NSP・トランスポンダのアップリンク・ダウンリンク、ACCU、PCMMUなどの喪失ごとにMDFと次のPLSの判断を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1707） | REQ-SYS-14 | F-CT-OPS-01・F-CT-OPS-02・F-CT-OPS-03・F-CT-OPS-04・F-CT-OPS-09・F-CT-OPS-11・F-CT-OPS-12 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

C&Tの機能説明書 8 件の機能行 88 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 62 件が要求から参照され、26 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-CT-001 | F-CT-01 | S帯FM、S帯PM、Ku帯、UHFの各系が、RF信号でオービタと地上の間の情報を伝送する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CT-001 | F-CT-02 | ペイロード通信系はハードラインまたはRFでオービタとペイロードの間の情報を伝送し、音声系は機内の音声通信を、CCTVは作業の目視監視と記録を担う。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CT-001 | F-CT-03 | NASAのS帯フォワードリンクは2,041.9 MHz（主）または2,106.4 MHz（副）、リターンリンクは2,217.5 MHz（主）または2,287.5 MHz（副）の位相変調で、STDNまたはTDRSを経由する。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CT-001 | F-CT-04 | Ku帯系は、ランデブ時に分離衛星の距離と角度を測るレーダと、双方向通信の二役を担う。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CT-AUD-001 | F-CT-AUD-01 | 音声分配系（ADS）は機内に音声信号を配り、乗員どうしとS帯PM・Ku帯・UHF・SSOR経由のMCCなど外部との通信の手段となり、C/W系のトーン信号と3台のTACANの識別符号の音声も扱う。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-02 | 主な要素は、内部冗長のLRUで中央交換台として働くACCU、乗員通信局のATU、スピーカユニット、音声センタパネル、携帯通信機器、CCUジャックである。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-03 | 音声系には、A/G 1、A/G 2、A/A（UHF SPLX）、ICOM A、ICOM B、PAGE、C/W、TACANの8つのループがある。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-04 | A/G 1・2はS帯PM・Ku帯系で地上と、EVA中はSSORでEV乗員と通信し、A/AはUHFに対応する地上局の上空でUHF（ATC）系によりMCCと通信する。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-05 | ACCUはミッドデッキの前方アビオニクスベイにあり、同じ筐体に冗長な2台を持つが、一度に使うのは1台である。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-06 | パネルC3のAUDIO CENTERスイッチを1にするとESS 2CA AUD CTR 1、2にするとMN C AUD CTR 2の遮断器（パネルR14）から給電され、OFFではACCUの電力がすべて断たれる。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-07 | ACCUは打上げアンビリカルのICOM A・Bのチャネルも働かせ、どの乗員局のATUも打上げ管制センター（LCC）とインターコムで通話でき、アンビリカルで扱うのはインターコムだけである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-06）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-AUD-001 | F-CT-AUD-08 | ATUは乗員室の6か所（パネルO5、O9、R10、L9、MO42F、AW18D）にあって各音声ループの選択と音量を制御し、電源スイッチはAUD/TONE、AUD、OFFの3位置である。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-09 | 4台のATU（パネルO5、O9、AW18D、R10）は、故障したATUの乗員がCONTROLノブで別のATUへ切り替えられる。 | REQ-CT-06 | — |
| SSD-FD-CT-AUD-001 | F-CT-AUD-10 | スピーカユニットはパネルA2とMO29Jにあり、上のスピーカは音声用、下はクラクソン・サイレン専用である。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-06）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-AUD-001 | F-CT-AUD-11 | パネルA1Rの音声センタは、SSOR（UHFスイッチ）・ドッキングしたISS（Spacelabスイッチ）との音声と記録するループを選び、VOICE RECORD SELECTの2つのノブで選んだ音声をNSP経由で記録器へ送る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-06）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-AUD-001 | F-CT-AUD-12 | 打上げ・再突入では、各乗員が騒音を和らげA/G通信を明瞭にするため打上げ・再突入用ヘルメットを着け、CCAのヘッドセットをHIU・通信ケーブル・CCUを介してATUにつなぐ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-06）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-01 | CCTVは軌道上でオービタとペイロードの作業を支援し、実時間と記録の映像をS帯FM、S帯PM、Ku帯の通信系でMCCへ送る。 | REQ-CT-07 | — |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-02 | CCTVは映像処理装置、テレビカメラ、PTU、カムコーダ、VTR、カラーモニタ（CTVM）と配線・付属品から成り、大半の構成指令はMCCのINCOも実行できる。 | REQ-CT-07 | — |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-03 | ペイロードベイにはCTVC（カラー）、ITVC（白黒・低照度用）、Videospectionの3種類のカメラを搭載し、カメラとPTUには-8°Cで入り0°Cで切れるサーモスタット制御のヒータがある。 | REQ-CT-07 | — |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-04 | VCUはCCTVの中央処理装置で、RCUとVSUの2つのLRUから成り、後部フライトデッキのパネルR17・R18の裏にあってキャビンファンで強制空冷される。 | REQ-CT-07 | — |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-05 | RCUは乗員とMCCのすべてのCCTV指令を受け、MCCがアップリンクで指令できるのはパネルA7UのTV POWER CONTROLスイッチがCMDのときだけである。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-07）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-06 | RCUの同期信号はカメラとVSUへ配られ、カメラへの指令は同期信号に埋め込まれ、アドレスが合うカメラだけが応答する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-07）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-07 | VSUは最大13入力・7出力（パネルA7Uで使えるのは10入力・4出力）で映像を切り替え、カメラのID・温度・パン/チルト角を読み、45°Cを超えるカメラを検知するとRCUへ過熱警告を送る。 | REQ-CT-07 | — |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-08 | VPU（STS-92から）はCCTVからISSへ2本、ISSからCCTVへ1本の映像を渡し、EVAヘルメットカメラ（WVS）のインタフェースボックスを含む。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-07）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-09 | DTV（STS-110から）はCCTVのアナログNTSC映像をデジタルに変換して記録またはKu帯のチャネル3（PAYLOAD MAX）でMCCへ送り、そのVIPはAC2 PAYLOAD 3相から給電される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-07）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-10 | PTUはカメラA・B・C・DとRMSの肘カメラに使い、正負各170°のパン・チルトを高速12°/s、低速1.2°/sで行う。 | REQ-CT-07 | — |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-11 | パネルA3には10インチのカラーモニタ（CTVM）2台が常に搭載され、NTSCとFSCのカラー映像を表示する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-07）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-CCTV-001 | F-CT-CCTV-12 | OBSS（STS-114から）は右舷シルに格納した50 ftのブームの後端に2つのセンサパッケージを持ち、TPSの点検映像とデータはKu帯でMCCへ送られる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-07）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-INST-001 | F-CT-INST-01 | オービタのOIは機体とペイロードの変換器・センサの情報を収集・処理・分配し、監視するパラメータは3,000を超える。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-02 | 計装系は変換器、DSC 14台、MDM 7台、PCMMU 2台、記録器2台、主時刻装置、機上点検装置から成り、センサと一部のDSCを除き前方・後方のアビオニクスベイにある。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-03 | DSCは周波数・温度・角速度・電圧・電流などのセンサの信号をMDMが受け付ける0〜5 V dcに変換し、14台は前方4、後方3、ペイロードベイ下3、左右の尾部4に分かれる。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-04 | OI MDMは多重化器としてだけ働き、PCMMUの要求に応じてデータを選び・デジタル化してOIデータバスで送り（要求・応答方式）、前方4台（OF）・後方3台（OA）がある。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-05 | PCMMUはOI MDMのデータ、GPCのダウンリスト、PDIのペイロードテレメトリを受け、テレメトリ形式ロード（TFL）に従ってインタリーブ・形式化する。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-06 | PCMMUのテレメトリはNSPを経てSSRにも送られて記録され、後でS帯FMまたはKu帯でダウンリンクされる。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-07 | PCMMUはPROMとRAMの2つの形式メモリを持ち、電源を切ると（予備への切替時など）TFLはPROMの固定形式に変わる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-08）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-INST-001 | F-CT-INST-08 | 各MDMの主ポートはPCMMU 1、副ポートはPCMMU 2と働き、PCMMUはMTUから同期クロックを受け、それが無いときは自らの時刻で同期信号をPDIとNSPへ送り続ける。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-09 | 2台のSSRはOI系のデジタル音声とPCMデータを記録・ダンプし、MMUに内蔵されているためパネルA1ではMMU1・MMU2と表示され、乗員の操作器はなく地上指令だけで制御される。 | REQ-CT-08 | — |
| SSD-FD-CT-INST-001 | F-CT-INST-10 | ペイロード通信系のPI、PSP、PDI、PCMMUは前方アビオニクスベイにあり、ペイロード通信系への指令はペイロードMDM 1・2からGCILCを経て送られる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-08）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-INST-001 | F-CT-INST-11 | PIは分離したペイロードとの全二重のRF通信を行う送受信機・トランスポンダで、PSPと互換のテレメトリはPSPが副搬送波から復調してPDIへ送り、互換でないものはKu帯系へ直接送る（ベントパイプ）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-08）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-INST-001 | F-CT-INST-12 | PDIは付属・分離したペイロードからの最大6入力と地上支援装置の1入力を受け、4台のデコミュテータで最大4つのデータ流を処理してPCMMUへ送る。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-08）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-KU-001 | F-CT-KU-01 | Ku帯系はペイロードベイドアを開いた後に展開するアンテナでTDRSを介して地上と送受信し、ランデブではレーダとしても使えるが、通信とレーダを同時には使えない。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-02 | 通信モードでは、NSPがリターンリンクのデータをKu帯信号処理器とS帯PMトランスポンダの両方へ送り、フォワードリンクはKu帯とS帯PMの一方だけをNSPが処理する。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-03 | モード1のリターンリンクは3チャネルで、チャネル1は192 kbpsの運用データ、チャネル2は2 Mbpsの低データレート源（ペイロードインタロゲータ、OCA、MMU 1・2のSSR）、チャネル3は50 MbpsのPL MAX（DTVなど）である。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-04 | モード2ではチャネル3が4 Mbpsの高データレート源となり、ペイロードのデータのほか実時間のCCTV映像のダウンリンクを選べる。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-05 | モード1のフォワードリンクは72 kbpsの運用データのほか128 kbpsのOCAのアップリンクを含み、COMMモードではEA1を経たKu帯信号処理器が音声とコマンドをNSPへ送る。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-06 | 展開アンテナ組立は右舷のシルロンジロンに取り付けられ、2軸ジンバルの高利得アンテナ（直径3 ftのグラファイトエポキシ製パラボラ）、ジャイロ組立、RF電子箱から成り、組立の質量は180 lb、系全体は304 lbである。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-07 | ベータジンバルの動きが162°に限られるため、極の周りに直径4°、ペイロードベイ側に直径32°の非カバー域があり、アンテナはパネルA1Uの手動またはSMソフトウェアで指向する。 | REQ-CT-04 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-08 | MCCは、ペイロード、EVA乗員、ISSをKu帯の放射から守るため、ベータ角によるマスク（beta MASK・beta + MASK）やEVA防護域で送信機を止めるマスキングを地上指令で設定する。 | REQ-CT-04 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-09 | アンテナの展開・格納は通常23秒かかり、突入に備えてペイロードベイドアを閉じる前に格納しなければならず、通常の格納とDIRECT STOWができないときは組立を投棄する（約4秒）。 | REQ-CT-04 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-10 | ランデブではレーダがGNC計算機のランデブ航法データを更新するセンサとして目標の角度・角速度・距離変化率を与え、受動（RDR PASSIVE）と協力（RDR COOP）のモードがあるが、これまでRDR PASSIVEだけが使われた。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-11 | GPCモードでは、GNC SPEC 33の2つの指令によりGNCの目標位置をSMのアンテナ管理プログラムへ送り、指向角と距離をペイロード1データバスとPF1 MDMを経てKu帯系へ送って探索・自動追尾させる。 | REQ-CT-03 | — |
| SSD-FD-CT-KU-001 | F-CT-KU-12 | SM COMMUNICATIONS表示（SPEC 76）は、Ku帯の温度（PA・GMBL・GYRO）、出力電力、フレーム同期、モード（COMM・RDR）を示す。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-03・REQ-CT-04）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-OPS-001 | F-CT-OPS-01 | GCIL（GCILC）はS帯PM・S帯FM・Ku帯・ペイロード通信・CCTVの選択した機能を制御し、各系のCONTROLスイッチがPANELなら乗員のパネルスイッチ、COMMANDならGCIL経由の地上指令で制御する。 | REQ-CT-09 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-02 | 地上からの指令はすべてS帯のアップリンクまたはKu帯のフォワードリンクでNSPとFF MDMを経てGPCへ送られ、GCILで制御する通信系を組み替える指令はGPCからPF MDMを経てGCILへ送られる。 | REQ-CT-09 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-03 | S帯PM系は系統2のLRUを飛行全体を通じてコマンドで選び（機上のスイッチは系統1の構成）、地上が運用の主体となってTDRS・GSTDN・SGLSのモードを切り替え、アンテナはGPCの自動選択で管理する。 | REQ-CT-09 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-04 | 上昇中に飛行を打ち切る通信の故障はなく、打上げではS帯PMの音声を主とし、UHFを送受信モードでS帯PMのバックアップに構成する。 | REQ-CT-09 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-05 | SMが使えるときは、サイトインビューの旗がなければSMソフトウェアがアップリンクの指令を自動で遮断し、SMも暗号化も使えないときは乗員がパネルC3のUPLINKスイッチで遮断する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-09・REQ-CT-04）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-OPS-001 | F-CT-OPS-06 | Ku帯系は、ペイロードがペイロードベイドアの包絡域を超えない限り21度の「beta plus mask」モードで運用し、ベイのどの部分も10 V/m（ICDの限度）を超える放射を受けないようにする。 | REQ-CT-04 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-07 | Ku帯のベータマスクまたはオービタ構造の遮蔽で守られる区域でのEVAでは、Ku帯をAOS中は指向の制約なしに運用し、LOS中は待機にして、EVA乗員の被曝をEMUの仕様の20 V/m未満に保つ。 | REQ-CT-04 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-08 | 記録器は地上から管理して各LOSの間に1台が記録しているようにし、運用データと音声（192 kbps）は活動の多い期間か乗員の音声記録が要るときに記録し、それ以外はデータ（128 kbps）だけを記録する。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-09・REQ-CT-04）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-OPS-001 | F-CT-OPS-09 | 通信のGo/No-Go基準（A11-1001）は、2-way音声（A/G 1・2・UHFの3系統）、コマンド、テレメトリ、NSP・トランスポンダのアップリンク・ダウンリンク、ACCU、PCMMUなどの喪失ごとにMDFと次のPLSの判断を定める。 | REQ-CT-09 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-10 | PCMMUは実時間・記録のテレメトリと乗員表示・クラス3アラートのための機上データを供給し、故障の回避策がないため、1台を失うとMDF、2台を失うと次のPLSとする。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-09・REQ-CT-04）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-OPS-001 | F-CT-OPS-11 | ACCUを1台失ったときはACCUバイパスIFMの半分（J4）をなるべく早く行って飛行を続け、それが失敗すれば次のPLSとし、2台とも失ったときはIFMを完了してMDFとする。 | REQ-CT-09 | — |
| SSD-FD-CT-OPS-001 | F-CT-OPS-12 | 全音声を失ったときは、ACCUバイパスコネクタを取り付け、コマンドが使えればKu帯を展開・起動してOCAの通話を試み、なお音声が得られなければ次の日のPLSへ軌道離脱し、スクラッチパッド行でMCCへ知らせる（MAL COMM SSR-1）。 | REQ-CT-09 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-01 | S帯PM系は、地上局またはTDRSを経由してオービタと地上の間の双方向通信を行い、コマンド、音声、テレメトリ、トーン測距、2-wayドップラ追跡の5つの機能のチャネルを持つ。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-02 | フォワードリンクの高データレートは72 kbps（A/G音声2チャネル各32 kbpsとコマンド8 kbps）、リターンリンクの高データレートは192 kbps（A/G音声2チャネル各32 kbpsとテレメトリ128 kbps）で、2-way測距はTDRSを経由しては働かない。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-03 | 電力モードはSGLS、STDN LO・HI、TDRS DATA・RNGから選び、高電力モード（TDRSとSTDN HI）では受信信号を前置増幅器、送信信号を電力増幅器に通し、低電力モード（STDN LOとSGLS）では増幅しない。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-04 | 前方胴体の外板に約90°おきに4基のクワッドアンテナがあり、各アンテナが前方・後方の2つのビームを持つため実質8つのアンテナとして働き、GPC制御（PASS SMまたはBFS）、アップリンクコマンド、パネルC3の手動で選択する。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-05 | 前置増幅器はTDRSとSTDN HIのモードで使う2台の冗長な装置で、一度に1台を使い、約25 dBのRF利得を与える。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-06 | 電力増幅器は2台の冗長（公称利得約17 dB）で進行波管を使い、コールドスタートからOPERATEを選ぶと140秒のタイマで予熱し、STANDBYではフィラメントを暖めておく。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-07 | トランスポンダは2台の冗長で一度に1台が働き、フォワードリンクのコマンドと音声をNSPへ渡してNSPからリターンリンクのテレメトリと音声を受け、2-wayドップラと2-wayトーン測距の信号をコヒーレントに折り返す。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-08 | NSPは2台の冗長で、ACCUからのA/G音声をデジタル化してPCMMUのテレメトリと時分割多重してトランスポンダへ送り、フォワードリンクでは音声をACCUへ戻し、地上コマンドを解読してFF MDM（NSP 1はFF 1、NSP 2はFF 3）へ送る。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-09 | COMSEC装置はNSPと組んで運用データの暗号化・復号を行い、現在はSELECT/RCVモードでアップリンク（音声とコマンド）だけを暗号化する。 | REQ-CT-01 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-10 | S帯FM系は受信できない送信専用の系で、2,250 MHzに同調した2台の冗長な送信機の一方から最大7つの源のうち1つのデータを地上局へ直接送り、TDRSは経由しない。 | REQ-CT-02 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-11 | FM信号処理器は一度に1台を使い、現在のS帯FM系は主に上昇中の主エンジンデータと軌道上のMMU1・MMU2の記録器のダンプの送信に使われる。 | REQ-CT-02 | — |
| SSD-FD-CT-SBD-001 | F-CT-SBD-12 | 2基のヘミアンテナは前方胴体の上下に約180°離れてS帯FMのリターンリンクを放射し、GPCモードではSM計算機がSTDNまたはAFSCFの地上局への見通しからアンテナを選ぶ。 | REQ-CT-02 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-01 | UHF系は能力の異なる2つの系、UHFシンプレックス（SPLX）系とUHF SSOR系から成り、パネルO6の5位置のUHF MODEロータリスイッチで電源を入れる。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-02 | SPLXは259.7 MHz（予備296.8 MHz）の送受信機を働かせ、SPLX + G RCVではガードの243.0 MHz緊急受信機も働き、G T/Rでは243.0 MHzの送受信機で非常時の音声通信を行う。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-03 | UHFシンプレックス（ATC）系は上昇・再突入でS帯PMのバックアップとしてSTDN地上局経由でMCCと通信し、送信と受信を同時にはできない。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-04 | SPLX・GUARDモードでは、UHF送受信機はACCUのA/Aループの音声を前方胴体下面の外部UHFアンテナから送信し、受信した信号を復調してA/Aループへ戻す。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-05 | SPLX PWR AMPLスイッチをONにすると10 W、OFFにすると電力増幅回路を迂回して0.25 Wで送信し、XMIT FREQスイッチで259.7 MHz（主）か296.8 MHz（副）を選ぶ。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-06 | UHF MODEのEVAはSSORを働かせてSPLXを止め、SSORは宇宙間通信系（SSCS）の一部で、SSCSは414.2または417.1 MHzで動作する。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-07 | SSORの主アンテナはエアロックトラスの右舷側にあり、出入り前のEVA点検のためエアロック内のアンテナにもつながる。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-08 | SSORは主・予備の2組の無線機（EVA STRINGで1・2を選び、1が主）を持ち、送信電力は低電力19.1 dBm（約80 mW）と高電力31.6 dBm（約1.44 W）で、高電力はFCCの限度を超えるため使わない。 | REQ-CT-05 | — |
| SSD-FD-CT-UHF-001 | F-CT-UHF-09 | SSORの状態（主・予備、フレーム同期、処理器の状態）は、SM COMMUNICATIONS（SPEC 76）とSM OIU（SPEC 212）の2つのDPS表示に示される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-05）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-UHF-001 | F-CT-UHF-10 | EVA乗員との会話はパネルA1RのUHFスイッチの構成に応じてA/G 1またはA/G 2でS帯PMまたはKu帯系からMCCへ送られ、EVAの生体・宇宙服データはUHF/SSORの搬送波から取り出された後にOI系を経て送られる。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-05）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-UHF-001 | F-CT-UHF-11 | EVA通信の構成では、パネルR14のMNA UHF EVAとMNC UHF EVAの遮断器が閉であることを確かめ、送信周波数を259.7/414.2、EVA STRINGを1、UHF MODEをEVAにする（EVAチェックリスト4-10）。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-05）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-UHF-001 | F-CT-UHF-12 | STS-4では、軌道上で初めてUHFの周波数を296.8 MHzから259.7 MHzに変え、地上アンテナの高い利得を利用した。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-CT-05）が受け持つ構成・運用の記述。 |
| SSD-FD-CT-AUD-001 | IF-CT-09 | （IF の行。内容は所有文書） | REQ-CT-06 | — |
| SSD-FD-CT-CCTV-001 | IF-CT-11 | （IF の行。内容は所有文書） | REQ-CT-07 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 26 件のうち、26 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-CT-001 | 4 | 0 | 4 | 0 |
| SSD-FD-CT-AUD-001 | 12 | 8 | 4 | 0 |
| SSD-FD-CT-CCTV-001 | 12 | 6 | 6 | 0 |
| SSD-FD-CT-INST-001 | 12 | 8 | 4 | 0 |
| SSD-FD-CT-KU-001 | 12 | 11 | 1 | 0 |
| SSD-FD-CT-OPS-001 | 12 | 9 | 3 | 0 |
| SSD-FD-CT-SBD-001 | 12 | 12 | 0 | 0 |
| SSD-FD-CT-UHF-001 | 12 | 8 | 4 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（9件のうち根拠あり 9件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-CT-01 | D（実証） | 根拠あり | 2.3.4.1節（PDF p24）：系統2のNSP・トランスポンダ・電力増幅器を全期間STDNの高電力・高周波数モードで運用し、FM系で主エンジンデータ・TV・OI記録器のダンプを送ったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |
| REQ-CT-02 | D（実証） | 根拠あり | Lower Right S-Band Quad Antenna Beam Selection Miscompare（PDF p11）：GPCが後方ビームを選んだ際の右下クワッドアンテナの位置の不一致の警報（トークバックの断続と判断）を報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| REQ-CT-03 | D（実証） | 根拠あり | Rendezvous and docking（PDF p10）：Ku帯レーダによるISSの捕捉（距離130,000 ft）、近傍での待機・通信モードへの切替を報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| REQ-CT-04 | D（実証） | 根拠あり | 3.4.5.2節（PDF p186〜193）：Ku帯の展開アンテナ組立のジャイロのヒータと温度、ケーブル巻きの摩擦による振動と格納前の指向角、ジンバルロック中の機体の角速度の制限、レーダの自己試験・モード切替、内部故障のリセットの制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=188） |
| REQ-CT-05 | D（実証） | 根拠あり | 2.3.4.2節（PDF p24）：軌道上で初めてUHFの周波数を296.8 MHzから259.7 MHzに変えたことと、着陸時に2つの地上局のUHF送信が重なって上りの音声が乱れたことを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24） |
| REQ-CT-06 | D（実証） | 根拠あり | 2.3.4.3節（PDF p39）：ミニヘッドセットと無線送受信機の使用で音声品質が良好で、STS-1で見られた音響帰還がなかったと報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39） |
| REQ-CT-07 | D（実証） | 根拠あり | CCTV Camera Failures（PDF p11）：カメラCの指令不応答・焦点不良、カメラDの映像の喪失、RMSの肘カメラのレンズ組立の部品の緩みを報告する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11） |
| REQ-CT-08 | D（実証） | 根拠あり | Communications and Tracking Subsystem（PDF p20）：OIが異常や問題なく公称に動作したことを報告する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20） |
| REQ-CT-09 | A（解析） | 根拠あり | 表1-1（PDF p13）：C&TのFMEAをIOA 1,108件・NASA 697件（論点407件）、CILをIOA 298件・NASA 239件（論点294件）と集計する（1988年1月1日時点）。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

## 9. 参考文献

1. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p160） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/160
2. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p162） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162
3. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p165） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/165
4. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p168） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168
5. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p169） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/169
6. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p171） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/171
7. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p177） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/177
8. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p175） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/175
9. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p181） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/181
10. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p184） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184
11. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p186） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/186
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.4節 Communications（Audio Terminal Unit）（PDF p191） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/191
13. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p137） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/137
14. Shuttle Crew Operations Manual 2.3 Closed Circuit Television（USA007587 Rev. A CPN-1、PDF p144） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/144
15. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p196） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/196
16. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p197） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/197
17. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p199） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/199
18. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A11-1001 COMMUNICATIONS GO/NO-GO CRITERIA（PDF p1707） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1707
19. STS-4 Orbiter Mission Report 2.3.4.2 UHF Transceivers（PDF p24） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=24
20. JSC-19278 STS-8 National Space Transportation Systems Program Mission Report（1983年） Smoke Detector B in Avionics Bay 1 Tripped（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-8%20National%20Space%20Transportation%20Systems%20Program%20Mission%20Report.pdf#page=11
21. STS-108 Mission Report Rendezvous and docking（S-band PA 2）（PDF p10） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=10
22. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.2 Communication and Tracking Subsystem（PDF p188） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=188
23. STS-2 Orbiter Mission Report 2.3.4.3 Audio Distribution（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=39
24. NASA-CR-194116 STS-54 Mission Report（1993） Communications and Tracking Subsystem（PDF p20） — https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=20
25. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Table 1-1 FMEA/CIL Assessment Overview (Interim)（PDF p13） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=13

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 9件、機能行 88件とのトレース、検証の根拠） |
