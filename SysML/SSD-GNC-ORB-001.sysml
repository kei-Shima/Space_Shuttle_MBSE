// SysML v2 テキスト：内部ブロック図（機器の接続と、流れる物・量と単位）
// SSD-GNC-ORB-001 GN&C の内部ブロック・モード・冗長管理定義書（航法センサと飛行制御の流れ、OPS・DAP・IMU・航法センサの状態、冗長管理） の表から生成（lib/build_docs_bs.py・rev_bs/bsdata.py、部品は lib/ibdmodel2.py・lib/behdocs.py）。値の根拠の頁は SSD-GNC-ORB-001 にある。
package SSD_GNC_ORB_001 {
    doc /* SSD-GNC-ORB-001 GN&C の内部ブロック・モード・冗長管理定義書（航法センサと飛行制御の流れ、OPS・DAP・IMU・航法センサの状態、冗長管理）。図191・図192 と同じ部品・ポート・流れ・値。機器は構造モデル（SSD-BLK-SYS-001）の機能ブロックの部品の中に置き、流れは IF を詳しくする（#refinement）。状態機械は GNC の下位の機能ブロックの部品の定義を特化して持たせ、冗長管理は機能ブロックの part def に付ける metadata で示す。 */
    private import SSD_BLK_SYS_001::*;
    private import ModelingMetadata::*;
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    private import SSD_BEH_ORB_005::PhaseMode;
    // ---- 流れる物（既存の種別を特化し、量を属性に持つ）とポート定義
    item def GncSensorData :> DataCommand {
        doc /* GN&C センサの計測値（IMU の姿勢・速度、スタートラッカの視線、TACAN・MLS の距離・角度、ADTA の圧力・温度、GPS のベクトル、RGA・AA の電圧と、SOP／RM が選んだ値）（データ・指令） */
        attribute incorporationInterval : DurationValue[0..*] { doc /* 時間（資料の単位 s） */ }
    }
    port def GncSensorDataPort :> DataPort { out item :>> dataCommand : GncSensorData; }
    item def SensorCommand :> DataCommand {
        doc /* GPC からセンサへの指令（IMU の運転ディスクリート・トルク指令・スルー指令、TACAN のチャネル選択、アラインメントの実行）（データ・指令） */
    }
    port def SensorCommandPort :> DataPort { out item :>> dataCommand : SensorCommand; }
    item def NavState :> DataCommand {
        doc /* 航法の出力（M50 座標の位置・速度の状態ベクトルと時刻、姿勢）（データ・指令） */
    }
    port def NavStatePort :> DataPort { out item :>> dataCommand : NavState; }
    item def SteeringCommand :> DataCommand {
        doc /* 誘導の指令（飛行制御への操舵指令、MPS へのスロットル指令）（データ・指令） */
    }
    port def SteeringCommandPort :> DataPort { out item :>> dataCommand : SteeringCommand; }
    item def RmStatus :> DataCommand {
        doc /* 冗長管理の状態の通知（故障・ジレンマ・BITE。警報灯・SM ALERT・故障メッセージ）（データ・指令） */
    }
    port def RmStatusPort :> DataPort { out item :>> dataCommand : RmStatus; }
    item def NavRfSignal :> RfSignal {
        doc /* 航法の電波（TACAN の L 帯、MLS の Ku 帯、GPS 衛星の測距信号）（RF（無線）） */
    }
    port def NavRfSignalPort :> RfPort { out item :>> rfSignal : NavRfSignal; }
    item def SensorPower :> ElectricPower {
        doc /* センサへの電力（28 V 直流、交流）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
    }
    port def SensorPowerPort :> PowerPort { out item :>> electricPower : SensorPower; }
    item def EquipmentHeat :> Heat {
        doc /* 機器の発熱（キャビン空気による強制空冷で運び去る熱）（熱） */
    }
    port def EquipmentHeatPort :> HeatPort { out item :>> heat : EquipmentHeat; }
    item def ProbeAirPressure :> Fluid {
        doc /* エアデータプローブの検知圧（静圧と迎角の上・中・下の圧力。空気配管で ADTA へ）（推進薬・流体） */
    }
    port def ProbeAirPressurePort :> FluidPort { out item :>> fluid : ProbeAirPressure; }
    item def ControllerSignal :> DataCommand {
        doc /* 操縦装置・スイッチ・押しボタンの信号（変換器の変位に比例する電圧、スイッチの接点、モードの要求）（データ・指令） */
    }
    port def ControllerSignalPort :> DataPort { out item :>> dataCommand : ControllerSignal; }
    item def EffectorCommand :> DataCommand {
        doc /* 飛行制御から舵効への指令（舵面の位置指令、SSME・SRB の位置指令、RCS の噴射指令、OMS のジンバル・点火の指令と、ASA・ATVC がサーボ弁・隔離弁へ出す駆動の電圧）（データ・指令） */
    }
    port def EffectorCommandPort :> DataPort { out item :>> dataCommand : EffectorCommand; }
    item def ActuatorFeedback :> DataCommand {
        doc /* アクチュエータからの戻りの信号（舵面の位置フィードバック、サーボ弁の二次差圧 SEC ΔP）（データ・指令） */
        attribute secondaryDeltaPressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psid） */ }
        attribute isolationDelay : DurationValue[0..*] { doc /* 時間（資料の単位 s） */ }
    }
    port def ActuatorFeedbackPort :> DataPort { out item :>> dataCommand : ActuatorFeedback; }
    item def DisplayData :> DataCommand {
        doc /* 表示データ（GPC から FC バス・IDP を経て PFD・SPI・HUD・DPS 表示に出すデータと、乗員が表示から読み取る情報）（データ・指令） */
    }
    port def DisplayDataPort :> DataPort { out item :>> dataCommand : DisplayData; }
    item def ActuatorHydraulicPower :> HydraulicFluid {
        doc /* 舵面のアクチュエータへの油圧（油圧系 1・2・3 の作動油）（油圧） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
        attribute switchoverPressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def ActuatorHydraulicPowerPort :> HydraulicPort { out item :>> hydraulicFluid : ActuatorHydraulicPower; }
    item def FcsPower :> ElectricPower {
        doc /* 飛行制御の機器への電力（主母線 A・B・C からの直流、DDU が操縦装置へ配る直流・交流）（電力） */
    }
    port def FcsPowerPort :> PowerPort { out item :>> electricPower : FcsPower; }
    item def AvionicsHeat :> Heat {
        doc /* 機器の発熱（水冷却ループのコールドプレートで運び去る熱）（熱） */
    }
    port def AvionicsHeatPort :> HeatPort { out item :>> heat : AvionicsHeat; }
    // ---- 図191 GN&C 航法・センサ 内部ブロック図：機器
    part def <'EQ-GNA-01'> InertialMeasurementUnit :> SSD_ALC_SYS_001::Physical::PHY_GNC_01 {
        doc /* IMU（慣性計測装置）1・2・3（機能ブロック SSD-FD-GNC-INS-001、機器 PHY-GNC-01） */
        port o_FL_GNA_01 : GncSensorDataPort;
        port i_FL_GNA_03 : ~SensorCommandPort;
        port i_FL_GNA_32 : ~SensorCommandPort;
        port i_FL_GNA_33 : ~SensorPowerPort;
        port o_FL_GNA_38 : EquipmentHeatPort;
    }
    part def <'EQ-GNA-02'> StarTracker :> SSD_ALC_SYS_001::Physical::PHY_GNC_02 {
        doc /* スタートラッカ（−Y・−Z）（機能ブロック SSD-FD-GNC-INS-001、機器 PHY-GNC-02） */
        port o_FL_GNA_04 : GncSensorDataPort;
        port i_FL_GNA_34 : ~SensorPowerPort;
        port i_FL_GNA_35 : ~SensorPowerPort;
    }
    part def <'EQ-GNA-03'> CrewOpticalAlignmentSight {
        doc /* COAS と ATT REF 押しボタン（HUD のテストパターンでも同じ手順でマークする）（機能ブロック SSD-FD-GNC-INS-001） */
        port o_FL_GNA_05 : GncSensorDataPort;
    }
    part def <'EQ-GNA-04'> Tacan :> SSD_ALC_SYS_001::Physical::PHY_GNC_03 {
        doc /* TACAN 1・2・3（3系統 GPS に改修していない機体）（機能ブロック SSD-FD-GNC-NAS-001、機器 PHY-GNC-03） */
        port o_FL_GNA_07 : GncSensorDataPort;
        port i_FL_GNA_18 : ~NavRfSignalPort;
        port o_FL_GNA_39 : EquipmentHeatPort;
    }
    part def <'EQ-GNA-05'> GpsReceiver :> SSD_ALC_SYS_001::Physical::PHY_GNC_03 {
        doc /* GPS 受信機 1・2・3（OV-105。アンテナ上下・プリアンプ・結合器を含む）（機能ブロック SSD-FD-GNC-NAS-001、機器 PHY-GNC-03） */
        port o_FL_GNA_08 : GncSensorDataPort;
        port i_FL_GNA_20 : ~NavRfSignalPort;
        port i_FL_GNA_37 : ~SensorPowerPort;
    }
    part def <'EQ-GNA-06'> LeftAirDataProbe :> SSD_ALC_SYS_001::Physical::PHY_GNC_04 {
        doc /* エアデータプローブ（左）（機能ブロック SSD-FD-GNC-NAS-001、機器 PHY-GNC-04） */
        port o_FL_GNA_10 : ProbeAirPressurePort;
    }
    part def <'EQ-GNA-07'> RightAirDataProbe :> SSD_ALC_SYS_001::Physical::PHY_GNC_04 {
        doc /* エアデータプローブ（右）（機能ブロック SSD-FD-GNC-NAS-001、機器 PHY-GNC-04） */
        port o_FL_GNA_11 : ProbeAirPressurePort;
    }
    part def <'EQ-GNA-08'> AdtaLeftSide :> SSD_ALC_SYS_001::Physical::PHY_GNC_04 {
        doc /* ADTA 1・3（左プローブ側）（機能ブロック SSD-FD-GNC-NAS-001、機器 PHY-GNC-04） */
        port i_FL_GNA_10 : ~ProbeAirPressurePort;
        port o_FL_GNA_12 : GncSensorDataPort;
    }
    part def <'EQ-GNA-09'> AdtaRightSide :> SSD_ALC_SYS_001::Physical::PHY_GNC_04 {
        doc /* ADTA 2・4（右プローブ側）（機能ブロック SSD-FD-GNC-NAS-001、機器 PHY-GNC-04） */
        port i_FL_GNA_11 : ~ProbeAirPressurePort;
        port o_FL_GNA_13 : GncSensorDataPort;
    }
    part def <'EQ-GNA-10'> MicrowaveLandingSystem :> SSD_ALC_SYS_001::Physical::PHY_GNC_05 {
        doc /* MLS 1・2・3（Ku 帯の送受信機＝RF 組立と復号器、アンテナ）（機能ブロック SSD-FD-GNC-NAS-001、機器 PHY-GNC-05） */
        port o_FL_GNA_09 : GncSensorDataPort;
        port i_FL_GNA_19 : ~NavRfSignalPort;
        port i_FL_GNA_36 : ~SensorPowerPort;
    }
    part def <'EQ-GNA-11'> RadarAltimeter {
        doc /* 電波高度計 1・2（C 帯の送受信機、アンテナ4）（機能ブロック SSD-FD-GNC-NAS-001） */
        port o_FL_GNA_14 : GncSensorDataPort;
    }
    part def <'EQ-GNA-12'> RateGyroAssembly {
        doc /* RGA（オービタのレートジャイロ組立）1〜4（機能ブロック SSD-FD-GNC-FCS-001） */
        port o_FL_GNA_15 : GncSensorDataPort;
    }
    part def <'EQ-GNA-13'> AccelerometerAssembly {
        doc /* AA（加速度計組立）1〜4（機能ブロック SSD-FD-GNC-FCS-001） */
        port o_FL_GNA_16 : GncSensorDataPort;
    }
    part def <'EQ-GNA-14'> FcsSensorSopRm {
        doc /* 飛行制御センサの SOP／RM（RGA SOP・AA SOP・SRB RGA SOP と IMVS の選択・故障検出）（機能ブロック SSD-FD-GNC-FCS-001） */
        port i_FL_GNA_15 : ~GncSensorDataPort;
        port i_FL_GNA_16 : ~GncSensorDataPort;
        port i_FL_GNA_17 : ~GncSensorDataPort;
        port o_FL_GNA_31 : RmStatusPort;
    }
    part def <'EQ-GNA-15'> NavSensorSopRm {
        doc /* 航法センサの SOP／RM（IMU SOP・IMU RM、スタートラッカ SOP、TACAN・MLS の RM、ADTA SOP・RM、GPS の QA と選択フィルタ）（機能ブロック SSD-FD-GNC-GNS-001） */
        port i_FL_GNA_01 : ~GncSensorDataPort;
        port o_FL_GNA_02 : SensorCommandPort;
        port i_FL_GNA_06 : ~GncSensorDataPort;
        port i_FL_GNA_07 : ~GncSensorDataPort;
        port i_FL_GNA_08 : ~GncSensorDataPort;
        port i_FL_GNA_09 : ~GncSensorDataPort;
        port i_FL_GNA_12 : ~GncSensorDataPort;
        port i_FL_GNA_13 : ~GncSensorDataPort;
        port o_FL_GNA_21 : GncSensorDataPort;
        port o_FL_GNA_23 : GncSensorDataPort;
        port o_FL_GNA_26 : GncSensorDataPort;
        port o_FL_GNA_30 : RmStatusPort;
    }
    part def <'EQ-GNA-16'> NavigationSoftware {
        doc /* 航法（状態ベクトルの伝播、外部センサの取り込み＝カルマンフィルタ、ランデブ航法）（機能ブロック SSD-FD-GNC-GNS-001） */
        port i_FL_GNA_21 : ~GncSensorDataPort;
        port o_FL_GNA_22 : NavStatePort;
        port o_FL_GNA_25 : NavStatePort;
        port o_FL_GNA_27 : NavStatePort;
        port i_FL_GNA_29 : ~GncSensorDataPort;
    }
    part def <'EQ-GNA-17'> GuidanceSoftware {
        doc /* 誘導（上昇の第1段・第2段、軌道、再突入・TAEM・A/L）（機能ブロック SSD-FD-GNC-GNS-001） */
        port i_FL_GNA_22 : ~NavStatePort;
        port i_FL_GNA_23 : ~GncSensorDataPort;
        port o_FL_GNA_24 : SteeringCommandPort;
        port o_FL_GNA_28 : SteeringCommandPort;
    }
    part def <'EQ-GNA-18'> ImuAlignmentOperation {
        doc /* IMU アラインメントの操作（乗員と MCC：恒星アラインメント、IMU 間のアラインメント）（機能ブロック SSD-FD-GNC-OPS-001） */
        port o_FL_GNA_32 : SensorCommandPort;
    }
    // ---- 図191 GN&C 航法・センサ 内部ブロック図：接続（GncNavInterconnection は GNC を特化）
    part def GncNavInterconnection :> GNC {
        doc /* GN&C（航法センサ・航法・誘導）の内部ブロック図（図191）。基の機能ブロック SSD-FD-GNC-001。 */
        part redefines ins {
            part inertialMeasurementUnit[3] : InertialMeasurementUnit;
            part starTracker[2] : StarTracker;
            part crewOpticalAlignmentSight : CrewOpticalAlignmentSight;
        }
        part redefines nas {
            part tacan[3] : Tacan;
            part gpsReceiver[3] : GpsReceiver;
            part leftAirDataProbe : LeftAirDataProbe;
            part rightAirDataProbe : RightAirDataProbe;
            part adtaLeftSide[2] : AdtaLeftSide;
            part adtaRightSide[2] : AdtaRightSide;
            part microwaveLandingSystem[3] : MicrowaveLandingSystem;
            part radarAltimeter[2] : RadarAltimeter;
        }
        part redefines fcs {
            part rateGyroAssembly[4] : RateGyroAssembly;
            part accelerometerAssembly[4] : AccelerometerAssembly;
            part fcsSensorSopRm : FcsSensorSopRm;
        }
        part redefines gns {
            part navSensorSopRm : NavSensorSopRm;
            part navigationSoftware : NavigationSoftware;
            part guidanceSoftware : GuidanceSoftware;
        }
        part redefines ops {
            part imuAlignmentOperation : ImuAlignmentOperation;
        }
        port b_FL_GNA_02 : SensorCommandPort { doc /* 枠の外の相手 EB-GNA-01（DPS：飛行重要 MDM（FF 1〜4・FA 1〜4）とデータバス） */ }
        port b_FL_GNA_03 : ~SensorCommandPort { doc /* 枠の外の相手 EB-GNA-01（DPS：飛行重要 MDM（FF 1〜4・FA 1〜4）とデータバス） */ }
        port b_FL_GNA_04 : GncSensorDataPort { doc /* 枠の外の相手 EB-GNA-01（DPS：飛行重要 MDM（FF 1〜4・FA 1〜4）とデータバス） */ }
        port b_FL_GNA_05 : GncSensorDataPort { doc /* 枠の外の相手 EB-GNA-01（DPS：飛行重要 MDM（FF 1〜4・FA 1〜4）とデータバス） */ }
        port b_FL_GNA_06 : ~GncSensorDataPort { doc /* 枠の外の相手 EB-GNA-01（DPS：飛行重要 MDM（FF 1〜4・FA 1〜4）とデータバス） */ }
        port b_FL_GNA_14 : GncSensorDataPort { doc /* 枠の外の相手 EB-GNA-01（DPS：飛行重要 MDM（FF 1〜4・FA 1〜4）とデータバス） */ }
        port b_FL_GNA_17 : ~GncSensorDataPort { doc /* 枠の外の相手 EB-GNA-12（SRB（SRB RGA：各 SRB に2台、計4台）） */ }
        port b_FL_GNA_18 : ~NavRfSignalPort { doc /* 枠の外の相手 EB-GNA-06（地上の TACAN／VORTAC 局） */ }
        port b_FL_GNA_19 : ~NavRfSignalPort { doc /* 枠の外の相手 EB-GNA-07（MLS の地上局（方位／DME 局とグライドスロープ＝仰角の局）） */ }
        port b_FL_GNA_20 : ~NavRfSignalPort { doc /* 枠の外の相手 EB-GNA-08（GPS 衛星（NAVSTAR）） */ }
        port b_FL_GNA_24 : SteeringCommandPort { doc /* 枠の外の相手 EB-GNA-11（DAP（飛行制御のソフトウェア。ibd_fcs の図の部品）） */ }
        port b_FL_GNA_25 : NavStatePort { doc /* 枠の外の相手 EB-GNA-11（DAP（飛行制御のソフトウェア。ibd_fcs の図の部品）） */ }
        port b_FL_GNA_26 : GncSensorDataPort { doc /* 枠の外の相手 EB-GNA-15（DAP（飛行制御則へのエアデータの入力。GAB-11 と同じ相手で、IF が違うので分けた）） */ }
        port b_FL_GNA_27 : NavStatePort { doc /* 枠の外の相手 EB-GNA-14（乗員操縦・表示（専用表示と GNC の DPS 表示。ibd_fcs の図の部品）） */ }
        port b_FL_GNA_28 : SteeringCommandPort { doc /* 枠の外の相手 EB-GNA-13（MPS（主エンジンのスロットル）） */ }
        port b_FL_GNA_29 : ~GncSensorDataPort { doc /* 枠の外の相手 EB-GNA-09（C&T：Ku 帯レーダ（ランデブレーダ）） */ }
        port b_FL_GNA_30 : RmStatusPort { doc /* 枠の外の相手 EB-GNA-10（警報系 C/W（パネル F7 の IMU 灯・AIR DATA 灯、SM ALERT、故障メッセージ）） */ }
        port b_FL_GNA_31 : RmStatusPort { doc /* 枠の外の相手 EB-GNA-10（警報系 C/W（パネル F7 の IMU 灯・AIR DATA 灯、SM ALERT、故障メッセージ）） */ }
        port b_FL_GNA_33 : ~SensorPowerPort { doc /* 枠の外の相手 EB-GNA-02（EPS（IMU の 28 VDC の RPC、スタートラッカの扉の交流モータ）） */ }
        port b_FL_GNA_34 : ~SensorPowerPort { doc /* 枠の外の相手 EB-GNA-02（EPS（IMU の 28 VDC の RPC、スタートラッカの扉の交流モータ）） */ }
        port b_FL_GNA_35 : ~SensorPowerPort { doc /* 枠の外の相手 EB-GNA-04（EPS（そのほかの GN&C センサへの給電：スタートラッカ本体）） */ }
        port b_FL_GNA_36 : ~SensorPowerPort { doc /* 枠の外の相手 EB-GNA-03（EPS（MLS の主母線 A・B・C、GPS の ESS 母線／FPC）） */ }
        port b_FL_GNA_37 : ~SensorPowerPort { doc /* 枠の外の相手 EB-GNA-03（EPS（MLS の主母線 A・B・C、GPS の ESS 母線／FPC）） */ }
        port b_FL_GNA_38 : EquipmentHeatPort { doc /* 枠の外の相手 EB-GNA-05（ECLSS ARS（IMU ファンとアビオニクスベイのファン、キャビン空気）） */ }
        port b_FL_GNA_39 : EquipmentHeatPort { doc /* 枠の外の相手 EB-GNA-05（ECLSS ARS（IMU ファンとアビオニクスベイのファン、キャビン空気）） */ }
        flow <'FL-GNA-01'> fl_gna_01 of GncSensorData from ins.inertialMeasurementUnit.o_FL_GNA_01.dataCommand to gns.navSensorSopRm.i_FL_GNA_01.dataCommand;
        flow <'FL-GNA-02'> fl_gna_02 of SensorCommand from gns.navSensorSopRm.o_FL_GNA_02.dataCommand to b_FL_GNA_02.dataCommand;
        flow <'FL-GNA-03'> fl_gna_03 of SensorCommand from b_FL_GNA_03.dataCommand to ins.inertialMeasurementUnit.i_FL_GNA_03.dataCommand;
        flow <'FL-GNA-04'> fl_gna_04 of GncSensorData from ins.starTracker.o_FL_GNA_04.dataCommand to b_FL_GNA_04.dataCommand;
        flow <'FL-GNA-05'> fl_gna_05 of GncSensorData from ins.crewOpticalAlignmentSight.o_FL_GNA_05.dataCommand to b_FL_GNA_05.dataCommand;
        flow <'FL-GNA-06'> fl_gna_06 of GncSensorData from b_FL_GNA_06.dataCommand to gns.navSensorSopRm.i_FL_GNA_06.dataCommand;
        flow <'FL-GNA-07'> fl_gna_07 of GncSensorData from nas.tacan.o_FL_GNA_07.dataCommand to gns.navSensorSopRm.i_FL_GNA_07.dataCommand;
        flow <'FL-GNA-08'> fl_gna_08 from nas.gpsReceiver.o_FL_GNA_08.dataCommand to gns.navSensorSopRm.i_FL_GNA_08.dataCommand {
            item :>> payload : GncSensorData {
                attribute incorporationInterval1Nominal :> incorporationInterval = 42 [s] { doc /* 時間 42 s */ }
                attribute incorporationInterval2Nominal :> incorporationInterval = 9 [s] { doc /* 時間 9 s */ }
            }
        }
        flow <'FL-GNA-09'> fl_gna_09 of GncSensorData from nas.microwaveLandingSystem.o_FL_GNA_09.dataCommand to gns.navSensorSopRm.i_FL_GNA_09.dataCommand;
        flow <'FL-GNA-10'> fl_gna_10 of ProbeAirPressure from nas.leftAirDataProbe.o_FL_GNA_10.fluid to nas.adtaLeftSide.i_FL_GNA_10.fluid;
        flow <'FL-GNA-11'> fl_gna_11 of ProbeAirPressure from nas.rightAirDataProbe.o_FL_GNA_11.fluid to nas.adtaRightSide.i_FL_GNA_11.fluid;
        flow <'FL-GNA-12'> fl_gna_12 of GncSensorData from nas.adtaLeftSide.o_FL_GNA_12.dataCommand to gns.navSensorSopRm.i_FL_GNA_12.dataCommand;
        flow <'FL-GNA-13'> fl_gna_13 of GncSensorData from nas.adtaRightSide.o_FL_GNA_13.dataCommand to gns.navSensorSopRm.i_FL_GNA_13.dataCommand;
        flow <'FL-GNA-14'> fl_gna_14 of GncSensorData from nas.radarAltimeter.o_FL_GNA_14.dataCommand to b_FL_GNA_14.dataCommand;
        flow <'FL-GNA-15'> fl_gna_15 of GncSensorData from fcs.rateGyroAssembly.o_FL_GNA_15.dataCommand to fcs.fcsSensorSopRm.i_FL_GNA_15.dataCommand;
        flow <'FL-GNA-16'> fl_gna_16 of GncSensorData from fcs.accelerometerAssembly.o_FL_GNA_16.dataCommand to fcs.fcsSensorSopRm.i_FL_GNA_16.dataCommand;
        flow <'FL-GNA-17'> fl_gna_17 of GncSensorData from b_FL_GNA_17.dataCommand to fcs.fcsSensorSopRm.i_FL_GNA_17.dataCommand;
        flow <'FL-GNA-18'> fl_gna_18 of NavRfSignal from b_FL_GNA_18.rfSignal to nas.tacan.i_FL_GNA_18.rfSignal;
        flow <'FL-GNA-19'> fl_gna_19 of NavRfSignal from b_FL_GNA_19.rfSignal to nas.microwaveLandingSystem.i_FL_GNA_19.rfSignal;
        flow <'FL-GNA-20'> fl_gna_20 of NavRfSignal from b_FL_GNA_20.rfSignal to nas.gpsReceiver.i_FL_GNA_20.rfSignal;
        flow <'FL-GNA-21'> fl_gna_21 of GncSensorData from gns.navSensorSopRm.o_FL_GNA_21.dataCommand to gns.navigationSoftware.i_FL_GNA_21.dataCommand;
        flow <'FL-GNA-22'> fl_gna_22 of NavState from gns.navigationSoftware.o_FL_GNA_22.dataCommand to gns.guidanceSoftware.i_FL_GNA_22.dataCommand;
        flow <'FL-GNA-23'> fl_gna_23 of GncSensorData from gns.navSensorSopRm.o_FL_GNA_23.dataCommand to gns.guidanceSoftware.i_FL_GNA_23.dataCommand;
        flow <'FL-GNA-24'> fl_gna_24 of SteeringCommand from gns.guidanceSoftware.o_FL_GNA_24.dataCommand to b_FL_GNA_24.dataCommand;
        flow <'FL-GNA-25'> fl_gna_25 of NavState from gns.navigationSoftware.o_FL_GNA_25.dataCommand to b_FL_GNA_25.dataCommand;
        flow <'FL-GNA-26'> fl_gna_26 of GncSensorData from gns.navSensorSopRm.o_FL_GNA_26.dataCommand to b_FL_GNA_26.dataCommand;
        flow <'FL-GNA-27'> fl_gna_27 of NavState from gns.navigationSoftware.o_FL_GNA_27.dataCommand to b_FL_GNA_27.dataCommand;
        flow <'FL-GNA-28'> fl_gna_28 of SteeringCommand from gns.guidanceSoftware.o_FL_GNA_28.dataCommand to b_FL_GNA_28.dataCommand;
        flow <'FL-GNA-29'> fl_gna_29 of GncSensorData from b_FL_GNA_29.dataCommand to gns.navigationSoftware.i_FL_GNA_29.dataCommand;
        flow <'FL-GNA-30'> fl_gna_30 of RmStatus from gns.navSensorSopRm.o_FL_GNA_30.dataCommand to b_FL_GNA_30.dataCommand;
        flow <'FL-GNA-31'> fl_gna_31 of RmStatus from fcs.fcsSensorSopRm.o_FL_GNA_31.dataCommand to b_FL_GNA_31.dataCommand;
        flow <'FL-GNA-32'> fl_gna_32 of SensorCommand from ops.imuAlignmentOperation.o_FL_GNA_32.dataCommand to ins.inertialMeasurementUnit.i_FL_GNA_32.dataCommand;
        flow <'FL-GNA-33'> fl_gna_33 from b_FL_GNA_33.electricPower to ins.inertialMeasurementUnit.i_FL_GNA_33.electricPower {
            item :>> payload : SensorPower {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-GNA-34'> fl_gna_34 of SensorPower from b_FL_GNA_34.electricPower to ins.starTracker.i_FL_GNA_34.electricPower;
        flow <'FL-GNA-35'> fl_gna_35 from b_FL_GNA_35.electricPower to ins.starTracker.i_FL_GNA_35.electricPower {
            item :>> payload : SensorPower {
                attribute powerNominal :> power = 18 [W] { doc /* 電力・熱流量 18 W */ }
            }
        }
        flow <'FL-GNA-36'> fl_gna_36 of SensorPower from b_FL_GNA_36.electricPower to nas.microwaveLandingSystem.i_FL_GNA_36.electricPower;
        flow <'FL-GNA-37'> fl_gna_37 from b_FL_GNA_37.electricPower to nas.gpsReceiver.i_FL_GNA_37.electricPower {
            item :>> payload : SensorPower {
                attribute powerNominal :> power = 40 [W] { doc /* 電力・熱流量 40 W */ }
            }
        }
        flow <'FL-GNA-38'> fl_gna_38 of EquipmentHeat from ins.inertialMeasurementUnit.o_FL_GNA_38.heat to b_FL_GNA_38.heat;
        flow <'FL-GNA-39'> fl_gna_39 of EquipmentHeat from nas.tacan.o_FL_GNA_39.heat to b_FL_GNA_39.heat;
    }
    // ---- 図192 GN&C 飛行制御・駆動 内部ブロック図：機器
    part def <'EQ-GNB-01'> RotationalHandController {
        doc /* RHC（回転ハンドコントローラ：CDR・PLT・後部）（機能ブロック SSD-FD-GNC-CCD-001） */
        port i_FL_GNB_02 : ~FcsPowerPort;
        port o_FL_GNB_08 : ControllerSignalPort;
        port o_FL_GNB_14 : ControllerSignalPort;
    }
    part def <'EQ-GNB-02'> TranslationalHandController {
        doc /* THC（並進ハンドコントローラ：CDR・後部）（機能ブロック SSD-FD-GNC-CCD-001） */
        port i_FL_GNB_03 : ~FcsPowerPort;
        port o_FL_GNB_09 : ControllerSignalPort;
    }
    part def <'EQ-GNB-03'> RudderPedalTransducerAssembly {
        doc /* RPTA（ラダーペダル変換器組立：左・右）（機能ブロック SSD-FD-GNC-CCD-001） */
        port i_FL_GNB_04 : ~FcsPowerPort;
        port o_FL_GNB_10 : ControllerSignalPort;
    }
    part def <'EQ-GNB-04'> SpeedBrakeThrustController {
        doc /* SBTC（スピードブレーキ／推力コントローラ：CDR・PLT）（機能ブロック SSD-FD-GNC-CCD-001） */
        port i_FL_GNB_05 : ~FcsPowerPort;
        port o_FL_GNB_11 : ControllerSignalPort;
    }
    part def <'EQ-GNB-05'> DeviceDriverUnit {
        doc /* DDU（デバイスドライバユニット：CDR・PLT・後部）（機能ブロック SSD-FD-GNC-CCD-001） */
        port i_FL_GNB_01 : ~FcsPowerPort;
        port o_FL_GNB_02 : FcsPowerPort;
        port o_FL_GNB_03 : FcsPowerPort;
        port o_FL_GNB_04 : FcsPowerPort;
        port o_FL_GNB_05 : FcsPowerPort;
    }
    part def <'EQ-GNB-06'> BodyFlapAndTrimSwitches {
        doc /* BODY FLAP スイッチとトリムスイッチ（パネル L2・C3、TRIM のイネーブルは F3）（機能ブロック SSD-FD-GNC-CCD-001） */
        port o_FL_GNB_12 : ControllerSignalPort;
    }
    part def <'EQ-GNB-07'> FlightControlModePushbuttons {
        doc /* 飛行制御のモードの押しボタン（パネル F2・F4 の PITCH・ROLL/YAW・SPD BK/THROT・BODY FLAP と、C3・A6U の ORBITAL DAP 24個）（機能ブロック SSD-FD-GNC-CCD-001） */
        port o_FL_GNB_13 : ControllerSignalPort;
    }
    part def <'EQ-GNB-08'> DedicatedAndDpsDisplays {
        doc /* 専用表示と GNC の DPS 表示（MEDS の PFD＝ADI・HSI、SPI、GNC SYS SUMM 1、SPEC 53 CONTROLS）（機能ブロック SSD-FD-GNC-CCD-001） */
        port i_FL_GNB_19 : ~DisplayDataPort;
        port o_FL_GNB_38 : DisplayDataPort;
        port i_FL_GNB_44 : ~DisplayDataPort;
    }
    part def <'EQ-GNB-09'> HeadUpDisplay {
        doc /* HUD（CDR・PLT。電子装置はアビオニクスベイ 3B）（機能ブロック SSD-FD-GNC-CCD-001） */
        port i_FL_GNB_45 : ~DisplayDataPort;
        port o_FL_GNB_48 : AvionicsHeatPort;
    }
    part def <'EQ-GNB-10'> ControllerSopRm {
        doc /* 操縦装置の SOP／RM（RHC・THC・RPTA・SBTC の SOP と冗長管理、スイッチの冗長管理）（機能ブロック SSD-FD-GNC-FCS-001） */
        port i_FL_GNB_08 : ~ControllerSignalPort;
        port i_FL_GNB_09 : ~ControllerSignalPort;
        port i_FL_GNB_10 : ~ControllerSignalPort;
        port i_FL_GNB_11 : ~ControllerSignalPort;
        port i_FL_GNB_12 : ~ControllerSignalPort;
        port o_FL_GNB_15 : ControllerSignalPort;
        port o_FL_GNB_47 : RmStatusPort;
    }
    part def <'EQ-GNB-11'> FcsSensorSelection {
        doc /* 飛行制御センサの SOP／RM（RGA・AA・SRB RGA の SOP と IMVS の選択）（機能ブロック SSD-FD-GNC-FCS-001） */
        port o_FL_GNB_16 : GncSensorDataPort;
    }
    part def <'EQ-GNB-12'> DigitalAutopilot {
        doc /* DAP（上昇の飛行制御・遷移 DAP・軌道の RCS DAP と OMS TVC DAP・エアロジェット DAP、ジェット選択）（機能ブロック SSD-FD-GNC-FCS-001） */
        port i_FL_GNB_13 : ~ControllerSignalPort;
        port i_FL_GNB_15 : ~ControllerSignalPort;
        port i_FL_GNB_16 : ~GncSensorDataPort;
        port i_FL_GNB_17 : ~SteeringCommandPort;
        port o_FL_GNB_20 : EffectorCommandPort;
    }
    part def <'EQ-GNB-13'> EffectorCommandSop {
        doc /* 舵効の指令の SOP（ATVC command SOP、舵面の指令・位置フィードバックの SOP、RCS command SOP、OMS TVC command SOP）（機能ブロック SSD-FD-GNC-FCS-001） */
        port i_FL_GNB_20 : ~EffectorCommandPort;
        port o_FL_GNB_21 : EffectorCommandPort;
        port i_FL_GNB_22 : ~ActuatorFeedbackPort;
        port o_FL_GNB_23 : EffectorCommandPort;
        port o_FL_GNB_24 : EffectorCommandPort;
        port o_FL_GNB_25 : EffectorCommandPort;
        port o_FL_GNB_26 : EffectorCommandPort;
        port o_FL_GNB_46 : RmStatusPort;
    }
    part def <'EQ-GNB-14'> NavigationAndGuidanceSoftware {
        doc /* 航法・誘導のソフトウェア（状態ベクトル・姿勢と、操舵・スロットルの指令）（機能ブロック SSD-FD-GNC-GNS-001） */
        port o_FL_GNB_17 : SteeringCommandPort;
        port o_FL_GNB_18 : SteeringCommandPort;
        port o_FL_GNB_19 : DisplayDataPort;
    }
    part def <'EQ-GNB-15'> AerosurfaceServoAmplifier {
        doc /* ASA（エアロサーフェスサーボアンプ）1〜4（機能ブロック SSD-FD-GNC-ACT-001） */
        port i_FL_GNB_06 : ~FcsPowerPort;
        port i_FL_GNB_21 : ~EffectorCommandPort;
        port o_FL_GNB_22 : ActuatorFeedbackPort;
        port o_FL_GNB_27 : EffectorCommandPort;
        port i_FL_GNB_28 : ~ActuatorFeedbackPort;
        port o_FL_GNB_29 : EffectorCommandPort;
        port o_FL_GNB_30 : EffectorCommandPort;
        port i_FL_GNB_40 : ~ControllerSignalPort;
        port o_FL_GNB_42 : RmStatusPort;
    }
    part def <'EQ-GNB-16'> AscentThrustVectorController :> SSD_ALC_SYS_001::Physical::PHY_GNC_06 {
        doc /* ATVC（上昇推力方向制御装置）1〜4（機能ブロック SSD-FD-GNC-ACT-001、機器 PHY-GNC-06） */
        port i_FL_GNB_07 : ~FcsPowerPort;
        port i_FL_GNB_23 : ~EffectorCommandPort;
        port o_FL_GNB_31 : EffectorCommandPort;
        port o_FL_GNB_32 : EffectorCommandPort;
        port o_FL_GNB_33 : EffectorCommandPort;
        port o_FL_GNB_34 : EffectorCommandPort;
        port i_FL_GNB_41 : ~ControllerSignalPort;
        port o_FL_GNB_43 : RmStatusPort;
    }
    part def <'EQ-GNB-17'> ElevonServoactuator {
        doc /* エレボンのサーボアクチュエータ（左外・左内・右内・右外。切替弁つき）（機能ブロック SSD-FD-GNC-ACT-001） */
        port i_FL_GNB_27 : ~EffectorCommandPort;
        port o_FL_GNB_28 : ActuatorFeedbackPort;
        port i_FL_GNB_35 : ~ActuatorHydraulicPowerPort;
    }
    part def <'EQ-GNB-18'> RudderSpeedBrakeDrive {
        doc /* ラダー／スピードブレーキの駆動（サーボアクチュエータ各1、可逆油圧モータ各3、差動・混合ギアボックス、回転アクチュエータ4）（機能ブロック SSD-FD-GNC-ACT-001） */
        port i_FL_GNB_29 : ~EffectorCommandPort;
        port i_FL_GNB_36 : ~ActuatorHydraulicPowerPort;
    }
    part def <'EQ-GNB-19'> BodyFlapDrive {
        doc /* ボディフラップの駆動（サーボアクチュエータ3：イネーブル弁・上げ下げのパイロット弁・油圧モータ・ブレーキ、差動ギアボックス、回転アクチュエータ4）（機能ブロック SSD-FD-GNC-ACT-001） */
        port i_FL_GNB_30 : ~EffectorCommandPort;
        port i_FL_GNB_37 : ~ActuatorHydraulicPowerPort;
    }
    part def <'EQ-GNB-20'> FcsChannelSwitch {
        doc /* FCS CHANNEL スイッチ 1〜4（パネル C3：OVERRIDE・AUTO・OFF）（機能ブロック SSD-FD-GNC-ACT-001） */
        port i_FL_GNB_39 : ~ControllerSignalPort;
        port o_FL_GNB_40 : ControllerSignalPort;
        port o_FL_GNB_41 : ControllerSignalPort;
    }
    part def <'EQ-GNB-21'> FcsChannelManagement {
        doc /* FCS チャネルの管理の操作（乗員と MCC：A8-107 による FCS CHANNEL スイッチの切替）（機能ブロック SSD-FD-GNC-OPS-001） */
        port i_FL_GNB_38 : ~DisplayDataPort;
        port o_FL_GNB_39 : ControllerSignalPort;
    }
    // ---- 図192 GN&C 飛行制御・駆動 内部ブロック図：接続（GncFcsInterconnection は GNC を特化）
    part def GncFcsInterconnection :> GNC {
        doc /* GN&C（操縦装置・DAP・舵面と推力方向の駆動）の内部ブロック図（図192）。基の機能ブロック SSD-FD-GNC-001。 */
        part redefines ccd {
            part rotationalHandController[3] : RotationalHandController;
            part translationalHandController[2] : TranslationalHandController;
            part rudderPedalTransducerAssembly[2] : RudderPedalTransducerAssembly;
            part speedBrakeThrustController[2] : SpeedBrakeThrustController;
            part deviceDriverUnit[3] : DeviceDriverUnit;
            part bodyFlapAndTrimSwitches : BodyFlapAndTrimSwitches;
            part flightControlModePushbuttons : FlightControlModePushbuttons;
            part dedicatedAndDpsDisplays : DedicatedAndDpsDisplays;
            part headUpDisplay[2] : HeadUpDisplay;
        }
        part redefines fcs {
            part controllerSopRm : ControllerSopRm;
            part fcsSensorSelection : FcsSensorSelection;
            part digitalAutopilot : DigitalAutopilot;
            part effectorCommandSop : EffectorCommandSop;
        }
        part redefines gns {
            part navigationAndGuidanceSoftware : NavigationAndGuidanceSoftware;
        }
        part redefines act {
            part aerosurfaceServoAmplifier[4] : AerosurfaceServoAmplifier;
            part ascentThrustVectorController[4] : AscentThrustVectorController;
            part elevonServoactuator[4] : ElevonServoactuator;
            part rudderSpeedBrakeDrive : RudderSpeedBrakeDrive;
            part bodyFlapDrive : BodyFlapDrive;
            part fcsChannelSwitch[4] : FcsChannelSwitch;
        }
        part redefines ops {
            part fcsChannelManagement : FcsChannelManagement;
        }
        port b_FL_GNB_01 : ~FcsPowerPort { doc /* 枠の外の相手 EB-GNB-01（EPS（主母線 A・B・C：DDU の遮断器、ASA・ATVC の電源スイッチ）） */ }
        port b_FL_GNB_06 : ~FcsPowerPort { doc /* 枠の外の相手 EB-GNB-01（EPS（主母線 A・B・C：DDU の遮断器、ASA・ATVC の電源スイッチ）） */ }
        port b_FL_GNB_07 : ~FcsPowerPort { doc /* 枠の外の相手 EB-GNB-01（EPS（主母線 A・B・C：DDU の遮断器、ASA・ATVC の電源スイッチ）） */ }
        port b_FL_GNB_14 : ControllerSignalPort { doc /* 枠の外の相手 EB-GNB-10（DPS：予備飛行制御器（BFC。BFS のエンゲージの論理）） */ }
        port b_FL_GNB_18 : SteeringCommandPort { doc /* 枠の外の相手 EB-GNB-07（MPS：主エンジンのスロットル（EIU 3台とエンジン制御器）） */ }
        port b_FL_GNB_24 : EffectorCommandPort { doc /* 枠の外の相手 EB-GNB-12（DPS：フライトアフト MDM（FA 1〜4）） */ }
        port b_FL_GNB_25 : EffectorCommandPort { doc /* 枠の外の相手 EB-GNB-08（RCS：リアクションジェットドライバ（RJDF・RJDA）） */ }
        port b_FL_GNB_26 : EffectorCommandPort { doc /* 枠の外の相手 EB-GNB-09（OMS：ジンバルアクチュエータ（左右のエンジンにピッチ・ヨー）と制御器、エンジンの点火・停止） */ }
        port b_FL_GNB_31 : EffectorCommandPort { doc /* 枠の外の相手 EB-GNB-03（MPS：SSME の TVC サーボアクチュエータ（ピッチ・ヨー、計6基）のサーボ弁） */ }
        port b_FL_GNB_32 : EffectorCommandPort { doc /* 枠の外の相手 EB-GNB-04（MPS：SSME の TVC サーボアクチュエータの隔離弁（GBB-03 と同じ相手で、上位の IF を通すために分けた）） */ }
        port b_FL_GNB_33 : EffectorCommandPort { doc /* 枠の外の相手 EB-GNB-05（SRB：TVC サーボアクチュエータ（各 SRB にロック・チルト、計4基）のサーボ弁） */ }
        port b_FL_GNB_34 : EffectorCommandPort { doc /* 枠の外の相手 EB-GNB-06（SRB：TVC サーボアクチュエータの隔離弁（GBB-05 と同じ相手で、上位の IF を通すために分けた）） */ }
        port b_FL_GNB_35 : ~ActuatorHydraulicPowerPort { doc /* 枠の外の相手 EB-GNB-02（APU/HYD：油圧系 1・2・3（主油圧ポンプ・供給）） */ }
        port b_FL_GNB_36 : ~ActuatorHydraulicPowerPort { doc /* 枠の外の相手 EB-GNB-02（APU/HYD：油圧系 1・2・3（主油圧ポンプ・供給）） */ }
        port b_FL_GNB_37 : ~ActuatorHydraulicPowerPort { doc /* 枠の外の相手 EB-GNB-02（APU/HYD：油圧系 1・2・3（主油圧ポンプ・供給）） */ }
        port b_FL_GNB_42 : RmStatusPort { doc /* 枠の外の相手 EB-GNB-13（警報系 C/W（パネル F7 の FCS CHANNEL 灯、「FCS CH X」のメッセージ）） */ }
        port b_FL_GNB_43 : RmStatusPort { doc /* 枠の外の相手 EB-GNB-13（警報系 C/W（パネル F7 の FCS CHANNEL 灯、「FCS CH X」のメッセージ）） */ }
        port b_FL_GNB_44 : ~DisplayDataPort { doc /* 枠の外の相手 EB-GNB-11（DPS：FC データバス 1〜4 と IDP（表示データ）） */ }
        port b_FL_GNB_45 : ~DisplayDataPort { doc /* 枠の外の相手 EB-GNB-11（DPS：FC データバス 1〜4 と IDP（表示データ）） */ }
        port b_FL_GNB_46 : RmStatusPort { doc /* 枠の外の相手 EB-GNB-14（警報系 C/W（パネル F7 の FCS SATURATION 灯、LEFT RHC・R/AFT RHC 灯、故障メッセージ）） */ }
        port b_FL_GNB_47 : RmStatusPort { doc /* 枠の外の相手 EB-GNB-14（警報系 C/W（パネル F7 の FCS SATURATION 灯、LEFT RHC・R/AFT RHC 灯、故障メッセージ）） */ }
        port b_FL_GNB_48 : AvionicsHeatPort { doc /* 枠の外の相手 EB-GNB-15（ECLSS ARS：水冷却ループ（アビオニクスベイ 3B のコールドプレート）） */ }
        flow <'FL-GNB-01'> fl_gnb_01 of FcsPower from b_FL_GNB_01.electricPower to ccd.deviceDriverUnit.i_FL_GNB_01.electricPower;
        flow <'FL-GNB-02'> fl_gnb_02 of FcsPower from ccd.deviceDriverUnit.o_FL_GNB_02.electricPower to ccd.rotationalHandController.i_FL_GNB_02.electricPower;
        flow <'FL-GNB-03'> fl_gnb_03 of FcsPower from ccd.deviceDriverUnit.o_FL_GNB_03.electricPower to ccd.translationalHandController.i_FL_GNB_03.electricPower;
        flow <'FL-GNB-04'> fl_gnb_04 of FcsPower from ccd.deviceDriverUnit.o_FL_GNB_04.electricPower to ccd.rudderPedalTransducerAssembly.i_FL_GNB_04.electricPower;
        flow <'FL-GNB-05'> fl_gnb_05 of FcsPower from ccd.deviceDriverUnit.o_FL_GNB_05.electricPower to ccd.speedBrakeThrustController.i_FL_GNB_05.electricPower;
        flow <'FL-GNB-06'> fl_gnb_06 of FcsPower from b_FL_GNB_06.electricPower to act.aerosurfaceServoAmplifier.i_FL_GNB_06.electricPower;
        flow <'FL-GNB-07'> fl_gnb_07 of FcsPower from b_FL_GNB_07.electricPower to act.ascentThrustVectorController.i_FL_GNB_07.electricPower;
        flow <'FL-GNB-08'> fl_gnb_08 of ControllerSignal from ccd.rotationalHandController.o_FL_GNB_08.dataCommand to fcs.controllerSopRm.i_FL_GNB_08.dataCommand;
        flow <'FL-GNB-09'> fl_gnb_09 of ControllerSignal from ccd.translationalHandController.o_FL_GNB_09.dataCommand to fcs.controllerSopRm.i_FL_GNB_09.dataCommand;
        flow <'FL-GNB-10'> fl_gnb_10 of ControllerSignal from ccd.rudderPedalTransducerAssembly.o_FL_GNB_10.dataCommand to fcs.controllerSopRm.i_FL_GNB_10.dataCommand;
        flow <'FL-GNB-11'> fl_gnb_11 of ControllerSignal from ccd.speedBrakeThrustController.o_FL_GNB_11.dataCommand to fcs.controllerSopRm.i_FL_GNB_11.dataCommand;
        flow <'FL-GNB-12'> fl_gnb_12 of ControllerSignal from ccd.bodyFlapAndTrimSwitches.o_FL_GNB_12.dataCommand to fcs.controllerSopRm.i_FL_GNB_12.dataCommand;
        flow <'FL-GNB-13'> fl_gnb_13 of ControllerSignal from ccd.flightControlModePushbuttons.o_FL_GNB_13.dataCommand to fcs.digitalAutopilot.i_FL_GNB_13.dataCommand;
        flow <'FL-GNB-14'> fl_gnb_14 of ControllerSignal from ccd.rotationalHandController.o_FL_GNB_14.dataCommand to b_FL_GNB_14.dataCommand;
        flow <'FL-GNB-15'> fl_gnb_15 of ControllerSignal from fcs.controllerSopRm.o_FL_GNB_15.dataCommand to fcs.digitalAutopilot.i_FL_GNB_15.dataCommand;
        flow <'FL-GNB-16'> fl_gnb_16 of GncSensorData from fcs.fcsSensorSelection.o_FL_GNB_16.dataCommand to fcs.digitalAutopilot.i_FL_GNB_16.dataCommand;
        flow <'FL-GNB-17'> fl_gnb_17 of SteeringCommand from gns.navigationAndGuidanceSoftware.o_FL_GNB_17.dataCommand to fcs.digitalAutopilot.i_FL_GNB_17.dataCommand;
        flow <'FL-GNB-18'> fl_gnb_18 of SteeringCommand from gns.navigationAndGuidanceSoftware.o_FL_GNB_18.dataCommand to b_FL_GNB_18.dataCommand;
        flow <'FL-GNB-19'> fl_gnb_19 of DisplayData from gns.navigationAndGuidanceSoftware.o_FL_GNB_19.dataCommand to ccd.dedicatedAndDpsDisplays.i_FL_GNB_19.dataCommand;
        flow <'FL-GNB-20'> fl_gnb_20 of EffectorCommand from fcs.digitalAutopilot.o_FL_GNB_20.dataCommand to fcs.effectorCommandSop.i_FL_GNB_20.dataCommand;
        flow <'FL-GNB-21'> fl_gnb_21 of EffectorCommand from fcs.effectorCommandSop.o_FL_GNB_21.dataCommand to act.aerosurfaceServoAmplifier.i_FL_GNB_21.dataCommand;
        flow <'FL-GNB-22'> fl_gnb_22 of ActuatorFeedback from act.aerosurfaceServoAmplifier.o_FL_GNB_22.dataCommand to fcs.effectorCommandSop.i_FL_GNB_22.dataCommand;
        flow <'FL-GNB-23'> fl_gnb_23 of EffectorCommand from fcs.effectorCommandSop.o_FL_GNB_23.dataCommand to act.ascentThrustVectorController.i_FL_GNB_23.dataCommand;
        flow <'FL-GNB-24'> fl_gnb_24 of EffectorCommand from fcs.effectorCommandSop.o_FL_GNB_24.dataCommand to b_FL_GNB_24.dataCommand;
        flow <'FL-GNB-25'> fl_gnb_25 of EffectorCommand from fcs.effectorCommandSop.o_FL_GNB_25.dataCommand to b_FL_GNB_25.dataCommand;
        flow <'FL-GNB-26'> fl_gnb_26 of EffectorCommand from fcs.effectorCommandSop.o_FL_GNB_26.dataCommand to b_FL_GNB_26.dataCommand;
        flow <'FL-GNB-27'> fl_gnb_27 of EffectorCommand from act.aerosurfaceServoAmplifier.o_FL_GNB_27.dataCommand to act.elevonServoactuator.i_FL_GNB_27.dataCommand;
        flow <'FL-GNB-28'> fl_gnb_28 from act.elevonServoactuator.o_FL_GNB_28.dataCommand to act.aerosurfaceServoAmplifier.i_FL_GNB_28.dataCommand {
            item :>> payload : ActuatorFeedback {
                attribute secondaryDeltaPressureNominal :> secondaryDeltaPressure = 2025 ['lbf/in²'] { doc /* 圧力 2,025 psid（差圧） */ }
                attribute isolationDelayNominal :> isolationDelay = 0.12 [s] { doc /* 時間 0.12 s */ }
            }
        }
        flow <'FL-GNB-29'> fl_gnb_29 of EffectorCommand from act.aerosurfaceServoAmplifier.o_FL_GNB_29.dataCommand to act.rudderSpeedBrakeDrive.i_FL_GNB_29.dataCommand;
        flow <'FL-GNB-30'> fl_gnb_30 of EffectorCommand from act.aerosurfaceServoAmplifier.o_FL_GNB_30.dataCommand to act.bodyFlapDrive.i_FL_GNB_30.dataCommand;
        flow <'FL-GNB-31'> fl_gnb_31 of EffectorCommand from act.ascentThrustVectorController.o_FL_GNB_31.dataCommand to b_FL_GNB_31.dataCommand;
        flow <'FL-GNB-32'> fl_gnb_32 of EffectorCommand from act.ascentThrustVectorController.o_FL_GNB_32.dataCommand to b_FL_GNB_32.dataCommand;
        flow <'FL-GNB-33'> fl_gnb_33 of EffectorCommand from act.ascentThrustVectorController.o_FL_GNB_33.dataCommand to b_FL_GNB_33.dataCommand;
        flow <'FL-GNB-34'> fl_gnb_34 of EffectorCommand from act.ascentThrustVectorController.o_FL_GNB_34.dataCommand to b_FL_GNB_34.dataCommand;
        flow <'FL-GNB-35'> fl_gnb_35 from b_FL_GNB_35.hydraulicFluid to act.elevonServoactuator.i_FL_GNB_35.hydraulicFluid {
            item :>> payload : ActuatorHydraulicPower {
                attribute pressureNominal :> pressure = 3000 ['lbf/in²'] { doc /* 圧力 3,000 psig（ゲージ圧） */ }
                attribute switchoverPressureMin :> switchoverPressure = 1200 ['lbf/in²'] { doc /* 圧力 1,200〜1,500 psia（絶対圧） */ }
                attribute switchoverPressureMax :> switchoverPressure = 1500 ['lbf/in²'] { doc /* 圧力 1,200〜1,500 psia（絶対圧） */ }
            }
        }
        flow <'FL-GNB-36'> fl_gnb_36 from b_FL_GNB_36.hydraulicFluid to act.rudderSpeedBrakeDrive.i_FL_GNB_36.hydraulicFluid {
            item :>> payload : ActuatorHydraulicPower {
                attribute pressureNominal :> pressure = 3000 ['lbf/in²'] { doc /* 圧力 3,000 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-GNB-37'> fl_gnb_37 from b_FL_GNB_37.hydraulicFluid to act.bodyFlapDrive.i_FL_GNB_37.hydraulicFluid {
            item :>> payload : ActuatorHydraulicPower {
                attribute pressureNominal :> pressure = 3000 ['lbf/in²'] { doc /* 圧力 3,000 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-GNB-38'> fl_gnb_38 of DisplayData from ccd.dedicatedAndDpsDisplays.o_FL_GNB_38.dataCommand to ops.fcsChannelManagement.i_FL_GNB_38.dataCommand;
        flow <'FL-GNB-39'> fl_gnb_39 of ControllerSignal from ops.fcsChannelManagement.o_FL_GNB_39.dataCommand to act.fcsChannelSwitch.i_FL_GNB_39.dataCommand;
        flow <'FL-GNB-40'> fl_gnb_40 of ControllerSignal from act.fcsChannelSwitch.o_FL_GNB_40.dataCommand to act.aerosurfaceServoAmplifier.i_FL_GNB_40.dataCommand;
        flow <'FL-GNB-41'> fl_gnb_41 of ControllerSignal from act.fcsChannelSwitch.o_FL_GNB_41.dataCommand to act.ascentThrustVectorController.i_FL_GNB_41.dataCommand;
        flow <'FL-GNB-42'> fl_gnb_42 of RmStatus from act.aerosurfaceServoAmplifier.o_FL_GNB_42.dataCommand to b_FL_GNB_42.dataCommand;
        flow <'FL-GNB-43'> fl_gnb_43 of RmStatus from act.ascentThrustVectorController.o_FL_GNB_43.dataCommand to b_FL_GNB_43.dataCommand;
        flow <'FL-GNB-44'> fl_gnb_44 of DisplayData from b_FL_GNB_44.dataCommand to ccd.dedicatedAndDpsDisplays.i_FL_GNB_44.dataCommand;
        flow <'FL-GNB-45'> fl_gnb_45 of DisplayData from b_FL_GNB_45.dataCommand to ccd.headUpDisplay.i_FL_GNB_45.dataCommand;
        flow <'FL-GNB-46'> fl_gnb_46 of RmStatus from fcs.effectorCommandSop.o_FL_GNB_46.dataCommand to b_FL_GNB_46.dataCommand;
        flow <'FL-GNB-47'> fl_gnb_47 of RmStatus from fcs.controllerSopRm.o_FL_GNB_47.dataCommand to b_FL_GNB_47.dataCommand;
        flow <'FL-GNB-48'> fl_gnb_48 of AvionicsHeat from ccd.headUpDisplay.o_FL_GNB_48.heat to b_FL_GNB_48.heat;
    }
    // ---- 流れ → IF（詳細化）
    package FlowRefinement {
        #refinement dependency <'FL-GNA-01>IF-GNC-01'> from GncNavInterconnection::fl_gna_01 to SSD_BLK_SYS_001::GNC::IF_GNC_01;
        #refinement dependency <'FL-GNA-02>IF-DPS-03'> from GncNavInterconnection::fl_gna_02 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-GNA-03>IF-DPS-03'> from GncNavInterconnection::fl_gna_03 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-GNA-04>IF-DPS-03'> from GncNavInterconnection::fl_gna_04 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-GNA-05>IF-DPS-03'> from GncNavInterconnection::fl_gna_05 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-GNA-06>IF-DPS-03'> from GncNavInterconnection::fl_gna_06 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-GNA-07>IF-GNC-02'> from GncNavInterconnection::fl_gna_07 to SSD_BLK_SYS_001::GNC::IF_GNC_02;
        #refinement dependency <'FL-GNA-08>IF-GNC-02'> from GncNavInterconnection::fl_gna_08 to SSD_BLK_SYS_001::GNC::IF_GNC_02;
        #refinement dependency <'FL-GNA-09>IF-GNC-02'> from GncNavInterconnection::fl_gna_09 to SSD_BLK_SYS_001::GNC::IF_GNC_02;
        #refinement dependency <'FL-GNA-12>IF-GNC-02'> from GncNavInterconnection::fl_gna_12 to SSD_BLK_SYS_001::GNC::IF_GNC_02;
        #refinement dependency <'FL-GNA-13>IF-GNC-02'> from GncNavInterconnection::fl_gna_13 to SSD_BLK_SYS_001::GNC::IF_GNC_02;
        #refinement dependency <'FL-GNA-14>IF-DPS-03'> from GncNavInterconnection::fl_gna_14 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-GNA-17>IF-GNC-19'> from GncNavInterconnection::fl_gna_17 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_GNC_19;
        #refinement dependency <'FL-GNA-18>IF-GNC-13'> from GncNavInterconnection::fl_gna_18 to SSD_BLK_SYS_001::MissionContext::IF_GNC_13;
        #refinement dependency <'FL-GNA-19>IF-GNC-13'> from GncNavInterconnection::fl_gna_19 to SSD_BLK_SYS_001::MissionContext::IF_GNC_13;
        #refinement dependency <'FL-GNA-20>IF-GNC-13'> from GncNavInterconnection::fl_gna_20 to SSD_BLK_SYS_001::MissionContext::IF_GNC_13;
        #refinement dependency <'FL-GNA-24>IF-GNC-04'> from GncNavInterconnection::fl_gna_24 to SSD_BLK_SYS_001::GNC::IF_GNC_04;
        #refinement dependency <'FL-GNA-25>IF-GNC-04'> from GncNavInterconnection::fl_gna_25 to SSD_BLK_SYS_001::GNC::IF_GNC_04;
        #refinement dependency <'FL-GNA-26>IF-GNC-03'> from GncNavInterconnection::fl_gna_26 to SSD_BLK_SYS_001::GNC::IF_GNC_03;
        #refinement dependency <'FL-GNA-27>IF-GNC-07'> from GncNavInterconnection::fl_gna_27 to SSD_BLK_SYS_001::GNC::IF_GNC_07;
        #refinement dependency <'FL-GNA-28>IF-GNC-17'> from GncNavInterconnection::fl_gna_28 to SSD_BLK_SYS_001::ORB::IF_GNC_17;
        #refinement dependency <'FL-GNA-29>IF-CT-08'> from GncNavInterconnection::fl_gna_29 to SSD_BLK_SYS_001::ORB::IF_CT_08;
        #refinement dependency <'FL-GNA-30>IF-ORB-41'> from GncNavInterconnection::fl_gna_30 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'FL-GNA-31>IF-ORB-41'> from GncNavInterconnection::fl_gna_31 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'FL-GNA-32>IF-GNC-10'> from GncNavInterconnection::fl_gna_32 to SSD_BLK_SYS_001::GNC::IF_GNC_10;
        #refinement dependency <'FL-GNA-33>IF-GNC-11'> from GncNavInterconnection::fl_gna_33 to SSD_BLK_SYS_001::ORB::IF_GNC_11;
        #refinement dependency <'FL-GNA-34>IF-GNC-11'> from GncNavInterconnection::fl_gna_34 to SSD_BLK_SYS_001::ORB::IF_GNC_11;
        #refinement dependency <'FL-GNA-35>IF-ORB-14'> from GncNavInterconnection::fl_gna_35 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-GNA-36>IF-GNC-12'> from GncNavInterconnection::fl_gna_36 to SSD_BLK_SYS_001::ORB::IF_GNC_12;
        #refinement dependency <'FL-GNA-37>IF-GNC-12'> from GncNavInterconnection::fl_gna_37 to SSD_BLK_SYS_001::ORB::IF_GNC_12;
        #refinement dependency <'FL-GNA-38>IF-ECL-32'> from GncNavInterconnection::fl_gna_38 to SSD_BLK_SYS_001::ORB::IF_ECL_32;
        #refinement dependency <'FL-GNA-39>IF-ECL-32'> from GncNavInterconnection::fl_gna_39 to SSD_BLK_SYS_001::ORB::IF_ECL_32;
        #refinement dependency <'FL-GNB-01>IF-ORB-14'> from GncFcsInterconnection::fl_gnb_01 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-GNB-06>IF-ORB-14'> from GncFcsInterconnection::fl_gnb_06 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-GNB-07>IF-ORB-14'> from GncFcsInterconnection::fl_gnb_07 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-GNB-08>IF-GNC-06'> from GncFcsInterconnection::fl_gnb_08 to SSD_BLK_SYS_001::GNC::IF_GNC_06;
        #refinement dependency <'FL-GNB-09>IF-GNC-06'> from GncFcsInterconnection::fl_gnb_09 to SSD_BLK_SYS_001::GNC::IF_GNC_06;
        #refinement dependency <'FL-GNB-10>IF-GNC-06'> from GncFcsInterconnection::fl_gnb_10 to SSD_BLK_SYS_001::GNC::IF_GNC_06;
        #refinement dependency <'FL-GNB-11>IF-GNC-06'> from GncFcsInterconnection::fl_gnb_11 to SSD_BLK_SYS_001::GNC::IF_GNC_06;
        #refinement dependency <'FL-GNB-12>IF-GNC-06'> from GncFcsInterconnection::fl_gnb_12 to SSD_BLK_SYS_001::GNC::IF_GNC_06;
        #refinement dependency <'FL-GNB-13>IF-GNC-06'> from GncFcsInterconnection::fl_gnb_13 to SSD_BLK_SYS_001::GNC::IF_GNC_06;
        #refinement dependency <'FL-GNB-14>IF-DPS-04'> from GncFcsInterconnection::fl_gnb_14 to SSD_BLK_SYS_001::ORB::IF_DPS_04;
        #refinement dependency <'FL-GNB-17>IF-GNC-04'> from GncFcsInterconnection::fl_gnb_17 to SSD_BLK_SYS_001::GNC::IF_GNC_04;
        #refinement dependency <'FL-GNB-18>IF-GNC-17'> from GncFcsInterconnection::fl_gnb_18 to SSD_BLK_SYS_001::ORB::IF_GNC_17;
        #refinement dependency <'FL-GNB-19>IF-GNC-07'> from GncFcsInterconnection::fl_gnb_19 to SSD_BLK_SYS_001::GNC::IF_GNC_07;
        #refinement dependency <'FL-GNB-21>IF-GNC-05'> from GncFcsInterconnection::fl_gnb_21 to SSD_BLK_SYS_001::GNC::IF_GNC_05;
        #refinement dependency <'FL-GNB-22>IF-GNC-05'> from GncFcsInterconnection::fl_gnb_22 to SSD_BLK_SYS_001::GNC::IF_GNC_05;
        #refinement dependency <'FL-GNB-23>IF-GNC-05'> from GncFcsInterconnection::fl_gnb_23 to SSD_BLK_SYS_001::GNC::IF_GNC_05;
        #refinement dependency <'FL-GNB-24>IF-DPS-03'> from GncFcsInterconnection::fl_gnb_24 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-GNB-25>IF-GNC-14'> from GncFcsInterconnection::fl_gnb_25 to SSD_BLK_SYS_001::ORB::IF_GNC_14;
        #refinement dependency <'FL-GNB-26>IF-GNC-15'> from GncFcsInterconnection::fl_gnb_26 to SSD_BLK_SYS_001::ORB::IF_GNC_15;
        #refinement dependency <'FL-GNB-31>IF-GNC-16'> from GncFcsInterconnection::fl_gnb_31 to SSD_BLK_SYS_001::ORB::IF_GNC_16;
        #refinement dependency <'FL-GNB-32>IF-ORB-21'> from GncFcsInterconnection::fl_gnb_32 to SSD_BLK_SYS_001::ORB::IF_ORB_21;
        #refinement dependency <'FL-GNB-33>IF-GNC-18'> from GncFcsInterconnection::fl_gnb_33 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_GNC_18;
        #refinement dependency <'FL-GNB-34>IF-ORB-22'> from GncFcsInterconnection::fl_gnb_34 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_22;
        #refinement dependency <'FL-GNB-35>IF-APU-10'> from GncFcsInterconnection::fl_gnb_35 to SSD_BLK_SYS_001::ORB::IF_APU_10;
        #refinement dependency <'FL-GNB-36>IF-APU-10'> from GncFcsInterconnection::fl_gnb_36 to SSD_BLK_SYS_001::ORB::IF_APU_10;
        #refinement dependency <'FL-GNB-37>IF-APU-10'> from GncFcsInterconnection::fl_gnb_37 to SSD_BLK_SYS_001::ORB::IF_APU_10;
        #refinement dependency <'FL-GNB-38>IF-GNC-08'> from GncFcsInterconnection::fl_gnb_38 to SSD_BLK_SYS_001::GNC::IF_GNC_08;
        #refinement dependency <'FL-GNB-39>IF-GNC-09'> from GncFcsInterconnection::fl_gnb_39 to SSD_BLK_SYS_001::GNC::IF_GNC_09;
        #refinement dependency <'FL-GNB-42>IF-GNC-20'> from GncFcsInterconnection::fl_gnb_42 to SSD_BLK_SYS_001::ORB::IF_GNC_20;
        #refinement dependency <'FL-GNB-43>IF-GNC-20'> from GncFcsInterconnection::fl_gnb_43 to SSD_BLK_SYS_001::ORB::IF_GNC_20;
        #refinement dependency <'FL-GNB-44>IF-DPS-22'> from GncFcsInterconnection::fl_gnb_44 to SSD_BLK_SYS_001::ORB::IF_DPS_22;
        #refinement dependency <'FL-GNB-45>IF-DPS-22'> from GncFcsInterconnection::fl_gnb_45 to SSD_BLK_SYS_001::ORB::IF_DPS_22;
        #refinement dependency <'FL-GNB-46>IF-ORB-41'> from GncFcsInterconnection::fl_gnb_46 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'FL-GNB-47>IF-ORB-41'> from GncFcsInterconnection::fl_gnb_47 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'FL-GNB-48>IF-ARS-42'> from GncFcsInterconnection::fl_gnb_48 to SSD_BLK_SYS_001::ORB::IF_ARS_42;
    }
    // ---- 状態機械（OPS・メジャーモード、DAP、IMU、再突入の航法センサ）
    item def GmmEv01 { doc /* 事象：OPS 1 のロード（L−1:00、T−20 分のホールド中） */ }
    item def GmmEv02 { doc /* 事象：SRB 点火（T−0、自動） */ }
    item def GmmEv03 { doc /* 事象：SRB 分離（自動） */ }
    item def GmmEv04 { doc /* 事象：MECO・ET 分離後の −Z 並進の完了（自動） */ }
    item def GmmEv05 { doc /* 事象：OPS 105 PRO（CDR/PLT が OMS 2 噴射のために入力） */ }
    item def GmmEv06 { doc /* 事象：OPS 106 PRO（OMS 2 噴射の後） */ }
    item def GmmEv07 { doc /* 事象：GNC OPS 2 の選択（投入後の GPC 再構成、MET 約 0/0:55） */ }
    item def GmmEv08 { doc /* 事象：OPS 801 PRO（FCS 点検） */ }
    item def GmmEv09 { doc /* 事象：FCS 点検の完了 → OPS 201 PRO（G8 から G2） */ }
    item def GmmEv10 { doc /* 事象：OPS 301 PRO（離脱準備、TIG−2:16 ごろ） */ }
    item def GmmEv11 { doc /* 事象：OPS 304 PRO（EI−5 分） */ }
    item def GmmEv12 { doc /* 事象：Vrel 2500 fps（Mach 2.5、高度約 81 k ft）への減速（自動） */ }
    item def GmmEv13 { doc /* 事象：OPS 901 PRO（着陸後、MCC の指示） */ }
    item def GmmEv14 { doc /* 事象：RTLS アボートの選択（ABORT MODE を RTLS にして押しボタン、または OPS 601 PRO） */ }
    item def GmmEv15 { doc /* 事象：MECO・ET 分離後に迎角 +10° 以上・分離から 10 秒以上（自動） */ }
    item def GmmEv16 { doc /* 事象：OPS 901 PRO（RTLS の着陸後） */ }
    item def GmmEv17 { doc /* 事象：TAL：MECO・ET 分離後に OPS 301 PRO（OPS 1 から OPS 3 へ） */ }
    item def GmmEv18 { doc /* 事象：AOA：OMS-1 の後に OPS 301 PRO（OPS 1 から OPS 3 へ） */ }
    item def GmmEv19 { doc /* 事象：コンティンジェンシーアボート：3基停止の自動化が RTLS を宣言し ET 分離の後 MM 602 へ（自動） */ }
    item def GmmEv20 { doc /* 事象：GPC 灯（PASS のセット分裂・共通ソフトウェア誤り）、制御の喪失またはロールマヌーバの不実施 → BFS ENGAGE 押しボタン */ }
    item def GmmEv21 { doc /* 事象：GPC 灯（PASS のセット分裂・共通ソフトウェア誤り）→ BFS ENGAGE 押しボタン（再突入） */ }
    item def GmmEv22 { doc /* 事象：軌道上で PASS を再ロードし BFC DISENGAGE スイッチで BFS を解除 */ }
    item def DapEv01 { doc /* 事象：SRB 点火（MM 102） */ }
    item def DapEv02 { doc /* 事象：パネル F2・F4 の CSS 押しボタン（上昇の引継ぎ） */ }
    item def DapEv03 { doc /* 事象：AUTO を選び直す（PITCH・ROLL/YAW の押しボタン） */ }
    item def DapEv04 { doc /* 事象：MECO（遷移 DAP が有効になる） */ }
    item def DapEv05 { doc /* 事象：OMS の点火（MNVR EXEC の EXEC、TIG） */ }
    item def DapEv06 { doc /* 事象：RHC のデテント外し（不注意な接触を含む）または INRTL 押しボタン → DAP DNMODE RHC */ }
    item def DapEv07 { doc /* 事象：OMS のカットオフ */ }
    item def DapEv08 { doc /* 事象：GNC OPS 2 への遷移（軌道 DAP が有効になる） */ }
    item def DapEv09 { doc /* 事象：INRTL または LVLH の押しボタン、または RHC のデテント外し（ホットスティックのダウンモード） */ }
    item def DapEv10 { doc /* 事象：AUTO 押しボタン */ }
    item def DapEv11 { doc /* 事象：FREE 押しボタン（全軸 ROTATION PULSE） */ }
    item def DapEv12 { doc /* 事象：INRTL 押しボタン（慣性保持でレートを減衰） */ }
    item def DapEv13 { doc /* 事象：GNC OPS 3 への遷移（MM 301〜303 で遷移 DAP が再び有効） */ }
    item def DapEv14 { doc /* 事象：MM 304 への遷移（EI−5 分、エアロジェット DAP が有効になる） */ }
    item def DapEv15 { doc /* 事象：RHC をデテントから 7° 超、または CSS 押しボタン（軸ごと） */ }
    item def DapEv16 { doc /* 事象：AUTO 押しボタン（PITCH・ROLL/YAW） */ }
    item def DapEv17 { doc /* 事象：ENTRY MODE スイッチを NO Y JET（ロール／ヨーは自動で CSS へ） */ }
    item def DapEv18 { doc /* 事象：ENTRY MODE スイッチと R/Y 軸を AUTO に戻す */ }
    item def DapEv19 { doc /* 事象：主脚の接地（WOW）と前脚の接地（WONG、ピッチ軸は AUTO へ） */ }
    item def DapEv20 { doc /* 事象：車輪停止 */ }
    item def DapEv21 { doc /* 事象：GPC 灯（PASS のセット分裂）、制御の喪失またはロールマヌーバの不実施 → BFS ENGAGE 押しボタン（上昇） */ }
    item def DapEv22 { doc /* 事象：GPC 灯（PASS のセット分裂）→ BFS ENGAGE 押しボタン（再突入） */ }
    item def ImuEv01 { doc /* 事象：IMU の電源スイッチ（パネル O14・O15・O16）を ON */ }
    item def ImuEv02 { doc /* 事象：運転の指令（GPC が FF MDM を通して operate の離散信号を送る） */ }
    item def ImuEv03 { doc /* 事象：起動シーケンスの完了（in-operate-mode の離散信号、約85秒） */ }
    item def ImuEv04 { doc /* 事象：T−4 分にプラットフォームを解放して慣性モードへ */ }
    item def ImuEv05 { doc /* 事象：STAR ALIGN の実行（SPEC 21 の項目 13・16） */ }
    item def ImuEv06 { doc /* 事象：アラインメントの完了（現在の REFSMMAT を望みの REFSMMAT に等しくする） */ }
    item def ImuEv07 { doc /* 事象：IMU/IMU アラインメントの実行（SPEC 21 の項目 14 で基準の IMU を指定） */ }
    item def ImuEv08 { doc /* 事象：スルーとパルストルクの完了 */ }
    item def ImuEv09 { doc /* 事象：BITE の検出または温度の限界外（SM ALERT と IMU BITE/T X） */ }
    item def ImuEv10 { doc /* 事象：2レベルで不一致がしきい値を超え、BITE のある側を故障と判定 */ }
    item def ImuEv11 { doc /* 事象：RM が故障を判定して自動 deselect（SM ALERT と故障メッセージ） */ }
    item def ImuEv12 { doc /* 事象：IMU 灯（2レベルで不一致がしきい値を超え、故障機を特定できない） */ }
    item def ImuEv13 { doc /* 事象：冗長ジャイロモニタで最もレートの高い IMU を特定 */ }
    item def ImuEv14 { doc /* 事象：乗員が1台を deselect（MCC の指示。通信がなければ番号の小さい IMU） */ }
    item def ImuEv15 { doc /* 事象：乗員の手動 deselect（SPEC 21 の項目 7〜9、SPEC 51 の項目 25〜27） */ }
    item def ImuEv16 { doc /* 事象：同じ項目の再実行で reselect */ }
    item def ImuEv17 { doc /* 事象：コムフォールト（GPC または FF MDM のポートの故障で GPC が IMU のデータを使えない） */ }
    item def ImuEv18 { doc /* 事象：データ経路の回復 */ }
    item def ImuEv19 { doc /* 事象：OPER の離散信号を8〜14秒失う（FF MDM の電源断など。BCE STRG x IMU のメッセージ） */ }
    item def ImuEv20 { doc /* 事象：起動シーケンスが終わり、ケージされた姿勢で慣性運転に戻る */ }
    item def ImuEv21 { doc /* 事象：IMU/IMU アラインメントで取り戻す */ }
    item def ImuEv22 { doc /* 事象：IMU の電源スイッチを OFF（電力の節約のための停止、または電源の喪失） */ }
    item def NavEv01 { doc /* 事象：抗力が 11 fps2 に達する（EI+11:49 ごろ） */ }
    item def NavEv02 { doc /* 事象：drag H のデータの編集が繰り返される → 乗員が AIF を FORCE に */ }
    item def NavEv03 { doc /* 事象：TACAN の LRU が2台ロックし、RM が航法フィルタにデータを渡す */ }
    item def NavEv04 { doc /* 事象：GPS のベクトルが期待の範囲内で取り込まれる */ }
    item def NavEv05 { doc /* 事象：MCC の GO で TACAN の AIF を AUTO に（マッハ 7 付近） */ }
    item def NavEv06 { doc /* 事象：地上の指示で TACAN を FORCE */ }
    item def NavEv07 { doc /* 事象：比が1未満になり AUTO に戻す */ }
    item def NavEv08 { doc /* 事象：1台しかロックしない、または比が1を超えて TACAN が悪い */ }
    item def NavEv09 { doc /* 事象：TACAN の RM が故障またはジレンマを検出（SM ALERT と故障メッセージ） */ }
    item def NavEv10 { doc /* 事象：故障した、またはロックしない LRU を deselect し（必要なら別の地上局に切り替え）、AUTO で取り込む */ }
    item def NavEv11 { doc /* 事象：マッハ 5（高度 120 k ft）でエアデータのプローブを展開 */ }
    item def NavEv12 { doc /* 事象：マッハ 5（高度 120 k ft）でエアデータのプローブを展開 */ }
    item def NavEv13 { doc /* 事象：MCC の GO で HORIZ SIT の項目 25（NAV）・28（G&C）によりエアデータを取り込む */ }
    item def NavEv14 { doc /* 事象：AIR DATA 灯（取り込みの前に ADTA の RM がジレンマを宣言） */ }
    item def NavEv15 { doc /* 事象：AIR DATA 灯（取り込みの後に ADTA の RM がジレンマを宣言） */ }
    item def NavEv16 { doc /* 事象：地上がレーダの高度との比較で故障した ADTA を特定し、乗員が deselect */ }
    item def NavEv17 { doc /* 事象：良い ADTA が1台だけになり、G&C へのエアデータの入力を禁止 */ }
    item def NavEv18 { doc /* 事象：マッハ 1.5 までにエアデータが G&C に取り込まれない */ }
    item def NavEv19 { doc /* 事象：残る ADTA を G&C に取り込む（CDR の判断） */ }
    item def NavEv20 { doc /* 事象：MLS の捕捉（高度約 18,000 ft。HORIZ SIT から残差と比が消える） */ }
    item def NavEv21 { doc /* 事象：MLS の捕捉（高度約 18,000 ft） */ }
    item def NavEv22 { doc /* 事象：MLS のデータの喪失、または RM のジレンマ（SM ALERT と故障メッセージ） */ }
    state def GncMajorModes {
        doc /* 図193 GN&C の OPS・メジャーモード 状態遷移図：GNC の OPS・メジャーモード（GN&C の OPS・メジャーモード） */
        @PhaseMode { phase = "PH-1"; states = "GMMS-01,GMMS-03"; }
        @PhaseMode { phase = "PH-2"; states = "GMMS-04,GMMS-05,GMMS-06,GMMS-07,GMMS-14,GMMS-15,GMMS-16"; }
        @PhaseMode { phase = "PH-3"; states = "GMMS-08,GMMS-09,GMMS-10"; }
        @PhaseMode { phase = "PH-4"; states = "GMMS-09,GMMS-11"; }
        @PhaseMode { phase = "PH-5"; states = "GMMS-09"; }
        @PhaseMode { phase = "PH-6"; states = "GMMS-11,GMMS-12,GMMS-13,GMMS-16"; }
        @PhaseMode { phase = "PH-7"; states = "GMMS-13,GMMS-01"; }
        attribute gmmGuard01 : ScalarValues::Boolean { doc /* ガード：地上がロードを検証。BFS は L−58:30 に OPS 1 へ */ }
        attribute gmmGuard04 : ScalarValues::Boolean { doc /* ガード：MECO 確認、ET 分離は MECO の約 20 秒後 */ }
        attribute gmmGuard05 : ScalarValues::Boolean { doc /* ガード：OMS 1 を終えたか、公称の MECO で OMS 1 が不要 */ }
        attribute gmmGuard06 : ScalarValues::Boolean { doc /* ガード：OMS エンジンを確保、DAP が AUTO */ }
        attribute gmmGuard07 : ScalarValues::Boolean { doc /* ガード：GPC 1・2 に GNC OPS 2、GPC 5 の BFS は HALT */ }
        attribute gmmGuard08 : ScalarValues::Boolean { doc /* ガード：FCS のセンサ・操縦装置に電源、APU を使うなら ASA が ON */ }
        attribute gmmGuard10 : ScalarValues::Boolean { doc /* ガード：RGA と ASA が ON、GPC 1〜4 が PASS、GPC 5 が BFS の OPS 3 */ }
        attribute gmmGuard11 : ScalarValues::Boolean { doc /* ガード：MM 302 の離脱噴射と MM 303 を終え、EI−5 の姿勢にある */ }
        attribute gmmGuard13 : ScalarValues::Boolean { doc /* ガード：車輪停止後 */ }
        attribute gmmGuard14 : ScalarValues::Boolean { doc /* ガード：リフトオフ後から NEGATIVE RETURN まで（MM 102・103） */ }
        attribute gmmGuard16 : ScalarValues::Boolean { doc /* ガード：着陸後の手順は公称の終了時と同じ（油圧負荷試験を除く） */ }
        attribute gmmGuard17 : ScalarValues::Boolean { doc /* ガード：MECO 前に TAL を選択済み（MM 103T）。動圧の上昇まで約3分 */ }
        attribute gmmGuard18 : ScalarValues::Boolean { doc /* ガード：MECO 後に OMS MNVR 表示で AOA の目標セットを選択済み */ }
        attribute gmmGuard19 : ScalarValues::Boolean { doc /* ガード：MECO 確認が立ち、コンティンジェンシーの機動が要る */ }
        attribute gmmGuard20 : ScalarValues::Boolean { doc /* ガード：10 秒以内。BFS が PASS を追従し IMU 1・FCS チャネル 2 などを使える。TAL で PASS が 68 秒以内に OPS 3 に入らないときも */ }
        attribute gmmGuard21 : ScalarValues::Boolean { doc /* ガード：45 秒以内。エンゲージ後は CSS */ }
        attribute gmmGuard22 : ScalarValues::Boolean { doc /* ガード：上昇中にエンゲージした場合（約2時間） */ }
        entry; then GMMS_01;
        state GMMS_01 { doc /* GMMS-01 OPS 9（MM 901：プリカウント・着陸後） */ }
        state GMMS_02 {
            doc /* GMMS-02 OPS 1 上昇（メモリ構成1、OPS 6 を併せ持つ） */
            entry; then GMMS_03;
            state GMMS_03 { doc /* GMMS-03 MM 101 ターミナルカウント（誘導・飛行制御は不活性） */ }
            state GMMS_04 { doc /* GMMS-04 MM 102 第1段（開ループの姿勢表による誘導） */ }
            state GMMS_05 { doc /* GMMS-05 MM 103 第2段（PEG 1。TAL は 103T、ATO はアボート用の MECO 目標） */ }
            state GMMS_06 { doc /* GMMS-06 MM 104 OMS 1 投入（PEG 4、遷移 DAP） */ }
            state GMMS_07 { doc /* GMMS-07 MM 105 OMS 2 投入（PEG 4、遷移 DAP） */ }
            state GMMS_08 { doc /* GMMS-08 MM 106 投入後の慣性飛行 */ }
        }
        state GMMS_09 { doc /* GMMS-09 OPS 2 軌道（MM 201・202：UNIV PTG、PEG 7、軌道 DAP） */ }
        state GMMS_10 { doc /* GMMS-10 OPS 8 軌道上点検（MM 801：FCS 点検） */ }
        state GMMS_11 { doc /* GMMS-11 OPS 3 軌道離脱（MM 301・302・303：PEG 4、遷移 DAP） */ }
        state GMMS_12 { doc /* GMMS-12 MM 304 再突入（抗力プロファイルの誘導、エアロジェット DAP） */ }
        state GMMS_13 { doc /* GMMS-13 MM 305 TAEM・進入着陸・滑走（TAEM 誘導、A/L 誘導） */ }
        state GMMS_14 { doc /* GMMS-14 MM 601 動力 RTLS（閉ループの PRTLS 誘導） */ }
        state GMMS_15 { doc /* GMMS-15 MM 602・603 滑空 RTLS（GRTLS の誘導、603 は GRTLS TAEM） */ }
        state GMMS_16 { doc /* GMMS-16 BFS エンゲージ（BFS が OPS 1・6・3 を実行） */ }
        transition GMMT_01 first GMMS_01 accept GmmEv01 if gmmGuard01 then GMMS_02.GMMS_03;
        transition GMMT_02 first GMMS_02.GMMS_03 accept GmmEv02 then GMMS_02.GMMS_04;
        transition GMMT_03 first GMMS_02.GMMS_04 accept GmmEv03 then GMMS_02.GMMS_05;
        transition GMMT_04 first GMMS_02.GMMS_05 accept GmmEv04 if gmmGuard04 then GMMS_02.GMMS_06;
        transition GMMT_05 first GMMS_02.GMMS_06 accept GmmEv05 if gmmGuard05 then GMMS_02.GMMS_07;
        transition GMMT_06 first GMMS_02.GMMS_07 accept GmmEv06 if gmmGuard06 then GMMS_02.GMMS_08;
        transition GMMT_07 first GMMS_02.GMMS_08 accept GmmEv07 if gmmGuard07 then GMMS_09;
        transition GMMT_08 first GMMS_09 accept GmmEv08 if gmmGuard08 then GMMS_10;
        transition GMMT_09 first GMMS_10 accept GmmEv09 then GMMS_09;
        transition GMMT_10 first GMMS_09 accept GmmEv10 if gmmGuard10 then GMMS_11;
        transition GMMT_11 first GMMS_11 accept GmmEv11 if gmmGuard11 then GMMS_12;
        transition GMMT_12 first GMMS_12 accept GmmEv12 then GMMS_13;
        transition GMMT_13 first GMMS_13 accept GmmEv13 if gmmGuard13 then GMMS_01;
        transition GMMT_14 first GMMS_02 accept GmmEv14 if gmmGuard14 then GMMS_14;
        transition GMMT_15 first GMMS_14 accept GmmEv15 then GMMS_15;
        transition GMMT_16 first GMMS_15 accept GmmEv16 if gmmGuard16 then GMMS_01;
        transition GMMT_17 first GMMS_02.GMMS_06 accept GmmEv17 if gmmGuard17 then GMMS_11;
        transition GMMT_18 first GMMS_02 accept GmmEv18 if gmmGuard18 then GMMS_11;
        transition GMMT_19 first GMMS_02 accept GmmEv19 if gmmGuard19 then GMMS_15;
        transition GMMT_20 first GMMS_02 accept GmmEv20 if gmmGuard20 then GMMS_16;
        transition GMMT_21 first GMMS_12 accept GmmEv21 if gmmGuard21 then GMMS_16;
        transition GMMT_22 first GMMS_16 accept GmmEv22 if gmmGuard22 then GMMS_09;
    }
    state def DapModes {
        doc /* 図194 DAP のモード 状態遷移図：飛行制御（DAP）のモード（飛行制御（DAP）のモード） */
        @PhaseMode { phase = "PH-1"; states = "DAPS-01"; }
        @PhaseMode { phase = "PH-2"; states = "DAPS-02,DAPS-03,DAPS-04,DAPS-06,DAPS-07,DAPS-16"; }
        @PhaseMode { phase = "PH-3"; states = "DAPS-04,DAPS-08,DAPS-09,DAPS-10,DAPS-06,DAPS-07"; }
        @PhaseMode { phase = "PH-4"; states = "DAPS-08,DAPS-09,DAPS-04"; }
        @PhaseMode { phase = "PH-5"; states = "DAPS-08,DAPS-09"; }
        @PhaseMode { phase = "PH-6"; states = "DAPS-06,DAPS-07,DAPS-04,DAPS-12,DAPS-13,DAPS-14,DAPS-15,DAPS-16"; }
        @PhaseMode { phase = "PH-7"; states = "DAPS-01"; }
        attribute dapGuard01 : ScalarValues::Boolean { doc /* ガード：ピッチ・ロール／ヨーが Auto（MET 0:01 に確認） */ }
        attribute dapGuard02 : ScalarValues::Boolean { doc /* ガード：MET 90 秒以降。PASS の誘導が公称でない・レートの逸脱・誘導の未収束。手動スロットルも選ぶ */ }
        attribute dapGuard04 : ScalarValues::Boolean { doc /* ガード：MECO 確認で ORBITAL DAP の灯が点く */ }
        attribute dapGuard05 : ScalarValues::Boolean { doc /* ガード：AUTO が選ばれ両 RHC がデテント内。OMS 1・OMS 2・離脱噴射 */ }
        attribute dapGuard06 : ScalarValues::Boolean { doc /* ガード：飛行制御器の電源が ON。点火後に 5° 超の説明のつかない偏差なら手動に引き継ぐ */ }
        attribute dapGuard07 : ScalarValues::Boolean { doc /* ガード：FLT CNTLR POWER を切り DAP が AUTO であることを確かめる */ }
        attribute dapGuard11 : ScalarValues::Boolean { doc /* ガード：FCS 点検のセンサ試験、RCS ホットファイアなど */ }
        attribute dapGuard13 : ScalarValues::Boolean { doc /* ガード：RGA と ASA が ON */ }
        attribute dapGuard14 : ScalarValues::Boolean { doc /* ガード：EI−5 の姿勢にある（遅れ・姿勢誤差はジェットの噴射を増やす） */ }
        attribute dapGuard15 : ScalarValues::Boolean { doc /* ガード：Mach 0.9 での通常の CSS、低エネルギー・状態ベクトルの更新・エアデータ未取り込み（Mach 2.5 までにピッチ CSS）・振動 */ }
        attribute dapGuard16 : ScalarValues::Boolean { doc /* ガード：事象の完了と誘導の指針の再収束。オートランドは MLS 捕捉・A/L 遷移の後 */ }
        attribute dapGuard17 : ScalarValues::Boolean { doc /* ガード：後部 RCS の量が 10% 未満で q-bar 20 psf 超、または同じ側のヨージェット4基の故障 */ }
        attribute dapGuard18 : ScalarValues::Boolean { doc /* ガード：Mach 6 より下、または制御に問題があり RCS で取り戻すとき */ }
        attribute dapGuard19 : ScalarValues::Boolean { doc /* ガード：WOW/WONG が立つ（立たなければ SRB/ET SEPARATION スイッチで手動設定） */ }
        attribute dapGuard21 : ScalarValues::Boolean { doc /* ガード：10 秒以内。90 秒より前はピッチ・ヨーのレート 5°/s 超で BFS、90 秒以降は CSS の後 */ }
        attribute dapGuard22 : ScalarValues::Boolean { doc /* ガード：45 秒以内。MM 304 以降は CSS、エアデータ未取り込みなら G&C への取り込みを禁止 */ }
        entry; then DAPS_01;
        state DAPS_01 { doc /* DAPS-01 不活性（ターミナルカウント、車輪停止後） */ }
        state DAPS_02 { doc /* DAPS-02 上昇 AUTO（誘導の指令で SRB・SSME をジンバル） */ }
        state DAPS_03 { doc /* DAPS-03 上昇 CSS（全軸、離散レート・姿勢保持、手動スロットル） */ }
        state DAPS_04 { doc /* DAPS-04 遷移 DAP（RCS：AUTO または INRTL、ET 分離の −Z 並進） */ }
        state DAPS_05 {
            doc /* DAPS-05 OMS TVC（OMS 噴射中） */
            entry; then DAPS_06;
            state DAPS_06 { doc /* DAPS-06 OMS TVC AUTO（誘導の指令をジンバル指令に） */ }
            state DAPS_07 { doc /* DAPS-07 OMS TVC 手動（INRTL：RHC のレート指令） */ }
        }
        state DAPS_08 { doc /* DAPS-08 軌道 RCS DAP AUTO（UNIV PTG。ジェットは PRI・ALT・VERN） */ }
        state DAPS_09 { doc /* DAPS-09 軌道 RCS DAP 手動（INRTL・LVLH：DISC RATE／PULSE） */ }
        state DAPS_10 { doc /* DAPS-10 軌道 FREE（フリードリフト） */ }
        state DAPS_11 {
            doc /* DAPS-11 エアロジェット DAP（MM 304〜車輪停止） */
            entry; then DAPS_12;
            state DAPS_12 { doc /* DAPS-12 エアロジェット AUTO（ピッチ・ロール／ヨー AUTO、Wraparound） */ }
            state DAPS_13 { doc /* DAPS-13 エアロジェット CSS（ピッチまたはロール／ヨー、軸ごと） */ }
            state DAPS_14 { doc /* DAPS-14 No Yaw Jet（ヨージェットなし、ロール／ヨーは CSS） */ }
        }
        state DAPS_15 { doc /* DAPS-15 滑走（WOW・WONG 後：ロードバランス、ロードリリーフ、前輪操向） */ }
        state DAPS_16 { doc /* DAPS-16 BFS エンゲージ後の飛行制御（上昇は AUTO のみ、再突入は CSS） */ }
        transition DAPT_01 first DAPS_01 accept DapEv01 if dapGuard01 then DAPS_02;
        transition DAPT_02 first DAPS_02 accept DapEv02 if dapGuard02 then DAPS_03;
        transition DAPT_03 first DAPS_03 accept DapEv03 then DAPS_02;
        transition DAPT_04 first DAPS_02 accept DapEv04 if dapGuard04 then DAPS_04;
        transition DAPT_05 first DAPS_04 accept DapEv05 if dapGuard05 then DAPS_05.DAPS_06;
        transition DAPT_06 first DAPS_05.DAPS_06 accept DapEv06 if dapGuard06 then DAPS_05.DAPS_07;
        transition DAPT_07 first DAPS_05 accept DapEv07 if dapGuard07 then DAPS_04;
        transition DAPT_08 first DAPS_04 accept DapEv08 then DAPS_08;
        transition DAPT_09 first DAPS_08 accept DapEv09 then DAPS_09;
        transition DAPT_10 first DAPS_09 accept DapEv10 then DAPS_08;
        transition DAPT_11 first DAPS_09 accept DapEv11 if dapGuard11 then DAPS_10;
        transition DAPT_12 first DAPS_10 accept DapEv12 then DAPS_09;
        transition DAPT_13 first DAPS_08 accept DapEv13 if dapGuard13 then DAPS_04;
        transition DAPT_14 first DAPS_04 accept DapEv14 if dapGuard14 then DAPS_11.DAPS_12;
        transition DAPT_15 first DAPS_11.DAPS_12 accept DapEv15 if dapGuard15 then DAPS_11.DAPS_13;
        transition DAPT_16 first DAPS_11.DAPS_13 accept DapEv16 if dapGuard16 then DAPS_11.DAPS_12;
        transition DAPT_17 first DAPS_11.DAPS_12 accept DapEv17 if dapGuard17 then DAPS_11.DAPS_14;
        transition DAPT_18 first DAPS_11.DAPS_14 accept DapEv18 if dapGuard18 then DAPS_11.DAPS_12;
        transition DAPT_19 first DAPS_11 accept DapEv19 if dapGuard19 then DAPS_15;
        transition DAPT_20 first DAPS_15 accept DapEv20 then DAPS_01;
        transition DAPT_21 first DAPS_02 accept DapEv21 if dapGuard21 then DAPS_16;
        transition DAPT_22 first DAPS_11 accept DapEv22 if dapGuard22 then DAPS_16;
    }
    state def ImuStates {
        doc /* 図195 IMU 状態遷移図：IMU（1台）の状態（慣性計測装置（IMU）） */
        @PhaseMode { phase = "PH-1"; states = "IMUS-01,IMUS-02,IMUS-03,IMUS-05,IMUS-06"; }
        @PhaseMode { phase = "PH-2"; states = "IMUS-06"; }
        @PhaseMode { phase = "PH-3"; states = "IMUS-06,IMUS-07"; }
        @PhaseMode { phase = "PH-4"; states = "IMUS-06,IMUS-07,IMUS-08"; }
        @PhaseMode { phase = "PH-5"; states = "IMUS-06"; }
        @PhaseMode { phase = "PH-6"; states = "IMUS-06"; }
        @PhaseMode { phase = "PH-7"; states = "IMUS-06"; }
        attribute imuGuard02 : ScalarValues::Boolean { doc /* ガード：運転温度に達して待機にある（冷えた状態から約8時間）。GNC OPS 2・3・9 */ }
        attribute imuGuard03 : ScalarValues::Boolean { doc /* ガード：打上げ前（打上げの約10時間前に運転モードにする） */ }
        attribute imuGuard04 : ScalarValues::Boolean { doc /* ガード：連続アラインメントが完了。以後は IRAMS のずれがレッドライン内（A8-57） */ }
        attribute imuGuard05 : ScalarValues::Boolean { doc /* ガード：星のデータが2つある。ずれが 1.4° を超えるときはまず HUD／COAS で合わせる。OPS 3 では MM 301 だけ */ }
        attribute imuGuard06 : ScalarValues::Boolean { doc /* ガード：故障検出のしきい値はアラインメントの終わりに初期化される */ }
        attribute imuGuard07 : ScalarValues::Boolean { doc /* ガード：GNC OPS 2・3。軌道離脱の TIG−70 分（A8-110 A）、または大きなずれを除くとき */ }
        attribute imuGuard08 : ScalarValues::Boolean { doc /* ガード：スルーが終われば再び候補となる */ }
        attribute imuGuard09 : ScalarValues::Boolean { doc /* ガード：3レベルでは RM は BITE のある IMU を外さない */ }
        attribute imuGuard10 : ScalarValues::Boolean { doc /* ガード：候補が2台で BITE が片方だけ（姿勢は3回、速度は2回続けて） */ }
        attribute imuGuard11 : ScalarValues::Boolean { doc /* ガード：候補が3台。同じ IMU が3回続けて不一致の原因と特定される（姿勢は 48 秒） */ }
        attribute imuGuard12 : ScalarValues::Boolean { doc /* ガード：候補が2台で BITE が両方にあるか両方にない */ }
        attribute imuGuard13 : ScalarValues::Boolean { doc /* ガード：姿勢のジレンマ（速度のジレンマにはこの手段がない） */ }
        attribute imuGuard14 : ScalarValues::Boolean { doc /* ガード：地上がレーダ追跡との比較で故障機を特定する（A8-52 A）。軌道離脱の前なら再突入を遅らせて残る1系統を prime select する（A8-8） */ }
        attribute imuGuard15 : ScalarValues::Boolean { doc /* ガード：データ経路の回復の手順、PASS が外した IMU の BFS での deselect、MCC の指示 */ }
        attribute imuGuard16 : ScalarValues::Boolean { doc /* ガード：速度は8秒ごとの rectification で合わせ直されている */ }
        attribute imuGuard17 : ScalarValues::Boolean { doc /* ガード：FF MDM が OPER の離散信号を最後の値に保持する。OPS 3 では PASS が自動で deselect する */ }
        attribute imuGuard18 : ScalarValues::Boolean { doc /* ガード：回復の手順で deselect していれば reselect する */ }
        attribute imuGuard20 : ScalarValues::Boolean { doc /* ガード：飛行中（operate の離散信号が戻った後）。乗員は PASS・BFS で deselect しておく */ }
        attribute imuGuard21 : ScalarValues::Boolean { doc /* ガード：基準にできる IMU がある（スルーを使う唯一のアラインメント） */ }
        attribute imuGuard22 : ScalarValues::Boolean { doc /* ガード：ブレーキでジャイロを止める */ }
        entry; then IMUS_01;
        state IMUS_01 { doc /* IMUS-01 電源 OFF */ }
        state IMUS_02 { doc /* IMUS-02 暖機・待機（STBY。ヒータ回路だけに給電） */ }
        state IMUS_03 { doc /* IMUS-03 起動シーケンス（ケージ・ジャイロの回転、約85秒） */ }
        state IMUS_04 {
            doc /* IMUS-04 運転（OPER） */
            entry; then IMUS_05;
            state IMUS_05 { doc /* IMUS-05 打上げ前の校正・アラインメント（姿勢決定・ジャイロコンパス・連続アラインメント） */ }
            state IMUS_06 { doc /* IMUS-06 慣性運転・選択フィルタの候補（3レベル MVS／2レベル／1台） */ }
            state IMUS_07 { doc /* IMUS-07 恒星アラインメント中（スタートラッカ、または HUD／COAS。パルストルク） */ }
            state IMUS_08 { doc /* IMUS-08 IMU 間アラインメント中（スルー中は候補から外れる） */ }
            state IMUS_09 { doc /* IMUS-09 BITE 表示中（候補のまま。SPEC 21 でマスクできる） */ }
            state IMUS_10 { doc /* IMUS-10 RM ジレンマ（2レベルの不一致で故障機を特定できない） */ }
            state IMUS_11 { doc /* IMUS-11 RM による故障判定・自動 deselect（動作は続く） */ }
            state IMUS_12 { doc /* IMUS-12 乗員による deselect */ }
            state IMUS_13 { doc /* IMUS-13 コムフォールト（データ欠落。OPER は MDM の保持で維持、パルストルクの補償なし） */ }
            state IMUS_14 { doc /* IMUS-14 ケージ後の再アラインメント待ち（OPER に戻ったが未アライン。deselect しておく） */ }
        }
        transition IMUT_01 first IMUS_01 accept ImuEv01 then IMUS_02;
        transition IMUT_02 first IMUS_02 accept ImuEv02 if imuGuard02 then IMUS_03;
        transition IMUT_03 first IMUS_03 accept ImuEv03 if imuGuard03 then IMUS_04.IMUS_05;
        transition IMUT_04 first IMUS_04.IMUS_05 accept ImuEv04 if imuGuard04 then IMUS_04.IMUS_06;
        transition IMUT_05 first IMUS_04.IMUS_06 accept ImuEv05 if imuGuard05 then IMUS_04.IMUS_07;
        transition IMUT_06 first IMUS_04.IMUS_07 accept ImuEv06 if imuGuard06 then IMUS_04.IMUS_06;
        transition IMUT_07 first IMUS_04.IMUS_06 accept ImuEv07 if imuGuard07 then IMUS_04.IMUS_08;
        transition IMUT_08 first IMUS_04.IMUS_08 accept ImuEv08 if imuGuard08 then IMUS_04.IMUS_06;
        transition IMUT_09 first IMUS_04.IMUS_06 accept ImuEv09 if imuGuard09 then IMUS_04.IMUS_09;
        transition IMUT_10 first IMUS_04.IMUS_09 accept ImuEv10 if imuGuard10 then IMUS_04.IMUS_11;
        transition IMUT_11 first IMUS_04.IMUS_06 accept ImuEv11 if imuGuard11 then IMUS_04.IMUS_11;
        transition IMUT_12 first IMUS_04.IMUS_06 accept ImuEv12 if imuGuard12 then IMUS_04.IMUS_10;
        transition IMUT_13 first IMUS_04.IMUS_10 accept ImuEv13 if imuGuard13 then IMUS_04.IMUS_11;
        transition IMUT_14 first IMUS_04.IMUS_10 accept ImuEv14 if imuGuard14 then IMUS_04.IMUS_12;
        transition IMUT_15 first IMUS_04.IMUS_06 accept ImuEv15 if imuGuard15 then IMUS_04.IMUS_12;
        transition IMUT_16 first IMUS_04.IMUS_12 accept ImuEv16 if imuGuard16 then IMUS_04.IMUS_06;
        transition IMUT_17 first IMUS_04.IMUS_06 accept ImuEv17 if imuGuard17 then IMUS_04.IMUS_13;
        transition IMUT_18 first IMUS_04.IMUS_13 accept ImuEv18 if imuGuard18 then IMUS_04.IMUS_06;
        transition IMUT_19 first IMUS_04 accept ImuEv19 then IMUS_02;
        transition IMUT_20 first IMUS_03 accept ImuEv20 if imuGuard20 then IMUS_04.IMUS_14;
        transition IMUT_21 first IMUS_04.IMUS_14 accept ImuEv21 if imuGuard21 then IMUS_04.IMUS_08;
        transition IMUT_22 first IMUS_04 accept ImuEv22 if imuGuard22 then IMUS_01;
    }
    state def NavSensorStates {
        doc /* 図196 再突入の航法センサの取り込み 状態遷移図：再突入の航法センサの取り込み（再突入の航法センサの取り込み） */
        @PhaseMode { phase = "PH-4"; states = "NAVS-01"; }
        @PhaseMode { phase = "PH-6"; states = "NAVS-01,NAVS-03,NAVS-05,NAVS-06,NAVS-09,NAVS-10,NAVS-11,NAVS-14"; }
        attribute navGuard01 : ScalarValues::Boolean { doc /* ガード：drag altitude の AIF は AUTO で始める */ }
        attribute navGuard02 : ScalarValues::Boolean { doc /* ガード：EOM（GRTLS では AUTO のまま） */ }
        attribute navGuard03 : ScalarValues::Boolean { doc /* ガード：3系統 TACAN の機体。TACAN の AIF は INHIBIT。高度約 160,000 ft から使える */ }
        attribute navGuard04 : ScalarValues::Boolean { doc /* ガード：3系統 GPS の機体（TACAN のデータは無い）。OPS 301 で乗員が初期化済み。単一系統 GPS は INHIBIT のまま */ }
        attribute navGuard05 : ScalarValues::Boolean { doc /* ガード：比が1未満で、地上のレーダとの比較で取り込みが航法をよくする。通信がなければ乗員が判断する */ }
        attribute navGuard06 : ScalarValues::Boolean { doc /* ガード：比が1を超え、状態ベクトルが誤りで TACAN の残差がそれを直せる（そうでなければデルタステートの更新） */ }
        attribute navGuard08 : ScalarValues::Boolean { doc /* ガード：地上がレーダとの比較で評価する。通信がなければ乗員が切り分ける */ }
        attribute navGuard09 : ScalarValues::Boolean { doc /* ガード：ジレンマは距離 3000 ft または方位 6° の不一致 */ }
        attribute navGuard10 : ScalarValues::Boolean { doc /* ガード：比が1未満。FORCE にはしない */ }
        attribute navGuard11 : ScalarValues::Boolean { doc /* ガード：AIR DATA PROBE スイッチを DEPLOY。BARO の AIF は INHIBIT */ }
        attribute navGuard12 : ScalarValues::Boolean { doc /* ガード：3系統 GPS の機体。GPS の取り込みは続く */ }
        attribute navGuard13 : ScalarValues::Boolean { doc /* ガード：マッハ 3.5 未満でデータが有効になり、エアデータが NAV に近い（マッハ 3.4 付近）。気圧高度の航法での処理は Vrel 2500 fps から */ }
        attribute navGuard16 : ScalarValues::Boolean { doc /* ガード：良い ADTA が2台以上残る */ }
        attribute navGuard17 : ScalarValues::Boolean { doc /* ガード：BFS エンゲージ・航法状態の不良・HAC 上の強風・シータ限界の負担が危険な場合を除く（A8-111 B） */ }
        attribute navGuard18 : ScalarValues::Boolean { doc /* ガード：マッハ 2.5 からピッチ CSS、マッハ 2 からシータ限界を守る */ }
        attribute navGuard19 : ScalarValues::Boolean { doc /* ガード：ピッチ軸の CSS を選んでから取り込む（マッハ 2.5 未満）。BFS エンゲージ・航法状態の不良・HAC 上の強風など */ }
        attribute navGuard20 : ScalarValues::Boolean { doc /* ガード：MLS の地上局のある滑走路。距離と方位角の data good がある。TACAN が FORCE でない。GPS の更新は自動で禁止される */ }
        attribute navGuard21 : ScalarValues::Boolean { doc /* ガード：エアデータを G&C に取り込まないまま進入する場合 */ }
        attribute navGuard22 : ScalarValues::Boolean { doc /* ガード：距離 0.329 nm・方位角 0.5°・仰角 0.4° の不一致で data good が戻される。1500 ft より上なら TACAN は 1500 ft、ADTA は 500 ft まで再び使える */ }
        entry; then NAVS_01;
        state NAVS_01 { doc /* NAVS-01 慣性航法のみ（IMU ごとの3つの状態ベクトル。外部センサは未取り込み） */ }
        state NAVS_02 {
            doc /* NAVS-02 抗力高度（drag H）の更新 */
            entry; then NAVS_03;
            state NAVS_03 { doc /* NAVS-03 drag H を AUTO で取り込み */ }
            state NAVS_04 { doc /* NAVS-04 drag H を FORCE で取り込み（編集の繰り返し） */ }
        }
        state NAVS_05 { doc /* NAVS-05 TACAN の捕捉・評価（AIF は INHIBIT。地上がレーダ追跡と比べる） */ }
        state NAVS_06 { doc /* NAVS-06 TACAN を AUTO で取り込み（距離・方位で状態ベクトルを更新） */ }
        state NAVS_07 { doc /* NAVS-07 TACAN を FORCE で取り込み（状態ベクトルの誤りを直す） */ }
        state NAVS_08 { doc /* NAVS-08 TACAN の故障・ジレンマ・1台ロックの処置（LRU の deselect、地上局の切替え） */ }
        state NAVS_09 { doc /* NAVS-09 GPS ベクトルの取り込み（3系統 GPS の機体。42 秒ごと、17,000 ft からは9秒ごと） */ }
        state NAVS_10 { doc /* NAVS-10 プローブの展開・ADTA の評価（AIF は INHIBIT） */ }
        state NAVS_11 { doc /* NAVS-11 ADTA を航法と G&C に取り込み（気圧高度で高度を更新） */ }
        state NAVS_12 { doc /* NAVS-12 ADTA のジレンマ（AIR DATA 灯） */ }
        state NAVS_13 { doc /* NAVS-13 デフォルト／NAVDAD のエアデータ（G&C に取り込まない。シータ限界） */ }
        state NAVS_14 { doc /* NAVS-14 MLS の取り込み（着陸前の航法。状態ベクトル1つ） */ }
        state NAVS_15 { doc /* NAVS-15 MLS の喪失・ジレンマ（TACAN・ADTA または IMU のデータに戻る） */ }
        transition NAVT_01 first NAVS_01 accept NavEv01 if navGuard01 then NAVS_02.NAVS_03;
        transition NAVT_02 first NAVS_02.NAVS_03 accept NavEv02 if navGuard02 then NAVS_02.NAVS_04;
        transition NAVT_03 first NAVS_02 accept NavEv03 if navGuard03 then NAVS_05;
        transition NAVT_04 first NAVS_02 accept NavEv04 if navGuard04 then NAVS_09;
        transition NAVT_05 first NAVS_05 accept NavEv05 if navGuard05 then NAVS_06;
        transition NAVT_06 first NAVS_05 accept NavEv06 if navGuard06 then NAVS_07;
        transition NAVT_07 first NAVS_07 accept NavEv07 then NAVS_06;
        transition NAVT_08 first NAVS_05 accept NavEv08 if navGuard08 then NAVS_08;
        transition NAVT_09 first NAVS_06 accept NavEv09 if navGuard09 then NAVS_08;
        transition NAVT_10 first NAVS_08 accept NavEv10 if navGuard10 then NAVS_06;
        transition NAVT_11 first NAVS_06 accept NavEv11 if navGuard11 then NAVS_10;
        transition NAVT_12 first NAVS_09 accept NavEv12 if navGuard12 then NAVS_10;
        transition NAVT_13 first NAVS_10 accept NavEv13 if navGuard13 then NAVS_11;
        transition NAVT_14 first NAVS_10 accept NavEv14 then NAVS_12;
        transition NAVT_15 first NAVS_11 accept NavEv15 then NAVS_12;
        transition NAVT_16 first NAVS_12 accept NavEv16 if navGuard16 then NAVS_11;
        transition NAVT_17 first NAVS_12 accept NavEv17 if navGuard17 then NAVS_13;
        transition NAVT_18 first NAVS_10 accept NavEv18 if navGuard18 then NAVS_13;
        transition NAVT_19 first NAVS_13 accept NavEv19 if navGuard19 then NAVS_11;
        transition NAVT_20 first NAVS_11 accept NavEv20 if navGuard20 then NAVS_14;
        transition NAVT_21 first NAVS_13 accept NavEv21 if navGuard21 then NAVS_14;
        transition NAVT_22 first NAVS_14 accept NavEv22 if navGuard22 then NAVS_15;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def GncMajorModesHolder :> GNC_GNS {
        doc /* GN&C の OPS・メジャーモード（SSD-FD-GNC-GNS-001）は GncMajorModes の状態を持つ */
        exhibit state gncMajorModes : GncMajorModes;
    }
    part def DapModesHolder :> GNC_FCS {
        doc /* 飛行制御（DAP）のモード（SSD-FD-GNC-FCS-001）は DapModes の状態を持つ */
        exhibit state dapModes : DapModes;
    }
    part def ImuStatesHolder :> GNC_INS {
        doc /* 慣性計測装置（IMU）（SSD-FD-GNC-INS-001）は ImuStates の状態を持つ */
        exhibit state imuStates : ImuStates;
    }
    part def NavSensorStatesHolder :> GNC_NAS {
        doc /* 再突入の航法センサの取り込み（SSD-FD-GNC-NAS-001）は NavSensorStates の状態を持つ */
        exhibit state navSensorStates : NavSensorStates;
    }
    // ---- 冗長管理（機器ごとの選択・検出・故障許容。機能ブロックの part def に付ける）
    metadata def RedundancyManagement { attribute lru : String; attribute installed : String; attribute selection : String; attribute detection : String; attribute tolerance : String; }
    metadata <'RM-01'> rm_01 : RedundancyManagement about SSD_BLK_SYS_001::GNC_INS { lru = "IMU（慣性計測装置）"; installed = "3"; selection = "3：姿勢：対ごとのずれから中間値の IMU 1台を姿勢源に選ぶ（MVS）。速度：成分ごとの MVS／2：姿勢：直前に選んでいた IMU（使えなければ番号の小さいほう）。速度：2台の平均／1：その1台をそのまま使う（FDIR は処理しない）"; detection = "IMU の対ごとのずれ（姿勢）と速度の誤差ベクトルを故障検出しきい値と比べる。しきい値はアラインメントの終わりに初期化され、時間とともに最大値まで増える。2台レベルの姿勢データ良好しきい値は上昇・軌道 1°、再突入 2.5°。FDIR は 1/16 Hz（姿勢の故障の特定に 48 秒）で、しきい値を超えると 1 Hz に上がる。ほかに BITE と温度の監視がある"; tolerance = "1台の喪失の後は1故障許容（フェイルセーフ）。2台の故障で0故障許容（再突入に1台が要る）。2つを超える故障では再突入を飛べない"; }
    metadata <'RM-02'> rm_02 : RedundancyManagement about SSD_BLK_SYS_001::GNC_INS { lru = "スタートラッカ"; installed = "2（−Y・−Z）"; selection = "2・1：冗長管理なし。各トラッカが独立に全作業を行い、単独でも同時にも運用できる"; detection = "冗長管理による故障検出はない（自己試験のモードがある）"; tolerance = "資料に故障許容の語はない（2台のどちらでも全作業を行える）"; }
    metadata <'RM-03'> rm_03 : RedundancyManagement about SSD_BLK_SYS_001::GNC_NAS { lru = "TACAN"; installed = "3（3系統 GPS でない機体）"; selection = "3：距離・方位の中間値選択／2：選択の方法は資料に記載なし（A8-52 は2台レベルのジレンマを扱う）／1：資料に記載なし"; detection = "3台を比べて有意な差を検出する。ジレンマは距離 3000 ft または方位 6° の食い違いで生じる"; tolerance = "A8-1001 は TACAN 3台と単系統 GPS の計4台を再突入の航法援助として数える（4台中3台の故障で1故障許容）"; }
    metadata <'RM-04'> rm_04 : RedundancyManagement about SSD_BLK_SYS_001::GNC_NAS { lru = "GPS 受信機"; installed = "3（OV-105）"; selection = "3：中間値選択（MVS）で1台の状態ベクトルを選ぶ／2：平均／1：その1台／0：最後の有効なデータを伝播（有効なデータから 18 秒を超えると航法の更新に使わない）"; detection = "古典的な RM でなく周期的な品質評価（QA）：QA1（自身の誤差の推定）・QA2（FSW の状態との差）・QA3（前回の状態との差）・QA4（ほかの受信機との差）"; tolerance = "資料に故障許容の語はない（QA で候補を出し入れする）"; }
    metadata <'RM-05'> rm_05 : RedundancyManagement about SSD_BLK_SYS_001::GNC_NAS { lru = "ADTA（エアデータ変換器）"; installed = "4"; selection = "4：各プローブ（側）の1組を選んで平均する（まず側ごと、次に全体）／3・2：故障した組のデータを止め、同じプローブのもう一方の ADTA、または他方のプローブの2台の ADTA のデータを使う／1：1つだけならそれを選ぶ（A8-111：G&C への取り込みは禁止）"; detection = "4台の圧力値を比べ、規定値（しきい値）内で一致するかを見る（まず側ごと）。プローブの展開状態とコムフォルトで使用可否を決める"; tolerance = "2台の故障で0故障許容（A8-1001 の言い方）。最後の1台には故障検出がない"; }
    metadata <'RM-06'> rm_06 : RedundancyManagement about SSD_BLK_SYS_001::GNC_NAS { lru = "エアデータプローブ"; installed = "2（左・右）"; selection = "2：左は ADTA 1・3、右は ADTA 2・4 に圧力を与える（値の選択は ADTA の RM で行う）／1：残るプローブの2台の ADTA のデータで動く"; detection = "RM がプローブの展開状態を調べて使用可否を決める"; tolerance = "各プローブの展開モータは2台（1台でも 30 秒で展開）。プローブは2本だけなので、4台の ADTA の計測は独立でない"; }
    metadata <'RM-07'> rm_07 : RedundancyManagement about SSD_BLK_SYS_001::GNC_NAS { lru = "MLS（MSBLS）"; installed = "3"; selection = "3：距離・方位角・仰角の中間値／2：平均／1：その値を表示用に渡す"; detection = "3台を比べて有意な差を見る。データ良好フラグは距離 0.329 nm・方位角 0.5°・仰角 0.4° の食い違いでリセットされる"; tolerance = "資料に故障許容の語はない（独立した3組）"; }
    metadata <'RM-08'> rm_08 : RedundancyManagement about SSD_BLK_SYS_001::GNC_NAS { lru = "電波高度計（RA）"; installed = "2"; selection = "2・1：選択の方法は資料に記載なし（航法の入力には使わず、乗員用）"; detection = "—（資料に記載なし）"; tolerance = "資料に故障許容の語はない（2台が独立で同時に動作できる）"; }
    metadata <'RM-09'> rm_09 : RedundancyManagement about SSD_BLK_SYS_001::GNC_FCS { lru = "RGA（オービタのレートジャイロ）"; installed = "4"; selection = "4：IMVS（交換可能な中間値。SP-504：2つの中間値の高いほう）／3：MVS／2：平均／1：そのまま／0：最後の値"; detection = "妥当性限界（I-load の許容差）の検査。4台すべてが動作しているときに働き、最初の故障を検出する。ほかにスピンモータ回転検出器（SMRD）による電源故障の検出"; tolerance = "フェイルオペレーショナル（上昇・再突入）。4台の LRU の系として1故障の後も1故障許容"; }
    metadata <'RM-10'> rm_10 : RedundancyManagement about SSD_BLK_SYS_001::GNC_FCS { lru = "AA（加速度計アセンブリ）"; installed = "4（各 AA に横・垂直の2軸）"; selection = "4：IMVS（SP-504：オービタの RGA と同じ4重の中間値の選択）／3：MVS／2：平均／1：そのまま／0：最後の値"; detection = "妥当性限界（I-load の許容差）の検査。4台すべてが動作しているときに働き、最初の故障を検出する"; tolerance = "フェイルオペレーショナル（上昇・再突入）。4台の LRU の系として1故障の後も1故障許容"; }
    metadata <'RM-11'> rm_11 : RedundancyManagement about SSD_BLK_SYS_001::GNC_FCS { lru = "SRB RGA"; installed = "4（各 SRB に2台）"; selection = "4：IMVS（SP-504：4台すべてのデータを比べる4重の中間値選択）／3以下：資料に記載なし"; detection = "妥当性限界の検査。4台すべてが動作しているときに働き、最初の故障を検出する。電源故障の検出はない"; tolerance = "資料に故障許容の語はない"; }
    metadata <'RM-12'> rm_12 : RedundancyManagement about SSD_BLK_SYS_001::GNC_CCD { lru = "RHC（回転ハンドコントローラ）"; installed = "3（CDR・PLT・後部）、各軸に3チャネル"; selection = "3：MVS／2：平均／1：そのまま／0：最後の値"; detection = "FDIR がチャネルの入力を I-load の許容差と比べる。1軸（ピッチ・ロール・ヨー）の故障でそのチャネルを無効とする"; tolerance = "3重冗長（1つの良い信号があれば働く）"; }
    metadata <'RM-13'> rm_13 : RedundancyManagement about SSD_BLK_SYS_001::GNC_CCD { lru = "THC（並進ハンドコントローラ）"; installed = "2（CDR・後部）、各方向に3接点"; selection = "3：2/3 の多数決／2：2/2 の一致／1：そのまま／0：最後の値"; detection = "6方向（±X・±Y・±Z）それぞれで3チャネルの不一致を検出する"; tolerance = "資料に故障許容の語はない（各方向に3接点）"; }
    metadata <'RM-14'> rm_14 : RedundancyManagement about SSD_BLK_SYS_001::GNC_CCD { lru = "RPTA（ラダーペダル変換器）"; installed = "2（CDR・PLT。ペダルは機械的に連結）、各3変換器"; selection = "3：MVS／2：平均／1：そのまま／0：最後の値"; detection = "妥当性限界の検査で3チャネルの故障を検出する"; tolerance = "資料に故障許容の語はない（3変換器）"; }
    metadata <'RM-15'> rm_15 : RedundancyManagement about SSD_BLK_SYS_001::GNC_CCD { lru = "SBTC（スピードブレーキ／推力コントローラ）"; installed = "2（CDR・PLT）、各3変換器"; selection = "3：MVS／2：平均／1：そのまま／0：最後の値"; detection = "チャネル間の妥当性限界の検査"; tolerance = "資料に故障許容の語はない（3変換器）"; }
    metadata <'RM-16'> rm_16 : RedundancyManagement about SSD_BLK_SYS_001::GNC_ACT { lru = "FCS チャネル（ASA とサーボ弁）"; installed = "4チャネル（ASA 4台。各舵面のアクチュエータに4サーボ弁）"; selection = "4：4つのサーボ弁の力の総和（二次の力総和アクチュエータ）。逆らう入力は押し負ける／3：残る3チャネルの力の総和／2：残る2チャネル（両方を OVERRIDE にする）／1：1チャネルの制御は認定されていない"; detection = "サーボ弁ごとの二次差圧（SEC ΔP）が 2,025 psi 以上の状態が 120 ms を超える。均等化ループが不要な切り離しを防ぐ。1400 psi 以上の力比べは手動バイパスの対象（A8-107G）"; tolerance = "最初の故障の後は1故障許容（フェイルセーフ）。2つを超える故障では再突入を飛べない"; }
    metadata <'RM-17'> rm_17 : RedundancyManagement about SSD_BLK_SYS_001::GNC_ACT { lru = "舵面の位置フィードバック"; installed = "各舵面に4個（FCS チャネルごとに1個）"; selection = "3：MVS（チャネル 1・2・3 の入力を使い、チャネル 4 は予備）／2：平均／1：そのまま／0：最後の値／ボディフラップ：4チャネルの QMVS"; detection = "舵面ごとの FDIR がフィードバックを I-load の許容差と比べる（最初の故障で終わる）"; tolerance = "4台の LRU の系として1故障の後も1故障許容。同じ舵面の2つの故障で1故障許容、3つの故障でフェイルクリティカル"; }
    metadata <'RM-18'> rm_18 : RedundancyManagement about SSD_BLK_SYS_001::GNC_ACT { lru = "ATVC（上昇推力方向制御装置）"; installed = "4（各 ATVC に SSME ドライバ6・SRB ドライバ4）"; selection = "4：各アクチュエータの4つのサーボ弁の力の総和による多数決／3：残る3チャネル／2：2つめの故障も切り離され、2チャネルが残る"; detection = "誤った指令が所定の時間を超えて続くと、そのサーボ弁の二次の力総和アクチュエータの差圧を対応する ATVC が検知する（二次差圧の変換器が ATVC の故障検出を与える）"; tolerance = "資料に故障許容の語はない（1つの誤った指令は力の総和で動きに影響しない）"; }
    metadata <'RM-19'> rm_19 : RedundancyManagement about SSD_BLK_SYS_001::GNC_ACT { lru = "ボディフラップ・ラダー／スピードブレーキの駆動"; installed = "ボディフラップ：3チャネル（ASA 3台・油圧3系統）。ラダー・スピードブレーキ：サーボ弁4・油圧モータ各3台"; selection = "ボディフラップ 3：FCS チャネル 1・2・3 の ASA がそれぞれ1系統の油圧のソレノイド弁を指令する／ボディフラップ 2：油圧系が1つ故障すれば残る2台の油圧モータで動かす／ラダー・スピードブレーキ：油圧モータ3台のうち2台が故障しても設計速度の約半分で動く"; detection = "ボディフラップにはチャネルの切り離し機能がない（ソレノイドを使うのでバイパスするポートがない）。ラダー・スピードブレーキのサーボ弁は二次差圧で検出する"; tolerance = "ボディフラップ：3チャネル中1つの故障で1故障許容、2つの故障で0故障許容"; }
    metadata <'RM-20'> rm_20 : RedundancyManagement about SSD_BLK_SYS_001::GNC_GNS { lru = "ストリング（GPC と FF・FA MDM）とセンサの割当て"; installed = "4ストリング（FC バス8本。ストリング1は FC 1・5 と MDM FF1・FA1）"; selection = "4：GPC 4台がそれぞれ別のストリングを指令し、すべての GNC GPC が4ストリングのデータの写しを得る／3：1ストリングの喪失：通常の運用を続けられる／2：2つめのストリングの喪失：安全に帰還できる"; detection = "GPC・MDM の故障で届かない機器のデータはコムフォルト（表示は M）となる"; tolerance = "1ストリングの全部または一部を失っても残りのストリングで全アビオニクス機能を保つ。2つめのストリングの喪失でも安全に帰還できる"; }
    // ---- 活動（行動・判断・合流と流れ）
    action def SensorRmFdir {
        doc /* 図198 センサの冗長管理による故障処置 活動図：センサの冗長管理による故障の検出・特定・再構成とジレンマの解消（IMU・TACAN・ADTA・RGA/AA に共通の流れ） */
        attribute faultIsolated : ScalarValues::Boolean { doc /* ガード：特定できた */ }
        attribute nextPlsCriteriaMet : ScalarValues::Boolean { doc /* ガード：達した */ }
        action AC_RF_01 { doc /* AC-RF-01 候補の機器（deselect・コムフォルト・故障判定のないもの）から選択フィルタで値を選ぶ（3台：中間値選択、2台：平均または前の選択、1台：そのまま。RGA・AA は4台で IMVS） */ }
        action AC_RF_02 { doc /* AC-RF-02 冗長な出力どうしを比べ、I-load のしきい値を超える食い違いを検出する（IMU：ずれ・速度誤差、TACAN：距離・方位、ADTA：圧力、RGA・AA：妥当性限界） */ }
        decide DC_RF_01;
            if faultIsolated then AC_RF_03;
            if not faultIsolated then AC_RF_04;
        action AC_RF_04 { doc /* AC-RF-04 ジレンマを宣言して乗員に知らせる（IMU：F7 の IMU 灯、ADTA：赤の AIR DATA 灯と BACKUP C/W ALARM、表示の「?」） */ }
        action AC_RF_05 { doc /* AC-RF-05 MCC が地上のレーダ追跡のデータと比べて故障した機器を特定し（A8-52）、乗員が deselect してジレンマを解く（通信が無ければ IMU は番号の小さいほうを deselect、TACAN・ADTA はキューカードによる） */ }
        merge MG_RF_01;
        action AC_RF_06 { doc /* AC-RF-06 残りの台数で選択を続ける（PASS の RGA・AA・舵面の FDIR は最初の故障で終わるので、以後は乗員が選択フィルタを管理する。良い ADTA が1台だけなら G&C への取り込みを禁止する） */ }
        decide DC_RF_02;
            if not nextPlsCriteriaMet then AC_RF_07;
            if nextPlsCriteriaMet then AC_RF_08;
        action AC_RF_07 { doc /* AC-RF-07 飛行を続ける（A8-1001 の故障数に応じて公称の終了または MDF）。一時的な故障は時間があれば回復を試み、軌道離脱の 70 分前の IMU 間アラインメントで IMU の RM のしきい値をリセットし、FCS 点検で不合格のセンサは再突入に向けて deselect する */ }
        action AC_RF_03 { doc /* AC-RF-03 RM が故障した機器を自動で外し（deselect）、選択フィルタを格下げする。SM ALERT と故障メッセージ（RM FAIL IMU・RM FAIL RGA・RM FAIL ACC など）で知らせる */ }
        action AC_RF_08 { doc /* AC-RF-08 次の PLS（または初日の PLS）での早期の終了を決める（例：IMU 2台の故障、RGA 3台の故障、ADTA 3台の故障） */ }
        first start then AC_RF_01;
        first AC_RF_01 then AC_RF_02;
        first AC_RF_02 then DC_RF_01;
        first AC_RF_03 then MG_RF_01;
        first AC_RF_04 then AC_RF_05;
        first AC_RF_05 then MG_RF_01;
        first MG_RF_01 then AC_RF_06;
        first AC_RF_06 then DC_RF_02;
        first AC_RF_07 then done;
        first AC_RF_08 then done;
    }
    action def FcsChannelFailureResponse {
        doc /* 図199 FCS チャネルの故障処置 活動図：FCS チャネル（ASA・サーボ弁）の故障の処置 */
        attribute gpcOrMdmLost : ScalarValues::Boolean { doc /* ガード：はい */ }
        attribute twoGoodChannelsLeft : ScalarValues::Boolean { doc /* ガード：はい */ }
        action AC_FC_01 { doc /* AC-FC-01 ASA（上昇中は ATVC も）がサーボ弁ごとの二次差圧を監視し、2,025 psi 以上が 120 ms を超えたサーボ弁をバイパスする（FCS CHANNEL スイッチが AUTO のとき） */ }
        action AC_FC_02 { doc /* AC-FC-02 MASTER ALARM、F7 の FCS CHANNEL 警報灯、「FCS CH X」のメッセージ、GNC SYS SUMM 1 と SPEC 53 の下向き矢印で乗員に知らせる */ }
        decide DC_FC_01;
            if not gpcOrMdmLost then AC_FC_03;
            if gpcOrMdmLost then AC_FC_04;
        action AC_FC_03 { doc /* AC-FC-03 サーボ弁・ASA の単一の故障では操作をせず、残りのチャネルの力の総和で制御を続ける（バイパスしないポートは MCC の指示で SPEC 53 から手動でバイパスする。OPS 3・6 では二次差圧 1400 psi 以上の力比べが対象） */ }
        merge MG_FC_01;
        action AC_FC_05 { doc /* AC-FC-05 各アクチュエータに残る良いチャネルと位置フィードバックの数を確かめる（常に良い指令2つ・良いフィードバック1つ以上を保つ） */ }
        decide DC_FC_02;
            if not twoGoodChannelsLeft then AC_FC_06;
            if twoGoodChannelsLeft then AC_FC_07;
        action AC_FC_06 { doc /* AC-FC-06 一時的な故障なら FCS CHANNEL スイッチを OVERRIDE にして AUTO に戻してリセットし、公称の終了まで飛行を続ける（1チャネルの故障は任務期間に影響なし） */ }
        action AC_FC_04 { doc /* AC-FC-04 対応する FCS チャネルを OFF にして全ポートをバイパスさせ、位置フィードバックを deselect する。再割当ての後は各 GPC のチャネルの数を等しくする（A8-107A〜C） */ }
        action AC_FC_07 { doc /* AC-FC-07 残る良いチャネルを OVERRIDE にして自動のバイパスを止める（スイッチの操作は2秒あける。次の故障は1対1の力比べとなり、不良チャネルを切って BFS をエンゲージする時間を得る） */ }
        action AC_FC_08 { doc /* AC-FC-08 同じ舵面の2チャネルの故障として、次の PLS（または初日の PLS）での着陸を決める（指令チャネル3つの喪失は認定されていない） */ }
        first start then AC_FC_01;
        first AC_FC_01 then AC_FC_02;
        first AC_FC_02 then DC_FC_01;
        first AC_FC_03 then MG_FC_01;
        first AC_FC_04 then MG_FC_01;
        first MG_FC_01 then AC_FC_05;
        first AC_FC_05 then DC_FC_02;
        first AC_FC_06 then done;
        first AC_FC_07 then AC_FC_08;
        first AC_FC_08 then done;
    }
}
