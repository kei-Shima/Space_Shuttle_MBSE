// SysML v2 テキスト：内部ブロック図（機器の接続と、流れる物・量と単位）
// SSD-BEH-ORB-008 残りの系の内部ブロックと振る舞い定義書（MECH・C/W・PLS・STR・CREW の機器の流れ、降着装置・ベントドア・警報・保持ラッチ・脱出の状態、構造の限界の判断） の表から生成（lib/build_docs_bw.py・rev_bw/bwdata.py、部品は lib/ibdmodel2.py・lib/behdocs.py）。値の根拠の頁は SSD-BEH-ORB-008 にある。
package SSD_BEH_ORB_008 {
    doc /* SSD-BEH-ORB-008 残りの系の内部ブロックと振る舞い定義書（MECH・C/W・PLS・STR・CREW の機器の流れ、降着装置・ベントドア・警報・保持ラッチ・脱出の状態、構造の限界の判断）。図214・図215・図216・図217・図218 と同じ部品・ポート・流れ・値。機器は構造モデル（SSD-BLK-SYS-001）の機能ブロックの部品の中に置き、流れは IF を詳しくする（#refinement）。状態機械は各系の下位の機能ブロックの部品の定義を特化して持たせる。 */
    private import SSD_BLK_SYS_001::*;
    private import ModelingMetadata::*;
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    private import SSD_BEH_ORB_005::PhaseMode;
    // ---- 流れる物（既存の種別を特化し、量を属性に持つ）とポート定義
    item def MechHydraulicPower :> HydraulicFluid {
        doc /* 機械系の油圧（系1の展開用、系1・2・3のブレーキ・NWS 用）（油圧） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute regulatedPressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
    }
    port def MechHydraulicPowerPort :> HydraulicPort { out item :>> hydraulicFluid : MechHydraulicPower; }
    item def MechPower :> ElectricPower {
        doc /* 機械系の電力（MCA を通る交流モータ・リミットスイッチの電力、主直流母線）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def MechPowerPort :> PowerPort { out item :>> electricPower : MechPower; }
    item def MechCommand :> DataCommand {
        doc /* 機械系の指令（MDM を通るモータの入切、押しボタン・GNC シーケンスの指令）（データ・指令） */
        attribute interval : DurationValue[0..*] { doc /* 時間（資料の単位 s） */ }
    }
    port def MechCommandPort :> DataPort { out item :>> dataCommand : MechCommand; }
    item def MechLoad :> StructuralLoad {
        doc /* 機械の駆動力・荷重（トルクシャフト・リンク、ヒンジ・脚の反力）と駆動時間（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
        attribute driveTime : DurationValue[0..*] { doc /* 時間（資料の単位 s） */ }
    }
    port def MechLoadPort :> LoadPort { out item :>> structuralLoad : MechLoad; }
    item def MechSensorSignal :> DataCommand {
        doc /* 接地・車輪速度・位置のセンサ信号（WOW・WONG、車輪速度、リミットスイッチ）（データ・指令） */
        attribute delay : DurationValue[0..*] { doc /* 時間（資料の単位 s） */ }
    }
    port def MechSensorSignalPort :> DataPort { out item :>> dataCommand : MechSensorSignal; }
    item def MechPyroSignal :> DataCommand {
        doc /* 降着装置の火工品の信号（PIC から NSI へ、アップロックの解除）（データ・指令） */
        attribute delay : DurationValue[0..*] { doc /* 時間（資料の単位 s） */ }
    }
    port def MechPyroSignalPort :> DataPort { out item :>> dataCommand : MechPyroSignal; }
    item def CwSensorSignal :> DataCommand {
        doc /* C/W の入力信号（変換器・信号調整器・MDM・GPC 入出力からのアナログ 0〜5 V DC または離散、80 Hz で標本化）（データ・指令） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
        attribute samplingRate : FrequencyValue[0..*] { doc /* 周波数（資料の単位 Hz） */ }
    }
    port def CwSensorSignalPort :> DataPort { out item :>> dataCommand : CwSensorSignal; }
    item def CwLimitSetting :> DataCommand {
        doc /* 一次 C/W の限界値・有効/抑止・メモリ読出しの設定（R13U・C3 のスイッチ、0.00〜5.00 V）（データ・指令） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def CwLimitSettingPort :> DataPort { out item :>> dataCommand : CwLimitSetting; }
    item def CwAlarmDiscrete :> DataCommand {
        doc /* 警報の離散信号（一次の限界外れ、MDM 経由の12離散、SM アラートの離散、トーン・MA 灯・F7 灯の作動）（データ・指令） */
    }
    port def CwAlarmDiscretePort :> DataPort { out item :>> dataCommand : CwAlarmDiscrete; }
    item def CwTone :> DataCommand {
        doc /* 警報音（サイレン・クラクソン・C&W トーン・アラートトーン）の信号（データ・指令） */
    }
    port def CwTonePort :> DataPort { out item :>> dataCommand : CwTone; }
    item def CwFaultMessage :> DataCommand {
        doc /* DPS の故障メッセージと SPEC 60 の限界・フィルタ値・有効/抑止のデータ（データ・指令） */
    }
    port def CwFaultMessagePort :> DataPort { out item :>> dataCommand : CwFaultMessage; }
    item def CwPower :> ElectricPower {
        doc /* C/W 電子ユニットの電源（ESS 1BC・ESS 2CA から）（電力） */
    }
    port def CwPowerPort :> PowerPort { out item :>> electricPower : CwPower; }
    item def CwCabinAir :> Fluid {
        doc /* 煙検知器・ΔP/Δt センサが測る客室の空気（煙濃度・客室圧の変化率 psi/min）（推進薬・流体） */
    }
    port def CwCabinAirPort :> FluidPort { out item :>> fluid : CwCabinAir; }
    item def PlsPower :> ElectricPower {
        doc /* PLS の電力（RMS の 28 V DC、ODS の母線電力、ラッチ・MPM の電動機の交流電力）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def PlsPowerPort :> PowerPort { out item :>> electricPower : PlsPower; }
    item def PlsData :> DataCommand {
        doc /* PLS のデータ・指令（ハンドコントローラの入力、MCIU と SM GPC のやり取り、スイッチ指令、状態灯・タルクバック・DISP/SPEC の表示）（データ・指令） */
    }
    port def PlsDataPort :> DataPort { out item :>> dataCommand : PlsData; }
    item def PlsLoad :> StructuralLoad {
        doc /* PLS の構造の荷重（打上げ・突入の荷重、ラッチが受けるペイロードの荷重、関節の駆動トルク）（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
    }
    port def PlsLoadPort :> LoadPort { out item :>> structuralLoad : PlsLoad; }
    item def PlsVideo :> DataCommand {
        doc /* CCTV・ドッキング用カメラの映像（データ・指令） */
    }
    port def PlsVideoPort :> DataPort { out item :>> dataCommand : PlsVideo; }
    item def PlsPyro :> DataCommand {
        doc /* 火工品の指令と作動（ギロチン、圧力カートリッジ、ピロボルト）（データ・指令） */
    }
    port def PlsPyroPort :> DataPort { out item :>> dataCommand : PlsPyro; }
    item def EvaManualDrive :> StructuralLoad {
        doc /* EVA 乗員の手動の駆動（PRLA の開閉の手動機構）（構造・荷重） */
    }
    port def EvaManualDrivePort :> LoadPort { out item :>> structuralLoad : EvaManualDrive; }
    item def AirframeLoad :> StructuralLoad {
        doc /* 構造の荷重（結合点・ヒンジ・継手・取付け金具が伝える力）（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
    }
    port def AirframeLoadPort :> LoadPort { out item :>> structuralLoad : AirframeLoad; }
    item def SsmeThrustLoad :> StructuralLoad {
        doc /* SSME の推力が推力構造から後胴・ET 結合点へ伝わる荷重（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
    }
    port def SsmeThrustLoadPort :> LoadPort { out item :>> structuralLoad : SsmeThrustLoad; }
    item def CabinPressureLoad :> StructuralLoad {
        doc /* 乗員室の与圧が圧力殻・窓・ハッチに与える圧力の荷重（構造・荷重） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def CabinPressureLoadPort :> LoadPort { out item :>> structuralLoad : CabinPressureLoad; }
    item def EntryHeatInput :> Heat {
        doc /* 再突入の熱（TPS を通って外板へ入る熱）（熱） */
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def EntryHeatInputPort :> HeatPort { out item :>> heat : EntryHeatInput; }
    item def GroundPurgeAir :> Fluid {
        doc /* 着陸後の地上の空調パージ装置の冷却空気（推進薬・流体） */
    }
    port def GroundPurgeAirPort :> FluidPort { out item :>> fluid : GroundPurgeAir; }
    item def StructuralLimitDirective :> DataCommand {
        doc /* 構造運用管理が出す運用の指示（客室圧の低下、姿勢の管理）（データ・指令） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def StructuralLimitDirectivePort :> DataPort { out item :>> dataCommand : StructuralLimitDirective; }
    item def CrewWater :> Fluid {
        doc /* 乗員用の水（ギャレーの補助ポートの常温〜温水）（推進薬・流体） */
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def CrewWaterPort :> FluidPort { out item :>> fluid : CrewWater; }
    item def EscapeOxygen :> Fluid {
        doc /* 脱出・救急用の酸素（ACES の O2 マニホールド、非常用酸素ボトル、蘇生器）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
    }
    port def EscapeOxygenPort :> FluidPort { out item :>> fluid : EscapeOxygen; }
    item def EscapePyroImpulse :> DataCommand {
        doc /* 脱出の火工品の起動（T ハンドルからの機械式のエネルギー伝達。オービタの電力を使わない）（データ・指令） */
    }
    port def EscapePyroImpulsePort :> DataPort { out item :>> dataCommand : EscapePyroImpulse; }
    item def CrewDirective :> DataCommand {
        doc /* 乗員系運用管理の指示・相談（ベイルアウトの手順の指示、航空医官との診断・治療の相談）（データ・指令） */
    }
    port def CrewDirectivePort :> DataPort { out item :>> dataCommand : CrewDirective; }
    item def EscapeLoad :> StructuralLoad {
        doc /* 脱出時の荷重（ハッチ・窓の結合部の破断、ブライドルの引張り、降下器の荷重）（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
    }
    port def EscapeLoadPort :> LoadPort { out item :>> structuralLoad : EscapeLoad; }
    item def CrewStowedMass :> StructuralLoad {
        doc /* 収納する装備の質量（ロッカーに収める衛生用品・医療キット）（構造・荷重） */
        attribute mass : MassValue[0..*] { doc /* 質量（資料の単位 lb） */ }
    }
    port def CrewStowedMassPort :> LoadPort { out item :>> structuralLoad : CrewStowedMass; }
    item def EcgSignal :> DataCommand {
        doc /* 心電図（ECG）の信号（OBS の信号調整器の出力）（データ・指令） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def EcgSignalPort :> DataPort { out item :>> dataCommand : EcgSignal; }
    item def CrewLightingPower :> ElectricPower {
        doc /* 照明の電力（非常照明の必須母線、ペイロードベイ投光器の遠隔電力制御器）（電力） */
        attribute current : ElectricCurrentValue[0..*] { doc /* 電流（資料の単位 A） */ }
    }
    port def CrewLightingPowerPort :> PowerPort { out item :>> electricPower : CrewLightingPower; }
    // ---- 図214 MECH 内部ブロック図：機器
    part def <'EQ-MECH-01'> MotorControlAssembly {
        doc /* MCA（モータ制御組立）（機能ブロック SSD-FD-MECH-ACT-001） */
        port i_FL_MECH_02 : ~MechPowerPort;
        port i_FL_MECH_03 : ~MechCommandPort;
        port o_FL_MECH_04 : MechPowerPort;
        port o_FL_MECH_05 : MechPowerPort;
        port o_FL_MECH_06 : MechPowerPort;
        port o_FL_MECH_07 : MechPowerPort;
    }
    part def <'EQ-MECH-02'> McaLogicSwitches {
        doc /* panel MA73C の MCA LOGIC スイッチ・遮断器（機能ブロック SSD-FD-MECH-ACT-001） */
        port i_FL_MECH_01 : ~MechPowerPort;
        port o_FL_MECH_02 : MechPowerPort;
    }
    part def <'EQ-MECH-03'> DoorDrivePdu :> SSD_ALC_SYS_001::Physical::PHY_MECH_01 {
        doc /* PLBD のドア駆動 PDU（扉ごとに1基）（機能ブロック SSD-FD-MECH-ACT-001、機器 PHY-MECH-01） */
        port i_FL_MECH_04 : ~MechPowerPort;
        port o_FL_MECH_08 : MechLoadPort;
    }
    part def <'EQ-MECH-04'> LatchGangPdu :> SSD_ALC_SYS_001::Physical::PHY_MECH_01 {
        doc /* PLBD のラッチギャング PDU（センターライン4・隔壁4）（機能ブロック SSD-FD-MECH-ACT-001、機器 PHY-MECH-01） */
        port i_FL_MECH_05 : ~MechPowerPort;
        port o_FL_MECH_09 : MechLoadPort;
        port o_FL_MECH_10 : MechLoadPort;
    }
    part def <'EQ-MECH-05'> VentDoorPdu :> SSD_ALC_SYS_001::Physical::PHY_MECH_03 {
        doc /* ベント扉の PDU（扉ごとに1基）（機能ブロック SSD-FD-MECH-ACT-001、機器 PHY-MECH-03） */
        port i_FL_MECH_06 : ~MechPowerPort;
        port o_FL_MECH_16 : MechLoadPort;
    }
    part def <'EQ-MECH-06'> EtDoorPdus :> SSD_ALC_SYS_001::Physical::PHY_MECH_02 {
        doc /* ET 扉の PDU 群（ドア駆動2・アップロックラッチ2・センターラインラッチ2）（機能ブロック SSD-FD-MECH-ACT-001、機器 PHY-MECH-02） */
        port i_FL_MECH_07 : ~MechPowerPort;
        port o_FL_MECH_17 : MechLoadPort;
        port o_FL_MECH_18 : MechLoadPort;
        port o_FL_MECH_19 : MechLoadPort;
    }
    part def <'EQ-MECH-07'> PayloadBayDoor :> SSD_ALC_SYS_001::Physical::PHY_MECH_01 {
        doc /* ペイロードベイドア（左舷・右舷、各5区分）（機能ブロック SSD-FD-MECH-PLB-001、機器 PHY-MECH-01） */
        port i_FL_MECH_11 : ~MechLoadPort;
        port o_FL_MECH_12 : MechLoadPort;
    }
    part def <'EQ-MECH-08'> CenterlineLatch :> SSD_ALC_SYS_001::Physical::PHY_MECH_01 {
        doc /* センターラインラッチ（16個・4ギャング）（機能ブロック SSD-FD-MECH-PLB-001、機器 PHY-MECH-01） */
        port i_FL_MECH_09 : ~MechLoadPort;
    }
    part def <'EQ-MECH-09'> BulkheadLatch :> SSD_ALC_SYS_001::Physical::PHY_MECH_01 {
        doc /* 前後の隔壁ラッチ（各8個・4ギャング）（機能ブロック SSD-FD-MECH-PLB-001、機器 PHY-MECH-01） */
        port i_FL_MECH_10 : ~MechLoadPort;
        port o_FL_MECH_14 : MechLoadPort;
    }
    part def <'EQ-MECH-10'> DoorHinge :> SSD_ALC_SYS_001::Physical::PHY_MECH_01 {
        doc /* ヒンジ（固定5・浮動8、扉ごと）（機能ブロック SSD-FD-MECH-PLB-001、機器 PHY-MECH-01） */
        port i_FL_MECH_12 : ~MechLoadPort;
        port o_FL_MECH_13 : MechLoadPort;
    }
    part def <'EQ-MECH-11'> DoorDriveLinkage :> SSD_ALC_SYS_001::Physical::PHY_MECH_01 {
        doc /* ドア駆動のトルクシャフト・回転アクチュエータ・プッシュプルロッド（機能ブロック SSD-FD-MECH-PLB-001、機器 PHY-MECH-01） */
        port i_FL_MECH_08 : ~MechLoadPort;
        port o_FL_MECH_11 : MechLoadPort;
        port i_FL_MECH_15 : ~MechLoadPort;
    }
    part def <'EQ-MECH-12'> VentDoor :> SSD_ALC_SYS_001::Physical::PHY_MECH_03 {
        doc /* ベント扉（左右各7）（機能ブロック SSD-FD-MECH-VNT-001、機器 PHY-MECH-03） */
        port i_FL_MECH_16 : ~MechLoadPort;
        port o_FL_MECH_22 : MechLoadPort;
        port i_FL_MECH_24 : ~MechCommandPort;
    }
    part def <'EQ-MECH-13'> EtUmbilicalDoor :> SSD_ALC_SYS_001::Physical::PHY_MECH_02 {
        doc /* ET アンビリカル扉（左 LH2・右 LO2）（機能ブロック SSD-FD-MECH-VNT-001、機器 PHY-MECH-02） */
        port i_FL_MECH_17 : ~MechLoadPort;
        port i_FL_MECH_20 : ~MechLoadPort;
        port i_FL_MECH_21 : ~MechLoadPort;
    }
    part def <'EQ-MECH-14'> EtCenterlineLatch :> SSD_ALC_SYS_001::Physical::PHY_MECH_02 {
        doc /* ET 扉のセンターラインラッチ（上昇中に扉を開いたまま保つ）（機能ブロック SSD-FD-MECH-VNT-001、機器 PHY-MECH-02） */
        port i_FL_MECH_18 : ~MechLoadPort;
        port o_FL_MECH_20 : MechLoadPort;
    }
    part def <'EQ-MECH-15'> EtUplockLatch :> SSD_ALC_SYS_001::Physical::PHY_MECH_02 {
        doc /* ET 扉のアップロックラッチ（各空洞3個）（機能ブロック SSD-FD-MECH-VNT-001、機器 PHY-MECH-02） */
        port i_FL_MECH_19 : ~MechLoadPort;
        port o_FL_MECH_21 : MechLoadPort;
    }
    part def <'EQ-MECH-16'> NoseLandingGear :> SSD_ALC_SYS_001::Physical::PHY_MECH_04 {
        doc /* 前脚（緩衝支柱・車輪2組・扉2枚）（機能ブロック SSD-FD-MECH-LDG-001、機器 PHY-MECH-04） */
        port i_FL_MECH_28 : ~MechPyroSignalPort;
        port i_FL_MECH_30 : ~MechLoadPort;
        port o_FL_MECH_32 : MechLoadPort;
    }
    part def <'EQ-MECH-17'> MainLandingGear :> SSD_ALC_SYS_001::Physical::PHY_MECH_05 {
        doc /* 主脚（緩衝支柱・車輪2組・扉各1枚）（機能ブロック SSD-FD-MECH-LDG-001、機器 PHY-MECH-05） */
        port i_FL_MECH_29 : ~MechLoadPort;
        port o_FL_MECH_31 : MechLoadPort;
    }
    part def <'EQ-MECH-18'> UplockActuator :> SSD_ALC_SYS_001::Physical::PHY_MECH_04 {
        doc /* アップロックフックとアクチュエータ・脚のストラットアクチュエータ（油圧系1）（機能ブロック SSD-FD-MECH-LDG-001、機器 PHY-MECH-04） */
        port i_FL_MECH_25 : ~MechCommandPort;
        port i_FL_MECH_26 : ~MechHydraulicPowerPort;
        port i_FL_MECH_27 : ~MechPyroSignalPort;
        port o_FL_MECH_29 : MechLoadPort;
        port o_FL_MECH_30 : MechLoadPort;
    }
    part def <'EQ-MECH-19'> UplockPyroBackup :> SSD_ALC_SYS_001::Physical::PHY_MECH_04 {
        doc /* アップロックの火工品バックアップ（PIC・冗長な NSI 2系統）（機能ブロック SSD-FD-MECH-LDG-001、機器 PHY-MECH-04） */
        port o_FL_MECH_27 : MechPyroSignalPort;
        port o_FL_MECH_28 : MechPyroSignalPort;
    }
    part def <'EQ-MECH-20'> WeightOnWheelsSensors :> SSD_ALC_SYS_001::Physical::PHY_MECH_05 {
        doc /* WOW／WONG の近接センサと近接センサ電子箱（電子機器ベイ1・2）（機能ブロック SSD-FD-MECH-LDG-001、機器 PHY-MECH-05） */
        port o_FL_MECH_33 : MechSensorSignalPort;
        port o_FL_MECH_34 : MechSensorSignalPort;
        port o_FL_MECH_35 : MechSensorSignalPort;
    }
    part def <'EQ-MECH-21'> MainGearBrakes :> SSD_ALC_SYS_001::Physical::PHY_MECH_05 {
        doc /* 主脚のディスクブレーキとブレーキ／スキッド制御弁（4輪・8弁）（機能ブロック SSD-FD-MECH-DEC-001、機器 PHY-MECH-05） */
        port i_FL_MECH_37 : ~MechHydraulicPowerPort;
        port i_FL_MECH_41 : ~MechCommandPort;
    }
    part def <'EQ-MECH-22'> BrakeSkidControlBox :> SSD_ALC_SYS_001::Physical::PHY_MECH_05 {
        doc /* ブレーキ／アンチスキッド制御箱 A・B（機能ブロック SSD-FD-MECH-DEC-001、機器 PHY-MECH-05） */
        port i_FL_MECH_33 : ~MechSensorSignalPort;
        port i_FL_MECH_39 : ~MechPowerPort;
        port i_FL_MECH_40 : ~MechSensorSignalPort;
        port o_FL_MECH_41 : MechCommandPort;
    }
    part def <'EQ-MECH-23'> WheelSpeedSensor :> SSD_ALC_SYS_001::Physical::PHY_MECH_05 {
        doc /* 車輪速度センサ（各車輪2個）（機能ブロック SSD-FD-MECH-DEC-001、機器 PHY-MECH-05） */
        port o_FL_MECH_40 : MechSensorSignalPort;
    }
    part def <'EQ-MECH-24'> BrakeIsolationValve :> SSD_ALC_SYS_001::Physical::PHY_MECH_05 {
        doc /* ブレーキ隔離弁1・2・3（機能ブロック SSD-FD-MECH-DEC-001、機器 PHY-MECH-05） */
        port i_FL_MECH_34 : ~MechSensorSignalPort;
        port i_FL_MECH_36 : ~MechHydraulicPowerPort;
        port o_FL_MECH_37 : MechHydraulicPowerPort;
    }
    part def <'EQ-MECH-25'> NoseWheelSteering :> SSD_ALC_SYS_001::Physical::PHY_MECH_04 {
        doc /* 前輪操向アクチュエータ・NWS 切替弁・操向制御箱（機能ブロック SSD-FD-MECH-DEC-001、機器 PHY-MECH-04） */
        port i_FL_MECH_35 : ~MechSensorSignalPort;
        port i_FL_MECH_38 : ~MechHydraulicPowerPort;
    }
    part def <'EQ-MECH-26'> DragChute :> SSD_ALC_SYS_001::Physical::PHY_MECH_06 {
        doc /* ドラッグシュート（収納部の扉・迫撃砲・パイロットシュート9 ft・主傘40 ft）（機能ブロック SSD-FD-MECH-DEC-001、機器 PHY-MECH-06） */
        port i_FL_MECH_42 : ~MechCommandPort;
    }
    part def <'EQ-MECH-27'> LandingGearButtons {
        doc /* LANDING GEAR ARM／DN の押しボタン（panel F6・F8）（機能ブロック SSD-FD-MECH-OPS-001） */
        port o_FL_MECH_25 : MechCommandPort;
    }
    part def <'EQ-MECH-28'> DragChuteButtons :> SSD_ALC_SYS_001::Physical::PHY_MECH_06 {
        doc /* ドラッグシュートの ARM・DPY・JETT 押しボタン（CDR・PLT の HUD の両側）（機能ブロック SSD-FD-MECH-OPS-001、機器 PHY-MECH-06） */
        port o_FL_MECH_42 : MechCommandPort;
    }
    part def <'EQ-MECH-29'> VentDoorSequence {
        doc /* GNC のベント扉シーケンス（SPEC 51 OVERRIDE）（機能ブロック SSD-FD-MECH-OPS-001） */
        port i_FL_MECH_23 : ~MechCommandPort;
        port o_FL_MECH_24 : MechCommandPort;
    }
    // ---- 図214 MECH 内部ブロック図：接続（MechInterconnection は MECH を特化）
    part def MechInterconnection :> MECH {
        doc /* 機械系（MECH）（降着装置・制動・ペイロードベイドア・ベントドアの駆動）の内部ブロック図（図214）。基の機能ブロック SSD-FD-MECH-001。 */
        part redefines act {
            part motorControlAssembly : MotorControlAssembly;
            part mcaLogicSwitches : McaLogicSwitches;
            part doorDrivePdu[2] : DoorDrivePdu;
            part latchGangPdu[8] : LatchGangPdu;
            part ventDoorPdu[14] : VentDoorPdu;
            part etDoorPdus[6] : EtDoorPdus;
        }
        part redefines plb {
            part payloadBayDoor[2] : PayloadBayDoor;
            part centerlineLatch[16] : CenterlineLatch;
            part bulkheadLatch[16] : BulkheadLatch;
            part doorHinge[26] : DoorHinge;
            part doorDriveLinkage[2] : DoorDriveLinkage;
        }
        part redefines vnt {
            part ventDoor[14] : VentDoor;
            part etUmbilicalDoor[2] : EtUmbilicalDoor;
            part etCenterlineLatch[2] : EtCenterlineLatch;
            part etUplockLatch[6] : EtUplockLatch;
        }
        part redefines ldg {
            part noseLandingGear : NoseLandingGear;
            part mainLandingGear[2] : MainLandingGear;
            part uplockActuator[3] : UplockActuator;
            part uplockPyroBackup[3] : UplockPyroBackup;
            part weightOnWheelsSensors : WeightOnWheelsSensors;
        }
        part redefines dec {
            part mainGearBrakes[4] : MainGearBrakes;
            part brakeSkidControlBox[2] : BrakeSkidControlBox;
            part wheelSpeedSensor[8] : WheelSpeedSensor;
            part brakeIsolationValve[3] : BrakeIsolationValve;
            part noseWheelSteering : NoseWheelSteering;
            part dragChute : DragChute;
        }
        part redefines ops {
            part landingGearButtons[2] : LandingGearButtons;
            part dragChuteButtons[2] : DragChuteButtons;
            part ventDoorSequence : VentDoorSequence;
        }
        port b_FL_MECH_01 : ~MechPowerPort { doc /* 枠の外の相手 EB-MECH-01（EPS：直流配電（panel MA73C の MCA LOGIC への給電）） */ }
        port b_FL_MECH_03 : ~MechCommandPort { doc /* 枠の外の相手 EB-MECH-03（DPS：GPC・項目入力・MDM（MCA へのモータ入切の指令）） */ }
        port b_FL_MECH_13 : MechLoadPort { doc /* 枠の外の相手 EB-MECH-07（構造（STR）：中胴（扉の13のヒンジ）） */ }
        port b_FL_MECH_14 : MechLoadPort { doc /* 枠の外の相手 EB-MECH-08（構造（STR）：中胴の前後の隔壁（隔壁ラッチのローラ）） */ }
        port b_FL_MECH_15 : ~MechLoadPort { doc /* 枠の外の相手 EB-MECH-11（非常時の手順（EVA）：PLBD の駆動系の切断・切り離し） */ }
        port b_FL_MECH_22 : MechLoadPort { doc /* 枠の外の相手 EB-MECH-10（構造（STR）：胴体のベント口（左右各7）） */ }
        port b_FL_MECH_23 : ~MechCommandPort { doc /* 枠の外の相手 EB-MECH-04（DPS：GNC ソフトのシーケンスの起動（タイミングユニット・メジャーモード・速度・項目入力）） */ }
        port b_FL_MECH_26 : ~MechHydraulicPowerPort { doc /* 枠の外の相手 EB-MECH-05（APU/HYD：油圧系1（アップロックの解除）） */ }
        port b_FL_MECH_31 : MechLoadPort { doc /* 枠の外の相手 EB-MECH-09（構造（STR）：前胴の下部・主翼の下部（脚の収納部）） */ }
        port b_FL_MECH_32 : MechLoadPort { doc /* 枠の外の相手 EB-MECH-09（構造（STR）：前胴の下部・主翼の下部（脚の収納部）） */ }
        port b_FL_MECH_36 : ~MechHydraulicPowerPort { doc /* 枠の外の相手 EB-MECH-06（APU/HYD：油圧系1・2（系3は予備）のブレーキと NWS への供給） */ }
        port b_FL_MECH_38 : ~MechHydraulicPowerPort { doc /* 枠の外の相手 EB-MECH-06（APU/HYD：油圧系1・2（系3は予備）のブレーキと NWS への供給） */ }
        port b_FL_MECH_39 : ~MechPowerPort { doc /* 枠の外の相手 EB-MECH-02（EPS：主直流電源 A・B・C（制動系が3系統すべてを使う）） */ }
        flow <'FL-MECH-01'> fl_mech_01 of MechPower from b_FL_MECH_01.electricPower to act.mcaLogicSwitches.i_FL_MECH_01.electricPower;
        flow <'FL-MECH-02'> fl_mech_02 of MechPower from act.mcaLogicSwitches.o_FL_MECH_02.electricPower to act.motorControlAssembly.i_FL_MECH_02.electricPower;
        flow <'FL-MECH-03'> fl_mech_03 of MechCommand from b_FL_MECH_03.dataCommand to act.motorControlAssembly.i_FL_MECH_03.dataCommand;
        flow <'FL-MECH-04'> fl_mech_04 of MechPower from act.motorControlAssembly.o_FL_MECH_04.electricPower to act.doorDrivePdu.i_FL_MECH_04.electricPower;
        flow <'FL-MECH-05'> fl_mech_05 of MechPower from act.motorControlAssembly.o_FL_MECH_05.electricPower to act.latchGangPdu.i_FL_MECH_05.electricPower;
        flow <'FL-MECH-06'> fl_mech_06 of MechPower from act.motorControlAssembly.o_FL_MECH_06.electricPower to act.ventDoorPdu.i_FL_MECH_06.electricPower;
        flow <'FL-MECH-07'> fl_mech_07 of MechPower from act.motorControlAssembly.o_FL_MECH_07.electricPower to act.etDoorPdus.i_FL_MECH_07.electricPower;
        flow <'FL-MECH-08'> fl_mech_08 from act.doorDrivePdu.o_FL_MECH_08.structuralLoad to plb.doorDriveLinkage.i_FL_MECH_08.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 63 [s] { doc /* 時間 63 s */ }
            }
        }
        flow <'FL-MECH-09'> fl_mech_09 from act.latchGangPdu.o_FL_MECH_09.structuralLoad to plb.centerlineLatch.i_FL_MECH_09.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 20 [s] { doc /* 時間 20 s */ }
            }
        }
        flow <'FL-MECH-10'> fl_mech_10 from act.latchGangPdu.o_FL_MECH_10.structuralLoad to plb.bulkheadLatch.i_FL_MECH_10.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 30 [s] { doc /* 時間 30 s */ }
            }
        }
        flow <'FL-MECH-11'> fl_mech_11 of MechLoad from plb.doorDriveLinkage.o_FL_MECH_11.structuralLoad to plb.payloadBayDoor.i_FL_MECH_11.structuralLoad;
        flow <'FL-MECH-12'> fl_mech_12 of MechLoad from plb.payloadBayDoor.o_FL_MECH_12.structuralLoad to plb.doorHinge.i_FL_MECH_12.structuralLoad;
        flow <'FL-MECH-13'> fl_mech_13 of MechLoad from plb.doorHinge.o_FL_MECH_13.structuralLoad to b_FL_MECH_13.structuralLoad;
        flow <'FL-MECH-14'> fl_mech_14 of MechLoad from plb.bulkheadLatch.o_FL_MECH_14.structuralLoad to b_FL_MECH_14.structuralLoad;
        flow <'FL-MECH-15'> fl_mech_15 of MechLoad from b_FL_MECH_15.structuralLoad to plb.doorDriveLinkage.i_FL_MECH_15.structuralLoad;
        flow <'FL-MECH-16'> fl_mech_16 from act.ventDoorPdu.o_FL_MECH_16.structuralLoad to vnt.ventDoor.i_FL_MECH_16.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 5 [s] { doc /* 時間 5 s */ }
            }
        }
        flow <'FL-MECH-17'> fl_mech_17 from act.etDoorPdus.o_FL_MECH_17.structuralLoad to vnt.etUmbilicalDoor.i_FL_MECH_17.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 24 [s] { doc /* 時間 24 s */ }
            }
        }
        flow <'FL-MECH-18'> fl_mech_18 from act.etDoorPdus.o_FL_MECH_18.structuralLoad to vnt.etCenterlineLatch.i_FL_MECH_18.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 6 [s] { doc /* 時間 6 s */ }
            }
        }
        flow <'FL-MECH-19'> fl_mech_19 from act.etDoorPdus.o_FL_MECH_19.structuralLoad to vnt.etUplockLatch.i_FL_MECH_19.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 6 [s] { doc /* 時間 6 s */ }
            }
        }
        flow <'FL-MECH-20'> fl_mech_20 of MechLoad from vnt.etCenterlineLatch.o_FL_MECH_20.structuralLoad to vnt.etUmbilicalDoor.i_FL_MECH_20.structuralLoad;
        flow <'FL-MECH-21'> fl_mech_21 of MechLoad from vnt.etUplockLatch.o_FL_MECH_21.structuralLoad to vnt.etUmbilicalDoor.i_FL_MECH_21.structuralLoad;
        flow <'FL-MECH-22'> fl_mech_22 of MechLoad from vnt.ventDoor.o_FL_MECH_22.structuralLoad to b_FL_MECH_22.structuralLoad;
        flow <'FL-MECH-23'> fl_mech_23 of MechCommand from b_FL_MECH_23.dataCommand to ops.ventDoorSequence.i_FL_MECH_23.dataCommand;
        flow <'FL-MECH-24'> fl_mech_24 from ops.ventDoorSequence.o_FL_MECH_24.dataCommand to vnt.ventDoor.i_FL_MECH_24.dataCommand {
            item :>> payload : MechCommand {
                attribute intervalNominal :> interval = 2.5 [s] { doc /* 時間 2.5 s */ }
            }
        }
        flow <'FL-MECH-25'> fl_mech_25 of MechCommand from ops.landingGearButtons.o_FL_MECH_25.dataCommand to ldg.uplockActuator.i_FL_MECH_25.dataCommand;
        flow <'FL-MECH-26'> fl_mech_26 from b_FL_MECH_26.hydraulicFluid to ldg.uplockActuator.i_FL_MECH_26.hydraulicFluid {
            item :>> payload : MechHydraulicPower {
                attribute pressureMin :> pressure = 2760 ['lbf/in²'] { doc /* 圧力 2,760〜3,500 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 3500 ['lbf/in²'] { doc /* 圧力 2,760〜3,500 psia（絶対圧） */ }
            }
        }
        flow <'FL-MECH-27'> fl_mech_27 from ldg.uplockPyroBackup.o_FL_MECH_27.dataCommand to ldg.uplockActuator.i_FL_MECH_27.dataCommand {
            item :>> payload : MechPyroSignal {
                attribute delayNominal :> delay = 1 [s] { doc /* 時間 1 s */ }
            }
        }
        flow <'FL-MECH-28'> fl_mech_28 from ldg.uplockPyroBackup.o_FL_MECH_28.dataCommand to ldg.noseLandingGear.i_FL_MECH_28.dataCommand {
            item :>> payload : MechPyroSignal {
                attribute delayNominal :> delay = 2 [s] { doc /* 時間 2 s */ }
            }
        }
        flow <'FL-MECH-29'> fl_mech_29 from ldg.uplockActuator.o_FL_MECH_29.structuralLoad to ldg.mainLandingGear.i_FL_MECH_29.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 10 [s] { doc /* 時間 10 s */ }
            }
        }
        flow <'FL-MECH-30'> fl_mech_30 from ldg.uplockActuator.o_FL_MECH_30.structuralLoad to ldg.noseLandingGear.i_FL_MECH_30.structuralLoad {
            item :>> payload : MechLoad {
                attribute driveTimeNominal :> driveTime = 10 [s] { doc /* 時間 10 s */ }
            }
        }
        flow <'FL-MECH-31'> fl_mech_31 of MechLoad from ldg.mainLandingGear.o_FL_MECH_31.structuralLoad to b_FL_MECH_31.structuralLoad;
        flow <'FL-MECH-32'> fl_mech_32 of MechLoad from ldg.noseLandingGear.o_FL_MECH_32.structuralLoad to b_FL_MECH_32.structuralLoad;
        flow <'FL-MECH-33'> fl_mech_33 from ldg.weightOnWheelsSensors.o_FL_MECH_33.dataCommand to dec.brakeSkidControlBox.i_FL_MECH_33.dataCommand {
            item :>> payload : MechSensorSignal {
                attribute delayNominal :> delay = 1.9 [s] { doc /* 時間 1.9 s */ }
            }
        }
        flow <'FL-MECH-34'> fl_mech_34 of MechSensorSignal from ldg.weightOnWheelsSensors.o_FL_MECH_34.dataCommand to dec.brakeIsolationValve.i_FL_MECH_34.dataCommand;
        flow <'FL-MECH-35'> fl_mech_35 of MechSensorSignal from ldg.weightOnWheelsSensors.o_FL_MECH_35.dataCommand to dec.noseWheelSteering.i_FL_MECH_35.dataCommand;
        flow <'FL-MECH-36'> fl_mech_36 of MechHydraulicPower from b_FL_MECH_36.hydraulicFluid to dec.brakeIsolationValve.i_FL_MECH_36.hydraulicFluid;
        flow <'FL-MECH-37'> fl_mech_37 from dec.brakeIsolationValve.o_FL_MECH_37.hydraulicFluid to dec.mainGearBrakes.i_FL_MECH_37.hydraulicFluid {
            item :>> payload : MechHydraulicPower {
                attribute regulatedPressureNominal :> regulatedPressure = 2000 ['lbf/in²'] { doc /* 圧力 2,000 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MECH-38'> fl_mech_38 of MechHydraulicPower from b_FL_MECH_38.hydraulicFluid to dec.noseWheelSteering.i_FL_MECH_38.hydraulicFluid;
        flow <'FL-MECH-39'> fl_mech_39 of MechPower from b_FL_MECH_39.electricPower to dec.brakeSkidControlBox.i_FL_MECH_39.electricPower;
        flow <'FL-MECH-40'> fl_mech_40 of MechSensorSignal from dec.wheelSpeedSensor.o_FL_MECH_40.dataCommand to dec.brakeSkidControlBox.i_FL_MECH_40.dataCommand;
        flow <'FL-MECH-41'> fl_mech_41 of MechCommand from dec.brakeSkidControlBox.o_FL_MECH_41.dataCommand to dec.mainGearBrakes.i_FL_MECH_41.dataCommand;
        flow <'FL-MECH-42'> fl_mech_42 of MechCommand from ops.dragChuteButtons.o_FL_MECH_42.dataCommand to dec.dragChute.i_FL_MECH_42.dataCommand;
    }
    // ---- 図215 C/W 内部ブロック図：機器
    part def <'EQ-CW-01'> CwElectronicsUnit :> SSD_ALC_SYS_001::Physical::PHY_CW_01 {
        doc /* C/W 電子ユニットの限界判定部（多重化・比較器・制御論理・パラメータ記憶、SYS A）（機能ブロック SSD-FD-CW-PRI-001、機器 PHY-CW-01） */
        port i_FL_CW_03 : ~CwPowerPort;
        port i_FL_CW_04 : ~CwPowerPort;
        port i_FL_CW_16 : ~CwSensorSignalPort;
        port i_FL_CW_18 : ~CwSensorSignalPort;
        port i_FL_CW_19 : ~CwLimitSettingPort;
        port i_FL_CW_20 : ~CwAlarmDiscretePort;
        port o_FL_CW_21 : CwAlarmDiscretePort;
        port o_FL_CW_22 : CwAlarmDiscretePort;
        port o_FL_CW_23 : CwAlarmDiscretePort;
        port i_FL_CW_33 : ~CwLimitSettingPort;
        port i_FL_CW_34 : ~CwLimitSettingPort;
        port o_FL_CW_35 : CwAlarmDiscretePort;
    }
    part def <'EQ-CW-02'> LimitProm :> SSD_ALC_SYS_001::Physical::PHY_CW_01 {
        doc /* PROM（基準の限界値）（機能ブロック SSD-FD-CW-PRI-001、機器 PHY-CW-01） */
        port o_FL_CW_19 : CwLimitSettingPort;
    }
    part def <'EQ-CW-03'> CwPowerSupplyA :> SSD_ALC_SYS_001::Physical::PHY_CW_01 {
        doc /* 電源装置 A（ESS 1BC・C/W A 遮断器）（機能ブロック SSD-FD-CW-PRI-001、機器 PHY-CW-01） */
        port i_FL_CW_01 : ~CwPowerPort;
        port o_FL_CW_03 : CwPowerPort;
    }
    part def <'EQ-CW-04'> CwPowerSupplyB :> SSD_ALC_SYS_001::Physical::PHY_CW_01 {
        doc /* 電源装置 B（ESS 2CA・C/W B 遮断器）（機能ブロック SSD-FD-CW-PRI-001、機器 PHY-CW-01） */
        port i_FL_CW_02 : ~CwPowerPort;
        port o_FL_CW_04 : CwPowerPort;
    }
    part def <'EQ-CW-05'> SelfTest {
        doc /* 自己試験（パラメータ 120〜127）（機能ブロック SSD-FD-CW-PRI-001） */
        port o_FL_CW_20 : CwAlarmDiscretePort;
    }
    part def <'EQ-CW-06'> SignalConditioners {
        doc /* 信号調整器（変換器の入力）（機能ブロック SSD-FD-CW-PRI-001） */
        port i_FL_CW_05 : ~CwSensorSignalPort;
        port i_FL_CW_06 : ~CwSensorSignalPort;
        port i_FL_CW_07 : ~CwSensorSignalPort;
        port i_FL_CW_08 : ~CwSensorSignalPort;
        port i_FL_CW_09 : ~CwSensorSignalPort;
        port i_FL_CW_10 : ~CwSensorSignalPort;
        port i_FL_CW_11 : ~CwSensorSignalPort;
        port i_FL_CW_12 : ~CwSensorSignalPort;
        port i_FL_CW_13 : ~CwSensorSignalPort;
        port i_FL_CW_14 : ~CwSensorSignalPort;
        port i_FL_CW_15 : ~CwSensorSignalPort;
        port i_FL_CW_17 : ~CwSensorSignalPort;
        port o_FL_CW_18 : CwSensorSignalPort;
    }
    part def <'EQ-CW-07'> FdaSoftware {
        doc /* FDA ソフトウェア（SM の故障検知・通報、PASS）（機能ブロック SSD-FD-CW-BKP-001） */
        port o_FL_CW_24 : CwAlarmDiscretePort;
        port o_FL_CW_25 : CwAlarmDiscretePort;
        port i_FL_CW_29 : ~CwSensorSignalPort;
        port o_FL_CW_31 : CwFaultMessagePort;
        port i_FL_CW_36 : ~CwFaultMessagePort;
    }
    part def <'EQ-CW-08'> GaxSoftware {
        doc /* GNC ソフトウェアと GNC 警報インタフェース（GAX）（機能ブロック SSD-FD-CW-BKP-001） */
        port o_FL_CW_26 : CwAlarmDiscretePort;
    }
    part def <'EQ-CW-09'> BfsAlarm {
        doc /* バックアップ飛行システム（BFS）の警報（engage 状態・STANDBY）（機能ブロック SSD-FD-CW-BKP-001） */
    }
    part def <'EQ-CW-10'> AlertLogic {
        doc /* アラート論理（クラス3、限界の組の選択と前提条件付け）（機能ブロック SSD-FD-CW-ALT-001） */
        port o_FL_CW_27 : CwAlarmDiscretePort;
        port o_FL_CW_28 : CwAlarmDiscretePort;
        port i_FL_CW_30 : ~CwSensorSignalPort;
        port i_FL_CW_32 : ~CwSensorSignalPort;
        port i_FL_CW_37 : ~CwFaultMessagePort;
    }
    part def <'EQ-CW-11'> LimitSensing {
        doc /* 限界表示（クラス0、DPS 表示の上下矢印）（機能ブロック SSD-FD-CW-ALT-001） */
    }
    part def <'EQ-CW-12'> AnnunciatorMatrixF7 :> SSD_ALC_SYS_001::Physical::PHY_CW_02 {
        doc /* パネル F7 の注意警報表示マトリクス（BACKUP C/W ALARM 灯を含む40灯）（機能ブロック SSD-FD-CW-ANN-001、機器 PHY-CW-02） */
        port i_FL_CW_21 : ~CwAlarmDiscretePort;
        port i_FL_CW_24 : ~CwAlarmDiscretePort;
    }
    part def <'EQ-CW-13'> MasterAlarmPbi :> SSD_ALC_SYS_001::Physical::PHY_CW_03 {
        doc /* MASTER ALARM 押しボタン表示器（F2・F4・A7・MO52J）（機能ブロック SSD-FD-CW-ANN-001、機器 PHY-CW-03） */
        port i_FL_CW_22 : ~CwAlarmDiscretePort;
        port i_FL_CW_25 : ~CwAlarmDiscretePort;
        port i_FL_CW_42 : ~CwAlarmDiscretePort;
        port i_FL_CW_44 : ~CwAlarmDiscretePort;
        port o_FL_CW_46 : CwAlarmDiscretePort;
    }
    part def <'EQ-CW-14'> ToneGenerators :> SSD_ALC_SYS_001::Physical::PHY_CW_01 {
        doc /* トーン発生器 A・B（サイレン・クラクソン・C&W トーン・アラートトーン）（機能ブロック SSD-FD-CW-ANN-001、機器 PHY-CW-01） */
        port i_FL_CW_23 : ~CwAlarmDiscretePort;
        port i_FL_CW_26 : ~CwAlarmDiscretePort;
        port i_FL_CW_28 : ~CwAlarmDiscretePort;
        port i_FL_CW_43 : ~CwAlarmDiscretePort;
        port i_FL_CW_45 : ~CwAlarmDiscretePort;
        port i_FL_CW_46 : ~CwAlarmDiscretePort;
        port o_FL_CW_47 : CwTonePort;
        port o_FL_CW_49 : CwTonePort;
    }
    part def <'EQ-CW-15'> ToneVolumeControl {
        doc /* トーン音量調整（R13U の TONE VOLUME A・B）（機能ブロック SSD-FD-CW-ANN-001） */
        port i_FL_CW_47 : ~CwTonePort;
        port o_FL_CW_48 : CwTonePort;
    }
    part def <'EQ-CW-16'> SmAlertLight {
        doc /* SM ALERT 灯（青、F7）（機能ブロック SSD-FD-CW-ANN-001） */
        port i_FL_CW_27 : ~CwAlarmDiscretePort;
    }
    part def <'EQ-CW-17'> SmokeDetectors :> SSD_ALC_SYS_001::Physical::PHY_CW_05 {
        doc /* 煙検知器（A 群・B 群）（機能ブロック SSD-FD-CW-ANN-001、機器 PHY-CW-05） */
        port i_FL_CW_39 : ~CwCabinAirPort;
        port o_FL_CW_41 : CwAlarmDiscretePort;
        port o_FL_CW_42 : CwAlarmDiscretePort;
        port o_FL_CW_43 : CwAlarmDiscretePort;
    }
    part def <'EQ-CW-18'> CabinDpDtSensor {
        doc /* 客室圧力変化率（ΔP/Δt）センサ（機能ブロック SSD-FD-CW-ANN-001） */
        port i_FL_CW_40 : ~CwCabinAirPort;
        port o_FL_CW_44 : CwAlarmDiscretePort;
        port o_FL_CW_45 : CwAlarmDiscretePort;
    }
    part def <'EQ-CW-19'> SmokeDetectionLights {
        doc /* パネル L1 の SMOKE DETECTION 灯（機能ブロック SSD-FD-CW-ANN-001） */
        port i_FL_CW_41 : ~CwAlarmDiscretePort;
    }
    part def <'EQ-CW-20'> PanelR13U :> SSD_ALC_SYS_001::Physical::PHY_CW_04 {
        doc /* パネル R13U（PARAMETER SELECT・LIMIT SET・PARAM ENABLE/INHIBIT・状態灯120・LAMP TEST）（機能ブロック SSD-FD-CW-OPS-001、機器 PHY-CW-04） */
        port o_FL_CW_33 : CwLimitSettingPort;
        port i_FL_CW_35 : ~CwAlarmDiscretePort;
    }
    part def <'EQ-CW-21'> PanelC3 {
        doc /* パネル C3（CAUTION/WARNING MODE・MEMORY スイッチ）（機能ブロック SSD-FD-CW-OPS-001） */
        port o_FL_CW_34 : CwLimitSettingPort;
    }
    part def <'EQ-CW-22'> Spec60Display {
        doc /* SPEC 60 SM TABLE MAINT（PASS SM のバックアップ C/W・アラートの限界・フィルタ値・有効/抑止）（機能ブロック SSD-FD-CW-OPS-001） */
        port o_FL_CW_36 : CwFaultMessagePort;
        port o_FL_CW_37 : CwFaultMessagePort;
        port i_FL_CW_38 : ~CwFaultMessagePort;
    }
    // ---- 図215 C/W 内部ブロック図：接続（CwInterconnection は CW を特化）
    part def CwInterconnection :> CW {
        doc /* 警報系（C/W）（一次 C/W・バックアップ C/W・表示と警報音）の内部ブロック図（図215）。基の機能ブロック SSD-FD-CW-001。 */
        part redefines pri {
            part cwElectronicsUnit : CwElectronicsUnit;
            part limitProm : LimitProm;
            part cwPowerSupplyA : CwPowerSupplyA;
            part cwPowerSupplyB : CwPowerSupplyB;
            part selfTest : SelfTest;
            part signalConditioners : SignalConditioners;
        }
        part redefines bkp {
            part fdaSoftware : FdaSoftware;
            part gaxSoftware : GaxSoftware;
            part bfsAlarm : BfsAlarm;
        }
        part redefines alt {
            part alertLogic : AlertLogic;
            part limitSensing : LimitSensing;
        }
        part redefines ann {
            part annunciatorMatrixF7 : AnnunciatorMatrixF7;
            part masterAlarmPbi[4] : MasterAlarmPbi;
            part toneGenerators[2] : ToneGenerators;
            part toneVolumeControl[2] : ToneVolumeControl;
            part smAlertLight : SmAlertLight;
            part smokeDetectors[9] : SmokeDetectors;
            part cabinDpDtSensor : CabinDpDtSensor;
            part smokeDetectionLights : SmokeDetectionLights;
        }
        part redefines ops {
            part panelR13U : PanelR13U;
            part panelC3 : PanelC3;
            part spec60Display : Spec60Display;
        }
        port b_FL_CW_01 : ~CwPowerPort { doc /* 枠の外の相手 EB-CW-01（EPS：必須母線 ESS 1BC（C/W A 遮断器、パネル O13）） */ }
        port b_FL_CW_02 : ~CwPowerPort { doc /* 枠の外の相手 EB-CW-02（EPS：必須母線 ESS 2CA（C/W B 遮断器、パネル O13）） */ }
        port b_FL_CW_05 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-03（ECLSS：客室圧・PPO2・O2/N2 流量・フレオン/水ループの変換器） */ }
        port b_FL_CW_06 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-05（APU 制御器：APU 1〜3の回転数（OVERSPEED・UNDERSPEED）） */ }
        port b_FL_CW_07 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-06（主油圧ポンプ・供給：油圧系統1〜3の圧力（HYD PRESS）） */ }
        port b_FL_CW_08 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-07（MPS ヘリウム・空圧：ヘリウムのタンク圧と調圧器の圧力） */ }
        port b_FL_CW_09 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-08（MPS 推進薬供給：LH2・LO2 のマニホールド圧） */ }
        port b_FL_CW_10 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-09（OMS エンジン・GN2 系：燃焼室圧（OMS ENG-L・R）） */ }
        port b_FL_CW_11 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-10（OMS 推進薬貯蔵・分配：タンク圧） */ }
        port b_FL_CW_12 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-11（OMS 推力方向制御（ジンバル）：OMS TVC） */ }
        port b_FL_CW_13 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-12（RCS 推進薬貯蔵・分配：タンクのアレージ圧と漏れ） */ }
        port b_FL_CW_14 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-13（RCS 噴射器冗長管理：RCS JET の故障） */ }
        port b_FL_CW_15 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-16（GN&C 舵面・推力方向制御駆動：FCS SATURATION・FCS CHANNEL） */ }
        port b_FL_CW_16 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-17（DPS データバス網・MDM：GPC の入出力処理装置と飛行前方 MDM 経由の C/W 入力） */ }
        port b_FL_CW_17 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-18（ペイロード：PL WARNING・PL CAUTION の入力（各系の総括の IF）） */ }
        port b_FL_CW_29 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-19（DPS：GPC・MDM（ソフトウェア C/W 論理への入力）） */ }
        port b_FL_CW_30 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-19（DPS：GPC・MDM（ソフトウェア C/W 論理への入力）） */ }
        port b_FL_CW_31 : CwFaultMessagePort { doc /* 枠の外の相手 EB-CW-20（DPS：飛行ソフトウェアと表示（故障メッセージ行・故障要約頁）） */ }
        port b_FL_CW_32 : ~CwSensorSignalPort { doc /* 枠の外の相手 EB-CW-15（RCS 熱制御（ヒータ）：構造の温度（S89 PRPLT THRM RCS のアラート）） */ }
        port b_FL_CW_38 : ~CwFaultMessagePort { doc /* 枠の外の相手 EB-CW-23（EVA 合図・運用管理と MCC（限界値の再設定と TMBU のアップリンク）） */ }
        port b_FL_CW_39 : ~CwCabinAirPort { doc /* 枠の外の相手 EB-CW-04（ECLSS：客室の空気（煙の濃度・客室圧の変化率）） */ }
        port b_FL_CW_40 : ~CwCabinAirPort { doc /* 枠の外の相手 EB-CW-04（ECLSS：客室の空気（煙の濃度・客室圧の変化率）） */ }
        port b_FL_CW_48 : CwTonePort { doc /* 枠の外の相手 EB-CW-21（C&T：音声中央制御ユニット（ACCU）とスピーカユニット） */ }
        port b_FL_CW_49 : CwTonePort { doc /* 枠の外の相手 EB-CW-22（C&T：乗員のヘッドセットとスピーカボックス） */ }
        flow <'FL-CW-01'> fl_cw_01 of CwPower from b_FL_CW_01.electricPower to pri.cwPowerSupplyA.i_FL_CW_01.electricPower;
        flow <'FL-CW-02'> fl_cw_02 of CwPower from b_FL_CW_02.electricPower to pri.cwPowerSupplyB.i_FL_CW_02.electricPower;
        flow <'FL-CW-03'> fl_cw_03 of CwPower from pri.cwPowerSupplyA.o_FL_CW_03.electricPower to pri.cwElectronicsUnit.i_FL_CW_03.electricPower;
        flow <'FL-CW-04'> fl_cw_04 of CwPower from pri.cwPowerSupplyB.o_FL_CW_04.electricPower to pri.cwElectronicsUnit.i_FL_CW_04.electricPower;
        flow <'FL-CW-05'> fl_cw_05 from b_FL_CW_05.dataCommand to pri.signalConditioners.i_FL_CW_05.dataCommand {
            item :>> payload : CwSensorSignal {
                attribute voltageMin :> voltage = 0 [V] { doc /* 電圧 0〜5 V */ }
                attribute voltageMax :> voltage = 5 [V] { doc /* 電圧 0〜5 V */ }
            }
        }
        flow <'FL-CW-06'> fl_cw_06 of CwSensorSignal from b_FL_CW_06.dataCommand to pri.signalConditioners.i_FL_CW_06.dataCommand;
        flow <'FL-CW-07'> fl_cw_07 of CwSensorSignal from b_FL_CW_07.dataCommand to pri.signalConditioners.i_FL_CW_07.dataCommand;
        flow <'FL-CW-08'> fl_cw_08 of CwSensorSignal from b_FL_CW_08.dataCommand to pri.signalConditioners.i_FL_CW_08.dataCommand;
        flow <'FL-CW-09'> fl_cw_09 of CwSensorSignal from b_FL_CW_09.dataCommand to pri.signalConditioners.i_FL_CW_09.dataCommand;
        flow <'FL-CW-10'> fl_cw_10 of CwSensorSignal from b_FL_CW_10.dataCommand to pri.signalConditioners.i_FL_CW_10.dataCommand;
        flow <'FL-CW-11'> fl_cw_11 of CwSensorSignal from b_FL_CW_11.dataCommand to pri.signalConditioners.i_FL_CW_11.dataCommand;
        flow <'FL-CW-12'> fl_cw_12 of CwSensorSignal from b_FL_CW_12.dataCommand to pri.signalConditioners.i_FL_CW_12.dataCommand;
        flow <'FL-CW-13'> fl_cw_13 of CwSensorSignal from b_FL_CW_13.dataCommand to pri.signalConditioners.i_FL_CW_13.dataCommand;
        flow <'FL-CW-14'> fl_cw_14 of CwSensorSignal from b_FL_CW_14.dataCommand to pri.signalConditioners.i_FL_CW_14.dataCommand;
        flow <'FL-CW-15'> fl_cw_15 of CwSensorSignal from b_FL_CW_15.dataCommand to pri.signalConditioners.i_FL_CW_15.dataCommand;
        flow <'FL-CW-16'> fl_cw_16 of CwSensorSignal from b_FL_CW_16.dataCommand to pri.cwElectronicsUnit.i_FL_CW_16.dataCommand;
        flow <'FL-CW-17'> fl_cw_17 of CwSensorSignal from b_FL_CW_17.dataCommand to pri.signalConditioners.i_FL_CW_17.dataCommand;
        flow <'FL-CW-18'> fl_cw_18 from pri.signalConditioners.o_FL_CW_18.dataCommand to pri.cwElectronicsUnit.i_FL_CW_18.dataCommand {
            item :>> payload : CwSensorSignal {
                attribute voltageMin :> voltage = 0 [V] { doc /* 電圧 0〜5 V */ }
                attribute voltageMax :> voltage = 5 [V] { doc /* 電圧 0〜5 V */ }
                attribute samplingRateNominal :> samplingRate = 80 [Hz] { doc /* 周波数 80 Hz */ }
            }
        }
        flow <'FL-CW-19'> fl_cw_19 from pri.limitProm.o_FL_CW_19.dataCommand to pri.cwElectronicsUnit.i_FL_CW_19.dataCommand {
            item :>> payload : CwLimitSetting {
                attribute voltageMin :> voltage = 0 [V] { doc /* 電圧 0〜5 V */ }
                attribute voltageMax :> voltage = 5 [V] { doc /* 電圧 0〜5 V */ }
            }
        }
        flow <'FL-CW-20'> fl_cw_20 of CwAlarmDiscrete from pri.selfTest.o_FL_CW_20.dataCommand to pri.cwElectronicsUnit.i_FL_CW_20.dataCommand;
        flow <'FL-CW-21'> fl_cw_21 of CwAlarmDiscrete from pri.cwElectronicsUnit.o_FL_CW_21.dataCommand to ann.annunciatorMatrixF7.i_FL_CW_21.dataCommand;
        flow <'FL-CW-22'> fl_cw_22 of CwAlarmDiscrete from pri.cwElectronicsUnit.o_FL_CW_22.dataCommand to ann.masterAlarmPbi.i_FL_CW_22.dataCommand;
        flow <'FL-CW-23'> fl_cw_23 of CwAlarmDiscrete from pri.cwElectronicsUnit.o_FL_CW_23.dataCommand to ann.toneGenerators.i_FL_CW_23.dataCommand;
        flow <'FL-CW-24'> fl_cw_24 of CwAlarmDiscrete from bkp.fdaSoftware.o_FL_CW_24.dataCommand to ann.annunciatorMatrixF7.i_FL_CW_24.dataCommand;
        flow <'FL-CW-25'> fl_cw_25 of CwAlarmDiscrete from bkp.fdaSoftware.o_FL_CW_25.dataCommand to ann.masterAlarmPbi.i_FL_CW_25.dataCommand;
        flow <'FL-CW-26'> fl_cw_26 of CwAlarmDiscrete from bkp.gaxSoftware.o_FL_CW_26.dataCommand to ann.toneGenerators.i_FL_CW_26.dataCommand;
        flow <'FL-CW-27'> fl_cw_27 of CwAlarmDiscrete from alt.alertLogic.o_FL_CW_27.dataCommand to ann.smAlertLight.i_FL_CW_27.dataCommand;
        flow <'FL-CW-28'> fl_cw_28 of CwAlarmDiscrete from alt.alertLogic.o_FL_CW_28.dataCommand to ann.toneGenerators.i_FL_CW_28.dataCommand;
        flow <'FL-CW-29'> fl_cw_29 of CwSensorSignal from b_FL_CW_29.dataCommand to bkp.fdaSoftware.i_FL_CW_29.dataCommand;
        flow <'FL-CW-30'> fl_cw_30 of CwSensorSignal from b_FL_CW_30.dataCommand to alt.alertLogic.i_FL_CW_30.dataCommand;
        flow <'FL-CW-31'> fl_cw_31 of CwFaultMessage from bkp.fdaSoftware.o_FL_CW_31.dataCommand to b_FL_CW_31.dataCommand;
        flow <'FL-CW-32'> fl_cw_32 of CwSensorSignal from b_FL_CW_32.dataCommand to alt.alertLogic.i_FL_CW_32.dataCommand;
        flow <'FL-CW-33'> fl_cw_33 from ops.panelR13U.o_FL_CW_33.dataCommand to pri.cwElectronicsUnit.i_FL_CW_33.dataCommand {
            item :>> payload : CwLimitSetting {
                attribute voltageMin :> voltage = 0 [V] { doc /* 電圧 0〜5 V */ }
                attribute voltageMax :> voltage = 5 [V] { doc /* 電圧 0〜5 V */ }
            }
        }
        flow <'FL-CW-34'> fl_cw_34 of CwLimitSetting from ops.panelC3.o_FL_CW_34.dataCommand to pri.cwElectronicsUnit.i_FL_CW_34.dataCommand;
        flow <'FL-CW-35'> fl_cw_35 of CwAlarmDiscrete from pri.cwElectronicsUnit.o_FL_CW_35.dataCommand to ops.panelR13U.i_FL_CW_35.dataCommand;
        flow <'FL-CW-36'> fl_cw_36 of CwFaultMessage from ops.spec60Display.o_FL_CW_36.dataCommand to bkp.fdaSoftware.i_FL_CW_36.dataCommand;
        flow <'FL-CW-37'> fl_cw_37 of CwFaultMessage from ops.spec60Display.o_FL_CW_37.dataCommand to alt.alertLogic.i_FL_CW_37.dataCommand;
        flow <'FL-CW-38'> fl_cw_38 of CwFaultMessage from b_FL_CW_38.dataCommand to ops.spec60Display.i_FL_CW_38.dataCommand;
        flow <'FL-CW-39'> fl_cw_39 of CwCabinAir from b_FL_CW_39.fluid to ann.smokeDetectors.i_FL_CW_39.fluid;
        flow <'FL-CW-40'> fl_cw_40 of CwCabinAir from b_FL_CW_40.fluid to ann.cabinDpDtSensor.i_FL_CW_40.fluid;
        flow <'FL-CW-41'> fl_cw_41 of CwAlarmDiscrete from ann.smokeDetectors.o_FL_CW_41.dataCommand to ann.smokeDetectionLights.i_FL_CW_41.dataCommand;
        flow <'FL-CW-42'> fl_cw_42 of CwAlarmDiscrete from ann.smokeDetectors.o_FL_CW_42.dataCommand to ann.masterAlarmPbi.i_FL_CW_42.dataCommand;
        flow <'FL-CW-43'> fl_cw_43 of CwAlarmDiscrete from ann.smokeDetectors.o_FL_CW_43.dataCommand to ann.toneGenerators.i_FL_CW_43.dataCommand;
        flow <'FL-CW-44'> fl_cw_44 of CwAlarmDiscrete from ann.cabinDpDtSensor.o_FL_CW_44.dataCommand to ann.masterAlarmPbi.i_FL_CW_44.dataCommand;
        flow <'FL-CW-45'> fl_cw_45 of CwAlarmDiscrete from ann.cabinDpDtSensor.o_FL_CW_45.dataCommand to ann.toneGenerators.i_FL_CW_45.dataCommand;
        flow <'FL-CW-46'> fl_cw_46 of CwAlarmDiscrete from ann.masterAlarmPbi.o_FL_CW_46.dataCommand to ann.toneGenerators.i_FL_CW_46.dataCommand;
        flow <'FL-CW-47'> fl_cw_47 of CwTone from ann.toneGenerators.o_FL_CW_47.dataCommand to ann.toneVolumeControl.i_FL_CW_47.dataCommand;
        flow <'FL-CW-48'> fl_cw_48 of CwTone from ann.toneVolumeControl.o_FL_CW_48.dataCommand to b_FL_CW_48.dataCommand;
        flow <'FL-CW-49'> fl_cw_49 of CwTone from ann.toneGenerators.o_FL_CW_49.dataCommand to b_FL_CW_49.dataCommand;
    }
    // ---- 図216 PLS 内部ブロック図：機器
    part def <'EQ-PLS-01'> ArmStructure :> SSD_ALC_SYS_001::Physical::PHY_PLS_01 {
        doc /* アームの構造（6 関節のハウジング・黒鉛/エポキシの上腕・下腕ブーム）（機能ブロック SSD-FD-PLS-ARM-001、機器 PHY-PLS-01） */
        port i_FL_PLS_03 : ~PlsLoadPort;
        port i_FL_PLS_04 : ~PlsLoadPort;
        port i_FL_PLS_18 : ~PlsLoadPort;
    }
    part def <'EQ-PLS-02'> JointDrive :> SSD_ALC_SYS_001::Physical::PHY_PLS_01 {
        doc /* 関節のモータ・ブレーキ・エンコーダ（6 関節）（機能ブロック SSD-FD-PLS-ARM-001、機器 PHY-PLS-01） */
        port i_FL_PLS_01 : ~PlsPowerPort;
        port i_FL_PLS_02 : ~PlsPowerPort;
        port o_FL_PLS_03 : PlsLoadPort;
        port i_FL_PLS_08 : ~PlsDataPort;
        port o_FL_PLS_09 : PlsDataPort;
    }
    part def <'EQ-PLS-03'> JointSpa :> SSD_ALC_SYS_001::Physical::PHY_PLS_01 {
        doc /* 関節の SPA（デジタル サーボ電力増幅器）（機能ブロック SSD-FD-PLS-ARM-001、機器 PHY-PLS-01） */
        port o_FL_PLS_01 : PlsPowerPort;
        port i_FL_PLS_05 : ~PlsPowerPort;
    }
    part def <'EQ-PLS-04'> BackupDriveAmp :> SSD_ALC_SYS_001::Physical::PHY_PLS_01 {
        doc /* 肩の予備駆動増幅器（BDA）（機能ブロック SSD-FD-PLS-ARM-001、機器 PHY-PLS-01） */
        port o_FL_PLS_02 : PlsPowerPort;
        port i_FL_PLS_06 : ~PlsPowerPort;
    }
    part def <'EQ-PLS-05'> EndEffector :> SSD_ALC_SYS_001::Physical::PHY_PLS_01 {
        doc /* エンドエフェクタ（標準、ワイヤスネア・EEEU）（機能ブロック SSD-FD-PLS-ARM-001、機器 PHY-PLS-01） */
        port i_FL_PLS_10 : ~PlsDataPort;
    }
    part def <'EQ-PLS-06'> ShoulderBrace :> SSD_ALC_SYS_001::Physical::PHY_PLS_01 {
        doc /* 肩のブレース（打上げ時の荷重の支え）（機能ブロック SSD-FD-PLS-ARM-001、機器 PHY-PLS-01） */
        port o_FL_PLS_04 : PlsLoadPort;
        port i_FL_PLS_11 : ~PlsDataPort;
    }
    part def <'EQ-PLS-07'> ArmCameraMounts :> SSD_ALC_SYS_001::Physical::PHY_PLS_01 {
        doc /* アームのカメラ取付け（手首・肘のパン・チルト）（機能ブロック SSD-FD-PLS-ARM-001、機器 PHY-PLS-01） */
        port o_FL_PLS_16 : PlsVideoPort;
    }
    part def <'EQ-PLS-08'> Mciu :> SSD_ALC_SYS_001::Physical::PHY_PLS_03 {
        doc /* MCIU（マニピュレータ制御インタフェースユニット）（機能ブロック SSD-FD-PLS-CTL-001、機器 PHY-PLS-03） */
        port i_FL_PLS_07 : ~PlsDataPort;
        port o_FL_PLS_08 : PlsDataPort;
        port i_FL_PLS_09 : ~PlsDataPort;
        port o_FL_PLS_10 : PlsDataPort;
        port o_FL_PLS_12 : PlsDataPort;
        port i_FL_PLS_13 : ~PlsDataPort;
        port i_FL_PLS_14 : ~PlsDataPort;
        port o_FL_PLS_15 : PlsDataPort;
    }
    part def <'EQ-PLS-09'> HandControllers :> SSD_ALC_SYS_001::Physical::PHY_PLS_03 {
        doc /* ハンドコントローラ（THC・RHC）（機能ブロック SSD-FD-PLS-CTL-001、機器 PHY-PLS-03） */
        port o_FL_PLS_07 : PlsDataPort;
    }
    part def <'EQ-PLS-10'> DcPanels :> SSD_ALC_SYS_001::Physical::PHY_PLS_03 {
        doc /* RMS 専用の D&C パネル（A8U・A8L ほか）（機能ブロック SSD-FD-PLS-CTL-001、機器 PHY-PLS-03） */
        port o_FL_PLS_11 : PlsDataPort;
        port i_FL_PLS_12 : ~PlsDataPort;
    }
    part def <'EQ-PLS-11'> MpmDrive :> SSD_ALC_SYS_001::Physical::PHY_PLS_02 {
        doc /* MPM のトルクチューブ・2 重冗長モータ・肩の取付け点（機能ブロック SSD-FD-PLS-MPM-001、機器 PHY-PLS-02） */
        port o_FL_PLS_17 : PlsLoadPort;
        port o_FL_PLS_20 : PlsLoadPort;
    }
    part def <'EQ-PLS-12'> MpmPedestalMrl :> SSD_ALC_SYS_001::Physical::PHY_PLS_02 {
        doc /* MPM の台座と MRL（左舷、冗長モータの保持ラッチ）（機能ブロック SSD-FD-PLS-MPM-001、機器 PHY-PLS-02） */
        port i_FL_PLS_17 : ~PlsLoadPort;
        port o_FL_PLS_18 : PlsLoadPort;
        port i_FL_PLS_19 : ~PlsLoadPort;
        port i_FL_PLS_21 : ~PlsPyroPort;
        port o_FL_PLS_22 : PlsDataPort;
    }
    part def <'EQ-PLS-13'> JettisonSystem :> SSD_ALC_SYS_001::Physical::PHY_PLS_02 {
        doc /* MPM の投棄系（ギロチン・圧力カートリッジ・後退具）（機能ブロック SSD-FD-PLS-MPM-001、機器 PHY-PLS-02） */
        port o_FL_PLS_21 : PlsPyroPort;
    }
    part def <'EQ-PLS-14'> PrlaLongeron {
        doc /* 縦通材ラッチ PRLA（2 重電動機）（機能ブロック SSD-FD-PLS-PRL-001） */
        port i_FL_PLS_24 : ~PlsPowerPort;
        port o_FL_PLS_26 : PlsLoadPort;
        port i_FL_PLS_30 : ~EvaManualDrivePort;
    }
    part def <'EQ-PLS-15'> AkaKeel {
        doc /* キールラッチ AKA（機能ブロック SSD-FD-PLS-PRL-001） */
        port i_FL_PLS_25 : ~PlsPowerPort;
        port o_FL_PLS_27 : PlsLoadPort;
    }
    part def <'EQ-PLS-16'> BridgeFitting {
        doc /* ブリッジ金具（縦通材・キール）（機能ブロック SSD-FD-PLS-PRL-001） */
        port i_FL_PLS_26 : ~PlsLoadPort;
        port i_FL_PLS_27 : ~PlsLoadPort;
        port o_FL_PLS_28 : PlsLoadPort;
    }
    part def <'EQ-PLS-17'> PrlControls {
        doc /* ペイロード保持の制御（A6U の PAYLOAD SELECT・ラッチスイッチ・DISP 97）（機能ブロック SSD-FD-PLS-PRL-001） */
        port i_FL_PLS_23 : ~PlsDataPort;
        port o_FL_PLS_24 : PlsPowerPort;
        port o_FL_PLS_25 : PlsPowerPort;
        port o_FL_PLS_29 : PlsDataPort;
    }
    part def <'EQ-PLS-18'> ApdsMechanism :> SSD_ALC_SYS_001::Physical::PHY_PLS_04 {
        doc /* APDS の機構（基部リング・構造フック 12 対・案内リング・捕獲ラッチ・ダンパ・フィクサ）（機能ブロック SSD-FD-PLS-ODS-001、機器 PHY-PLS-04） */
        port i_FL_PLS_33 : ~PlsPowerPort;
        port o_FL_PLS_35 : PlsDataPort;
        port i_FL_PLS_37 : ~PlsPyroPort;
    }
    part def <'EQ-PLS-19'> ApdsAvionics :> SSD_ALC_SYS_001::Physical::PHY_PLS_05 {
        doc /* APDS の電子箱（PSU・DSCU・DMCU・PACU×2・LACU・PFCU・DCU×2）（機能ブロック SSD-FD-PLS-ODS-001、機器 PHY-PLS-05） */
        port i_FL_PLS_32 : ~PlsPowerPort;
        port o_FL_PLS_33 : PlsPowerPort;
        port i_FL_PLS_34 : ~PlsDataPort;
        port i_FL_PLS_35 : ~PlsDataPort;
        port o_FL_PLS_36 : PlsDataPort;
        port o_FL_PLS_37 : PlsPyroPort;
        port o_FL_PLS_38 : PlsDataPort;
    }
    part def <'EQ-PLS-20'> ApdsPanels :> SSD_ALC_SYS_001::Physical::PHY_PLS_05 {
        doc /* APDS の操作パネル（電源 A6L・制御 A7L）（機能ブロック SSD-FD-PLS-ODS-001、機器 PHY-PLS-05） */
        port i_FL_PLS_31 : ~PlsPowerPort;
        port o_FL_PLS_32 : PlsPowerPort;
        port o_FL_PLS_34 : PlsDataPort;
        port i_FL_PLS_36 : ~PlsDataPort;
    }
    part def <'EQ-PLS-21'> AirlockTruss :> SSD_ALC_SYS_001::Physical::PHY_PLS_04 {
        doc /* 外部エアロックとトラス組立（カメラ・ライトの組立を収める）（機能ブロック SSD-FD-PLS-ODS-001、機器 PHY-PLS-04） */
        port i_FL_PLS_39 : ~PlsLoadPort;
        port o_FL_PLS_40 : PlsVideoPort;
    }
    // ---- 図216 PLS 内部ブロック図：接続（PlsInterconnection は PLS を特化）
    part def PlsInterconnection :> PLS {
        doc /* ペイロード支援（PLS）（RMS・保持ラッチ・ドッキング系）の内部ブロック図（図216）。基の機能ブロック SSD-FD-PLS-001。 */
        part redefines arm {
            part armStructure : ArmStructure;
            part jointDrive[6] : JointDrive;
            part jointSpa[6] : JointSpa;
            part backupDriveAmp : BackupDriveAmp;
            part endEffector : EndEffector;
            part shoulderBrace : ShoulderBrace;
            part armCameraMounts : ArmCameraMounts;
        }
        part redefines ctl {
            part mciu : Mciu;
            part handControllers[2] : HandControllers;
            part dcPanels : DcPanels;
        }
        part redefines mpm {
            part mpmDrive : MpmDrive;
            part mpmPedestalMrl[3] : MpmPedestalMrl;
            part jettisonSystem : JettisonSystem;
        }
        part redefines prl {
            part prlaLongeron : PrlaLongeron;
            part akaKeel : AkaKeel;
            part bridgeFitting : BridgeFitting;
            part prlControls : PrlControls;
        }
        part redefines ods {
            part apdsMechanism : ApdsMechanism;
            part apdsAvionics[9] : ApdsAvionics;
            part apdsPanels[2] : ApdsPanels;
            part airlockTruss : AirlockTruss;
        }
        port b_FL_PLS_05 : ~PlsPowerPort { doc /* 枠の外の相手 EB-PLS-01（EPS：主母線 A（各関節の SPA）） */ }
        port b_FL_PLS_06 : ~PlsPowerPort { doc /* 枠の外の相手 EB-PLS-02（EPS：主母線 B（肩の予備駆動増幅器）） */ }
        port b_FL_PLS_13 : ~PlsDataPort { doc /* 枠の外の相手 EB-PLS-12（PLS 運用管理：RMS の運用前の手順（肩のブレース解除、MPM 展開、SPEC 94 の呼出し）） */ }
        port b_FL_PLS_14 : ~PlsDataPort { doc /* 枠の外の相手 EB-PLS-08（DPS：SM GPC（MCIU とのやり取り）） */ }
        port b_FL_PLS_15 : PlsDataPort { doc /* 枠の外の相手 EB-PLS-09（DPS：表示（SPEC 94・96・167・DISP 97・169）とテレメトリ） */ }
        port b_FL_PLS_16 : PlsVideoPort { doc /* 枠の外の相手 EB-PLS-10（CCTV：RMS のカメラの映像） */ }
        port b_FL_PLS_19 : ~PlsLoadPort { doc /* 枠の外の相手 EB-PLS-04（STR：中胴・左舷縦通材（3 つの MPM 台座）） */ }
        port b_FL_PLS_20 : PlsLoadPort { doc /* 枠の外の相手 EB-PLS-05（STR：左舷のシルロンジロン（肩の取付け点）） */ }
        port b_FL_PLS_22 : PlsDataPort { doc /* 枠の外の相手 EB-PLS-09（DPS：表示（SPEC 94・96・167・DISP 97・169）とテレメトリ） */ }
        port b_FL_PLS_23 : ~PlsDataPort { doc /* 枠の外の相手 EB-PLS-13（PLS 運用管理：展開ペイロードの PRLA・AKA を閉じない規則） */ }
        port b_FL_PLS_28 : PlsLoadPort { doc /* 枠の外の相手 EB-PLS-06（STR：ペイロードベイの構造（ブリッジ金具の取付け）） */ }
        port b_FL_PLS_29 : PlsDataPort { doc /* 枠の外の相手 EB-PLS-09（DPS：表示（SPEC 94・96・167・DISP 97・169）とテレメトリ） */ }
        port b_FL_PLS_30 : ~EvaManualDrivePort { doc /* 枠の外の相手 EB-PLS-14（EVA：PRLA の手動の開閉） */ }
        port b_FL_PLS_31 : ~PlsPowerPort { doc /* 枠の外の相手 EB-PLS-03（EPS：ODS に関係する母線（A6L の遮断器とスイッチ）） */ }
        port b_FL_PLS_38 : PlsDataPort { doc /* 枠の外の相手 EB-PLS-09（DPS：表示（SPEC 94・96・167・DISP 97・169）とテレメトリ） */ }
        port b_FL_PLS_39 : ~PlsLoadPort { doc /* 枠の外の相手 EB-PLS-07（STR：ペイロードベイ（ODS のトラス組立）） */ }
        port b_FL_PLS_40 : PlsVideoPort { doc /* 枠の外の相手 EB-PLS-11（C&T：ランデブ・ドッキング用のカメラ・ライトの映像） */ }
        flow <'FL-PLS-01'> fl_pls_01 from arm.jointSpa.o_FL_PLS_01.electricPower to arm.jointDrive.i_FL_PLS_01.electricPower {
            item :>> payload : PlsPower {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-PLS-02'> fl_pls_02 from arm.backupDriveAmp.o_FL_PLS_02.electricPower to arm.jointDrive.i_FL_PLS_02.electricPower {
            item :>> payload : PlsPower {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-PLS-03'> fl_pls_03 of PlsLoad from arm.jointDrive.o_FL_PLS_03.structuralLoad to arm.armStructure.i_FL_PLS_03.structuralLoad;
        flow <'FL-PLS-04'> fl_pls_04 of PlsLoad from arm.shoulderBrace.o_FL_PLS_04.structuralLoad to arm.armStructure.i_FL_PLS_04.structuralLoad;
        flow <'FL-PLS-05'> fl_pls_05 from b_FL_PLS_05.electricPower to arm.jointSpa.i_FL_PLS_05.electricPower {
            item :>> payload : PlsPower {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-PLS-06'> fl_pls_06 from b_FL_PLS_06.electricPower to arm.backupDriveAmp.i_FL_PLS_06.electricPower {
            item :>> payload : PlsPower {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-PLS-07'> fl_pls_07 of PlsData from ctl.handControllers.o_FL_PLS_07.dataCommand to ctl.mciu.i_FL_PLS_07.dataCommand;
        flow <'FL-PLS-08'> fl_pls_08 of PlsData from ctl.mciu.o_FL_PLS_08.dataCommand to arm.jointDrive.i_FL_PLS_08.dataCommand;
        flow <'FL-PLS-09'> fl_pls_09 of PlsData from arm.jointDrive.o_FL_PLS_09.dataCommand to ctl.mciu.i_FL_PLS_09.dataCommand;
        flow <'FL-PLS-10'> fl_pls_10 of PlsData from ctl.mciu.o_FL_PLS_10.dataCommand to arm.endEffector.i_FL_PLS_10.dataCommand;
        flow <'FL-PLS-11'> fl_pls_11 of PlsData from ctl.dcPanels.o_FL_PLS_11.dataCommand to arm.shoulderBrace.i_FL_PLS_11.dataCommand;
        flow <'FL-PLS-12'> fl_pls_12 of PlsData from ctl.mciu.o_FL_PLS_12.dataCommand to ctl.dcPanels.i_FL_PLS_12.dataCommand;
        flow <'FL-PLS-13'> fl_pls_13 of PlsData from b_FL_PLS_13.dataCommand to ctl.mciu.i_FL_PLS_13.dataCommand;
        flow <'FL-PLS-14'> fl_pls_14 of PlsData from b_FL_PLS_14.dataCommand to ctl.mciu.i_FL_PLS_14.dataCommand;
        flow <'FL-PLS-15'> fl_pls_15 of PlsData from ctl.mciu.o_FL_PLS_15.dataCommand to b_FL_PLS_15.dataCommand;
        flow <'FL-PLS-16'> fl_pls_16 of PlsVideo from arm.armCameraMounts.o_FL_PLS_16.dataCommand to b_FL_PLS_16.dataCommand;
        flow <'FL-PLS-17'> fl_pls_17 of PlsLoad from mpm.mpmDrive.o_FL_PLS_17.structuralLoad to mpm.mpmPedestalMrl.i_FL_PLS_17.structuralLoad;
        flow <'FL-PLS-18'> fl_pls_18 of PlsLoad from mpm.mpmPedestalMrl.o_FL_PLS_18.structuralLoad to arm.armStructure.i_FL_PLS_18.structuralLoad;
        flow <'FL-PLS-19'> fl_pls_19 of PlsLoad from b_FL_PLS_19.structuralLoad to mpm.mpmPedestalMrl.i_FL_PLS_19.structuralLoad;
        flow <'FL-PLS-20'> fl_pls_20 of PlsLoad from mpm.mpmDrive.o_FL_PLS_20.structuralLoad to b_FL_PLS_20.structuralLoad;
        flow <'FL-PLS-21'> fl_pls_21 of PlsPyro from mpm.jettisonSystem.o_FL_PLS_21.dataCommand to mpm.mpmPedestalMrl.i_FL_PLS_21.dataCommand;
        flow <'FL-PLS-22'> fl_pls_22 of PlsData from mpm.mpmPedestalMrl.o_FL_PLS_22.dataCommand to b_FL_PLS_22.dataCommand;
        flow <'FL-PLS-23'> fl_pls_23 of PlsData from b_FL_PLS_23.dataCommand to prl.prlControls.i_FL_PLS_23.dataCommand;
        flow <'FL-PLS-24'> fl_pls_24 of PlsPower from prl.prlControls.o_FL_PLS_24.electricPower to prl.prlaLongeron.i_FL_PLS_24.electricPower;
        flow <'FL-PLS-25'> fl_pls_25 of PlsPower from prl.prlControls.o_FL_PLS_25.electricPower to prl.akaKeel.i_FL_PLS_25.electricPower;
        flow <'FL-PLS-26'> fl_pls_26 of PlsLoad from prl.prlaLongeron.o_FL_PLS_26.structuralLoad to prl.bridgeFitting.i_FL_PLS_26.structuralLoad;
        flow <'FL-PLS-27'> fl_pls_27 of PlsLoad from prl.akaKeel.o_FL_PLS_27.structuralLoad to prl.bridgeFitting.i_FL_PLS_27.structuralLoad;
        flow <'FL-PLS-28'> fl_pls_28 of PlsLoad from prl.bridgeFitting.o_FL_PLS_28.structuralLoad to b_FL_PLS_28.structuralLoad;
        flow <'FL-PLS-29'> fl_pls_29 of PlsData from prl.prlControls.o_FL_PLS_29.dataCommand to b_FL_PLS_29.dataCommand;
        flow <'FL-PLS-30'> fl_pls_30 of EvaManualDrive from b_FL_PLS_30.structuralLoad to prl.prlaLongeron.i_FL_PLS_30.structuralLoad;
        flow <'FL-PLS-31'> fl_pls_31 of PlsPower from b_FL_PLS_31.electricPower to ods.apdsPanels.i_FL_PLS_31.electricPower;
        flow <'FL-PLS-32'> fl_pls_32 of PlsPower from ods.apdsPanels.o_FL_PLS_32.electricPower to ods.apdsAvionics.i_FL_PLS_32.electricPower;
        flow <'FL-PLS-33'> fl_pls_33 of PlsPower from ods.apdsAvionics.o_FL_PLS_33.electricPower to ods.apdsMechanism.i_FL_PLS_33.electricPower;
        flow <'FL-PLS-34'> fl_pls_34 of PlsData from ods.apdsPanels.o_FL_PLS_34.dataCommand to ods.apdsAvionics.i_FL_PLS_34.dataCommand;
        flow <'FL-PLS-35'> fl_pls_35 of PlsData from ods.apdsMechanism.o_FL_PLS_35.dataCommand to ods.apdsAvionics.i_FL_PLS_35.dataCommand;
        flow <'FL-PLS-36'> fl_pls_36 of PlsData from ods.apdsAvionics.o_FL_PLS_36.dataCommand to ods.apdsPanels.i_FL_PLS_36.dataCommand;
        flow <'FL-PLS-37'> fl_pls_37 of PlsPyro from ods.apdsAvionics.o_FL_PLS_37.dataCommand to ods.apdsMechanism.i_FL_PLS_37.dataCommand;
        flow <'FL-PLS-38'> fl_pls_38 of PlsData from ods.apdsAvionics.o_FL_PLS_38.dataCommand to b_FL_PLS_38.dataCommand;
        flow <'FL-PLS-39'> fl_pls_39 of PlsLoad from b_FL_PLS_39.structuralLoad to ods.airlockTruss.i_FL_PLS_39.structuralLoad;
        flow <'FL-PLS-40'> fl_pls_40 of PlsVideo from ods.airlockTruss.o_FL_PLS_40.dataCommand to b_FL_PLS_40.dataCommand;
    }
    // ---- 図217 STR 内部ブロック図：機器
    part def <'EQ-STR-01'> ForwardFuselageShell :> SSD_ALC_SYS_001::Physical::PHY_STR_01 {
        doc /* 前胴の外殻（上部・下部、スキン・ストリンガのパネル、フレーム、隔壁）と前部 RCS モジュールの取付け（機能ブロック SSD-FD-STR-FWD-001、機器 PHY-STR-01） */
        port i_FL_STR_02 : ~AirframeLoadPort;
        port i_FL_STR_13 : ~AirframeLoadPort;
        port i_FL_STR_15 : ~AirframeLoadPort;
        port o_FL_STR_20 : AirframeLoadPort;
        port i_FL_STR_35 : ~AirframeLoadPort;
    }
    part def <'EQ-STR-02'> ForwardEtAttachFitting :> SSD_ALC_SYS_001::Physical::PHY_STR_01 {
        doc /* 前部のオービタ/ET 結合金具（Xo = 378 隔壁と前脚格納部の後方の外板構造）（機能ブロック SSD-FD-STR-FWD-001、機器 PHY-STR-01） */
        port i_FL_STR_01 : ~AirframeLoadPort;
        port o_FL_STR_02 : AirframeLoadPort;
    }
    part def <'EQ-STR-03'> NoseGearWellStructure :> SSD_ALC_SYS_001::Physical::PHY_STR_01 {
        doc /* 前脚格納部の構造（2 本の支持ビーム、ドラッグリンクの支柱、前脚と前脚扉の取付け金具）（機能ブロック SSD-FD-STR-FWD-001、機器 PHY-STR-01） */
        port i_FL_STR_34 : ~AirframeLoadPort;
        port o_FL_STR_35 : AirframeLoadPort;
    }
    part def <'EQ-STR-04'> CrewPressureShell :> SSD_ALC_SYS_001::Physical::PHY_STR_02 {
        doc /* 乗員室の圧力殻（2219 アルミ板の溶接、約 300 の貫通部、3 層）（機能ブロック SSD-FD-STR-CRM-001、機器 PHY-STR-02） */
        port o_FL_STR_12 : CabinPressureLoadPort;
        port o_FL_STR_14 : CabinPressureLoadPort;
        port o_FL_STR_16 : CabinPressureLoadPort;
        port i_FL_STR_18 : ~StructuralLimitDirectivePort;
    }
    part def <'EQ-STR-05'> CrewCabinMounts :> SSD_ALC_SYS_001::Physical::PHY_STR_02 {
        doc /* 乗員室の 4 つの取付点（後端の主取付点 2 つ、鉛直荷重の反力リンク、横荷重の反力）（機能ブロック SSD-FD-STR-CRM-001、機器 PHY-STR-02） */
        port i_FL_STR_12 : ~CabinPressureLoadPort;
        port o_FL_STR_13 : AirframeLoadPort;
    }
    part def <'EQ-STR-06'> WindowPanes :> SSD_ALC_SYS_001::Physical::PHY_STR_02 {
        doc /* 窓（前方 6 枚・頭上 2 枚・後方 2 枚の圧力ペイン・冗長ペイン・熱ペイン、冗長シール）（機能ブロック SSD-FD-STR-CRM-001、機器 PHY-STR-02） */
        port i_FL_STR_14 : ~CabinPressureLoadPort;
        port o_FL_STR_15 : AirframeLoadPort;
    }
    part def <'EQ-STR-07'> SideHatch :> SSD_ALC_SYS_001::Physical::PHY_STR_02 {
        doc /* 側面ハッチ（アダプタリングと 70 本の破断ボルト、ヒンジ、投棄の火工品）（機能ブロック SSD-FD-STR-CRM-001、機器 PHY-STR-02） */
        port i_FL_STR_16 : ~CabinPressureLoadPort;
        port i_FL_STR_17 : ~AirframeLoadPort;
    }
    part def <'EQ-STR-08'> MidfuselageLongerons :> SSD_ALC_SYS_001::Physical::PHY_STR_03 {
        doc /* 中胴の主縦通材（シル・ドアの縦通材、12 の主フレーム、前後端の隔壁との結合）（機能ブロック SSD-FD-STR-MID-001、機器 PHY-STR-03） */
        port i_FL_STR_08 : ~AirframeLoadPort;
        port i_FL_STR_19 : ~StructuralLimitDirectivePort;
        port i_FL_STR_20 : ~AirframeLoadPort;
        port i_FL_STR_26 : ~AirframeLoadPort;
        port i_FL_STR_27 : ~AirframeLoadPort;
        port o_FL_STR_28 : AirframeLoadPort;
        port i_FL_STR_29 : ~EntryHeatInputPort;
        port i_FL_STR_30 : ~AirframeLoadPort;
    }
    part def <'EQ-STR-09'> PayloadBayDoorHinges :> SSD_ALC_SYS_001::Physical::PHY_STR_03 {
        doc /* PLBD のヒンジ 13（固定 5・浮動 8）（機能ブロック SSD-FD-STR-MID-001、機器 PHY-STR-03） */
        port i_FL_STR_25 : ~AirframeLoadPort;
        port o_FL_STR_26 : AirframeLoadPort;
    }
    part def <'EQ-STR-10'> PayloadBayMountingSurface :> SSD_ALC_SYS_001::Physical::PHY_STR_03 {
        doc /* シルの縦通材の取付け面（ペイロード保持ラッチのブリッジ金具、マニピュレータアームの受け台、ODS のトラス）（機能ブロック SSD-FD-STR-MID-001、機器 PHY-STR-03） */
        port i_FL_STR_21 : ~AirframeLoadPort;
        port i_FL_STR_22 : ~AirframeLoadPort;
        port i_FL_STR_23 : ~AirframeLoadPort;
        port i_FL_STR_24 : ~AirframeLoadPort;
    }
    part def <'EQ-STR-11'> MidfuselageSidewall :> SSD_ALC_SYS_001::Physical::PHY_STR_03 {
        doc /* 中胴の側壁（翼の前方、主脚の内側の支え）（機能ブロック SSD-FD-STR-MID-001、機器 PHY-STR-03） */
        port i_FL_STR_32 : ~AirframeLoadPort;
        port i_FL_STR_33 : ~AirframeLoadPort;
    }
    part def <'EQ-STR-12'> AftFuselageShell :> SSD_ALC_SYS_001::Physical::PHY_STR_05 {
        doc /* 後胴の外殻と前部隔壁（機械加工のアルミ外殻、上部推力構造）（機能ブロック SSD-FD-STR-AFT-001、機器 PHY-STR-05） */
        port i_FL_STR_06 : ~SsmeThrustLoadPort;
        port o_FL_STR_07 : SsmeThrustLoadPort;
        port o_FL_STR_08 : AirframeLoadPort;
        port i_FL_STR_11 : ~AirframeLoadPort;
        port i_FL_STR_36 : ~AirframeLoadPort;
        port i_FL_STR_37 : ~AirframeLoadPort;
        port i_FL_STR_39 : ~GroundPurgeAirPort;
    }
    part def <'EQ-STR-13'> ThrustStructure :> SSD_ALC_SYS_001::Physical::PHY_STR_05 {
        doc /* 内部の推力構造（28 本の拡散接合したチタンのトラス部材、SSME 取付け金具、アクチュエータ支持）（機能ブロック SSD-FD-STR-AFT-001、機器 PHY-STR-05） */
        port i_FL_STR_05 : ~SsmeThrustLoadPort;
        port o_FL_STR_06 : SsmeThrustLoadPort;
    }
    part def <'EQ-STR-14'> AftEtAttachFittings :> SSD_ALC_SYS_001::Physical::PHY_STR_05 {
        doc /* 後部のオービタ/ET 結合部（縦通材の金具、2 点）（機能ブロック SSD-FD-STR-AFT-001、機器 PHY-STR-05） */
        port i_FL_STR_03 : ~AirframeLoadPort;
        port o_FL_STR_04 : SsmeThrustLoadPort;
        port i_FL_STR_07 : ~SsmeThrustLoadPort;
    }
    part def <'EQ-STR-15'> PodMountingInterface :> SSD_ALC_SYS_001::Physical::PHY_STR_05 {
        doc /* OMS/RCS ポッドの取付け（ボルト 11 本、ジンバルリングのパッド、RCS ハウジング）（機能ブロック SSD-FD-STR-AFT-001、機器 PHY-STR-05） */
        port i_FL_STR_09 : ~AirframeLoadPort;
        port i_FL_STR_10 : ~AirframeLoadPort;
        port o_FL_STR_11 : AirframeLoadPort;
    }
    part def <'EQ-STR-16'> WingTorqueBox :> SSD_ALC_SYS_001::Physical::PHY_STR_04 {
        doc /* 翼のトルクボックス（4 本の波形アルミの主桁、上下の外板）と胴体への継手（上面の引張ボルト、下面のせん断継手）（機能ブロック SSD-FD-STR-WNG-001、機器 PHY-STR-04） */
        port o_FL_STR_30 : AirframeLoadPort;
        port i_FL_STR_38 : ~EntryHeatInputPort;
    }
    part def <'EQ-STR-17'> WingGearSupport :> SSD_ALC_SYS_001::Physical::PHY_STR_04 {
        doc /* 翼の主脚の支持（構造リブ、主脚のトラニオン・ドラッグリンクの外側の取付け、主脚扉のヒンジ）（機能ブロック SSD-FD-STR-WNG-001、機器 PHY-STR-04） */
        port i_FL_STR_31 : ~AirframeLoadPort;
        port o_FL_STR_32 : AirframeLoadPort;
    }
    part def <'EQ-STR-18'> VerticalTailRoot :> SSD_ALC_SYS_001::Physical::PHY_STR_06 {
        doc /* 垂直尾翼の根元の取付け（前桁の引張の結合ボルト 2 本、後桁のせん断ボルト 8 本）（機能ブロック SSD-FD-STR-WNG-001、機器 PHY-STR-06） */
        port o_FL_STR_36 : AirframeLoadPort;
    }
    part def <'EQ-STR-19'> BodyFlapStructure :> SSD_ALC_SYS_001::Physical::PHY_STR_05 {
        doc /* ボディフラップ（4 つのアクチュエータリブ、後胴の 4 つの回転アクチュエータへの軸受）（機能ブロック SSD-FD-STR-WNG-001、機器 PHY-STR-05） */
        port o_FL_STR_37 : AirframeLoadPort;
    }
    part def <'EQ-STR-20'> StructuralOperationsManagement {
        doc /* 構造運用管理（窓の故障時の客室圧の低下、TPS 接着層の温度と姿勢の管理、荷重・重量・重心の限界の監視）（機能ブロック SSD-FD-STR-OPS-001） */
        port o_FL_STR_18 : StructuralLimitDirectivePort;
        port o_FL_STR_19 : StructuralLimitDirectivePort;
    }
    // ---- 図217 STR 内部ブロック図：接続（StrInterconnection は STR を特化）
    part def StrInterconnection :> STR {
        doc /* 構造（STR）（荷重の流れ）の内部ブロック図（図217）。基の機能ブロック SSD-FD-STR-001。 */
        part redefines fwd {
            part forwardFuselageShell : ForwardFuselageShell;
            part forwardEtAttachFitting : ForwardEtAttachFitting;
            part noseGearWellStructure : NoseGearWellStructure;
        }
        part redefines crm {
            part crewPressureShell : CrewPressureShell;
            part crewCabinMounts[4] : CrewCabinMounts;
            part windowPanes[10] : WindowPanes;
            part sideHatch : SideHatch;
        }
        part redefines mid {
            part midfuselageLongerons : MidfuselageLongerons;
            part payloadBayDoorHinges[13] : PayloadBayDoorHinges;
            part payloadBayMountingSurface : PayloadBayMountingSurface;
            part midfuselageSidewall : MidfuselageSidewall;
        }
        part redefines aft {
            part aftFuselageShell : AftFuselageShell;
            part thrustStructure : ThrustStructure;
            part aftEtAttachFittings[2] : AftEtAttachFittings;
            part podMountingInterface[2] : PodMountingInterface;
        }
        part redefines wng {
            part wingTorqueBox[2] : WingTorqueBox;
            part wingGearSupport[2] : WingGearSupport;
            part verticalTailRoot : VerticalTailRoot;
            part bodyFlapStructure : BodyFlapStructure;
        }
        part redefines ops {
            part structuralOperationsManagement : StructuralOperationsManagement;
        }
        port b_FL_STR_01 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-01（ET：液水タンク前端のオービタ前部結合（ポッド支柱）） */ }
        port b_FL_STR_03 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-03（ET（オービタ/ET 結合の全体、中間タンクの SRB 推力ビームを通る SRB の荷重）） */ }
        port b_FL_STR_04 : SsmeThrustLoadPort { doc /* 枠の外の相手 EB-STR-02（ET：液水タンク後端の 2 つの玉金具（後部結合）） */ }
        port b_FL_STR_05 : ~SsmeThrustLoadPort { doc /* 枠の外の相手 EB-STR-04（MPS：主エンジン本体（SSME 3 基の推力）） */ }
        port b_FL_STR_09 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-05（OMS：推力方向制御（ジンバルリング）） */ }
        port b_FL_STR_10 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-06（RCS：主・バーニア噴射器（後部ポッドの噴射器）） */ }
        port b_FL_STR_17 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-17（乗員系：脱出系（側面ハッチの投棄）） */ }
        port b_FL_STR_21 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-13（ペイロード保持ラッチ（PRLA・AKA）とペイロード） */ }
        port b_FL_STR_22 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-14（MPM・保持ラッチ・投棄（RMS の受け台と MRL）） */ }
        port b_FL_STR_23 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-15（オービタ・ドッキング系（ODS のトラス）） */ }
        port b_FL_STR_24 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-16（ペイロード支援（PDRS・ODS）：マニピュレータアームと格納装置の基部、ODS のトラスの取付け） */ }
        port b_FL_STR_25 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-10（機械系：ペイロードベイドア（13 のヒンジ）） */ }
        port b_FL_STR_27 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-11（機械系：ペイロードベイドアとその作動系（中胴の構造的な支持）） */ }
        port b_FL_STR_28 : AirframeLoadPort { doc /* 枠の外の相手 EB-STR-12（機械系：ベント扉・ET アンビリカル扉（胴体の 14 のベント口）） */ }
        port b_FL_STR_29 : ~EntryHeatInputPort { doc /* 枠の外の相手 EB-STR-08（熱防護系（TPS）：中胴の下面（降下中の温度勾配）） */ }
        port b_FL_STR_31 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-09（機械系：降着装置（前脚・主脚）） */ }
        port b_FL_STR_33 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-09（機械系：降着装置（前脚・主脚）） */ }
        port b_FL_STR_34 : ~AirframeLoadPort { doc /* 枠の外の相手 EB-STR-09（機械系：降着装置（前脚・主脚）） */ }
        port b_FL_STR_38 : ~EntryHeatInputPort { doc /* 枠の外の相手 EB-STR-07（熱防護系（TPS）：外板に施工した断熱材） */ }
        port b_FL_STR_39 : ~GroundPurgeAirPort { doc /* 枠の外の相手 EB-STR-18（打上げ処理システム（KSC）：地上の空調パージ装置） */ }
        flow <'FL-STR-01'> fl_str_01 of AirframeLoad from b_FL_STR_01.structuralLoad to fwd.forwardEtAttachFitting.i_FL_STR_01.structuralLoad;
        flow <'FL-STR-02'> fl_str_02 of AirframeLoad from fwd.forwardEtAttachFitting.o_FL_STR_02.structuralLoad to fwd.forwardFuselageShell.i_FL_STR_02.structuralLoad;
        flow <'FL-STR-03'> fl_str_03 of AirframeLoad from b_FL_STR_03.structuralLoad to aft.aftEtAttachFittings.i_FL_STR_03.structuralLoad;
        flow <'FL-STR-04'> fl_str_04 of SsmeThrustLoad from aft.aftEtAttachFittings.o_FL_STR_04.structuralLoad to b_FL_STR_04.structuralLoad;
        flow <'FL-STR-05'> fl_str_05 from b_FL_STR_05.structuralLoad to aft.thrustStructure.i_FL_STR_05.structuralLoad {
            item :>> payload : SsmeThrustLoad {
                attribute forceMin :> force = 375000 [lbf] { doc /* 力 375,000〜513,250 lbf */ }
                attribute forceMax :> force = 513250 [lbf] { doc /* 力 375,000〜513,250 lbf */ }
            }
        }
        flow <'FL-STR-06'> fl_str_06 of SsmeThrustLoad from aft.thrustStructure.o_FL_STR_06.structuralLoad to aft.aftFuselageShell.i_FL_STR_06.structuralLoad;
        flow <'FL-STR-07'> fl_str_07 of SsmeThrustLoad from aft.aftFuselageShell.o_FL_STR_07.structuralLoad to aft.aftEtAttachFittings.i_FL_STR_07.structuralLoad;
        flow <'FL-STR-08'> fl_str_08 of AirframeLoad from aft.aftFuselageShell.o_FL_STR_08.structuralLoad to mid.midfuselageLongerons.i_FL_STR_08.structuralLoad;
        flow <'FL-STR-09'> fl_str_09 of AirframeLoad from b_FL_STR_09.structuralLoad to aft.podMountingInterface.i_FL_STR_09.structuralLoad;
        flow <'FL-STR-10'> fl_str_10 from b_FL_STR_10.structuralLoad to aft.podMountingInterface.i_FL_STR_10.structuralLoad {
            item :>> payload : AirframeLoad {
                attribute forceNominal :> force = 870 [lbf] { doc /* 力 870 lbf */ }
            }
        }
        flow <'FL-STR-11'> fl_str_11 of AirframeLoad from aft.podMountingInterface.o_FL_STR_11.structuralLoad to aft.aftFuselageShell.i_FL_STR_11.structuralLoad;
        flow <'FL-STR-12'> fl_str_12 from crm.crewPressureShell.o_FL_STR_12.structuralLoad to crm.crewCabinMounts.i_FL_STR_12.structuralLoad {
            item :>> payload : CabinPressureLoad {
                attribute pressureMin :> pressure = 14.5 ['lbf/in²'] { doc /* 圧力 14.5〜14.9 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 14.9 ['lbf/in²'] { doc /* 圧力 14.5〜14.9 psia（絶対圧） */ }
            }
        }
        flow <'FL-STR-13'> fl_str_13 of AirframeLoad from crm.crewCabinMounts.o_FL_STR_13.structuralLoad to fwd.forwardFuselageShell.i_FL_STR_13.structuralLoad;
        flow <'FL-STR-14'> fl_str_14 from crm.crewPressureShell.o_FL_STR_14.structuralLoad to crm.windowPanes.i_FL_STR_14.structuralLoad {
            item :>> payload : CabinPressureLoad {
                attribute pressureNominal :> pressure = 16 ['lbf/in²'] { doc /* 圧力 16 psia（絶対圧） */ }
            }
        }
        flow <'FL-STR-15'> fl_str_15 of AirframeLoad from crm.windowPanes.o_FL_STR_15.structuralLoad to fwd.forwardFuselageShell.i_FL_STR_15.structuralLoad;
        flow <'FL-STR-16'> fl_str_16 from crm.crewPressureShell.o_FL_STR_16.structuralLoad to crm.sideHatch.i_FL_STR_16.structuralLoad {
            item :>> payload : CabinPressureLoad {
                attribute pressureMin :> pressure = 14.5 ['lbf/in²'] { doc /* 圧力 14.5〜14.9 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 14.9 ['lbf/in²'] { doc /* 圧力 14.5〜14.9 psia（絶対圧） */ }
            }
        }
        flow <'FL-STR-17'> fl_str_17 of AirframeLoad from b_FL_STR_17.structuralLoad to crm.sideHatch.i_FL_STR_17.structuralLoad;
        flow <'FL-STR-18'> fl_str_18 from ops.structuralOperationsManagement.o_FL_STR_18.dataCommand to crm.crewPressureShell.i_FL_STR_18.dataCommand {
            item :>> payload : StructuralLimitDirective {
                attribute pressureNominal :> pressure = 10.2 ['lbf/in²'] { doc /* 圧力 10.2 psia（絶対圧） */ }
            }
        }
        flow <'FL-STR-19'> fl_str_19 of StructuralLimitDirective from ops.structuralOperationsManagement.o_FL_STR_19.dataCommand to mid.midfuselageLongerons.i_FL_STR_19.dataCommand;
        flow <'FL-STR-20'> fl_str_20 of AirframeLoad from fwd.forwardFuselageShell.o_FL_STR_20.structuralLoad to mid.midfuselageLongerons.i_FL_STR_20.structuralLoad;
        flow <'FL-STR-21'> fl_str_21 of AirframeLoad from b_FL_STR_21.structuralLoad to mid.payloadBayMountingSurface.i_FL_STR_21.structuralLoad;
        flow <'FL-STR-22'> fl_str_22 of AirframeLoad from b_FL_STR_22.structuralLoad to mid.payloadBayMountingSurface.i_FL_STR_22.structuralLoad;
        flow <'FL-STR-23'> fl_str_23 of AirframeLoad from b_FL_STR_23.structuralLoad to mid.payloadBayMountingSurface.i_FL_STR_23.structuralLoad;
        flow <'FL-STR-24'> fl_str_24 of AirframeLoad from b_FL_STR_24.structuralLoad to mid.payloadBayMountingSurface.i_FL_STR_24.structuralLoad;
        flow <'FL-STR-25'> fl_str_25 of AirframeLoad from b_FL_STR_25.structuralLoad to mid.payloadBayDoorHinges.i_FL_STR_25.structuralLoad;
        flow <'FL-STR-26'> fl_str_26 of AirframeLoad from mid.payloadBayDoorHinges.o_FL_STR_26.structuralLoad to mid.midfuselageLongerons.i_FL_STR_26.structuralLoad;
        flow <'FL-STR-27'> fl_str_27 of AirframeLoad from b_FL_STR_27.structuralLoad to mid.midfuselageLongerons.i_FL_STR_27.structuralLoad;
        flow <'FL-STR-28'> fl_str_28 of AirframeLoad from mid.midfuselageLongerons.o_FL_STR_28.structuralLoad to b_FL_STR_28.structuralLoad;
        flow <'FL-STR-29'> fl_str_29 from b_FL_STR_29.heat to mid.midfuselageLongerons.i_FL_STR_29.heat {
            item :>> payload : EntryHeatInput {
                attribute temperatureMax :> temperature = 350 ['°F_abs'] { doc /* 温度 最大 350°F */ }
            }
        }
        flow <'FL-STR-30'> fl_str_30 of AirframeLoad from wng.wingTorqueBox.o_FL_STR_30.structuralLoad to mid.midfuselageLongerons.i_FL_STR_30.structuralLoad;
        flow <'FL-STR-31'> fl_str_31 of AirframeLoad from b_FL_STR_31.structuralLoad to wng.wingGearSupport.i_FL_STR_31.structuralLoad;
        flow <'FL-STR-32'> fl_str_32 of AirframeLoad from wng.wingGearSupport.o_FL_STR_32.structuralLoad to mid.midfuselageSidewall.i_FL_STR_32.structuralLoad;
        flow <'FL-STR-33'> fl_str_33 of AirframeLoad from b_FL_STR_33.structuralLoad to mid.midfuselageSidewall.i_FL_STR_33.structuralLoad;
        flow <'FL-STR-34'> fl_str_34 from b_FL_STR_34.structuralLoad to fwd.noseGearWellStructure.i_FL_STR_34.structuralLoad {
            item :>> payload : AirframeLoad {
                attribute forceMax :> force = 90000 [lbf] { doc /* 力 最大 90,000 lbf */ }
            }
        }
        flow <'FL-STR-35'> fl_str_35 of AirframeLoad from fwd.noseGearWellStructure.o_FL_STR_35.structuralLoad to fwd.forwardFuselageShell.i_FL_STR_35.structuralLoad;
        flow <'FL-STR-36'> fl_str_36 of AirframeLoad from wng.verticalTailRoot.o_FL_STR_36.structuralLoad to aft.aftFuselageShell.i_FL_STR_36.structuralLoad;
        flow <'FL-STR-37'> fl_str_37 of AirframeLoad from wng.bodyFlapStructure.o_FL_STR_37.structuralLoad to aft.aftFuselageShell.i_FL_STR_37.structuralLoad;
        flow <'FL-STR-38'> fl_str_38 from b_FL_STR_38.heat to wng.wingTorqueBox.i_FL_STR_38.heat {
            item :>> payload : EntryHeatInput {
                attribute temperatureMax :> temperature = 350 ['°F_abs'] { doc /* 温度 最大 350°F */ }
            }
        }
        flow <'FL-STR-39'> fl_str_39 of GroundPurgeAir from b_FL_STR_39.fluid to aft.aftFuselageShell.i_FL_STR_39.fluid;
    }
    // ---- 図218 CREW 内部ブロック図：機器
    part def <'EQ-CREW-01'> SideHatchJettison :> SSD_ALC_SYS_001::Physical::PHY_CREW_03 {
        doc /* 側面ハッチと投棄の火工品（線形成形爆薬4・膨張チューブ2組・スラスタパック3）（機能ブロック SSD-FD-CREW-ESC-001、機器 PHY-CREW-03） */
        port o_FL_CREW_07 : EscapeLoadPort;
        port i_FL_CREW_17 : ~EscapePyroImpulsePort;
    }
    part def <'EQ-CREW-02'> THandleBox :> SSD_ALC_SYS_001::Physical::PHY_CREW_03 {
        doc /* T ハンドルの箱（前方：ハッチ投棄、後方：キャビンベント。安全ピン）（機能ブロック SSD-FD-CREW-ESC-001、機器 PHY-CREW-03） */
        port i_FL_CREW_15 : ~CrewDirectivePort;
        port o_FL_CREW_16 : EscapePyroImpulsePort;
        port o_FL_CREW_17 : EscapePyroImpulsePort;
    }
    part def <'EQ-CREW-03'> PyroVentValve :> SSD_ALC_SYS_001::Physical::PHY_CREW_03 {
        doc /* キャビンベント（パイロベントバルブ、15 平方 inch の穴）（機能ブロック SSD-FD-CREW-ESC-001、機器 PHY-CREW-03） */
        port i_FL_CREW_16 : ~EscapePyroImpulsePort;
    }
    part def <'EQ-CREW-04'> EgressPole :> SSD_ALC_SYS_001::Physical::PHY_CREW_04 {
        doc /* 脱出ポール（ばね式の伸縮する湾曲した筒、ランヤード8本のマガジン）（機能ブロック SSD-FD-CREW-ESC-001、機器 PHY-CREW-04） */
        port o_FL_CREW_19 : EscapeLoadPort;
    }
    part def <'EQ-CREW-05'> EgressSlide :> SSD_ALC_SYS_001::Physical::PHY_CREW_04 {
        doc /* 緊急脱出スライド（膨張式、アルゴンボトル 3,000 psi）（機能ブロック SSD-FD-CREW-ESC-001、機器 PHY-CREW-04） */
    }
    part def <'EQ-CREW-06'> OverheadEscapeWindow :> SSD_ALC_SYS_001::Physical::PHY_CREW_05 {
        doc /* 頭上脱出窓（窓 8）の投棄系（リングハンドル、膨張チューブ、破断ボルト）（機能ブロック SSD-FD-CREW-ESC-001、機器 PHY-CREW-05） */
        port o_FL_CREW_08 : EscapeLoadPort;
        port o_FL_CREW_20 : EscapeLoadPort;
    }
    part def <'EQ-CREW-07'> SkyGenie :> SSD_ALC_SYS_001::Physical::PHY_CREW_05 {
        doc /* 緊急降下器（Sky Genie）（機能ブロック SSD-FD-CREW-ESC-001、機器 PHY-CREW-05） */
        port i_FL_CREW_20 : ~EscapeLoadPort;
    }
    part def <'EQ-CREW-08'> Aces {
        doc /* 先進乗員脱出服 ACES（服制御器・O2 マニホールド・ヘルメットと通信キャップ・BIP）（機能ブロック SSD-FD-CREW-ESC-001） */
        port i_FL_CREW_04 : ~EscapeOxygenPort;
        port i_FL_CREW_18 : ~EscapeOxygenPort;
    }
    part def <'EQ-CREW-09'> ParachuteHarnessEos {
        doc /* パラシュートハーネスと非常用酸素系 EOS（高圧ボトル2本、パラシュートパック、抽出ブライドル）（機能ブロック SSD-FD-CREW-ESC-001） */
        port i_FL_CREW_14 : ~CrewDirectivePort;
        port o_FL_CREW_18 : EscapeOxygenPort;
        port i_FL_CREW_19 : ~EscapeLoadPort;
    }
    part def <'EQ-CREW-10'> PersonalHygieneHose {
        doc /* 個人衛生ホース（PHH）（機能ブロック SSD-FD-CREW-HAB-001） */
        port i_FL_CREW_01 : ~CrewWaterPort;
        port i_FL_CREW_02 : ~CrewWaterPort;
    }
    part def <'EQ-CREW-11'> HygieneSupplies {
        doc /* 個人の衛生用品（衛生キット・ウェットワイプなど）（機能ブロック SSD-FD-CREW-HAB-001） */
        port i_FL_CREW_11 : ~CrewStowedMassPort;
    }
    part def <'EQ-CREW-12'> SleepStation :> SSD_ALC_SYS_001::Physical::PHY_CREW_02 {
        doc /* 睡眠設備（寝袋、4段の固定睡眠ステーション：各段に照明と換気の吸気口・排気口）（機能ブロック SSD-FD-CREW-HAB-001、機器 PHY-CREW-02） */
    }
    part def <'EQ-CREW-13'> CrewSeat :> SSD_ALC_SYS_001::Physical::PHY_CREW_01 {
        doc /* 乗員座席（CDR・PLT の座席は ac モータで Z・X 方向に動く）（機能ブロック SSD-FD-CREW-STW-001、機器 PHY-CREW-01） */
    }
    part def <'EQ-CREW-14'> ModularLockers {
        doc /* モジュラーロッカー（中甲板に 33＋11 個、1つ 2 ft3・68 lb 以下）（機能ブロック SSD-FD-CREW-STW-001） */
        port o_FL_CREW_11 : CrewStowedMassPort;
        port o_FL_CREW_12 : CrewStowedMassPort;
    }
    part def <'EQ-CREW-15'> SomsKit {
        doc /* SOMS の医療キット（サブパック群・診断装置）（機能ブロック SSD-FD-CREW-MED-001） */
        port i_FL_CREW_12 : ~CrewStowedMassPort;
        port i_FL_CREW_13 : ~CrewDirectivePort;
    }
    part def <'EQ-CREW-16'> Resuscitator {
        doc /* 蘇生器（100% の補助酸素、マスク・6 ft のホース）（機能ブロック SSD-FD-CREW-MED-001） */
        port i_FL_CREW_05 : ~EscapeOxygenPort;
    }
    part def <'EQ-CREW-17'> EmergencyEyewash {
        doc /* 汚染除去キット CCK の非常用洗眼器（SEE）（機能ブロック SSD-FD-CREW-MED-001） */
        port i_FL_CREW_03 : ~CrewWaterPort;
    }
    part def <'EQ-CREW-18'> BioInstrumentation {
        doc /* 生体計測系 OBS（電極・信号調整器・バイオメディカルケーブル）（機能ブロック SSD-FD-CREW-MED-001） */
        port o_FL_CREW_06 : EcgSignalPort;
    }
    part def <'EQ-CREW-19'> InteriorFloodlights {
        doc /* 室内の投光照明（中甲板天井の8灯ほか）（機能ブロック SSD-FD-CREW-LTG-001） */
    }
    part def <'EQ-CREW-20'> EmergencyLights {
        doc /* 非常照明の器具（別の電源入力、パネル C3・ML18F のスイッチ）（機能ブロック SSD-FD-CREW-LTG-001） */
        port i_FL_CREW_09 : ~CrewLightingPowerPort;
    }
    part def <'EQ-CREW-21'> PayloadBayFloodlights {
        doc /* ペイロードベイの投光器（メタルハライド灯・DC/DC 電源・投光器電子組立）（機能ブロック SSD-FD-CREW-LTG-001） */
        port i_FL_CREW_10 : ~CrewLightingPowerPort;
    }
    part def <'EQ-CREW-22'> CrewOperationsManagement {
        doc /* 乗員系運用管理（ベイルアウトの手順の指示、航空医官との相談）（機能ブロック SSD-FD-CREW-OPS-001） */
        port o_FL_CREW_13 : CrewDirectivePort;
        port o_FL_CREW_14 : CrewDirectivePort;
        port o_FL_CREW_15 : CrewDirectivePort;
    }
    // ---- 図218 CREW 内部ブロック図：接続（CrewInterconnection は CREW を特化）
    part def CrewInterconnection :> CREW {
        doc /* 乗員系（CREW）（座席・与圧服・脱出・照明・収納）の内部ブロック図（図218）。基の機能ブロック SSD-FD-CREW-001。 */
        part redefines esc {
            part sideHatchJettison : SideHatchJettison;
            part tHandleBox : THandleBox;
            part pyroVentValve : PyroVentValve;
            part egressPole : EgressPole;
            part egressSlide : EgressSlide;
            part overheadEscapeWindow : OverheadEscapeWindow;
            part skyGenie[7] : SkyGenie;
            part aces : Aces;
            part parachuteHarnessEos : ParachuteHarnessEos;
        }
        part redefines hab {
            part personalHygieneHose : PersonalHygieneHose;
            part hygieneSupplies : HygieneSupplies;
            part sleepStation : SleepStation;
        }
        part redefines stw {
            part crewSeat : CrewSeat;
            part modularLockers : ModularLockers;
        }
        part redefines med {
            part somsKit : SomsKit;
            part resuscitator : Resuscitator;
            part emergencyEyewash : EmergencyEyewash;
            part bioInstrumentation : BioInstrumentation;
        }
        part redefines ltg {
            part interiorFloodlights : InteriorFloodlights;
            part emergencyLights : EmergencyLights;
            part payloadBayFloodlights : PayloadBayFloodlights;
        }
        part redefines ops {
            part crewOperationsManagement : CrewOperationsManagement;
        }
        port b_FL_CREW_01 : ~CrewWaterPort { doc /* 枠の外の相手 EB-CREW-01（ECLSS：ギャレー給水（補助ポート AUX PORT QD、MV2 弁で温度を調整）） */ }
        port b_FL_CREW_02 : ~CrewWaterPort { doc /* 枠の外の相手 EB-CREW-02（ECLSS：ギャレー給水（上位の IF-ORB-44。同じ補助ポートの水）） */ }
        port b_FL_CREW_03 : ~CrewWaterPort { doc /* 枠の外の相手 EB-CREW-03（ECLSS：ギャレーの清水（洗眼器へ）） */ }
        port b_FL_CREW_04 : ~EscapeOxygenPort { doc /* 枠の外の相手 EB-CREW-04（ECLSS：酸素供給（オービタの O2 供給ホース）） */ }
        port b_FL_CREW_05 : ~EscapeOxygenPort { doc /* 枠の外の相手 EB-CREW-05（ECLSS：酸素供給（中甲板パネル MO32M・MO69M、飛行甲板パネル C6）） */ }
        port b_FL_CREW_06 : EcgSignalPort { doc /* 枠の外の相手 EB-CREW-06（C&T：計装・ペイロード通信（アビオニクスでのデジタル化と下り回線・記録）） */ }
        port b_FL_CREW_07 : EscapeLoadPort { doc /* 枠の外の相手 EB-CREW-07（STR：乗員室（与圧）・窓（ハッチのアダプタリング、窓 8 の窓枠）） */ }
        port b_FL_CREW_08 : EscapeLoadPort { doc /* 枠の外の相手 EB-CREW-07（STR：乗員室（与圧）・窓（ハッチのアダプタリング、窓 8 の窓枠）） */ }
        port b_FL_CREW_09 : ~CrewLightingPowerPort { doc /* 枠の外の相手 EB-CREW-08（EPS：直流配電（必須母線、中部電力制御組立）） */ }
        port b_FL_CREW_10 : ~CrewLightingPowerPort { doc /* 枠の外の相手 EB-CREW-08（EPS：直流配電（必須母線、中部電力制御組立）） */ }
        flow <'FL-CREW-01'> fl_crew_01 from b_FL_CREW_01.fluid to hab.personalHygieneHose.i_FL_CREW_01.fluid {
            item :>> payload : CrewWater {
                attribute temperatureMin :> temperature = 70 ['°F_abs'] { doc /* 温度 70〜120°F */ }
                attribute temperatureMax :> temperature = 120 ['°F_abs'] { doc /* 温度 70〜120°F */ }
            }
        }
        flow <'FL-CREW-02'> fl_crew_02 from b_FL_CREW_02.fluid to hab.personalHygieneHose.i_FL_CREW_02.fluid {
            item :>> payload : CrewWater {
                attribute temperatureMin :> temperature = 70 ['°F_abs'] { doc /* 温度 70〜120°F */ }
                attribute temperatureMax :> temperature = 120 ['°F_abs'] { doc /* 温度 70〜120°F */ }
            }
        }
        flow <'FL-CREW-03'> fl_crew_03 of CrewWater from b_FL_CREW_03.fluid to med.emergencyEyewash.i_FL_CREW_03.fluid;
        flow <'FL-CREW-04'> fl_crew_04 of EscapeOxygen from b_FL_CREW_04.fluid to esc.aces.i_FL_CREW_04.fluid;
        flow <'FL-CREW-05'> fl_crew_05 of EscapeOxygen from b_FL_CREW_05.fluid to med.resuscitator.i_FL_CREW_05.fluid;
        flow <'FL-CREW-06'> fl_crew_06 from med.bioInstrumentation.o_FL_CREW_06.dataCommand to b_FL_CREW_06.dataCommand {
            item :>> payload : EcgSignal {
                attribute voltageMin :> voltage = 0 [V] { doc /* 電圧 0〜5 V */ }
                attribute voltageMax :> voltage = 5 [V] { doc /* 電圧 0〜5 V */ }
            }
        }
        flow <'FL-CREW-07'> fl_crew_07 of EscapeLoad from esc.sideHatchJettison.o_FL_CREW_07.structuralLoad to b_FL_CREW_07.structuralLoad;
        flow <'FL-CREW-08'> fl_crew_08 of EscapeLoad from esc.overheadEscapeWindow.o_FL_CREW_08.structuralLoad to b_FL_CREW_08.structuralLoad;
        flow <'FL-CREW-09'> fl_crew_09 of CrewLightingPower from b_FL_CREW_09.electricPower to ltg.emergencyLights.i_FL_CREW_09.electricPower;
        flow <'FL-CREW-10'> fl_crew_10 from b_FL_CREW_10.electricPower to ltg.payloadBayFloodlights.i_FL_CREW_10.electricPower {
            item :>> payload : CrewLightingPower {
                attribute currentNominal :> current = 10 [A] { doc /* 電流 10 A */ }
            }
        }
        flow <'FL-CREW-11'> fl_crew_11 from stw.modularLockers.o_FL_CREW_11.structuralLoad to hab.hygieneSupplies.i_FL_CREW_11.structuralLoad {
            item :>> payload : CrewStowedMass {
                attribute massMax :> mass = 68 [lb] { doc /* 質量 最大 68 lb */ }
            }
        }
        flow <'FL-CREW-12'> fl_crew_12 from stw.modularLockers.o_FL_CREW_12.structuralLoad to med.somsKit.i_FL_CREW_12.structuralLoad {
            item :>> payload : CrewStowedMass {
                attribute massMax :> mass = 68 [lb] { doc /* 質量 最大 68 lb */ }
            }
        }
        flow <'FL-CREW-13'> fl_crew_13 of CrewDirective from ops.crewOperationsManagement.o_FL_CREW_13.dataCommand to med.somsKit.i_FL_CREW_13.dataCommand;
        flow <'FL-CREW-14'> fl_crew_14 of CrewDirective from ops.crewOperationsManagement.o_FL_CREW_14.dataCommand to esc.parachuteHarnessEos.i_FL_CREW_14.dataCommand;
        flow <'FL-CREW-15'> fl_crew_15 of CrewDirective from ops.crewOperationsManagement.o_FL_CREW_15.dataCommand to esc.tHandleBox.i_FL_CREW_15.dataCommand;
        flow <'FL-CREW-16'> fl_crew_16 of EscapePyroImpulse from esc.tHandleBox.o_FL_CREW_16.dataCommand to esc.pyroVentValve.i_FL_CREW_16.dataCommand;
        flow <'FL-CREW-17'> fl_crew_17 of EscapePyroImpulse from esc.tHandleBox.o_FL_CREW_17.dataCommand to esc.sideHatchJettison.i_FL_CREW_17.dataCommand;
        flow <'FL-CREW-18'> fl_crew_18 from esc.parachuteHarnessEos.o_FL_CREW_18.fluid to esc.aces.i_FL_CREW_18.fluid {
            item :>> payload : EscapeOxygen {
                attribute pressureNominal :> pressure = 70 ['lbf/in²'] { doc /* 圧力 70 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-CREW-19'> fl_crew_19 of EscapeLoad from esc.egressPole.o_FL_CREW_19.structuralLoad to esc.parachuteHarnessEos.i_FL_CREW_19.structuralLoad;
        flow <'FL-CREW-20'> fl_crew_20 of EscapeLoad from esc.overheadEscapeWindow.o_FL_CREW_20.structuralLoad to esc.skyGenie.i_FL_CREW_20.structuralLoad;
    }
    // ---- 流れ → IF（詳細化）
    package FlowRefinement {
        #refinement dependency <'FL-MECH-01>IF-MECH-01'> from MechInterconnection::fl_mech_01 to SSD_BLK_SYS_001::ORB::IF_MECH_01;
        #refinement dependency <'FL-MECH-03>IF-DPS-10'> from MechInterconnection::fl_mech_03 to SSD_BLK_SYS_001::ORB::IF_DPS_10;
        #refinement dependency <'FL-MECH-08>IF-MECH-05'> from MechInterconnection::fl_mech_08 to SSD_BLK_SYS_001::MECH::IF_MECH_05;
        #refinement dependency <'FL-MECH-09>IF-MECH-05'> from MechInterconnection::fl_mech_09 to SSD_BLK_SYS_001::MECH::IF_MECH_05;
        #refinement dependency <'FL-MECH-10>IF-MECH-05'> from MechInterconnection::fl_mech_10 to SSD_BLK_SYS_001::MECH::IF_MECH_05;
        #refinement dependency <'FL-MECH-13>IF-ORB-38'> from MechInterconnection::fl_mech_13 to SSD_BLK_SYS_001::ORB::IF_ORB_38;
        #refinement dependency <'FL-MECH-14>IF-MECH-02'> from MechInterconnection::fl_mech_14 to SSD_BLK_SYS_001::ORB::IF_MECH_02;
        #refinement dependency <'FL-MECH-15>IF-EVA-11'> from MechInterconnection::fl_mech_15 to SSD_BLK_SYS_001::ORB::IF_EVA_11;
        #refinement dependency <'FL-MECH-16>IF-MECH-06'> from MechInterconnection::fl_mech_16 to SSD_BLK_SYS_001::MECH::IF_MECH_06;
        #refinement dependency <'FL-MECH-17>IF-MECH-06'> from MechInterconnection::fl_mech_17 to SSD_BLK_SYS_001::MECH::IF_MECH_06;
        #refinement dependency <'FL-MECH-18>IF-MECH-06'> from MechInterconnection::fl_mech_18 to SSD_BLK_SYS_001::MECH::IF_MECH_06;
        #refinement dependency <'FL-MECH-19>IF-MECH-06'> from MechInterconnection::fl_mech_19 to SSD_BLK_SYS_001::MECH::IF_MECH_06;
        #refinement dependency <'FL-MECH-22>IF-MECH-04'> from MechInterconnection::fl_mech_22 to SSD_BLK_SYS_001::ORB::IF_MECH_04;
        #refinement dependency <'FL-MECH-23>IF-ORB-40'> from MechInterconnection::fl_mech_23 to SSD_BLK_SYS_001::ORB::IF_ORB_40;
        #refinement dependency <'FL-MECH-24>IF-MECH-10'> from MechInterconnection::fl_mech_24 to SSD_BLK_SYS_001::MECH::IF_MECH_10;
        #refinement dependency <'FL-MECH-25>IF-MECH-08'> from MechInterconnection::fl_mech_25 to SSD_BLK_SYS_001::MECH::IF_MECH_08;
        #refinement dependency <'FL-MECH-26>IF-ORB-39'> from MechInterconnection::fl_mech_26 to SSD_BLK_SYS_001::ORB::IF_ORB_39;
        #refinement dependency <'FL-MECH-31>IF-MECH-03'> from MechInterconnection::fl_mech_31 to SSD_BLK_SYS_001::ORB::IF_MECH_03;
        #refinement dependency <'FL-MECH-32>IF-MECH-03'> from MechInterconnection::fl_mech_32 to SSD_BLK_SYS_001::ORB::IF_MECH_03;
        #refinement dependency <'FL-MECH-33>IF-MECH-07'> from MechInterconnection::fl_mech_33 to SSD_BLK_SYS_001::MECH::IF_MECH_07;
        #refinement dependency <'FL-MECH-34>IF-MECH-07'> from MechInterconnection::fl_mech_34 to SSD_BLK_SYS_001::MECH::IF_MECH_07;
        #refinement dependency <'FL-MECH-35>IF-MECH-07'> from MechInterconnection::fl_mech_35 to SSD_BLK_SYS_001::MECH::IF_MECH_07;
        #refinement dependency <'FL-MECH-36>IF-APU-11'> from MechInterconnection::fl_mech_36 to SSD_BLK_SYS_001::ORB::IF_APU_11;
        #refinement dependency <'FL-MECH-38>IF-APU-11'> from MechInterconnection::fl_mech_38 to SSD_BLK_SYS_001::ORB::IF_APU_11;
        #refinement dependency <'FL-MECH-39>IF-ORB-14'> from MechInterconnection::fl_mech_39 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-MECH-42>IF-MECH-09'> from MechInterconnection::fl_mech_42 to SSD_BLK_SYS_001::MECH::IF_MECH_09;
        #refinement dependency <'FL-CW-01>IF-CW-01'> from CwInterconnection::fl_cw_01 to SSD_BLK_SYS_001::ORB::IF_CW_01;
        #refinement dependency <'FL-CW-02>IF-CW-01'> from CwInterconnection::fl_cw_02 to SSD_BLK_SYS_001::ORB::IF_CW_01;
        #refinement dependency <'FL-CW-05>IF-CW-02'> from CwInterconnection::fl_cw_05 to SSD_BLK_SYS_001::ORB::IF_CW_02;
        #refinement dependency <'FL-CW-06>IF-APU-15'> from CwInterconnection::fl_cw_06 to SSD_BLK_SYS_001::ORB::IF_APU_15;
        #refinement dependency <'FL-CW-07>IF-APU-16'> from CwInterconnection::fl_cw_07 to SSD_BLK_SYS_001::ORB::IF_APU_16;
        #refinement dependency <'FL-CW-08>IF-MPS-07'> from CwInterconnection::fl_cw_08 to SSD_BLK_SYS_001::ORB::IF_MPS_07;
        #refinement dependency <'FL-CW-09>IF-MPS-08'> from CwInterconnection::fl_cw_09 to SSD_BLK_SYS_001::ORB::IF_MPS_08;
        #refinement dependency <'FL-CW-10>IF-OMS-14'> from CwInterconnection::fl_cw_10 to SSD_BLK_SYS_001::ORB::IF_OMS_14;
        #refinement dependency <'FL-CW-11>IF-OMS-15'> from CwInterconnection::fl_cw_11 to SSD_BLK_SYS_001::ORB::IF_OMS_15;
        #refinement dependency <'FL-CW-12>IF-OMS-16'> from CwInterconnection::fl_cw_12 to SSD_BLK_SYS_001::ORB::IF_OMS_16;
        #refinement dependency <'FL-CW-13>IF-RCS-12'> from CwInterconnection::fl_cw_13 to SSD_BLK_SYS_001::ORB::IF_RCS_12;
        #refinement dependency <'FL-CW-14>IF-RCS-13'> from CwInterconnection::fl_cw_14 to SSD_BLK_SYS_001::ORB::IF_RCS_13;
        #refinement dependency <'FL-CW-15>IF-GNC-20'> from CwInterconnection::fl_cw_15 to SSD_BLK_SYS_001::ORB::IF_GNC_20;
        #refinement dependency <'FL-CW-16>IF-DPS-11'> from CwInterconnection::fl_cw_16 to SSD_BLK_SYS_001::ORB::IF_DPS_11;
        #refinement dependency <'FL-CW-17>IF-ORB-41'> from CwInterconnection::fl_cw_17 to SSD_BLK_SYS_001::ORB::IF_ORB_41;
        #refinement dependency <'FL-CW-21>IF-CW-04'> from CwInterconnection::fl_cw_21 to SSD_BLK_SYS_001::CW::IF_CW_04;
        #refinement dependency <'FL-CW-22>IF-CW-04'> from CwInterconnection::fl_cw_22 to SSD_BLK_SYS_001::CW::IF_CW_04;
        #refinement dependency <'FL-CW-23>IF-CW-04'> from CwInterconnection::fl_cw_23 to SSD_BLK_SYS_001::CW::IF_CW_04;
        #refinement dependency <'FL-CW-24>IF-CW-05'> from CwInterconnection::fl_cw_24 to SSD_BLK_SYS_001::CW::IF_CW_05;
        #refinement dependency <'FL-CW-25>IF-CW-05'> from CwInterconnection::fl_cw_25 to SSD_BLK_SYS_001::CW::IF_CW_05;
        #refinement dependency <'FL-CW-26>IF-CW-05'> from CwInterconnection::fl_cw_26 to SSD_BLK_SYS_001::CW::IF_CW_05;
        #refinement dependency <'FL-CW-27>IF-CW-06'> from CwInterconnection::fl_cw_27 to SSD_BLK_SYS_001::CW::IF_CW_06;
        #refinement dependency <'FL-CW-28>IF-CW-06'> from CwInterconnection::fl_cw_28 to SSD_BLK_SYS_001::CW::IF_CW_06;
        #refinement dependency <'FL-CW-29>IF-ORB-42'> from CwInterconnection::fl_cw_29 to SSD_BLK_SYS_001::ORB::IF_ORB_42;
        #refinement dependency <'FL-CW-30>IF-ORB-42'> from CwInterconnection::fl_cw_30 to SSD_BLK_SYS_001::ORB::IF_ORB_42;
        #refinement dependency <'FL-CW-31>IF-DPS-12'> from CwInterconnection::fl_cw_31 to SSD_BLK_SYS_001::ORB::IF_DPS_12;
        #refinement dependency <'FL-CW-32>IF-RCS-15'> from CwInterconnection::fl_cw_32 to SSD_BLK_SYS_001::ORB::IF_RCS_15;
        #refinement dependency <'FL-CW-33>IF-CW-07'> from CwInterconnection::fl_cw_33 to SSD_BLK_SYS_001::CW::IF_CW_07;
        #refinement dependency <'FL-CW-34>IF-CW-07'> from CwInterconnection::fl_cw_34 to SSD_BLK_SYS_001::CW::IF_CW_07;
        #refinement dependency <'FL-CW-35>IF-CW-07'> from CwInterconnection::fl_cw_35 to SSD_BLK_SYS_001::CW::IF_CW_07;
        #refinement dependency <'FL-CW-36>IF-CW-08'> from CwInterconnection::fl_cw_36 to SSD_BLK_SYS_001::CW::IF_CW_08;
        #refinement dependency <'FL-CW-37>IF-CW-09'> from CwInterconnection::fl_cw_37 to SSD_BLK_SYS_001::CW::IF_CW_09;
        #refinement dependency <'FL-CW-38>IF-EVA-15'> from CwInterconnection::fl_cw_38 to SSD_BLK_SYS_001::ORB::IF_EVA_15;
        #refinement dependency <'FL-CW-39>IF-CW-03'> from CwInterconnection::fl_cw_39 to SSD_BLK_SYS_001::ORB::IF_CW_03;
        #refinement dependency <'FL-CW-40>IF-CW-03'> from CwInterconnection::fl_cw_40 to SSD_BLK_SYS_001::ORB::IF_CW_03;
        #refinement dependency <'FL-CW-48>IF-CT-09'> from CwInterconnection::fl_cw_48 to SSD_BLK_SYS_001::ORB::IF_CT_09;
        #refinement dependency <'FL-CW-49>IF-ORB-43'> from CwInterconnection::fl_cw_49 to SSD_BLK_SYS_001::ORB::IF_ORB_43;
        #refinement dependency <'FL-PLS-05>IF-PLS-01'> from PlsInterconnection::fl_pls_05 to SSD_BLK_SYS_001::ORB::IF_PLS_01;
        #refinement dependency <'FL-PLS-06>IF-PLS-01'> from PlsInterconnection::fl_pls_06 to SSD_BLK_SYS_001::ORB::IF_PLS_01;
        #refinement dependency <'FL-PLS-08>IF-PLS-06'> from PlsInterconnection::fl_pls_08 to SSD_BLK_SYS_001::PLS::IF_PLS_06;
        #refinement dependency <'FL-PLS-09>IF-PLS-06'> from PlsInterconnection::fl_pls_09 to SSD_BLK_SYS_001::PLS::IF_PLS_06;
        #refinement dependency <'FL-PLS-10>IF-PLS-06'> from PlsInterconnection::fl_pls_10 to SSD_BLK_SYS_001::PLS::IF_PLS_06;
        #refinement dependency <'FL-PLS-11>IF-PLS-06'> from PlsInterconnection::fl_pls_11 to SSD_BLK_SYS_001::PLS::IF_PLS_06;
        #refinement dependency <'FL-PLS-13>IF-PLS-08'> from PlsInterconnection::fl_pls_13 to SSD_BLK_SYS_001::PLS::IF_PLS_08;
        #refinement dependency <'FL-PLS-14>IF-DPS-13'> from PlsInterconnection::fl_pls_14 to SSD_BLK_SYS_001::ORB::IF_DPS_13;
        #refinement dependency <'FL-PLS-15>IF-ORB-48'> from PlsInterconnection::fl_pls_15 to SSD_BLK_SYS_001::ORB::IF_ORB_48;
        #refinement dependency <'FL-PLS-16>IF-CT-11'> from PlsInterconnection::fl_pls_16 to SSD_BLK_SYS_001::ORB::IF_CT_11;
        #refinement dependency <'FL-PLS-18>IF-PLS-07'> from PlsInterconnection::fl_pls_18 to SSD_BLK_SYS_001::PLS::IF_PLS_07;
        #refinement dependency <'FL-PLS-19>IF-PLS-03'> from PlsInterconnection::fl_pls_19 to SSD_BLK_SYS_001::ORB::IF_PLS_03;
        #refinement dependency <'FL-PLS-20>IF-ORB-47'> from PlsInterconnection::fl_pls_20 to SSD_BLK_SYS_001::ORB::IF_ORB_47;
        #refinement dependency <'FL-PLS-22>IF-ORB-48'> from PlsInterconnection::fl_pls_22 to SSD_BLK_SYS_001::ORB::IF_ORB_48;
        #refinement dependency <'FL-PLS-23>IF-PLS-09'> from PlsInterconnection::fl_pls_23 to SSD_BLK_SYS_001::PLS::IF_PLS_09;
        #refinement dependency <'FL-PLS-28>IF-PLS-04'> from PlsInterconnection::fl_pls_28 to SSD_BLK_SYS_001::ORB::IF_PLS_04;
        #refinement dependency <'FL-PLS-29>IF-ORB-48'> from PlsInterconnection::fl_pls_29 to SSD_BLK_SYS_001::ORB::IF_ORB_48;
        #refinement dependency <'FL-PLS-30>IF-EVA-12'> from PlsInterconnection::fl_pls_30 to SSD_BLK_SYS_001::ORB::IF_EVA_12;
        #refinement dependency <'FL-PLS-31>IF-PLS-02'> from PlsInterconnection::fl_pls_31 to SSD_BLK_SYS_001::ORB::IF_PLS_02;
        #refinement dependency <'FL-PLS-38>IF-ORB-48'> from PlsInterconnection::fl_pls_38 to SSD_BLK_SYS_001::ORB::IF_ORB_48;
        #refinement dependency <'FL-PLS-39>IF-PLS-05'> from PlsInterconnection::fl_pls_39 to SSD_BLK_SYS_001::ORB::IF_PLS_05;
        #refinement dependency <'FL-PLS-40>IF-ORB-49'> from PlsInterconnection::fl_pls_40 to SSD_BLK_SYS_001::ORB::IF_ORB_49;
        #refinement dependency <'FL-STR-01>IF-STR-01'> from StrInterconnection::fl_str_01 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_STR_01;
        #refinement dependency <'FL-STR-03>IF-ORB-36'> from StrInterconnection::fl_str_03 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_36;
        #refinement dependency <'FL-STR-04>IF-STR-02'> from StrInterconnection::fl_str_04 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_STR_02;
        #refinement dependency <'FL-STR-05>IF-MPS-22'> from StrInterconnection::fl_str_05 to SSD_BLK_SYS_001::ORB::IF_MPS_22;
        #refinement dependency <'FL-STR-08>IF-STR-06'> from StrInterconnection::fl_str_08 to SSD_BLK_SYS_001::STR::IF_STR_06;
        #refinement dependency <'FL-STR-09>IF-OMS-18'> from StrInterconnection::fl_str_09 to SSD_BLK_SYS_001::ORB::IF_OMS_18;
        #refinement dependency <'FL-STR-10>IF-RCS-20'> from StrInterconnection::fl_str_10 to SSD_BLK_SYS_001::ORB::IF_RCS_20;
        #refinement dependency <'FL-STR-13>IF-STR-04'> from StrInterconnection::fl_str_13 to SSD_BLK_SYS_001::STR::IF_STR_04;
        #refinement dependency <'FL-STR-15>IF-STR-04'> from StrInterconnection::fl_str_15 to SSD_BLK_SYS_001::STR::IF_STR_04;
        #refinement dependency <'FL-STR-17>IF-CREW-07'> from StrInterconnection::fl_str_17 to SSD_BLK_SYS_001::ORB::IF_CREW_07;
        #refinement dependency <'FL-STR-18>IF-STR-09'> from StrInterconnection::fl_str_18 to SSD_BLK_SYS_001::STR::IF_STR_09;
        #refinement dependency <'FL-STR-19>IF-STR-10'> from StrInterconnection::fl_str_19 to SSD_BLK_SYS_001::STR::IF_STR_10;
        #refinement dependency <'FL-STR-20>IF-STR-05'> from StrInterconnection::fl_str_20 to SSD_BLK_SYS_001::STR::IF_STR_05;
        #refinement dependency <'FL-STR-21>IF-PLS-04'> from StrInterconnection::fl_str_21 to SSD_BLK_SYS_001::ORB::IF_PLS_04;
        #refinement dependency <'FL-STR-22>IF-PLS-03'> from StrInterconnection::fl_str_22 to SSD_BLK_SYS_001::ORB::IF_PLS_03;
        #refinement dependency <'FL-STR-23>IF-PLS-05'> from StrInterconnection::fl_str_23 to SSD_BLK_SYS_001::ORB::IF_PLS_05;
        #refinement dependency <'FL-STR-24>IF-ORB-47'> from StrInterconnection::fl_str_24 to SSD_BLK_SYS_001::ORB::IF_ORB_47;
        #refinement dependency <'FL-STR-25>IF-MECH-02'> from StrInterconnection::fl_str_25 to SSD_BLK_SYS_001::ORB::IF_MECH_02;
        #refinement dependency <'FL-STR-27>IF-ORB-38'> from StrInterconnection::fl_str_27 to SSD_BLK_SYS_001::ORB::IF_ORB_38;
        #refinement dependency <'FL-STR-28>IF-MECH-04'> from StrInterconnection::fl_str_28 to SSD_BLK_SYS_001::ORB::IF_MECH_04;
        #refinement dependency <'FL-STR-29>IF-STR-03'> from StrInterconnection::fl_str_29 to SSD_BLK_SYS_001::ORB::IF_STR_03;
        #refinement dependency <'FL-STR-30>IF-STR-07'> from StrInterconnection::fl_str_30 to SSD_BLK_SYS_001::STR::IF_STR_07;
        #refinement dependency <'FL-STR-31>IF-MECH-03'> from StrInterconnection::fl_str_31 to SSD_BLK_SYS_001::ORB::IF_MECH_03;
        #refinement dependency <'FL-STR-32>IF-STR-07'> from StrInterconnection::fl_str_32 to SSD_BLK_SYS_001::STR::IF_STR_07;
        #refinement dependency <'FL-STR-33>IF-MECH-03'> from StrInterconnection::fl_str_33 to SSD_BLK_SYS_001::ORB::IF_MECH_03;
        #refinement dependency <'FL-STR-34>IF-MECH-03'> from StrInterconnection::fl_str_34 to SSD_BLK_SYS_001::ORB::IF_MECH_03;
        #refinement dependency <'FL-STR-36>IF-STR-08'> from StrInterconnection::fl_str_36 to SSD_BLK_SYS_001::STR::IF_STR_08;
        #refinement dependency <'FL-STR-37>IF-STR-08'> from StrInterconnection::fl_str_37 to SSD_BLK_SYS_001::STR::IF_STR_08;
        #refinement dependency <'FL-STR-38>IF-ORB-37'> from StrInterconnection::fl_str_38 to SSD_BLK_SYS_001::ORB::IF_ORB_37;
        #refinement dependency <'FL-STR-39>IF-ORB-33'> from StrInterconnection::fl_str_39 to SSD_BLK_SYS_001::MissionContext::IF_ORB_33;
        #refinement dependency <'FL-CREW-01>IF-CREW-01'> from CrewInterconnection::fl_crew_01 to SSD_BLK_SYS_001::ORB::IF_CREW_01;
        #refinement dependency <'FL-CREW-02>IF-ORB-44'> from CrewInterconnection::fl_crew_02 to SSD_BLK_SYS_001::ORB::IF_ORB_44;
        #refinement dependency <'FL-CREW-03>IF-CREW-02'> from CrewInterconnection::fl_crew_03 to SSD_BLK_SYS_001::ORB::IF_CREW_02;
        #refinement dependency <'FL-CREW-04>IF-CREW-03'> from CrewInterconnection::fl_crew_04 to SSD_BLK_SYS_001::ORB::IF_CREW_03;
        #refinement dependency <'FL-CREW-05>IF-CREW-04'> from CrewInterconnection::fl_crew_05 to SSD_BLK_SYS_001::ORB::IF_CREW_04;
        #refinement dependency <'FL-CREW-06>IF-CREW-05'> from CrewInterconnection::fl_crew_06 to SSD_BLK_SYS_001::ORB::IF_CREW_05;
        #refinement dependency <'FL-CREW-07>IF-CREW-07'> from CrewInterconnection::fl_crew_07 to SSD_BLK_SYS_001::ORB::IF_CREW_07;
        #refinement dependency <'FL-CREW-08>IF-CREW-07'> from CrewInterconnection::fl_crew_08 to SSD_BLK_SYS_001::ORB::IF_CREW_07;
        #refinement dependency <'FL-CREW-09>IF-CREW-06'> from CrewInterconnection::fl_crew_09 to SSD_BLK_SYS_001::ORB::IF_CREW_06;
        #refinement dependency <'FL-CREW-10>IF-CREW-06'> from CrewInterconnection::fl_crew_10 to SSD_BLK_SYS_001::ORB::IF_CREW_06;
        #refinement dependency <'FL-CREW-11>IF-CREW-08'> from CrewInterconnection::fl_crew_11 to SSD_BLK_SYS_001::CREW::IF_CREW_08;
        #refinement dependency <'FL-CREW-12>IF-CREW-09'> from CrewInterconnection::fl_crew_12 to SSD_BLK_SYS_001::CREW::IF_CREW_09;
        #refinement dependency <'FL-CREW-13>IF-CREW-10'> from CrewInterconnection::fl_crew_13 to SSD_BLK_SYS_001::CREW::IF_CREW_10;
        #refinement dependency <'FL-CREW-14>IF-CREW-11'> from CrewInterconnection::fl_crew_14 to SSD_BLK_SYS_001::CREW::IF_CREW_11;
        #refinement dependency <'FL-CREW-15>IF-CREW-11'> from CrewInterconnection::fl_crew_15 to SSD_BLK_SYS_001::CREW::IF_CREW_11;
    }
    // ---- 状態機械
    item def LdgEv01 { doc /* 事象：乗員が LANDING GEAR ARM を押す（約 2000 ft AGL） */ }
    item def LdgEv02 { doc /* 事象：乗員が DN を押す（高度 300 ± 100 ft、312 KEAS 以下、着地の15秒以上前） */ }
    item def LdgEv03 { doc /* 事象：油圧系1の圧力がアップロックフックを外す */ }
    item def LdgEv04 { doc /* 事象：DN の1秒後に油圧でフックが外れない */ }
    item def LdgEv05 { doc /* 事象：PIC が冗長な NSI を点火して同じフックを外す */ }
    item def LdgEv06 { doc /* 事象：10秒以内に下げ位置へ着き、ダウンロックバンジーが掛かる */ }
    item def LdgEv07 { doc /* 事象：主脚の接地（WOW が設定される） */ }
    item def LdgEv08 { doc /* 事象：機首下げ前にドラッグシュートの ARM と DPY を同時に押す（標準は MGTD のあと 195 kt） */ }
    item def LdgEv09 { doc /* 事象：前脚の接地（WONG） */ }
    item def LdgEv10 { doc /* 事象：ブレーキ開始（標準は地上速度 140 kt） */ }
    item def LdgEv11 { doc /* 事象：ドラッグシュートの投棄（対地 60 ± 20 kt） */ }
    item def LdgEv12 { doc /* 事象：車輪停止 */ }
    item def LdgEv13 { doc /* 事象：アンチスキッドの故障検知または指令なしのブレーキ圧 > 180 psi */ }
    item def LdgEv14 { doc /* 事象：ブレーキ隔離弁を前脚接地のあとに開く、または残りの回路で制動する */ }
    item def LdgEv15 { doc /* 事象：NWS の一方を失う、または両油圧系が約 1,325 psi を下回る */ }
    item def LdgEv16 { doc /* 事象：もう一方の NWS を選ぶ、または差動制動とラダーで方向を制御する */ }
    item def LdgEv17 { doc /* 事象：タイヤの漏れ・パンク（または低圧） */ }
    item def LdgEv18 { doc /* 事象：緊急展開のドラッグシュート（SSME の再位置決めが済まなくても） */ }
    item def LdgEv19 { doc /* 事象：着陸後の地上作業（LG ARM/DN RESET、地上で格納） */ }
    item def VntEv01 { doc /* 事象：T-28 秒に RSLS が開のシーケンスを呼ぶ */ }
    item def VntEv02 { doc /* 事象：突入準備で乗員が GNC SPEC 51 OVERRIDE の項目44（CLOSE）を入力 */ }
    item def VntEv03 { doc /* 事象：突入で相対速度が 2400 ft/s に達する */ }
    item def VntEv04 { doc /* 事象：着陸後（OPS 9）に GNC SPEC 105 TCS CONTROL の項目入力 */ }
    item def VntEv05 { doc /* 事象：整備後に次の打上げへ（カウントダウン中のパージ位置） */ }
    item def VntEv06 { doc /* 事象：RTLS は MM 602、TAL は ET 分離で全扉が自動で閉じる */ }
    item def VntEv07 { doc /* 事象：扉1・2の閉の冗長を失う、または扉が単一モータ時間を超えても動かない */ }
    item def VntEv08 { doc /* 事象：AC バス移送ケーブルで開の能力を回復する、または回復できなくても突入準備へ */ }
    item def VntEv09 { doc /* 事象：乗員が CENTERLINE LATCH スイッチを STOW に入れる（OMS-1 のあと MPS 真空不活性化のあと） */ }
    item def VntEv10 { doc /* 事象：乗員が LEFT DOOR／RIGHT DOOR を CLOSE に入れる */ }
    item def VntEv11 { doc /* 事象：扉が閉位置から 2 inch 以内（RTL パドル）で LEFT LATCH／RIGHT LATCH を LATCH に入れる */ }
    item def VntEv12 { doc /* 事象：RTLS／TAL の MM 602／304 への遷移、または MM 104〜106 での乗員の項目入力（AOA の予備） */ }
    item def VntEv13 { doc /* 事象：ソフトの閉鎖シーケンスの完了 */ }
    item def VntEv14 { doc /* 事象：扉は閉じたが RTL マイクロスイッチの故障でアップロックラッチが有効にならない */ }
    item def VntEv15 { doc /* 事象：LEFT LATCH と RIGHT LATCH の両方を LATCH に入れて上書きする */ }
    item def VntEv16 { doc /* 事象：着陸後に乗員が panel R2 の LATCH を RELEASE にして扉を開く */ }
    item def VntEv17 { doc /* 事象：整備で地上班がセンターラインラッチを出し、扉を開位置で保つ */ }
    item def CwsEv01 { doc /* 事象：パラメータが上限または下限を外れる */ }
    item def CwsEv02 { doc /* 事象：確認の途中で限界内に戻る */ }
    item def CwsEv03 { doc /* 事象：連続8標本（100 ms）の限界外れが確定（ハードウェア） */ }
    item def CwsEv04 { doc /* 事象：FDA または GNC のソフトウェアが限界外れを確定（ノイズフィルタ n 回） */ }
    item def CwsEv05 { doc /* 事象：アラートのパラメータが限界外（前提条件で選んだ組の限界） */ }
    item def CwsEv06 { doc /* 事象：MASTER ALARM 押しボタン（4つのどれか） */ }
    item def CwsEv07 { doc /* 事象：その灯を駆動する全パラメータが限界内に戻る、または禁止される */ }
    item def CwsEv08 { doc /* 事象：MASTER ALARM 押下 → ACK キー → 故障メッセージの確認 → MSG RESET キー（BACKUP C/W ALARM 灯の点灯を受ける） */ }
    item def CwsEv09 { doc /* 事象：ACK でメッセージの点滅を止め、MSG RESET キーでメッセージを消す */ }
    item def CwsEv10 { doc /* 事象：R13U で PARAMETER SELECT を選び、PARAM スイッチを INHIBIT にする（機能していない・迷惑警報のパラメータ） */ }
    item def CwsEv11 { doc /* 事象：R13U で原因のパラメータを INHIBIT にして F7 の灯を消す */ }
    item def CwsEv12 { doc /* 事象：PARAM スイッチを中央に戻す（または ENABLE にする） */ }
    item def CwsEv13 { doc /* 事象：R13U の LIMIT SET を SET する、または SPEC 60 に入力する、または MCC が TMBU を送る */ }
    item def CwsEv14 { doc /* 事象：限界を READ で確認して LIMIT SET の FUNC を中央に戻す／SPEC 60 を終える */ }
    item def CwsEv15 { doc /* 事象：LAMP TEST を LEFT／RIGHT にする、または MEMORY を READ／CLEAR にする */ }
    item def CwsEv16 { doc /* 事象：スイッチを中央に戻す */ }
    item def CwsEv17 { doc /* 事象：煙検知器が 2,000（±200）μg/m3 を5秒以上、または 22 μg/m3/s を20秒間に8回連続で検知 */ }
    item def CwsEv18 { doc /* 事象：客室の dP/dt が -0.08 psi/min を超える（負の値のみ） */ }
    item def CwsEv19 { doc /* 事象：SMOKE DETECTION SENSOR スイッチを RESET にする */ }
    item def CwsEv20 { doc /* 事象：dP/dt が -0.08 psi/min の内側に戻り、MASTER ALARM を押す */ }
    item def CwsEv21 { doc /* 事象：電源 A の喪失、または自己試験パラメータ（120〜127）の失敗（F7 の PRI C&W 灯・MA 灯・C&W トーン） */ }
    item def CwsEv22 { doc /* 事象：電源 B の喪失 */ }
    item def CwsEv23 { doc /* 事象：電源 B も喪失 */ }
    item def CwsEv24 { doc /* 事象：電源 A も喪失 */ }
    item def CwsEv25 { doc /* 事象：C&W ELECTRONICS UNIT CONTINGENCY POWER の IFM で電源を回復する */ }
    item def CwsEv26 { doc /* 事象：残りの電源を冗長給電する、または電源 B を回復する */ }
    item def CwsEv27 { doc /* 事象：一次 C/W を失ってもバックアップ C/W が残る */ }
    item def PrlEv01 { doc /* 事象：PAYLOAD RETENTION LATCHES スイッチを RELEASE（ペイロードの展開・点検のため） */ }
    item def PrlEv02 { doc /* 事象：REL の表示（ラッチが完全に開く） */ }
    item def PrlEv03 { doc /* 事象：ペイロードを RMS で PRLA の V ガイドへベルシング */ }
    item def PrlEv04 { doc /* 事象：LATCH の指令 */ }
    item def PrlEv05 { doc /* 事象：LAT の表示（ラッチ済み） */ }
    item def PrlEv06 { doc /* 事象：モータの 1 台の故障 */ }
    item def PrlEv07 { doc /* 事象：モータの 1 台の故障 */ }
    item def PrlEv08 { doc /* 事象：REL の表示 */ }
    item def PrlEv09 { doc /* 事象：LAT の表示 */ }
    item def PrlEv10 { doc /* 事象：60 秒を超えても REL の表示が出ない */ }
    item def PrlEv11 { doc /* 事象：LAT の表示が出ない・ラッチが閉じない */ }
    item def PrlEv12 { doc /* 事象：EVA 乗員が手動で開く */ }
    item def PrlEv13 { doc /* 事象：EVA 乗員が手動で閉じる */ }
    item def PrlEv14 { doc /* 事象：APDS CIRC PROT OFF のあと RING OUT */ }
    item def PrlEv15 { doc /* 事象：初期接触・捕獲（PCT は 2 秒以内） */ }
    item def PrlEv16 { doc /* 事象：捕獲の失敗・跳ね返り */ }
    item def PrlEv17 { doc /* 事象：フックの閉鎖（ready-to-hook 3/4、INTERFACE SEALED 2/3）を終えて捕獲ラッチを開き、RING IN で最終位置へ */ }
    item def PrlEv18 { doc /* 事象：APDS CIRC PROT OFF のあと UNDOCKING */ }
    item def PrlEv19 { doc /* 事象：分離の噴射のあと系の電源を切る */ }
    item def PrlEv20 { doc /* 事象：オービタ側のフックが閉じたまま開かない */ }
    item def PrlEv21 { doc /* 事象：2 機の分離 */ }
    item def EscEv01 { doc /* 事象：射点で破局的な事態が迫る（火災・水素火災の検知など） */ }
    item def EscEv02 { doc /* 事象：スライドワイヤのバスケットで 195 ft の高さから降り、バンカーへ向かう */ }
    item def EscEv03 { doc /* 事象：RTLS・TAL・AOA などでエネルギーが足りず、CDR がベイルアウトを宣言する */ }
    item def EscEv04 { doc /* 事象：50,000 ft でコマンダが乗員にバイザーを閉めて非常用酸素を作動させるよう指示する */ }
    item def EscEv05 { doc /* 事象：40,000 ft で MS 3 がパイロベントバルブの T ハンドルを引く */ }
    item def EscEv06 { doc /* 事象：約 31,000 ft でキャビンが均圧になり、コマンダが MS3 にハッチ投棄を指示する */ }
    item def EscEv07 { doc /* 事象：ハッチが投棄され、乗員が酸素と通信の接続を外して座席を離れ、MS3 がポールを展開する */ }
    item def EscEv08 { doc /* 事象：乗員がポールから離れ、ブライドルが伸びきって自動シーケンスが始まる（1.5 秒後に切り離し） */ }
    item def EscEv09 { doc /* 事象：海面へ着水する */ }
    item def EscEv10 { doc /* 事象：SARSAT の信号と PRC-112 の交信で救助部隊が来る */ }
    item def EscEv11 { doc /* 事象：機体の制御を失う・分解する（制御不能な飛行） */ }
    item def EscEv12 { doc /* 事象：ハッチ投棄後に機外へ出て、引き手（リップコード）を引く */ }
    item def EscEv13 { doc /* 事象：着陸後の退出（モード V）。側面ハッチを手で開ける */ }
    item def EscEv14 { doc /* 事象：客室の耐えがたい状態か差し迫った脅威で、ハッチを通常に開けられない */ }
    item def EscEv15 { doc /* 事象：側面ハッチが投棄できない・塞がれた・変形した、またはハッチ周囲に地上要員がいる */ }
    item def EscEv16 { doc /* 事象：スライドを膨らませ、60 秒以内に地上へ降りる */ }
    item def EscEv17 { doc /* 事象：ハッチ開口からスライドまたは Sky Genie で地上へ降りる */ }
    item def EscEv18 { doc /* 事象：MS2 の座席を踏んで窓 8 から出て、Sky Genie で右舷側の地上へ降りる */ }
    item def EscEv19 { doc /* 事象：救助・退出が完了し、脱出系の点検に戻る */ }
    state def LandingGearStates {
        doc /* 図219 降着装置・制動 状態遷移図：降着装置・制動・操向・減速傘の状態（降着装置・制動（LDG）） */
        @PhaseMode { phase = "PH-1"; states = "LDGS-01"; }
        @PhaseMode { phase = "PH-2"; states = "LDGS-01"; }
        @PhaseMode { phase = "PH-3"; states = "LDGS-01"; }
        @PhaseMode { phase = "PH-4"; states = "LDGS-01"; }
        @PhaseMode { phase = "PH-5"; states = "LDGS-01"; }
        @PhaseMode { phase = "PH-6"; states = "LDGS-01,LDGS-02,LDGS-03,LDGS-04,LDGS-05,LDGS-06,LDGS-07,LDGS-08,LDGS-09,LDGS-10,LDGS-12,LDGS-13,LDGS-14,LDGS-15"; }
        @PhaseMode { phase = "PH-7"; states = "LDGS-11"; }
        attribute ldgGuard01 : ScalarValues::Boolean { doc /* ガード：展開隔離弁が開いている（GNC が Mach 0.8 で開く、Mach 0.7 で確認） */ }
        attribute ldgGuard02 : ScalarValues::Boolean { doc /* ガード：ARM 済み */ }
        attribute ldgGuard03 : ScalarValues::Boolean { doc /* ガード：油圧系1の圧力が使える */ }
        attribute ldgGuard04 : ScalarValues::Boolean { doc /* ガード：油圧系1の圧力がない */ }
        attribute ldgGuard05 : ScalarValues::Boolean { doc /* ガード：アップロックのセンサの入力あり */ }
        attribute ldgGuard06 : ScalarValues::Boolean { doc /* ガード：ばね・油圧アクチュエータ・空力・重力で下がる */ }
        attribute ldgGuard07 : ScalarValues::Boolean { doc /* ガード：各主脚の3つのセンサ */ }
        attribute ldgGuard08 : ScalarValues::Boolean { doc /* ガード：横風 15 kt 以下、230 KEAS 以下、80 KGS 以上 */ }
        attribute ldgGuard09 : ScalarValues::Boolean { doc /* ガード：WOW・WONG・ピッチ角 0° 未満がそろい NWS が有効になる */ }
        attribute ldgGuard10 : ScalarValues::Boolean { doc /* ガード：ブレーキ隔離弁が開き、WOW から約1.9秒たっている */ }
        attribute ldgGuard11 : ScalarValues::Boolean { doc /* ガード：40 KGS 未満では投棄しない */ }
        attribute ldgGuard12 : ScalarValues::Boolean { doc /* ガード：アンチスキッドは約 10〜15 kt 未満で自動で止まる */ }
        attribute ldgGuard13 : ScalarValues::Boolean { doc /* ガード：故障した回路だけが止まる、必要ならブレーキ隔離弁を閉じる */ }
        attribute ldgGuard14 : ScalarValues::Boolean { doc /* ガード：油圧系3が予備で、半分の制動力は保たれる */ }
        attribute ldgGuard15 : ScalarValues::Boolean { doc /* ガード：NWS FAIL の灯（panel F3）が点く */ }
        attribute ldgGuard16 : ScalarValues::Boolean { doc /* ガード：NWS1 が故障したら NWS2（A10-141） */ }
        attribute ldgGuard17 : ScalarValues::Boolean { doc /* ガード：方向制御の問題が分かっている、NWS が必要 */ }
        attribute ldgGuard18 : ScalarValues::Boolean { doc /* ガード：漏れ／パンクのタイヤは緊急展開の条件の一つ */ }
        attribute ldgGuard19 : ScalarValues::Boolean { doc /* ガード：脚は地上作業でだけ格納できる */ }
        entry; then LDGS_01;
        state LDGS_01 { doc /* LDGS-01 格納・アップロック（飛行中は引き込めない） */ }
        state LDGS_02 { doc /* LDGS-02 ARM（展開弁のラッチ継電器と PIC を活性化） */ }
        state LDGS_03 { doc /* LDGS-03 展開の指令（DN：油圧系1・2の展開弁が開く） */ }
        state LDGS_04 { doc /* LDGS-04 展開中（アップロック解除・扉が開く・10秒以内） */ }
        state LDGS_05 { doc /* LDGS-05 ダウンロック（下げ位置・ばね式バンジー） */ }
        state LDGS_06 { doc /* LDGS-06 接地・荷重（主脚の WOW・緩衝支柱） */ }
        state LDGS_07 { doc /* LDGS-07 制動（ブレーキ・アンチスキッド） */ }
        state LDGS_08 { doc /* LDGS-08 前輪操向（NWS：GPC モード） */ }
        state LDGS_09 { doc /* LDGS-09 ドラッグシュートの展開 */ }
        state LDGS_10 { doc /* LDGS-10 ドラッグシュートの投棄（対地 60 ± 20 kt） */ }
        state LDGS_11 { doc /* LDGS-11 車輪停止・地上リセット（LG ARM/DN RESET） */ }
        state LDGS_12 { doc /* LDGS-12 火工品のバックアップ展開（油圧系1の圧力なし） */ }
        state LDGS_13 { doc /* LDGS-13 ブレーキ・アンチスキッドの故障（故障回路だけ停止・指令なしのブレーキ圧） */ }
        state LDGS_14 { doc /* LDGS-14 NWS の故障（キャスタ・差動制動とラダー） */ }
        state LDGS_15 { doc /* LDGS-15 タイヤの故障（パンク・低圧） */ }
        transition LDGT_01 first LDGS_01 accept LdgEv01 if ldgGuard01 then LDGS_02;
        transition LDGT_02 first LDGS_02 accept LdgEv02 if ldgGuard02 then LDGS_03;
        transition LDGT_03 first LDGS_03 accept LdgEv03 if ldgGuard03 then LDGS_04;
        transition LDGT_04 first LDGS_03 accept LdgEv04 if ldgGuard04 then LDGS_12;
        transition LDGT_05 first LDGS_12 accept LdgEv05 if ldgGuard05 then LDGS_04;
        transition LDGT_06 first LDGS_04 accept LdgEv06 if ldgGuard06 then LDGS_05;
        transition LDGT_07 first LDGS_05 accept LdgEv07 if ldgGuard07 then LDGS_06;
        transition LDGT_08 first LDGS_06 accept LdgEv08 if ldgGuard08 then LDGS_09;
        transition LDGT_09 first LDGS_09 accept LdgEv09 if ldgGuard09 then LDGS_08;
        transition LDGT_10 first LDGS_08 accept LdgEv10 if ldgGuard10 then LDGS_07;
        transition LDGT_11 first LDGS_07 accept LdgEv11 if ldgGuard11 then LDGS_10;
        transition LDGT_12 first LDGS_10 accept LdgEv12 if ldgGuard12 then LDGS_11;
        transition LDGT_13 first LDGS_07 accept LdgEv13 if ldgGuard13 then LDGS_13;
        transition LDGT_14 first LDGS_13 accept LdgEv14 if ldgGuard14 then LDGS_07;
        transition LDGT_15 first LDGS_08 accept LdgEv15 if ldgGuard15 then LDGS_14;
        transition LDGT_16 first LDGS_14 accept LdgEv16 if ldgGuard16 then LDGS_07;
        transition LDGT_17 first LDGS_06 accept LdgEv17 if ldgGuard17 then LDGS_15;
        transition LDGT_18 first LDGS_15 accept LdgEv18 if ldgGuard18 then LDGS_09;
        transition LDGT_19 first LDGS_11 accept LdgEv19 if ldgGuard19 then LDGS_01;
    }
    state def VentDoorStates {
        doc /* 図220 ベントドア・ET アンビリカルドア 状態遷移図：ベントドアと ET アンビリカルドアの状態（ベントドア・ET アンビリカルドア（VNT）） */
        @PhaseMode { phase = "PH-1"; states = "VNTS-02,VNTS-09"; }
        @PhaseMode { phase = "PH-2"; states = "VNTS-03,VNTS-09,VNTS-13"; }
        @PhaseMode { phase = "PH-3"; states = "VNTS-03,VNTS-07,VNTS-10,VNTS-11,VNTS-12,VNTS-14"; }
        @PhaseMode { phase = "PH-4"; states = "VNTS-04"; }
        @PhaseMode { phase = "PH-6"; states = "VNTS-05"; }
        @PhaseMode { phase = "PH-7"; states = "VNTS-06,VNTS-15"; }
        attribute vntGuard01 : ScalarValues::Boolean { doc /* ガード：約 2.5 秒間隔でずらして開く */ }
        attribute vntGuard02 : ScalarValues::Boolean { doc /* ガード：全扉を閉じたあと 1・2・8・9 が自動で再開（MM304 で全閉） */ }
        attribute vntGuard03 : ScalarValues::Boolean { doc /* ガード：全ベント扉が自動で開く */ }
        attribute vntGuard04 : ScalarValues::Boolean { doc /* ガード：パージのための構成 */ }
        attribute vntGuard05 : ScalarValues::Boolean { doc /* ガード：地上のパージのため中間位置を持つ扉は 1・2・6・8・9 */ }
        attribute vntGuard06 : ScalarValues::Boolean { doc /* ガード：アボート */ }
        attribute vntGuard07 : ScalarValues::Boolean { doc /* ガード：反対側の扉に開の冗長があれば、その扉を閉じる */ }
        attribute vntGuard08 : ScalarValues::Boolean { doc /* ガード：多相交流喪失では離脱を遅らせる */ }
        attribute vntGuard09 : ScalarValues::Boolean { doc /* ガード：MODE スイッチが GPC/MAN、H2 加圧ラインのベント完了後 */ }
        attribute vntGuard10 : ScalarValues::Boolean { doc /* ガード：センターラインラッチが収納済み（乗員は再び出せない） */ }
        attribute vntGuard11 : ScalarValues::Boolean { doc /* ガード：RTL マイクロスイッチ3つのうち2つが CL を示す */ }
        attribute vntGuard12 : ScalarValues::Boolean { doc /* ガード：ET 分離後。センターラインラッチ12秒、扉、48秒後にアップロック12秒 */ }
        attribute vntGuard13 : ScalarValues::Boolean { doc /* ガード：時間で指令を送る（マイクロスイッチを見ない） */ }
        attribute vntGuard14 : ScalarValues::Boolean { doc /* ガード：駆動時間が単一モータ時間を超えれば故障とみなす */ }
        attribute vntGuard15 : ScalarValues::Boolean { doc /* ガード：MCC が地上でテレメトリを確かめてから */ }
        attribute vntGuard16 : ScalarValues::Boolean { doc /* ガード：地上班が空洞に近づく */ }
        attribute vntGuard17 : ScalarValues::Boolean { doc /* ガード：センターラインラッチを出せるのは地上班だけ */ }
        entry; then VNTS_01.VNTS_02;
        state VNTS_01 {
            doc /* VNTS-01 ベントドア（14扉：左右各7） */
            entry; then VNTS_02;
            state VNTS_02 { doc /* VNTS-02 打上げ前のパージ位置 */ }
            state VNTS_03 { doc /* VNTS-03 上昇・軌道上の開 */ }
            state VNTS_04 { doc /* VNTS-04 再突入前の閉（1・2・8・9は自動で再開、MM304で全閉） */ }
            state VNTS_05 { doc /* VNTS-05 再突入の開（Vrel 2400 ft/s で全開） */ }
            state VNTS_06 { doc /* VNTS-06 着陸後のパージ位置（OPS 9） */ }
            state VNTS_07 { doc /* VNTS-07 閉の冗長の喪失・扉の不作動 */ }
        }
        state VNTS_08 {
            doc /* VNTS-08 ET アンビリカルドア（左 LH2・右 LO2） */
            entry; then VNTS_09;
            state VNTS_09 { doc /* VNTS-09 開（上昇中、センターラインラッチで保持） */ }
            state VNTS_10 { doc /* VNTS-10 センターラインラッチの収納（約6秒） */ }
            state VNTS_11 { doc /* VNTS-11 扉の閉動作（約24秒） */ }
            state VNTS_12 { doc /* VNTS-12 アップロックラッチで閉・ラッチ済み（約6秒） */ }
            state VNTS_13 { doc /* VNTS-13 ソフトの閉鎖シーケンス（RTLS／TAL／AOA） */ }
            state VNTS_14 { doc /* VNTS-14 手動の閉鎖の不成立（RTL マイクロスイッチの故障・上書き） */ }
            state VNTS_15 { doc /* VNTS-15 着陸後の開（RELEASE・地上班が空洞に近づく） */ }
        }
        transition VNTT_01 first VNTS_01.VNTS_02 accept VntEv01 if vntGuard01 then VNTS_01.VNTS_03;
        transition VNTT_02 first VNTS_01.VNTS_03 accept VntEv02 if vntGuard02 then VNTS_01.VNTS_04;
        transition VNTT_03 first VNTS_01.VNTS_04 accept VntEv03 if vntGuard03 then VNTS_01.VNTS_05;
        transition VNTT_04 first VNTS_01.VNTS_05 accept VntEv04 if vntGuard04 then VNTS_01.VNTS_06;
        transition VNTT_05 first VNTS_01.VNTS_06 accept VntEv05 if vntGuard05 then VNTS_01.VNTS_02;
        transition VNTT_06 first VNTS_01.VNTS_03 accept VntEv06 if vntGuard06 then VNTS_01.VNTS_04;
        transition VNTT_07 first VNTS_01.VNTS_03 accept VntEv07 if vntGuard07 then VNTS_01.VNTS_07;
        transition VNTT_08 first VNTS_01.VNTS_07 accept VntEv08 if vntGuard08 then VNTS_01.VNTS_04;
        transition VNTT_09 first VNTS_08.VNTS_09 accept VntEv09 if vntGuard09 then VNTS_08.VNTS_10;
        transition VNTT_10 first VNTS_08.VNTS_10 accept VntEv10 if vntGuard10 then VNTS_08.VNTS_11;
        transition VNTT_11 first VNTS_08.VNTS_11 accept VntEv11 if vntGuard11 then VNTS_08.VNTS_12;
        transition VNTT_12 first VNTS_08.VNTS_09 accept VntEv12 if vntGuard12 then VNTS_08.VNTS_13;
        transition VNTT_13 first VNTS_08.VNTS_13 accept VntEv13 if vntGuard13 then VNTS_08.VNTS_12;
        transition VNTT_14 first VNTS_08.VNTS_11 accept VntEv14 if vntGuard14 then VNTS_08.VNTS_14;
        transition VNTT_15 first VNTS_08.VNTS_14 accept VntEv15 if vntGuard15 then VNTS_08.VNTS_12;
        transition VNTT_16 first VNTS_08.VNTS_12 accept VntEv16 if vntGuard16 then VNTS_08.VNTS_15;
        transition VNTT_17 first VNTS_08.VNTS_15 accept VntEv17 if vntGuard17 then VNTS_08.VNTS_09;
    }
    state def CautionWarningStates {
        doc /* 図221 警報系（C/W）状態遷移図：警報系（C/W）の状態（警報系（C/W）） */
        @PhaseMode { phase = "PH-1"; states = "CWSS-01,CWSS-02,CWSS-03,CWSS-04,CWSS-06,CWSS-07,CWSS-08,CWSS-09"; }
        @PhaseMode { phase = "PH-2"; states = "CWSS-01,CWSS-02,CWSS-03,CWSS-04,CWSS-06,CWSS-07,CWSS-10,CWSS-11,CWSS-12,CWSS-13,CWSS-14,CWSS-15"; }
        @PhaseMode { phase = "PH-3"; states = "CWSS-01,CWSS-02,CWSS-03,CWSS-04,CWSS-05,CWSS-06,CWSS-07,CWSS-08,CWSS-09,CWSS-10,CWSS-11,CWSS-12,CWSS-13,CWSS-14,CWSS-15"; }
        @PhaseMode { phase = "PH-4"; states = "CWSS-01,CWSS-02,CWSS-03,CWSS-04,CWSS-05,CWSS-06,CWSS-08,CWSS-10,CWSS-11,CWSS-12"; }
        @PhaseMode { phase = "PH-6"; states = "CWSS-01,CWSS-02,CWSS-03,CWSS-04,CWSS-06,CWSS-07,CWSS-10,CWSS-11,CWSS-12,CWSS-13,CWSS-14,CWSS-15"; }
        attribute cwsGuard01 : ScalarValues::Boolean { doc /* ガード：一次：80 Hz の標本。ソフト：ノイズフィルタ n 回（1〜15）。禁止中のパラメータは対象外 */ }
        attribute cwsGuard02 : ScalarValues::Boolean { doc /* ガード：連続標本数（8標本、またはノイズフィルタ n 回）に達しない */ }
        attribute cwsGuard03 : ScalarValues::Boolean { doc /* ガード：パラメータが有効。ASCENT ではコマンダの MA 灯は点かず、ACK では MA を押すまで F7 は点灯しない */ }
        attribute cwsGuard04 : ScalarValues::Boolean { doc /* ガード：BFS が待機のときは灯とトーンを出さず故障メッセージと状態表示のみ */ }
        attribute cwsGuard05 : ScalarValues::Boolean { doc /* ガード：クラス3：SM ソフトウェアの検知。限界の組の選択はソフトウェアだけが行う */ }
        attribute cwsGuard06 : ScalarValues::Boolean { doc /* ガード：全トーン（SM トーンを含む）と MA 灯をリセットする。F7 の灯は消えない */ }
        attribute cwsGuard07 : ScalarValues::Boolean { doc /* ガード：BACKUP C/W ALARM 灯を除く。回復後に F7 の灯が消える */ }
        attribute cwsGuard08 : ScalarValues::Boolean { doc /* ガード：MSG RESET は原因パラメータの状態によらず B/U 灯を消す。FDF の手順を参照する */ }
        attribute cwsGuard09 : ScalarValues::Boolean { doc /* ガード：SM ALERT 灯は MSG RESET で消える。MASTER ALARM の押下でトーンはリセットされる */ }
        attribute cwsGuard10 : ScalarValues::Boolean { doc /* ガード：一次は飛行規則 A9-160 により抑止して灯を消す。OPS 2・4 では乗員か MCC が迷惑警報を抑止できる */ }
        attribute cwsGuard11 : ScalarValues::Boolean { doc /* ガード：一次 C/W のパラメータ。同じ灯を使うほかのパラメータの隠れを防ぐ */ }
        attribute cwsGuard12 : ScalarValues::Boolean { doc /* ガード：R13U を使わないときは PARAMETER SELECT を 119 より大きくする */ }
        attribute cwsGuard13 : ScalarValues::Boolean { doc /* ガード：SPEC 60 の動作中は TMBU を拒否する。一次の限界は MCC から変えられず、電源喪失で PROM の値に戻る */ }
        attribute cwsGuard14 : ScalarValues::Boolean { doc /* ガード：一次とバックアップの限界値は同じに保つ（飛行規則 A9-160） */ }
        attribute cwsGuard15 : ScalarValues::Boolean { doc /* ガード：C3 の MEMORY は F7 の灯を、R13U の MEMORY は状態灯を点灯させる */ }
        attribute cwsGuard16 : ScalarValues::Boolean { doc /* ガード：CLEAR は限界内に戻ったパラメータだけを消す */ }
        attribute cwsGuard17 : ScalarValues::Boolean { doc /* ガード：ハードウェア、MDM を通らない */ }
        attribute cwsGuard18 : ScalarValues::Boolean { doc /* ガード：ハードウェア、MDM を通らない */ }
        attribute cwsGuard19 : ScalarValues::Boolean { doc /* ガード：濃度が 1.8 を下回ってから行う。ラッチ中は別のベイの火災でも非常の警報が出ない */ }
        attribute cwsGuard20 : ScalarValues::Boolean { doc /* ガード：クラス3は 0.12 psi/min 以上の低下で別に出る */ }
        attribute cwsGuard21 : ScalarValues::Boolean { doc /* ガード：電源 A の喪失では BACKUP C/W ALARM を除く F7 全灯が点灯し、R13U と一次の限界監視を失う */ }
        attribute cwsGuard22 : ScalarValues::Boolean { doc /* ガード：BACKUP C/W ALARM 灯が点灯し、トーン発生器 B 経由の煙の警報を失う */ }
        attribute cwsGuard23 : ScalarValues::Boolean { doc /* ガード：一次・バックアップ・SM のすべての灯とトーンを喪失したとみなし、乗員が CRT メッセージを監視する */ }
        attribute cwsGuard24 : ScalarValues::Boolean { doc /* ガード：同上 */ }
        attribute cwsGuard25 : ScalarValues::Boolean { doc /* ガード：限界値は PROM の元の値に戻り、乗員が入れ直す。故障した一次は迷惑警報がなければ給電・有効のままでよい */ }
        attribute cwsGuard26 : ScalarValues::Boolean { doc /* ガード：代替は、乗員1名が CRT メッセージを監視する、または該当の燃料電池を待機にする */ }
        attribute cwsGuard27 : ScalarValues::Boolean { doc /* ガード：バックアップの灯とトーンが警報を担う。一次とバックアップの限界値は同じ */ }
        entry; then CWSS_01;
        state CWSS_01 { doc /* CWSS-01 監視中（全パラメータが限界内、F7 の灯は消灯） */ }
        state CWSS_02 { doc /* CWSS-02 限界超過の検知（連続8標本／ノイズフィルタ n 回の確認中） */ }
        state CWSS_03 { doc /* CWSS-03 一次 C/W 警報（F7 の灯・MASTER ALARM 灯4・C/W トーン） */ }
        state CWSS_04 { doc /* CWSS-04 バックアップ C/W 警報（MA 灯・BACKUP C/W ALARM 灯・故障メッセージ） */ }
        state CWSS_05 { doc /* CWSS-05 アラート（クラス3：SM ALERT 灯・アラートトーン・故障メッセージ） */ }
        state CWSS_06 { doc /* CWSS-06 確認済み・F7 灯の点灯継続（音と MA 灯は消え、原因が残る） */ }
        state CWSS_07 { doc /* CWSS-07 パラメータの禁止（INHIBIT） */ }
        state CWSS_08 { doc /* CWSS-08 限界値の変更（R13U の SET・SPEC 60・TMBU） */ }
        state CWSS_09 { doc /* CWSS-09 ランプ試験・メモリ読出し */ }
        state CWSS_10 {
            doc /* CWSS-10 非常の警報（クラス1、ハードウェアのみ） */
            entry; then CWSS_11;
            state CWSS_11 { doc /* CWSS-11 煙検知（サイレン・L1 の SMOKE DETECTION 灯・MA 灯、ラッチ） */ }
            state CWSS_12 { doc /* CWSS-12 急減圧（クラクソン・MA 灯） */ }
        }
        state CWSS_13 { doc /* CWSS-13 一次 C/W の喪失（電源 A の喪失、または自己試験の失敗） */ }
        state CWSS_14 { doc /* CWSS-14 電源 B の喪失（B/U 灯の点灯・上側の電球とスリープ区画のトーンを喪失） */ }
        state CWSS_15 { doc /* CWSS-15 C/W の全喪失（電源 A・B の両方：灯とトーンをすべて喪失） */ }
        transition CWST_01 first CWSS_01 accept CwsEv01 if cwsGuard01 then CWSS_02;
        transition CWST_02 first CWSS_02 accept CwsEv02 if cwsGuard02 then CWSS_01;
        transition CWST_03 first CWSS_02 accept CwsEv03 if cwsGuard03 then CWSS_03;
        transition CWST_04 first CWSS_02 accept CwsEv04 if cwsGuard04 then CWSS_04;
        transition CWST_05 first CWSS_02 accept CwsEv05 if cwsGuard05 then CWSS_05;
        transition CWST_06 first CWSS_03 accept CwsEv06 if cwsGuard06 then CWSS_06;
        transition CWST_07 first CWSS_06 accept CwsEv07 if cwsGuard07 then CWSS_01;
        transition CWST_08 first CWSS_04 accept CwsEv08 if cwsGuard08 then CWSS_01;
        transition CWST_09 first CWSS_05 accept CwsEv09 if cwsGuard09 then CWSS_01;
        transition CWST_10 first CWSS_01 accept CwsEv10 if cwsGuard10 then CWSS_07;
        transition CWST_11 first CWSS_06 accept CwsEv11 if cwsGuard11 then CWSS_07;
        transition CWST_12 first CWSS_07 accept CwsEv12 if cwsGuard12 then CWSS_01;
        transition CWST_13 first CWSS_01 accept CwsEv13 if cwsGuard13 then CWSS_08;
        transition CWST_14 first CWSS_08 accept CwsEv14 if cwsGuard14 then CWSS_01;
        transition CWST_15 first CWSS_01 accept CwsEv15 if cwsGuard15 then CWSS_09;
        transition CWST_16 first CWSS_09 accept CwsEv16 if cwsGuard16 then CWSS_01;
        transition CWST_17 first CWSS_01 accept CwsEv17 if cwsGuard17 then CWSS_10.CWSS_11;
        transition CWST_18 first CWSS_01 accept CwsEv18 if cwsGuard18 then CWSS_10.CWSS_12;
        transition CWST_19 first CWSS_10.CWSS_11 accept CwsEv19 if cwsGuard19 then CWSS_01;
        transition CWST_20 first CWSS_10.CWSS_12 accept CwsEv20 if cwsGuard20 then CWSS_01;
        transition CWST_21 first CWSS_01 accept CwsEv21 if cwsGuard21 then CWSS_13;
        transition CWST_22 first CWSS_01 accept CwsEv22 if cwsGuard22 then CWSS_14;
        transition CWST_23 first CWSS_13 accept CwsEv23 if cwsGuard23 then CWSS_15;
        transition CWST_24 first CWSS_14 accept CwsEv24 if cwsGuard24 then CWSS_15;
        transition CWST_25 first CWSS_13 accept CwsEv25 if cwsGuard25 then CWSS_01;
        transition CWST_26 first CWSS_14 accept CwsEv26 if cwsGuard26 then CWSS_01;
        transition CWST_27 first CWSS_13 accept CwsEv27 if cwsGuard27 then CWSS_04;
    }
    state def PayloadLatchStates {
        doc /* 図222 ペイロード保持ラッチ・ドッキング機構 状態遷移図：ペイロード保持ラッチ（PRLA・AKA）と ODS ドッキング機構の状態（ペイロード保持ラッチ（PRL）） */
        @PhaseMode { phase = "PH-1"; states = "PRLS-02,PRLS-10"; }
        @PhaseMode { phase = "PH-2"; states = "PRLS-02,PRLS-10"; }
        @PhaseMode { phase = "PH-3"; states = "PRLS-03,PRLS-04,PRLS-05,PRLS-06,PRLS-07,PRLS-08,PRLS-11,PRLS-12,PRLS-13,PRLS-14,PRLS-15"; }
        @PhaseMode { phase = "PH-4"; states = "PRLS-02,PRLS-10"; }
        @PhaseMode { phase = "PH-6"; states = "PRLS-02"; }
        attribute prlGuard01 : ScalarValues::Boolean { doc /* ガード：PAYLOAD SELECT で選んだペイロード、モニタ位置でない */ }
        attribute prlGuard02 : ScalarValues::Boolean { doc /* ガード：両モータで 30 秒 */ }
        attribute prlGuard03 : ScalarValues::Boolean { doc /* ガード：解放の表示か目視がそろっている。READY（2 つのうち 1 つ以上か目視）が出る */ }
        attribute prlGuard04 : ScalarValues::Boolean { doc /* ガード：AKA（キール）を先にラッチする。回収の可能性が残らない（展開で戻らない）と判断した場合に閉じる */ }
        attribute prlGuard05 : ScalarValues::Boolean { doc /* ガード：ラッチの表示と READY の表示がそろう */ }
        attribute prlGuard06 : ScalarValues::Boolean { doc /* ガード：RELEASE を指令したまま REL を待つ。所要 60 秒 */ }
        attribute prlGuard07 : ScalarValues::Boolean { doc /* ガード：LATCH を指令したまま LAT を待つ。所要 60 秒 */ }
        attribute prlGuard08 : ScalarValues::Boolean { doc /* ガード：60 秒以内 */ }
        attribute prlGuard09 : ScalarValues::Boolean { doc /* ガード：60 秒以内 */ }
        attribute prlGuard10 : ScalarValues::Boolean { doc /* ガード：REL のマイクロスイッチの故障の疑い。解放の指令を 60 秒を超えて続けない */ }
        attribute prlGuard11 : ScalarValues::Boolean { doc /* ガード：EVA を検討する（AKA は EVA の駆動と接近ができず対象外） */ }
        attribute prlGuard12 : ScalarValues::Boolean { doc /* ガード：縦通材ラッチ（EVA の駆動機構あり） */ }
        attribute prlGuard13 : ScalarValues::Boolean { doc /* ガード：縦通材ラッチ（EVA の駆動機構あり） */ }
        attribute prlGuard14 : ScalarValues::Boolean { doc /* ガード：電源投入・約 4.3 in/min で最終位置から 15.7 in */ }
        attribute prlGuard15 : ScalarValues::Boolean { doc /* ガード：捕獲の接点がそろう。ダンパは捕獲の 5 秒後に通電する */ }
        attribute prlGuard16 : ScalarValues::Boolean { doc /* ガード：FORWARD 位置まで伸ばして確認し、INITIAL へ戻し、電子装置を電源の入れ直しで初期化する */ }
        attribute prlGuard17 : ScalarValues::Boolean { doc /* ガード：MCC GO（整列・相対運動なし） */ }
        attribute prlGuard18 : ScalarValues::Boolean { doc /* ガード：外部エアロックと内側のハッチを閉じ、ISS の準備がそろう */ }
        attribute prlGuard19 : ScalarValues::Boolean { doc /* ガード：リングを元の位置に戻す手順は資料に見つからない */ }
        attribute prlGuard20 : ScalarValues::Boolean { doc /* ガード：能動/受動フックの火工品の発火。発火で分離できないときは 96 ボルトの EVA */ }
        attribute prlGuard21 : ScalarValues::Boolean { doc /* ガード：第 3 の分離手段として EVA を冗長の 1 段に数える */ }
        entry; then PRLS_01.PRLS_02;
        state PRLS_01 {
            doc /* PRLS-01 ペイロード保持ラッチ（PRLA・AKA） */
            entry; then PRLS_02;
            state PRLS_02 { doc /* PRLS-02 ラッチ済み（LAT の表示。打上げ・突入・軌道上の保持） */ }
            state PRLS_03 { doc /* PRLS-03 解放中（RELEASE の指令、両モータで 30 秒） */ }
            state PRLS_04 { doc /* PRLS-04 解放済み（REL の表示。ペイロードの放出・把持中） */ }
            state PRLS_05 { doc /* PRLS-05 Ready-to-Latch（ベルシング中、READY の表示） */ }
            state PRLS_06 { doc /* PRLS-06 ラッチ中（LATCH の指令、両モータで 30 秒） */ }
            state PRLS_07 { doc /* PRLS-07 片方のモータだけで作動（所要 60 秒） */ }
            state PRLS_08 { doc /* PRLS-08 ラッチの不作動を EVA で手動の開閉 */ }
        }
        state PRLS_09 {
            doc /* PRLS-09 ODS ドッキング機構（APDS） */
            entry; then PRLS_10;
            state PRLS_10 { doc /* PRLS-10 収納（リング引込み・フック開・捕獲ラッチ閉） */ }
            state PRLS_11 { doc /* PRLS-11 リング伸展（INITIAL 位置、ドッキング待ち） */ }
            state PRLS_12 { doc /* PRLS-12 捕獲・減衰・引込み・フック閉鎖 */ }
            state PRLS_13 { doc /* PRLS-13 ドッキング完了（リング最終位置、ISS と結合） */ }
            state PRLS_14 { doc /* PRLS-14 分離（UNDOCKING、フック開、ばねの栓） */ }
            state PRLS_15 { doc /* PRLS-15 非常の分離（火工品のフック・96 ボルトの EVA） */ }
        }
        transition PRLT_01 first PRLS_01.PRLS_02 accept PrlEv01 if prlGuard01 then PRLS_01.PRLS_03;
        transition PRLT_02 first PRLS_01.PRLS_03 accept PrlEv02 if prlGuard02 then PRLS_01.PRLS_04;
        transition PRLT_03 first PRLS_01.PRLS_04 accept PrlEv03 if prlGuard03 then PRLS_01.PRLS_05;
        transition PRLT_04 first PRLS_01.PRLS_05 accept PrlEv04 if prlGuard04 then PRLS_01.PRLS_06;
        transition PRLT_05 first PRLS_01.PRLS_06 accept PrlEv05 if prlGuard05 then PRLS_01.PRLS_02;
        transition PRLT_06 first PRLS_01.PRLS_03 accept PrlEv06 if prlGuard06 then PRLS_01.PRLS_07;
        transition PRLT_07 first PRLS_01.PRLS_06 accept PrlEv07 if prlGuard07 then PRLS_01.PRLS_07;
        transition PRLT_08 first PRLS_01.PRLS_07 accept PrlEv08 if prlGuard08 then PRLS_01.PRLS_04;
        transition PRLT_09 first PRLS_01.PRLS_07 accept PrlEv09 if prlGuard09 then PRLS_01.PRLS_02;
        transition PRLT_10 first PRLS_01.PRLS_03 accept PrlEv10 if prlGuard10 then PRLS_01.PRLS_08;
        transition PRLT_11 first PRLS_01.PRLS_06 accept PrlEv11 if prlGuard11 then PRLS_01.PRLS_08;
        transition PRLT_12 first PRLS_01.PRLS_08 accept PrlEv12 if prlGuard12 then PRLS_01.PRLS_04;
        transition PRLT_13 first PRLS_01.PRLS_08 accept PrlEv13 if prlGuard13 then PRLS_01.PRLS_02;
        transition PRLT_14 first PRLS_09.PRLS_10 accept PrlEv14 if prlGuard14 then PRLS_09.PRLS_11;
        transition PRLT_15 first PRLS_09.PRLS_11 accept PrlEv15 if prlGuard15 then PRLS_09.PRLS_12;
        transition PRLT_16 first PRLS_09.PRLS_12 accept PrlEv16 if prlGuard16 then PRLS_09.PRLS_11;
        transition PRLT_17 first PRLS_09.PRLS_12 accept PrlEv17 if prlGuard17 then PRLS_09.PRLS_13;
        transition PRLT_18 first PRLS_09.PRLS_13 accept PrlEv18 if prlGuard18 then PRLS_09.PRLS_14;
        transition PRLT_19 first PRLS_09.PRLS_14 accept PrlEv19 if prlGuard19 then PRLS_09.PRLS_10;
        transition PRLT_20 first PRLS_09.PRLS_13 accept PrlEv20 if prlGuard20 then PRLS_09.PRLS_15;
        transition PRLT_21 first PRLS_09.PRLS_15 accept PrlEv21 if prlGuard21 then PRLS_09.PRLS_10;
    }
    state def CrewEscapeModes {
        doc /* 図223 脱出のモード 状態遷移図：脱出のモード（SM_ESC）（脱出系（ESC）） */
        @PhaseMode { phase = "PH-1"; states = "ESCS-01,ESCS-02"; }
        @PhaseMode { phase = "PH-2"; states = "ESCS-03,ESCS-04,ESCS-05,ESCS-06,ESCS-07,ESCS-08,ESCS-09,ESCS-10,ESCS-11"; }
        @PhaseMode { phase = "PH-3"; states = "ESCS-01"; }
        @PhaseMode { phase = "PH-4"; states = "ESCS-01"; }
        @PhaseMode { phase = "PH-6"; states = "ESCS-03,ESCS-04,ESCS-05,ESCS-06,ESCS-07,ESCS-08,ESCS-09,ESCS-10,ESCS-11"; }
        @PhaseMode { phase = "PH-7"; states = "ESCS-12,ESCS-13,ESCS-14,ESCS-15,ESCS-16"; }
        attribute escGuard01 : ScalarValues::Boolean { doc /* ガード：乗員が射点にいる（打上げ前） */ }
        attribute escGuard02 : ScalarValues::Boolean { doc /* ガード：NASA の Test Director の指示があるまでバンカーから出ない */ }
        attribute escGuard03 : ScalarValues::Boolean { doc /* ガード：CDR の判断。可能なら 50K ft 以上で宣言（ECAL は 70K ft）。赤の領域では MCC が勧める */ }
        attribute escGuard04 : ScalarValues::Boolean { doc /* ガード：機体は最小沈下率の姿勢で自動操縦 */ }
        attribute escGuard05 : ScalarValues::Boolean { doc /* ガード：T ハンドル箱の安全ピンを外し済み */ }
        attribute escGuard06 : ScalarValues::Boolean { doc /* ガード：キャビンの均圧（約 75 秒）。均圧前の投棄は中甲板の床が座屈する */ }
        attribute escGuard07 : ScalarValues::Boolean { doc /* ガード：ポールが完全に伸びないときは手動のラチェットで伸ばす */ }
        attribute escGuard08 : ScalarValues::Boolean { doc /* ガード：ブライドルが働かなければ引き手（リップコード）で開く */ }
        attribute escGuard09 : ScalarValues::Boolean { doc /* ガード：主傘の降下速度は平均 24 ft/s */ }
        attribute escGuard10 : ScalarValues::Boolean { doc /* ガード：救助部隊の到着時刻はベイルアウトの場所による */ }
        attribute escGuard11 : ScalarValues::Boolean { doc /* ガード：キャビンが急回転していない。乗員は非常用酸素をすぐ作動させる */ }
        attribute escGuard12 : ScalarValues::Boolean { doc /* ガード：脱出ポールは使わない。電力を失っていても火工品は作動する */ }
        attribute escGuard13 : ScalarValues::Boolean { doc /* ガード：キャビン圧が着陸地の大気圧との差 3.2 psid 以下（超えるときはキャビンベント弁で減圧） */ }
        attribute escGuard14 : ScalarValues::Boolean { doc /* ガード：CDR の判断。爆発性・可燃性の雰囲気でない。地上要員が危険区域にいないことを確認する */ }
        attribute escGuard15 : ScalarValues::Boolean { doc /* ガード：ハッチ投棄が望ましいが、不可能なときの代替（窓 8） */ }
        attribute escGuard16 : ScalarValues::Boolean { doc /* ガード：側面ハッチが開いている */ }
        attribute escGuard17 : ScalarValues::Boolean { doc /* ガード：ハッチが投棄された */ }
        attribute escGuard18 : ScalarValues::Boolean { doc /* ガード：窓 8 の外側と内側の窓が開いた */ }
        attribute escGuard19 : ScalarValues::Boolean { doc /* ガード：本書の判断（資料に対応する文は無い） */ }
        entry; then ESCS_01;
        state ESCS_01 { doc /* ESCS-01 通常（脱出装置は待機、T ハンドル箱の安全ピンを管理） */ }
        state ESCS_02 { doc /* ESCS-02 打上げ前の射点の脱出（モード I〜IV：スライドワイヤのバスケット） */ }
        state ESCS_03 {
            doc /* ESCS-03 飛行中のベイルアウト（モード VIII、30,000 ft 以下の制御された滑空） */
            entry; then ESCS_04;
            state ESCS_04 { doc /* ESCS-04 ベイルアウトの宣言・最小沈下率の姿勢（自動操縦、ATO 位置） */ }
            state ESCS_05 { doc /* ESCS-05 バイザー閉鎖・非常用酸素の作動（50,000 ft） */ }
            state ESCS_06 { doc /* ESCS-06 キャビンのベント（40,000 ft、パイロベントバルブ、約 75 秒） */ }
            state ESCS_07 { doc /* ESCS-07 側面ハッチの投棄（31,000 ft 付近、3組の火工品） */ }
            state ESCS_08 { doc /* ESCS-08 脱出ポールでの退出（ブライドルとランヤード、約 2 分） */ }
            state ESCS_09 { doc /* ESCS-09 降下・パラシュート（ドローグ、14,000 ft で主傘） */ }
            state ESCS_10 { doc /* ESCS-10 着水・生存（SEAWARS、救命いかだ、SARSAT） */ }
            state ESCS_11 { doc /* ESCS-11 制御不能な飛行での脱出（電力喪失下、脱出ポールを使わない） */ }
        }
        state ESCS_12 {
            doc /* ESCS-12 着陸後の脱出（モード V） */
            entry; then ESCS_13;
            state ESCS_13 { doc /* ESCS-13 ハッチ開放（モード V：側面ハッチを通常に開け、スライドを使う） */ }
            state ESCS_14 { doc /* ESCS-14 ハッチ投棄（モード V：火工品で側面ハッチを投棄） */ }
            state ESCS_15 { doc /* ESCS-15 窓 8 の脱出パネル（モード V：投棄して Sky Genie で降りる） */ }
        }
        state ESCS_16 { doc /* ESCS-16 退出完了・救助待ち（モード VI・VII の補助つきの退出を含む） */ }
        transition ESCT_01 first ESCS_01 accept EscEv01 if escGuard01 then ESCS_02;
        transition ESCT_02 first ESCS_02 accept EscEv02 if escGuard02 then ESCS_16;
        transition ESCT_03 first ESCS_01 accept EscEv03 if escGuard03 then ESCS_03.ESCS_04;
        transition ESCT_04 first ESCS_03.ESCS_04 accept EscEv04 if escGuard04 then ESCS_03.ESCS_05;
        transition ESCT_05 first ESCS_03.ESCS_05 accept EscEv05 if escGuard05 then ESCS_03.ESCS_06;
        transition ESCT_06 first ESCS_03.ESCS_06 accept EscEv06 if escGuard06 then ESCS_03.ESCS_07;
        transition ESCT_07 first ESCS_03.ESCS_07 accept EscEv07 if escGuard07 then ESCS_03.ESCS_08;
        transition ESCT_08 first ESCS_03.ESCS_08 accept EscEv08 if escGuard08 then ESCS_03.ESCS_09;
        transition ESCT_09 first ESCS_03.ESCS_09 accept EscEv09 if escGuard09 then ESCS_03.ESCS_10;
        transition ESCT_10 first ESCS_03.ESCS_10 accept EscEv10 if escGuard10 then ESCS_16;
        transition ESCT_11 first ESCS_01 accept EscEv11 if escGuard11 then ESCS_03.ESCS_11;
        transition ESCT_12 first ESCS_03.ESCS_11 accept EscEv12 if escGuard12 then ESCS_03.ESCS_09;
        transition ESCT_13 first ESCS_01 accept EscEv13 if escGuard13 then ESCS_12.ESCS_13;
        transition ESCT_14 first ESCS_12.ESCS_13 accept EscEv14 if escGuard14 then ESCS_12.ESCS_14;
        transition ESCT_15 first ESCS_12.ESCS_14 accept EscEv15 if escGuard15 then ESCS_12.ESCS_15;
        transition ESCT_16 first ESCS_12.ESCS_13 accept EscEv16 if escGuard16 then ESCS_16;
        transition ESCT_17 first ESCS_12.ESCS_14 accept EscEv17 if escGuard17 then ESCS_16;
        transition ESCT_18 first ESCS_12.ESCS_15 accept EscEv18 if escGuard18 then ESCS_16;
        transition ESCT_19 first ESCS_16 accept EscEv19 if escGuard19 then ESCS_01;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def LandingGearStatesHolder :> MECH_LDG {
        doc /* 降着装置・制動（LDG）（SSD-FD-MECH-LDG-001）は LandingGearStates の状態を持つ */
        exhibit state landingGearStates : LandingGearStates;
    }
    part def VentDoorStatesHolder :> MECH_VNT {
        doc /* ベントドア・ET アンビリカルドア（VNT）（SSD-FD-MECH-VNT-001）は VentDoorStates の状態を持つ */
        exhibit state ventDoorStates : VentDoorStates;
    }
    part def CautionWarningStatesHolder :> CW_PRI {
        doc /* 警報系（C/W）（SSD-FD-CW-PRI-001）は CautionWarningStates の状態を持つ */
        exhibit state cautionWarningStates : CautionWarningStates;
    }
    part def PayloadLatchStatesHolder :> PLS_PRL {
        doc /* ペイロード保持ラッチ（PRL）（SSD-FD-PLS-PRL-001）は PayloadLatchStates の状態を持つ */
        exhibit state payloadLatchStates : PayloadLatchStates;
    }
    part def CrewEscapeModesHolder :> CREW_ESC {
        doc /* 脱出系（ESC）（SSD-FD-CREW-ESC-001）は CrewEscapeModes の状態を持つ */
        exhibit state crewEscapeModes : CrewEscapeModes;
    }
    // ---- 活動（行動・判断・合流と流れ）
    action def StructuralLimitsAssessment {
        doc /* 図224 構造の運用の限界の判断 活動図：構造の運用の限界の判断（重量・重心、上昇の荷重、再突入・着陸の限界） */
        attribute withinWeightAndCgLimits : ScalarValues::Boolean { doc /* ガード：限界内 */ }
        attribute throttledDown : ScalarValues::Boolean { doc /* ガード：絞られた */ }
        attribute withinStructuralLimits : ScalarValues::Boolean { doc /* ガード：超えない */ }
        action AC_SL_01 { doc /* AC-SL-01 飛行前に着陸重量と重心を予測し、運用の限界と照合する */ }
        decide DC_SL_01;
            if withinWeightAndCgLimits then MG_SL_01;
            if not withinWeightAndCgLimits then AC_SL_02;
        merge MG_SL_01;
        action AC_SL_03 { doc /* AC-SL-03 上昇で SSME を絞り、動圧を 820 psf 以内・荷重を約 3 g 以内にする */ }
        decide DC_SL_02;
            if throttledDown then MG_SL_02;
            if not throttledDown then AC_SL_04;
        merge MG_SL_02;
        action AC_SL_05 { doc /* AC-SL-05 再突入と着陸は Nz 2.5 g・動圧 350 psf・沈下率・横風の限界内で行う */ }
        decide DC_SL_03;
            if withinStructuralLimits then done;
            if not withinStructuralLimits then AC_SL_06;
        action AC_SL_02 { doc /* AC-SL-02 前部 RCS の投棄と OMS の削減で収め、足りなければ免除を得る */ }
        action AC_SL_04 { doc /* AC-SL-04 乗員が手動で絞り、超過したら飛行後の解析と点検を要する */ }
        action AC_SL_06 { doc /* AC-SL-06 飛行後の解析とオービタの構造の点検を行う */ }
        first start then AC_SL_01;
        first AC_SL_01 then DC_SL_01;
        first AC_SL_02 then MG_SL_01;
        first MG_SL_01 then AC_SL_03;
        first AC_SL_03 then DC_SL_02;
        first AC_SL_04 then MG_SL_02;
        first MG_SL_02 then AC_SL_05;
        first AC_SL_05 then DC_SL_03;
        first AC_SL_06 then done;
    }
}
