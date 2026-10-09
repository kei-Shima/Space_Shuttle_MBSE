// SysML v2 テキスト：内部ブロック図（機器の接続と、流れる物・量と単位）
// SSD-EMU-EVA-001 EMU の構造・内部ブロック・状態定義書（PLSS・SOP・DCM・宇宙服、換気と冷却水の流れ、EMU とエアロックの状態） の表から生成（lib/build_docs_bm.py・rev_bm/bmdata.py、部品は lib/ibdmodel2.py）。値の根拠の頁は SSD-EMU-EVA-001 にある。
package SSD_EMU_EVA_001 {
    doc /* SSD-EMU-EVA-001 EMU の構造・内部ブロック・状態定義書（PLSS・SOP・DCM・宇宙服、換気と冷却水の流れ、EMU とエアロックの状態）。図180 と同じ部品・ポート・流れ・値。機器は本書の EMU の構造（Emu とその部品）の中に置き、流れはエアロック・C&T の IF を詳しくする（#refinement）。状態機械は EVA・ECL_ALS の部品の定義を特化して持たせる。 */
    private import SSD_BLK_SYS_001::*;
    private import ModelingMetadata::*;
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    private import SSD_BEH_ORB_005::PhaseMode;
    // ---- EMU の構造（PHY-EVA-01 の EMU の中の組立）
    part def EmuPlss {
        doc /* 主生命維持装置（PLSS） */
    }
    part def EmuSop {
        doc /* 二次酸素パック（SOP） */
    }
    part def EmuDcm {
        doc /* 表示制御モジュール（DCM） */
    }
    part def EmuSuit {
        doc /* 宇宙服組立（SSA：HUT・LTA・腕・手袋・ヘルメット） */
        part hut : EmuHut;
        part lta : EmuLta;
        part arms : EmuArms;
        part gloves : EmuGloves;
        part helmet : EmuHelmet;
    }
    part def EmuHut {
        doc /* 硬質上部胴体（HUT） */
    }
    part def EmuLta {
        doc /* 下部胴体組立（LTA） */
    }
    part def EmuArms {
        doc /* 腕組立（左右） */
    }
    part def EmuGloves {
        doc /* EV 手袋（左右、指先ヒータ） */
    }
    part def EmuHelmet {
        doc /* ヘルメット・EV バイザ組立（ベントパッド・ヘルメットパージ弁） */
    }
    part def EmuLcvg {
        doc /* 液冷換気服（LCVG） */
    }
    part def EmuCws {
        doc /* EMU 警報系（CWS） */
    }
    part def EmuComm {
        doc /* EV 通信機（EMU 無線・アンテナ・CCA） */
    }
    part def Emu :> SSD_ALC_SYS_001::Physical::PHY_EVA_01 {
        doc /* 船外活動ユニット（EMU）。機器配分表の PHY-EVA-01 の EMU の中の組立 */
        part plss : EmuPlss;
        part sop : EmuSop;
        part dcm : EmuDcm;
        part suit : EmuSuit;
        part lcvg : EmuLcvg;
        part cws : EmuCws;
        part comm : EmuComm;
    }
    // ---- 流れる物（既存の種別を特化し、量を属性に持つ）とポート定義
    item def EmuOxygen :> Fluid {
        doc /* EMU の酸素（一次 O2・SOP・SCU の補給、調圧後の補給の O2、パージで機外へ出る O2）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute mass : MassValue[0..*] { doc /* 質量（資料の単位 lb） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
    }
    port def EmuOxygenPort :> FluidPort { out item :>> fluid : EmuOxygen; }
    item def EmuVentGas :> Fluid {
        doc /* 換気ガス（宇宙服の O2 換気ループ。CO2・水蒸気・熱を運ぶ）（推進薬・流体） */
        attribute volumeFlowRate : VolumeFlowRateValue[0..*] { doc /* 体積流量（資料の単位 ft3/min） */ }
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psid） */ }
        attribute co2PartialPressure : Real[0..*] { doc /* 数値（資料の単位 mmHg） */ }
    }
    port def EmuVentGasPort :> FluidPort { out item :>> fluid : EmuVentGas; }
    item def EmuTransportWater :> Fluid {
        doc /* 輸送水（LCVG の冷却水ループ）（推進薬・流体） */
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def EmuTransportWaterPort :> FluidPort { out item :>> fluid : EmuTransportWater; }
    item def EmuFeedwater :> Fluid {
        doc /* 給水（給水タンクの水・凝縮水・SCU の補給水・昇華して機外へ出る水）（推進薬・流体） */
        attribute mass : MassValue[0..*] { doc /* 質量（資料の単位 lb） */ }
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psid） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/h） */ }
    }
    port def EmuFeedwaterPort :> FluidPort { out item :>> fluid : EmuFeedwater; }
    item def EmuMetabolicHeat :> Heat {
        doc /* 乗員の代謝熱（LCVG と換気ガスで運ぶ）（熱） */
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 Btu/h） */ }
    }
    port def EmuMetabolicHeatPort :> HeatPort { out item :>> heat : EmuMetabolicHeat; }
    item def EmuDcPower :> ElectricPower {
        doc /* EMU の直流電力（電池・SCU 経由のオービタ電力）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
        attribute current : ElectricCurrentValue[0..*] { doc /* 電流（資料の単位 A） */ }
        attribute charge : Real[0..*] { doc /* 数値（資料の単位 Ah） */ }
    }
    port def EmuDcPowerPort :> PowerPort { out item :>> electricPower : EmuDcPower; }
    item def EmuDataSignal :> DataCommand {
        doc /* EMU の信号（センサ値・警報・表示・有線の音声と生体データ）（データ・指令） */
    }
    port def EmuDataSignalPort :> DataPort { out item :>> dataCommand : EmuDataSignal; }
    item def EmuUhfLink :> RfSignal {
        doc /* EMU の UHF 無線（音声・ECG／RTDS テレメトリ）（RF（無線）） */
        attribute frequency : FrequencyValue[0..*] { doc /* 周波数（資料の単位 MHz） */ }
        attribute power : PowerValue[0..*] { doc /* 電力・熱流量（資料の単位 W） */ }
    }
    port def EmuUhfLinkPort :> RfPort { out item :>> rfSignal : EmuUhfLink; }
    // ---- 図180 EMU 内部ブロック図（換気・冷却水・電力・通信）：機器
    part def <'EQ-EMU-01'> PrimaryO2Tanks {
        doc /* 一次 O2 タンク（2本）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_01 : ~EmuOxygenPort;
        port o_FL_EMU_02 : EmuOxygenPort;
    }
    part def <'EQ-EMU-02'> PrimaryO2RegulatorAssy {
        doc /* 一次 O2 調圧器組立（O2 アクチュエータ・遮断弁・流量制限器・宇宙服調圧器・水圧調圧器・二重モード逃がし弁）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_02 : ~EmuOxygenPort;
        port o_FL_EMU_03 : EmuOxygenPort;
        port o_FL_EMU_04 : EmuOxygenPort;
    }
    part def <'EQ-EMU-03'> SecondaryOxygenPack {
        doc /* 二次酸素パック（SOP：O2 タンク2個・一次段／二次段調圧器・中間圧計）（機能ブロック EMU の 二次酸素パック（SOP）） */
        port o_FL_EMU_05 : EmuOxygenPort;
    }
    part def <'EQ-EMU-04'> HelmetAssembly {
        doc /* ヘルメット（ベントパッド・ヘルメットパージ弁）（機能ブロック EMU の 宇宙服組立（SSA：HUT・LTA・腕・手袋・ヘルメット）） */
        port i_FL_EMU_03 : ~EmuOxygenPort;
        port i_FL_EMU_05 : ~EmuOxygenPort;
        port o_FL_EMU_06 : EmuVentGasPort;
        port i_FL_EMU_14 : ~EmuVentGasPort;
    }
    part def <'EQ-EMU-05'> SuitPressureVolume {
        doc /* 宇宙服の与圧容器（HUT・腕・手袋・LTA）の中の体のまわりの空間（機能ブロック EMU の 宇宙服組立（SSA：HUT・LTA・腕・手袋・ヘルメット）） */
        port i_FL_EMU_06 : ~EmuVentGasPort;
        port o_FL_EMU_07 : EmuVentGasPort;
        port o_FL_EMU_15 : EmuOxygenPort;
    }
    part def <'EQ-EMU-06'> LcvgGarment {
        doc /* LCVG（冷却水の管の網・換気ダクトの網・多連水コネクタ）（機能ブロック EMU の 液冷換気服（LCVG）） */
        port i_FL_EMU_07 : ~EmuVentGasPort;
        port o_FL_EMU_08 : EmuVentGasPort;
        port i_FL_EMU_16 : ~EmuMetabolicHeatPort;
        port i_FL_EMU_24 : ~EmuTransportWaterPort;
        port o_FL_EMU_25 : EmuTransportWaterPort;
    }
    part def <'EQ-EMU-07'> ContaminantControlCartridge {
        doc /* 汚染物質除去カートリッジ（CCC：LiOH 床・活性炭床・粒子フィルタ）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_08 : ~EmuVentGasPort;
        port o_FL_EMU_09 : EmuVentGasPort;
    }
    part def <'EQ-EMU-08'> VentFan {
        doc /* 換気ファン（ファン／ポンプ／分離器組立 項目123 のファン部）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_09 : ~EmuVentGasPort;
        port o_FL_EMU_10 : EmuVentGasPort;
        port i_FL_EMU_12 : ~EmuVentGasPort;
    }
    part def <'EQ-EMU-09'> WaterSeparator {
        doc /* 水分離器（回転ドラム・ピトー、ピトー作動弁）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_11 : ~EmuVentGasPort;
        port o_FL_EMU_12 : EmuVentGasPort;
        port o_FL_EMU_17 : EmuFeedwaterPort;
        port i_FL_EMU_21 : ~EmuTransportWaterPort;
    }
    part def <'EQ-EMU-10'> WaterPump {
        doc /* 水ポンプ（遠心ポンプ、モータ軸に磁気結合）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port o_FL_EMU_20 : EmuTransportWaterPort;
        port i_FL_EMU_25 : ~EmuTransportWaterPort;
        port o_FL_EMU_28 : EmuTransportWaterPort;
    }
    part def <'EQ-EMU-11'> Sublimator {
        doc /* 昇華器（スラーパ付き、輸送水と換気ガスの熱交換器）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_10 : ~EmuVentGasPort;
        port o_FL_EMU_11 : EmuVentGasPort;
        port o_FL_EMU_13 : EmuVentGasPort;
        port i_FL_EMU_18 : ~EmuFeedwaterPort;
        port o_FL_EMU_19 : EmuFeedwaterPort;
        port i_FL_EMU_23 : ~EmuTransportWaterPort;
        port o_FL_EMU_24 : EmuTransportWaterPort;
        port i_FL_EMU_29 : ~EmuTransportWaterPort;
    }
    part def <'EQ-EMU-12'> VentFlowSensorCheckValve {
        doc /* 換気流量センサ・逆流防止弁（項目121）と CO2 センサ（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_13 : ~EmuVentGasPort;
        port o_FL_EMU_14 : EmuVentGasPort;
        port o_FL_EMU_33 : EmuDataSignalPort;
    }
    part def <'EQ-EMU-13'> FeedwaterTanks {
        doc /* 給水タンク（一次2・予備1）と給水調圧器・給水遮断弁（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_04 : ~EmuOxygenPort;
        port i_FL_EMU_17 : ~EmuFeedwaterPort;
        port o_FL_EMU_18 : EmuFeedwaterPort;
        port i_FL_EMU_26 : ~EmuFeedwaterPort;
        port o_FL_EMU_27 : EmuFeedwaterPort;
    }
    part def <'EQ-EMU-14'> TemperatureControlValve {
        doc /* 温度制御弁（冷却制御弁 項目321、DCM）（機能ブロック EMU の 表示制御モジュール（DCM）） */
        port i_FL_EMU_22 : ~EmuTransportWaterPort;
        port o_FL_EMU_23 : EmuTransportWaterPort;
    }
    part def <'EQ-EMU-15'> GasTrap {
        doc /* ガストラップ（項目141、細かい網の円筒スクリーン）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port i_FL_EMU_20 : ~EmuTransportWaterPort;
        port o_FL_EMU_21 : EmuTransportWaterPort;
        port o_FL_EMU_22 : EmuTransportWaterPort;
    }
    part def <'EQ-EMU-16'> EmuBattery {
        doc /* EMU 電池（銀亜鉛 11セル直列、項目490）（機能ブロック EMU の 主生命維持装置（PLSS）） */
        port o_FL_EMU_31 : EmuDcPowerPort;
    }
    part def <'EQ-EMU-17'> DcmElectronicsControls {
        doc /* DCM（制御スイッチ・表示器・電子機器・DCM パージ弁・SCU の共通コネクタ）（機能ブロック EMU の 表示制御モジュール（DCM）） */
        port i_FL_EMU_30 : ~EmuDcPowerPort;
        port i_FL_EMU_31 : ~EmuDcPowerPort;
        port i_FL_EMU_32 : ~EmuDataSignalPort;
        port i_FL_EMU_34 : ~EmuDataSignalPort;
    }
    part def <'EQ-EMU-18'> CwsProcessor {
        doc /* EMU 警報系（CWS）のマイクロプロセッサ（BITE 付き）（機能ブロック EMU の EMU 警報系（CWS）） */
        port i_FL_EMU_33 : ~EmuDataSignalPort;
        port o_FL_EMU_34 : EmuDataSignalPort;
    }
    part def <'EQ-EMU-19'> EmuRadio {
        doc /* EMU 無線（UHF/AM 送受信機）とアンテナ、CCA（マイクロホン・イヤホン）（機能ブロック EMU の EV 通信機（EMU 無線・アンテナ・CCA）） */
        port o_FL_EMU_35 : EmuUhfLinkPort;
    }
    // ---- 図180 EMU 内部ブロック図（換気・冷却水・電力・通信）：接続（EmuInterconnection は Emu を特化）
    part def EmuInterconnection :> Emu {
        doc /* EMU（換気の O2 ループ・液体冷却・電力・通信）の内部ブロック図（図180）。基の機能ブロック SSD-EMU-EVA-001。 */
        part redefines plss {
            part primaryO2Tanks[2] : PrimaryO2Tanks;
            part primaryO2RegulatorAssy : PrimaryO2RegulatorAssy;
            part contaminantControlCartridge : ContaminantControlCartridge;
            part ventFan : VentFan;
            part waterSeparator : WaterSeparator;
            part waterPump : WaterPump;
            part sublimator : Sublimator;
            part ventFlowSensorCheckValve : VentFlowSensorCheckValve;
            part feedwaterTanks[3] : FeedwaterTanks;
            part gasTrap : GasTrap;
            part emuBattery : EmuBattery;
        }
        part redefines sop {
            part secondaryOxygenPack : SecondaryOxygenPack;
        }
        part redefines suit {
            part helmetAssembly : HelmetAssembly;
            part suitPressureVolume : SuitPressureVolume;
        }
        part redefines lcvg {
            part lcvgGarment : LcvgGarment;
        }
        part redefines dcm {
            part temperatureControlValve : TemperatureControlValve;
            part dcmElectronicsControls : DcmElectronicsControls;
        }
        part redefines cws {
            part cwsProcessor : CwsProcessor;
        }
        part redefines comm {
            part emuRadio : EmuRadio;
        }
        port b_FL_EMU_01 : ~EmuOxygenPort { doc /* 枠の外の相手 EB-EMU-01（エアロック支援系の SCU（高圧 O2 ホース：PLSS の O2 の補給、IV 中の O2）） */ }
        port b_FL_EMU_15 : EmuOxygenPort { doc /* 枠の外の相手 EB-EMU-06（宇宙空間（昇華器の水蒸気、パージ弁からの O2 の排出）） */ }
        port b_FL_EMU_16 : ~EmuMetabolicHeatPort { doc /* 枠の外の相手 EB-EMU-07（EVA 乗員（代謝熱・CO2・水分）） */ }
        port b_FL_EMU_19 : EmuFeedwaterPort { doc /* 枠の外の相手 EB-EMU-06（宇宙空間（昇華器の水蒸気、パージ弁からの O2 の排出）） */ }
        port b_FL_EMU_26 : ~EmuFeedwaterPort { doc /* 枠の外の相手 EB-EMU-02（エアロック支援系の SCU（水ホース：給水の補給・廃水の排出）） */ }
        port b_FL_EMU_27 : EmuFeedwaterPort { doc /* 枠の外の相手 EB-EMU-02（エアロック支援系の SCU（水ホース：給水の補給・廃水の排出）） */ }
        port b_FL_EMU_28 : EmuTransportWaterPort { doc /* 枠の外の相手 EB-EMU-04（エアロックの LCVG 熱交換器（オービタの水冷却ループで冷やす LCVG 冷却ループ）） */ }
        port b_FL_EMU_29 : ~EmuTransportWaterPort { doc /* 枠の外の相手 EB-EMU-04（エアロックの LCVG 熱交換器（オービタの水冷却ループで冷やす LCVG 冷却ループ）） */ }
        port b_FL_EMU_30 : ~EmuDcPowerPort { doc /* 枠の外の相手 EB-EMU-03（エアロック支援系の SCU（電線：EMU 電源・電池充電器（パネル AW18H）、有線通信）） */ }
        port b_FL_EMU_32 : ~EmuDataSignalPort { doc /* 枠の外の相手 EB-EMU-03（エアロック支援系の SCU（電線：EMU 電源・電池充電器（パネル AW18H）、有線通信）） */ }
        port b_FL_EMU_35 : EmuUhfLinkPort { doc /* 枠の外の相手 EB-EMU-05（オービタの UHF 系（EVA/ATC 送受信機・アンテナ）） */ }
        flow <'FL-EMU-01'> fl_emu_01 from b_FL_EMU_01.fluid to plss.primaryO2Tanks.i_FL_EMU_01.fluid {
            item :>> payload : EmuOxygen {
                attribute pressureNominal :> pressure = 850 ['lbf/in²'] { doc /* 圧力 850 psig（800〜900 psig）（ゲージ圧） */ }
                attribute pressureMin :> pressure = 800 ['lbf/in²'] { doc /* 圧力 850 psig（800〜900 psig）（ゲージ圧） */ }
                attribute pressureMax :> pressure = 900 ['lbf/in²'] { doc /* 圧力 850 psig（800〜900 psig）（ゲージ圧） */ }
            }
        }
        flow <'FL-EMU-02'> fl_emu_02 from plss.primaryO2Tanks.o_FL_EMU_02.fluid to plss.primaryO2RegulatorAssy.i_FL_EMU_02.fluid {
            item :>> payload : EmuOxygen {
                attribute pressure1Nominal :> pressure = 850 ['lbf/in²'] { doc /* 圧力 850 psia（絶対圧） */ }
                attribute pressure2Min :> pressure = 150 ['lbf/in²'] { doc /* 圧力 150〜950 psia（絶対圧） */ }
                attribute pressure2Max :> pressure = 950 ['lbf/in²'] { doc /* 圧力 150〜950 psia（絶対圧） */ }
                attribute massNominal :> mass = 1.217 [lb] { doc /* 質量 1.217 lb */ }
            }
        }
        flow <'FL-EMU-03'> fl_emu_03 from plss.primaryO2RegulatorAssy.o_FL_EMU_03.fluid to suit.helmetAssembly.i_FL_EMU_03.fluid {
            item :>> payload : EmuOxygen {
                attribute pressureNominal :> pressure = 4.3 ['lbf/in²'] { doc /* 圧力 4.3 psid（4.2〜4.4 psid）（差圧） */ }
                attribute pressureMin :> pressure = 4.2 ['lbf/in²'] { doc /* 圧力 4.3 psid（4.2〜4.4 psid）（差圧） */ }
                attribute pressureMax :> pressure = 4.4 ['lbf/in²'] { doc /* 圧力 4.3 psid（4.2〜4.4 psid）（差圧） */ }
                attribute massFlowRateMin :> massFlowRate = 0.02 ['lb/h'] { doc /* 質量流量 0.02〜0.33 lb/h */ }
                attribute massFlowRateMax :> massFlowRate = 0.33 ['lb/h'] { doc /* 質量流量 0.02〜0.33 lb/h */ }
            }
        }
        flow <'FL-EMU-04'> fl_emu_04 from plss.primaryO2RegulatorAssy.o_FL_EMU_04.fluid to plss.feedwaterTanks.i_FL_EMU_04.fluid {
            item :>> payload : EmuOxygen {
                attribute pressureMin :> pressure = 14.0 ['lbf/in²'] { doc /* 圧力 14〜16 psid（差圧） */ }
                attribute pressureMax :> pressure = 16.0 ['lbf/in²'] { doc /* 圧力 14〜16 psid（差圧） */ }
            }
        }
        flow <'FL-EMU-05'> fl_emu_05 from sop.secondaryOxygenPack.o_FL_EMU_05.fluid to suit.helmetAssembly.i_FL_EMU_05.fluid {
            item :>> payload : EmuOxygen {
                attribute pressureMin :> pressure = 3.33 ['lbf/in²'] { doc /* 圧力 3.33〜3.9 psid（差圧） */ }
                attribute pressureMax :> pressure = 3.9 ['lbf/in²'] { doc /* 圧力 3.33〜3.9 psid（差圧） */ }
                attribute massFlowRateMax :> massFlowRate = 4.9 ['lb/h'] { doc /* 質量流量 最大 4.9 lb/h */ }
            }
        }
        flow <'FL-EMU-06'> fl_emu_06 from suit.helmetAssembly.o_FL_EMU_06.fluid to suit.suitPressureVolume.i_FL_EMU_06.fluid {
            item :>> payload : EmuVentGas {
                attribute volumeFlowRateMin :> volumeFlowRate = 6 ['ft³/min'] { doc /* 体積流量 6〜8 ft3/min */ }
                attribute volumeFlowRateMax :> volumeFlowRate = 8 ['ft³/min'] { doc /* 体積流量 6〜8 ft3/min */ }
                attribute pressureNominal :> pressure = 4.3 ['lbf/in²'] { doc /* 圧力 4.3 psid（4.2〜4.4 psid）（差圧） */ }
                attribute pressureMin :> pressure = 4.2 ['lbf/in²'] { doc /* 圧力 4.3 psid（4.2〜4.4 psid）（差圧） */ }
                attribute pressureMax :> pressure = 4.4 ['lbf/in²'] { doc /* 圧力 4.3 psid（4.2〜4.4 psid）（差圧） */ }
            }
        }
        flow <'FL-EMU-07'> fl_emu_07 of EmuVentGas from suit.suitPressureVolume.o_FL_EMU_07.fluid to lcvg.lcvgGarment.i_FL_EMU_07.fluid;
        flow <'FL-EMU-08'> fl_emu_08 of EmuVentGas from lcvg.lcvgGarment.o_FL_EMU_08.fluid to plss.contaminantControlCartridge.i_FL_EMU_08.fluid;
        flow <'FL-EMU-09'> fl_emu_09 of EmuVentGas from plss.contaminantControlCartridge.o_FL_EMU_09.fluid to plss.ventFan.i_FL_EMU_09.fluid;
        flow <'FL-EMU-10'> fl_emu_10 of EmuVentGas from plss.ventFan.o_FL_EMU_10.fluid to plss.sublimator.i_FL_EMU_10.fluid;
        flow <'FL-EMU-11'> fl_emu_11 of EmuVentGas from plss.sublimator.o_FL_EMU_11.fluid to plss.waterSeparator.i_FL_EMU_11.fluid;
        flow <'FL-EMU-12'> fl_emu_12 of EmuVentGas from plss.waterSeparator.o_FL_EMU_12.fluid to plss.ventFan.i_FL_EMU_12.fluid;
        flow <'FL-EMU-13'> fl_emu_13 of EmuVentGas from plss.sublimator.o_FL_EMU_13.fluid to plss.ventFlowSensorCheckValve.i_FL_EMU_13.fluid;
        flow <'FL-EMU-14'> fl_emu_14 from plss.ventFlowSensorCheckValve.o_FL_EMU_14.fluid to suit.helmetAssembly.i_FL_EMU_14.fluid {
            item :>> payload : EmuVentGas {
                attribute co2PartialPressureMin :> co2PartialPressure = 0.2 { doc /* 数値 0.2〜4 mmHg */ }
                attribute co2PartialPressureMax :> co2PartialPressure = 4.0 { doc /* 数値 0.2〜4 mmHg */ }
            }
        }
        flow <'FL-EMU-15'> fl_emu_15 from suit.suitPressureVolume.o_FL_EMU_15.fluid to b_FL_EMU_15.fluid {
            item :>> payload : EmuOxygen {
                attribute massFlowRate1Max :> massFlowRate = 4.9 ['lb/h'] { doc /* 質量流量 最大 4.9 lb/h */ }
                attribute massFlowRate2Nominal :> massFlowRate = 2.5 ['lb/h'] { doc /* 質量流量 2.5 lb/h */ }
            }
        }
        flow <'FL-EMU-16'> fl_emu_16 from b_FL_EMU_16.heat to lcvg.lcvgGarment.i_FL_EMU_16.heat {
            item :>> payload : EmuMetabolicHeat {
                attribute power1Min :> power = 400 ['Btu_IT/h'] { doc /* 電力・熱流量 400〜2,000 Btu/h */ }
                attribute power1Max :> power = 2000 ['Btu_IT/h'] { doc /* 電力・熱流量 400〜2,000 Btu/h */ }
                attribute power2Max :> power = 1000 ['Btu_IT/h'] { doc /* 電力・熱流量 最大 1,000 Btu/h */ }
            }
        }
        flow <'FL-EMU-17'> fl_emu_17 from plss.waterSeparator.o_FL_EMU_17.fluid to plss.feedwaterTanks.i_FL_EMU_17.fluid {
            item :>> payload : EmuFeedwater {
                attribute pressureMax :> pressure = 25 ['lbf/in²'] { doc /* 圧力 最大 25 psid（差圧） */ }
            }
        }
        flow <'FL-EMU-18'> fl_emu_18 from plss.feedwaterTanks.o_FL_EMU_18.fluid to plss.sublimator.i_FL_EMU_18.fluid {
            item :>> payload : EmuFeedwater {
                attribute pressureMin :> pressure = 14.0 ['lbf/in²'] { doc /* 圧力 14〜16 psid（差圧） */ }
                attribute pressureMax :> pressure = 16.0 ['lbf/in²'] { doc /* 圧力 14〜16 psid（差圧） */ }
            }
        }
        flow <'FL-EMU-19'> fl_emu_19 from plss.sublimator.o_FL_EMU_19.fluid to b_FL_EMU_19.fluid {
            item :>> payload : EmuFeedwater {
                attribute massFlowRateNominal :> massFlowRate = 1.69 ['lb/h'] { doc /* 質量流量 1.69 lb/h */ }
            }
        }
        flow <'FL-EMU-20'> fl_emu_20 from plss.waterPump.o_FL_EMU_20.fluid to plss.gasTrap.i_FL_EMU_20.fluid {
            item :>> payload : EmuTransportWater {
                attribute massFlowRateNominal :> massFlowRate = 240 ['lb/h'] { doc /* 質量流量 240 lb/h */ }
            }
        }
        flow <'FL-EMU-21'> fl_emu_21 of EmuTransportWater from plss.gasTrap.o_FL_EMU_21.fluid to plss.waterSeparator.i_FL_EMU_21.fluid;
        flow <'FL-EMU-22'> fl_emu_22 of EmuTransportWater from plss.gasTrap.o_FL_EMU_22.fluid to dcm.temperatureControlValve.i_FL_EMU_22.fluid;
        flow <'FL-EMU-23'> fl_emu_23 of EmuTransportWater from dcm.temperatureControlValve.o_FL_EMU_23.fluid to plss.sublimator.i_FL_EMU_23.fluid;
        flow <'FL-EMU-24'> fl_emu_24 from plss.sublimator.o_FL_EMU_24.fluid to lcvg.lcvgGarment.i_FL_EMU_24.fluid {
            item :>> payload : EmuTransportWater {
                attribute temperatureMin :> temperature = 32 ['°F_abs'] { doc /* 温度 32〜75°F */ }
                attribute temperatureMax :> temperature = 75 ['°F_abs'] { doc /* 温度 32〜75°F */ }
            }
        }
        flow <'FL-EMU-25'> fl_emu_25 of EmuTransportWater from lcvg.lcvgGarment.o_FL_EMU_25.fluid to plss.waterPump.i_FL_EMU_25.fluid;
        flow <'FL-EMU-26'> fl_emu_26 from b_FL_EMU_26.fluid to plss.feedwaterTanks.i_FL_EMU_26.fluid {
            item :>> payload : EmuFeedwater {
                attribute massNominal :> mass = 9 [lb] { doc /* 質量 9 lb */ }
            }
        }
        flow <'FL-EMU-27'> fl_emu_27 of EmuFeedwater from plss.feedwaterTanks.o_FL_EMU_27.fluid to b_FL_EMU_27.fluid;
        flow <'FL-EMU-28'> fl_emu_28 from plss.waterPump.o_FL_EMU_28.fluid to b_FL_EMU_28.fluid {
            item :>> payload : EmuTransportWater {
                attribute massFlowRateNominal :> massFlowRate = 240 ['lb/h'] { doc /* 質量流量 240 lb/h */ }
            }
        }
        flow <'FL-EMU-29'> fl_emu_29 of EmuTransportWater from b_FL_EMU_29.fluid to plss.sublimator.i_FL_EMU_29.fluid;
        flow <'FL-EMU-30'> fl_emu_30 from b_FL_EMU_30.electricPower to dcm.dcmElectronicsControls.i_FL_EMU_30.electricPower {
            item :>> payload : EmuDcPower {
                attribute currentMin :> current = 1.5 [A] { doc /* 電流 1.5〜5 A */ }
                attribute currentMax :> current = 5.0 [A] { doc /* 電流 1.5〜5 A */ }
            }
        }
        flow <'FL-EMU-31'> fl_emu_31 from plss.emuBattery.o_FL_EMU_31.electricPower to dcm.dcmElectronicsControls.i_FL_EMU_31.electricPower {
            item :>> payload : EmuDcPower {
                attribute voltageMin :> voltage = 21.6 [V] { doc /* 電圧 21.6〜21.9 V */ }
                attribute voltageMax :> voltage = 21.9 [V] { doc /* 電圧 21.6〜21.9 V */ }
                attribute chargeMin :> charge = 32 { doc /* 数値 最小 32 Ah */ }
                attribute currentMin :> current = 3.0 [A] { doc /* 電流 3〜4 A */ }
                attribute currentMax :> current = 4.0 [A] { doc /* 電流 3〜4 A */ }
            }
        }
        flow <'FL-EMU-32'> fl_emu_32 of EmuDataSignal from b_FL_EMU_32.dataCommand to dcm.dcmElectronicsControls.i_FL_EMU_32.dataCommand;
        flow <'FL-EMU-33'> fl_emu_33 of EmuDataSignal from plss.ventFlowSensorCheckValve.o_FL_EMU_33.dataCommand to cws.cwsProcessor.i_FL_EMU_33.dataCommand;
        flow <'FL-EMU-34'> fl_emu_34 of EmuDataSignal from cws.cwsProcessor.o_FL_EMU_34.dataCommand to dcm.dcmElectronicsControls.i_FL_EMU_34.dataCommand;
        flow <'FL-EMU-35'> fl_emu_35 from comm.emuRadio.o_FL_EMU_35.rfSignal to b_FL_EMU_35.rfSignal {
            item :>> payload : EmuUhfLink {
                attribute frequency1Nominal :> frequency = 2.597E8 [Hz] { doc /* 周波数 259.7 MHz（Hz に換算） */ }
                attribute frequency2Nominal :> frequency = 2.968E8 [Hz] { doc /* 周波数 296.8 MHz（Hz に換算） */ }
                attribute powerNominal :> power = 0.25 [W] { doc /* 電力・熱流量 0.25 W */ }
            }
        }
    }
    // ---- 流れ → IF（詳細化）
    package FlowRefinement {
        #refinement dependency <'FL-EMU-01>IF-ALS-06'> from EmuInterconnection::fl_emu_01 to SSD_BLK_SYS_001::ORB::IF_ALS_06;
        #refinement dependency <'FL-EMU-26>IF-ALS-06'> from EmuInterconnection::fl_emu_26 to SSD_BLK_SYS_001::ORB::IF_ALS_06;
        #refinement dependency <'FL-EMU-27>IF-ALS-06'> from EmuInterconnection::fl_emu_27 to SSD_BLK_SYS_001::ORB::IF_ALS_06;
        #refinement dependency <'FL-EMU-28>IF-ALS-07'> from EmuInterconnection::fl_emu_28 to SSD_BLK_SYS_001::ORB::IF_ALS_07;
        #refinement dependency <'FL-EMU-29>IF-ALS-07'> from EmuInterconnection::fl_emu_29 to SSD_BLK_SYS_001::ORB::IF_ALS_07;
        #refinement dependency <'FL-EMU-30>IF-ALS-06'> from EmuInterconnection::fl_emu_30 to SSD_BLK_SYS_001::ORB::IF_ALS_06;
        #refinement dependency <'FL-EMU-32>IF-ALS-06'> from EmuInterconnection::fl_emu_32 to SSD_BLK_SYS_001::ORB::IF_ALS_06;
        #refinement dependency <'FL-EMU-35>IF-CT-10'> from EmuInterconnection::fl_emu_35 to SSD_BLK_SYS_001::ORB::IF_CT_10;
    }
    item def EmuEv01 { doc /* 事象：EMU 点検の開始：SCU を DCM につなぎ PWR を BATT にしてからエアロックの EMU 給電を入れる */ }
    item def EmuEv02 { doc /* 事象：着用準備（PWR を BATT にして表示・トーンを試験した後 PWR を SCU）と着用（55 分） */ }
    item def EmuEv03 { doc /* 事象：漏れ点検に合格 → O2 ACT を PRESS にしパージ弁を開いて窒素パージ（10.2 psi で 8 分・14.7 psi で 12 分）、前呼吸の時計を始める */ }
    item def EmuEv04 { doc /* 事象：POST DEPRESS：PWR を BATT（EV WARN TONE、PET 00:00）、SCU を外し WATER を ON */ }
    item def EmuEv05 { doc /* 事象：SUIT P LOW（服圧 4.05 未満） */ }
    item def EmuEv06 { doc /* 事象：O2 USE HIGH（O2 RATE 10.2 psi/min 超、または O2 P 150 未満で TIME EV 5 時間未満） */ }
    item def EmuEv07 { doc /* 事象：MONITOR CO2（PPCO2 8.0 mm 超）・CO2 HIGH（12.4 mm 超） */ }
    item def EmuEv08 { doc /* 事象：NO VENT FLOW（換気流量 3.7 cfm 未満） */ }
    item def EmuEv09 { doc /* 事象：BATT VDC LOW（電池電圧 16.5 V 未満） */ }
    item def EmuEv10 { doc /* 事象：センサの故障と判定、または処置（FAN の入れ直し・O2 の再充填など）で回復 → EVA を続ける */ }
    item def EmuEv11 { doc /* 事象：服圧が 3.9 psid 未満になり SOP が自動で作動（SOP O2 ON：服圧 4.05 未満かつ SOP RATE 36.0 psi/min 超）→ ABORT EVA */ }
    item def EmuEv12 { doc /* 事象：SUIT P EMERG（服圧 3.1 未満）→ パージ弁の閉と O2 ACT の EVA を確かめて ABORT EVA */ }
    item def EmuEv13 { doc /* 事象：ヘルメットのパージ弁を開く（ファンが再起動しない NO VENT FLOW、CO2 HIGH、冷却の喪失で SCU をつなげない） */ }
    item def EmuEv14 { doc /* 事象：ABORT EVA：エアロックに入り外部ハッチを閉じて緊急再与圧（ALKT-13）→ SCU をつなぐ */ }
    item def EmuEv15 { doc /* 事象：TERMINATE EVA：エアロックに入り SCU をつなぎ PWR を SCU、WATER を OFF */ }
    item def EmuEv16 { doc /* 事象：作業の終了、または制限の消耗品の残り 30 分（TIME LF）→ エアロックに入り SCU をつなぎ WATER を OFF */ }
    item def EmuEv17 { doc /* 事象：真空中の給水を終えて DEPRESS の手順 11 から再び外へ出る */ }
    item def EmuEv18 { doc /* 事象：再与圧と気密の確認の後 O2 ACT を IV → POST EVA（O2 ACT を OFF、パージ弁を開、服圧 0.4 未満で手袋・ヘルメットを外す） */ }
    item def EmuEv19 { doc /* 事象：減圧症（カフ 2〜4）→ O2 ACT を PRESS のまま再与圧、乗員室を 14.7 psia へ、BTA を付ける */ }
    item def EmuEv20 { doc /* 事象：EVA 後の保守：O2 の再充填（O2 P 約 850）、給水（WP 8〜15 psi で約 30 秒安定）、電池・LiOH の交換 */ }
    item def EmuEv21 { doc /* 事象：次の EVA の着用準備 */ }
    item def EmuEv22 { doc /* 事象：EVA 後の帰還準備：EMU O2 隔離弁・EV O2 弁を閉じ、LTA 拘束袋を付けて収納 */ }
    item def AlkEv01 { doc /* 事象：乗員室ごと 10.2 psia へ減圧（AIRLK DEPRESS 弁 5、通常2回開き約 30 分） */ }
    item def AlkEv02 { doc /* 事象：乗員室を 14.7 psia へ再与圧（WCS の使用を止める） */ }
    item def AlkEv03 { doc /* 事象：減圧の準備：乗員がエアロックを出て内側ハッチを閉じて施錠、内側の均圧弁2個を OFF、減圧弁のキャップを外す */ }
    item def AlkEv04 { doc /* 事象：AIRLK DEPRESS 弁を 5（EV ALERT TONE） */ }
    item def AlkEv05 { doc /* 事象：エアロック 5.0 で AIRLK DEPRESS 弁を CL → DCM の LEAK CHECK */ }
    item def AlkEv06 { doc /* 事象：RLF V FAIL（服圧 5.7 超、STOP DEPRESS）または服圧計 5.5 超 → 減圧を止め MCC に確かめる */ }
    item def AlkEv07 { doc /* 事象：漏れ点検に合格、O2 ACT を EVA → AIRLK DEPRESS 弁を 0 */ }
    item def AlkEv08 { doc /* 事象：RLF V FAIL（服圧 5.7 超、STOP DEPRESS）→ AIRLK DEPRESS 弁を CL、MCC に連絡 */ }
    item def AlkEv09 { doc /* 事象：LEAKAGE HI → FAILED LEAK CHECK（5 PSI）で再点検にも不合格 → 内側ハッチの均圧弁を NORM、差圧 0.5 未満で内側ハッチを開く */ }
    item def AlkEv10 { doc /* 事象：dP/dT が約 0、外部ハッチの差圧 0.5 未満で外部ハッチを開き、AIRLK DEPRESS 弁を CL */ }
    item def AlkEv11 { doc /* 事象：再与圧の準備：外部ハッチを閉じて施錠、SCU 接続・WATER OFF 2 分 → O2 ACT を PRESS、内側ハッチの均圧弁1個を NORM */ }
    item def AlkEv12 { doc /* 事象：5.0 で均圧弁を OFF、2 分で ΔP 0.1 psi 以下を確かめ、均圧弁を NORM、dP/dT 約 0 → 差圧 0.5 未満で内側ハッチを開く */ }
    item def AlkEv13 { doc /* 事象：ABORT EVA：外部ハッチを閉じて施錠、内側ハッチの均圧弁2個を EMER（CWS の表示は無視） */ }
    item def AlkEv14 { doc /* 事象：内側ハッチを開き POST EMERGENCY AIRLOCK REPRESS へ */ }
    item def AlkEv15 { doc /* 事象：気密の確認でエアロック圧が下がる（ハッチの漏れ 0.2 psi/min 超）→ EVA 能力の喪失 */ }
    item def AlkEv16 { doc /* 事象：帰還準備で外部ハッチの漏れが疑わしい → 内側ハッチの均圧弁を OFF にしてキャップを付ける */ }
    state def EmuStates {
        doc /* 図181 EMU 状態遷移図：船外活動ユニット（EMU）の状態（船外活動ユニット（EMU）） */
        @PhaseMode { phase = "PH-1"; states = "EMUS-01"; }
        @PhaseMode { phase = "PH-2"; states = "EMUS-01"; }
        @PhaseMode { phase = "PH-3"; states = "EMUS-01,EMUS-03,EMUS-04,EMUS-05,EMUS-07,EMUS-08,EMUS-13"; }
        @PhaseMode { phase = "PH-4"; states = "EMUS-01"; }
        @PhaseMode { phase = "PH-5"; states = "EMUS-05,EMUS-10,EMUS-11,EMUS-12,EMUS-06"; }
        @PhaseMode { phase = "PH-6"; states = "EMUS-01"; }
        @PhaseMode { phase = "PH-7"; states = "EMUS-01"; }
        attribute emuGuard01 : ScalarValues::Boolean { doc /* ガード：エアロック電源の投入時は EMU を電池電源にしておく */ }
        attribute emuGuard03 : ScalarValues::Boolean { doc /* ガード：LEAKAGE HI・PRESS FAIL なら FAILED LEAK CHECK（14.7/10.2 PSI）で処置 */ }
        attribute emuGuard04 : ScalarValues::Boolean { doc /* ガード：エアロックが真空で外部ハッチが開（ALKS-09） */ }
        attribute emuGuard10 : ScalarValues::Boolean { doc /* ガード：SUIT P LOW と O2 USE HIGH が同時に出ていない */ }
        attribute emuGuard11 : ScalarValues::Boolean { doc /* ガード：O2 ACT が EVA 位置 */ }
        attribute emuGuard12 : ScalarValues::Boolean { doc /* ガード：服圧計が 4.0 以下（4.0 超ならセンサ故障として EVA を続ける） */ }
        attribute emuGuard14 : ScalarValues::Boolean { doc /* ガード：SOP で呼吸している間は O2 ACT を EVA のまま */ }
        attribute emuGuard15 : ScalarValues::Boolean { doc /* ガード：服圧 3.3 以上で安定（未満なら ABORT EVA）、BATT AMPS HIGH の短絡ならエアロックの給電をしない */ }
        attribute emuGuard16 : ScalarValues::Boolean { doc /* ガード：MCC と通信できなければ TERM EVA */ }
        attribute emuGuard17 : ScalarValues::Boolean { doc /* ガード：非常時 EVA に限る */ }
        attribute emuGuard18 : ScalarValues::Boolean { doc /* ガード：減圧症の症状がない（再与圧で消えた場合は脱がない） */ }
        attribute emuGuard19 : ScalarValues::Boolean { doc /* ガード：カフ 4 は ABORT EVA で患者だけを先に再与圧 */ }
        attribute emuGuard21 : ScalarValues::Boolean { doc /* ガード：次の EVA が計画されている */ }
        entry; then EMUS_01;
        state EMUS_01 { doc /* EMUS-01 収納（エアロックのマウント・LTA 拘束袋、打上げ・突入） */ }
        state EMUS_02 {
            doc /* EMUS-02 SCU 接続（船内：オービタの電力・O2・冷却水） */
            entry; then EMUS_03;
            state EMUS_03 { doc /* EMUS-03 点検（電源投入・通信・漏れ点検） */ }
            state EMUS_04 { doc /* EMUS-04 着用・EMU チェック（SCU 給電） */ }
            state EMUS_05 { doc /* EMUS-05 窒素パージ・前呼吸 */ }
            state EMUS_06 { doc /* EMUS-06 エアロック内の SCU 再接続（帰還・再与圧・真空中の給水） */ }
            state EMUS_07 { doc /* EMUS-07 EVA 後の停止・脱衣 */ }
            state EMUS_08 { doc /* EMUS-08 再充填・保守（O2・水・電池・LiOH） */ }
        }
        state EMUS_09 {
            doc /* EMUS-09 EV（PLSS の内部電源で自立） */
            entry; then EMUS_10;
            state EMUS_10 { doc /* EMUS-10 作業中（一次 O2・昇華器の冷却） */ }
            state EMUS_11 { doc /* EMUS-11 故障の処置（CWS のメッセージ・カフチェックリスト） */ }
            state EMUS_12 { doc /* EMUS-12 SOP 作動（パージ・一次 O2 の喪失） */ }
        }
        state EMUS_13 { doc /* EMUS-13 減圧症の処置（再与圧・BTA による加圧） */ }
        transition EMUT_01 first EMUS_01 accept EmuEv01 if emuGuard01 then EMUS_02.EMUS_03;
        transition EMUT_02 first EMUS_02.EMUS_03 accept EmuEv02 then EMUS_02.EMUS_04;
        transition EMUT_03 first EMUS_02.EMUS_04 accept EmuEv03 if emuGuard03 then EMUS_02.EMUS_05;
        transition EMUT_04 first EMUS_02.EMUS_05 accept EmuEv04 if emuGuard04 then EMUS_09.EMUS_10;
        transition EMUT_05 first EMUS_09.EMUS_10 accept EmuEv05 then EMUS_09.EMUS_11;
        transition EMUT_06 first EMUS_09.EMUS_10 accept EmuEv06 then EMUS_09.EMUS_11;
        transition EMUT_07 first EMUS_09.EMUS_10 accept EmuEv07 then EMUS_09.EMUS_11;
        transition EMUT_08 first EMUS_09.EMUS_10 accept EmuEv08 then EMUS_09.EMUS_11;
        transition EMUT_09 first EMUS_09.EMUS_10 accept EmuEv09 then EMUS_09.EMUS_11;
        transition EMUT_10 first EMUS_09.EMUS_11 accept EmuEv10 if emuGuard10 then EMUS_09.EMUS_10;
        transition EMUT_11 first EMUS_09.EMUS_10 accept EmuEv11 if emuGuard11 then EMUS_09.EMUS_12;
        transition EMUT_12 first EMUS_09.EMUS_10 accept EmuEv12 if emuGuard12 then EMUS_09.EMUS_12;
        transition EMUT_13 first EMUS_09.EMUS_11 accept EmuEv13 then EMUS_09.EMUS_12;
        transition EMUT_14 first EMUS_09.EMUS_12 accept EmuEv14 if emuGuard14 then EMUS_02.EMUS_06;
        transition EMUT_15 first EMUS_09.EMUS_11 accept EmuEv15 if emuGuard15 then EMUS_02.EMUS_06;
        transition EMUT_16 first EMUS_09.EMUS_10 accept EmuEv16 if emuGuard16 then EMUS_02.EMUS_06;
        transition EMUT_17 first EMUS_02.EMUS_06 accept EmuEv17 if emuGuard17 then EMUS_09.EMUS_10;
        transition EMUT_18 first EMUS_02.EMUS_06 accept EmuEv18 if emuGuard18 then EMUS_02.EMUS_07;
        transition EMUT_19 first EMUS_02.EMUS_06 accept EmuEv19 if emuGuard19 then EMUS_13;
        transition EMUT_20 first EMUS_02.EMUS_07 accept EmuEv20 then EMUS_02.EMUS_08;
        transition EMUT_21 first EMUS_02.EMUS_08 accept EmuEv21 if emuGuard21 then EMUS_02.EMUS_04;
        transition EMUT_22 first EMUS_02.EMUS_08 accept EmuEv22 then EMUS_01;
    }
    state def AirlockStates {
        doc /* 図182 エアロック 状態遷移図：外部エアロックの状態（エアロック（減圧・再与圧）） */
        @PhaseMode { phase = "PH-1"; states = "ALKS-02"; }
        @PhaseMode { phase = "PH-2"; states = "ALKS-02"; }
        @PhaseMode { phase = "PH-3"; states = "ALKS-02,ALKS-03,ALKS-04"; }
        @PhaseMode { phase = "PH-4"; states = "ALKS-02"; }
        @PhaseMode { phase = "PH-5"; states = "ALKS-06,ALKS-07,ALKS-08,ALKS-09,ALKS-10,ALKS-11"; }
        @PhaseMode { phase = "PH-6"; states = "ALKS-02"; }
        @PhaseMode { phase = "PH-7"; states = "ALKS-02"; }
        attribute alkGuard01 : ScalarValues::Boolean { doc /* ガード：マスク前呼吸 45 分以上（10.2 psia で 1 時間を終えるまで続ける） */ }
        attribute alkGuard02 : ScalarValues::Boolean { doc /* ガード：EVA を終えた、または減圧症の処置 */ }
        attribute alkGuard03 : ScalarValues::Boolean { doc /* ガード：EMU が前呼吸中（EMUS-05） */ }
        attribute alkGuard04 : ScalarValues::Boolean { doc /* ガード：前呼吸の完了と MCC の GO、服圧計 5.5 以下 */ }
        attribute alkGuard09 : ScalarValues::Boolean { doc /* ガード：再点検（1 分、ΔP 0.3 psi 以下）に合格すれば DEPRESS の手順7へ戻る */ }
        attribute alkGuard11 : ScalarValues::Boolean { doc /* ガード：WATER OFF から 2 分経つまで外部ハッチを閉じない */ }
        attribute alkGuard12 : ScalarValues::Boolean { doc /* ガード：エアロックの気密が良好 */ }
        attribute alkGuard13 : ScalarValues::Boolean { doc /* ガード：SOP の作動・服圧の喪失・カフ4の減圧症など */ }
        entry; then ALKS_01.ALKS_02;
        state ALKS_01 {
            doc /* ALKS-01 与圧（乗員室と等圧） */
            entry; then ALKS_02;
            state ALKS_02 { doc /* ALKS-02 14.7 psia（打上げ・突入は内側ハッチ閉・均圧弁 NORM、軌道上は内側ハッチ開） */ }
            state ALKS_03 { doc /* ALKS-03 10.2 psia（段階減圧の乗員室とともに） */ }
        }
        state ALKS_04 { doc /* ALKS-04 隔離・減圧の準備（内側ハッチ閉・均圧弁 OFF・減圧弁のキャップ外し） */ }
        state ALKS_05 {
            doc /* ALKS-05 減圧 */
            entry; then ALKS_06;
            state ALKS_06 { doc /* ALKS-06 5 psia へ減圧（減圧弁 5） */ }
            state ALKS_07 { doc /* ALKS-07 保持（減圧弁 CL）：5 psia の EMU 漏れ点検・異常時の減圧の停止 */ }
            state ALKS_08 { doc /* ALKS-08 0 psia へ減圧（減圧弁 0） */ }
        }
        state ALKS_09 { doc /* ALKS-09 真空・外部ハッチ開（EVA 中） */ }
        state ALKS_10 { doc /* ALKS-10 再与圧（内側ハッチの均圧弁 NORM、5.0 psia で気密確認） */ }
        state ALKS_11 { doc /* ALKS-11 緊急再与圧（内側ハッチの均圧弁 2個 EMER） */ }
        state ALKS_12 { doc /* ALKS-12 気密の喪失（ハッチの漏れ・EVA 能力の喪失） */ }
        transition ALKT_01 first ALKS_01.ALKS_02 accept AlkEv01 if alkGuard01 then ALKS_01.ALKS_03;
        transition ALKT_02 first ALKS_01.ALKS_03 accept AlkEv02 if alkGuard02 then ALKS_01.ALKS_02;
        transition ALKT_03 first ALKS_01 accept AlkEv03 if alkGuard03 then ALKS_04;
        transition ALKT_04 first ALKS_04 accept AlkEv04 if alkGuard04 then ALKS_05.ALKS_06;
        transition ALKT_05 first ALKS_05.ALKS_06 accept AlkEv05 then ALKS_05.ALKS_07;
        transition ALKT_06 first ALKS_05.ALKS_06 accept AlkEv06 then ALKS_05.ALKS_07;
        transition ALKT_07 first ALKS_05.ALKS_07 accept AlkEv07 then ALKS_05.ALKS_08;
        transition ALKT_08 first ALKS_05.ALKS_08 accept AlkEv08 then ALKS_05.ALKS_07;
        transition ALKT_09 first ALKS_05.ALKS_07 accept AlkEv09 if alkGuard09 then ALKS_01;
        transition ALKT_10 first ALKS_05.ALKS_08 accept AlkEv10 then ALKS_09;
        transition ALKT_11 first ALKS_09 accept AlkEv11 if alkGuard11 then ALKS_10;
        transition ALKT_12 first ALKS_10 accept AlkEv12 if alkGuard12 then ALKS_01;
        transition ALKT_13 first ALKS_09 accept AlkEv13 if alkGuard13 then ALKS_11;
        transition ALKT_14 first ALKS_11 accept AlkEv14 then ALKS_01;
        transition ALKT_15 first ALKS_10 accept AlkEv15 then ALKS_12;
        transition ALKT_16 first ALKS_12 accept AlkEv16 then ALKS_01.ALKS_02;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def EmuStatesHolder :> EVA {
        doc /* 船外活動ユニット（EMU）（SSD-FD-EVA-001）は EmuStates の状態を持つ */
        exhibit state emuStates : EmuStates;
    }
    part def AirlockStatesHolder :> ECL_ALS {
        doc /* エアロック（減圧・再与圧）（SSD-FD-ECL-ALS-001）は AirlockStates の状態を持つ */
        exhibit state airlockStates : AirlockStates;
    }
}
