// SysML v2 テキスト：乗員インタフェース（警報の階層の対応・表示と操作の盤・作業位置）
// SSD-CIF-ORB-001 乗員インタフェース対応表（警報の階層・表示と操作の盤・作業位置） の表から生成（lib/build_docs_bc.py・rev_bc/bcdata.py）。根拠の頁は SSD-CIF-ORB-001 にある。
package SSD_CIF_ORB_001 {
    doc /* SSD-CIF-ORB-001 乗員インタフェース対応表（警報の階層・表示と操作の盤・作業位置）。図152・153 と同じ内容。警報は SSD_FDIR_ORB_001 のもの。 */
    private import ScalarValues::*;
    part def AlertLevel { doc /* 警報の区分（視覚・聴覚の報知） */ attribute visual : String; attribute aural : String; }
    part def CrewStation { doc /* 乗員の作業位置 */ attribute deck : String; }
    part def ControlDisplayUnit { doc /* 表示・操作の盤・機器 */ attribute unitKind : String; attribute systems : String; }
    metadata def MapsTo { doc /* シャトルの警報の区分 → 3001 の警報の階層（一致の程度は定義書の対応の表） */ }
    metadata def ClassifiedAs { doc /* 既存の警報の区分（灯の色は定義書の表） */ }
    metadata def LocatedAt { doc /* 盤・機器の作業位置 */ }
    package StandardLevels {
        doc /* NASA-STD-3001 Vol. 2 Rev. F の警報の階層（表 10.3-1・10.4-3） */
        part def <'AL-STD-1'> AlStd1 :> AlertLevel { doc /* 緊急（火災） */ attribute :>> visual = "赤の点滅"; attribute :>> aural = "サイレン（650〜1,500 Hz を 5 s で往復）＋音声「Emergency Fire location」を終わるまで繰り返す"; }
        part def <'AL-STD-2'> AlStd2 :> AlertLevel { doc /* 緊急（火災以外：減圧・有毒な雰囲気など） */ attribute :>> visual = "赤の点滅"; attribute :>> aural = "クラクソン（2,560 Hz・2.1 ms on・1.6 ms off に 256 Hz を混ぜる）＋状態と場所の音声を繰り返す"; }
        part def <'AL-STD-3'> AlStd3 :> AlertLevel { doc /* 警告（Warning） */ attribute :>> visual = "赤"; attribute :>> aural = "400 Hz と 1,024 Hz を 2.5 Hz で交互に出す音＋警告の音声（内容と場所は任意）"; }
        part def <'AL-STD-4'> AlStd4 :> AlertLevel { doc /* 注意（Caution） */ attribute :>> visual = "黄"; attribute :>> aural = "512 Hz の三角波 1 s と 1 s の無音を終わるまで繰り返す（音だけ）"; }
        part def <'AL-STD-5'> AlStd5 :> AlertLevel { doc /* 勧告（Advisory） */ attribute :>> visual = "青"; attribute :>> aural = "任意：900 Hz の正弦波2回（全体 318 ms、繰り返さない）。睡眠中などは消せる"; }
    }
    package ShuttleLevels {
        doc /* シャトルの警報の区分（クラス0〜3 と補助の報知） */
        part def <'AL-SH-1'> AlSh1 :> AlertLevel { doc /* クラス1 緊急（火災・急減圧） */ attribute :>> visual = "F2・F4・A7・MO52J の4つの MASTER ALARM 押しボタン表示器の点灯。火災ではさらに L1 の SMOKE DETECTION 灯、SM SYS SUMM 1 の SMOKE の値"; attribute :>> aural = "火災：サイレン（666〜1470 Hz を 5 秒周期で往復）。急減圧：クラクソン（2560 Hz・2.1 ms ON・1.6 ms OFF に 256 Hz を混ぜる）。どちらも飛行甲板・中甲板のスピーカの下側の専用スピーカへ直接送る"; }
        part def <'AL-SH-2'> AlSh2 :> AlertLevel { doc /* クラス2 C&W（主 C/W と B/U C/W） */ attribute :>> visual = "4つの MASTER ALARM 灯と F7 の表示盤の灯（赤または黄）。B/U C/W は F7 の赤い BACKUP C/W ALARM 1灯と DPS 表示の故障メッセージ。主 C/W は R13U の状態灯にも記憶が残り、GPC の故障メッセージは出さない"; attribute :>> aural = "C&W トーン（400 Hz と 1024 Hz を 2.5 Hz で交互）。主 C/W・B/U C/W とも同じ音"; }
        part def <'AL-SH-3'> AlSh3 :> AlertLevel { doc /* クラス3 アラート（SM ALERT） */ attribute :>> visual = "F7 の青い SM ALERT 灯と DPS 表示の故障メッセージ行（キュー番号）・故障要約（SPEC 99）"; attribute :>> aural = "アラートトーン（512 Hz の連続音）。長さは 0〜99 秒で乗員が調整（睡眠中は長くする）"; }
        part def <'AL-SH-0'> AlSh0 :> AlertLevel { doc /* クラス0 限界検知 */ attribute :>> visual = "DPS 表示のパラメータの隣の上下の矢印（↑↓）。下向きは下限への到達と通常と違う状態（止まっている HUM SEP ファンなど）"; attribute :>> aural = "無し"; }
        part def <'AL-SH-A1'> AlShA1 :> AlertLevel { doc /* 補助：DPS 表示の故障メッセージと記号 */ attribute :>> visual = "故障メッセージ（ACK まで点滅、MSG RESET で消える。GPC のメッセージはオレンジ、MEDS のメッセージは白）、状態記号の黄色の overbright、ERR の点滅、データを受けない IDP の大きな X"; attribute :>> aural = "無し（クラス2・3の報知に伴うときはそれぞれの音）"; }
        part def <'AL-SH-A2'> AlShA2 :> AlertLevel { doc /* 補助：系ごとの状態の表示灯・トークバック・表示の色 */ attribute :>> visual = "MAIN ENGINE STATUS 灯（赤＝停止・レッドライン違反、琥珀＝指令・データ経路の故障など）、O1 の GPC STATUS 行列（黄）、A8U の REACH LIM 灯（黄）、PFD の黄色の枠（正常外の構成）、SPI の赤の縁取り（データの無効）、計器の緑（正常範囲）と赤（限界）、トークバックの灰・バーバーポール"; attribute :>> aural = "灯だけのもの（MAIN ENGINE STATUS・PFD の枠など）と、C&W・SM の報知を伴うもの（GPC STATUS の黄は F7 の GPC 灯と MASTER ALARM、REACH LIM は MASTER ALARM と SM トーン）がある"; }
    }
    #MapsTo dependency <'LM-01:AL-SH-1>AL-STD-1'> from ShuttleLevels::AlSh1 to StandardLevels::AlStd1;
    #MapsTo dependency <'LM-01:AL-SH-1>AL-STD-2'> from ShuttleLevels::AlSh1 to StandardLevels::AlStd2;
    #MapsTo dependency <'LM-02:AL-SH-2>AL-STD-3'> from ShuttleLevels::AlSh2 to StandardLevels::AlStd3;
    #MapsTo dependency <'LM-02:AL-SH-2>AL-STD-4'> from ShuttleLevels::AlSh2 to StandardLevels::AlStd4;
    #MapsTo dependency <'LM-03:AL-SH-3>AL-STD-4'> from ShuttleLevels::AlSh3 to StandardLevels::AlStd4;
    #MapsTo dependency <'LM-03:AL-SH-3>AL-STD-5'> from ShuttleLevels::AlSh3 to StandardLevels::AlStd5;
    #MapsTo dependency <'LM-04:AL-SH-0>AL-STD-5'> from ShuttleLevels::AlSh0 to StandardLevels::AlStd5;
    #MapsTo dependency <'LM-05:AL-SH-A1>AL-STD-5'> from ShuttleLevels::AlShA1 to StandardLevels::AlStd5;
    #MapsTo dependency <'LM-06:AL-SH-A2>AL-STD-3'> from ShuttleLevels::AlShA2 to StandardLevels::AlStd3;
    #MapsTo dependency <'LM-06:AL-SH-A2>AL-STD-4'> from ShuttleLevels::AlShA2 to StandardLevels::AlStd4;
    package Stations {
        doc /* 乗員の作業位置 */
        part def <'ST-01'> St01 :> CrewStation { doc /* 前方の操縦席（CDR、左） */ attribute :>> deck = "操縦室"; }
        part def <'ST-02'> St02 :> CrewStation { doc /* 前方の操縦席（PLT、右） */ attribute :>> deck = "操縦室"; }
        part def <'ST-03'> St03 :> CrewStation { doc /* 前方の中央（F7・中央卓 C2/C3・頭上の O 盤、CDR と PLT が共用） */ attribute :>> deck = "操縦室"; }
        part def <'ST-04'> St04 :> CrewStation { doc /* 後部操縦席（後ろ向きと頭上の窓のそば、A 盤・AFD 1） */ attribute :>> deck = "操縦室"; }
        part def <'ST-05'> St05 :> CrewStation { doc /* ミッションスペシャリスト席（CDR・PLT の後ろ） */ attribute :>> deck = "操縦室"; }
        part def <'ST-06'> St06 :> CrewStation { doc /* ミッションステーション（後部右舷、R10〜R13・R11L のキーボード） */ attribute :>> deck = "操縦室"; }
        part def <'ST-07'> St07 :> CrewStation { doc /* ペイロードステーション（後部左舷、L9〜L12） */ attribute :>> deck = "操縦室"; }
        part def <'ST-08'> St08 :> CrewStation { doc /* 中甲板（座席3〜4脚・寝台・MO/ML 盤） */ attribute :>> deck = "中甲板"; }
        part def <'ST-09'> St09 :> CrewStation { doc /* エアロック（AW 盤） */ attribute :>> deck = "エアロック"; }
        part def <'ST-10'> St10 :> CrewStation { doc /* 船外活動の乗員（EMU の DCM） */ attribute :>> deck = "エアロック"; }
    }
    package Panels {
        doc /* 表示・操作の盤・機器 */
        part def <'DC-01'> Dc01 :> ControlDisplayUnit { doc /* F7 の C&W 表示盤（40 灯）と MAIN ENGINE STATUS 灯 */ attribute :>> unitKind = "警報"; attribute :>> systems = "CW・EPS・ECLSS・GNC・RCS・OMS・MPS・APU・DPS・PLS"; }
        part def <'DC-02'> Dc02 :> ControlDisplayUnit { doc /* F2 の MASTER ALARM と飛行制御の押しボタン表示器（CDR） */ attribute :>> unitKind = "警報"; attribute :>> systems = "CW・GNC"; }
        part def <'DC-03'> Dc03 :> ControlDisplayUnit { doc /* F4 の MASTER ALARM と飛行制御の押しボタン表示器（PLT） */ attribute :>> unitKind = "警報"; attribute :>> systems = "CW・GNC"; }
        part def <'DC-04'> Dc04 :> ControlDisplayUnit { doc /* F6 の MDU（CDR 1・2：PFD）と着陸脚・HUD・AIR DATA のスイッチ（CDR） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "DPS・GNC・MECH"; }
        part def <'DC-05'> Dc05 :> ControlDisplayUnit { doc /* F8 の MDU（PLT 1・2：PFD）と着陸脚・HUD のスイッチ（PLT） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "DPS・GNC・MECH"; }
        part def <'DC-06'> Dc06 :> ControlDisplayUnit { doc /* F7 の MDU（CRT 1〜3・MFD 1・2：DPS 表示と系統の状態の MEDS 表示） */ attribute :>> unitKind = "表示"; attribute :>> systems = "DPS・MPS・OMS・APU"; }
        part def <'DC-07'> Dc07 :> ControlDisplayUnit { doc /* C2 のキーボード2台と IDP/CRT の選択スイッチ */ attribute :>> unitKind = "操作"; attribute :>> systems = "DPS"; }
        part def <'DC-08'> Dc08 :> ControlDisplayUnit { doc /* HUD（F6・F8 のグレアシールドの上のコンバイナ、F3 の HUD POWER） */ attribute :>> unitKind = "表示"; attribute :>> systems = "GNC"; }
        part def <'DC-09'> Dc09 :> ControlDisplayUnit { doc /* C3（C&W の MODE・MEMORY、MAIN ENGINE LIMIT SHUT DN、ORBITAL DAP、AUDIO CENTER） */ attribute :>> unitKind = "操作"; attribute :>> systems = "CW・MPS・GNC・CT"; }
        part def <'DC-10'> Dc10 :> ControlDisplayUnit { doc /* RHC（CDR・PLT・後部の3台） */ attribute :>> unitKind = "操作"; attribute :>> systems = "GNC・CT"; }
        part def <'DC-11'> Dc11 :> ControlDisplayUnit { doc /* THC（CDR と後部の2台） */ attribute :>> unitKind = "操作"; attribute :>> systems = "GNC・RCS"; }
        part def <'DC-12'> Dc12 :> ControlDisplayUnit { doc /* ラダーペダル（RPTA、CDR・PLT の2組） */ attribute :>> unitKind = "操作"; attribute :>> systems = "GNC・MECH"; }
        part def <'DC-13'> Dc13 :> ControlDisplayUnit { doc /* O1（CABIN PRESS・PPO2・dP/dT・O2/N2 FLOW・AIR TEMP の計器と GPC STATUS 行列） */ attribute :>> unitKind = "表示"; attribute :>> systems = "ECLSS・DPS"; }
        part def <'DC-14'> Dc14 :> ControlDisplayUnit { doc /* O2（CRYO O2・H2 の圧力・温度の計器、FUEL CELL STACK TEMP 計） */ attribute :>> unitKind = "表示"; attribute :>> systems = "EPS"; }
        part def <'DC-15'> Dc15 :> ControlDisplayUnit { doc /* O3（RCS/OMS PRESS などの計器と MISSION TIME） */ attribute :>> unitKind = "表示"; attribute :>> systems = "RCS・OMS・DPS"; }
        part def <'DC-16'> Dc16 :> ControlDisplayUnit { doc /* O5（LEFT AUDIO）・O9（RIGHT AUDIO）の ATU */ attribute :>> unitKind = "操作"; attribute :>> systems = "CT・CW"; }
        part def <'DC-17'> Dc17 :> ControlDisplayUnit { doc /* O6（GPC の MODE・OUTPUT スイッチとトークバック、表示灯の明るさ） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "DPS・CW"; }
        part def <'DC-18'> Dc18 :> ControlDisplayUnit { doc /* L1（SMOKE DETECTION 灯・CIRCUIT TEST、FIRE SUPPRESSION・AGENT DISCH） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "ECLSS・CW"; }
        part def <'DC-19'> Dc19 :> ControlDisplayUnit { doc /* L2（ATM PRESS CONTROL の O2/N2 の供給・XOVR スイッチとトークバック） */ attribute :>> unitKind = "操作"; attribute :>> systems = "ECLSS"; }
        part def <'DC-20'> Dc20 :> ControlDisplayUnit { doc /* R1（FUEL CELL REAC スイッチとトークバック、クライオのヒータ） */ attribute :>> unitKind = "操作"; attribute :>> systems = "EPS"; }
        part def <'DC-21'> Dc21 :> ControlDisplayUnit { doc /* R2（APU の CNTLR PWR・OPERATE・SPEED SELECT・AUTO SHUT DOWN と READY TO START トークバック） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "APU"; }
        part def <'DC-22'> Dc22 :> ControlDisplayUnit { doc /* R13U（主 C/W のパラメータ状態の 120 灯、限界の設定・読出し、ENABLE/INHIBIT、LAMP TEST、TONE VOLUME） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "CW"; }
        part def <'DC-23'> Dc23 :> ControlDisplayUnit { doc /* A6U（後部の FLT CNTLR POWER・SENSE、ORBITAL DAP、EVENT TIMER、ANNUNCIATOR の灯のスイッチ） */ attribute :>> unitKind = "操作"; attribute :>> systems = "GNC・DPS・CT"; }
        part def <'DC-24'> Dc24 :> ControlDisplayUnit { doc /* A7U（CCTV の操作と MASTER ALARM） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "CT・CW"; }
        part def <'DC-25'> Dc25 :> ControlDisplayUnit { doc /* A8U（RMS の表示と操作、REACH LIM 灯・MASTER ALARM） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "PLS・CW"; }
        part def <'DC-26'> Dc26 :> ControlDisplayUnit { doc /* 後部の MDU（AFD 1・R12 の CRT 4）と R11L のキーボード */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "DPS"; }
        part def <'DC-27'> Dc27 :> ControlDisplayUnit { doc /* A3 の CCTV モニタ2台（後部） */ attribute :>> unitKind = "表示"; attribute :>> systems = "CT・PLS"; }
        part def <'DC-28'> Dc28 :> ControlDisplayUnit { doc /* MO52J の MASTER ALARM（中甲板） */ attribute :>> unitKind = "警報"; attribute :>> systems = "CW"; }
        part def <'DC-29'> Dc29 :> ControlDisplayUnit { doc /* 中甲板の音声（MO42F の ATU・MASTER SPEAKER VOLUME・BYPASS TONE VOLUME、MO29J のスピーカ） */ attribute :>> unitKind = "警報"; attribute :>> systems = "CT・CW"; }
        part def <'DC-30'> Dc30 :> ControlDisplayUnit { doc /* AW18D の ATU（エアロック） */ attribute :>> unitKind = "操作"; attribute :>> systems = "CT・EVA"; }
        part def <'DC-31'> Dc31 :> ControlDisplayUnit { doc /* EMU の DCM（表示・操作と CWS の英数字表示・音） */ attribute :>> unitKind = "表示と操作"; attribute :>> systems = "EVA"; }
    }
    #LocatedAt dependency <'DC-01>ST-03'> from Panels::Dc01 to Stations::St03;
    #LocatedAt dependency <'DC-02>ST-01'> from Panels::Dc02 to Stations::St01;
    #LocatedAt dependency <'DC-03>ST-02'> from Panels::Dc03 to Stations::St02;
    #LocatedAt dependency <'DC-04>ST-01'> from Panels::Dc04 to Stations::St01;
    #LocatedAt dependency <'DC-05>ST-02'> from Panels::Dc05 to Stations::St02;
    #LocatedAt dependency <'DC-06>ST-03'> from Panels::Dc06 to Stations::St03;
    #LocatedAt dependency <'DC-07>ST-03'> from Panels::Dc07 to Stations::St03;
    #LocatedAt dependency <'DC-08>ST-01'> from Panels::Dc08 to Stations::St01;
    #LocatedAt dependency <'DC-09>ST-03'> from Panels::Dc09 to Stations::St03;
    #LocatedAt dependency <'DC-10>ST-01'> from Panels::Dc10 to Stations::St01;
    #LocatedAt dependency <'DC-11>ST-01'> from Panels::Dc11 to Stations::St01;
    #LocatedAt dependency <'DC-12>ST-01'> from Panels::Dc12 to Stations::St01;
    #LocatedAt dependency <'DC-13>ST-03'> from Panels::Dc13 to Stations::St03;
    #LocatedAt dependency <'DC-14>ST-03'> from Panels::Dc14 to Stations::St03;
    #LocatedAt dependency <'DC-15>ST-03'> from Panels::Dc15 to Stations::St03;
    #LocatedAt dependency <'DC-16>ST-03'> from Panels::Dc16 to Stations::St03;
    #LocatedAt dependency <'DC-17>ST-03'> from Panels::Dc17 to Stations::St03;
    #LocatedAt dependency <'DC-18>ST-01'> from Panels::Dc18 to Stations::St01;
    #LocatedAt dependency <'DC-19>ST-01'> from Panels::Dc19 to Stations::St01;
    #LocatedAt dependency <'DC-20>ST-02'> from Panels::Dc20 to Stations::St02;
    #LocatedAt dependency <'DC-21>ST-02'> from Panels::Dc21 to Stations::St02;
    #LocatedAt dependency <'DC-22>ST-06'> from Panels::Dc22 to Stations::St06;
    #LocatedAt dependency <'DC-23>ST-04'> from Panels::Dc23 to Stations::St04;
    #LocatedAt dependency <'DC-24>ST-04'> from Panels::Dc24 to Stations::St04;
    #LocatedAt dependency <'DC-25>ST-04'> from Panels::Dc25 to Stations::St04;
    #LocatedAt dependency <'DC-26>ST-04'> from Panels::Dc26 to Stations::St04;
    #LocatedAt dependency <'DC-27>ST-04'> from Panels::Dc27 to Stations::St04;
    #LocatedAt dependency <'DC-28>ST-08'> from Panels::Dc28 to Stations::St08;
    #LocatedAt dependency <'DC-29>ST-08'> from Panels::Dc29 to Stations::St08;
    #LocatedAt dependency <'DC-30>ST-09'> from Panels::Dc30 to Stations::St09;
    #LocatedAt dependency <'DC-31>ST-10'> from Panels::Dc31 to Stations::St10;
    #ClassifiedAs dependency <'CW-01>AL-SH-2'> from SSD_FDIR_ORB_001::O2PressAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-02>AL-SH-2'> from SSD_FDIR_ORB_001::H2PressAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-03>AL-SH-2'> from SSD_FDIR_ORB_001::FuelCellReacAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-04>AL-SH-2'> from SSD_FDIR_ORB_001::FuelCellStackTempAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-05>AL-SH-2'> from SSD_FDIR_ORB_001::FuelCellPumpAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-06>AL-SH-2'> from SSD_FDIR_ORB_001::CabinAtmAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-07>AL-SH-2'> from SSD_FDIR_ORB_001::O2HeaterTempAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-08>AL-SH-2'> from SSD_FDIR_ORB_001::MainBusUndervoltAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-09>AL-SH-2'> from SSD_FDIR_ORB_001::AcVoltageAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-10>AL-SH-2'> from SSD_FDIR_ORB_001::AcOverloadAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-11>AL-SH-2'> from SSD_FDIR_ORB_001::FreonLoopAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-12>AL-SH-2'> from SSD_FDIR_ORB_001::AvBayCabinAirAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-13>AL-SH-2'> from SSD_FDIR_ORB_001::ImuAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-14>AL-SH-2'> from SSD_FDIR_ORB_001::FwdRcsAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-15>AL-SH-2'> from SSD_FDIR_ORB_001::RcsJetAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-16>AL-SH-2'> from SSD_FDIR_ORB_001::H2OLoopAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-17>AL-SH-2'> from SSD_FDIR_ORB_001::RgaAccelAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-18>AL-SH-2'> from SSD_FDIR_ORB_001::AirDataAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-19>AL-SH-2'> from SSD_FDIR_ORB_001::LeftRcsAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-20>AL-SH-2'> from SSD_FDIR_ORB_001::RightRcsAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-22>AL-SH-2'> from SSD_FDIR_ORB_001::LeftRhcAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-23>AL-SH-2'> from SSD_FDIR_ORB_001::RightAftRhcAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-24>AL-SH-2'> from SSD_FDIR_ORB_001::LeftOmsAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-25>AL-SH-2'> from SSD_FDIR_ORB_001::RightOmsAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-26>AL-SH-2'> from SSD_FDIR_ORB_001::PayloadWarningAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-27>AL-SH-2'> from SSD_FDIR_ORB_001::GpcAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-28>AL-SH-2'> from SSD_FDIR_ORB_001::FcsSaturationAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-29>AL-SH-2'> from SSD_FDIR_ORB_001::OmsKitAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-30>AL-SH-2'> from SSD_FDIR_ORB_001::OmsTvcAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-31>AL-SH-2'> from SSD_FDIR_ORB_001::PayloadCautionAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-32>AL-SH-2'> from SSD_FDIR_ORB_001::PrimaryCWAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-33>AL-SH-2'> from SSD_FDIR_ORB_001::FcsChannelAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-34>AL-SH-2'> from SSD_FDIR_ORB_001::MpsAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-36>AL-SH-2'> from SSD_FDIR_ORB_001::BackupCWAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-37>AL-SH-2'> from SSD_FDIR_ORB_001::ApuTempAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-38>AL-SH-2'> from SSD_FDIR_ORB_001::ApuOverspeedAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-39>AL-SH-2'> from SSD_FDIR_ORB_001::ApuUnderspeedAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'CW-40>AL-SH-2'> from SSD_FDIR_ORB_001::HydPressAlarm to ShuttleLevels::AlSh2;
    #ClassifiedAs dependency <'EM-01>AL-SH-1'> from SSD_FDIR_ORB_001::SmokeDetectionFireAlarm to ShuttleLevels::AlSh1;
    #ClassifiedAs dependency <'EM-02>AL-SH-1'> from SSD_FDIR_ORB_001::CabinPressureDpDtAlarm to ShuttleLevels::AlSh1;
}
