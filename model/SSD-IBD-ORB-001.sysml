// SysML v2 テキスト：内部ブロック図（機器の接続と、流れる物・量と単位）
// SSD-IBD-ORB-001 内部ブロック・流れ定義書（機器の接続・流れる物・量と単位） の表から生成（lib/build_docs_au.py・lib/ibdmodel2.py・rev_an/andata.py・rev_au/audata.py）。値の根拠の頁は SSD-IBD-ORB-001 にある。
package SSD_IBD_ORB_001 {
    doc /* SSD-IBD-ORB-001 内部ブロック・流れ定義書（機器の接続・流れる物・量と単位）。図112・図113・図114・図128・図129・図130・図131 と同じ部品・ポート・流れ・値。機器は構造モデル（SSD-BLK-SYS-001）の機能ブロックの部品の中に置き、流れは IF を詳しくする（#refinement）。 */
    private import SSD_BLK_SYS_001::*;
    private import ModelingMetadata::*;
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    // ---- 流れる物（既存の種別を特化し、量を属性に持つ）とポート定義
    item def CryoO2 :> Fluid {
        doc /* 極低温（超臨界）酸素（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
    }
    port def CryoO2Port :> FluidPort { out item :>> fluid : CryoO2; }
    item def CryoH2 :> Fluid {
        doc /* 極低温（超臨界）水素（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
    }
    port def CryoH2Port :> FluidPort { out item :>> fluid : CryoH2; }
    item def Dc28V :> ElectricPower {
        doc /* 28 V 直流電力（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
        attribute current : ElectricCurrentValue[0..*] { doc /* 電流（資料の単位 A） */ }
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 kW） */ }
    }
    port def Dc28VPort :> PowerPort { out item :>> electricPower : Dc28V; }
    item def Ac117V400Hz :> ElectricPower {
        doc /* 117 V（rms）400 Hz 三相交流電力（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
        attribute frequency : FrequencyValue[0..*] { doc /* 周波数（資料の単位 Hz） */ }
        attribute current : ElectricCurrentValue[0..*] { doc /* 電流（資料の単位 A） */ }
    }
    port def Ac117V400HzPort :> PowerPort { out item :>> electricPower : Ac117V400Hz; }
    item def ProductWater :> Fluid {
        doc /* 燃料電池の生成水（飲料水）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def ProductWaterPort :> FluidPort { out item :>> fluid : ProductWater; }
    item def FcWasteHeat :> Heat {
        doc /* 燃料電池の廃熱（冷却材経由）（熱） */
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 kW） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def FcWasteHeatPort :> HeatPort { out item :>> heat : FcWasteHeat; }
    item def PurgeGas :> Fluid {
        doc /* パージガス（水素・酸素と不活性ガス・汚染物）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
    }
    port def PurgeGasPort :> FluidPort { out item :>> fluid : PurgeGas; }
    item def FcMonitorData :> DataCommand {
        doc /* 燃料電池の監視データ（電圧・電流・温度・弁位置・セル電圧）（データ・指令） */
    }
    port def FcMonitorDataPort :> DataPort { out item :>> dataCommand : FcMonitorData; }
    item def EquipmentHeat :> Heat {
        doc /* 配電機器の発熱（コールドプレート冷却）（熱） */
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
    }
    port def EquipmentHeatPort :> HeatPort { out item :>> heat : EquipmentHeat; }
    item def Freon21Coolant :> Fluid {
        doc /* Freon-21 冷却材（ATCS 冷却ループ）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def Freon21CoolantPort :> FluidPort { out item :>> fluid : Freon21Coolant; }
    item def ThermalLoad :> Heat {
        doc /* 熱（熱交換器・コールドプレート・放射で移る熱量）（熱） */
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 Btu/h） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def ThermalLoadPort :> HeatPort { out item :>> heat : ThermalLoad; }
    item def FesSupplyWater :> Fluid {
        doc /* FES 供給水（給水ライン A・B）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
    }
    port def FesSupplyWaterPort :> FluidPort { out item :>> fluid : FesSupplyWater; }
    item def FesSteamVent :> Fluid {
        doc /* FES の排出蒸気（機外へ）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
        attribute heatRejection : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 Btu/h） */ }
    }
    port def FesSteamVentPort :> FluidPort { out item :>> fluid : FesSteamVent; }
    item def Ammonia :> Fluid {
        doc /* アンモニア（NH3、貯蔵タンクからボイラへの液）（推進薬・流体） */
        attribute mass : MassValue[0..*] { doc /* 質量（資料の単位 lb） */ }
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def AmmoniaPort :> FluidPort { out item :>> fluid : Ammonia; }
    item def AmmoniaVent :> Fluid {
        doc /* アンモニアの過熱蒸気（機外へ）（推進薬・流体） */
        attribute heatRejection : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 Btu/h） */ }
    }
    port def AmmoniaVentPort :> FluidPort { out item :>> fluid : AmmoniaVent; }
    item def GseCoolant :> Fluid {
        doc /* 地上冷却材（地上設備・冷却カートから T-0 アンビリカル経由）（推進薬・流体） */
        attribute heatRejection : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 Btu/h） */ }
    }
    port def GseCoolantPort :> FluidPort { out item :>> fluid : GseCoolant; }
    item def ThermalControlCommand :> DataCommand {
        doc /* 熱制御の指令（BFS／RTC による制御器・ポンプの入切）（データ・指令） */
    }
    port def ThermalControlCommandPort :> DataPort { out item :>> dataCommand : ThermalControlCommand; }
    item def LiquidOxygen :> Fluid {
        doc /* 液体酸素（LO2）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/s） */ }
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def LiquidOxygenPort :> FluidPort { out item :>> fluid : LiquidOxygen; }
    item def LiquidHydrogen :> Fluid {
        doc /* 液体水素（LH2）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/s） */ }
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def LiquidHydrogenPort :> FluidPort { out item :>> fluid : LiquidHydrogen; }
    item def GaseousOxygenPressurant :> Fluid {
        doc /* ET 加圧用ガス酸素（GO2）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
    }
    port def GaseousOxygenPressurantPort :> FluidPort { out item :>> fluid : GaseousOxygenPressurant; }
    item def GaseousHydrogenPressurant :> Fluid {
        doc /* ET 加圧用ガス水素（GH2）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def GaseousHydrogenPressurantPort :> FluidPort { out item :>> fluid : GaseousHydrogenPressurant; }
    item def Helium :> Fluid {
        doc /* ヘリウム（パージ・空圧作動・マニホールド加圧・ET 地上加圧）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def HeliumPort :> FluidPort { out item :>> fluid : Helium; }
    item def Thrust :> StructuralLoad {
        doc /* SSME 推力（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
    }
    port def ThrustPort :> LoadPort { out item :>> structuralLoad : Thrust; }
    item def EngineHydraulic :> HydraulicFluid {
        doc /* エンジン弁作動・ジンバル用の油圧（油圧） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def EngineHydraulicPort :> HydraulicPort { out item :>> hydraulicFluid : EngineHydraulic; }
    item def EngineCommandData :> DataCommand {
        doc /* エンジン指令・エンジンデータ（GPC・EIU・制御器・ATVC）（データ・指令） */
    }
    port def EngineCommandDataPort :> DataPort { out item :>> dataCommand : EngineCommandData; }
    item def MpsElectricPower :> ElectricPower {
        doc /* MPS の電力（制御器への交流、弁・トランスデューサへの直流）（電力） */
    }
    port def MpsElectricPowerPort :> PowerPort { out item :>> electricPower : MpsElectricPower; }
    item def DpsBusData :> DataCommand {
        doc /* データバスのシリアルデジタル指令・応答データ（FC・PL・LDB・MM・DK・IP・ICC の各バス）（データ・指令） */
        attribute dataRate : Real[0..*] { doc /* 数値（資料の単位 kbps） */ }
    }
    port def DpsBusDataPort :> DataPort { out item :>> dataCommand : DpsBusData; }
    item def HardwiredIo :> DataCommand {
        doc /* MDM と機器の間の配線信号（離散・アナログ・シリアルデジタル）（データ・指令） */
    }
    port def HardwiredIoPort :> DataPort { out item :>> dataCommand : HardwiredIo; }
    item def EiuEngineData :> DataCommand {
        doc /* SSME の指令と車両データ表（EIU 経由）（データ・指令） */
        attribute dataRate : Real[0..*] { doc /* 数値（資料の単位 kbps） */ }
    }
    port def EiuEngineDataPort :> DataPort { out item :>> dataCommand : EiuEngineData; }
    item def PyroFireCommand :> DataCommand {
        doc /* 火工品の ARM・FIRE 1・FIRE 2 指令（MEC→PIC）（データ・指令） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def PyroFireCommandPort :> DataPort { out item :>> dataCommand : PyroFireCommand; }
    item def TimingSignal :> DataCommand {
        doc /* 時刻データ（GMT/MET）と同期クロック（データ・指令） */
    }
    port def TimingSignalPort :> DataPort { out item :>> dataCommand : TimingSignal; }
    item def MedsDisplayData :> DataCommand {
        doc /* MEDS の 1553B 表示データ・キーボード入力・ADC のデジタル値（データ・指令） */
    }
    port def MedsDisplayDataPort :> DataPort { out item :>> dataCommand : MedsDisplayData; }
    item def DpsDcPower :> ElectricPower {
        doc /* DPS 機器への 28 V 直流電力（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
    }
    port def DpsDcPowerPort :> PowerPort { out item :>> electricPower : DpsDcPower; }
    item def AvionicsHeat :> Heat {
        doc /* 電子機器の発熱（強制空冷・コールドプレート冷却）（熱） */
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
    }
    port def AvionicsHeatPort :> HeatPort { out item :>> heat : AvionicsHeat; }
    item def Hydrazine :> Fluid {
        doc /* APU 燃料（無水ヒドラジン N2H4）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/min） */ }
    }
    port def HydrazinePort :> FluidPort { out item :>> fluid : Hydrazine; }
    item def ApuExhaustGas :> Fluid {
        doc /* ガス発生器の分解ガス・タービン排気（推進薬・流体） */
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def ApuExhaustGasPort :> FluidPort { out item :>> fluid : ApuExhaustGas; }
    item def ApuShaftPower :> StructuralLoad {
        doc /* APU の軸動力（タービン・減速ギアボックスの回転）（構造・荷重） */
        attribute rotationalSpeed : Real[0..*] { doc /* 数値（資料の単位 rpm） */ }
    }
    port def ApuShaftPowerPort :> LoadPort { out item :>> structuralLoad : ApuShaftPower; }
    item def ApuLubeOil :> Fluid {
        doc /* APU の潤滑油（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def ApuLubeOilPort :> FluidPort { out item :>> fluid : ApuLubeOil; }
    item def OrbiterHydraulicFluid :> HydraulicFluid {
        doc /* オービタ油圧系の作動油（MIL-H-83282）（油圧） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute volumeFlowRate : VolumeFlowRateValue[0..*] { doc /* 体積流量（資料の単位 gpm） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def OrbiterHydraulicFluidPort :> HydraulicPort { out item :>> hydraulicFluid : OrbiterHydraulicFluid; }
    item def ApuWater :> Fluid {
        doc /* APU 系の水（WSB の給水・蒸気、噴射器冷却水）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/min） */ }
    }
    port def ApuWaterPort :> FluidPort { out item :>> fluid : ApuWater; }
    item def HydraulicThermalHeat :> Heat {
        doc /* フレオンループと作動油の間の熱（熱） */
    }
    port def HydraulicThermalHeatPort :> HeatPort { out item :>> heat : HydraulicThermalHeat; }
    item def ApuHydData :> DataCommand {
        doc /* APU/HYD の指令・計測データ（制御器・GPC・C/W）（データ・指令） */
    }
    port def ApuHydDataPort :> DataPort { out item :>> dataCommand : ApuHydData; }
    item def ApuElectricPower :> ElectricPower {
        doc /* APU/HYD の電力（28 V 直流）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 kW） */ }
    }
    port def ApuElectricPowerPort :> PowerPort { out item :>> electricPower : ApuElectricPower; }
    item def PressurantHelium :> Fluid {
        doc /* 推進薬タンク加圧用ヘリウム（OMS・RCS）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
    }
    port def PressurantHeliumPort :> FluidPort { out item :>> fluid : PressurantHelium; }
    item def HypergolicPropellant :> Fluid {
        doc /* ハイパーゴリック推進薬（燃料 MMH と酸化剤 N2O4 の対、対の配管・対の弁で流れる）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute differentialPressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psid） */ }
        attribute mass : MassValue[0..*] { doc /* 質量（資料の単位 lb） */ }
    }
    port def HypergolicPropellantPort :> FluidPort { out item :>> fluid : HypergolicPropellant; }
    item def PropulsiveThrust :> StructuralLoad {
        doc /* OMS エンジン・RCS 噴射器の推力（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
    }
    port def PropulsiveThrustPort :> LoadPort { out item :>> structuralLoad : PropulsiveThrust; }
    item def PropulsionCommandData :> DataCommand {
        doc /* 推進系の指令・計測データ（GPC の噴射・弁指令、圧力・温度・弁位置）（データ・指令） */
    }
    port def PropulsionCommandDataPort :> DataPort { out item :>> dataCommand : PropulsionCommandData; }
    item def PropulsionElectricPower :> ElectricPower {
        doc /* 推進系の電力（交流モータ式弁への交流、RJD・ソレノイド弁への直流）（電力） */
    }
    port def PropulsionElectricPowerPort :> PowerPort { out item :>> electricPower : PropulsionElectricPower; }
    item def PropellantHeaterHeat :> Heat {
        doc /* 推進薬・噴射器を保温するヒータの熱（熱） */
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def PropellantHeaterHeatPort :> HeatPort { out item :>> heat : PropellantHeaterHeat; }
    item def SBandPmRf :> RfSignal {
        doc /* S 帯 PM の RF 信号（フォワードリンク／リターンリンク）（RF（無線）） */
        attribute frequency : FrequencyValue[0..*] { doc /* 周波数（資料の単位 MHz） */ }
        attribute dataRate : Real[0..*] { doc /* 数値（資料の単位 kbps） */ }
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
    }
    port def SBandPmRfPort :> RfPort { out item :>> rfSignal : SBandPmRf; }
    item def SBandFmRf :> RfSignal {
        doc /* S 帯 FM の RF 信号（リターンリンクのみ）（RF（無線）） */
        attribute frequency : FrequencyValue[0..*] { doc /* 周波数（資料の単位 MHz） */ }
        attribute dataRate : Real[0..*] { doc /* 数値（資料の単位 kbps） */ }
    }
    port def SBandFmRfPort :> RfPort { out item :>> rfSignal : SBandFmRf; }
    item def KuBandRf :> RfSignal {
        doc /* Ku 帯の RF 信号（TDRS とのフォワード／リターンリンク）（RF（無線）） */
        attribute frequency : FrequencyValue[0..*] { doc /* 周波数（資料の単位 MHz） */ }
        attribute ch1DataRate : Real[0..*] { doc /* 数値（資料の単位 kbps） */ }
        attribute ch2DataRate : Real[0..*] { doc /* 数値（資料の単位 Mbps） */ }
        attribute ch3DataRate : Real[0..*] { doc /* 数値（資料の単位 Mbps） */ }
    }
    port def KuBandRfPort :> RfPort { out item :>> rfSignal : KuBandRf; }
    item def UhfRf :> RfSignal {
        doc /* UHF の RF 信号（SPLX/ATC・SSOR）（RF（無線）） */
        attribute frequency : FrequencyValue[0..*] { doc /* 周波数（資料の単位 MHz） */ }
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
        attribute powerLevel : Real[0..*] { doc /* 数値（資料の単位 dBm） */ }
    }
    port def UhfRfPort :> RfPort { out item :>> rfSignal : UhfRf; }
    item def ReturnLinkData :> DataCommand {
        doc /* リターンリンクのデジタルデータ（テレメトリとデジタル音声の合成、記録データ、映像）（データ・指令） */
        attribute dataRate : Real[0..*] { doc /* 数値（資料の単位 kbps） */ }
    }
    port def ReturnLinkDataPort :> DataPort { out item :>> dataCommand : ReturnLinkData; }
    item def ForwardLinkData :> DataCommand {
        doc /* フォワードリンクのデジタルデータ（地上指令とデジタル音声）（データ・指令） */
        attribute dataRate : Real[0..*] { doc /* 数値（資料の単位 kbps） */ }
    }
    port def ForwardLinkDataPort :> DataPort { out item :>> dataCommand : ForwardLinkData; }
    item def AnalogVoice :> DataCommand {
        doc /* アナログ音声（A/G 1・2、A/A ループ）（データ・指令） */
    }
    port def AnalogVoicePort :> DataPort { out item :>> dataCommand : AnalogVoice; }
    item def CommConfigCommand :> DataCommand {
        doc /* 通信系の構成指令（GCIL・アンテナ切替・Ku 帯の指向）（データ・指令） */
    }
    port def CommConfigCommandPort :> DataPort { out item :>> dataCommand : CommConfigCommand; }
    item def RadarTrackData :> DataCommand {
        doc /* Ku 帯レーダの追尾データ（角度・角速度・距離・距離変化率）（データ・指令） */
    }
    port def RadarTrackDataPort :> DataPort { out item :>> dataCommand : RadarTrackData; }
    // ---- 図112 EPS 発電・配電 内部ブロック図：機器
    part def <'EQ-EPS-01'> O2Tank :> SSD_ALC_SYS_001::Physical::PHY_EPS_02 {
        doc /* 酸素タンク（O2 TK 1〜5）（機能ブロック SSD-FD-EPS-PRSD-001、機器 PHY-EPS-02） */
        port o_FL_EPS_03 : CryoO2Port;
    }
    part def <'EQ-EPS-02'> H2Tank :> SSD_ALC_SYS_001::Physical::PHY_EPS_02 {
        doc /* 水素タンク（H2 TK 1〜5）（機能ブロック SSD-FD-EPS-PRSD-001、機器 PHY-EPS-02） */
        port o_FL_EPS_04 : CryoH2Port;
    }
    part def <'EQ-EPS-03'> O2ValveModule :> SSD_ALC_SYS_001::Physical::PHY_EPS_02 {
        doc /* 酸素バルブモジュール1・2（逆止弁・マニホールド弁・FC 反応剤弁・ECLSS 酸素供給弁を含む酸素マニホールド）（機能ブロック SSD-FD-EPS-PRSD-001、機器 PHY-EPS-02） */
        port i_FL_EPS_01 : ~CryoO2Port;
        port i_FL_EPS_03 : ~CryoO2Port;
        port o_FL_EPS_05 : CryoO2Port;
        port o_FL_EPS_06 : CryoO2Port;
        port o_FL_EPS_07 : CryoO2Port;
        port o_FL_EPS_11 : CryoO2Port;
    }
    part def <'EQ-EPS-04'> H2ValveModule :> SSD_ALC_SYS_001::Physical::PHY_EPS_02 {
        doc /* 水素バルブモジュール1・2（逆止弁・マニホールド弁・FC 反応剤弁を含む水素マニホールド）（機能ブロック SSD-FD-EPS-PRSD-001、機器 PHY-EPS-02） */
        port i_FL_EPS_02 : ~CryoH2Port;
        port i_FL_EPS_04 : ~CryoH2Port;
        port o_FL_EPS_08 : CryoH2Port;
        port o_FL_EPS_09 : CryoH2Port;
        port o_FL_EPS_10 : CryoH2Port;
    }
    part def <'EQ-EPS-05'> FuelCell1 :> SSD_ALC_SYS_001::Physical::PHY_EPS_01 {
        doc /* 燃料電池1（FC 1）（機能ブロック SSD-FD-EPS-FCP-001、機器 PHY-EPS-01） */
        port i_FL_EPS_05 : ~CryoO2Port;
        port i_FL_EPS_08 : ~CryoH2Port;
        port o_FL_EPS_12 : Dc28VPort;
        port o_FL_EPS_15 : ProductWaterPort;
        port o_FL_EPS_18 : FcWasteHeatPort;
        port o_FL_EPS_21 : PurgeGasPort;
        port o_FL_EPS_22 : FcMonitorDataPort;
        port o_FL_EPS_28 : Dc28VPort;
        port i_FL_EPS_29 : ~Dc28VPort;
        port i_FL_EPS_40 : ~Ac117V400HzPort;
    }
    part def <'EQ-EPS-06'> FuelCell2 :> SSD_ALC_SYS_001::Physical::PHY_EPS_01 {
        doc /* 燃料電池2（FC 2）（機能ブロック SSD-FD-EPS-FCP-001、機器 PHY-EPS-01） */
        port i_FL_EPS_06 : ~CryoO2Port;
        port i_FL_EPS_09 : ~CryoH2Port;
        port o_FL_EPS_13 : Dc28VPort;
        port o_FL_EPS_16 : ProductWaterPort;
        port o_FL_EPS_19 : FcWasteHeatPort;
        port i_FL_EPS_41 : ~Ac117V400HzPort;
    }
    part def <'EQ-EPS-07'> FuelCell3 :> SSD_ALC_SYS_001::Physical::PHY_EPS_01 {
        doc /* 燃料電池3（FC 3）（機能ブロック SSD-FD-EPS-FCP-001、機器 PHY-EPS-01） */
        port i_FL_EPS_07 : ~CryoO2Port;
        port i_FL_EPS_10 : ~CryoH2Port;
        port o_FL_EPS_14 : Dc28VPort;
        port o_FL_EPS_17 : ProductWaterPort;
        port o_FL_EPS_20 : FcWasteHeatPort;
        port o_FL_EPS_30 : Dc28VPort;
        port i_FL_EPS_42 : ~Ac117V400HzPort;
    }
    part def <'EQ-EPS-08'> DistAssy1MainA :> SSD_ALC_SYS_001::Physical::PHY_EPS_04 {
        doc /* 配電組立1（DA 1、主母線 MN A）（機能ブロック SSD-FD-EPS-DC-001、機器 PHY-EPS-04） */
        port i_FL_EPS_12 : ~Dc28VPort;
        port o_FL_EPS_24 : Dc28VPort;
        port o_FL_EPS_27 : Dc28VPort;
        port o_FL_EPS_35 : Dc28VPort;
    }
    part def <'EQ-EPS-09'> DistAssy2MainB :> SSD_ALC_SYS_001::Physical::PHY_EPS_04 {
        doc /* 配電組立2（DA 2、主母線 MN B）（機能ブロック SSD-FD-EPS-DC-001、機器 PHY-EPS-04） */
        port i_FL_EPS_13 : ~Dc28VPort;
        port o_FL_EPS_25 : Dc28VPort;
        port i_FL_EPS_27 : ~Dc28VPort;
        port o_FL_EPS_36 : Dc28VPort;
    }
    part def <'EQ-EPS-10'> DistAssy3MainC :> SSD_ALC_SYS_001::Physical::PHY_EPS_04 {
        doc /* 配電組立3（DA 3、主母線 MN C）（機能ブロック SSD-FD-EPS-DC-001、機器 PHY-EPS-04） */
        port i_FL_EPS_14 : ~Dc28VPort;
        port o_FL_EPS_26 : Dc28VPort;
        port o_FL_EPS_37 : Dc28VPort;
    }
    part def <'EQ-EPS-11'> EssentialBus :> SSD_ALC_SYS_001::Physical::PHY_EPS_04 {
        doc /* 必須母線（ESS 1BC・2CA・3AB）（機能ブロック SSD-FD-EPS-DC-001、機器 PHY-EPS-04） */
        port i_FL_EPS_28 : ~Dc28VPort;
        port o_FL_EPS_29 : Dc28VPort;
    }
    part def <'EQ-EPS-12'> PowerLoadControllerAssy :> SSD_ALC_SYS_001::Physical::PHY_EPS_04 {
        doc /* 電力制御組立・負荷制御組立（FPCA 1〜3・MPCA 1〜3・APCA 1〜6・FLCA 1〜3・ALCA 1〜3）（機能ブロック SSD-FD-EPS-DC-001、機器 PHY-EPS-04） */
        port i_FL_EPS_23 : ~Dc28VPort;
        port i_FL_EPS_24 : ~Dc28VPort;
        port i_FL_EPS_25 : ~Dc28VPort;
        port i_FL_EPS_26 : ~Dc28VPort;
        port o_FL_EPS_32 : Dc28VPort;
        port o_FL_EPS_33 : Dc28VPort;
        port i_FL_EPS_34 : ~EquipmentHeatPort;
    }
    part def <'EQ-EPS-13'> PayloadBus :> SSD_ALC_SYS_001::Physical::PHY_EPS_04 {
        doc /* ペイロード母線（PRI PL・AUX PL A/B・AFT PL B/C・CABIN）（機能ブロック SSD-FD-EPS-DC-001、機器 PHY-EPS-04） */
        port i_FL_EPS_30 : ~Dc28VPort;
        port o_FL_EPS_31 : Dc28VPort;
    }
    part def <'EQ-EPS-14'> InverterAc1 :> SSD_ALC_SYS_001::Physical::PHY_EPS_03 {
        doc /* インバータ1〜3と AC 母線1（IDCA 1）（機能ブロック SSD-FD-EPS-AC-001、機器 PHY-EPS-03） */
        port i_FL_EPS_35 : ~Dc28VPort;
        port o_FL_EPS_38 : Ac117V400HzPort;
        port o_FL_EPS_40 : Ac117V400HzPort;
    }
    part def <'EQ-EPS-15'> InverterAc2 :> SSD_ALC_SYS_001::Physical::PHY_EPS_03 {
        doc /* インバータ4〜6と AC 母線2（IDCA 2）（機能ブロック SSD-FD-EPS-AC-001、機器 PHY-EPS-03） */
        port i_FL_EPS_36 : ~Dc28VPort;
        port o_FL_EPS_41 : Ac117V400HzPort;
    }
    part def <'EQ-EPS-16'> InverterAc3 :> SSD_ALC_SYS_001::Physical::PHY_EPS_03 {
        doc /* インバータ7〜9と AC 母線3（IDCA 3）（機能ブロック SSD-FD-EPS-AC-001、機器 PHY-EPS-03） */
        port i_FL_EPS_37 : ~Dc28VPort;
        port o_FL_EPS_42 : Ac117V400HzPort;
    }
    part def <'EQ-EPS-17'> MotorControllerAssy :> SSD_ALC_SYS_001::Physical::PHY_EPS_05 {
        doc /* モータ制御組立（FMCA 1〜3・MMCA 1〜4・AMCA 1〜3）（機能ブロック SSD-FD-EPS-AC-001、機器 PHY-EPS-05） */
        port i_FL_EPS_38 : ~Ac117V400HzPort;
        port o_FL_EPS_39 : Ac117V400HzPort;
    }
    // ---- 図112 EPS 発電・配電 内部ブロック図：接続（EpsInterconnection は EPS を特化）
    part def EpsInterconnection :> EPS {
        doc /* EPS（発電・配電）の内部ブロック図（図112）。基の機能ブロック SSD-FD-EPS-001。 */
        part redefines prsd {
            part o2Tank[5] : O2Tank;
            part h2Tank[5] : H2Tank;
            part o2ValveModule[2] : O2ValveModule;
            part h2ValveModule[2] : H2ValveModule;
        }
        part redefines fcp {
            part fuelCell1 : FuelCell1;
            part fuelCell2 : FuelCell2;
            part fuelCell3 : FuelCell3;
        }
        part redefines dc {
            part distAssy1MainA : DistAssy1MainA;
            part distAssy2MainB : DistAssy2MainB;
            part distAssy3MainC : DistAssy3MainC;
            part essentialBus[3] : EssentialBus;
            part powerLoadControllerAssy[18] : PowerLoadControllerAssy;
            part payloadBus[6] : PayloadBus;
        }
        part redefines ac {
            part inverterAc1[3] : InverterAc1;
            part inverterAc2[3] : InverterAc2;
            part inverterAc3[3] : InverterAc3;
            part motorControllerAssy[10] : MotorControllerAssy;
        }
        port b_FL_EPS_01 : ~CryoO2Port { doc /* 枠の外の相手 EB-EPS-01（地上支援設備（T-0 アンビリカル経由の反応剤充填）） */ }
        port b_FL_EPS_02 : ~CryoH2Port { doc /* 枠の外の相手 EB-EPS-01（地上支援設備（T-0 アンビリカル経由の反応剤充填）） */ }
        port b_FL_EPS_11 : CryoO2Port { doc /* 枠の外の相手 EB-EPS-03（ECLSS 与圧系（PCS）の酸素供給系1・2） */ }
        port b_FL_EPS_15 : ProductWaterPort { doc /* 枠の外の相手 EB-EPS-04（ECLSS 給水系（水逃がし制御パネル・飲料水タンク A〜D）） */ }
        port b_FL_EPS_16 : ProductWaterPort { doc /* 枠の外の相手 EB-EPS-04（ECLSS 給水系（水逃がし制御パネル・飲料水タンク A〜D）） */ }
        port b_FL_EPS_17 : ProductWaterPort { doc /* 枠の外の相手 EB-EPS-04（ECLSS 給水系（水逃がし制御パネル・飲料水タンク A〜D）） */ }
        port b_FL_EPS_18 : FcWasteHeatPort { doc /* 枠の外の相手 EB-EPS-05（ATCS 燃料電池熱交換器（Freon-21 冷却ループ）） */ }
        port b_FL_EPS_19 : FcWasteHeatPort { doc /* 枠の外の相手 EB-EPS-05（ATCS 燃料電池熱交換器（Freon-21 冷却ループ）） */ }
        port b_FL_EPS_20 : FcWasteHeatPort { doc /* 枠の外の相手 EB-EPS-05（ATCS 燃料電池熱交換器（Freon-21 冷却ループ）） */ }
        port b_FL_EPS_21 : PurgeGasPort { doc /* 枠の外の相手 EB-EPS-06（宇宙空間（パージ排出口・水逃がしノズル）） */ }
        port b_FL_EPS_22 : FcMonitorDataPort { doc /* 枠の外の相手 EB-EPS-07（DPS（GPC の SM 表示・PCMMU）） */ }
        port b_FL_EPS_23 : ~Dc28VPort { doc /* 枠の外の相手 EB-EPS-02（地上支援設備（T-0 アンビリカル経由の地上 28 V DC 電源）） */ }
        port b_FL_EPS_31 : Dc28VPort { doc /* 枠の外の相手 EB-EPS-12（ペイロード（主・補助・後部ペイロード母線の負荷）） */ }
        port b_FL_EPS_32 : Dc28VPort { doc /* 枠の外の相手 EB-EPS-08（外部タンク・SRB（アンビリカル経由の電力）） */ }
        port b_FL_EPS_33 : Dc28VPort { doc /* 枠の外の相手 EB-EPS-11（ほかの系の直流負荷（28 V DC 配電）） */ }
        port b_FL_EPS_34 : ~EquipmentHeatPort { doc /* 枠の外の相手 EB-EPS-10（ATCS／水冷却ループのコールドプレート（配電機器の冷却）） */ }
        port b_FL_EPS_39 : Ac117V400HzPort { doc /* 枠の外の相手 EB-EPS-09（交流モータ負荷（ベントドア・ペイロードベイドア・RCS/OMS 弁など）） */ }
        flow <'FL-EPS-01'> fl_eps_01 from b_FL_EPS_01.fluid to prsd.o2ValveModule.i_FL_EPS_01.fluid {
            item :>> payload : CryoO2 {
                attribute pressureNominal :> pressure = 960 ['lbf/in²'] { doc /* 圧力 960 psia（絶対圧） */ }
            }
        }
        flow <'FL-EPS-02'> fl_eps_02 from b_FL_EPS_02.fluid to prsd.h2ValveModule.i_FL_EPS_02.fluid {
            item :>> payload : CryoH2 {
                attribute pressureNominal :> pressure = 280 ['lbf/in²'] { doc /* 圧力 280 psia（絶対圧） */ }
            }
        }
        flow <'FL-EPS-03'> fl_eps_03 from prsd.o2Tank.o_FL_EPS_03.fluid to prsd.o2ValveModule.i_FL_EPS_03.fluid {
            item :>> payload : CryoO2 {
                attribute pressureMin :> pressure = 803 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 883 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute temperatureNominal :> temperature = -285 ['°F_abs'] { doc /* 温度 -285°F */ }
            }
        }
        flow <'FL-EPS-04'> fl_eps_04 from prsd.h2Tank.o_FL_EPS_04.fluid to prsd.h2ValveModule.i_FL_EPS_04.fluid {
            item :>> payload : CryoH2 {
                attribute pressureMin :> pressure = 200 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 243 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute temperatureNominal :> temperature = -420 ['°F_abs'] { doc /* 温度 -420°F */ }
            }
        }
        flow <'FL-EPS-05'> fl_eps_05 from prsd.o2ValveModule.o_FL_EPS_05.fluid to fcp.fuelCell1.i_FL_EPS_05.fluid {
            item :>> payload : CryoO2 {
                attribute pressureMin :> pressure = 803 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 883 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute massFlowRateNominal :> massFlowRate = 4.6 ['lb/h'] { doc /* 質量流量 4.6 lb/h */ }
            }
        }
        flow <'FL-EPS-06'> fl_eps_06 from prsd.o2ValveModule.o_FL_EPS_06.fluid to fcp.fuelCell2.i_FL_EPS_06.fluid {
            item :>> payload : CryoO2 {
                attribute pressureMin :> pressure = 803 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 883 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute massFlowRateNominal :> massFlowRate = 4.6 ['lb/h'] { doc /* 質量流量 4.6 lb/h */ }
            }
        }
        flow <'FL-EPS-07'> fl_eps_07 from prsd.o2ValveModule.o_FL_EPS_07.fluid to fcp.fuelCell3.i_FL_EPS_07.fluid {
            item :>> payload : CryoO2 {
                attribute pressureMin :> pressure = 803 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 883 ['lbf/in²'] { doc /* 圧力 803〜883 psia（絶対圧） */ }
                attribute massFlowRateNominal :> massFlowRate = 4.6 ['lb/h'] { doc /* 質量流量 4.6 lb/h */ }
            }
        }
        flow <'FL-EPS-08'> fl_eps_08 from prsd.h2ValveModule.o_FL_EPS_08.fluid to fcp.fuelCell1.i_FL_EPS_08.fluid {
            item :>> payload : CryoH2 {
                attribute pressureMin :> pressure = 200 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 243 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute massFlowRateNominal :> massFlowRate = 0.6 ['lb/h'] { doc /* 質量流量 0.6 lb/h */ }
            }
        }
        flow <'FL-EPS-09'> fl_eps_09 from prsd.h2ValveModule.o_FL_EPS_09.fluid to fcp.fuelCell2.i_FL_EPS_09.fluid {
            item :>> payload : CryoH2 {
                attribute pressureMin :> pressure = 200 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 243 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute massFlowRateNominal :> massFlowRate = 0.6 ['lb/h'] { doc /* 質量流量 0.6 lb/h */ }
            }
        }
        flow <'FL-EPS-10'> fl_eps_10 from prsd.h2ValveModule.o_FL_EPS_10.fluid to fcp.fuelCell3.i_FL_EPS_10.fluid {
            item :>> payload : CryoH2 {
                attribute pressureMin :> pressure = 200 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 243 ['lbf/in²'] { doc /* 圧力 200〜243 psia（絶対圧） */ }
                attribute massFlowRateNominal :> massFlowRate = 0.6 ['lb/h'] { doc /* 質量流量 0.6 lb/h */ }
            }
        }
        flow <'FL-EPS-11'> fl_eps_11 from prsd.o2ValveModule.o_FL_EPS_11.fluid to b_FL_EPS_11.fluid {
            item :>> payload : CryoO2 {
                attribute massFlowRateMax :> massFlowRate = 25 ['lb/h'] { doc /* 質量流量 最大 25 lb/h */ }
            }
        }
        flow <'FL-EPS-12'> fl_eps_12 from fcp.fuelCell1.o_FL_EPS_12.electricPower to dc.distAssy1MainA.i_FL_EPS_12.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 27.5 [V] { doc /* 電圧 27.5〜32.5 V */ }
                attribute voltageMax :> voltage = 32.5 [V] { doc /* 電圧 27.5〜32.5 V */ }
                attribute currentMin :> current = 61.5 [A] { doc /* 電流 61.5〜436 A */ }
                attribute currentMax :> current = 436 [A] { doc /* 電流 61.5〜436 A */ }
                attribute powerMin :> power = 2 [kW] { doc /* 電力・熱流量 2〜12 kW */ }
                attribute powerMax :> power = 12 [kW] { doc /* 電力・熱流量 2〜12 kW */ }
            }
        }
        flow <'FL-EPS-13'> fl_eps_13 from fcp.fuelCell2.o_FL_EPS_13.electricPower to dc.distAssy2MainB.i_FL_EPS_13.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 27.5 [V] { doc /* 電圧 27.5〜32.5 V */ }
                attribute voltageMax :> voltage = 32.5 [V] { doc /* 電圧 27.5〜32.5 V */ }
                attribute currentMin :> current = 61.5 [A] { doc /* 電流 61.5〜436 A */ }
                attribute currentMax :> current = 436 [A] { doc /* 電流 61.5〜436 A */ }
                attribute powerMin :> power = 2 [kW] { doc /* 電力・熱流量 2〜12 kW */ }
                attribute powerMax :> power = 12 [kW] { doc /* 電力・熱流量 2〜12 kW */ }
            }
        }
        flow <'FL-EPS-14'> fl_eps_14 from fcp.fuelCell3.o_FL_EPS_14.electricPower to dc.distAssy3MainC.i_FL_EPS_14.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 27.5 [V] { doc /* 電圧 27.5〜32.5 V */ }
                attribute voltageMax :> voltage = 32.5 [V] { doc /* 電圧 27.5〜32.5 V */ }
                attribute currentMin :> current = 61.5 [A] { doc /* 電流 61.5〜436 A */ }
                attribute currentMax :> current = 436 [A] { doc /* 電流 61.5〜436 A */ }
                attribute powerMin :> power = 2 [kW] { doc /* 電力・熱流量 2〜12 kW */ }
                attribute powerMax :> power = 12 [kW] { doc /* 電力・熱流量 2〜12 kW */ }
            }
        }
        flow <'FL-EPS-15'> fl_eps_15 from fcp.fuelCell1.o_FL_EPS_15.fluid to b_FL_EPS_15.fluid {
            item :>> payload : ProductWater {
                attribute temperatureMin :> temperature = 140 ['°F_abs'] { doc /* 温度 140〜150°F */ }
                attribute temperatureMax :> temperature = 150 ['°F_abs'] { doc /* 温度 140〜150°F */ }
            }
        }
        flow <'FL-EPS-16'> fl_eps_16 from fcp.fuelCell2.o_FL_EPS_16.fluid to b_FL_EPS_16.fluid {
            item :>> payload : ProductWater {
                attribute temperatureMin :> temperature = 140 ['°F_abs'] { doc /* 温度 140〜150°F */ }
                attribute temperatureMax :> temperature = 150 ['°F_abs'] { doc /* 温度 140〜150°F */ }
            }
        }
        flow <'FL-EPS-17'> fl_eps_17 from fcp.fuelCell3.o_FL_EPS_17.fluid to b_FL_EPS_17.fluid {
            item :>> payload : ProductWater {
                attribute temperatureMin :> temperature = 140 ['°F_abs'] { doc /* 温度 140〜150°F */ }
                attribute temperatureMax :> temperature = 150 ['°F_abs'] { doc /* 温度 140〜150°F */ }
            }
        }
        flow <'FL-EPS-18'> fl_eps_18 from fcp.fuelCell1.o_FL_EPS_18.heat to b_FL_EPS_18.heat {
            item :>> payload : FcWasteHeat {
                attribute temperatureMin :> temperature = 190 ['°F_abs'] { doc /* 温度 190〜210°F */ }
                attribute temperatureMax :> temperature = 210 ['°F_abs'] { doc /* 温度 190〜210°F */ }
            }
        }
        flow <'FL-EPS-19'> fl_eps_19 from fcp.fuelCell2.o_FL_EPS_19.heat to b_FL_EPS_19.heat {
            item :>> payload : FcWasteHeat {
                attribute temperatureMin :> temperature = 190 ['°F_abs'] { doc /* 温度 190〜210°F */ }
                attribute temperatureMax :> temperature = 210 ['°F_abs'] { doc /* 温度 190〜210°F */ }
            }
        }
        flow <'FL-EPS-20'> fl_eps_20 from fcp.fuelCell3.o_FL_EPS_20.heat to b_FL_EPS_20.heat {
            item :>> payload : FcWasteHeat {
                attribute temperatureMin :> temperature = 190 ['°F_abs'] { doc /* 温度 190〜210°F */ }
                attribute temperatureMax :> temperature = 210 ['°F_abs'] { doc /* 温度 190〜210°F */ }
            }
        }
        flow <'FL-EPS-21'> fl_eps_21 of PurgeGas from fcp.fuelCell1.o_FL_EPS_21.fluid to b_FL_EPS_21.fluid;
        flow <'FL-EPS-22'> fl_eps_22 of FcMonitorData from fcp.fuelCell1.o_FL_EPS_22.dataCommand to b_FL_EPS_22.dataCommand;
        flow <'FL-EPS-23'> fl_eps_23 from b_FL_EPS_23.electricPower to dc.powerLoadControllerAssy.i_FL_EPS_23.electricPower {
            item :>> payload : Dc28V {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-EPS-24'> fl_eps_24 from dc.distAssy1MainA.o_FL_EPS_24.electricPower to dc.powerLoadControllerAssy.i_FL_EPS_24.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 27 [V] { doc /* 電圧 27〜32 V */ }
                attribute voltageMax :> voltage = 32 [V] { doc /* 電圧 27〜32 V */ }
            }
        }
        flow <'FL-EPS-25'> fl_eps_25 from dc.distAssy2MainB.o_FL_EPS_25.electricPower to dc.powerLoadControllerAssy.i_FL_EPS_25.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 27 [V] { doc /* 電圧 27〜32 V */ }
                attribute voltageMax :> voltage = 32 [V] { doc /* 電圧 27〜32 V */ }
            }
        }
        flow <'FL-EPS-26'> fl_eps_26 from dc.distAssy3MainC.o_FL_EPS_26.electricPower to dc.powerLoadControllerAssy.i_FL_EPS_26.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 27 [V] { doc /* 電圧 27〜32 V */ }
                attribute voltageMax :> voltage = 32 [V] { doc /* 電圧 27〜32 V */ }
            }
        }
        flow <'FL-EPS-27'> fl_eps_27 of Dc28V from dc.distAssy1MainA.o_FL_EPS_27.electricPower to dc.distAssy2MainB.i_FL_EPS_27.electricPower;
        flow <'FL-EPS-28'> fl_eps_28 of Dc28V from fcp.fuelCell1.o_FL_EPS_28.electricPower to dc.essentialBus.i_FL_EPS_28.electricPower;
        flow <'FL-EPS-29'> fl_eps_29 from dc.essentialBus.o_FL_EPS_29.electricPower to fcp.fuelCell1.i_FL_EPS_29.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 25 [V] { doc /* 電圧 最小 25 V */ }
            }
        }
        flow <'FL-EPS-30'> fl_eps_30 of Dc28V from fcp.fuelCell3.o_FL_EPS_30.electricPower to dc.payloadBus.i_FL_EPS_30.electricPower;
        flow <'FL-EPS-31'> fl_eps_31 of Dc28V from dc.payloadBus.o_FL_EPS_31.electricPower to b_FL_EPS_31.electricPower;
        flow <'FL-EPS-32'> fl_eps_32 of Dc28V from dc.powerLoadControllerAssy.o_FL_EPS_32.electricPower to b_FL_EPS_32.electricPower;
        flow <'FL-EPS-33'> fl_eps_33 from dc.powerLoadControllerAssy.o_FL_EPS_33.electricPower to b_FL_EPS_33.electricPower {
            item :>> payload : Dc28V {
                attribute voltageMin :> voltage = 24 [V] { doc /* 電圧 24〜32 V */ }
                attribute voltageMax :> voltage = 32 [V] { doc /* 電圧 24〜32 V */ }
            }
        }
        flow <'FL-EPS-34'> fl_eps_34 of EquipmentHeat from b_FL_EPS_34.heat to dc.powerLoadControllerAssy.i_FL_EPS_34.heat;
        flow <'FL-EPS-35'> fl_eps_35 of Dc28V from dc.distAssy1MainA.o_FL_EPS_35.electricPower to ac.inverterAc1.i_FL_EPS_35.electricPower;
        flow <'FL-EPS-36'> fl_eps_36 of Dc28V from dc.distAssy2MainB.o_FL_EPS_36.electricPower to ac.inverterAc2.i_FL_EPS_36.electricPower;
        flow <'FL-EPS-37'> fl_eps_37 of Dc28V from dc.distAssy3MainC.o_FL_EPS_37.electricPower to ac.inverterAc3.i_FL_EPS_37.electricPower;
        flow <'FL-EPS-38'> fl_eps_38 from ac.inverterAc1.o_FL_EPS_38.electricPower to ac.motorControllerAssy.i_FL_EPS_38.electricPower {
            item :>> payload : Ac117V400Hz {
                attribute voltageNominal :> voltage = 117 [V] { doc /* 電圧 117 V */ }
                attribute frequencyNominal :> frequency = 400 [Hz] { doc /* 周波数 400 Hz */ }
            }
        }
        flow <'FL-EPS-39'> fl_eps_39 from ac.motorControllerAssy.o_FL_EPS_39.electricPower to b_FL_EPS_39.electricPower {
            item :>> payload : Ac117V400Hz {
                attribute voltageNominal :> voltage = 117 [V] { doc /* 電圧 117 V */ }
                attribute frequencyNominal :> frequency = 400 [Hz] { doc /* 周波数 400 Hz */ }
            }
        }
        flow <'FL-EPS-40'> fl_eps_40 from ac.inverterAc1.o_FL_EPS_40.electricPower to fcp.fuelCell1.i_FL_EPS_40.electricPower {
            item :>> payload : Ac117V400Hz {
                attribute voltageNominal :> voltage = 117 [V] { doc /* 電圧 117 V */ }
                attribute frequencyNominal :> frequency = 400 [Hz] { doc /* 周波数 400 Hz */ }
            }
        }
        flow <'FL-EPS-41'> fl_eps_41 from ac.inverterAc2.o_FL_EPS_41.electricPower to fcp.fuelCell2.i_FL_EPS_41.electricPower {
            item :>> payload : Ac117V400Hz {
                attribute voltageNominal :> voltage = 117 [V] { doc /* 電圧 117 V */ }
                attribute frequencyNominal :> frequency = 400 [Hz] { doc /* 周波数 400 Hz */ }
            }
        }
        flow <'FL-EPS-42'> fl_eps_42 from ac.inverterAc3.o_FL_EPS_42.electricPower to fcp.fuelCell3.i_FL_EPS_42.electricPower {
            item :>> payload : Ac117V400Hz {
                attribute voltageNominal :> voltage = 117 [V] { doc /* 電圧 117 V */ }
                attribute frequencyNominal :> frequency = 400 [Hz] { doc /* 周波数 400 Hz */ }
            }
        }
    }
    // ---- 図113 ATCS 冷却ループ 内部ブロック図：機器
    part def <'EQ-ATCS-01'> FreonPumpPackage :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_04 {
        doc /* Freon ポンプパッケージ（ループ1・2、各ポンプ A/B 2台＋アキュムレータ）（機能ブロック SSD-FD-TCS-FCL-001、機器 PHY-ECLSS-04） */
        port o_FL_ATCS_01 : Freon21CoolantPort;
        port o_FL_ATCS_02 : Freon21CoolantPort;
        port i_FL_ATCS_18 : ~Freon21CoolantPort;
        port i_FL_ATCS_19 : ~Freon21CoolantPort;
        port i_FL_ATCS_20 : ~Freon21CoolantPort;
        port i_FL_ATCS_38 : ~ThermalControlCommandPort;
    }
    part def <'EQ-ATCS-02'> FuelCellHeatExchanger :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_07 {
        doc /* 燃料電池熱交換器（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-07） */
        port i_FL_ATCS_01 : ~Freon21CoolantPort;
        port o_FL_ATCS_03 : Freon21CoolantPort;
        port i_FL_ATCS_21 : ~ThermalLoadPort;
    }
    part def <'EQ-ATCS-03'> MidbodyColdPlates :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_08 {
        doc /* 中胴コールドプレート網（左舷・右舷、SSPTS 電子機器を含む）（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-08） */
        port i_FL_ATCS_02 : ~Freon21CoolantPort;
        port o_FL_ATCS_04 : Freon21CoolantPort;
        port i_FL_ATCS_22 : ~ThermalLoadPort;
    }
    part def <'EQ-ATCS-04'> HydraulicHeatExchanger :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_09 {
        doc /* 油圧熱交換器（Freon/作動油）（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-09） */
        port i_FL_ATCS_03 : ~Freon21CoolantPort;
        port i_FL_ATCS_04 : ~Freon21CoolantPort;
        port o_FL_ATCS_05 : Freon21CoolantPort;
        port o_FL_ATCS_23 : ThermalLoadPort;
    }
    part def <'EQ-ATCS-05'> RadiatorFlowControlAssembly :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_05 {
        doc /* ラジエータ流量制御組立（制御器 Auto A/B、流量制御弁、ラジエータ/バイパス弁、隔離弁、温度センサ）（機能ブロック SSD-FD-TCS-RAD-001、機器 PHY-ECLSS-05） */
        port i_FL_ATCS_05 : ~Freon21CoolantPort;
        port o_FL_ATCS_06 : Freon21CoolantPort;
        port i_FL_ATCS_07 : ~Freon21CoolantPort;
        port o_FL_ATCS_08 : Freon21CoolantPort;
    }
    part def <'EQ-ATCS-06'> RadiatorPanels :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_05 {
        doc /* ラジエータパネル（各ドア4枚：前2枚展開式・後2枚固定、左＝ループ1、右＝ループ2）（機能ブロック SSD-FD-TCS-RAD-001、機器 PHY-ECLSS-05） */
        port i_FL_ATCS_06 : ~Freon21CoolantPort;
        port o_FL_ATCS_07 : Freon21CoolantPort;
        port o_FL_ATCS_24 : ThermalLoadPort;
    }
    part def <'EQ-ATCS-07'> GseHeatExchanger :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_10 {
        doc /* GSE 熱交換器（機能ブロック SSD-FD-TCS-GSE-001、機器 PHY-ECLSS-10） */
        port i_FL_ATCS_08 : ~Freon21CoolantPort;
        port o_FL_ATCS_09 : Freon21CoolantPort;
        port i_FL_ATCS_25 : ~GseCoolantPort;
    }
    part def <'EQ-ATCS-08'> AmmoniaSupplySystem :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_06 {
        doc /* アンモニア貯蔵・制御系 A/B（タンク、隔離弁、逃がし弁、制御弁2、制御器）（機能ブロック SSD-FD-TCS-NH3-001、機器 PHY-ECLSS-06） */
        port o_FL_ATCS_26 : AmmoniaPort;
        port i_FL_ATCS_37 : ~ThermalControlCommandPort;
    }
    part def <'EQ-ATCS-09'> AmmoniaBoiler :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_06 {
        doc /* アンモニアボイラ（共通ボイラ、シェル＆チューブ）（機能ブロック SSD-FD-TCS-NH3-001、機器 PHY-ECLSS-06） */
        port i_FL_ATCS_09 : ~Freon21CoolantPort;
        port o_FL_ATCS_10 : Freon21CoolantPort;
        port i_FL_ATCS_26 : ~AmmoniaPort;
        port o_FL_ATCS_27 : AmmoniaVentPort;
    }
    part def <'EQ-ATCS-10'> FesHighLoadEvaporator :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_06 {
        doc /* FES 高負荷エバポレータ（機能ブロック SSD-FD-TCS-FES-001、機器 PHY-ECLSS-06） */
        port i_FL_ATCS_10 : ~Freon21CoolantPort;
        port o_FL_ATCS_11 : Freon21CoolantPort;
        port i_FL_ATCS_28 : ~FesSupplyWaterPort;
        port o_FL_ATCS_30 : FesSteamVentPort;
    }
    part def <'EQ-ATCS-11'> FesToppingEvaporator :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_06 {
        doc /* FES トッピングエバポレータ（機能ブロック SSD-FD-TCS-FES-001、機器 PHY-ECLSS-06） */
        port i_FL_ATCS_11 : ~Freon21CoolantPort;
        port o_FL_ATCS_12 : Freon21CoolantPort;
        port o_FL_ATCS_13 : Freon21CoolantPort;
        port i_FL_ATCS_29 : ~FesSupplyWaterPort;
        port o_FL_ATCS_31 : FesSteamVentPort;
    }
    part def <'EQ-ATCS-12'> FesControllers :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_06 {
        doc /* FES 制御器（主 A・主 B・副）（機能ブロック SSD-FD-TCS-FES-001、機器 PHY-ECLSS-06） */
        port i_FL_ATCS_36 : ~ThermalControlCommandPort;
    }
    part def <'EQ-ATCS-13'> CargoHeatExchanger :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_07 {
        doc /* カーゴ熱交換器（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-07） */
        port i_FL_ATCS_12 : ~Freon21CoolantPort;
        port o_FL_ATCS_14 : Freon21CoolantPort;
    }
    part def <'EQ-ATCS-14'> O2RestrictorHeater :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_07 {
        doc /* O2 リストリクタ（PCS 酸素の加温部。ループ1：23.9 lb/hr×1、ループ2：12.0 lb/hr×2）（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-07） */
        port i_FL_ATCS_14 : ~Freon21CoolantPort;
        port o_FL_ATCS_15 : Freon21CoolantPort;
        port o_FL_ATCS_32 : ThermalLoadPort;
    }
    part def <'EQ-ATCS-15'> FlowProportioningValve :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_07 {
        doc /* 流量配分弁モジュール（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-07） */
        port i_FL_ATCS_15 : ~Freon21CoolantPort;
        port o_FL_ATCS_16 : Freon21CoolantPort;
        port o_FL_ATCS_17 : Freon21CoolantPort;
    }
    part def <'EQ-ATCS-16'> FreonWaterInterchanger :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_04 {
        doc /* Freon/水インターチェンジャ（ICH）（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-04） */
        port i_FL_ATCS_16 : ~Freon21CoolantPort;
        port o_FL_ATCS_18 : Freon21CoolantPort;
        port i_FL_ATCS_33 : ~ThermalLoadPort;
    }
    part def <'EQ-ATCS-17'> PayloadHeatExchanger :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_07 {
        doc /* ペイロード熱交換器（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-07） */
        port i_FL_ATCS_17 : ~Freon21CoolantPort;
        port o_FL_ATCS_19 : Freon21CoolantPort;
        port i_FL_ATCS_34 : ~ThermalLoadPort;
    }
    part def <'EQ-ATCS-18'> AftColdPlates :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_08 {
        doc /* 後部コールドプレート（アビオニクスベイ4・5・6、レートジャイロ4台）（機能ブロック SSD-FD-TCS-HX-001、機器 PHY-ECLSS-08） */
        port i_FL_ATCS_13 : ~Freon21CoolantPort;
        port o_FL_ATCS_20 : Freon21CoolantPort;
        port i_FL_ATCS_35 : ~ThermalLoadPort;
    }
    // ---- 図113 ATCS 冷却ループ 内部ブロック図：接続（AtcsInterconnection は ECL_ATCS を特化）
    part def AtcsInterconnection :> ECL_ATCS {
        doc /* ATCS（フレオン冷却ループ）の内部ブロック図（図113）。基の機能ブロック SSD-FD-ECL-ATCS-001。 */
        part redefines fcl {
            part freonPumpPackage[2] : FreonPumpPackage;
        }
        part redefines hx {
            part fuelCellHeatExchanger : FuelCellHeatExchanger;
            part midbodyColdPlates : MidbodyColdPlates;
            part hydraulicHeatExchanger : HydraulicHeatExchanger;
            part cargoHeatExchanger : CargoHeatExchanger;
            part o2RestrictorHeater : O2RestrictorHeater;
            part flowProportioningValve : FlowProportioningValve;
            part freonWaterInterchanger : FreonWaterInterchanger;
            part payloadHeatExchanger : PayloadHeatExchanger;
            part aftColdPlates : AftColdPlates;
        }
        part redefines rad {
            part radiatorFlowControlAssembly[2] : RadiatorFlowControlAssembly;
            part radiatorPanels[8] : RadiatorPanels;
        }
        part redefines gse {
            part gseHeatExchanger : GseHeatExchanger;
        }
        part redefines nh3 {
            part ammoniaSupplySystem[2] : AmmoniaSupplySystem;
            part ammoniaBoiler : AmmoniaBoiler;
        }
        part redefines fes {
            part fesHighLoadEvaporator : FesHighLoadEvaporator;
            part fesToppingEvaporator : FesToppingEvaporator;
            part fesControllers[3] : FesControllers;
        }
        port b_FL_ATCS_21 : ~ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-01（EPS 燃料電池（冷却ループの廃熱）） */ }
        port b_FL_ATCS_22 : ~ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-02（EPS 中胴の電力分配・制御機器（DA・MPC・MMCA など）） */ }
        port b_FL_ATCS_23 : ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-03（APU/HYD 油圧系（作動油）） */ }
        port b_FL_ATCS_24 : ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-04（宇宙空間（ラジエータ放熱）） */ }
        port b_FL_ATCS_25 : ~GseCoolantPort { doc /* 枠の外の相手 EB-ATCS-05（地上設備（打上げ前の地上冷却系・着陸後の冷却カート、T-0 アンビリカル）） */ }
        port b_FL_ATCS_27 : AmmoniaVentPort { doc /* 枠の外の相手 EB-ATCS-06（機外（アンモニア蒸気の排出口、垂直尾翼の右下側）） */ }
        port b_FL_ATCS_28 : ~FesSupplyWaterPort { doc /* 枠の外の相手 EB-ATCS-07（ECLSS 供給水タンク（FES 給水ライン A・B）） */ }
        port b_FL_ATCS_29 : ~FesSupplyWaterPort { doc /* 枠の外の相手 EB-ATCS-07（ECLSS 供給水タンク（FES 給水ライン A・B）） */ }
        port b_FL_ATCS_30 : FesSteamVentPort { doc /* 枠の外の相手 EB-ATCS-08（機外（FES 蒸気の音速ノズル、左側・左右両側）） */ }
        port b_FL_ATCS_31 : FesSteamVentPort { doc /* 枠の外の相手 EB-ATCS-08（機外（FES 蒸気の音速ノズル、左側・左右両側）） */ }
        port b_FL_ATCS_32 : ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-09（PCS 与圧系（極低温酸素の供給）） */ }
        port b_FL_ATCS_33 : ~ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-10（ARS 水冷却ループ（ICH の水側）） */ }
        port b_FL_ATCS_34 : ~ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-11（ペイロード冷却ループ） */ }
        port b_FL_ATCS_35 : ~ThermalLoadPort { doc /* 枠の外の相手 EB-ATCS-12（DPS ほか後部アビオニクス（MDM・EIU・MEC・ATVC 等、RGA）） */ }
        port b_FL_ATCS_36 : ~ThermalControlCommandPort { doc /* 枠の外の相手 EB-ATCS-13（DPS（BFS／RTC による制御指令）） */ }
        port b_FL_ATCS_37 : ~ThermalControlCommandPort { doc /* 枠の外の相手 EB-ATCS-13（DPS（BFS／RTC による制御指令）） */ }
        port b_FL_ATCS_38 : ~ThermalControlCommandPort { doc /* 枠の外の相手 EB-ATCS-13（DPS（BFS／RTC による制御指令）） */ }
        flow <'FL-ATCS-01'> fl_atcs_01 of Freon21Coolant from fcl.freonPumpPackage.o_FL_ATCS_01.fluid to hx.fuelCellHeatExchanger.i_FL_ATCS_01.fluid;
        flow <'FL-ATCS-02'> fl_atcs_02 of Freon21Coolant from fcl.freonPumpPackage.o_FL_ATCS_02.fluid to hx.midbodyColdPlates.i_FL_ATCS_02.fluid;
        flow <'FL-ATCS-03'> fl_atcs_03 of Freon21Coolant from hx.fuelCellHeatExchanger.o_FL_ATCS_03.fluid to hx.hydraulicHeatExchanger.i_FL_ATCS_03.fluid;
        flow <'FL-ATCS-04'> fl_atcs_04 of Freon21Coolant from hx.midbodyColdPlates.o_FL_ATCS_04.fluid to hx.hydraulicHeatExchanger.i_FL_ATCS_04.fluid;
        flow <'FL-ATCS-05'> fl_atcs_05 from hx.hydraulicHeatExchanger.o_FL_ATCS_05.fluid to rad.radiatorFlowControlAssembly.i_FL_ATCS_05.fluid {
            item :>> payload : Freon21Coolant {
                attribute massFlowRateMin :> massFlowRate = 5336 ['lb/h'] { doc /* 質量流量 5,336〜5,972 lb/h */ }
                attribute massFlowRateMax :> massFlowRate = 5972 ['lb/h'] { doc /* 質量流量 5,336〜5,972 lb/h */ }
            }
        }
        flow <'FL-ATCS-06'> fl_atcs_06 from rad.radiatorFlowControlAssembly.o_FL_ATCS_06.fluid to rad.radiatorPanels.i_FL_ATCS_06.fluid {
            item :>> payload : Freon21Coolant {
                attribute pressureMax :> pressure = 320 ['lbf/in²'] { doc /* 圧力 最大 320 psia（絶対圧） */ }
            }
        }
        flow <'FL-ATCS-07'> fl_atcs_07 of Freon21Coolant from rad.radiatorPanels.o_FL_ATCS_07.fluid to rad.radiatorFlowControlAssembly.i_FL_ATCS_07.fluid;
        flow <'FL-ATCS-08'> fl_atcs_08 from rad.radiatorFlowControlAssembly.o_FL_ATCS_08.fluid to gse.gseHeatExchanger.i_FL_ATCS_08.fluid {
            item :>> payload : Freon21Coolant {
                attribute temperature1Nominal :> temperature = 38 ['°F_abs'] { doc /* 温度 38°F（36〜40°F） */ }
                attribute temperature1Min :> temperature = 36 ['°F_abs'] { doc /* 温度 38°F（36〜40°F） */ }
                attribute temperature1Max :> temperature = 40 ['°F_abs'] { doc /* 温度 38°F（36〜40°F） */ }
                attribute temperature2Nominal :> temperature = 57 ['°F_abs'] { doc /* 温度 57°F（55〜59°F） */ }
                attribute temperature2Min :> temperature = 55 ['°F_abs'] { doc /* 温度 57°F（55〜59°F） */ }
                attribute temperature2Max :> temperature = 59 ['°F_abs'] { doc /* 温度 57°F（55〜59°F） */ }
            }
        }
        flow <'FL-ATCS-09'> fl_atcs_09 of Freon21Coolant from gse.gseHeatExchanger.o_FL_ATCS_09.fluid to nh3.ammoniaBoiler.i_FL_ATCS_09.fluid;
        flow <'FL-ATCS-10'> fl_atcs_10 from nh3.ammoniaBoiler.o_FL_ATCS_10.fluid to fes.fesHighLoadEvaporator.i_FL_ATCS_10.fluid {
            item :>> payload : Freon21Coolant {
                attribute temperature1Nominal :> temperature = 35 ['°F_abs'] { doc /* 温度 35°F（32〜38°F） */ }
                attribute temperature1Min :> temperature = 32 ['°F_abs'] { doc /* 温度 35°F（32〜38°F） */ }
                attribute temperature1Max :> temperature = 38 ['°F_abs'] { doc /* 温度 35°F（32〜38°F） */ }
                attribute temperature2Nominal :> temperature = 34 ['°F_abs'] { doc /* 温度 34°F（31〜37°F） */ }
                attribute temperature2Min :> temperature = 31 ['°F_abs'] { doc /* 温度 34°F（31〜37°F） */ }
                attribute temperature2Max :> temperature = 37 ['°F_abs'] { doc /* 温度 34°F（31〜37°F） */ }
            }
        }
        flow <'FL-ATCS-11'> fl_atcs_11 of Freon21Coolant from fes.fesHighLoadEvaporator.o_FL_ATCS_11.fluid to fes.fesToppingEvaporator.i_FL_ATCS_11.fluid;
        flow <'FL-ATCS-12'> fl_atcs_12 from fes.fesToppingEvaporator.o_FL_ATCS_12.fluid to hx.cargoHeatExchanger.i_FL_ATCS_12.fluid {
            item :>> payload : Freon21Coolant {
                attribute temperature1Nominal :> temperature = 39 ['°F_abs'] { doc /* 温度 39°F（38〜40°F） */ }
                attribute temperature1Min :> temperature = 38 ['°F_abs'] { doc /* 温度 39°F（38〜40°F） */ }
                attribute temperature1Max :> temperature = 40 ['°F_abs'] { doc /* 温度 39°F（38〜40°F） */ }
                attribute temperature2Nominal :> temperature = 62 ['°F_abs'] { doc /* 温度 62°F */ }
            }
        }
        flow <'FL-ATCS-13'> fl_atcs_13 of Freon21Coolant from fes.fesToppingEvaporator.o_FL_ATCS_13.fluid to hx.aftColdPlates.i_FL_ATCS_13.fluid;
        flow <'FL-ATCS-14'> fl_atcs_14 of Freon21Coolant from hx.cargoHeatExchanger.o_FL_ATCS_14.fluid to hx.o2RestrictorHeater.i_FL_ATCS_14.fluid;
        flow <'FL-ATCS-15'> fl_atcs_15 of Freon21Coolant from hx.o2RestrictorHeater.o_FL_ATCS_15.fluid to hx.flowProportioningValve.i_FL_ATCS_15.fluid;
        flow <'FL-ATCS-16'> fl_atcs_16 of Freon21Coolant from hx.flowProportioningValve.o_FL_ATCS_16.fluid to hx.freonWaterInterchanger.i_FL_ATCS_16.fluid;
        flow <'FL-ATCS-17'> fl_atcs_17 of Freon21Coolant from hx.flowProportioningValve.o_FL_ATCS_17.fluid to hx.payloadHeatExchanger.i_FL_ATCS_17.fluid;
        flow <'FL-ATCS-18'> fl_atcs_18 of Freon21Coolant from hx.freonWaterInterchanger.o_FL_ATCS_18.fluid to fcl.freonPumpPackage.i_FL_ATCS_18.fluid;
        flow <'FL-ATCS-19'> fl_atcs_19 of Freon21Coolant from hx.payloadHeatExchanger.o_FL_ATCS_19.fluid to fcl.freonPumpPackage.i_FL_ATCS_19.fluid;
        flow <'FL-ATCS-20'> fl_atcs_20 of Freon21Coolant from hx.aftColdPlates.o_FL_ATCS_20.fluid to fcl.freonPumpPackage.i_FL_ATCS_20.fluid;
        flow <'FL-ATCS-21'> fl_atcs_21 of ThermalLoad from b_FL_ATCS_21.heat to hx.fuelCellHeatExchanger.i_FL_ATCS_21.heat;
        flow <'FL-ATCS-22'> fl_atcs_22 of ThermalLoad from b_FL_ATCS_22.heat to hx.midbodyColdPlates.i_FL_ATCS_22.heat;
        flow <'FL-ATCS-23'> fl_atcs_23 of ThermalLoad from hx.hydraulicHeatExchanger.o_FL_ATCS_23.heat to b_FL_ATCS_23.heat;
        flow <'FL-ATCS-24'> fl_atcs_24 from rad.radiatorPanels.o_FL_ATCS_24.heat to b_FL_ATCS_24.heat {
            item :>> payload : ThermalLoad {
                attribute powerMax :> power = 61100 ['Btu_IT/h'] { doc /* 電力・熱流量 最大 61,100 Btu/h */ }
            }
        }
        flow <'FL-ATCS-25'> fl_atcs_25 of GseCoolant from b_FL_ATCS_25.fluid to gse.gseHeatExchanger.i_FL_ATCS_25.fluid;
        flow <'FL-ATCS-26'> fl_atcs_26 from nh3.ammoniaSupplySystem.o_FL_ATCS_26.fluid to nh3.ammoniaBoiler.i_FL_ATCS_26.fluid {
            item :>> payload : Ammonia {
                attribute massNominal :> mass = 49 [lb] { doc /* 質量 49 lb */ }
                attribute pressureMax :> pressure = 550 ['lbf/in²'] { doc /* 圧力 最大 550 psia（絶対圧） */ }
            }
        }
        flow <'FL-ATCS-27'> fl_atcs_27 from nh3.ammoniaBoiler.o_FL_ATCS_27.fluid to b_FL_ATCS_27.fluid {
            item :>> payload : AmmoniaVent {
                attribute heatRejectionNominal :> heatRejection = 113200 ['Btu_IT/h'] { doc /* 電力・熱流量 113,200 Btu/h */ }
            }
        }
        flow <'FL-ATCS-28'> fl_atcs_28 of FesSupplyWater from b_FL_ATCS_28.fluid to fes.fesHighLoadEvaporator.i_FL_ATCS_28.fluid;
        flow <'FL-ATCS-29'> fl_atcs_29 from b_FL_ATCS_29.fluid to fes.fesToppingEvaporator.i_FL_ATCS_29.fluid {
            item :>> payload : FesSupplyWater {
                attribute massFlowRateNominal :> massFlowRate = 25 ['lb/h'] { doc /* 質量流量 25 lb/h */ }
            }
        }
        flow <'FL-ATCS-30'> fl_atcs_30 from fes.fesHighLoadEvaporator.o_FL_ATCS_30.fluid to b_FL_ATCS_30.fluid {
            item :>> payload : FesSteamVent {
                attribute heatRejectionMax :> heatRejection = 113100 ['Btu_IT/h'] { doc /* 電力・熱流量 最大 113,100 Btu/h */ }
            }
        }
        flow <'FL-ATCS-31'> fl_atcs_31 from fes.fesToppingEvaporator.o_FL_ATCS_31.fluid to b_FL_ATCS_31.fluid {
            item :>> payload : FesSteamVent {
                attribute heatRejection1Max :> heatRejection = 39000 ['Btu_IT/h'] { doc /* 電力・熱流量 最大 39,000 Btu/h */ }
                attribute heatRejection2Max :> heatRejection = 76800 ['Btu_IT/h'] { doc /* 電力・熱流量 最大 76,800 Btu/h */ }
            }
        }
        flow <'FL-ATCS-32'> fl_atcs_32 from hx.o2RestrictorHeater.o_FL_ATCS_32.heat to b_FL_ATCS_32.heat {
            item :>> payload : ThermalLoad {
                attribute temperatureNominal :> temperature = 40 ['°F_abs'] { doc /* 温度 40°F */ }
            }
        }
        flow <'FL-ATCS-33'> fl_atcs_33 of ThermalLoad from b_FL_ATCS_33.heat to hx.freonWaterInterchanger.i_FL_ATCS_33.heat;
        flow <'FL-ATCS-34'> fl_atcs_34 of ThermalLoad from b_FL_ATCS_34.heat to hx.payloadHeatExchanger.i_FL_ATCS_34.heat;
        flow <'FL-ATCS-35'> fl_atcs_35 of ThermalLoad from b_FL_ATCS_35.heat to hx.aftColdPlates.i_FL_ATCS_35.heat;
        flow <'FL-ATCS-36'> fl_atcs_36 of ThermalControlCommand from b_FL_ATCS_36.dataCommand to fes.fesControllers.i_FL_ATCS_36.dataCommand;
        flow <'FL-ATCS-37'> fl_atcs_37 of ThermalControlCommand from b_FL_ATCS_37.dataCommand to nh3.ammoniaSupplySystem.i_FL_ATCS_37.dataCommand;
        flow <'FL-ATCS-38'> fl_atcs_38 of ThermalControlCommand from b_FL_ATCS_38.dataCommand to fcl.freonPumpPackage.i_FL_ATCS_38.dataCommand;
    }
    // ---- 図114 MPS 推進薬供給 内部ブロック図：機器
    part def <'EQ-MPS-01'> Lo2FeedDisconnectValve :> SSD_ALC_SYS_001::Physical::PHY_MPS_06 {
        doc /* LO2 17インチ供給管切離し弁（オービタ側）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-06） */
        port i_FL_MPS_01 : ~LiquidOxygenPort;
        port o_FL_MPS_02 : LiquidOxygenPort;
    }
    part def <'EQ-MPS-02'> Lh2FeedDisconnectValve :> SSD_ALC_SYS_001::Physical::PHY_MPS_06 {
        doc /* LH2 17インチ供給管切離し弁（オービタ側）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-06） */
        port i_FL_MPS_05 : ~LiquidHydrogenPort;
        port o_FL_MPS_06 : LiquidHydrogenPort;
    }
    part def <'EQ-MPS-03'> Lo2Manifold :> SSD_ALC_SYS_001::Physical::PHY_MPS_06 {
        doc /* LO2 供給マニホールド（17インチ）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-06） */
        port i_FL_MPS_02 : ~LiquidOxygenPort;
        port o_FL_MPS_03 : LiquidOxygenPort;
        port i_FL_MPS_19 : ~LiquidOxygenPort;
        port i_FL_MPS_30 : ~HeliumPort;
    }
    part def <'EQ-MPS-04'> Lh2Manifold :> SSD_ALC_SYS_001::Physical::PHY_MPS_06 {
        doc /* LH2 供給マニホールド（17インチ）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-06） */
        port i_FL_MPS_06 : ~LiquidHydrogenPort;
        port o_FL_MPS_07 : LiquidHydrogenPort;
        port i_FL_MPS_21 : ~LiquidHydrogenPort;
        port o_FL_MPS_24 : LiquidHydrogenPort;
        port i_FL_MPS_31 : ~HeliumPort;
    }
    part def <'EQ-MPS-05'> Lo2Prevalve :> SSD_ALC_SYS_001::Physical::PHY_MPS_06 {
        doc /* LO2 プリバルブ（12インチ SSME 供給管）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-06） */
        port i_FL_MPS_03 : ~LiquidOxygenPort;
        port o_FL_MPS_04 : LiquidOxygenPort;
        port i_FL_MPS_28 : ~HeliumPort;
    }
    part def <'EQ-MPS-06'> Lh2Prevalve :> SSD_ALC_SYS_001::Physical::PHY_MPS_06 {
        doc /* LH2 プリバルブ（12インチ SSME 供給管）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-06） */
        port i_FL_MPS_07 : ~LiquidHydrogenPort;
        port o_FL_MPS_08 : LiquidHydrogenPort;
    }
    part def <'EQ-MPS-07'> Ssme :> SSD_ALC_SYS_001::Physical::PHY_MPS_01 {
        doc /* SSME（中央＝1・左＝2・右＝3）（機能ブロック SSD-FD-MPS-SSME-001、機器 PHY-MPS-01） */
        port i_FL_MPS_04 : ~LiquidOxygenPort;
        port i_FL_MPS_08 : ~LiquidHydrogenPort;
        port o_FL_MPS_09 : GaseousOxygenPressurantPort;
        port o_FL_MPS_12 : GaseousHydrogenPressurantPort;
        port o_FL_MPS_22 : LiquidOxygenPort;
        port i_FL_MPS_27 : ~HeliumPort;
        port i_FL_MPS_35 : ~EngineCommandDataPort;
        port i_FL_MPS_39 : ~EngineHydraulicPort;
        port i_FL_MPS_42 : ~ThrustPort;
        port o_FL_MPS_43 : ThrustPort;
    }
    part def <'EQ-MPS-08'> Go2PressLine :> SSD_ALC_SYS_001::Physical::PHY_MPS_07 {
        doc /* GO2 加圧ライン（逆止弁・固定オリフィス・GO2 加圧流量制御弁）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-07） */
        port i_FL_MPS_09 : ~GaseousOxygenPressurantPort;
        port o_FL_MPS_10 : GaseousOxygenPressurantPort;
    }
    part def <'EQ-MPS-09'> Gh2PressLine :> SSD_ALC_SYS_001::Physical::PHY_MPS_07 {
        doc /* GH2 加圧ライン（逆止弁2・オリフィス2・GH2 加圧流量制御弁）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-07） */
        port i_FL_MPS_12 : ~GaseousHydrogenPressurantPort;
        port o_FL_MPS_13 : GaseousHydrogenPressurantPort;
    }
    part def <'EQ-MPS-10'> Go2PressManifold :> SSD_ALC_SYS_001::Physical::PHY_MPS_07 {
        doc /* GO2 ET 加圧マニホールド（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-07） */
        port i_FL_MPS_10 : ~GaseousOxygenPressurantPort;
        port o_FL_MPS_11 : GaseousOxygenPressurantPort;
        port i_FL_MPS_16 : ~HeliumPort;
    }
    part def <'EQ-MPS-11'> Gh2PressManifold :> SSD_ALC_SYS_001::Physical::PHY_MPS_07 {
        doc /* GH2 ET 加圧マニホールド（H2 加圧ラインベント弁を含む）（機能ブロック SSD-FD-MPS-PMS-001、機器 PHY-MPS-07） */
        port i_FL_MPS_13 : ~GaseousHydrogenPressurantPort;
        port o_FL_MPS_14 : GaseousHydrogenPressurantPort;
        port o_FL_MPS_15 : GaseousHydrogenPressurantPort;
        port i_FL_MPS_17 : ~HeliumPort;
    }
    part def <'EQ-MPS-12'> EngineHeliumSupply :> SSD_ALC_SYS_001::Physical::PHY_MPS_05 {
        doc /* エンジン用ヘリウム供給（17.3 ft3 タンク1・4.7 ft3 タンク2・遮断弁・調圧器2・リリーフ弁）（機能ブロック SSD-FD-MPS-HE-001、機器 PHY-MPS-05） */
        port o_FL_MPS_27 : HeliumPort;
        port o_FL_MPS_32 : HeliumPort;
    }
    part def <'EQ-MPS-13'> PneumaticHeliumSupply :> SSD_ALC_SYS_001::Physical::PHY_MPS_05 {
        doc /* 空圧ヘリウム供給（4.7 ft3 タンク1・遮断弁2・調圧器・リリーフ弁・空圧アキュムレータ）（機能ブロック SSD-FD-MPS-HE-001、機器 PHY-MPS-05） */
        port o_FL_MPS_28 : HeliumPort;
        port o_FL_MPS_29 : HeliumPort;
        port i_FL_MPS_32 : ~HeliumPort;
        port i_FL_MPS_37 : ~MpsElectricPowerPort;
    }
    part def <'EQ-MPS-14'> ManifoldRepressValves :> SSD_ALC_SYS_001::Physical::PHY_MPS_08 {
        doc /* マニホールド再加圧弁・調圧器（LO2 用2個・LH2 用2個、RTLS マニホールド加圧弁を含む）（機能ブロック SSD-FD-MPS-DMP-001、機器 PHY-MPS-08） */
        port i_FL_MPS_29 : ~HeliumPort;
        port o_FL_MPS_30 : HeliumPort;
        port o_FL_MPS_31 : HeliumPort;
    }
    part def <'EQ-MPS-15'> Lo2FillDrainValves :> SSD_ALC_SYS_001::Physical::PHY_MPS_08 {
        doc /* LO2 充填排出弁（8インチ、外側・内側を直列）（機能ブロック SSD-FD-MPS-DMP-001、機器 PHY-MPS-08） */
        port i_FL_MPS_18 : ~LiquidOxygenPort;
        port o_FL_MPS_19 : LiquidOxygenPort;
        port o_FL_MPS_26 : LiquidOxygenPort;
    }
    part def <'EQ-MPS-16'> Lh2FillDrainValves :> SSD_ALC_SYS_001::Physical::PHY_MPS_08 {
        doc /* LH2 充填排出弁（8インチ、外側・内側を直列）とトッピング弁（機能ブロック SSD-FD-MPS-DMP-001、機器 PHY-MPS-08） */
        port i_FL_MPS_20 : ~LiquidHydrogenPort;
        port o_FL_MPS_21 : LiquidHydrogenPort;
        port o_FL_MPS_23 : LiquidHydrogenPort;
    }
    part def <'EQ-MPS-17'> Lh2BackupDumpValves :> SSD_ALC_SYS_001::Physical::PHY_MPS_08 {
        doc /* バックアップ LH2 ダンプ弁（RTLS ダンプ弁、直列2個）（機能ブロック SSD-FD-MPS-DMP-001、機器 PHY-MPS-08） */
        port i_FL_MPS_24 : ~LiquidHydrogenPort;
        port o_FL_MPS_25 : LiquidHydrogenPort;
    }
    part def <'EQ-MPS-18'> SsmeController :> SSD_ALC_SYS_001::Physical::PHY_MPS_02 {
        doc /* SSME 制御器（DCU A・B）（機能ブロック SSD-FD-MPS-CTL-001、機器 PHY-MPS-02） */
        port i_FL_MPS_33 : ~EngineCommandDataPort;
        port o_FL_MPS_34 : EngineCommandDataPort;
        port o_FL_MPS_35 : EngineCommandDataPort;
        port i_FL_MPS_36 : ~MpsElectricPowerPort;
    }
    part def <'EQ-MPS-19'> TvcActuator :> SSD_ALC_SYS_001::Physical::PHY_MPS_03 {
        doc /* SSME TVC サーボアクチュエータ（ピッチ・ヨー各1／エンジン）（機能ブロック SSD-FD-MPS-TVC-001、機器 PHY-MPS-03） */
        port i_FL_MPS_38 : ~EngineHydraulicPort;
        port i_FL_MPS_41 : ~EngineCommandDataPort;
        port o_FL_MPS_42 : ThrustPort;
    }
    part def <'EQ-MPS-20'> Atvc :> SSD_ALC_SYS_001::Physical::PHY_MPS_04 {
        doc /* ATVC（上昇推力方向制御装置）（機能ブロック SSD-FD-MPS-TVC-001、機器 PHY-MPS-04） */
        port i_FL_MPS_40 : ~EngineCommandDataPort;
        port o_FL_MPS_41 : EngineCommandDataPort;
    }
    // ---- 図114 MPS 推進薬供給 内部ブロック図：接続（MpsInterconnection は MPS を特化）
    part def MpsInterconnection :> MPS {
        doc /* MPS（推進薬・加圧・ヘリウム）の内部ブロック図（図114）。基の機能ブロック SSD-FD-MPS-001。 */
        part redefines pms {
            part lo2FeedDisconnectValve : Lo2FeedDisconnectValve;
            part lh2FeedDisconnectValve : Lh2FeedDisconnectValve;
            part lo2Manifold : Lo2Manifold;
            part lh2Manifold : Lh2Manifold;
            part lo2Prevalve[3] : Lo2Prevalve;
            part lh2Prevalve[3] : Lh2Prevalve;
            part go2PressLine[3] : Go2PressLine;
            part gh2PressLine[3] : Gh2PressLine;
            part go2PressManifold : Go2PressManifold;
            part gh2PressManifold : Gh2PressManifold;
        }
        part redefines ssme {
            part ssme[3] : Ssme;
        }
        part redefines he {
            part engineHeliumSupply[3] : EngineHeliumSupply;
            part pneumaticHeliumSupply : PneumaticHeliumSupply;
        }
        part redefines dmp {
            part manifoldRepressValves : ManifoldRepressValves;
            part lo2FillDrainValves : Lo2FillDrainValves;
            part lh2FillDrainValves : Lh2FillDrainValves;
            part lh2BackupDumpValves : Lh2BackupDumpValves;
        }
        part redefines ctl {
            part ssmeController[3] : SsmeController;
        }
        part redefines tvc {
            part tvcActuator[6] : TvcActuator;
            part atvc[4] : Atvc;
        }
        port b_FL_MPS_01 : ~LiquidOxygenPort { doc /* 枠の外の相手 EB-MPS-01（ET の LO2 タンク（17インチ LO2 供給管・右後方アンビリカル）） */ }
        port b_FL_MPS_05 : ~LiquidHydrogenPort { doc /* 枠の外の相手 EB-MPS-02（ET の LH2 タンク（17インチ LH2 供給管・左後方アンビリカル）） */ }
        port b_FL_MPS_11 : GaseousOxygenPressurantPort { doc /* 枠の外の相手 EB-MPS-03（ET の LO2 タンクのアレージ（GO2 加圧アンビリカル）） */ }
        port b_FL_MPS_14 : GaseousHydrogenPressurantPort { doc /* 枠の外の相手 EB-MPS-04（ET の LH2 タンクのアレージ（GH2 加圧アンビリカル）） */ }
        port b_FL_MPS_15 : GaseousHydrogenPressurantPort { doc /* 枠の外の相手 EB-MPS-07（宇宙空間・船外（ダンプ・ベント・真空不活性化）） */ }
        port b_FL_MPS_16 : ~HeliumPort { doc /* 枠の外の相手 EB-MPS-06（地上支援設備のヘリウム（T-0 アンビリカル、ET の地上加圧）） */ }
        port b_FL_MPS_17 : ~HeliumPort { doc /* 枠の外の相手 EB-MPS-06（地上支援設備のヘリウム（T-0 アンビリカル、ET の地上加圧）） */ }
        port b_FL_MPS_18 : ~LiquidOxygenPort { doc /* 枠の外の相手 EB-MPS-05（地上支援設備の LO2・LH2（T-0 アンビリカル）） */ }
        port b_FL_MPS_20 : ~LiquidHydrogenPort { doc /* 枠の外の相手 EB-MPS-05（地上支援設備の LO2・LH2（T-0 アンビリカル）） */ }
        port b_FL_MPS_22 : LiquidOxygenPort { doc /* 枠の外の相手 EB-MPS-07（宇宙空間・船外（ダンプ・ベント・真空不活性化）） */ }
        port b_FL_MPS_23 : LiquidHydrogenPort { doc /* 枠の外の相手 EB-MPS-07（宇宙空間・船外（ダンプ・ベント・真空不活性化）） */ }
        port b_FL_MPS_25 : LiquidHydrogenPort { doc /* 枠の外の相手 EB-MPS-07（宇宙空間・船外（ダンプ・ベント・真空不活性化）） */ }
        port b_FL_MPS_26 : LiquidOxygenPort { doc /* 枠の外の相手 EB-MPS-07（宇宙空間・船外（ダンプ・ベント・真空不活性化）） */ }
        port b_FL_MPS_33 : ~EngineCommandDataPort { doc /* 枠の外の相手 EB-MPS-09（データ処理系（GPC・エンジン接続装置 EIU）） */ }
        port b_FL_MPS_34 : EngineCommandDataPort { doc /* 枠の外の相手 EB-MPS-09（データ処理系（GPC・エンジン接続装置 EIU）） */ }
        port b_FL_MPS_36 : ~MpsElectricPowerPort { doc /* 枠の外の相手 EB-MPS-10（電力系（交流母線、制御器へ）） */ }
        port b_FL_MPS_37 : ~MpsElectricPowerPort { doc /* 枠の外の相手 EB-MPS-11（電力系（直流、推進薬管理系・ヘリウム系の弁とトランスデューサへ）） */ }
        port b_FL_MPS_38 : ~EngineHydraulicPort { doc /* 枠の外の相手 EB-MPS-08（補助動力・油圧系（HYD SYS 1・2・3、MPS/TVC 遮断弁）） */ }
        port b_FL_MPS_39 : ~EngineHydraulicPort { doc /* 枠の外の相手 EB-MPS-08（補助動力・油圧系（HYD SYS 1・2・3、MPS/TVC 遮断弁）） */ }
        port b_FL_MPS_40 : ~EngineCommandDataPort { doc /* 枠の外の相手 EB-MPS-12（GN&C（GPC の上昇 TVC 指令を ATVC へ）） */ }
        port b_FL_MPS_43 : ThrustPort { doc /* 枠の外の相手 EB-MPS-13（オービタ推力構造（STR）） */ }
        flow <'FL-MPS-01'> fl_mps_01 from b_FL_MPS_01.fluid to pms.lo2FeedDisconnectValve.i_FL_MPS_01.fluid {
            item :>> payload : LiquidOxygen {
                attribute massFlowRateNominal :> massFlowRate = 2787 ['lb/s'] { doc /* 質量流量 2,787 lb/s */ }
                attribute pressureMin :> pressure = 20 ['lbf/in²'] { doc /* 圧力 20〜22 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 22 ['lbf/in²'] { doc /* 圧力 20〜22 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-02'> fl_mps_02 of LiquidOxygen from pms.lo2FeedDisconnectValve.o_FL_MPS_02.fluid to pms.lo2Manifold.i_FL_MPS_02.fluid;
        flow <'FL-MPS-03'> fl_mps_03 from pms.lo2Manifold.o_FL_MPS_03.fluid to pms.lo2Prevalve.i_FL_MPS_03.fluid {
            item :>> payload : LiquidOxygen {
                attribute pressure1Nominal :> pressure = 105 ['lbf/in²'] { doc /* 圧力 105 psia（絶対圧） */ }
                attribute pressure2Nominal :> pressure = 50 ['lbf/in²'] { doc /* 圧力 50 psia（絶対圧） */ }
            }
        }
        flow <'FL-MPS-04'> fl_mps_04 from pms.lo2Prevalve.o_FL_MPS_04.fluid to ssme.ssme.i_FL_MPS_04.fluid {
            item :>> payload : LiquidOxygen {
                attribute pressureNominal :> pressure = 100 ['lbf/in²'] { doc /* 圧力 100 psia（絶対圧） */ }
            }
        }
        flow <'FL-MPS-05'> fl_mps_05 from b_FL_MPS_05.fluid to pms.lh2FeedDisconnectValve.i_FL_MPS_05.fluid {
            item :>> payload : LiquidHydrogen {
                attribute massFlowRateNominal :> massFlowRate = 465 ['lb/s'] { doc /* 質量流量 465 lb/s */ }
                attribute pressureMin :> pressure = 32 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 34 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
            }
        }
        flow <'FL-MPS-06'> fl_mps_06 of LiquidHydrogen from pms.lh2FeedDisconnectValve.o_FL_MPS_06.fluid to pms.lh2Manifold.i_FL_MPS_06.fluid;
        flow <'FL-MPS-07'> fl_mps_07 of LiquidHydrogen from pms.lh2Manifold.o_FL_MPS_07.fluid to pms.lh2Prevalve.i_FL_MPS_07.fluid;
        flow <'FL-MPS-08'> fl_mps_08 from pms.lh2Prevalve.o_FL_MPS_08.fluid to ssme.ssme.i_FL_MPS_08.fluid {
            item :>> payload : LiquidHydrogen {
                attribute pressureNominal :> pressure = 30 ['lbf/in²'] { doc /* 圧力 30 psia（絶対圧） */ }
            }
        }
        flow <'FL-MPS-09'> fl_mps_09 of GaseousOxygenPressurant from ssme.ssme.o_FL_MPS_09.fluid to pms.go2PressLine.i_FL_MPS_09.fluid;
        flow <'FL-MPS-10'> fl_mps_10 of GaseousOxygenPressurant from pms.go2PressLine.o_FL_MPS_10.fluid to pms.go2PressManifold.i_FL_MPS_10.fluid;
        flow <'FL-MPS-11'> fl_mps_11 from pms.go2PressManifold.o_FL_MPS_11.fluid to b_FL_MPS_11.fluid {
            item :>> payload : GaseousOxygenPressurant {
                attribute pressureMin :> pressure = 20 ['lbf/in²'] { doc /* 圧力 20〜25 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 25 ['lbf/in²'] { doc /* 圧力 20〜25 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-12'> fl_mps_12 of GaseousHydrogenPressurant from ssme.ssme.o_FL_MPS_12.fluid to pms.gh2PressLine.i_FL_MPS_12.fluid;
        flow <'FL-MPS-13'> fl_mps_13 of GaseousHydrogenPressurant from pms.gh2PressLine.o_FL_MPS_13.fluid to pms.gh2PressManifold.i_FL_MPS_13.fluid;
        flow <'FL-MPS-14'> fl_mps_14 from pms.gh2PressManifold.o_FL_MPS_14.fluid to b_FL_MPS_14.fluid {
            item :>> payload : GaseousHydrogenPressurant {
                attribute pressureMin :> pressure = 32 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 34 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
            }
        }
        flow <'FL-MPS-15'> fl_mps_15 of GaseousHydrogenPressurant from pms.gh2PressManifold.o_FL_MPS_15.fluid to b_FL_MPS_15.fluid;
        flow <'FL-MPS-16'> fl_mps_16 from b_FL_MPS_16.fluid to pms.go2PressManifold.i_FL_MPS_16.fluid {
            item :>> payload : Helium {
                attribute pressureNominal :> pressure = 21 ['lbf/in²'] { doc /* 圧力 21 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-17'> fl_mps_17 from b_FL_MPS_17.fluid to pms.gh2PressManifold.i_FL_MPS_17.fluid {
            item :>> payload : Helium {
                attribute pressureNominal :> pressure = 42 ['lbf/in²'] { doc /* 圧力 42 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-18'> fl_mps_18 of LiquidOxygen from b_FL_MPS_18.fluid to dmp.lo2FillDrainValves.i_FL_MPS_18.fluid;
        flow <'FL-MPS-19'> fl_mps_19 of LiquidOxygen from dmp.lo2FillDrainValves.o_FL_MPS_19.fluid to pms.lo2Manifold.i_FL_MPS_19.fluid;
        flow <'FL-MPS-20'> fl_mps_20 of LiquidHydrogen from b_FL_MPS_20.fluid to dmp.lh2FillDrainValves.i_FL_MPS_20.fluid;
        flow <'FL-MPS-21'> fl_mps_21 of LiquidHydrogen from dmp.lh2FillDrainValves.o_FL_MPS_21.fluid to pms.lh2Manifold.i_FL_MPS_21.fluid;
        flow <'FL-MPS-22'> fl_mps_22 of LiquidOxygen from ssme.ssme.o_FL_MPS_22.fluid to b_FL_MPS_22.fluid;
        flow <'FL-MPS-23'> fl_mps_23 of LiquidHydrogen from dmp.lh2FillDrainValves.o_FL_MPS_23.fluid to b_FL_MPS_23.fluid;
        flow <'FL-MPS-24'> fl_mps_24 of LiquidHydrogen from pms.lh2Manifold.o_FL_MPS_24.fluid to dmp.lh2BackupDumpValves.i_FL_MPS_24.fluid;
        flow <'FL-MPS-25'> fl_mps_25 of LiquidHydrogen from dmp.lh2BackupDumpValves.o_FL_MPS_25.fluid to b_FL_MPS_25.fluid;
        flow <'FL-MPS-26'> fl_mps_26 of LiquidOxygen from dmp.lo2FillDrainValves.o_FL_MPS_26.fluid to b_FL_MPS_26.fluid;
        flow <'FL-MPS-27'> fl_mps_27 from he.engineHeliumSupply.o_FL_MPS_27.fluid to ssme.ssme.i_FL_MPS_27.fluid {
            item :>> payload : Helium {
                attribute pressureMin :> pressure = 730 ['lbf/in²'] { doc /* 圧力 730〜785 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 785 ['lbf/in²'] { doc /* 圧力 730〜785 psia（絶対圧） */ }
            }
        }
        flow <'FL-MPS-28'> fl_mps_28 from he.pneumaticHeliumSupply.o_FL_MPS_28.fluid to pms.lo2Prevalve.i_FL_MPS_28.fluid {
            item :>> payload : Helium {
                attribute pressureMin :> pressure = 715 ['lbf/in²'] { doc /* 圧力 715〜770 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 770 ['lbf/in²'] { doc /* 圧力 715〜770 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-29'> fl_mps_29 from he.pneumaticHeliumSupply.o_FL_MPS_29.fluid to dmp.manifoldRepressValves.i_FL_MPS_29.fluid {
            item :>> payload : Helium {
                attribute pressureMin :> pressure = 715 ['lbf/in²'] { doc /* 圧力 715〜770 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 770 ['lbf/in²'] { doc /* 圧力 715〜770 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-30'> fl_mps_30 from dmp.manifoldRepressValves.o_FL_MPS_30.fluid to pms.lo2Manifold.i_FL_MPS_30.fluid {
            item :>> payload : Helium {
                attribute pressureMin :> pressure = 20 ['lbf/in²'] { doc /* 圧力 20〜25 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 25 ['lbf/in²'] { doc /* 圧力 20〜25 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-31'> fl_mps_31 from dmp.manifoldRepressValves.o_FL_MPS_31.fluid to pms.lh2Manifold.i_FL_MPS_31.fluid {
            item :>> payload : Helium {
                attribute pressureMin :> pressure = 17 ['lbf/in²'] { doc /* 圧力 17〜30 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 30 ['lbf/in²'] { doc /* 圧力 17〜30 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-MPS-32'> fl_mps_32 of Helium from he.engineHeliumSupply.o_FL_MPS_32.fluid to he.pneumaticHeliumSupply.i_FL_MPS_32.fluid;
        flow <'FL-MPS-33'> fl_mps_33 of EngineCommandData from b_FL_MPS_33.dataCommand to ctl.ssmeController.i_FL_MPS_33.dataCommand;
        flow <'FL-MPS-34'> fl_mps_34 of EngineCommandData from ctl.ssmeController.o_FL_MPS_34.dataCommand to b_FL_MPS_34.dataCommand;
        flow <'FL-MPS-35'> fl_mps_35 of EngineCommandData from ctl.ssmeController.o_FL_MPS_35.dataCommand to ssme.ssme.i_FL_MPS_35.dataCommand;
        flow <'FL-MPS-36'> fl_mps_36 of MpsElectricPower from b_FL_MPS_36.electricPower to ctl.ssmeController.i_FL_MPS_36.electricPower;
        flow <'FL-MPS-37'> fl_mps_37 of MpsElectricPower from b_FL_MPS_37.electricPower to he.pneumaticHeliumSupply.i_FL_MPS_37.electricPower;
        flow <'FL-MPS-38'> fl_mps_38 of EngineHydraulic from b_FL_MPS_38.hydraulicFluid to tvc.tvcActuator.i_FL_MPS_38.hydraulicFluid;
        flow <'FL-MPS-39'> fl_mps_39 of EngineHydraulic from b_FL_MPS_39.hydraulicFluid to ssme.ssme.i_FL_MPS_39.hydraulicFluid;
        flow <'FL-MPS-40'> fl_mps_40 of EngineCommandData from b_FL_MPS_40.dataCommand to tvc.atvc.i_FL_MPS_40.dataCommand;
        flow <'FL-MPS-41'> fl_mps_41 of EngineCommandData from tvc.atvc.o_FL_MPS_41.dataCommand to tvc.tvcActuator.i_FL_MPS_41.dataCommand;
        flow <'FL-MPS-42'> fl_mps_42 of Thrust from tvc.tvcActuator.o_FL_MPS_42.structuralLoad to ssme.ssme.i_FL_MPS_42.structuralLoad;
        flow <'FL-MPS-43'> fl_mps_43 from ssme.ssme.o_FL_MPS_43.structuralLoad to b_FL_MPS_43.structuralLoad {
            item :>> payload : Thrust {
                attribute force1Nominal :> force = 393800 [lbf] { doc /* 力 393,800 lbf */ }
                attribute force2Nominal :> force = 488800 [lbf] { doc /* 力 488,800 lbf */ }
            }
        }
    }
    // ---- 図128 DPS データバス網 内部ブロック図：機器
    part def <'EQ-DPS-01'> Gpc :> SSD_ALC_SYS_001::Physical::PHY_DPS_01 {
        doc /* 汎用計算機 GPC 1〜5（PASS 4台・BFS 1台）（機能ブロック SSD-FD-DPS-GPC-001、機器 PHY-DPS-01） */
        port o_FL_DPS_01 : DpsBusDataPort;
        port o_FL_DPS_02 : DpsBusDataPort;
        port o_FL_DPS_15 : DpsBusDataPort;
        port o_FL_DPS_19 : DpsBusDataPort;
        port i_FL_DPS_25 : ~DpsBusDataPort;
        port o_FL_DPS_26 : DpsBusDataPort;
        port o_FL_DPS_29 : DpsBusDataPort;
        port o_FL_DPS_32 : DpsBusDataPort;
        port i_FL_DPS_33 : ~TimingSignalPort;
        port i_FL_DPS_40 : ~DpsDcPowerPort;
        port o_FL_DPS_44 : AvionicsHeatPort;
    }
    part def <'EQ-DPS-02'> FcBus1to4 :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* 飛行重要データバス FC1〜4（ストリング1〜4の第1群）（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_01 : ~DpsBusDataPort;
        port o_FL_DPS_03 : DpsBusDataPort;
        port o_FL_DPS_04 : DpsBusDataPort;
        port o_FL_DPS_07 : DpsBusDataPort;
        port o_FL_DPS_08 : DpsBusDataPort;
    }
    part def <'EQ-DPS-03'> FcBus5to8 :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* 飛行重要データバス FC5〜8（ストリング1〜4の第2群）（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_02 : ~DpsBusDataPort;
        port o_FL_DPS_05 : DpsBusDataPort;
        port o_FL_DPS_06 : DpsBusDataPort;
        port o_FL_DPS_09 : EiuEngineDataPort;
        port o_FL_DPS_10 : DpsBusDataPort;
    }
    part def <'EQ-DPS-04'> PayloadDataBus :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* ペイロードデータバス PL1・PL2（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_15 : ~DpsBusDataPort;
        port o_FL_DPS_16 : DpsBusDataPort;
        port o_FL_DPS_17 : DpsBusDataPort;
    }
    part def <'EQ-DPS-05'> LaunchDataBus :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* 打上げデータバス LB1・LB2（LDB）（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_19 : ~DpsBusDataPort;
        port o_FL_DPS_20 : DpsBusDataPort;
        port o_FL_DPS_21 : DpsBusDataPort;
        port i_FL_DPS_22 : ~DpsBusDataPort;
        port o_FL_DPS_23 : DpsBusDataPort;
    }
    part def <'EQ-DPS-06'> MassMemoryBus :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* 大容量記憶データバス MM1・MM2（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_24 : ~DpsBusDataPort;
        port o_FL_DPS_25 : DpsBusDataPort;
    }
    part def <'EQ-DPS-07'> DkBus :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* 表示/キーボードデータバス DK1〜4（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_26 : ~DpsBusDataPort;
        port o_FL_DPS_27 : DpsBusDataPort;
    }
    part def <'EQ-DPS-08'> IpBus :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* 計装/PCMMU データバス IP1〜5（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_29 : ~DpsBusDataPort;
        port o_FL_DPS_30 : DpsBusDataPort;
    }
    part def <'EQ-DPS-09'> IccBus :> SSD_ALC_SYS_001::Physical::PHY_DPS_06 {
        doc /* 計算機間通信データバス IC1〜5（ICC）（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-06） */
        port i_FL_DPS_32 : ~DpsBusDataPort;
    }
    part def <'EQ-DPS-10'> FfMdm :> SSD_ALC_SYS_001::Physical::PHY_DPS_03 {
        doc /* 飛行重要前方 MDM FF1〜4（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-03） */
        port i_FL_DPS_03 : ~DpsBusDataPort;
        port i_FL_DPS_05 : ~DpsBusDataPort;
        port i_FL_DPS_35 : ~HardwiredIoPort;
        port o_FL_DPS_36 : HardwiredIoPort;
        port o_FL_DPS_38 : HardwiredIoPort;
        port i_FL_DPS_41 : ~DpsDcPowerPort;
        port o_FL_DPS_45 : AvionicsHeatPort;
    }
    part def <'EQ-DPS-11'> FaMdm :> SSD_ALC_SYS_001::Physical::PHY_DPS_03 {
        doc /* 飛行重要後部 MDM FA1〜4（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-03） */
        port i_FL_DPS_04 : ~DpsBusDataPort;
        port i_FL_DPS_06 : ~DpsBusDataPort;
        port o_FL_DPS_37 : HardwiredIoPort;
        port o_FL_DPS_39 : HardwiredIoPort;
        port o_FL_DPS_46 : AvionicsHeatPort;
    }
    part def <'EQ-DPS-12'> PayloadMdm :> SSD_ALC_SYS_001::Physical::PHY_DPS_03 {
        doc /* ペイロード MDM PF1・PF2（PL1・PL2）（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-03） */
        port i_FL_DPS_16 : ~DpsBusDataPort;
        port o_FL_DPS_18 : HardwiredIoPort;
    }
    part def <'EQ-DPS-13'> LaunchMdm :> SSD_ALC_SYS_001::Physical::PHY_DPS_03 {
        doc /* 打上げ MDM LF1・LM1・LA1（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-03） */
        port i_FL_DPS_20 : ~DpsBusDataPort;
    }
    part def <'EQ-DPS-14'> OiMdm :> SSD_ALC_SYS_001::Physical::PHY_DPS_03 {
        doc /* 計装（OI）MDM OF1〜4・OA1〜3（機能ブロック SSD-FD-DPS-BUS-001、機器 PHY-DPS-03） */
        port o_FL_DPS_31 : DpsBusDataPort;
    }
    part def <'EQ-DPS-15'> Eiu :> SSD_ALC_SYS_001::Physical::PHY_DPS_07 {
        doc /* エンジンインタフェースユニット EIU 1〜3（機能ブロック SSD-FD-DPS-ASC-001、機器 PHY-DPS-07） */
        port i_FL_DPS_09 : ~EiuEngineDataPort;
        port o_FL_DPS_11 : EiuEngineDataPort;
        port o_FL_DPS_12 : EiuEngineDataPort;
    }
    part def <'EQ-DPS-16'> Mec :> SSD_ALC_SYS_001::Physical::PHY_DPS_07 {
        doc /* マスターイベントコントローラ MEC 1・2（機能ブロック SSD-FD-DPS-ASC-001、機器 PHY-DPS-07） */
        port i_FL_DPS_10 : ~DpsBusDataPort;
        port o_FL_DPS_13 : PyroFireCommandPort;
        port o_FL_DPS_14 : PyroFireCommandPort;
    }
    part def <'EQ-DPS-17'> Mmu :> SSD_ALC_SYS_001::Physical::PHY_DPS_02 {
        doc /* モジュラーメモリユニット MMU 1・2（機能ブロック SSD-FD-DPS-FSW-001、機器 PHY-DPS-02） */
        port o_FL_DPS_24 : DpsBusDataPort;
        port i_FL_DPS_42 : ~DpsDcPowerPort;
    }
    part def <'EQ-DPS-18'> Idp :> SSD_ALC_SYS_001::Physical::PHY_DPS_04 {
        doc /* 統合表示処理装置 IDP 1〜4（機能ブロック SSD-FD-DPS-MEDS-001、機器 PHY-DPS-04） */
        port i_FL_DPS_07 : ~DpsBusDataPort;
        port i_FL_DPS_27 : ~DpsBusDataPort;
        port o_FL_DPS_28 : MedsDisplayDataPort;
        port i_FL_DPS_43 : ~DpsDcPowerPort;
    }
    part def <'EQ-DPS-19'> MedsDisplayUnits :> SSD_ALC_SYS_001::Physical::PHY_DPS_04 {
        doc /* MEDS 表示・入力器（MDU 11台・ADC 4台・キーボード3台）（機能ブロック SSD-FD-DPS-MEDS-001、機器 PHY-DPS-04） */
        port i_FL_DPS_28 : ~MedsDisplayDataPort;
    }
    part def <'EQ-DPS-20'> Mtu :> SSD_ALC_SYS_001::Physical::PHY_DPS_05 {
        doc /* マスタタイミングユニット MTU（発振器2・累算器3）（機能ブロック SSD-FD-DPS-MTU-001、機器 PHY-DPS-05） */
        port o_FL_DPS_33 : TimingSignalPort;
        port o_FL_DPS_34 : TimingSignalPort;
    }
    // ---- 図128 DPS データバス網 内部ブロック図：接続（DpsInterconnection は DPS を特化）
    part def DpsInterconnection :> DPS {
        doc /* DPS（データバス網）の内部ブロック図（図128）。基の機能ブロック SSD-FD-DPS-001。 */
        part redefines gpc {
            part gpc[5] : Gpc;
        }
        part redefines bus {
            part fcBus1to4[4] : FcBus1to4;
            part fcBus5to8[4] : FcBus5to8;
            part payloadDataBus[2] : PayloadDataBus;
            part launchDataBus[2] : LaunchDataBus;
            part massMemoryBus[2] : MassMemoryBus;
            part dkBus[4] : DkBus;
            part ipBus[5] : IpBus;
            part iccBus[5] : IccBus;
            part ffMdm[4] : FfMdm;
            part faMdm[4] : FaMdm;
            part payloadMdm[2] : PayloadMdm;
            part launchMdm[3] : LaunchMdm;
            part oiMdm[7] : OiMdm;
        }
        part redefines asc {
            part eiu[3] : Eiu;
            part mec[2] : Mec;
        }
        part redefines fsw {
            part mmu[2] : Mmu;
        }
        part redefines meds {
            part idp[4] : Idp;
            part medsDisplayUnits[18] : MedsDisplayUnits;
        }
        part redefines mtu {
            part mtu : Mtu;
        }
        port b_FL_DPS_08 : DpsBusDataPort { doc /* 枠の外の相手 EB-DPS-02（HUD 1・2（GN&C 乗員操縦・表示 CCD）） */ }
        port b_FL_DPS_11 : EiuEngineDataPort { doc /* 枠の外の相手 EB-DPS-03（MPS の SSME 制御器（DCU A・B）×3） */ }
        port b_FL_DPS_12 : EiuEngineDataPort { doc /* 枠の外の相手 EB-DPS-18（C&T の S 帯 FM 系（FM 信号処理器・送信機）） */ }
        port b_FL_DPS_13 : PyroFireCommandPort { doc /* 枠の外の相手 EB-DPS-04（SRB（S&A 装置の NSI 起爆器・PIC）） */ }
        port b_FL_DPS_14 : PyroFireCommandPort { doc /* 枠の外の相手 EB-DPS-05（外部タンク（ET 分離の火工品）） */ }
        port b_FL_DPS_17 : DpsBusDataPort { doc /* 枠の外の相手 EB-DPS-09（C&T のペイロードデータインタリーバ（PDI）） */ }
        port b_FL_DPS_18 : HardwiredIoPort { doc /* 枠の外の相手 EB-DPS-11（C&T の地上指令インタフェース論理（GCIL・GCILC）） */ }
        port b_FL_DPS_21 : DpsBusDataPort { doc /* 枠の外の相手 EB-DPS-06（SRB の MDM（LL1・LL2・LR1・LR2）） */ }
        port b_FL_DPS_22 : ~DpsBusDataPort { doc /* 枠の外の相手 EB-DPS-07（地上支援設備・打上げ処理システム（GSE/LPS）） */ }
        port b_FL_DPS_23 : DpsBusDataPort { doc /* 枠の外の相手 EB-DPS-12（PDRS の MCIU（RMS 制御器）） */ }
        port b_FL_DPS_30 : DpsBusDataPort { doc /* 枠の外の相手 EB-DPS-08（C&T 計装の PCMMU 1・2） */ }
        port b_FL_DPS_31 : DpsBusDataPort { doc /* 枠の外の相手 EB-DPS-08（C&T 計装の PCMMU 1・2） */ }
        port b_FL_DPS_34 : TimingSignalPort { doc /* 枠の外の相手 EB-DPS-08（C&T 計装の PCMMU 1・2） */ }
        port b_FL_DPS_35 : ~HardwiredIoPort { doc /* 枠の外の相手 EB-DPS-10（C&T のネットワーク信号処理器 NSP 1・2） */ }
        port b_FL_DPS_36 : HardwiredIoPort { doc /* 枠の外の相手 EB-DPS-01（GN&C の機器（FF・FA MDM に配線された航法センサ・操縦入力・作動器）） */ }
        port b_FL_DPS_37 : HardwiredIoPort { doc /* 枠の外の相手 EB-DPS-01（GN&C の機器（FF・FA MDM に配線された航法センサ・操縦入力・作動器）） */ }
        port b_FL_DPS_38 : HardwiredIoPort { doc /* 枠の外の相手 EB-DPS-13（主 C&W） */ }
        port b_FL_DPS_39 : HardwiredIoPort { doc /* 枠の外の相手 EB-DPS-14（機械系（主脚ブレーキ隔離弁・MCA 経由の電動アクチュエータ）） */ }
        port b_FL_DPS_40 : ~DpsDcPowerPort { doc /* 枠の外の相手 EB-DPS-15（EPS の主母線 MN A・B・C・必須母線・打上げ前試験母線） */ }
        port b_FL_DPS_41 : ~DpsDcPowerPort { doc /* 枠の外の相手 EB-DPS-15（EPS の主母線 MN A・B・C・必須母線・打上げ前試験母線） */ }
        port b_FL_DPS_42 : ~DpsDcPowerPort { doc /* 枠の外の相手 EB-DPS-15（EPS の主母線 MN A・B・C・必須母線・打上げ前試験母線） */ }
        port b_FL_DPS_43 : ~DpsDcPowerPort { doc /* 枠の外の相手 EB-DPS-15（EPS の主母線 MN A・B・C・必須母線・打上げ前試験母線） */ }
        port b_FL_DPS_44 : AvionicsHeatPort { doc /* 枠の外の相手 EB-DPS-16（ECLSS 水冷却ループ（アビオニクスベイの空気/水熱交換器・コールドプレート）） */ }
        port b_FL_DPS_45 : AvionicsHeatPort { doc /* 枠の外の相手 EB-DPS-16（ECLSS 水冷却ループ（アビオニクスベイの空気/水熱交換器・コールドプレート）） */ }
        port b_FL_DPS_46 : AvionicsHeatPort { doc /* 枠の外の相手 EB-DPS-17（ATCS Freon 冷却ループ（後部アビオニクスベイのコールドプレート）） */ }
        flow <'FL-DPS-01'> fl_dps_01 of DpsBusData from gpc.gpc.o_FL_DPS_01.dataCommand to bus.fcBus1to4.i_FL_DPS_01.dataCommand;
        flow <'FL-DPS-02'> fl_dps_02 of DpsBusData from gpc.gpc.o_FL_DPS_02.dataCommand to bus.fcBus5to8.i_FL_DPS_02.dataCommand;
        flow <'FL-DPS-03'> fl_dps_03 of DpsBusData from bus.fcBus1to4.o_FL_DPS_03.dataCommand to bus.ffMdm.i_FL_DPS_03.dataCommand;
        flow <'FL-DPS-04'> fl_dps_04 of DpsBusData from bus.fcBus1to4.o_FL_DPS_04.dataCommand to bus.faMdm.i_FL_DPS_04.dataCommand;
        flow <'FL-DPS-05'> fl_dps_05 of DpsBusData from bus.fcBus5to8.o_FL_DPS_05.dataCommand to bus.ffMdm.i_FL_DPS_05.dataCommand;
        flow <'FL-DPS-06'> fl_dps_06 of DpsBusData from bus.fcBus5to8.o_FL_DPS_06.dataCommand to bus.faMdm.i_FL_DPS_06.dataCommand;
        flow <'FL-DPS-07'> fl_dps_07 of DpsBusData from bus.fcBus1to4.o_FL_DPS_07.dataCommand to meds.idp.i_FL_DPS_07.dataCommand;
        flow <'FL-DPS-08'> fl_dps_08 of DpsBusData from bus.fcBus1to4.o_FL_DPS_08.dataCommand to b_FL_DPS_08.dataCommand;
        flow <'FL-DPS-09'> fl_dps_09 of EiuEngineData from bus.fcBus5to8.o_FL_DPS_09.dataCommand to asc.eiu.i_FL_DPS_09.dataCommand;
        flow <'FL-DPS-10'> fl_dps_10 of DpsBusData from bus.fcBus5to8.o_FL_DPS_10.dataCommand to asc.mec.i_FL_DPS_10.dataCommand;
        flow <'FL-DPS-11'> fl_dps_11 of EiuEngineData from asc.eiu.o_FL_DPS_11.dataCommand to b_FL_DPS_11.dataCommand;
        flow <'FL-DPS-12'> fl_dps_12 from asc.eiu.o_FL_DPS_12.dataCommand to b_FL_DPS_12.dataCommand {
            item :>> payload : EiuEngineData {
                attribute dataRateNominal :> dataRate = 60 { doc /* 数値 60 kbps */ }
            }
        }
        flow <'FL-DPS-13'> fl_dps_13 from asc.mec.o_FL_DPS_13.dataCommand to b_FL_DPS_13.dataCommand {
            item :>> payload : PyroFireCommand {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-DPS-14'> fl_dps_14 of PyroFireCommand from asc.mec.o_FL_DPS_14.dataCommand to b_FL_DPS_14.dataCommand;
        flow <'FL-DPS-15'> fl_dps_15 of DpsBusData from gpc.gpc.o_FL_DPS_15.dataCommand to bus.payloadDataBus.i_FL_DPS_15.dataCommand;
        flow <'FL-DPS-16'> fl_dps_16 of DpsBusData from bus.payloadDataBus.o_FL_DPS_16.dataCommand to bus.payloadMdm.i_FL_DPS_16.dataCommand;
        flow <'FL-DPS-17'> fl_dps_17 of DpsBusData from bus.payloadDataBus.o_FL_DPS_17.dataCommand to b_FL_DPS_17.dataCommand;
        flow <'FL-DPS-18'> fl_dps_18 of HardwiredIo from bus.payloadMdm.o_FL_DPS_18.dataCommand to b_FL_DPS_18.dataCommand;
        flow <'FL-DPS-19'> fl_dps_19 of DpsBusData from gpc.gpc.o_FL_DPS_19.dataCommand to bus.launchDataBus.i_FL_DPS_19.dataCommand;
        flow <'FL-DPS-20'> fl_dps_20 of DpsBusData from bus.launchDataBus.o_FL_DPS_20.dataCommand to bus.launchMdm.i_FL_DPS_20.dataCommand;
        flow <'FL-DPS-21'> fl_dps_21 of DpsBusData from bus.launchDataBus.o_FL_DPS_21.dataCommand to b_FL_DPS_21.dataCommand;
        flow <'FL-DPS-22'> fl_dps_22 of DpsBusData from b_FL_DPS_22.dataCommand to bus.launchDataBus.i_FL_DPS_22.dataCommand;
        flow <'FL-DPS-23'> fl_dps_23 of DpsBusData from bus.launchDataBus.o_FL_DPS_23.dataCommand to b_FL_DPS_23.dataCommand;
        flow <'FL-DPS-24'> fl_dps_24 of DpsBusData from fsw.mmu.o_FL_DPS_24.dataCommand to bus.massMemoryBus.i_FL_DPS_24.dataCommand;
        flow <'FL-DPS-25'> fl_dps_25 of DpsBusData from bus.massMemoryBus.o_FL_DPS_25.dataCommand to gpc.gpc.i_FL_DPS_25.dataCommand;
        flow <'FL-DPS-26'> fl_dps_26 of DpsBusData from gpc.gpc.o_FL_DPS_26.dataCommand to bus.dkBus.i_FL_DPS_26.dataCommand;
        flow <'FL-DPS-27'> fl_dps_27 of DpsBusData from bus.dkBus.o_FL_DPS_27.dataCommand to meds.idp.i_FL_DPS_27.dataCommand;
        flow <'FL-DPS-28'> fl_dps_28 of MedsDisplayData from meds.idp.o_FL_DPS_28.dataCommand to meds.medsDisplayUnits.i_FL_DPS_28.dataCommand;
        flow <'FL-DPS-29'> fl_dps_29 of DpsBusData from gpc.gpc.o_FL_DPS_29.dataCommand to bus.ipBus.i_FL_DPS_29.dataCommand;
        flow <'FL-DPS-30'> fl_dps_30 of DpsBusData from bus.ipBus.o_FL_DPS_30.dataCommand to b_FL_DPS_30.dataCommand;
        flow <'FL-DPS-31'> fl_dps_31 of DpsBusData from bus.oiMdm.o_FL_DPS_31.dataCommand to b_FL_DPS_31.dataCommand;
        flow <'FL-DPS-32'> fl_dps_32 of DpsBusData from gpc.gpc.o_FL_DPS_32.dataCommand to bus.iccBus.i_FL_DPS_32.dataCommand;
        flow <'FL-DPS-33'> fl_dps_33 of TimingSignal from mtu.mtu.o_FL_DPS_33.dataCommand to gpc.gpc.i_FL_DPS_33.dataCommand;
        flow <'FL-DPS-34'> fl_dps_34 of TimingSignal from mtu.mtu.o_FL_DPS_34.dataCommand to b_FL_DPS_34.dataCommand;
        flow <'FL-DPS-35'> fl_dps_35 of HardwiredIo from b_FL_DPS_35.dataCommand to bus.ffMdm.i_FL_DPS_35.dataCommand;
        flow <'FL-DPS-36'> fl_dps_36 of HardwiredIo from bus.ffMdm.o_FL_DPS_36.dataCommand to b_FL_DPS_36.dataCommand;
        flow <'FL-DPS-37'> fl_dps_37 of HardwiredIo from bus.faMdm.o_FL_DPS_37.dataCommand to b_FL_DPS_37.dataCommand;
        flow <'FL-DPS-38'> fl_dps_38 of HardwiredIo from bus.ffMdm.o_FL_DPS_38.dataCommand to b_FL_DPS_38.dataCommand;
        flow <'FL-DPS-39'> fl_dps_39 of HardwiredIo from bus.faMdm.o_FL_DPS_39.dataCommand to b_FL_DPS_39.dataCommand;
        flow <'FL-DPS-40'> fl_dps_40 from b_FL_DPS_40.electricPower to gpc.gpc.i_FL_DPS_40.electricPower {
            item :>> payload : DpsDcPower {
                attribute powerNominal :> power = 560 [W] { doc /* 電力・熱流量 560 W */ }
            }
        }
        flow <'FL-DPS-41'> fl_dps_41 from b_FL_DPS_41.electricPower to bus.ffMdm.i_FL_DPS_41.electricPower {
            item :>> payload : DpsDcPower {
                attribute powerMax :> power = 80 [W] { doc /* 電力・熱流量 最大 80 W */ }
                attribute voltageMin :> voltage = 24 [V] { doc /* 電圧 最小 24 V */ }
            }
        }
        flow <'FL-DPS-42'> fl_dps_42 from b_FL_DPS_42.electricPower to fsw.mmu.i_FL_DPS_42.electricPower {
            item :>> payload : DpsDcPower {
                attribute powerNominal :> power = 83 [W] { doc /* 電力・熱流量 83 W */ }
            }
        }
        flow <'FL-DPS-43'> fl_dps_43 from b_FL_DPS_43.electricPower to meds.idp.i_FL_DPS_43.electricPower {
            item :>> payload : DpsDcPower {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-DPS-44'> fl_dps_44 of AvionicsHeat from gpc.gpc.o_FL_DPS_44.heat to b_FL_DPS_44.heat;
        flow <'FL-DPS-45'> fl_dps_45 of AvionicsHeat from bus.ffMdm.o_FL_DPS_45.heat to b_FL_DPS_45.heat;
        flow <'FL-DPS-46'> fl_dps_46 of AvionicsHeat from bus.faMdm.o_FL_DPS_46.heat to b_FL_DPS_46.heat;
    }
    // ---- 図129 APU・油圧 内部ブロック図：機器
    part def <'EQ-APU-01'> FuelTank :> SSD_ALC_SYS_001::Physical::PHY_APU_02 {
        doc /* APU 燃料タンク（直径28インチ球、隔膜式・GN2 加圧）（機能ブロック SSD-FD-APU-FUL-001、機器 PHY-APU-02） */
        port o_FL_APU_01 : HydrazinePort;
    }
    part def <'EQ-APU-02'> FuelIsolationValves :> SSD_ALC_SYS_001::Physical::PHY_APU_02 {
        doc /* 燃料フィルタ・燃料タンク隔離弁（並列2個）（機能ブロック SSD-FD-APU-FUL-001、機器 PHY-APU-02） */
        port i_FL_APU_01 : ~HydrazinePort;
        port o_FL_APU_02 : HydrazinePort;
    }
    part def <'EQ-APU-03'> FuelPump :> SSD_ALC_SYS_001::Physical::PHY_APU_01 {
        doc /* APU 燃料ポンプ（固定容量歯車形、出口フィルタ・逃がし弁・シール漏れ回収ボトル）（機能ブロック SSD-FD-APU-FUL-001、機器 PHY-APU-01） */
        port i_FL_APU_02 : ~HydrazinePort;
        port o_FL_APU_03 : HydrazinePort;
        port i_FL_APU_08 : ~ApuShaftPowerPort;
    }
    part def <'EQ-APU-04'> GasGeneratorValveModule :> SSD_ALC_SYS_001::Physical::PHY_APU_01 {
        doc /* ガス発生器弁モジュール（主・副の電磁パルス式燃料制御弁を直列）（機能ブロック SSD-FD-APU-FUL-001、機器 PHY-APU-01） */
        port i_FL_APU_03 : ~HydrazinePort;
        port o_FL_APU_04 : HydrazinePort;
        port i_FL_APU_31 : ~ApuHydDataPort;
    }
    part def <'EQ-APU-05'> GasGeneratorTurbine :> SSD_ALC_SYS_001::Physical::PHY_APU_01 {
        doc /* ガス発生器・タービン（Shell 405 触媒床、単段2回通過タービン、排気ダクト）（機能ブロック SSD-FD-APU-TRB-001、機器 PHY-APU-01） */
        port i_FL_APU_04 : ~HydrazinePort;
        port o_FL_APU_05 : ApuExhaustGasPort;
        port o_FL_APU_06 : ApuShaftPowerPort;
        port i_FL_APU_11 : ~ApuWaterPort;
    }
    part def <'EQ-APU-06'> GearboxLubeOil :> SSD_ALC_SYS_001::Physical::PHY_APU_01 {
        doc /* 減速ギアボックス・潤滑油系（潤滑油ポンプ・アキュムレータ2・GN2 容器・加圧弁）（機能ブロック SSD-FD-APU-TRB-001、機器 PHY-APU-01） */
        port i_FL_APU_06 : ~ApuShaftPowerPort;
        port o_FL_APU_07 : ApuShaftPowerPort;
        port o_FL_APU_08 : ApuShaftPowerPort;
        port o_FL_APU_09 : ApuLubeOilPort;
        port i_FL_APU_10 : ~ApuLubeOilPort;
    }
    part def <'EQ-APU-07'> ApuController :> SSD_ALC_SYS_001::Physical::PHY_APU_01 {
        doc /* APU 制御器（デジタル、2重の内部 RPC で給電）（機能ブロック SSD-FD-APU-CTL-001、機器 PHY-APU-01） */
        port o_FL_APU_31 : ApuHydDataPort;
        port o_FL_APU_32 : ApuHydDataPort;
        port i_FL_APU_36 : ~ApuElectricPowerPort;
    }
    part def <'EQ-APU-08'> InjectorCoolingWaterTank :> SSD_ALC_SYS_001::Physical::PHY_APU_06 {
        doc /* 噴射器冷却水タンク（3台共用、直径9.4インチ、GN2 加圧）と制御弁3個（機能ブロック SSD-FD-APU-TRB-001、機器 PHY-APU-06） */
        port o_FL_APU_11 : ApuWaterPort;
    }
    part def <'EQ-APU-09'> WaterSprayBoiler :> SSD_ALC_SYS_001::Physical::PHY_APU_03 {
        doc /* 水噴霧ボイラ（ボイラ本体・噴霧バー・作動油部と潤滑油部の給水弁・作動油バイパス弁・ポペット弁・制御器 A/B・蒸気ベント）（機能ブロック SSD-FD-APU-WSB-001、機器 PHY-APU-03） */
        port i_FL_APU_09 : ~ApuLubeOilPort;
        port o_FL_APU_10 : ApuLubeOilPort;
        port i_FL_APU_12 : ~ApuWaterPort;
        port o_FL_APU_13 : ApuWaterPort;
        port i_FL_APU_17 : ~OrbiterHydraulicFluidPort;
    }
    part def <'EQ-APU-10'> WsbWaterSupply :> SSD_ALC_SYS_001::Physical::PHY_APU_03 {
        doc /* WSB の給水系（GN2 容器・遮断弁・調圧器・逃がし弁・ベローズ式水タンク）（機能ブロック SSD-FD-APU-WSB-001、機器 PHY-APU-03） */
        port o_FL_APU_12 : ApuWaterPort;
    }
    part def <'EQ-APU-11'> MainHydraulicPump :> SSD_ALC_SYS_001::Physical::PHY_APU_04 {
        doc /* 主油圧ポンプ（可変容量形、減圧弁つき）（機能ブロック SSD-FD-APU-HYD-001、機器 PHY-APU-04） */
        port i_FL_APU_07 : ~ApuShaftPowerPort;
        port o_FL_APU_14 : OrbiterHydraulicFluidPort;
        port i_FL_APU_16 : ~OrbiterHydraulicFluidPort;
        port o_FL_APU_17 : OrbiterHydraulicFluidPort;
    }
    part def <'EQ-APU-12'> HydFilterModule :> SSD_ALC_SYS_001::Physical::PHY_APU_07 {
        doc /* 油圧フィルタモジュール（高圧逃がし弁・圧力センサ A）とプライオリティ弁（油圧系統1・2・3の供給元）（機能ブロック SSD-FD-APU-HYD-001、機器 PHY-APU-07） */
        port i_FL_APU_14 : ~OrbiterHydraulicFluidPort;
        port o_FL_APU_15 : OrbiterHydraulicFluidPort;
        port o_FL_APU_21 : OrbiterHydraulicFluidPort;
        port o_FL_APU_24 : OrbiterHydraulicFluidPort;
        port o_FL_APU_25 : OrbiterHydraulicFluidPort;
        port o_FL_APU_26 : OrbiterHydraulicFluidPort;
        port o_FL_APU_28 : OrbiterHydraulicFluidPort;
        port o_FL_APU_34 : ApuHydDataPort;
    }
    part def <'EQ-APU-13'> ReservoirAccumulator :> SSD_ALC_SYS_001::Physical::PHY_APU_05 {
        doc /* 油圧リザーバ（8ガロン）・ブートストラップアキュムレータ（ベローズ式）（機能ブロック SSD-FD-APU-HYD-001、機器 PHY-APU-05） */
        port i_FL_APU_15 : ~OrbiterHydraulicFluidPort;
        port o_FL_APU_16 : OrbiterHydraulicFluidPort;
        port i_FL_APU_18 : ~OrbiterHydraulicFluidPort;
    }
    part def <'EQ-APU-14'> CirculationPump :> SSD_ALC_SYS_001::Physical::PHY_APU_05 {
        doc /* 循環ポンプ（電動機1台で駆動する2段歯車ポンプ、アンローダ弁）（機能ブロック SSD-FD-APU-CIR-001、機器 PHY-APU-05） */
        port o_FL_APU_18 : OrbiterHydraulicFluidPort;
        port o_FL_APU_19 : OrbiterHydraulicFluidPort;
        port i_FL_APU_33 : ~ApuHydDataPort;
        port i_FL_APU_37 : ~ApuElectricPowerPort;
    }
    part def <'EQ-APU-15'> FreonHydHeatExchanger :> SSD_ALC_SYS_001::Physical::PHY_ECLSS_09 {
        doc /* フレオン／油圧熱交換器と温度制御バイパス弁（機能ブロック SSD-FD-APU-CIR-001、機器 PHY-ECLSS-09） */
        port i_FL_APU_19 : ~OrbiterHydraulicFluidPort;
        port i_FL_APU_20 : ~HydraulicThermalHeatPort;
    }
    part def <'EQ-APU-16'> MpsTvcIsolationValves :> SSD_ALC_SYS_001::Physical::PHY_APU_07 {
        doc /* MPS/TVC 隔離弁（油圧系統1・2・3に各1）（機能ブロック SSD-FD-APU-HYD-001、機器 PHY-APU-07） */
        port i_FL_APU_21 : ~OrbiterHydraulicFluidPort;
        port o_FL_APU_22 : OrbiterHydraulicFluidPort;
        port o_FL_APU_23 : OrbiterHydraulicFluidPort;
    }
    part def <'EQ-APU-17'> BrakeIsolationValves :> SSD_ALC_SYS_001::Physical::PHY_APU_07 {
        doc /* ブレーキ隔離弁1・2・3とブレーキ系の調圧器（機能ブロック SSD-FD-APU-HYD-001、機器 PHY-APU-07） */
        port i_FL_APU_26 : ~OrbiterHydraulicFluidPort;
        port o_FL_APU_27 : OrbiterHydraulicFluidPort;
        port i_FL_APU_35 : ~ApuHydDataPort;
    }
    part def <'EQ-APU-18'> LandingGearExtendValves :> SSD_ALC_SYS_001::Physical::PHY_APU_07 {
        doc /* 脚伸展隔離弁・脚伸展弁1（系1）・脚伸展弁2（系2）・脚／NWS 油圧系切替弁（機能ブロック SSD-FD-APU-HYD-001、機器 PHY-APU-07） */
        port i_FL_APU_28 : ~OrbiterHydraulicFluidPort;
        port o_FL_APU_29 : OrbiterHydraulicFluidPort;
        port o_FL_APU_30 : OrbiterHydraulicFluidPort;
    }
    // ---- 図129 APU・油圧 内部ブロック図：接続（ApuHydInterconnection は APU を特化）
    part def ApuHydInterconnection :> APU {
        doc /* APU・油圧（3系統）の内部ブロック図（図129）。基の機能ブロック SSD-FD-APU-001。 */
        part redefines ful {
            part fuelTank[3] : FuelTank;
            part fuelIsolationValves[3] : FuelIsolationValves;
            part fuelPump[3] : FuelPump;
            part gasGeneratorValveModule[3] : GasGeneratorValveModule;
        }
        part redefines trb {
            part gasGeneratorTurbine[3] : GasGeneratorTurbine;
            part gearboxLubeOil[3] : GearboxLubeOil;
            part injectorCoolingWaterTank : InjectorCoolingWaterTank;
        }
        part redefines ctl {
            part apuController[3] : ApuController;
        }
        part redefines wsb {
            part waterSprayBoiler[3] : WaterSprayBoiler;
            part wsbWaterSupply[3] : WsbWaterSupply;
        }
        part redefines hyd {
            part mainHydraulicPump[3] : MainHydraulicPump;
            part hydFilterModule[3] : HydFilterModule;
            part reservoirAccumulator[3] : ReservoirAccumulator;
            part mpsTvcIsolationValves[3] : MpsTvcIsolationValves;
            part brakeIsolationValves[3] : BrakeIsolationValves;
            part landingGearExtendValves : LandingGearExtendValves;
        }
        part redefines cir {
            part circulationPump[3] : CirculationPump;
            part freonHydHeatExchanger[3] : FreonHydHeatExchanger;
        }
        port b_FL_APU_05 : ApuExhaustGasPort { doc /* 枠の外の相手 EB-APU-14（宇宙空間・機外（APU 排気ダクト、WSB 蒸気ベント）） */ }
        port b_FL_APU_13 : ApuWaterPort { doc /* 枠の外の相手 EB-APU-14（宇宙空間・機外（APU 排気ダクト、WSB 蒸気ベント）） */ }
        port b_FL_APU_20 : ~HydraulicThermalHeatPort { doc /* 枠の外の相手 EB-APU-08（ATCS：フレオン21冷却ループ（熱交換器・コールドプレート網）） */ }
        port b_FL_APU_22 : OrbiterHydraulicFluidPort { doc /* 枠の外の相手 EB-APU-01（MPS：SSME TVC サーボアクチュエータ（ピッチ・ヨー、6台）） */ }
        port b_FL_APU_23 : OrbiterHydraulicFluidPort { doc /* 枠の外の相手 EB-APU-02（MPS：SSME の油圧作動エンジン弁（各エンジン5個）） */ }
        port b_FL_APU_24 : OrbiterHydraulicFluidPort { doc /* 枠の外の相手 EB-APU-03（GN&C：エレボンのサーボアクチュエータ（4台）） */ }
        port b_FL_APU_25 : OrbiterHydraulicFluidPort { doc /* 枠の外の相手 EB-APU-04（GN&C：ラダー／スピードブレーキの油圧モータ（各3）とボディフラップのサーボアクチュエータ（3）） */ }
        port b_FL_APU_27 : OrbiterHydraulicFluidPort { doc /* 枠の外の相手 EB-APU-06（MECH：主脚ブレーキ（4組、ブレーキ／スキッド制御弁8個）） */ }
        port b_FL_APU_29 : OrbiterHydraulicFluidPort { doc /* 枠の外の相手 EB-APU-05（MECH：前脚・主脚のアップロック作動器・ストラット作動器） */ }
        port b_FL_APU_30 : OrbiterHydraulicFluidPort { doc /* 枠の外の相手 EB-APU-07（MECH：前輪操舵（NWS）の油圧サーボアクチュエータ） */ }
        port b_FL_APU_32 : ApuHydDataPort { doc /* 枠の外の相手 EB-APU-11（DPS：SM GPC（燃料量・水量の計算、循環ポンプの制御、SM 表示）） */ }
        port b_FL_APU_33 : ~ApuHydDataPort { doc /* 枠の外の相手 EB-APU-11（DPS：SM GPC（燃料量・水量の計算、循環ポンプの制御、SM 表示）） */ }
        port b_FL_APU_34 : ApuHydDataPort { doc /* 枠の外の相手 EB-APU-12（C/W：F7 の HYD PRESS 灯・BACKUP C/W ALARM） */ }
        port b_FL_APU_35 : ~ApuHydDataPort { doc /* 枠の外の相手 EB-APU-13（DPS／GN&C：GPC の着陸時の指令（飛行後方 MDM FA1〜FA3 経由）） */ }
        port b_FL_APU_36 : ~ApuElectricPowerPort { doc /* 枠の外の相手 EB-APU-09（EPS 直流配電（APU 制御器と APU、パネル R2 の APU CNTLR PWR）） */ }
        port b_FL_APU_37 : ~ApuElectricPowerPort { doc /* 枠の外の相手 EB-APU-10（EPS 直流配電（循環ポンプ、主母線をパネル A12 で選択）） */ }
        flow <'FL-APU-01'> fl_apu_01 from ful.fuelTank.o_FL_APU_01.fluid to ful.fuelIsolationValves.i_FL_APU_01.fluid {
            item :>> payload : Hydrazine {
                attribute pressureNominal :> pressure = 365 ['lbf/in²'] { doc /* 圧力 365 psig（ゲージ圧） */ }
                attribute massFlowRateMin :> massFlowRate = 3 ['lb/min'] { doc /* 質量流量 3〜3.5 lb/min */ }
                attribute massFlowRateMax :> massFlowRate = 3.5 ['lb/min'] { doc /* 質量流量 3〜3.5 lb/min */ }
            }
        }
        flow <'FL-APU-02'> fl_apu_02 of Hydrazine from ful.fuelIsolationValves.o_FL_APU_02.fluid to ful.fuelPump.i_FL_APU_02.fluid;
        flow <'FL-APU-03'> fl_apu_03 from ful.fuelPump.o_FL_APU_03.fluid to ful.gasGeneratorValveModule.i_FL_APU_03.fluid {
            item :>> payload : Hydrazine {
                attribute pressureMin :> pressure = 1400 ['lbf/in²'] { doc /* 圧力 1,400〜1,500 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 1500 ['lbf/in²'] { doc /* 圧力 1,400〜1,500 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-APU-04'> fl_apu_04 of Hydrazine from ful.gasGeneratorValveModule.o_FL_APU_04.fluid to trb.gasGeneratorTurbine.i_FL_APU_04.fluid;
        flow <'FL-APU-05'> fl_apu_05 from trb.gasGeneratorTurbine.o_FL_APU_05.fluid to b_FL_APU_05.fluid {
            item :>> payload : ApuExhaustGas {
                attribute temperatureNominal :> temperature = 1000 ['°F_abs'] { doc /* 温度 1,000°F */ }
            }
        }
        flow <'FL-APU-06'> fl_apu_06 from trb.gasGeneratorTurbine.o_FL_APU_06.structuralLoad to trb.gearboxLubeOil.i_FL_APU_06.structuralLoad {
            item :>> payload : ApuShaftPower {
                attribute rotationalSpeed1Nominal :> rotationalSpeed = 74160 { doc /* 数値 74,160 rpm */ }
                attribute rotationalSpeed2Nominal :> rotationalSpeed = 81360 { doc /* 数値 81,360 rpm */ }
            }
        }
        flow <'FL-APU-07'> fl_apu_07 from trb.gearboxLubeOil.o_FL_APU_07.structuralLoad to hyd.mainHydraulicPump.i_FL_APU_07.structuralLoad {
            item :>> payload : ApuShaftPower {
                attribute rotationalSpeedNominal :> rotationalSpeed = 3918 { doc /* 数値 3,918 rpm */ }
            }
        }
        flow <'FL-APU-08'> fl_apu_08 from trb.gearboxLubeOil.o_FL_APU_08.structuralLoad to ful.fuelPump.i_FL_APU_08.structuralLoad {
            item :>> payload : ApuShaftPower {
                attribute rotationalSpeedNominal :> rotationalSpeed = 3918 { doc /* 数値 3,918 rpm */ }
            }
        }
        flow <'FL-APU-09'> fl_apu_09 from trb.gearboxLubeOil.o_FL_APU_09.fluid to wsb.waterSprayBoiler.i_FL_APU_09.fluid {
            item :>> payload : ApuLubeOil {
                attribute pressureNominal :> pressure = 45 ['lbf/in²'] { doc /* 圧力 45 psia（絶対圧） */ }
                attribute temperatureNominal :> temperature = 270 ['°F_abs'] { doc /* 温度 270°F */ }
            }
        }
        flow <'FL-APU-10'> fl_apu_10 from wsb.waterSprayBoiler.o_FL_APU_10.fluid to trb.gearboxLubeOil.i_FL_APU_10.fluid {
            item :>> payload : ApuLubeOil {
                attribute temperatureNominal :> temperature = 250 ['°F_abs'] { doc /* 温度 250°F */ }
            }
        }
        flow <'FL-APU-11'> fl_apu_11 from trb.injectorCoolingWaterTank.o_FL_APU_11.fluid to trb.gasGeneratorTurbine.i_FL_APU_11.fluid {
            item :>> payload : ApuWater {
                attribute pressureNominal :> pressure = 120 ['lbf/in²'] { doc /* 圧力 120 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-APU-12'> fl_apu_12 from wsb.wsbWaterSupply.o_FL_APU_12.fluid to wsb.waterSprayBoiler.i_FL_APU_12.fluid {
            item :>> payload : ApuWater {
                attribute pressureMin :> pressure = 24.5 ['lbf/in²'] { doc /* 圧力 24.5〜26 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 26 ['lbf/in²'] { doc /* 圧力 24.5〜26 psig（ゲージ圧） */ }
                attribute massFlowRate1Nominal :> massFlowRate = 10 ['lb/min'] { doc /* 質量流量 10 lb/min */ }
                attribute massFlowRate2Nominal :> massFlowRate = 5 ['lb/min'] { doc /* 質量流量 5 lb/min */ }
            }
        }
        flow <'FL-APU-13'> fl_apu_13 of ApuWater from wsb.waterSprayBoiler.o_FL_APU_13.fluid to b_FL_APU_13.fluid;
        flow <'FL-APU-14'> fl_apu_14 from hyd.mainHydraulicPump.o_FL_APU_14.hydraulicFluid to hyd.hydFilterModule.i_FL_APU_14.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute pressureMin :> pressure = 2900 ['lbf/in²'] { doc /* 圧力 2,900〜3,100 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 3100 ['lbf/in²'] { doc /* 圧力 2,900〜3,100 psig（ゲージ圧） */ }
                attribute volumeFlowRateMin :> volumeFlowRate = 0 ['gal/min'] { doc /* 体積流量 0〜63 gpm */ }
                attribute volumeFlowRateMax :> volumeFlowRate = 63 ['gal/min'] { doc /* 体積流量 0〜63 gpm */ }
            }
        }
        flow <'FL-APU-15'> fl_apu_15 from hyd.hydFilterModule.o_FL_APU_15.hydraulicFluid to hyd.reservoirAccumulator.i_FL_APU_15.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute pressureNominal :> pressure = 3000 ['lbf/in²'] { doc /* 圧力 3,000 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-APU-16'> fl_apu_16 from hyd.reservoirAccumulator.o_FL_APU_16.hydraulicFluid to hyd.mainHydraulicPump.i_FL_APU_16.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute pressure1Nominal :> pressure = 62 ['lbf/in²'] { doc /* 圧力 62 psia（絶対圧） */ }
                attribute pressure2Nominal :> pressure = 20 ['lbf/in²'] { doc /* 圧力 20 psia（絶対圧） */ }
            }
        }
        flow <'FL-APU-17'> fl_apu_17 from hyd.mainHydraulicPump.o_FL_APU_17.hydraulicFluid to wsb.waterSprayBoiler.i_FL_APU_17.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute temperatureMin :> temperature = 210 ['°F_abs'] { doc /* 温度 210〜220°F */ }
                attribute temperatureMax :> temperature = 220 ['°F_abs'] { doc /* 温度 210〜220°F */ }
                attribute volumeFlowRateNominal :> volumeFlowRate = 21 ['gal/min'] { doc /* 体積流量 21 gpm */ }
            }
        }
        flow <'FL-APU-18'> fl_apu_18 from cir.circulationPump.o_FL_APU_18.hydraulicFluid to hyd.reservoirAccumulator.i_FL_APU_18.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute pressure1Nominal :> pressure = 2500 ['lbf/in²'] { doc /* 圧力 2,500 psig（ゲージ圧） */ }
                attribute pressure2Nominal :> pressure = 2563 ['lbf/in²'] { doc /* 圧力 2,563 psia（絶対圧） */ }
            }
        }
        flow <'FL-APU-19'> fl_apu_19 from cir.circulationPump.o_FL_APU_19.hydraulicFluid to cir.freonHydHeatExchanger.i_FL_APU_19.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute pressureNominal :> pressure = 350 ['lbf/in²'] { doc /* 圧力 350 psig（ゲージ圧） */ }
                attribute temperatureMin :> temperature = 105 ['°F_abs'] { doc /* 温度 105〜115°F */ }
                attribute temperatureMax :> temperature = 115 ['°F_abs'] { doc /* 温度 105〜115°F */ }
            }
        }
        flow <'FL-APU-20'> fl_apu_20 of HydraulicThermalHeat from b_FL_APU_20.heat to cir.freonHydHeatExchanger.i_FL_APU_20.heat;
        flow <'FL-APU-21'> fl_apu_21 of OrbiterHydraulicFluid from hyd.hydFilterModule.o_FL_APU_21.hydraulicFluid to hyd.mpsTvcIsolationValves.i_FL_APU_21.hydraulicFluid;
        flow <'FL-APU-22'> fl_apu_22 of OrbiterHydraulicFluid from hyd.mpsTvcIsolationValves.o_FL_APU_22.hydraulicFluid to b_FL_APU_22.hydraulicFluid;
        flow <'FL-APU-23'> fl_apu_23 of OrbiterHydraulicFluid from hyd.mpsTvcIsolationValves.o_FL_APU_23.hydraulicFluid to b_FL_APU_23.hydraulicFluid;
        flow <'FL-APU-24'> fl_apu_24 from hyd.hydFilterModule.o_FL_APU_24.hydraulicFluid to b_FL_APU_24.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute pressureMin :> pressure = 1200 ['lbf/in²'] { doc /* 圧力 1,200〜1,500 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 1500 ['lbf/in²'] { doc /* 圧力 1,200〜1,500 psia（絶対圧） */ }
            }
        }
        flow <'FL-APU-25'> fl_apu_25 of OrbiterHydraulicFluid from hyd.hydFilterModule.o_FL_APU_25.hydraulicFluid to b_FL_APU_25.hydraulicFluid;
        flow <'FL-APU-26'> fl_apu_26 of OrbiterHydraulicFluid from hyd.hydFilterModule.o_FL_APU_26.hydraulicFluid to hyd.brakeIsolationValves.i_FL_APU_26.hydraulicFluid;
        flow <'FL-APU-27'> fl_apu_27 from hyd.brakeIsolationValves.o_FL_APU_27.hydraulicFluid to b_FL_APU_27.hydraulicFluid {
            item :>> payload : OrbiterHydraulicFluid {
                attribute pressureNominal :> pressure = 2000 ['lbf/in²'] { doc /* 圧力 2,000 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-APU-28'> fl_apu_28 of OrbiterHydraulicFluid from hyd.hydFilterModule.o_FL_APU_28.hydraulicFluid to hyd.landingGearExtendValves.i_FL_APU_28.hydraulicFluid;
        flow <'FL-APU-29'> fl_apu_29 of OrbiterHydraulicFluid from hyd.landingGearExtendValves.o_FL_APU_29.hydraulicFluid to b_FL_APU_29.hydraulicFluid;
        flow <'FL-APU-30'> fl_apu_30 of OrbiterHydraulicFluid from hyd.landingGearExtendValves.o_FL_APU_30.hydraulicFluid to b_FL_APU_30.hydraulicFluid;
        flow <'FL-APU-31'> fl_apu_31 of ApuHydData from ctl.apuController.o_FL_APU_31.dataCommand to ful.gasGeneratorValveModule.i_FL_APU_31.dataCommand;
        flow <'FL-APU-32'> fl_apu_32 of ApuHydData from ctl.apuController.o_FL_APU_32.dataCommand to b_FL_APU_32.dataCommand;
        flow <'FL-APU-33'> fl_apu_33 of ApuHydData from b_FL_APU_33.dataCommand to cir.circulationPump.i_FL_APU_33.dataCommand;
        flow <'FL-APU-34'> fl_apu_34 of ApuHydData from hyd.hydFilterModule.o_FL_APU_34.dataCommand to b_FL_APU_34.dataCommand;
        flow <'FL-APU-35'> fl_apu_35 of ApuHydData from b_FL_APU_35.dataCommand to hyd.brakeIsolationValves.i_FL_APU_35.dataCommand;
        flow <'FL-APU-36'> fl_apu_36 from b_FL_APU_36.electricPower to ctl.apuController.i_FL_APU_36.electricPower {
            item :>> payload : ApuElectricPower {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-APU-37'> fl_apu_37 from b_FL_APU_37.electricPower to cir.circulationPump.i_FL_APU_37.electricPower {
            item :>> payload : ApuElectricPower {
                attribute powerNominal :> power = 2.4 [kW] { doc /* 電力・熱流量 2.4 kW */ }
            }
        }
    }
    // ---- 図130 OMS・RCS 推進薬 内部ブロック図：機器
    part def <'EQ-PROP-01'> LeftOmsHeliumPress :> SSD_ALC_SYS_001::Physical::PHY_OMS_03 {
        doc /* 左 OMS ヘリウム加圧系（He タンク1・He 圧力隔離弁 A/B・二重調圧器組立2・蒸気隔離弁・直並列逆止弁・リリーフ弁）（機能ブロック SSD-FD-OMS-HE-001、機器 PHY-OMS-03） */
        port o_FL_PROP_01 : PressurantHeliumPort;
    }
    part def <'EQ-PROP-02'> RightOmsHeliumPress :> SSD_ALC_SYS_001::Physical::PHY_OMS_03 {
        doc /* 右 OMS ヘリウム加圧系（構成は左と同じ）（機能ブロック SSD-FD-OMS-HE-001、機器 PHY-OMS-03） */
        port o_FL_PROP_02 : PressurantHeliumPort;
    }
    part def <'EQ-PROP-03'> LeftOmsPropTanks :> SSD_ALC_SYS_001::Physical::PHY_OMS_02 {
        doc /* 左 OMS 推進薬タンク（燃料 MMH 1・酸化剤 N2O4 1）とタンク隔離弁 A/B（機能ブロック SSD-FD-OMS-PSD-001、機器 PHY-OMS-02） */
        port i_FL_PROP_01 : ~PressurantHeliumPort;
        port o_FL_PROP_03 : HypergolicPropellantPort;
        port o_FL_PROP_05 : HypergolicPropellantPort;
        port i_FL_PROP_29 : ~PropulsionElectricPowerPort;
    }
    part def <'EQ-PROP-04'> RightOmsPropTanks :> SSD_ALC_SYS_001::Physical::PHY_OMS_02 {
        doc /* 右 OMS 推進薬タンク（燃料 MMH 1・酸化剤 N2O4 1）とタンク隔離弁 A/B（機能ブロック SSD-FD-OMS-PSD-001、機器 PHY-OMS-02） */
        port i_FL_PROP_02 : ~PressurantHeliumPort;
        port o_FL_PROP_04 : HypergolicPropellantPort;
        port o_FL_PROP_06 : HypergolicPropellantPort;
    }
    part def <'EQ-PROP-05'> LeftOmsCrossfeedValves :> SSD_ALC_SYS_001::Physical::PHY_OMS_05 {
        doc /* 左 OMS クロスフィード弁 A/B（燃料・酸化剤の並列の対）（機能ブロック SSD-FD-OMS-XFD-001、機器 PHY-OMS-05） */
        port i_FL_PROP_05 : ~HypergolicPropellantPort;
        port o_FL_PROP_07 : HypergolicPropellantPort;
        port o_FL_PROP_10 : HypergolicPropellantPort;
    }
    part def <'EQ-PROP-06'> RightOmsCrossfeedValves :> SSD_ALC_SYS_001::Physical::PHY_OMS_05 {
        doc /* 右 OMS クロスフィード弁 A/B（燃料・酸化剤の並列の対）（機能ブロック SSD-FD-OMS-XFD-001、機器 PHY-OMS-05） */
        port i_FL_PROP_06 : ~HypergolicPropellantPort;
        port i_FL_PROP_08 : ~HypergolicPropellantPort;
        port o_FL_PROP_09 : HypergolicPropellantPort;
    }
    part def <'EQ-PROP-07'> OmsCrossfeedLines :> SSD_ALC_SYS_001::Physical::PHY_OMS_05 {
        doc /* OMS クロスフィード配管（左右ポッド間、燃料・酸化剤）（機能ブロック SSD-FD-OMS-XFD-001、機器 PHY-OMS-05） */
        port i_FL_PROP_07 : ~HypergolicPropellantPort;
        port o_FL_PROP_08 : HypergolicPropellantPort;
        port o_FL_PROP_11 : HypergolicPropellantPort;
        port i_FL_PROP_12 : ~HypergolicPropellantPort;
        port i_FL_PROP_32 : ~PropellantHeaterHeatPort;
    }
    part def <'EQ-PROP-08'> LeftOmsEngine :> SSD_ALC_SYS_001::Physical::PHY_OMS_01 {
        doc /* 左 OMS エンジン（二元推進薬弁組立・GN2 系・噴射板・燃焼室・ノズル）（機能ブロック SSD-FD-OMS-ENG-001、機器 PHY-OMS-01） */
        port i_FL_PROP_03 : ~HypergolicPropellantPort;
        port i_FL_PROP_10 : ~HypergolicPropellantPort;
        port o_FL_PROP_20 : PropulsiveThrustPort;
        port i_FL_PROP_27 : ~PropulsionCommandDataPort;
        port o_FL_PROP_28 : PropulsionCommandDataPort;
    }
    part def <'EQ-PROP-09'> RightOmsEngine :> SSD_ALC_SYS_001::Physical::PHY_OMS_01 {
        doc /* 右 OMS エンジン（構成は左と同じ）（機能ブロック SSD-FD-OMS-ENG-001、機器 PHY-OMS-01） */
        port i_FL_PROP_04 : ~HypergolicPropellantPort;
        port i_FL_PROP_09 : ~HypergolicPropellantPort;
        port o_FL_PROP_21 : PropulsiveThrustPort;
    }
    part def <'EQ-PROP-10'> AftRcsHeliumPress :> SSD_ALC_SYS_001::Physical::PHY_RCS_04 {
        doc /* 後部 RCS ヘリウム加圧系（He タンク2・He 隔離弁4・調圧器組立2・逆止弁2・リリーフ弁2）（機能ブロック SSD-FD-RCS-HEP-001、機器 PHY-RCS-04） */
        port o_FL_PROP_13 : PressurantHeliumPort;
    }
    part def <'EQ-PROP-11'> AftRcsPropTanks :> SSD_ALC_SYS_001::Physical::PHY_RCS_04 {
        doc /* 後部 RCS 推進薬タンク（燃料1・酸化剤1）とタンク隔離弁（1/2 用1対、3/4/5 用 A・B の2対）（機能ブロック SSD-FD-RCS-PRP-001、機器 PHY-RCS-04） */
        port i_FL_PROP_13 : ~PressurantHeliumPort;
        port o_FL_PROP_14 : HypergolicPropellantPort;
        port o_FL_PROP_15 : HypergolicPropellantPort;
        port i_FL_PROP_30 : ~PropulsionElectricPowerPort;
        port i_FL_PROP_33 : ~PropellantHeaterHeatPort;
    }
    part def <'EQ-PROP-12'> AftRcsCrossfeedValves :> SSD_ALC_SYS_001::Physical::PHY_RCS_06 {
        doc /* 後部 RCS クロスフィード弁（1/2 用・3/4/5 用、燃料・酸化剤の対）（機能ブロック SSD-FD-RCS-PRP-001、機器 PHY-RCS-06） */
        port i_FL_PROP_11 : ~HypergolicPropellantPort;
        port o_FL_PROP_12 : HypergolicPropellantPort;
        port i_FL_PROP_15 : ~HypergolicPropellantPort;
        port o_FL_PROP_16 : HypergolicPropellantPort;
    }
    part def <'EQ-PROP-13'> AftRcsManifoldValves :> SSD_ALC_SYS_001::Physical::PHY_RCS_06 {
        doc /* 後部 RCS マニホールド隔離弁（マニホールド1〜5、燃料・酸化剤の対）（機能ブロック SSD-FD-RCS-PRP-001、機器 PHY-RCS-06） */
        port i_FL_PROP_14 : ~HypergolicPropellantPort;
        port i_FL_PROP_16 : ~HypergolicPropellantPort;
        port o_FL_PROP_17 : HypergolicPropellantPort;
    }
    part def <'EQ-PROP-14'> AftRcsJets :> SSD_ALC_SYS_001::Physical::PHY_RCS_02 {
        doc /* 後部 RCS 噴射器（主12・バーニア2／ポッド）（機能ブロック SSD-FD-RCS-JET-001、機器 PHY-RCS-02） */
        port i_FL_PROP_17 : ~HypergolicPropellantPort;
        port o_FL_PROP_22 : PropulsiveThrustPort;
        port i_FL_PROP_26 : ~PropulsionCommandDataPort;
        port i_FL_PROP_34 : ~PropellantHeaterHeatPort;
    }
    part def <'EQ-PROP-15'> FwdRcsHeliumPress :> SSD_ALC_SYS_001::Physical::PHY_RCS_03 {
        doc /* 前部 RCS ヘリウム加圧系（He タンク2・He 隔離弁4・調圧器組立2・逆止弁2・リリーフ弁2）（機能ブロック SSD-FD-RCS-HEP-001、機器 PHY-RCS-03） */
        port o_FL_PROP_18 : PressurantHeliumPort;
    }
    part def <'EQ-PROP-16'> FwdRcsPropTanks :> SSD_ALC_SYS_001::Physical::PHY_RCS_03 {
        doc /* 前部 RCS 推進薬タンク（燃料1・酸化剤1）・タンク隔離弁（1/2 用・3/4/5 用）・マニホールド隔離弁1〜5（機能ブロック SSD-FD-RCS-PRP-001、機器 PHY-RCS-03） */
        port i_FL_PROP_18 : ~PressurantHeliumPort;
        port o_FL_PROP_19 : HypergolicPropellantPort;
    }
    part def <'EQ-PROP-17'> FwdRcsJets :> SSD_ALC_SYS_001::Physical::PHY_RCS_01 {
        doc /* 前部 RCS 噴射器（主14・バーニア2）（機能ブロック SSD-FD-RCS-JET-001、機器 PHY-RCS-01） */
        port i_FL_PROP_19 : ~HypergolicPropellantPort;
        port i_FL_PROP_25 : ~PropulsionCommandDataPort;
    }
    part def <'EQ-PROP-18'> Rjdf :> SSD_ALC_SYS_001::Physical::PHY_RCS_05 {
        doc /* RJDF（前部反動噴射器ドライバ）1・2（機能ブロック SSD-FD-RCS-RJD-001、機器 PHY-RCS-05） */
        port i_FL_PROP_23 : ~PropulsionCommandDataPort;
        port o_FL_PROP_25 : PropulsionCommandDataPort;
    }
    part def <'EQ-PROP-19'> Rjda :> SSD_ALC_SYS_001::Physical::PHY_RCS_07 {
        doc /* RJDA（後部反動噴射器ドライバ）1・2（機能ブロック SSD-FD-RCS-RJD-001、機器 PHY-RCS-07） */
        port i_FL_PROP_24 : ~PropulsionCommandDataPort;
        port o_FL_PROP_26 : PropulsionCommandDataPort;
        port i_FL_PROP_31 : ~PropulsionElectricPowerPort;
    }
    part def <'EQ-PROP-20'> RcsHeaters :> SSD_ALC_SYS_001::Physical::PHY_RCS_08 {
        doc /* RCS ヒータ（前部モジュールのパネルヒータ6・ポッドの9ヒータ区域の A・B 系・各噴射器のヒータ）（機能ブロック SSD-FD-RCS-HTR-001、機器 PHY-RCS-08） */
        port o_FL_PROP_33 : PropellantHeaterHeatPort;
        port o_FL_PROP_34 : PropellantHeaterHeatPort;
    }
    // ---- 図130 OMS・RCS 推進薬 内部ブロック図：接続（PropulsionInterconnection は ORB を特化）
    part def PropulsionInterconnection :> ORB {
        doc /* OMS・RCS（ヘリウム加圧・推進薬・クロスフィード）の内部ブロック図（図130）。基の機能ブロック SSD-FD-ORB-001。 */
        part redefines oms {
            part redefines he {
                part leftOmsHeliumPress : LeftOmsHeliumPress;
                part rightOmsHeliumPress : RightOmsHeliumPress;
            }
            part redefines psd {
                part leftOmsPropTanks : LeftOmsPropTanks;
                part rightOmsPropTanks : RightOmsPropTanks;
            }
            part redefines xfd {
                part leftOmsCrossfeedValves : LeftOmsCrossfeedValves;
                part rightOmsCrossfeedValves : RightOmsCrossfeedValves;
                part omsCrossfeedLines : OmsCrossfeedLines;
            }
            part redefines eng {
                part leftOmsEngine : LeftOmsEngine;
                part rightOmsEngine : RightOmsEngine;
            }
        }
        part redefines rcs {
            part redefines hep {
                part aftRcsHeliumPress[2] : AftRcsHeliumPress;
                part fwdRcsHeliumPress : FwdRcsHeliumPress;
            }
            part redefines prp {
                part aftRcsPropTanks[2] : AftRcsPropTanks;
                part aftRcsCrossfeedValves[2] : AftRcsCrossfeedValves;
                part aftRcsManifoldValves[2] : AftRcsManifoldValves;
                part fwdRcsPropTanks : FwdRcsPropTanks;
            }
            part redefines jet {
                part aftRcsJets[2] : AftRcsJets;
                part fwdRcsJets : FwdRcsJets;
            }
            part redefines rjd {
                part rjdf[2] : Rjdf;
                part rjda[2] : Rjda;
            }
            part redefines htr {
                part rcsHeaters : RcsHeaters;
            }
        }
        port b_FL_PROP_20 : PropulsiveThrustPort { doc /* 枠の外の相手 EB-PROP-01（OMS 推力方向制御（ジンバルリング・アクチュエータ、ポッド構造へ推力を伝える）） */ }
        port b_FL_PROP_21 : PropulsiveThrustPort { doc /* 枠の外の相手 EB-PROP-01（OMS 推力方向制御（ジンバルリング・アクチュエータ、ポッド構造へ推力を伝える）） */ }
        port b_FL_PROP_22 : PropulsiveThrustPort { doc /* 枠の外の相手 EB-PROP-02（オービタ構造（STR、前部 RCS モジュール・OMS/RCS ポッドの取付け構造）） */ }
        port b_FL_PROP_23 : ~PropulsionCommandDataPort { doc /* 枠の外の相手 EB-PROP-03（GN&C（GPC の OMS 噴射シーケンス・RCS DAP の噴射指令）） */ }
        port b_FL_PROP_24 : ~PropulsionCommandDataPort { doc /* 枠の外の相手 EB-PROP-03（GN&C（GPC の OMS 噴射シーケンス・RCS DAP の噴射指令）） */ }
        port b_FL_PROP_27 : ~PropulsionCommandDataPort { doc /* 枠の外の相手 EB-PROP-03（GN&C（GPC の OMS 噴射シーケンス・RCS DAP の噴射指令）） */ }
        port b_FL_PROP_28 : PropulsionCommandDataPort { doc /* 枠の外の相手 EB-PROP-04（データ処理系（MDM 経由の計測データ、GNC SYS SUMM 2・SPEC 23）） */ }
        port b_FL_PROP_29 : ~PropulsionElectricPowerPort { doc /* 枠の外の相手 EB-PROP-05（電力系（交流母線・電動機制御組立、交流モータ式弁へ）） */ }
        port b_FL_PROP_30 : ~PropulsionElectricPowerPort { doc /* 枠の外の相手 EB-PROP-05（電力系（交流母線・電動機制御組立、交流モータ式弁へ）） */ }
        port b_FL_PROP_31 : ~PropulsionElectricPowerPort { doc /* 枠の外の相手 EB-PROP-06（電力系（直流母線、RJD の LOGIC・DRIVER 電源へ）） */ }
        port b_FL_PROP_32 : ~PropellantHeaterHeatPort { doc /* 枠の外の相手 EB-PROP-07（熱制御（PTC）：ポッドのストリップヒータ・クロスフィード配管の巻付けヒータと断熱材） */ }
        flow <'FL-PROP-01'> fl_prop_01 from oms.he.leftOmsHeliumPress.o_FL_PROP_01.fluid to oms.psd.leftOmsPropTanks.i_FL_PROP_01.fluid {
            item :>> payload : PressurantHelium {
                attribute pressureMin :> pressure = 252 ['lbf/in²'] { doc /* 圧力 252〜262 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 262 ['lbf/in²'] { doc /* 圧力 252〜262 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-PROP-02'> fl_prop_02 from oms.he.rightOmsHeliumPress.o_FL_PROP_02.fluid to oms.psd.rightOmsPropTanks.i_FL_PROP_02.fluid {
            item :>> payload : PressurantHelium {
                attribute pressureMin :> pressure = 252 ['lbf/in²'] { doc /* 圧力 252〜262 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 262 ['lbf/in²'] { doc /* 圧力 252〜262 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-PROP-03'> fl_prop_03 from oms.psd.leftOmsPropTanks.o_FL_PROP_03.fluid to oms.eng.leftOmsEngine.i_FL_PROP_03.fluid {
            item :>> payload : HypergolicPropellant {
                attribute pressureMin :> pressure = 232 ['lbf/in²'] { doc /* 圧力 232〜284 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 284 ['lbf/in²'] { doc /* 圧力 232〜284 psia（絶対圧） */ }
            }
        }
        flow <'FL-PROP-04'> fl_prop_04 from oms.psd.rightOmsPropTanks.o_FL_PROP_04.fluid to oms.eng.rightOmsEngine.i_FL_PROP_04.fluid {
            item :>> payload : HypergolicPropellant {
                attribute pressureMin :> pressure = 232 ['lbf/in²'] { doc /* 圧力 232〜284 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 284 ['lbf/in²'] { doc /* 圧力 232〜284 psia（絶対圧） */ }
            }
        }
        flow <'FL-PROP-05'> fl_prop_05 of HypergolicPropellant from oms.psd.leftOmsPropTanks.o_FL_PROP_05.fluid to oms.xfd.leftOmsCrossfeedValves.i_FL_PROP_05.fluid;
        flow <'FL-PROP-06'> fl_prop_06 of HypergolicPropellant from oms.psd.rightOmsPropTanks.o_FL_PROP_06.fluid to oms.xfd.rightOmsCrossfeedValves.i_FL_PROP_06.fluid;
        flow <'FL-PROP-07'> fl_prop_07 of HypergolicPropellant from oms.xfd.leftOmsCrossfeedValves.o_FL_PROP_07.fluid to oms.xfd.omsCrossfeedLines.i_FL_PROP_07.fluid;
        flow <'FL-PROP-08'> fl_prop_08 of HypergolicPropellant from oms.xfd.omsCrossfeedLines.o_FL_PROP_08.fluid to oms.xfd.rightOmsCrossfeedValves.i_FL_PROP_08.fluid;
        flow <'FL-PROP-09'> fl_prop_09 of HypergolicPropellant from oms.xfd.rightOmsCrossfeedValves.o_FL_PROP_09.fluid to oms.eng.rightOmsEngine.i_FL_PROP_09.fluid;
        flow <'FL-PROP-10'> fl_prop_10 of HypergolicPropellant from oms.xfd.leftOmsCrossfeedValves.o_FL_PROP_10.fluid to oms.eng.leftOmsEngine.i_FL_PROP_10.fluid;
        flow <'FL-PROP-11'> fl_prop_11 from oms.xfd.omsCrossfeedLines.o_FL_PROP_11.fluid to rcs.prp.aftRcsCrossfeedValves.i_FL_PROP_11.fluid {
            item :>> payload : HypergolicPropellant {
                attribute massMin :> mass = 1000 [lb] { doc /* 質量 最小 1,000 lb */ }
                attribute differentialPressureMin :> differentialPressure = 0 ['lbf/in²'] { doc /* 圧力 0〜50 psid（差圧） */ }
                attribute differentialPressureMax :> differentialPressure = 50 ['lbf/in²'] { doc /* 圧力 0〜50 psid（差圧） */ }
            }
        }
        flow <'FL-PROP-12'> fl_prop_12 from rcs.prp.aftRcsCrossfeedValves.o_FL_PROP_12.fluid to oms.xfd.omsCrossfeedLines.i_FL_PROP_12.fluid {
            item :>> payload : HypergolicPropellant {
                attribute differentialPressureMax :> differentialPressure = 55 ['lbf/in²'] { doc /* 圧力 最大 55 psid（差圧） */ }
            }
        }
        flow <'FL-PROP-13'> fl_prop_13 from rcs.hep.aftRcsHeliumPress.o_FL_PROP_13.fluid to rcs.prp.aftRcsPropTanks.i_FL_PROP_13.fluid {
            item :>> payload : PressurantHelium {
                attribute pressureMin :> pressure = 242 ['lbf/in²'] { doc /* 圧力 242〜248 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 248 ['lbf/in²'] { doc /* 圧力 242〜248 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-PROP-14'> fl_prop_14 from rcs.prp.aftRcsPropTanks.o_FL_PROP_14.fluid to rcs.prp.aftRcsManifoldValves.i_FL_PROP_14.fluid {
            item :>> payload : HypergolicPropellant {
                attribute pressureMin :> pressure = 200 ['lbf/in²'] { doc /* 圧力 200〜312 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 312 ['lbf/in²'] { doc /* 圧力 200〜312 psia（絶対圧） */ }
            }
        }
        flow <'FL-PROP-15'> fl_prop_15 of HypergolicPropellant from rcs.prp.aftRcsPropTanks.o_FL_PROP_15.fluid to rcs.prp.aftRcsCrossfeedValves.i_FL_PROP_15.fluid;
        flow <'FL-PROP-16'> fl_prop_16 of HypergolicPropellant from rcs.prp.aftRcsCrossfeedValves.o_FL_PROP_16.fluid to rcs.prp.aftRcsManifoldValves.i_FL_PROP_16.fluid;
        flow <'FL-PROP-17'> fl_prop_17 of HypergolicPropellant from rcs.prp.aftRcsManifoldValves.o_FL_PROP_17.fluid to rcs.jet.aftRcsJets.i_FL_PROP_17.fluid;
        flow <'FL-PROP-18'> fl_prop_18 from rcs.hep.fwdRcsHeliumPress.o_FL_PROP_18.fluid to rcs.prp.fwdRcsPropTanks.i_FL_PROP_18.fluid {
            item :>> payload : PressurantHelium {
                attribute pressureMin :> pressure = 242 ['lbf/in²'] { doc /* 圧力 242〜248 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 248 ['lbf/in²'] { doc /* 圧力 242〜248 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-PROP-19'> fl_prop_19 from rcs.prp.fwdRcsPropTanks.o_FL_PROP_19.fluid to rcs.jet.fwdRcsJets.i_FL_PROP_19.fluid {
            item :>> payload : HypergolicPropellant {
                attribute pressureMin :> pressure = 200 ['lbf/in²'] { doc /* 圧力 200〜312 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 312 ['lbf/in²'] { doc /* 圧力 200〜312 psia（絶対圧） */ }
            }
        }
        flow <'FL-PROP-20'> fl_prop_20 from oms.eng.leftOmsEngine.o_FL_PROP_20.structuralLoad to b_FL_PROP_20.structuralLoad {
            item :>> payload : PropulsiveThrust {
                attribute forceNominal :> force = 6087 [lbf] { doc /* 力 6,087 lbf */ }
            }
        }
        flow <'FL-PROP-21'> fl_prop_21 from oms.eng.rightOmsEngine.o_FL_PROP_21.structuralLoad to b_FL_PROP_21.structuralLoad {
            item :>> payload : PropulsiveThrust {
                attribute forceNominal :> force = 6087 [lbf] { doc /* 力 6,087 lbf */ }
            }
        }
        flow <'FL-PROP-22'> fl_prop_22 from rcs.jet.aftRcsJets.o_FL_PROP_22.structuralLoad to b_FL_PROP_22.structuralLoad {
            item :>> payload : PropulsiveThrust {
                attribute force1Nominal :> force = 870 [lbf] { doc /* 力 870 lbf */ }
                attribute force2Nominal :> force = 24 [lbf] { doc /* 力 24 lbf */ }
            }
        }
        flow <'FL-PROP-23'> fl_prop_23 of PropulsionCommandData from b_FL_PROP_23.dataCommand to rcs.rjd.rjdf.i_FL_PROP_23.dataCommand;
        flow <'FL-PROP-24'> fl_prop_24 of PropulsionCommandData from b_FL_PROP_24.dataCommand to rcs.rjd.rjda.i_FL_PROP_24.dataCommand;
        flow <'FL-PROP-25'> fl_prop_25 of PropulsionCommandData from rcs.rjd.rjdf.o_FL_PROP_25.dataCommand to rcs.jet.fwdRcsJets.i_FL_PROP_25.dataCommand;
        flow <'FL-PROP-26'> fl_prop_26 of PropulsionCommandData from rcs.rjd.rjda.o_FL_PROP_26.dataCommand to rcs.jet.aftRcsJets.i_FL_PROP_26.dataCommand;
        flow <'FL-PROP-27'> fl_prop_27 of PropulsionCommandData from b_FL_PROP_27.dataCommand to oms.eng.leftOmsEngine.i_FL_PROP_27.dataCommand;
        flow <'FL-PROP-28'> fl_prop_28 of PropulsionCommandData from oms.eng.leftOmsEngine.o_FL_PROP_28.dataCommand to b_FL_PROP_28.dataCommand;
        flow <'FL-PROP-29'> fl_prop_29 of PropulsionElectricPower from b_FL_PROP_29.electricPower to oms.psd.leftOmsPropTanks.i_FL_PROP_29.electricPower;
        flow <'FL-PROP-30'> fl_prop_30 of PropulsionElectricPower from b_FL_PROP_30.electricPower to rcs.prp.aftRcsPropTanks.i_FL_PROP_30.electricPower;
        flow <'FL-PROP-31'> fl_prop_31 of PropulsionElectricPower from b_FL_PROP_31.electricPower to rcs.rjd.rjda.i_FL_PROP_31.electricPower;
        flow <'FL-PROP-32'> fl_prop_32 from b_FL_PROP_32.heat to oms.xfd.omsCrossfeedLines.i_FL_PROP_32.heat {
            item :>> payload : PropellantHeaterHeat {
                attribute temperatureMin :> temperature = 55 ['°F_abs'] { doc /* 温度 55〜75°F */ }
                attribute temperatureMax :> temperature = 75 ['°F_abs'] { doc /* 温度 55〜75°F */ }
            }
        }
        flow <'FL-PROP-33'> fl_prop_33 from rcs.htr.rcsHeaters.o_FL_PROP_33.heat to rcs.prp.aftRcsPropTanks.i_FL_PROP_33.heat {
            item :>> payload : PropellantHeaterHeat {
                attribute temperatureMin :> temperature = 55 ['°F_abs'] { doc /* 温度 55〜75°F */ }
                attribute temperatureMax :> temperature = 75 ['°F_abs'] { doc /* 温度 55〜75°F */ }
            }
        }
        flow <'FL-PROP-34'> fl_prop_34 from rcs.htr.rcsHeaters.o_FL_PROP_34.heat to rcs.jet.aftRcsJets.i_FL_PROP_34.heat {
            item :>> payload : PropellantHeaterHeat {
                attribute power1Nominal :> power = 20 [W] { doc /* 電力・熱流量 20 W */ }
                attribute power2Nominal :> power = 10 [W] { doc /* 電力・熱流量 10 W */ }
            }
        }
    }
    // ---- 図131 C&T RF リンク 内部ブロック図：機器
    part def <'EQ-CT-01'> SBandPmTransponder :> SSD_ALC_SYS_001::Physical::PHY_CT_01 {
        doc /* S 帯 PM トランスポンダ1・2（XPNDR）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-01） */
        port i_FL_CT_07 : ~SBandPmRfPort;
        port o_FL_CT_08 : SBandPmRfPort;
        port o_FL_CT_09 : ForwardLinkDataPort;
        port i_FL_CT_10 : ~ReturnLinkDataPort;
        port i_FL_CT_41 : ~CommConfigCommandPort;
    }
    part def <'EQ-CT-02'> SBandPreamplifier :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* S 帯プリアンプ（2重、周波数ダイプレクサを含む）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-07） */
        port i_FL_CT_06 : ~SBandPmRfPort;
        port o_FL_CT_07 : SBandPmRfPort;
    }
    part def <'EQ-CT-03'> SBandPowerAmplifier :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* S 帯電力増幅器1・2（進行波管）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-07） */
        port i_FL_CT_08 : ~SBandPmRfPort;
    }
    part def <'EQ-CT-04'> SBandAntennaSwitch :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* S 帯アンテナ切替組立（アンテナ切替電子装置1・2、RF 切替）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-07） */
        port i_FL_CT_05 : ~SBandPmRfPort;
        port o_FL_CT_06 : SBandPmRfPort;
        port i_FL_CT_43 : ~CommConfigCommandPort;
    }
    part def <'EQ-CT-05'> SBandQuadAntenna :> SSD_ALC_SYS_001::Physical::PHY_CT_02 {
        doc /* S 帯 PM クワッドアンテナ（4台、8ビーム）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-02） */
        port i_FL_CT_01 : ~SBandPmRfPort;
        port o_FL_CT_02 : SBandPmRfPort;
        port i_FL_CT_03 : ~SBandPmRfPort;
        port i_FL_CT_04 : ~SBandPmRfPort;
        port o_FL_CT_05 : SBandPmRfPort;
    }
    part def <'EQ-CT-06'> NetworkSignalProcessor :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* ネットワーク信号処理器 NSP 1・2（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-07） */
        port i_FL_CT_09 : ~ForwardLinkDataPort;
        port o_FL_CT_10 : ReturnLinkDataPort;
        port o_FL_CT_11 : ForwardLinkDataPort;
        port i_FL_CT_12 : ~ReturnLinkDataPort;
        port i_FL_CT_13 : ~AnalogVoicePort;
        port o_FL_CT_14 : ForwardLinkDataPort;
        port o_FL_CT_16 : ReturnLinkDataPort;
        port o_FL_CT_23 : ReturnLinkDataPort;
        port i_FL_CT_24 : ~ForwardLinkDataPort;
    }
    part def <'EQ-CT-07'> Comsec :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* 通信保全装置（COMSEC）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-07） */
        port i_FL_CT_11 : ~ForwardLinkDataPort;
    }
    part def <'EQ-CT-08'> SBandFmSignalProcessor :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* S 帯 FM 信号処理器1・2（FMSP）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-07） */
        port i_FL_CT_17 : ~ReturnLinkDataPort;
        port i_FL_CT_18 : ~ReturnLinkDataPort;
        port i_FL_CT_19 : ~ReturnLinkDataPort;
        port o_FL_CT_20 : ReturnLinkDataPort;
    }
    part def <'EQ-CT-09'> SBandFmTransmitter :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* S 帯 FM 送信機1・2（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-07） */
        port i_FL_CT_20 : ~ReturnLinkDataPort;
        port o_FL_CT_21 : SBandFmRfPort;
    }
    part def <'EQ-CT-10'> SBandHemiAntenna :> SSD_ALC_SYS_001::Physical::PHY_CT_08 {
        doc /* S 帯 FM 半球アンテナ（上・下）（機能ブロック SSD-FD-CT-SBD-001、機器 PHY-CT-08） */
        port i_FL_CT_21 : ~SBandFmRfPort;
        port o_FL_CT_22 : SBandFmRfPort;
    }
    part def <'EQ-CT-11'> KuBandSignalProcessor :> SSD_ALC_SYS_001::Physical::PHY_CT_09 {
        doc /* Ku 帯信号処理器（KuSP）（機能ブロック SSD-FD-CT-KU-001、機器 PHY-CT-09） */
        port i_FL_CT_23 : ~ReturnLinkDataPort;
        port o_FL_CT_24 : ForwardLinkDataPort;
        port i_FL_CT_25 : ~ReturnLinkDataPort;
        port i_FL_CT_26 : ~ReturnLinkDataPort;
        port o_FL_CT_27 : ReturnLinkDataPort;
        port i_FL_CT_31 : ~ForwardLinkDataPort;
        port i_FL_CT_42 : ~CommConfigCommandPort;
    }
    part def <'EQ-CT-12'> KuBandElectronicsAssy :> SSD_ALC_SYS_001::Physical::PHY_CT_04 {
        doc /* Ku 帯電子組立 EA1（通信）・EA2（レーダ信号処理器）（機能ブロック SSD-FD-CT-KU-001、機器 PHY-CT-04） */
        port i_FL_CT_30 : ~KuBandRfPort;
        port o_FL_CT_31 : ForwardLinkDataPort;
        port o_FL_CT_32 : RadarTrackDataPort;
    }
    part def <'EQ-CT-13'> KuBandDeployedAssy :> SSD_ALC_SYS_001::Physical::PHY_CT_03 {
        doc /* Ku 帯展開組立（DA：高利得アンテナ・ジンバル・ジャイロ・展開電子組立 DEA（送信機を含む））（機能ブロック SSD-FD-CT-KU-001、機器 PHY-CT-03） */
        port i_FL_CT_27 : ~ReturnLinkDataPort;
        port o_FL_CT_28 : KuBandRfPort;
        port i_FL_CT_29 : ~KuBandRfPort;
        port o_FL_CT_30 : KuBandRfPort;
    }
    part def <'EQ-CT-14'> UhfAtcTransceiver :> SSD_ALC_SYS_001::Physical::PHY_CT_05 {
        doc /* UHF SPLX/ガード（ATC）送受信機（機能ブロック SSD-FD-CT-UHF-001、機器 PHY-CT-05） */
        port i_FL_CT_33 : ~AnalogVoicePort;
        port o_FL_CT_34 : UhfRfPort;
    }
    part def <'EQ-CT-15'> UhfLowerAntenna :> SSD_ALC_SYS_001::Physical::PHY_CT_08 {
        doc /* UHF 外部アンテナ（前部胴体下面）（機能ブロック SSD-FD-CT-UHF-001、機器 PHY-CT-08） */
        port i_FL_CT_34 : ~UhfRfPort;
        port o_FL_CT_35 : UhfRfPort;
        port o_FL_CT_36 : UhfRfPort;
    }
    part def <'EQ-CT-16'> Ssor :> SSD_ALC_SYS_001::Physical::PHY_CT_11 {
        doc /* 宇宙対宇宙オービタ無線（SSOR、主・予備の2組）（機能ブロック SSD-FD-CT-UHF-001、機器 PHY-CT-11） */
        port i_FL_CT_37 : ~AnalogVoicePort;
        port o_FL_CT_38 : UhfRfPort;
    }
    part def <'EQ-CT-17'> SsorAntenna :> SSD_ALC_SYS_001::Physical::PHY_CT_11 {
        doc /* SSOR アンテナ（エアロック・トラス右舷の UHF PLB アンテナ、エアロック内アンテナ）（機能ブロック SSD-FD-CT-UHF-001、機器 PHY-CT-11） */
        port i_FL_CT_38 : ~UhfRfPort;
        port o_FL_CT_39 : UhfRfPort;
    }
    part def <'EQ-CT-18'> Pcmmu :> SSD_ALC_SYS_001::Physical::PHY_CT_10 {
        doc /* PCM マスタユニット PCMMU 1・2（機能ブロック SSD-FD-CT-INST-001、機器 PHY-CT-10） */
        port o_FL_CT_12 : ReturnLinkDataPort;
        port i_FL_CT_15 : ~ReturnLinkDataPort;
    }
    part def <'EQ-CT-19'> Accu :> SSD_ALC_SYS_001::Physical::PHY_CT_06 {
        doc /* 音声中央制御装置（ACCU、内部に冗長2系統）（機能ブロック SSD-FD-CT-AUD-001、機器 PHY-CT-06） */
        port o_FL_CT_13 : AnalogVoicePort;
        port o_FL_CT_33 : AnalogVoicePort;
        port o_FL_CT_37 : AnalogVoicePort;
    }
    part def <'EQ-CT-20'> Gcil :> SSD_ALC_SYS_001::Physical::PHY_CT_07 {
        doc /* 地上指令インタフェース論理（GCIL／GCILC）（機能ブロック SSD-FD-CT-OPS-001、機器 PHY-CT-07） */
        port i_FL_CT_40 : ~CommConfigCommandPort;
        port o_FL_CT_41 : CommConfigCommandPort;
        port o_FL_CT_42 : CommConfigCommandPort;
    }
    // ---- 図131 C&T RF リンク 内部ブロック図：接続（CtRfInterconnection は CT を特化）
    part def CtRfInterconnection :> CT {
        doc /* C&T（S 帯・Ku 帯・UHF の RF リンク）の内部ブロック図（図131）。基の機能ブロック SSD-FD-CT-001。 */
        part redefines sbd {
            part sBandPmTransponder[2] : SBandPmTransponder;
            part sBandPreamplifier[2] : SBandPreamplifier;
            part sBandPowerAmplifier[2] : SBandPowerAmplifier;
            part sBandAntennaSwitch : SBandAntennaSwitch;
            part sBandQuadAntenna[4] : SBandQuadAntenna;
            part networkSignalProcessor[2] : NetworkSignalProcessor;
            part comsec : Comsec;
            part sBandFmSignalProcessor[2] : SBandFmSignalProcessor;
            part sBandFmTransmitter[2] : SBandFmTransmitter;
            part sBandHemiAntenna[2] : SBandHemiAntenna;
        }
        part redefines ku {
            part kuBandSignalProcessor : KuBandSignalProcessor;
            part kuBandElectronicsAssy[2] : KuBandElectronicsAssy;
            part kuBandDeployedAssy : KuBandDeployedAssy;
        }
        part redefines uhf {
            part uhfAtcTransceiver : UhfAtcTransceiver;
            part uhfLowerAntenna : UhfLowerAntenna;
            part ssor[2] : Ssor;
            part ssorAntenna[2] : SsorAntenna;
        }
        part redefines inst {
            part pcmmu[2] : Pcmmu;
        }
        part redefines aud {
            part accu : Accu;
        }
        part redefines ops {
            part gcil : Gcil;
        }
        port b_FL_CT_01 : ~SBandPmRfPort { doc /* 枠の外の相手 EB-CT-01（TDRS（TDRSS、WSGT/STGT 経由で MCC）） */ }
        port b_FL_CT_02 : SBandPmRfPort { doc /* 枠の外の相手 EB-CT-01（TDRS（TDRSS、WSGT/STGT 経由で MCC）） */ }
        port b_FL_CT_03 : ~SBandPmRfPort { doc /* 枠の外の相手 EB-CT-02（NASA の STDN 地上局（上昇・再突入、MCC へ）） */ }
        port b_FL_CT_04 : ~SBandPmRfPort { doc /* 枠の外の相手 EB-CT-03（空軍の AFSCF 遠隔追跡局（SGLS 地上局、DoD 任務）） */ }
        port b_FL_CT_14 : ForwardLinkDataPort { doc /* 枠の外の相手 EB-CT-06（DPS：FF MDM（FF 1・FF 3）と GPC（地上指令の受け取り）） */ }
        port b_FL_CT_15 : ~ReturnLinkDataPort { doc /* 枠の外の相手 EB-CT-07（DPS：GPC のダウンリストと OI MDM（PCMMU への入力）） */ }
        port b_FL_CT_16 : ReturnLinkDataPort { doc /* 枠の外の相手 EB-CT-09（DPS：MMU 1・2 に内蔵の固体記録器（SSR）） */ }
        port b_FL_CT_17 : ~ReturnLinkDataPort { doc /* 枠の外の相手 EB-CT-09（DPS：MMU 1・2 に内蔵の固体記録器（SSR）） */ }
        port b_FL_CT_18 : ~ReturnLinkDataPort { doc /* 枠の外の相手 EB-CT-10（DPS：EIU（SSME データ、上昇中）） */ }
        port b_FL_CT_19 : ~ReturnLinkDataPort { doc /* 枠の外の相手 EB-CT-12（CCTV（映像切替装置 VSU・DTV）） */ }
        port b_FL_CT_22 : SBandFmRfPort { doc /* 枠の外の相手 EB-CT-02（NASA の STDN 地上局（上昇・再突入、MCC へ）） */ }
        port b_FL_CT_25 : ~ReturnLinkDataPort { doc /* 枠の外の相手 EB-CT-09（DPS：MMU 1・2 に内蔵の固体記録器（SSR）） */ }
        port b_FL_CT_26 : ~ReturnLinkDataPort { doc /* 枠の外の相手 EB-CT-12（CCTV（映像切替装置 VSU・DTV）） */ }
        port b_FL_CT_28 : KuBandRfPort { doc /* 枠の外の相手 EB-CT-01（TDRS（TDRSS、WSGT/STGT 経由で MCC）） */ }
        port b_FL_CT_29 : ~KuBandRfPort { doc /* 枠の外の相手 EB-CT-01（TDRS（TDRSS、WSGT/STGT 経由で MCC）） */ }
        port b_FL_CT_32 : RadarTrackDataPort { doc /* 枠の外の相手 EB-CT-11（GN&C：ランデブ航法（GNC の GPC）） */ }
        port b_FL_CT_35 : UhfRfPort { doc /* 枠の外の相手 EB-CT-02（NASA の STDN 地上局（上昇・再突入、MCC へ）） */ }
        port b_FL_CT_36 : UhfRfPort { doc /* 枠の外の相手 EB-CT-04（航空交通管制施設・随伴機（着陸時の UHF 音声）） */ }
        port b_FL_CT_39 : UhfRfPort { doc /* 枠の外の相手 EB-CT-05（EVA 乗員（EMU 無線 SSER、最大3台）） */ }
        port b_FL_CT_40 : ~CommConfigCommandPort { doc /* 枠の外の相手 EB-CT-08（DPS：PF MDM（GCIL・アンテナ切替・Ku 帯への指令）） */ }
        port b_FL_CT_43 : ~CommConfigCommandPort { doc /* 枠の外の相手 EB-CT-08（DPS：PF MDM（GCIL・アンテナ切替・Ku 帯への指令）） */ }
        flow <'FL-CT-01'> fl_ct_01 from b_FL_CT_01.rfSignal to sbd.sBandQuadAntenna.i_FL_CT_01.rfSignal {
            item :>> payload : SBandPmRf {
                attribute frequencyMin :> frequency = 2.0419E9 [Hz] { doc /* 周波数 2,041.9〜2,106.4 MHz（Hz に換算） */ }
                attribute frequencyMax :> frequency = 2.1064E9 [Hz] { doc /* 周波数 2,041.9〜2,106.4 MHz（Hz に換算） */ }
                attribute dataRateMin :> dataRate = 32 { doc /* 数値 32〜72 kbps */ }
                attribute dataRateMax :> dataRate = 72 { doc /* 数値 32〜72 kbps */ }
            }
        }
        flow <'FL-CT-02'> fl_ct_02 from sbd.sBandQuadAntenna.o_FL_CT_02.rfSignal to b_FL_CT_02.rfSignal {
            item :>> payload : SBandPmRf {
                attribute frequencyMin :> frequency = 2.2175E9 [Hz] { doc /* 周波数 2,217.5〜2,287.5 MHz（Hz に換算） */ }
                attribute frequencyMax :> frequency = 2.2875E9 [Hz] { doc /* 周波数 2,217.5〜2,287.5 MHz（Hz に換算） */ }
                attribute dataRateMin :> dataRate = 96 { doc /* 数値 96〜192 kbps */ }
                attribute dataRateMax :> dataRate = 192 { doc /* 数値 96〜192 kbps */ }
                attribute powerMin :> power = 65 [W] { doc /* 電力・熱流量 65〜100 W */ }
                attribute powerMax :> power = 100 [W] { doc /* 電力・熱流量 65〜100 W */ }
            }
        }
        flow <'FL-CT-03'> fl_ct_03 from b_FL_CT_03.rfSignal to sbd.sBandQuadAntenna.i_FL_CT_03.rfSignal {
            item :>> payload : SBandPmRf {
                attribute frequency1Min :> frequency = 2.0419E9 [Hz] { doc /* 周波数 2,041.9〜2,106.4 MHz（Hz に換算） */ }
                attribute frequency1Max :> frequency = 2.1064E9 [Hz] { doc /* 周波数 2,041.9〜2,106.4 MHz（Hz に換算） */ }
                attribute frequency2Nominal :> frequency = 1.7E6 [Hz] { doc /* 周波数 1.7 MHz（Hz に換算） */ }
                attribute dataRateMin :> dataRate = 32 { doc /* 数値 32〜72 kbps */ }
                attribute dataRateMax :> dataRate = 72 { doc /* 数値 32〜72 kbps */ }
            }
        }
        flow <'FL-CT-04'> fl_ct_04 from b_FL_CT_04.rfSignal to sbd.sBandQuadAntenna.i_FL_CT_04.rfSignal {
            item :>> payload : SBandPmRf {
                attribute frequencyMin :> frequency = 1.7755E9 [Hz] { doc /* 周波数 1,775.5〜1,831.8 MHz（Hz に換算） */ }
                attribute frequencyMax :> frequency = 1.8318E9 [Hz] { doc /* 周波数 1,775.5〜1,831.8 MHz（Hz に換算） */ }
            }
        }
        flow <'FL-CT-05'> fl_ct_05 of SBandPmRf from sbd.sBandQuadAntenna.o_FL_CT_05.rfSignal to sbd.sBandAntennaSwitch.i_FL_CT_05.rfSignal;
        flow <'FL-CT-06'> fl_ct_06 of SBandPmRf from sbd.sBandAntennaSwitch.o_FL_CT_06.rfSignal to sbd.sBandPreamplifier.i_FL_CT_06.rfSignal;
        flow <'FL-CT-07'> fl_ct_07 from sbd.sBandPreamplifier.o_FL_CT_07.rfSignal to sbd.sBandPmTransponder.i_FL_CT_07.rfSignal {
            item :>> payload : SBandPmRf {
                attribute frequencyMin :> frequency = 2.0419E9 [Hz] { doc /* 周波数 2,041.9〜2,106.4 MHz（Hz に換算） */ }
                attribute frequencyMax :> frequency = 2.1064E9 [Hz] { doc /* 周波数 2,041.9〜2,106.4 MHz（Hz に換算） */ }
            }
        }
        flow <'FL-CT-08'> fl_ct_08 from sbd.sBandPmTransponder.o_FL_CT_08.rfSignal to sbd.sBandPowerAmplifier.i_FL_CT_08.rfSignal {
            item :>> payload : SBandPmRf {
                attribute frequencyMin :> frequency = 2.2175E9 [Hz] { doc /* 周波数 2,217.5〜2,287.5 MHz（Hz に換算） */ }
                attribute frequencyMax :> frequency = 2.2875E9 [Hz] { doc /* 周波数 2,217.5〜2,287.5 MHz（Hz に換算） */ }
            }
        }
        flow <'FL-CT-09'> fl_ct_09 from sbd.sBandPmTransponder.o_FL_CT_09.dataCommand to sbd.networkSignalProcessor.i_FL_CT_09.dataCommand {
            item :>> payload : ForwardLinkData {
                attribute dataRateMin :> dataRate = 32 { doc /* 数値 32〜72 kbps */ }
                attribute dataRateMax :> dataRate = 72 { doc /* 数値 32〜72 kbps */ }
            }
        }
        flow <'FL-CT-10'> fl_ct_10 from sbd.networkSignalProcessor.o_FL_CT_10.dataCommand to sbd.sBandPmTransponder.i_FL_CT_10.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateMin :> dataRate = 96 { doc /* 数値 96〜192 kbps */ }
                attribute dataRateMax :> dataRate = 192 { doc /* 数値 96〜192 kbps */ }
            }
        }
        flow <'FL-CT-11'> fl_ct_11 of ForwardLinkData from sbd.networkSignalProcessor.o_FL_CT_11.dataCommand to sbd.comsec.i_FL_CT_11.dataCommand;
        flow <'FL-CT-12'> fl_ct_12 from inst.pcmmu.o_FL_CT_12.dataCommand to sbd.networkSignalProcessor.i_FL_CT_12.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateMin :> dataRate = 64 { doc /* 数値 64〜128 kbps */ }
                attribute dataRateMax :> dataRate = 128 { doc /* 数値 64〜128 kbps */ }
            }
        }
        flow <'FL-CT-13'> fl_ct_13 of AnalogVoice from aud.accu.o_FL_CT_13.dataCommand to sbd.networkSignalProcessor.i_FL_CT_13.dataCommand;
        flow <'FL-CT-14'> fl_ct_14 from sbd.networkSignalProcessor.o_FL_CT_14.dataCommand to b_FL_CT_14.dataCommand {
            item :>> payload : ForwardLinkData {
                attribute dataRateNominal :> dataRate = 8 { doc /* 数値 8 kbps */ }
            }
        }
        flow <'FL-CT-15'> fl_ct_15 of ReturnLinkData from b_FL_CT_15.dataCommand to inst.pcmmu.i_FL_CT_15.dataCommand;
        flow <'FL-CT-16'> fl_ct_16 of ReturnLinkData from sbd.networkSignalProcessor.o_FL_CT_16.dataCommand to b_FL_CT_16.dataCommand;
        flow <'FL-CT-17'> fl_ct_17 from b_FL_CT_17.dataCommand to sbd.sBandFmSignalProcessor.i_FL_CT_17.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateNominal :> dataRate = 1024 { doc /* 数値 1,024 kbps */ }
            }
        }
        flow <'FL-CT-18'> fl_ct_18 from b_FL_CT_18.dataCommand to sbd.sBandFmSignalProcessor.i_FL_CT_18.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateNominal :> dataRate = 60 { doc /* 数値 60 kbps */ }
            }
        }
        flow <'FL-CT-19'> fl_ct_19 of ReturnLinkData from b_FL_CT_19.dataCommand to sbd.sBandFmSignalProcessor.i_FL_CT_19.dataCommand;
        flow <'FL-CT-20'> fl_ct_20 of ReturnLinkData from sbd.sBandFmSignalProcessor.o_FL_CT_20.dataCommand to sbd.sBandFmTransmitter.i_FL_CT_20.dataCommand;
        flow <'FL-CT-21'> fl_ct_21 from sbd.sBandFmTransmitter.o_FL_CT_21.rfSignal to sbd.sBandHemiAntenna.i_FL_CT_21.rfSignal {
            item :>> payload : SBandFmRf {
                attribute frequencyNominal :> frequency = 2.25E9 [Hz] { doc /* 周波数 2,250 MHz（Hz に換算） */ }
            }
        }
        flow <'FL-CT-22'> fl_ct_22 from sbd.sBandHemiAntenna.o_FL_CT_22.rfSignal to b_FL_CT_22.rfSignal {
            item :>> payload : SBandFmRf {
                attribute frequencyNominal :> frequency = 2.25E9 [Hz] { doc /* 周波数 2,250 MHz（Hz に換算） */ }
                attribute dataRateMin :> dataRate = 60 { doc /* 数値 60〜1,024 kbps */ }
                attribute dataRateMax :> dataRate = 1024 { doc /* 数値 60〜1,024 kbps */ }
            }
        }
        flow <'FL-CT-23'> fl_ct_23 from sbd.networkSignalProcessor.o_FL_CT_23.dataCommand to ku.kuBandSignalProcessor.i_FL_CT_23.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateNominal :> dataRate = 192 { doc /* 数値 192 kbps */ }
            }
        }
        flow <'FL-CT-24'> fl_ct_24 from ku.kuBandSignalProcessor.o_FL_CT_24.dataCommand to sbd.networkSignalProcessor.i_FL_CT_24.dataCommand {
            item :>> payload : ForwardLinkData {
                attribute dataRateNominal :> dataRate = 72 { doc /* 数値 72 kbps */ }
            }
        }
        flow <'FL-CT-25'> fl_ct_25 from b_FL_CT_25.dataCommand to ku.kuBandSignalProcessor.i_FL_CT_25.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateNominal :> dataRate = 2 { doc /* 数値 2 Mbps */ }
            }
        }
        flow <'FL-CT-26'> fl_ct_26 from b_FL_CT_26.dataCommand to ku.kuBandSignalProcessor.i_FL_CT_26.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateMin :> dataRate = 4 { doc /* 数値 4〜50 Mbps */ }
                attribute dataRateMax :> dataRate = 50 { doc /* 数値 4〜50 Mbps */ }
            }
        }
        flow <'FL-CT-27'> fl_ct_27 from ku.kuBandSignalProcessor.o_FL_CT_27.dataCommand to ku.kuBandDeployedAssy.i_FL_CT_27.dataCommand {
            item :>> payload : ReturnLinkData {
                attribute dataRateNominal :> dataRate = 192 { doc /* 数値 192 kbps */ }
            }
        }
        flow <'FL-CT-28'> fl_ct_28 from ku.kuBandDeployedAssy.o_FL_CT_28.rfSignal to b_FL_CT_28.rfSignal {
            item :>> payload : KuBandRf {
                attribute frequencyNominal :> frequency = 1.5003E10 [Hz] { doc /* 周波数 15,003 MHz（Hz に換算） */ }
                attribute ch1DataRateNominal :> ch1DataRate = 192 { doc /* 数値 192 kbps */ }
                attribute ch2DataRateNominal :> ch2DataRate = 2 { doc /* 数値 2 Mbps */ }
                attribute ch3DataRateMin :> ch3DataRate = 4 { doc /* 数値 4〜50 Mbps */ }
                attribute ch3DataRateMax :> ch3DataRate = 50 { doc /* 数値 4〜50 Mbps */ }
            }
        }
        flow <'FL-CT-29'> fl_ct_29 from b_FL_CT_29.rfSignal to ku.kuBandDeployedAssy.i_FL_CT_29.rfSignal {
            item :>> payload : KuBandRf {
                attribute frequencyNominal :> frequency = 1.3755E10 [Hz] { doc /* 周波数 13,755 MHz（Hz に換算） */ }
            }
        }
        flow <'FL-CT-30'> fl_ct_30 of KuBandRf from ku.kuBandDeployedAssy.o_FL_CT_30.rfSignal to ku.kuBandElectronicsAssy.i_FL_CT_30.rfSignal;
        flow <'FL-CT-31'> fl_ct_31 of ForwardLinkData from ku.kuBandElectronicsAssy.o_FL_CT_31.dataCommand to ku.kuBandSignalProcessor.i_FL_CT_31.dataCommand;
        flow <'FL-CT-32'> fl_ct_32 of RadarTrackData from ku.kuBandElectronicsAssy.o_FL_CT_32.dataCommand to b_FL_CT_32.dataCommand;
        flow <'FL-CT-33'> fl_ct_33 of AnalogVoice from aud.accu.o_FL_CT_33.dataCommand to uhf.uhfAtcTransceiver.i_FL_CT_33.dataCommand;
        flow <'FL-CT-34'> fl_ct_34 from uhf.uhfAtcTransceiver.o_FL_CT_34.rfSignal to uhf.uhfLowerAntenna.i_FL_CT_34.rfSignal {
            item :>> payload : UhfRf {
                attribute powerMin :> power = 0.25 [W] { doc /* 電力・熱流量 0.25〜10 W */ }
                attribute powerMax :> power = 10 [W] { doc /* 電力・熱流量 0.25〜10 W */ }
            }
        }
        flow <'FL-CT-35'> fl_ct_35 from uhf.uhfLowerAntenna.o_FL_CT_35.rfSignal to b_FL_CT_35.rfSignal {
            item :>> payload : UhfRf {
                attribute frequencyMin :> frequency = 2.597E8 [Hz] { doc /* 周波数 259.7〜296.8 MHz（Hz に換算） */ }
                attribute frequencyMax :> frequency = 2.968E8 [Hz] { doc /* 周波数 259.7〜296.8 MHz（Hz に換算） */ }
                attribute powerMin :> power = 0.25 [W] { doc /* 電力・熱流量 0.25〜10 W */ }
                attribute powerMax :> power = 10 [W] { doc /* 電力・熱流量 0.25〜10 W */ }
            }
        }
        flow <'FL-CT-36'> fl_ct_36 from uhf.uhfLowerAntenna.o_FL_CT_36.rfSignal to b_FL_CT_36.rfSignal {
            item :>> payload : UhfRf {
                attribute frequencyNominal :> frequency = 2.43E8 [Hz] { doc /* 周波数 243 MHz（Hz に換算） */ }
            }
        }
        flow <'FL-CT-37'> fl_ct_37 of AnalogVoice from aud.accu.o_FL_CT_37.dataCommand to uhf.ssor.i_FL_CT_37.dataCommand;
        flow <'FL-CT-38'> fl_ct_38 from uhf.ssor.o_FL_CT_38.rfSignal to uhf.ssorAntenna.i_FL_CT_38.rfSignal {
            item :>> payload : UhfRf {
                attribute powerLevelMin :> powerLevel = 19.1 { doc /* 数値 19.1〜31.6 dBm */ }
                attribute powerLevelMax :> powerLevel = 31.6 { doc /* 数値 19.1〜31.6 dBm */ }
            }
        }
        flow <'FL-CT-39'> fl_ct_39 from uhf.ssorAntenna.o_FL_CT_39.rfSignal to b_FL_CT_39.rfSignal {
            item :>> payload : UhfRf {
                attribute frequencyMin :> frequency = 4.142E8 [Hz] { doc /* 周波数 414.2〜417.1 MHz（Hz に換算） */ }
                attribute frequencyMax :> frequency = 4.171E8 [Hz] { doc /* 周波数 414.2〜417.1 MHz（Hz に換算） */ }
                attribute powerLevelNominal :> powerLevel = 19.1 { doc /* 数値 19.1 dBm */ }
            }
        }
        flow <'FL-CT-40'> fl_ct_40 of CommConfigCommand from b_FL_CT_40.dataCommand to ops.gcil.i_FL_CT_40.dataCommand;
        flow <'FL-CT-41'> fl_ct_41 of CommConfigCommand from ops.gcil.o_FL_CT_41.dataCommand to sbd.sBandPmTransponder.i_FL_CT_41.dataCommand;
        flow <'FL-CT-42'> fl_ct_42 of CommConfigCommand from ops.gcil.o_FL_CT_42.dataCommand to ku.kuBandSignalProcessor.i_FL_CT_42.dataCommand;
        flow <'FL-CT-43'> fl_ct_43 of CommConfigCommand from b_FL_CT_43.dataCommand to sbd.sBandAntennaSwitch.i_FL_CT_43.dataCommand;
    }
    // ---- 流れ → IF（詳細化）
    package FlowRefinement {
        #refinement dependency <'FL-EPS-01>IF-EPS-01'> from EpsInterconnection::fl_eps_01 to SSD_BLK_SYS_001::MissionContext::IF_EPS_01;
        #refinement dependency <'FL-EPS-02>IF-EPS-01'> from EpsInterconnection::fl_eps_02 to SSD_BLK_SYS_001::MissionContext::IF_EPS_01;
        #refinement dependency <'FL-EPS-05>IF-EPS-03'> from EpsInterconnection::fl_eps_05 to SSD_BLK_SYS_001::EPS::IF_EPS_03;
        #refinement dependency <'FL-EPS-06>IF-EPS-03'> from EpsInterconnection::fl_eps_06 to SSD_BLK_SYS_001::EPS::IF_EPS_03;
        #refinement dependency <'FL-EPS-07>IF-EPS-03'> from EpsInterconnection::fl_eps_07 to SSD_BLK_SYS_001::EPS::IF_EPS_03;
        #refinement dependency <'FL-EPS-08>IF-EPS-03'> from EpsInterconnection::fl_eps_08 to SSD_BLK_SYS_001::EPS::IF_EPS_03;
        #refinement dependency <'FL-EPS-09>IF-EPS-03'> from EpsInterconnection::fl_eps_09 to SSD_BLK_SYS_001::EPS::IF_EPS_03;
        #refinement dependency <'FL-EPS-10>IF-EPS-03'> from EpsInterconnection::fl_eps_10 to SSD_BLK_SYS_001::EPS::IF_EPS_03;
        #refinement dependency <'FL-EPS-11>IF-EPS-04'> from EpsInterconnection::fl_eps_11 to SSD_BLK_SYS_001::ORB::IF_EPS_04;
        #refinement dependency <'FL-EPS-12>IF-EPS-05'> from EpsInterconnection::fl_eps_12 to SSD_BLK_SYS_001::EPS::IF_EPS_05;
        #refinement dependency <'FL-EPS-13>IF-EPS-05'> from EpsInterconnection::fl_eps_13 to SSD_BLK_SYS_001::EPS::IF_EPS_05;
        #refinement dependency <'FL-EPS-14>IF-EPS-05'> from EpsInterconnection::fl_eps_14 to SSD_BLK_SYS_001::EPS::IF_EPS_05;
        #refinement dependency <'FL-EPS-15>IF-EPS-06'> from EpsInterconnection::fl_eps_15 to SSD_BLK_SYS_001::ORB::IF_EPS_06;
        #refinement dependency <'FL-EPS-16>IF-EPS-06'> from EpsInterconnection::fl_eps_16 to SSD_BLK_SYS_001::ORB::IF_EPS_06;
        #refinement dependency <'FL-EPS-17>IF-EPS-06'> from EpsInterconnection::fl_eps_17 to SSD_BLK_SYS_001::ORB::IF_EPS_06;
        #refinement dependency <'FL-EPS-18>IF-EPS-07'> from EpsInterconnection::fl_eps_18 to SSD_BLK_SYS_001::ORB::IF_EPS_07;
        #refinement dependency <'FL-EPS-19>IF-EPS-07'> from EpsInterconnection::fl_eps_19 to SSD_BLK_SYS_001::ORB::IF_EPS_07;
        #refinement dependency <'FL-EPS-20>IF-EPS-07'> from EpsInterconnection::fl_eps_20 to SSD_BLK_SYS_001::ORB::IF_EPS_07;
        #refinement dependency <'FL-EPS-21>IF-EPS-08'> from EpsInterconnection::fl_eps_21 to SSD_BLK_SYS_001::MissionContext::IF_EPS_08;
        #refinement dependency <'FL-EPS-22>IF-EPS-09'> from EpsInterconnection::fl_eps_22 to SSD_BLK_SYS_001::ORB::IF_EPS_09;
        #refinement dependency <'FL-EPS-23>IF-EPS-02'> from EpsInterconnection::fl_eps_23 to SSD_BLK_SYS_001::MissionContext::IF_EPS_02;
        #refinement dependency <'FL-EPS-28>IF-EPS-05'> from EpsInterconnection::fl_eps_28 to SSD_BLK_SYS_001::EPS::IF_EPS_05;
        #refinement dependency <'FL-EPS-29>IF-EPS-16'> from EpsInterconnection::fl_eps_29 to SSD_BLK_SYS_001::EPS::IF_EPS_16;
        #refinement dependency <'FL-EPS-30>IF-EPS-05'> from EpsInterconnection::fl_eps_30 to SSD_BLK_SYS_001::EPS::IF_EPS_05;
        #refinement dependency <'FL-EPS-31>IF-EPS-15'> from EpsInterconnection::fl_eps_31 to SSD_BLK_SYS_001::MissionContext::IF_EPS_15;
        #refinement dependency <'FL-EPS-32>IF-EPS-11'> from EpsInterconnection::fl_eps_32 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_EPS_11;
        #refinement dependency <'FL-EPS-33>IF-ORB-14'> from EpsInterconnection::fl_eps_33 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-EPS-34>IF-EPS-14'> from EpsInterconnection::fl_eps_34 to SSD_BLK_SYS_001::ORB::IF_EPS_14;
        #refinement dependency <'FL-EPS-35>IF-EPS-10'> from EpsInterconnection::fl_eps_35 to SSD_BLK_SYS_001::EPS::IF_EPS_10;
        #refinement dependency <'FL-EPS-36>IF-EPS-10'> from EpsInterconnection::fl_eps_36 to SSD_BLK_SYS_001::EPS::IF_EPS_10;
        #refinement dependency <'FL-EPS-37>IF-EPS-10'> from EpsInterconnection::fl_eps_37 to SSD_BLK_SYS_001::EPS::IF_EPS_10;
        #refinement dependency <'FL-EPS-39>IF-EPS-12'> from EpsInterconnection::fl_eps_39 to SSD_BLK_SYS_001::ORB::IF_EPS_12;
        #refinement dependency <'FL-EPS-40>IF-EPS-13'> from EpsInterconnection::fl_eps_40 to SSD_BLK_SYS_001::EPS::IF_EPS_13;
        #refinement dependency <'FL-EPS-41>IF-EPS-13'> from EpsInterconnection::fl_eps_41 to SSD_BLK_SYS_001::EPS::IF_EPS_13;
        #refinement dependency <'FL-EPS-42>IF-EPS-13'> from EpsInterconnection::fl_eps_42 to SSD_BLK_SYS_001::EPS::IF_EPS_13;
        #refinement dependency <'FL-ATCS-01>IF-TCS-07'> from AtcsInterconnection::fl_atcs_01 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        #refinement dependency <'FL-ATCS-02>IF-TCS-07'> from AtcsInterconnection::fl_atcs_02 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        #refinement dependency <'FL-ATCS-05>IF-TCS-08'> from AtcsInterconnection::fl_atcs_05 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_08;
        #refinement dependency <'FL-ATCS-08>IF-TCS-11'> from AtcsInterconnection::fl_atcs_08 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_11;
        #refinement dependency <'FL-ATCS-09>IF-TCS-10'> from AtcsInterconnection::fl_atcs_09 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_10;
        #refinement dependency <'FL-ATCS-10>IF-TCS-09'> from AtcsInterconnection::fl_atcs_10 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_09;
        #refinement dependency <'FL-ATCS-12>IF-TCS-07'> from AtcsInterconnection::fl_atcs_12 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        #refinement dependency <'FL-ATCS-13>IF-TCS-07'> from AtcsInterconnection::fl_atcs_13 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        #refinement dependency <'FL-ATCS-18>IF-TCS-07'> from AtcsInterconnection::fl_atcs_18 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        #refinement dependency <'FL-ATCS-19>IF-TCS-07'> from AtcsInterconnection::fl_atcs_19 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        #refinement dependency <'FL-ATCS-20>IF-TCS-07'> from AtcsInterconnection::fl_atcs_20 to SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        #refinement dependency <'FL-ATCS-21>IF-EPS-07'> from AtcsInterconnection::fl_atcs_21 to SSD_BLK_SYS_001::ORB::IF_EPS_07;
        #refinement dependency <'FL-ATCS-22>IF-TCS-02'> from AtcsInterconnection::fl_atcs_22 to SSD_BLK_SYS_001::ORB::IF_TCS_02;
        #refinement dependency <'FL-ATCS-23>IF-TCS-03'> from AtcsInterconnection::fl_atcs_23 to SSD_BLK_SYS_001::ORB::IF_TCS_03;
        #refinement dependency <'FL-ATCS-24>IF-TCS-12'> from AtcsInterconnection::fl_atcs_24 to SSD_BLK_SYS_001::MissionContext::IF_TCS_12;
        #refinement dependency <'FL-ATCS-25>IF-TCS-15'> from AtcsInterconnection::fl_atcs_25 to SSD_BLK_SYS_001::MissionContext::IF_TCS_15;
        #refinement dependency <'FL-ATCS-27>IF-TCS-14'> from AtcsInterconnection::fl_atcs_27 to SSD_BLK_SYS_001::MissionContext::IF_TCS_14;
        #refinement dependency <'FL-ATCS-28>IF-TCS-16'> from AtcsInterconnection::fl_atcs_28 to SSD_BLK_SYS_001::ECLSS::IF_TCS_16;
        #refinement dependency <'FL-ATCS-29>IF-TCS-16'> from AtcsInterconnection::fl_atcs_29 to SSD_BLK_SYS_001::ECLSS::IF_TCS_16;
        #refinement dependency <'FL-ATCS-30>IF-TCS-13'> from AtcsInterconnection::fl_atcs_30 to SSD_BLK_SYS_001::MissionContext::IF_TCS_13;
        #refinement dependency <'FL-ATCS-31>IF-TCS-13'> from AtcsInterconnection::fl_atcs_31 to SSD_BLK_SYS_001::MissionContext::IF_TCS_13;
        #refinement dependency <'FL-ATCS-32>IF-TCS-04'> from AtcsInterconnection::fl_atcs_32 to SSD_BLK_SYS_001::ECLSS::IF_TCS_04;
        #refinement dependency <'FL-ATCS-33>IF-TCS-01'> from AtcsInterconnection::fl_atcs_33 to SSD_BLK_SYS_001::ECLSS::IF_TCS_01;
        #refinement dependency <'FL-ATCS-34>IF-TCS-06'> from AtcsInterconnection::fl_atcs_34 to SSD_BLK_SYS_001::MissionContext::IF_TCS_06;
        #refinement dependency <'FL-ATCS-35>IF-TCS-05'> from AtcsInterconnection::fl_atcs_35 to SSD_BLK_SYS_001::ORB::IF_TCS_05;
        #refinement dependency <'FL-ATCS-36>IF-TCS-18'> from AtcsInterconnection::fl_atcs_36 to SSD_BLK_SYS_001::ORB::IF_TCS_18;
        #refinement dependency <'FL-ATCS-37>IF-TCS-19'> from AtcsInterconnection::fl_atcs_37 to SSD_BLK_SYS_001::ORB::IF_TCS_19;
        #refinement dependency <'FL-ATCS-38>IF-TCS-21'> from AtcsInterconnection::fl_atcs_38 to SSD_BLK_SYS_001::ORB::IF_TCS_21;
        #refinement dependency <'FL-MPS-01>IF-MPS-01'> from MpsInterconnection::fl_mps_01 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_01;
        #refinement dependency <'FL-MPS-04>IF-MPS-10'> from MpsInterconnection::fl_mps_04 to SSD_BLK_SYS_001::MPS::IF_MPS_10;
        #refinement dependency <'FL-MPS-05>IF-MPS-01'> from MpsInterconnection::fl_mps_05 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_01;
        #refinement dependency <'FL-MPS-08>IF-MPS-10'> from MpsInterconnection::fl_mps_08 to SSD_BLK_SYS_001::MPS::IF_MPS_10;
        #refinement dependency <'FL-MPS-09>IF-MPS-11'> from MpsInterconnection::fl_mps_09 to SSD_BLK_SYS_001::MPS::IF_MPS_11;
        #refinement dependency <'FL-MPS-11>IF-MPS-02'> from MpsInterconnection::fl_mps_11 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_02;
        #refinement dependency <'FL-MPS-12>IF-MPS-11'> from MpsInterconnection::fl_mps_12 to SSD_BLK_SYS_001::MPS::IF_MPS_11;
        #refinement dependency <'FL-MPS-14>IF-MPS-02'> from MpsInterconnection::fl_mps_14 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_02;
        #refinement dependency <'FL-MPS-15>IF-MPS-21'> from MpsInterconnection::fl_mps_15 to SSD_BLK_SYS_001::MissionContext::IF_MPS_21;
        #refinement dependency <'FL-MPS-16>IF-MPS-04'> from MpsInterconnection::fl_mps_16 to SSD_BLK_SYS_001::MissionContext::IF_MPS_04;
        #refinement dependency <'FL-MPS-17>IF-MPS-04'> from MpsInterconnection::fl_mps_17 to SSD_BLK_SYS_001::MissionContext::IF_MPS_04;
        #refinement dependency <'FL-MPS-18>IF-MPS-03'> from MpsInterconnection::fl_mps_18 to SSD_BLK_SYS_001::MissionContext::IF_MPS_03;
        #refinement dependency <'FL-MPS-19>IF-MPS-15'> from MpsInterconnection::fl_mps_19 to SSD_BLK_SYS_001::MPS::IF_MPS_15;
        #refinement dependency <'FL-MPS-20>IF-MPS-03'> from MpsInterconnection::fl_mps_20 to SSD_BLK_SYS_001::MissionContext::IF_MPS_03;
        #refinement dependency <'FL-MPS-21>IF-MPS-15'> from MpsInterconnection::fl_mps_21 to SSD_BLK_SYS_001::MPS::IF_MPS_15;
        #refinement dependency <'FL-MPS-22>IF-MPS-21'> from MpsInterconnection::fl_mps_22 to SSD_BLK_SYS_001::MissionContext::IF_MPS_21;
        #refinement dependency <'FL-MPS-23>IF-MPS-21'> from MpsInterconnection::fl_mps_23 to SSD_BLK_SYS_001::MissionContext::IF_MPS_21;
        #refinement dependency <'FL-MPS-24>IF-MPS-15'> from MpsInterconnection::fl_mps_24 to SSD_BLK_SYS_001::MPS::IF_MPS_15;
        #refinement dependency <'FL-MPS-25>IF-MPS-21'> from MpsInterconnection::fl_mps_25 to SSD_BLK_SYS_001::MissionContext::IF_MPS_21;
        #refinement dependency <'FL-MPS-26>IF-MPS-21'> from MpsInterconnection::fl_mps_26 to SSD_BLK_SYS_001::MissionContext::IF_MPS_21;
        #refinement dependency <'FL-MPS-27>IF-MPS-12'> from MpsInterconnection::fl_mps_27 to SSD_BLK_SYS_001::MPS::IF_MPS_12;
        #refinement dependency <'FL-MPS-28>IF-MPS-13'> from MpsInterconnection::fl_mps_28 to SSD_BLK_SYS_001::MPS::IF_MPS_13;
        #refinement dependency <'FL-MPS-29>IF-MPS-14'> from MpsInterconnection::fl_mps_29 to SSD_BLK_SYS_001::MPS::IF_MPS_14;
        #refinement dependency <'FL-MPS-30>IF-MPS-15'> from MpsInterconnection::fl_mps_30 to SSD_BLK_SYS_001::MPS::IF_MPS_15;
        #refinement dependency <'FL-MPS-31>IF-MPS-15'> from MpsInterconnection::fl_mps_31 to SSD_BLK_SYS_001::MPS::IF_MPS_15;
        #refinement dependency <'FL-MPS-33>IF-DPS-05'> from MpsInterconnection::fl_mps_33 to SSD_BLK_SYS_001::ORB::IF_DPS_05;
        #refinement dependency <'FL-MPS-34>IF-DPS-05'> from MpsInterconnection::fl_mps_34 to SSD_BLK_SYS_001::ORB::IF_DPS_05;
        #refinement dependency <'FL-MPS-35>IF-MPS-09'> from MpsInterconnection::fl_mps_35 to SSD_BLK_SYS_001::MPS::IF_MPS_09;
        #refinement dependency <'FL-MPS-36>IF-MPS-05'> from MpsInterconnection::fl_mps_36 to SSD_BLK_SYS_001::ORB::IF_MPS_05;
        #refinement dependency <'FL-MPS-37>IF-MPS-06'> from MpsInterconnection::fl_mps_37 to SSD_BLK_SYS_001::ORB::IF_MPS_06;
        #refinement dependency <'FL-MPS-38>IF-APU-09'> from MpsInterconnection::fl_mps_38 to SSD_BLK_SYS_001::ORB::IF_APU_09;
        #refinement dependency <'FL-MPS-39>IF-APU-09'> from MpsInterconnection::fl_mps_39 to SSD_BLK_SYS_001::ORB::IF_APU_09;
        #refinement dependency <'FL-MPS-40>IF-GNC-16'> from MpsInterconnection::fl_mps_40 to SSD_BLK_SYS_001::ORB::IF_GNC_16;
        #refinement dependency <'FL-MPS-42>IF-MPS-16'> from MpsInterconnection::fl_mps_42 to SSD_BLK_SYS_001::MPS::IF_MPS_16;
        #refinement dependency <'FL-MPS-43>IF-MPS-22'> from MpsInterconnection::fl_mps_43 to SSD_BLK_SYS_001::ORB::IF_MPS_22;
        #refinement dependency <'FL-DPS-01>IF-DPS-01'> from DpsInterconnection::fl_dps_01 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-02>IF-DPS-01'> from DpsInterconnection::fl_dps_02 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-07>IF-DPS-21'> from DpsInterconnection::fl_dps_07 to SSD_BLK_SYS_001::DPS::IF_DPS_21;
        #refinement dependency <'FL-DPS-08>IF-DPS-22'> from DpsInterconnection::fl_dps_08 to SSD_BLK_SYS_001::ORB::IF_DPS_22;
        #refinement dependency <'FL-DPS-09>IF-DPS-14'> from DpsInterconnection::fl_dps_09 to SSD_BLK_SYS_001::DPS::IF_DPS_14;
        #refinement dependency <'FL-DPS-10>IF-DPS-14'> from DpsInterconnection::fl_dps_10 to SSD_BLK_SYS_001::DPS::IF_DPS_14;
        #refinement dependency <'FL-DPS-11>IF-DPS-05'> from DpsInterconnection::fl_dps_11 to SSD_BLK_SYS_001::ORB::IF_DPS_05;
        #refinement dependency <'FL-DPS-12>IF-CT-21'> from DpsInterconnection::fl_dps_12 to SSD_BLK_SYS_001::ORB::IF_CT_21;
        #refinement dependency <'FL-DPS-13>IF-DPS-08'> from DpsInterconnection::fl_dps_13 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_08;
        #refinement dependency <'FL-DPS-14>IF-DPS-09'> from DpsInterconnection::fl_dps_14 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_09;
        #refinement dependency <'FL-DPS-15>IF-DPS-01'> from DpsInterconnection::fl_dps_15 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-17>IF-CT-06'> from DpsInterconnection::fl_dps_17 to SSD_BLK_SYS_001::ORB::IF_CT_06;
        #refinement dependency <'FL-DPS-18>IF-CT-07'> from DpsInterconnection::fl_dps_18 to SSD_BLK_SYS_001::ORB::IF_CT_07;
        #refinement dependency <'FL-DPS-19>IF-DPS-01'> from DpsInterconnection::fl_dps_19 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-21>IF-DPS-07'> from DpsInterconnection::fl_dps_21 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_07;
        #refinement dependency <'FL-DPS-22>IF-DPS-06'> from DpsInterconnection::fl_dps_22 to SSD_BLK_SYS_001::MissionContext::IF_DPS_06;
        #refinement dependency <'FL-DPS-23>IF-DPS-13'> from DpsInterconnection::fl_dps_23 to SSD_BLK_SYS_001::ORB::IF_DPS_13;
        #refinement dependency <'FL-DPS-24>IF-DPS-15'> from DpsInterconnection::fl_dps_24 to SSD_BLK_SYS_001::DPS::IF_DPS_15;
        #refinement dependency <'FL-DPS-25>IF-DPS-01'> from DpsInterconnection::fl_dps_25 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-26>IF-DPS-01'> from DpsInterconnection::fl_dps_26 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-27>IF-DPS-17'> from DpsInterconnection::fl_dps_27 to SSD_BLK_SYS_001::DPS::IF_DPS_17;
        #refinement dependency <'FL-DPS-29>IF-DPS-01'> from DpsInterconnection::fl_dps_29 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-30>IF-CT-06'> from DpsInterconnection::fl_dps_30 to SSD_BLK_SYS_001::ORB::IF_CT_06;
        #refinement dependency <'FL-DPS-31>IF-CT-06'> from DpsInterconnection::fl_dps_31 to SSD_BLK_SYS_001::ORB::IF_CT_06;
        #refinement dependency <'FL-DPS-32>IF-DPS-01'> from DpsInterconnection::fl_dps_32 to SSD_BLK_SYS_001::DPS::IF_DPS_01;
        #refinement dependency <'FL-DPS-33>IF-DPS-16'> from DpsInterconnection::fl_dps_33 to SSD_BLK_SYS_001::DPS::IF_DPS_16;
        #refinement dependency <'FL-DPS-34>IF-CT-22'> from DpsInterconnection::fl_dps_34 to SSD_BLK_SYS_001::ORB::IF_CT_22;
        #refinement dependency <'FL-DPS-35>IF-CT-05'> from DpsInterconnection::fl_dps_35 to SSD_BLK_SYS_001::ORB::IF_CT_05;
        #refinement dependency <'FL-DPS-36>IF-DPS-03'> from DpsInterconnection::fl_dps_36 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-DPS-37>IF-DPS-03'> from DpsInterconnection::fl_dps_37 to SSD_BLK_SYS_001::ORB::IF_DPS_03;
        #refinement dependency <'FL-DPS-38>IF-DPS-11'> from DpsInterconnection::fl_dps_38 to SSD_BLK_SYS_001::ORB::IF_DPS_11;
        #refinement dependency <'FL-DPS-39>IF-DPS-10'> from DpsInterconnection::fl_dps_39 to SSD_BLK_SYS_001::ORB::IF_DPS_10;
        #refinement dependency <'FL-DPS-40>IF-DPS-02'> from DpsInterconnection::fl_dps_40 to SSD_BLK_SYS_001::ORB::IF_DPS_02;
        #refinement dependency <'FL-DPS-41>IF-ORB-14'> from DpsInterconnection::fl_dps_41 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-DPS-42>IF-ORB-14'> from DpsInterconnection::fl_dps_42 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-DPS-43>IF-ORB-14'> from DpsInterconnection::fl_dps_43 to SSD_BLK_SYS_001::ORB::IF_ORB_14;
        #refinement dependency <'FL-DPS-44>IF-ECL-08'> from DpsInterconnection::fl_dps_44 to SSD_BLK_SYS_001::ORB::IF_ECL_08;
        #refinement dependency <'FL-DPS-45>IF-ECL-08'> from DpsInterconnection::fl_dps_45 to SSD_BLK_SYS_001::ORB::IF_ECL_08;
        #refinement dependency <'FL-DPS-46>IF-ECL-25'> from DpsInterconnection::fl_dps_46 to SSD_BLK_SYS_001::ORB::IF_ECL_25;
        #refinement dependency <'FL-APU-04>IF-APU-01'> from ApuHydInterconnection::fl_apu_04 to SSD_BLK_SYS_001::APU::IF_APU_01;
        #refinement dependency <'FL-APU-05>IF-APU-22'> from ApuHydInterconnection::fl_apu_05 to SSD_BLK_SYS_001::MissionContext::IF_APU_22;
        #refinement dependency <'FL-APU-07>IF-APU-04'> from ApuHydInterconnection::fl_apu_07 to SSD_BLK_SYS_001::APU::IF_APU_04;
        #refinement dependency <'FL-APU-08>IF-APU-24'> from ApuHydInterconnection::fl_apu_08 to SSD_BLK_SYS_001::APU::IF_APU_24;
        #refinement dependency <'FL-APU-09>IF-APU-05'> from ApuHydInterconnection::fl_apu_09 to SSD_BLK_SYS_001::APU::IF_APU_05;
        #refinement dependency <'FL-APU-10>IF-APU-05'> from ApuHydInterconnection::fl_apu_10 to SSD_BLK_SYS_001::APU::IF_APU_05;
        #refinement dependency <'FL-APU-13>IF-APU-23'> from ApuHydInterconnection::fl_apu_13 to SSD_BLK_SYS_001::MissionContext::IF_APU_23;
        #refinement dependency <'FL-APU-17>IF-APU-07'> from ApuHydInterconnection::fl_apu_17 to SSD_BLK_SYS_001::APU::IF_APU_07;
        #refinement dependency <'FL-APU-18>IF-APU-08'> from ApuHydInterconnection::fl_apu_18 to SSD_BLK_SYS_001::APU::IF_APU_08;
        #refinement dependency <'FL-APU-20>IF-TCS-03'> from ApuHydInterconnection::fl_apu_20 to SSD_BLK_SYS_001::ORB::IF_TCS_03;
        #refinement dependency <'FL-APU-22>IF-APU-09'> from ApuHydInterconnection::fl_apu_22 to SSD_BLK_SYS_001::ORB::IF_APU_09;
        #refinement dependency <'FL-APU-23>IF-APU-09'> from ApuHydInterconnection::fl_apu_23 to SSD_BLK_SYS_001::ORB::IF_APU_09;
        #refinement dependency <'FL-APU-24>IF-APU-10'> from ApuHydInterconnection::fl_apu_24 to SSD_BLK_SYS_001::ORB::IF_APU_10;
        #refinement dependency <'FL-APU-25>IF-APU-10'> from ApuHydInterconnection::fl_apu_25 to SSD_BLK_SYS_001::ORB::IF_APU_10;
        #refinement dependency <'FL-APU-27>IF-APU-11'> from ApuHydInterconnection::fl_apu_27 to SSD_BLK_SYS_001::ORB::IF_APU_11;
        #refinement dependency <'FL-APU-29>IF-APU-11'> from ApuHydInterconnection::fl_apu_29 to SSD_BLK_SYS_001::ORB::IF_APU_11;
        #refinement dependency <'FL-APU-30>IF-APU-11'> from ApuHydInterconnection::fl_apu_30 to SSD_BLK_SYS_001::ORB::IF_APU_11;
        #refinement dependency <'FL-APU-31>IF-APU-02'> from ApuHydInterconnection::fl_apu_31 to SSD_BLK_SYS_001::APU::IF_APU_02;
        #refinement dependency <'FL-APU-32>IF-APU-12'> from ApuHydInterconnection::fl_apu_32 to SSD_BLK_SYS_001::ORB::IF_APU_12;
        #refinement dependency <'FL-APU-33>IF-APU-13'> from ApuHydInterconnection::fl_apu_33 to SSD_BLK_SYS_001::ORB::IF_APU_13;
        #refinement dependency <'FL-APU-34>IF-APU-16'> from ApuHydInterconnection::fl_apu_34 to SSD_BLK_SYS_001::ORB::IF_APU_16;
        #refinement dependency <'FL-APU-35>IF-APU-25'> from ApuHydInterconnection::fl_apu_35 to SSD_BLK_SYS_001::ORB::IF_APU_25;
        #refinement dependency <'FL-APU-36>IF-APU-17'> from ApuHydInterconnection::fl_apu_36 to SSD_BLK_SYS_001::ORB::IF_APU_17;
        #refinement dependency <'FL-APU-37>IF-APU-18'> from ApuHydInterconnection::fl_apu_37 to SSD_BLK_SYS_001::ORB::IF_APU_18;
        #refinement dependency <'FL-PROP-01>IF-OMS-01'> from PropulsionInterconnection::fl_prop_01 to SSD_BLK_SYS_001::OMS::IF_OMS_01;
        #refinement dependency <'FL-PROP-02>IF-OMS-01'> from PropulsionInterconnection::fl_prop_02 to SSD_BLK_SYS_001::OMS::IF_OMS_01;
        #refinement dependency <'FL-PROP-03>IF-OMS-02'> from PropulsionInterconnection::fl_prop_03 to SSD_BLK_SYS_001::OMS::IF_OMS_02;
        #refinement dependency <'FL-PROP-04>IF-OMS-02'> from PropulsionInterconnection::fl_prop_04 to SSD_BLK_SYS_001::OMS::IF_OMS_02;
        #refinement dependency <'FL-PROP-05>IF-OMS-03'> from PropulsionInterconnection::fl_prop_05 to SSD_BLK_SYS_001::OMS::IF_OMS_03;
        #refinement dependency <'FL-PROP-06>IF-OMS-03'> from PropulsionInterconnection::fl_prop_06 to SSD_BLK_SYS_001::OMS::IF_OMS_03;
        #refinement dependency <'FL-PROP-09>IF-OMS-04'> from PropulsionInterconnection::fl_prop_09 to SSD_BLK_SYS_001::OMS::IF_OMS_04;
        #refinement dependency <'FL-PROP-10>IF-OMS-04'> from PropulsionInterconnection::fl_prop_10 to SSD_BLK_SYS_001::OMS::IF_OMS_04;
        #refinement dependency <'FL-PROP-11>IF-OMS-11'> from PropulsionInterconnection::fl_prop_11 to SSD_BLK_SYS_001::ORB::IF_OMS_11;
        #refinement dependency <'FL-PROP-12>IF-OMS-11'> from PropulsionInterconnection::fl_prop_12 to SSD_BLK_SYS_001::ORB::IF_OMS_11;
        #refinement dependency <'FL-PROP-13>IF-RCS-01'> from PropulsionInterconnection::fl_prop_13 to SSD_BLK_SYS_001::RCS::IF_RCS_01;
        #refinement dependency <'FL-PROP-17>IF-RCS-02'> from PropulsionInterconnection::fl_prop_17 to SSD_BLK_SYS_001::RCS::IF_RCS_02;
        #refinement dependency <'FL-PROP-18>IF-RCS-01'> from PropulsionInterconnection::fl_prop_18 to SSD_BLK_SYS_001::RCS::IF_RCS_01;
        #refinement dependency <'FL-PROP-19>IF-RCS-02'> from PropulsionInterconnection::fl_prop_19 to SSD_BLK_SYS_001::RCS::IF_RCS_02;
        #refinement dependency <'FL-PROP-20>IF-OMS-05'> from PropulsionInterconnection::fl_prop_20 to SSD_BLK_SYS_001::OMS::IF_OMS_05;
        #refinement dependency <'FL-PROP-21>IF-OMS-05'> from PropulsionInterconnection::fl_prop_21 to SSD_BLK_SYS_001::OMS::IF_OMS_05;
        #refinement dependency <'FL-PROP-22>IF-RCS-20'> from PropulsionInterconnection::fl_prop_22 to SSD_BLK_SYS_001::ORB::IF_RCS_20;
        #refinement dependency <'FL-PROP-23>IF-GNC-14'> from PropulsionInterconnection::fl_prop_23 to SSD_BLK_SYS_001::ORB::IF_GNC_14;
        #refinement dependency <'FL-PROP-24>IF-GNC-14'> from PropulsionInterconnection::fl_prop_24 to SSD_BLK_SYS_001::ORB::IF_GNC_14;
        #refinement dependency <'FL-PROP-25>IF-RCS-03'> from PropulsionInterconnection::fl_prop_25 to SSD_BLK_SYS_001::RCS::IF_RCS_03;
        #refinement dependency <'FL-PROP-26>IF-RCS-03'> from PropulsionInterconnection::fl_prop_26 to SSD_BLK_SYS_001::RCS::IF_RCS_03;
        #refinement dependency <'FL-PROP-27>IF-ORB-04'> from PropulsionInterconnection::fl_prop_27 to SSD_BLK_SYS_001::ORB::IF_ORB_04;
        #refinement dependency <'FL-PROP-28>IF-OMS-17'> from PropulsionInterconnection::fl_prop_28 to SSD_BLK_SYS_001::ORB::IF_OMS_17;
        #refinement dependency <'FL-PROP-29>IF-OMS-12'> from PropulsionInterconnection::fl_prop_29 to SSD_BLK_SYS_001::ORB::IF_OMS_12;
        #refinement dependency <'FL-PROP-30>IF-RCS-09'> from PropulsionInterconnection::fl_prop_30 to SSD_BLK_SYS_001::ORB::IF_RCS_09;
        #refinement dependency <'FL-PROP-31>IF-RCS-10'> from PropulsionInterconnection::fl_prop_31 to SSD_BLK_SYS_001::ORB::IF_RCS_10;
        #refinement dependency <'FL-PROP-32>IF-OMS-19'> from PropulsionInterconnection::fl_prop_32 to SSD_BLK_SYS_001::ORB::IF_OMS_19;
        #refinement dependency <'FL-PROP-33>IF-RCS-08'> from PropulsionInterconnection::fl_prop_33 to SSD_BLK_SYS_001::RCS::IF_RCS_08;
        #refinement dependency <'FL-PROP-34>IF-RCS-07'> from PropulsionInterconnection::fl_prop_34 to SSD_BLK_SYS_001::RCS::IF_RCS_07;
        #refinement dependency <'FL-CT-01>IF-CT-01'> from CtRfInterconnection::fl_ct_01 to SSD_BLK_SYS_001::MissionContext::IF_CT_01;
        #refinement dependency <'FL-CT-02>IF-CT-01'> from CtRfInterconnection::fl_ct_02 to SSD_BLK_SYS_001::MissionContext::IF_CT_01;
        #refinement dependency <'FL-CT-03>IF-CT-01'> from CtRfInterconnection::fl_ct_03 to SSD_BLK_SYS_001::MissionContext::IF_CT_01;
        #refinement dependency <'FL-CT-04>IF-CT-01'> from CtRfInterconnection::fl_ct_04 to SSD_BLK_SYS_001::MissionContext::IF_CT_01;
        #refinement dependency <'FL-CT-12>IF-CT-14'> from CtRfInterconnection::fl_ct_12 to SSD_BLK_SYS_001::CT::IF_CT_14;
        #refinement dependency <'FL-CT-13>IF-CT-15'> from CtRfInterconnection::fl_ct_13 to SSD_BLK_SYS_001::CT::IF_CT_15;
        #refinement dependency <'FL-CT-14>IF-CT-05'> from CtRfInterconnection::fl_ct_14 to SSD_BLK_SYS_001::ORB::IF_CT_05;
        #refinement dependency <'FL-CT-15>IF-CT-06'> from CtRfInterconnection::fl_ct_15 to SSD_BLK_SYS_001::ORB::IF_CT_06;
        #refinement dependency <'FL-CT-16>IF-CT-23'> from CtRfInterconnection::fl_ct_16 to SSD_BLK_SYS_001::ORB::IF_CT_23;
        #refinement dependency <'FL-CT-17>IF-CT-23'> from CtRfInterconnection::fl_ct_17 to SSD_BLK_SYS_001::ORB::IF_CT_23;
        #refinement dependency <'FL-CT-18>IF-CT-21'> from CtRfInterconnection::fl_ct_18 to SSD_BLK_SYS_001::ORB::IF_CT_21;
        #refinement dependency <'FL-CT-19>IF-CT-18'> from CtRfInterconnection::fl_ct_19 to SSD_BLK_SYS_001::CT::IF_CT_18;
        #refinement dependency <'FL-CT-22>IF-CT-02'> from CtRfInterconnection::fl_ct_22 to SSD_BLK_SYS_001::MissionContext::IF_CT_02;
        #refinement dependency <'FL-CT-23>IF-CT-16'> from CtRfInterconnection::fl_ct_23 to SSD_BLK_SYS_001::CT::IF_CT_16;
        #refinement dependency <'FL-CT-24>IF-CT-16'> from CtRfInterconnection::fl_ct_24 to SSD_BLK_SYS_001::CT::IF_CT_16;
        #refinement dependency <'FL-CT-25>IF-CT-24'> from CtRfInterconnection::fl_ct_25 to SSD_BLK_SYS_001::ORB::IF_CT_24;
        #refinement dependency <'FL-CT-26>IF-CT-18'> from CtRfInterconnection::fl_ct_26 to SSD_BLK_SYS_001::CT::IF_CT_18;
        #refinement dependency <'FL-CT-28>IF-CT-03'> from CtRfInterconnection::fl_ct_28 to SSD_BLK_SYS_001::MissionContext::IF_CT_03;
        #refinement dependency <'FL-CT-29>IF-CT-03'> from CtRfInterconnection::fl_ct_29 to SSD_BLK_SYS_001::MissionContext::IF_CT_03;
        #refinement dependency <'FL-CT-32>IF-CT-08'> from CtRfInterconnection::fl_ct_32 to SSD_BLK_SYS_001::ORB::IF_CT_08;
        #refinement dependency <'FL-CT-33>IF-CT-17'> from CtRfInterconnection::fl_ct_33 to SSD_BLK_SYS_001::CT::IF_CT_17;
        #refinement dependency <'FL-CT-35>IF-CT-04'> from CtRfInterconnection::fl_ct_35 to SSD_BLK_SYS_001::MissionContext::IF_CT_04;
        #refinement dependency <'FL-CT-36>IF-CT-04'> from CtRfInterconnection::fl_ct_36 to SSD_BLK_SYS_001::MissionContext::IF_CT_04;
        #refinement dependency <'FL-CT-37>IF-CT-17'> from CtRfInterconnection::fl_ct_37 to SSD_BLK_SYS_001::CT::IF_CT_17;
        #refinement dependency <'FL-CT-39>IF-CT-10'> from CtRfInterconnection::fl_ct_39 to SSD_BLK_SYS_001::ORB::IF_CT_10;
        #refinement dependency <'FL-CT-40>IF-CT-07'> from CtRfInterconnection::fl_ct_40 to SSD_BLK_SYS_001::ORB::IF_CT_07;
        #refinement dependency <'FL-CT-41>IF-CT-19'> from CtRfInterconnection::fl_ct_41 to SSD_BLK_SYS_001::CT::IF_CT_19;
        #refinement dependency <'FL-CT-42>IF-CT-20'> from CtRfInterconnection::fl_ct_42 to SSD_BLK_SYS_001::CT::IF_CT_20;
        #refinement dependency <'FL-CT-43>IF-CT-25'> from CtRfInterconnection::fl_ct_43 to SSD_BLK_SYS_001::ORB::IF_CT_25;
    }
}
