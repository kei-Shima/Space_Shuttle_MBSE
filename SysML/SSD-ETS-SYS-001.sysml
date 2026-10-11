// SysML v2 テキスト：内部ブロック図（機器の接続と、流れる物・量と単位）
// SSD-ETS-SYS-001 ET・SRB・TPS の内部ブロック・状態定義書（推進薬の供給と分離、SRB の燃焼と回収、熱防護の熱の流れ、飛行中の TPS の点検） の表から生成（lib/build_docs_bt.py・rev_bt/btdata.py、部品は lib/ibdmodel2.py・lib/behdocs.py）。値の根拠の頁は SSD-ETS-SYS-001 にある。
package SSD_ETS_SYS_001 {
    doc /* SSD-ETS-SYS-001 ET・SRB・TPS の内部ブロック・状態定義書（推進薬の供給と分離、SRB の燃焼と回収、熱防護の熱の流れ、飛行中の TPS の点検）。図200・図201・図202 と同じ部品・ポート・流れ・値。機器は構造モデル（SSD-BLK-SYS-001）の機能ブロックの部品の中に置き、流れは IF を詳しくする（#refinement）。ET・SRB の機器は機器配分表（オービタだけ）を特化しない。状態機械は ET・SRB の部品の定義を特化して持たせる。 */
    private import SSD_BLK_SYS_001::*;
    private import ModelingMetadata::*;
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    private import SSD_BEH_ORB_005::PhaseMode;
    // ---- 流れる物（既存の種別を特化し、量を属性に持つ）とポート定義
    item def EtLo2 :> Fluid {
        doc /* ET の液体酸素（酸化剤。−297 °F、タンク 20〜22 psig、供給管は SSME 104% で約 2,787 lb/s）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/s） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def EtLo2Port :> FluidPort { out item :>> fluid : EtLo2; }
    item def EtLh2 :> Fluid {
        doc /* ET の液体水素（燃料。−423 °F、タンク 32〜34 psia、供給管は SSME 104% で 465 lb/s）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
        attribute massFlowRate : MassFlowRateValue[0..*] { doc /* 質量流量（資料の単位 lb/s） */ }
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def EtLh2Port :> FluidPort { out item :>> fluid : EtLh2; }
    item def EtPressurantGas :> Fluid {
        doc /* タンクの加圧とベントの気体（SSME から来る気体酸素・気体水素、残りの気体酸素のタンブル噴出）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
    }
    port def EtPressurantGasPort :> FluidPort { out item :>> fluid : EtPressurantGas; }
    item def EtCommand :> DataCommand {
        doc /* ET の分離と射場安全系の指令・状態（分離シーケンスの指令、MEC の火工品の起爆、タンブルの起爆、RSS のアーム・ファイア、センサの情報）（データ・指令） */
    }
    port def EtCommandPort :> DataPort { out item :>> dataCommand : EtCommand; }
    item def EtStructuralLoad :> StructuralLoad {
        doc /* ET の構造の荷重（SRB の推力、オービタとの結合の荷重、分離時の結合金具の解放）（構造・荷重） */
        attribute releaseDelay : DurationValue[0..*] { doc /* 時間（資料の単位 s） */ }
    }
    port def EtStructuralLoadPort :> LoadPort { out item :>> structuralLoad : EtStructuralLoad; }
    item def EtHeat :> Heat {
        doc /* ET の外面から推進薬への熱の流れ（発泡断熱材・断熱材で減らす）（熱） */
    }
    port def EtHeatPort :> HeatPort { out item :>> heat : EtHeat; }
    item def EtPower :> ElectricPower {
        doc /* オービタから ET と SRB への電力（電気アンビリカル経由、28 V 直流）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def EtPowerPort :> PowerPort { out item :>> electricPower : EtPower; }
    item def SrbStructuralLoad :> StructuralLoad {
        doc /* 構造の荷重（スタックの重量・推力・保持ボルトの荷重・サーボアクチュエータが与える力）（構造・荷重） */
        attribute force : ForceValue[0..*] { doc /* 力（資料の単位 lbf） */ }
    }
    port def SrbStructuralLoadPort :> LoadPort { out item :>> structuralLoad : SrbStructuralLoad; }
    item def PyroCommand :> DataCommand {
        doc /* 火工品の指令（arm・fire 1・fire 2、PIC の充電、分離の指令、NSI の発火）（データ・指令） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def PyroCommandPort :> DataPort { out item :>> dataCommand : PyroCommand; }
    item def IgnitionFlame :> Heat {
        doc /* 点火の薬の連鎖（S&A のブースタチャージ→点火器の起爆剤→モータの点火器→推進薬）（熱） */
    }
    port def IgnitionFlamePort :> HeatPort { out item :>> heat : IgnitionFlame; }
    item def CombustionGas :> Fluid {
        doc /* 推進薬の燃焼ガス（燃焼圧）（推進薬・流体） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psia） */ }
    }
    port def CombustionGasPort :> FluidPort { out item :>> fluid : CombustionGas; }
    item def SrbHydraulics :> HydraulicFluid {
        doc /* SRB の油圧（HPU からサーボアクチュエータへ）（油圧） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
    }
    port def SrbHydraulicsPort :> HydraulicPort { out item :>> hydraulicFluid : SrbHydraulics; }
    item def SrbPower :> ElectricPower {
        doc /* SRB の電力（SRB 母線・回収用電池の 28 V 直流）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def SrbPowerPort :> PowerPort { out item :>> electricPower : SrbPower; }
    item def SrbData :> DataCommand {
        doc /* SRB のデータ・指令（MDM の指令とパラメータ、APU 制御、SRGA の角速度、切替弁の接点、RSS の信号）（データ・指令） */
    }
    port def SrbDataPort :> DataPort { out item :>> dataCommand : SrbData; }
    item def ActuatorCommand :> DataCommand {
        doc /* ATVC のサーボアクチュエータへの指令電圧と、ラムの位置帰還（データ・指令） */
    }
    port def ActuatorCommandPort :> DataPort { out item :>> dataCommand : ActuatorCommand; }
    item def SeparationTrigger :> DataCommand {
        doc /* 分離の起動条件（頭部の燃焼圧が 50 psi 以下）（データ・指令） */
        attribute pressure : PressureValue[0..*] { doc /* 圧力（資料の単位 psig） */ }
    }
    port def SeparationTriggerPort :> DataPort { out item :>> dataCommand : SeparationTrigger; }
    item def ThermalConduction :> Heat {
        doc /* TPS を通って外板へ伝わる熱（外板の温度の限度 350°F）（熱） */
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def ThermalConductionPort :> HeatPort { out item :>> heat : ThermalConduction; }
    item def RccRadiation :> Heat {
        doc /* RCC の殻の内部の相互放射と内側への放射熱（熱） */
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def RccRadiationPort :> HeatPort { out item :>> heat : RccRadiation; }
    item def HeaterHeat :> Heat {
        doc /* ヒータが推進薬・水の配管へ与える熱（サーモスタットで制御）（熱） */
        attribute temperature : ThermodynamicTemperatureValue[0..*] { doc /* 温度（資料の単位 °F） */ }
    }
    port def HeaterHeatPort :> HeatPort { out item :>> heat : HeaterHeat; }
    item def HeaterPower :> ElectricPower {
        doc /* ヒータへの電力（燃料電池の主母線から、スイッチとサーモスタット経由）（電力） */
        attribute voltage : ElectricPotentialDifferenceValue[0..*] { doc /* 電圧（資料の単位 V） */ }
    }
    port def HeaterPowerPort :> PowerPort { out item :>> electricPower : HeaterPower; }
    item def PurgeGas :> Fluid {
        doc /* パージガス（地上から供給する冷たい乾燥空気または窒素）（推進薬・流体） */
    }
    port def PurgeGasPort :> FluidPort { out item :>> fluid : PurgeGas; }
    // ---- 図200 ET 内部ブロック図：機器
    part def <'EQ-ET-01'> Lo2Tank {
        doc /* 液体酸素タンク（アルミのモノコック。前方）（機能ブロック SSD-FD-ET-LOX-001） */
        port o_FL_ET_01 : EtLo2Port;
        port i_FL_ET_13 : ~EtPressurantGasPort;
        port o_FL_ET_15 : EtPressurantGasPort;
        port i_FL_ET_19 : ~EtStructuralLoadPort;
        port o_FL_ET_33 : EtPressurantGasPort;
    }
    part def <'EQ-ET-02'> Lo2SloshVortexDevices {
        doc /* 液体酸素タンクの揺動防止・渦防止の装置（機能ブロック SSD-FD-ET-LOX-001） */
        port i_FL_ET_01 : ~EtLo2Port;
        port o_FL_ET_02 : EtLo2Port;
    }
    part def <'EQ-ET-03'> Lo2FeedLine {
        doc /* 液体酸素の供給管（直径 17 in。インタタンクを通り ET の外を右後部へ）（機能ブロック SSD-FD-ET-LOX-001） */
        port i_FL_ET_02 : ~EtLo2Port;
        port o_FL_ET_03 : EtLo2Port;
        port i_FL_ET_10 : ~EtLo2Port;
    }
    part def <'EQ-ET-04'> Lo2VentReliefValve {
        doc /* 液体酸素タンクのベント/逃し弁（タンク前端。31 psig で開く）（機能ブロック SSD-FD-ET-LOX-001） */
        port i_FL_ET_15 : ~EtPressurantGasPort;
    }
    part def <'EQ-ET-05'> Lh2Tank {
        doc /* 液体水素タンク（アルミのセミモノコック。後方）（機能ブロック SSD-FD-ET-LH2-001） */
        port o_FL_ET_05 : EtLh2Port;
        port i_FL_ET_14 : ~EtPressurantGasPort;
        port o_FL_ET_16 : EtPressurantGasPort;
        port i_FL_ET_20 : ~EtStructuralLoadPort;
        port i_FL_ET_22 : ~EtStructuralLoadPort;
        port o_FL_ET_23 : EtStructuralLoadPort;
        port o_FL_ET_25 : EtStructuralLoadPort;
        port i_FL_ET_27 : ~EtHeatPort;
        port i_FL_ET_28 : ~EtHeatPort;
    }
    part def <'EQ-ET-06'> Lh2AntiVortexSiphon {
        doc /* 液体水素タンクの渦防止バッフルとサイフォンの出口（機能ブロック SSD-FD-ET-LH2-001） */
        port i_FL_ET_05 : ~EtLh2Port;
        port o_FL_ET_06 : EtLh2Port;
    }
    part def <'EQ-ET-07'> Lh2FeedLine {
        doc /* 液体水素の供給管（直径 17 in。左後部のアンビリカルへ）（機能ブロック SSD-FD-ET-LH2-001） */
        port i_FL_ET_06 : ~EtLh2Port;
        port o_FL_ET_07 : EtLh2Port;
        port i_FL_ET_12 : ~EtLh2Port;
    }
    part def <'EQ-ET-08'> Lh2VentReliefValve {
        doc /* 液体水素タンクのベント/逃し弁（タンク前端。36 psig で開く）（機能ブロック SSD-FD-ET-LH2-001） */
        port i_FL_ET_16 : ~EtPressurantGasPort;
    }
    part def <'EQ-ET-09'> FwdAttachPodStrut {
        doc /* ET/オービタの前部結合のポッド支柱（バイポッド）（機能ブロック SSD-FD-ET-LH2-001） */
        port i_FL_ET_23 : ~EtStructuralLoadPort;
        port o_FL_ET_24 : EtStructuralLoadPort;
    }
    part def <'EQ-ET-10'> AftAttachBallFittings {
        doc /* ET/オービタの後部結合のボール金具（2）（機能ブロック SSD-FD-ET-LH2-001） */
        port i_FL_ET_25 : ~EtStructuralLoadPort;
        port o_FL_ET_26 : EtStructuralLoadPort;
    }
    part def <'EQ-ET-11'> SrbAftStabilizingStrutMounts {
        doc /* SRB-ET の後部安定支柱の取付け（機能ブロック SSD-FD-ET-LH2-001） */
        port i_FL_ET_21 : ~EtStructuralLoadPort;
        port o_FL_ET_22 : EtStructuralLoadPort;
    }
    part def <'EQ-ET-12'> IntertankStructure {
        doc /* インタタンクの構造（鋼/アルミのセミモノコック、フランジ、推力パネル、トラス）（機能ブロック SSD-FD-ET-ITK-001） */
        port i_FL_ET_18 : ~EtStructuralLoadPort;
        port o_FL_ET_19 : EtStructuralLoadPort;
        port o_FL_ET_20 : EtStructuralLoadPort;
    }
    part def <'EQ-ET-13'> SrbEtFwdThrustBeam {
        doc /* 前部の SRB-ET 結合の推力ビームと金具（機能ブロック SSD-FD-ET-ITK-001） */
        port i_FL_ET_17 : ~EtStructuralLoadPort;
        port o_FL_ET_18 : EtStructuralLoadPort;
    }
    part def <'EQ-ET-14'> AftUmbilicalPlates {
        doc /* ET の後部アンビリカル板（2。ボルトで締結、分離の指令で火工品がボルトを切る）（機能ブロック SSD-FD-ET-UMB-001） */
        port i_FL_ET_31 : ~EtStructuralLoadPort;
    }
    part def <'EQ-ET-15'> PropellantUmbilicalValves {
        doc /* 推進薬アンビリカル弁（5：液体酸素タンク2・液体水素タンク3）（機能ブロック SSD-FD-ET-UMB-001） */
        port i_FL_ET_03 : ~EtLo2Port;
        port o_FL_ET_04 : EtLo2Port;
        port i_FL_ET_07 : ~EtLh2Port;
        port o_FL_ET_08 : EtLh2Port;
        port i_FL_ET_09 : ~EtLo2Port;
        port o_FL_ET_10 : EtLo2Port;
        port i_FL_ET_11 : ~EtLh2Port;
        port o_FL_ET_12 : EtLh2Port;
    }
    part def <'EQ-ET-16'> ElectricalUmbilicals {
        doc /* ET の電気アンビリカル（2）（機能ブロック SSD-FD-ET-UMB-001） */
        port i_FL_ET_35 : ~EtPowerPort;
        port o_FL_ET_36 : EtPowerPort;
        port i_FL_ET_37 : ~EtCommandPort;
        port i_FL_ET_38 : ~EtCommandPort;
        port i_FL_ET_39 : ~EtCommandPort;
        port i_FL_ET_40 : ~EtCommandPort;
        port o_FL_ET_41 : EtCommandPort;
    }
    part def <'EQ-ET-17'> FuelDepletionSensors {
        doc /* 燃料（LH2）の枯渇センサ（4。LH2 タンクの底）（機能ブロック SSD-FD-ET-UMB-001） */
        port o_FL_ET_38 : EtCommandPort;
    }
    part def <'EQ-ET-18'> OxidizerDepletionSensors {
        doc /* 酸化剤（LO2）の枯渇センサ（4。オービタの液体酸素供給管マニホールド、切離し弁の下流）（機能ブロック SSD-FD-ET-UMB-001） */
        port o_FL_ET_39 : EtCommandPort;
    }
    part def <'EQ-ET-19'> UllagePressureTransducers {
        doc /* アレージ圧のトランスデューサ（4。LO2・LH2 タンクの頂部）（機能ブロック SSD-FD-ET-UMB-001） */
        port o_FL_ET_40 : EtCommandPort;
    }
    part def <'EQ-ET-20'> TumbleSystem {
        doc /* タンブル系（2 in の火工品弁、リレースイッチモジュール、NSI 起爆器、マニホールド）（機能ブロック SSD-FD-ET-SEP-001） */
        port i_FL_ET_32 : ~EtCommandPort;
        port i_FL_ET_33 : ~EtPressurantGasPort;
    }
    part def <'EQ-ET-21'> RangeSafetySystem {
        doc /* 射場安全系 RSS（電池2・受信/解読器・アンテナ・分配器・S&A 装置・線状成形薬）（機能ブロック SSD-FD-ET-SEP-001） */
        port i_FL_ET_34 : ~EtCommandPort;
    }
    part def <'EQ-ET-22'> SeparationPyrotechnics {
        doc /* ET 分離の火工品と起爆制御器（アンビリカルのボルトと前部・後部結合の解放）（機能ブロック SSD-FD-ET-SEP-001） */
        port i_FL_ET_29 : ~EtCommandPort;
        port i_FL_ET_30 : ~EtCommandPort;
        port o_FL_ET_31 : EtStructuralLoadPort;
        port o_FL_ET_32 : EtCommandPort;
    }
    part def <'EQ-ET-23'> SprayedFoamInsulation {
        doc /* ET の吹付け発泡断熱材（SOFI。NCFI 24-124・BX-250 ほか）（機能ブロック SSD-FD-ET-TPS-001） */
        port o_FL_ET_27 : EtHeatPort;
    }
    part def <'EQ-ET-24'> AblatorAndPhenolicIsolators {
        doc /* 成形済みのアブレータとフェノールの断熱材（空気の液化を防ぐ）（機能ブロック SSD-FD-ET-TPS-001） */
        port o_FL_ET_28 : EtHeatPort;
    }
    // ---- 図200 ET 内部ブロック図：接続（EtInterconnection は ET を特化）
    part def EtInterconnection :> ET {
        doc /* 外部タンク（LO2・LH2 の供給、加圧とベント、結合と分離、熱防護）の内部ブロック図（図200）。基の機能ブロック SSD-FD-ET-001。 */
        part redefines lox {
            part lo2Tank : Lo2Tank;
            part lo2SloshVortexDevices : Lo2SloshVortexDevices;
            part lo2FeedLine : Lo2FeedLine;
            part lo2VentReliefValve : Lo2VentReliefValve;
        }
        part redefines lh2 {
            part lh2Tank : Lh2Tank;
            part lh2AntiVortexSiphon : Lh2AntiVortexSiphon;
            part lh2FeedLine : Lh2FeedLine;
            part lh2VentReliefValve : Lh2VentReliefValve;
            part fwdAttachPodStrut : FwdAttachPodStrut;
            part aftAttachBallFittings[2] : AftAttachBallFittings;
            part srbAftStabilizingStrutMounts : SrbAftStabilizingStrutMounts;
        }
        part redefines itk {
            part intertankStructure : IntertankStructure;
            part srbEtFwdThrustBeam : SrbEtFwdThrustBeam;
        }
        part redefines umb {
            part aftUmbilicalPlates[2] : AftUmbilicalPlates;
            part propellantUmbilicalValves[5] : PropellantUmbilicalValves;
            part electricalUmbilicals[2] : ElectricalUmbilicals;
            part fuelDepletionSensors[4] : FuelDepletionSensors;
            part oxidizerDepletionSensors[4] : OxidizerDepletionSensors;
            part ullagePressureTransducers[4] : UllagePressureTransducers;
        }
        part redefines sep {
            part tumbleSystem : TumbleSystem;
            part rangeSafetySystem : RangeSafetySystem;
            part separationPyrotechnics : SeparationPyrotechnics;
        }
        part redefines tps {
            part sprayedFoamInsulation : SprayedFoamInsulation;
            part ablatorAndPhenolicIsolators : AblatorAndPhenolicIsolators;
        }
        port b_FL_ET_04 : EtLo2Port { doc /* 枠の外の相手 EB-ET-01（オービタ（OV）：3基の SSME へ供給する液体酸素・液体水素（切離し弁の下流）） */ }
        port b_FL_ET_08 : EtLh2Port { doc /* 枠の外の相手 EB-ET-01（オービタ（OV）：3基の SSME へ供給する液体酸素・液体水素（切離し弁の下流）） */ }
        port b_FL_ET_09 : ~EtLo2Port { doc /* 枠の外の相手 EB-ET-02（オービタの MPS：供給配管マニホールドと17 in 切離し弁（打上げ前の充填でも通る）） */ }
        port b_FL_ET_11 : ~EtLh2Port { doc /* 枠の外の相手 EB-ET-02（オービタの MPS：供給配管マニホールドと17 in 切離し弁（打上げ前の充填でも通る）） */ }
        port b_FL_ET_13 : ~EtPressurantGasPort { doc /* 枠の外の相手 EB-ET-03（オービタの MPS：気体酸素の ET 加圧マニホールド（SSME の酸化剤熱交換器から）） */ }
        port b_FL_ET_14 : ~EtPressurantGasPort { doc /* 枠の外の相手 EB-ET-04（オービタの MPS：気体水素の ET 加圧マニホールド（SSME の流量制御弁から）） */ }
        port b_FL_ET_17 : ~EtStructuralLoadPort { doc /* 枠の外の相手 EB-ET-05（SRB：前部の結合点（玉と受け）） */ }
        port b_FL_ET_21 : ~EtStructuralLoadPort { doc /* 枠の外の相手 EB-ET-06（SRB：後部の結合点（上・斜め・下の3本の支柱）） */ }
        port b_FL_ET_24 : EtStructuralLoadPort { doc /* 枠の外の相手 EB-ET-07（オービタの構造：前部のオービタ/ET 結合金具） */ }
        port b_FL_ET_26 : EtStructuralLoadPort { doc /* 枠の外の相手 EB-ET-08（オービタの構造：後部胴体のロンジロン金具） */ }
        port b_FL_ET_29 : ~EtCommandPort { doc /* 枠の外の相手 EB-ET-09（DPS：GPC の ET 分離シーケンスの指令） */ }
        port b_FL_ET_30 : ~EtCommandPort { doc /* 枠の外の相手 EB-ET-10（DPS：マスターイベントコントローラ（MEC）の火工品の起爆） */ }
        port b_FL_ET_34 : ~EtCommandPort { doc /* 枠の外の相手 EB-ET-15（SRB の射場安全系（前部結合を通るクロスストラップ）） */ }
        port b_FL_ET_35 : ~EtPowerPort { doc /* 枠の外の相手 EB-ET-11（EPS：28 V 直流の配電（EPDC）） */ }
        port b_FL_ET_36 : EtPowerPort { doc /* 枠の外の相手 EB-ET-12（SRB（電気アンビリカルを通る電力の行き先）） */ }
        port b_FL_ET_37 : ~EtCommandPort { doc /* 枠の外の相手 EB-ET-13（SRB（上の支柱を通るアンビリカルの信号：SRB の情報）） */ }
        port b_FL_ET_41 : EtCommandPort { doc /* 枠の外の相手 EB-ET-14（オービタの DPS（電気アンビリカルを通る ET・SRB の情報の行き先）） */ }
        flow <'FL-ET-01'> fl_et_01 from lox.lo2Tank.o_FL_ET_01.fluid to lox.lo2SloshVortexDevices.i_FL_ET_01.fluid {
            item :>> payload : EtLo2 {
                attribute pressureMin :> pressure = 20 ['lbf/in²'] { doc /* 圧力 20〜22 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 22 ['lbf/in²'] { doc /* 圧力 20〜22 psig（ゲージ圧） */ }
                attribute temperatureNominal :> temperature = -297 ['°F_abs'] { doc /* 温度 -297°F */ }
            }
        }
        flow <'FL-ET-02'> fl_et_02 of EtLo2 from lox.lo2SloshVortexDevices.o_FL_ET_02.fluid to lox.lo2FeedLine.i_FL_ET_02.fluid;
        flow <'FL-ET-03'> fl_et_03 from lox.lo2FeedLine.o_FL_ET_03.fluid to umb.propellantUmbilicalValves.i_FL_ET_03.fluid {
            item :>> payload : EtLo2 {
                attribute massFlowRateNominal :> massFlowRate = 2787 ['lb/s'] { doc /* 質量流量 2,787 lb/s */ }
            }
        }
        flow <'FL-ET-04'> fl_et_04 from umb.propellantUmbilicalValves.o_FL_ET_04.fluid to b_FL_ET_04.fluid {
            item :>> payload : EtLo2 {
                attribute massFlowRateNominal :> massFlowRate = 2787 ['lb/s'] { doc /* 質量流量 2,787 lb/s */ }
            }
        }
        flow <'FL-ET-05'> fl_et_05 from lh2.lh2Tank.o_FL_ET_05.fluid to lh2.lh2AntiVortexSiphon.i_FL_ET_05.fluid {
            item :>> payload : EtLh2 {
                attribute pressureMin :> pressure = 32 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 34 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
                attribute temperatureNominal :> temperature = -423 ['°F_abs'] { doc /* 温度 -423°F */ }
            }
        }
        flow <'FL-ET-06'> fl_et_06 of EtLh2 from lh2.lh2AntiVortexSiphon.o_FL_ET_06.fluid to lh2.lh2FeedLine.i_FL_ET_06.fluid;
        flow <'FL-ET-07'> fl_et_07 from lh2.lh2FeedLine.o_FL_ET_07.fluid to umb.propellantUmbilicalValves.i_FL_ET_07.fluid {
            item :>> payload : EtLh2 {
                attribute massFlowRateNominal :> massFlowRate = 465 ['lb/s'] { doc /* 質量流量 465 lb/s */ }
            }
        }
        flow <'FL-ET-08'> fl_et_08 from umb.propellantUmbilicalValves.o_FL_ET_08.fluid to b_FL_ET_08.fluid {
            item :>> payload : EtLh2 {
                attribute massFlowRateNominal :> massFlowRate = 465 ['lb/s'] { doc /* 質量流量 465 lb/s */ }
            }
        }
        flow <'FL-ET-09'> fl_et_09 of EtLo2 from b_FL_ET_09.fluid to umb.propellantUmbilicalValves.i_FL_ET_09.fluid;
        flow <'FL-ET-10'> fl_et_10 of EtLo2 from umb.propellantUmbilicalValves.o_FL_ET_10.fluid to lox.lo2FeedLine.i_FL_ET_10.fluid;
        flow <'FL-ET-11'> fl_et_11 of EtLh2 from b_FL_ET_11.fluid to umb.propellantUmbilicalValves.i_FL_ET_11.fluid;
        flow <'FL-ET-12'> fl_et_12 of EtLh2 from umb.propellantUmbilicalValves.o_FL_ET_12.fluid to lh2.lh2FeedLine.i_FL_ET_12.fluid;
        flow <'FL-ET-13'> fl_et_13 from b_FL_ET_13.fluid to lox.lo2Tank.i_FL_ET_13.fluid {
            item :>> payload : EtPressurantGas {
                attribute pressureMin :> pressure = 20 ['lbf/in²'] { doc /* 圧力 20〜25 psig（ゲージ圧） */ }
                attribute pressureMax :> pressure = 25 ['lbf/in²'] { doc /* 圧力 20〜25 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-ET-14'> fl_et_14 from b_FL_ET_14.fluid to lh2.lh2Tank.i_FL_ET_14.fluid {
            item :>> payload : EtPressurantGas {
                attribute pressureMin :> pressure = 32 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
                attribute pressureMax :> pressure = 34 ['lbf/in²'] { doc /* 圧力 32〜34 psia（絶対圧） */ }
            }
        }
        flow <'FL-ET-15'> fl_et_15 from lox.lo2Tank.o_FL_ET_15.fluid to lox.lo2VentReliefValve.i_FL_ET_15.fluid {
            item :>> payload : EtPressurantGas {
                attribute pressureNominal :> pressure = 31 ['lbf/in²'] { doc /* 圧力 31 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-ET-16'> fl_et_16 from lh2.lh2Tank.o_FL_ET_16.fluid to lh2.lh2VentReliefValve.i_FL_ET_16.fluid {
            item :>> payload : EtPressurantGas {
                attribute pressureNominal :> pressure = 36 ['lbf/in²'] { doc /* 圧力 36 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-ET-17'> fl_et_17 of EtStructuralLoad from b_FL_ET_17.structuralLoad to itk.srbEtFwdThrustBeam.i_FL_ET_17.structuralLoad;
        flow <'FL-ET-18'> fl_et_18 of EtStructuralLoad from itk.srbEtFwdThrustBeam.o_FL_ET_18.structuralLoad to itk.intertankStructure.i_FL_ET_18.structuralLoad;
        flow <'FL-ET-19'> fl_et_19 of EtStructuralLoad from itk.intertankStructure.o_FL_ET_19.structuralLoad to lox.lo2Tank.i_FL_ET_19.structuralLoad;
        flow <'FL-ET-20'> fl_et_20 of EtStructuralLoad from itk.intertankStructure.o_FL_ET_20.structuralLoad to lh2.lh2Tank.i_FL_ET_20.structuralLoad;
        flow <'FL-ET-21'> fl_et_21 of EtStructuralLoad from b_FL_ET_21.structuralLoad to lh2.srbAftStabilizingStrutMounts.i_FL_ET_21.structuralLoad;
        flow <'FL-ET-22'> fl_et_22 of EtStructuralLoad from lh2.srbAftStabilizingStrutMounts.o_FL_ET_22.structuralLoad to lh2.lh2Tank.i_FL_ET_22.structuralLoad;
        flow <'FL-ET-23'> fl_et_23 of EtStructuralLoad from lh2.lh2Tank.o_FL_ET_23.structuralLoad to lh2.fwdAttachPodStrut.i_FL_ET_23.structuralLoad;
        flow <'FL-ET-24'> fl_et_24 of EtStructuralLoad from lh2.fwdAttachPodStrut.o_FL_ET_24.structuralLoad to b_FL_ET_24.structuralLoad;
        flow <'FL-ET-25'> fl_et_25 of EtStructuralLoad from lh2.lh2Tank.o_FL_ET_25.structuralLoad to lh2.aftAttachBallFittings.i_FL_ET_25.structuralLoad;
        flow <'FL-ET-26'> fl_et_26 of EtStructuralLoad from lh2.aftAttachBallFittings.o_FL_ET_26.structuralLoad to b_FL_ET_26.structuralLoad;
        flow <'FL-ET-27'> fl_et_27 of EtHeat from tps.sprayedFoamInsulation.o_FL_ET_27.heat to lh2.lh2Tank.i_FL_ET_27.heat;
        flow <'FL-ET-28'> fl_et_28 of EtHeat from tps.ablatorAndPhenolicIsolators.o_FL_ET_28.heat to lh2.lh2Tank.i_FL_ET_28.heat;
        flow <'FL-ET-29'> fl_et_29 of EtCommand from b_FL_ET_29.dataCommand to sep.separationPyrotechnics.i_FL_ET_29.dataCommand;
        flow <'FL-ET-30'> fl_et_30 of EtCommand from b_FL_ET_30.dataCommand to sep.separationPyrotechnics.i_FL_ET_30.dataCommand;
        flow <'FL-ET-31'> fl_et_31 from sep.separationPyrotechnics.o_FL_ET_31.structuralLoad to umb.aftUmbilicalPlates.i_FL_ET_31.structuralLoad {
            item :>> payload : EtStructuralLoad {
                attribute releaseDelayMax :> releaseDelay = 0.02 [s] { doc /* 時間 最大 0.02 s */ }
            }
        }
        flow <'FL-ET-32'> fl_et_32 of EtCommand from sep.separationPyrotechnics.o_FL_ET_32.dataCommand to sep.tumbleSystem.i_FL_ET_32.dataCommand;
        flow <'FL-ET-33'> fl_et_33 of EtPressurantGas from lox.lo2Tank.o_FL_ET_33.fluid to sep.tumbleSystem.i_FL_ET_33.fluid;
        flow <'FL-ET-34'> fl_et_34 of EtCommand from b_FL_ET_34.dataCommand to sep.rangeSafetySystem.i_FL_ET_34.dataCommand;
        flow <'FL-ET-35'> fl_et_35 of EtPower from b_FL_ET_35.electricPower to umb.electricalUmbilicals.i_FL_ET_35.electricPower;
        flow <'FL-ET-36'> fl_et_36 of EtPower from umb.electricalUmbilicals.o_FL_ET_36.electricPower to b_FL_ET_36.electricPower;
        flow <'FL-ET-37'> fl_et_37 of EtCommand from b_FL_ET_37.dataCommand to umb.electricalUmbilicals.i_FL_ET_37.dataCommand;
        flow <'FL-ET-38'> fl_et_38 of EtCommand from umb.fuelDepletionSensors.o_FL_ET_38.dataCommand to umb.electricalUmbilicals.i_FL_ET_38.dataCommand;
        flow <'FL-ET-39'> fl_et_39 of EtCommand from umb.oxidizerDepletionSensors.o_FL_ET_39.dataCommand to umb.electricalUmbilicals.i_FL_ET_39.dataCommand;
        flow <'FL-ET-40'> fl_et_40 of EtCommand from umb.ullagePressureTransducers.o_FL_ET_40.dataCommand to umb.electricalUmbilicals.i_FL_ET_40.dataCommand;
        flow <'FL-ET-41'> fl_et_41 of EtCommand from umb.electricalUmbilicals.o_FL_ET_41.dataCommand to b_FL_ET_41.dataCommand;
    }
    // ---- 図201 SRB 内部ブロック図：機器
    part def <'EQ-SRB-01'> MotorCase {
        doc /* モータケース（11区画・4セグメント、フィールド継手と O リング、前部ドーム、ET 取付けリング）（機能ブロック SSD-FD-SRB-MTR-001） */
        port i_FL_SRB_01 : ~SrbStructuralLoadPort;
        port i_FL_SRB_12 : ~CombustionGasPort;
        port i_FL_SRB_13 : ~SrbStructuralLoadPort;
        port o_FL_SRB_14 : SeparationTriggerPort;
    }
    part def <'EQ-SRB-02'> SolidPropellant {
        doc /* 固体推進薬（前部の11点の星形、後部の二重截頭円錐の穿孔）（機能ブロック SSD-FD-SRB-MTR-001） */
        port i_FL_SRB_10 : ~IgnitionFlamePort;
        port o_FL_SRB_11 : CombustionGasPort;
        port o_FL_SRB_12 : CombustionGasPort;
    }
    part def <'EQ-SRB-03'> MotorIgniter {
        doc /* モータの点火器（点火器の起爆剤とモータの点火器）（機能ブロック SSD-FD-SRB-MTR-001） */
        port i_FL_SRB_09 : ~IgnitionFlamePort;
        port o_FL_SRB_10 : IgnitionFlamePort;
    }
    part def <'EQ-SRB-04'> NozzleAssembly {
        doc /* ノズル（可撓軸受、炭素布の内張り、膨張比 7.72:1）（機能ブロック SSD-FD-SRB-MTR-001） */
        port i_FL_SRB_11 : ~CombustionGasPort;
        port o_FL_SRB_13 : SrbStructuralLoadPort;
        port i_FL_SRB_27 : ~SrbStructuralLoadPort;
    }
    part def <'EQ-SRB-05'> HoldDownPost {
        doc /* ホールドダウンポスト・ボルト・破断ナット（NSI 起爆器2個）（機能ブロック SSD-FD-SRB-HDP-001） */
        port o_FL_SRB_04 : SrbStructuralLoadPort;
        port o_FL_SRB_05 : SrbStructuralLoadPort;
        port i_FL_SRB_08 : ~PyroCommandPort;
    }
    part def <'EQ-SRB-06'> PyroInitiatorController {
        doc /* PIC（火工品起爆制御器、移動発射台上）（機能ブロック SSD-FD-SRB-HDP-001） */
        port i_FL_SRB_06 : ~PyroCommandPort;
        port o_FL_SRB_07 : PyroCommandPort;
        port o_FL_SRB_08 : PyroCommandPort;
    }
    part def <'EQ-SRB-07'> SafeArmDevice {
        doc /* S&A 装置（NSI 起爆器2個、ブースタチャージ）（機能ブロック SSD-FD-SRB-HDP-001） */
        port i_FL_SRB_07 : ~PyroCommandPort;
        port o_FL_SRB_09 : IgnitionFlamePort;
    }
    part def <'EQ-SRB-08'> ForwardAttachPoint {
        doc /* 前部の結合点（玉と受け、1本のボルト、NSI 圧力カートリッジ2個）（機能ブロック SSD-FD-SRB-ATT-001） */
        port i_FL_SRB_02 : ~SrbStructuralLoadPort;
        port i_FL_SRB_15 : ~PyroCommandPort;
        port i_FL_SRB_34 : ~SrbDataPort;
    }
    part def <'EQ-SRB-09'> AftStruts {
        doc /* 後部の結合点（上・斜め・下の3本の支柱、各 NSI 圧力カートリッジ2個）（機能ブロック SSD-FD-SRB-ATT-001） */
        port i_FL_SRB_03 : ~SrbStructuralLoadPort;
        port i_FL_SRB_16 : ~PyroCommandPort;
    }
    part def <'EQ-SRB-10'> BoosterSeparationMotor {
        doc /* 分離モータ（BSM、前4基・後4基、CDF パイロジェン起爆器）（機能ブロック SSD-FD-SRB-ATT-001） */
        port i_FL_SRB_14 : ~SeparationTriggerPort;
        port i_FL_SRB_17 : ~PyroCommandPort;
    }
    part def <'EQ-SRB-11'> ForwardIea {
        doc /* 前部 IEA（前部スカート、MDM）（機能ブロック SSD-FD-SRB-AVN-001） */
        port i_FL_SRB_21 : ~SrbDataPort;
    }
    part def <'EQ-SRB-12'> AftIea {
        doc /* 後部 IEA（ET/SRB 結合リング、MDM、APU 制御器の電子装置）（機能ブロック SSD-FD-SRB-AVN-001） */
        port i_FL_SRB_18 : ~SrbDataPort;
        port o_FL_SRB_19 : SrbDataPort;
        port o_FL_SRB_20 : SrbDataPort;
        port o_FL_SRB_21 : SrbDataPort;
        port o_FL_SRB_22 : SrbDataPort;
        port i_FL_SRB_31 : ~SrbPowerPort;
    }
    part def <'EQ-SRB-13'> SrbBus {
        doc /* SRB 母線 A・B・C（機能ブロック SSD-FD-SRB-AVN-001） */
        port i_FL_SRB_29 : ~SrbPowerPort;
        port i_FL_SRB_30 : ~SrbPowerPort;
        port o_FL_SRB_31 : SrbPowerPort;
    }
    part def <'EQ-SRB-14'> SrbRateGyro {
        doc /* SRB レートジャイロ組立（SRGA、ピッチ・ヨー）（機能ブロック SSD-FD-SRB-AVN-001） */
        port o_FL_SRB_28 : SrbDataPort;
    }
    part def <'EQ-SRB-15'> SrbRangeSafetySystem {
        doc /* 射場安全系（RSS：アンテナカプラ・受信機／デコーダ・分配器・S&A・CDF・LSC・RSS 電池）（機能ブロック SSD-FD-SRB-AVN-001） */
        port i_FL_SRB_32 : ~SrbPowerPort;
        port o_FL_SRB_34 : SrbDataPort;
    }
    part def <'EQ-SRB-16'> RecoveryBattery {
        doc /* 回収用電池（機能ブロック SSD-FD-SRB-AVN-001） */
        port o_FL_SRB_32 : SrbPowerPort;
        port o_FL_SRB_33 : SrbPowerPort;
    }
    part def <'EQ-SRB-17'> HydraulicPowerUnit {
        doc /* HPU 1・2（APU・燃料供給モジュール・油圧ポンプ・リザーバ・マニホールド）（機能ブロック SSD-FD-SRB-TVC-001） */
        port i_FL_SRB_22 : ~SrbDataPort;
        port o_FL_SRB_23 : SrbHydraulicsPort;
        port i_FL_SRB_24 : ~SrbDataPort;
    }
    part def <'EQ-SRB-18'> ServoActuator {
        doc /* ロック／チルトのサーボアクチュエータ（4つのサーボ弁、切替弁、位置変換器、着水時の荷重緩和）（機能ブロック SSD-FD-SRB-TVC-001） */
        port i_FL_SRB_23 : ~SrbHydraulicsPort;
        port o_FL_SRB_24 : SrbDataPort;
        port i_FL_SRB_25 : ~ActuatorCommandPort;
        port o_FL_SRB_26 : ActuatorCommandPort;
        port o_FL_SRB_27 : SrbStructuralLoadPort;
    }
    part def <'EQ-SRB-19'> RecoverySequenceHardware {
        doc /* 回収の展開機構（高度・低高度の気圧スイッチ、ノーズキャップのスラスタ、パイロットシュート、ドローグシュート、フラスタム）（機能ブロック SSD-FD-SRB-REC-001） */
        port i_FL_SRB_33 : ~SrbPowerPort;
        port o_FL_SRB_35 : SrbStructuralLoadPort;
    }
    part def <'EQ-SRB-20'> MainParachutes {
        doc /* 主パラシュート（3本）と SWAR（機能ブロック SSD-FD-SRB-REC-001） */
        port i_FL_SRB_35 : ~SrbStructuralLoadPort;
    }
    // ---- 図201 SRB 内部ブロック図：接続（SrbInterconnection は SRB を特化）
    part def SrbInterconnection :> SRB {
        doc /* 固体ロケットブースタ（モータ、TVC、アビオニクス、ホールドダウンと点火、結合と分離、回収）の内部ブロック図（図201）。基の機能ブロック SSD-FD-SRB-001。 */
        part redefines mtr {
            part motorCase : MotorCase;
            part solidPropellant : SolidPropellant;
            part motorIgniter : MotorIgniter;
            part nozzleAssembly : NozzleAssembly;
        }
        part redefines hdp {
            part holdDownPost[4] : HoldDownPost;
            part pyroInitiatorController : PyroInitiatorController;
            part safeArmDevice : SafeArmDevice;
        }
        part redefines att {
            part forwardAttachPoint : ForwardAttachPoint;
            part aftStruts[3] : AftStruts;
            part boosterSeparationMotor[8] : BoosterSeparationMotor;
        }
        part redefines avn {
            part forwardIea : ForwardIea;
            part aftIea : AftIea;
            part srbBus[3] : SrbBus;
            part srbRateGyro[2] : SrbRateGyro;
            part srbRangeSafetySystem : SrbRangeSafetySystem;
            part recoveryBattery : RecoveryBattery;
        }
        part redefines tvc {
            part hydraulicPowerUnit[2] : HydraulicPowerUnit;
            part servoActuator[2] : ServoActuator;
        }
        part redefines rec {
            part recoverySequenceHardware : RecoverySequenceHardware;
            part mainParachutes[3] : MainParachutes;
        }
        port b_FL_SRB_01 : ~SrbStructuralLoadPort { doc /* 枠の外の相手 EB-SRB-03（ET（ET とオービタのスタック全重量）） */ }
        port b_FL_SRB_02 : ~SrbStructuralLoadPort { doc /* 枠の外の相手 EB-SRB-01（ET（前部の結合点の受け）） */ }
        port b_FL_SRB_03 : ~SrbStructuralLoadPort { doc /* 枠の外の相手 EB-SRB-02（ET（後部の3本の支柱の受け、アンビリカル）） */ }
        port b_FL_SRB_04 : SrbStructuralLoadPort { doc /* 枠の外の相手 EB-SRB-04（移動式発射台（MLP の支持ポスト）） */ }
        port b_FL_SRB_05 : SrbStructuralLoadPort { doc /* 枠の外の相手 EB-SRB-05（KSC の移動式発射台（スタッド減速台・爆風容器）） */ }
        port b_FL_SRB_06 : ~PyroCommandPort { doc /* 枠の外の相手 EB-SRB-06（DPS：GPC と MEC（点火の指令）） */ }
        port b_FL_SRB_15 : ~PyroCommandPort { doc /* 枠の外の相手 EB-SRB-07（DPS：SRB 分離シーケンス（オービタからの分離指令）） */ }
        port b_FL_SRB_16 : ~PyroCommandPort { doc /* 枠の外の相手 EB-SRB-07（DPS：SRB 分離シーケンス（オービタからの分離指令）） */ }
        port b_FL_SRB_17 : ~PyroCommandPort { doc /* 枠の外の相手 EB-SRB-07（DPS：SRB 分離シーケンス（オービタからの分離指令）） */ }
        port b_FL_SRB_18 : ~SrbDataPort { doc /* 枠の外の相手 EB-SRB-08（DPS：打上げデータバス（5台の GPC から SRB の MDM へ）） */ }
        port b_FL_SRB_19 : SrbDataPort { doc /* 枠の外の相手 EB-SRB-09（DPS：GPC（SRB の MDM からのパラメータ）） */ }
        port b_FL_SRB_20 : SrbDataPort { doc /* 枠の外の相手 EB-SRB-10（オービタ：飛行甲板の制御・表示パネルと地上テレメトリ） */ }
        port b_FL_SRB_25 : ~ActuatorCommandPort { doc /* 枠の外の相手 EB-SRB-11（GN&C：ATVC ドライバ（サーボアクチュエータへの指令電圧）） */ }
        port b_FL_SRB_26 : ActuatorCommandPort { doc /* 枠の外の相手 EB-SRB-12（GN&C：飛行制御系（アクチュエータの位置帰還）） */ }
        port b_FL_SRB_28 : SrbDataPort { doc /* 枠の外の相手 EB-SRB-13（GN&C：GPC の SRB RGA SOP（フライトアフト MDM 経由）） */ }
        port b_FL_SRB_29 : ~SrbPowerPort { doc /* 枠の外の相手 EB-SRB-14（EPS：オービタの主直流母線 A・B・C） */ }
        port b_FL_SRB_30 : ~SrbPowerPort { doc /* 枠の外の相手 EB-SRB-15（EPS：オービタの主母線 C・B の予備給電） */ }
        flow <'FL-SRB-01'> fl_srb_01 of SrbStructuralLoad from b_FL_SRB_01.structuralLoad to mtr.motorCase.i_FL_SRB_01.structuralLoad;
        flow <'FL-SRB-02'> fl_srb_02 of SrbStructuralLoad from b_FL_SRB_02.structuralLoad to att.forwardAttachPoint.i_FL_SRB_02.structuralLoad;
        flow <'FL-SRB-03'> fl_srb_03 of SrbStructuralLoad from b_FL_SRB_03.structuralLoad to att.aftStruts.i_FL_SRB_03.structuralLoad;
        flow <'FL-SRB-04'> fl_srb_04 of SrbStructuralLoad from hdp.holdDownPost.o_FL_SRB_04.structuralLoad to b_FL_SRB_04.structuralLoad;
        flow <'FL-SRB-05'> fl_srb_05 of SrbStructuralLoad from hdp.holdDownPost.o_FL_SRB_05.structuralLoad to b_FL_SRB_05.structuralLoad;
        flow <'FL-SRB-06'> fl_srb_06 from b_FL_SRB_06.dataCommand to hdp.pyroInitiatorController.i_FL_SRB_06.dataCommand {
            item :>> payload : PyroCommand {
                attribute voltageNominal :> voltage = 28 [V] { doc /* 電圧 28 V */ }
            }
        }
        flow <'FL-SRB-07'> fl_srb_07 from hdp.pyroInitiatorController.o_FL_SRB_07.dataCommand to hdp.safeArmDevice.i_FL_SRB_07.dataCommand {
            item :>> payload : PyroCommand {
                attribute voltageNominal :> voltage = 40 [V] { doc /* 電圧 40 V */ }
            }
        }
        flow <'FL-SRB-08'> fl_srb_08 of PyroCommand from hdp.pyroInitiatorController.o_FL_SRB_08.dataCommand to hdp.holdDownPost.i_FL_SRB_08.dataCommand;
        flow <'FL-SRB-09'> fl_srb_09 of IgnitionFlame from hdp.safeArmDevice.o_FL_SRB_09.heat to mtr.motorIgniter.i_FL_SRB_09.heat;
        flow <'FL-SRB-10'> fl_srb_10 of IgnitionFlame from mtr.motorIgniter.o_FL_SRB_10.heat to mtr.solidPropellant.i_FL_SRB_10.heat;
        flow <'FL-SRB-11'> fl_srb_11 from mtr.solidPropellant.o_FL_SRB_11.fluid to mtr.nozzleAssembly.i_FL_SRB_11.fluid {
            item :>> payload : CombustionGas {
                attribute pressureNominal :> pressure = 914 ['lbf/in²'] { doc /* 圧力 914 psia（絶対圧） */ }
            }
        }
        flow <'FL-SRB-12'> fl_srb_12 of CombustionGas from mtr.solidPropellant.o_FL_SRB_12.fluid to mtr.motorCase.i_FL_SRB_12.fluid;
        flow <'FL-SRB-13'> fl_srb_13 from mtr.nozzleAssembly.o_FL_SRB_13.structuralLoad to mtr.motorCase.i_FL_SRB_13.structuralLoad {
            item :>> payload : SrbStructuralLoad {
                attribute forceNominal :> force = 3300000 [lbf] { doc /* 力 3,300,000 lbf */ }
            }
        }
        flow <'FL-SRB-14'> fl_srb_14 from mtr.motorCase.o_FL_SRB_14.dataCommand to att.boosterSeparationMotor.i_FL_SRB_14.dataCommand {
            item :>> payload : SeparationTrigger {
                attribute pressureMax :> pressure = 50 ['lbf/in²'] { doc /* 圧力 最大 50 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-SRB-15'> fl_srb_15 of PyroCommand from b_FL_SRB_15.dataCommand to att.forwardAttachPoint.i_FL_SRB_15.dataCommand;
        flow <'FL-SRB-16'> fl_srb_16 of PyroCommand from b_FL_SRB_16.dataCommand to att.aftStruts.i_FL_SRB_16.dataCommand;
        flow <'FL-SRB-17'> fl_srb_17 of PyroCommand from b_FL_SRB_17.dataCommand to att.boosterSeparationMotor.i_FL_SRB_17.dataCommand;
        flow <'FL-SRB-18'> fl_srb_18 of SrbData from b_FL_SRB_18.dataCommand to avn.aftIea.i_FL_SRB_18.dataCommand;
        flow <'FL-SRB-19'> fl_srb_19 of SrbData from avn.aftIea.o_FL_SRB_19.dataCommand to b_FL_SRB_19.dataCommand;
        flow <'FL-SRB-20'> fl_srb_20 of SrbData from avn.aftIea.o_FL_SRB_20.dataCommand to b_FL_SRB_20.dataCommand;
        flow <'FL-SRB-21'> fl_srb_21 of SrbData from avn.aftIea.o_FL_SRB_21.dataCommand to avn.forwardIea.i_FL_SRB_21.dataCommand;
        flow <'FL-SRB-22'> fl_srb_22 of SrbData from avn.aftIea.o_FL_SRB_22.dataCommand to tvc.hydraulicPowerUnit.i_FL_SRB_22.dataCommand;
        flow <'FL-SRB-23'> fl_srb_23 from tvc.hydraulicPowerUnit.o_FL_SRB_23.hydraulicFluid to tvc.servoActuator.i_FL_SRB_23.hydraulicFluid {
            item :>> payload : SrbHydraulics {
                attribute pressureNominal :> pressure = 2050 ['lbf/in²'] { doc /* 圧力 2,050 psig（ゲージ圧） */ }
            }
        }
        flow <'FL-SRB-24'> fl_srb_24 of SrbData from tvc.servoActuator.o_FL_SRB_24.dataCommand to tvc.hydraulicPowerUnit.i_FL_SRB_24.dataCommand;
        flow <'FL-SRB-25'> fl_srb_25 of ActuatorCommand from b_FL_SRB_25.dataCommand to tvc.servoActuator.i_FL_SRB_25.dataCommand;
        flow <'FL-SRB-26'> fl_srb_26 of ActuatorCommand from tvc.servoActuator.o_FL_SRB_26.dataCommand to b_FL_SRB_26.dataCommand;
        flow <'FL-SRB-27'> fl_srb_27 of SrbStructuralLoad from tvc.servoActuator.o_FL_SRB_27.structuralLoad to mtr.nozzleAssembly.i_FL_SRB_27.structuralLoad;
        flow <'FL-SRB-28'> fl_srb_28 of SrbData from avn.srbRateGyro.o_FL_SRB_28.dataCommand to b_FL_SRB_28.dataCommand;
        flow <'FL-SRB-29'> fl_srb_29 from b_FL_SRB_29.electricPower to avn.srbBus.i_FL_SRB_29.electricPower {
            item :>> payload : SrbPower {
                attribute voltageMin :> voltage = 24 [V] { doc /* 電圧 24〜32 V */ }
                attribute voltageMax :> voltage = 32 [V] { doc /* 電圧 24〜32 V */ }
            }
        }
        flow <'FL-SRB-30'> fl_srb_30 of SrbPower from b_FL_SRB_30.electricPower to avn.srbBus.i_FL_SRB_30.electricPower;
        flow <'FL-SRB-31'> fl_srb_31 of SrbPower from avn.srbBus.o_FL_SRB_31.electricPower to avn.aftIea.i_FL_SRB_31.electricPower;
        flow <'FL-SRB-32'> fl_srb_32 of SrbPower from avn.recoveryBattery.o_FL_SRB_32.electricPower to avn.srbRangeSafetySystem.i_FL_SRB_32.electricPower;
        flow <'FL-SRB-33'> fl_srb_33 of SrbPower from avn.recoveryBattery.o_FL_SRB_33.electricPower to rec.recoverySequenceHardware.i_FL_SRB_33.electricPower;
        flow <'FL-SRB-34'> fl_srb_34 of SrbData from avn.srbRangeSafetySystem.o_FL_SRB_34.dataCommand to att.forwardAttachPoint.i_FL_SRB_34.dataCommand;
        flow <'FL-SRB-35'> fl_srb_35 of SrbStructuralLoad from rec.recoverySequenceHardware.o_FL_SRB_35.structuralLoad to rec.mainParachutes.i_FL_SRB_35.structuralLoad;
    }
    // ---- 図202 TPS・受動熱制御 内部ブロック図：機器
    part def <'EQ-TPS-01'> RccNoseCap :> SSD_ALC_SYS_001::Physical::PHY_TPS_01 {
        doc /* RCC ノーズキャップ・チャインパネル・前部オービタ／ET 結合部周辺（機能ブロック SSD-FD-TPS-001、機器 PHY-TPS-01） */
        port o_FL_TPS_06 : RccRadiationPort;
    }
    part def <'EQ-TPS-02'> RccWingLeadingEdge :> SSD_ALC_SYS_001::Physical::PHY_TPS_02 {
        doc /* RCC 主翼前縁パネルと T シール（機能ブロック SSD-FD-TPS-001、機器 PHY-TPS-02） */
        port o_FL_TPS_07 : RccRadiationPort;
    }
    part def <'EQ-TPS-03'> RccInternalInsulation {
        doc /* RCC の内部断熱（ノーズキャップの AB-312 ブランケットなど、前縁の Dynaflex）（機能ブロック SSD-FD-TPS-001） */
        port i_FL_TPS_06 : ~RccRadiationPort;
        port i_FL_TPS_07 : ~RccRadiationPort;
        port o_FL_TPS_08 : ThermalConductionPort;
    }
    part def <'EQ-TPS-04'> HrsiTiles :> SSD_ALC_SYS_001::Physical::PHY_TPS_03 {
        doc /* HRSI タイル（一部は FRCI タイル）（機能ブロック SSD-FD-TPS-001、機器 PHY-TPS-03） */
        port o_FL_TPS_01 : ThermalConductionPort;
    }
    part def <'EQ-TPS-05'> LrsiTiles :> SSD_ALC_SYS_001::Physical::PHY_TPS_04 {
        doc /* LRSI タイル（機能ブロック SSD-FD-TPS-001、機器 PHY-TPS-04） */
        port o_FL_TPS_02 : ThermalConductionPort;
    }
    part def <'EQ-TPS-06'> AfrsiBlankets :> SSD_ALC_SYS_001::Physical::PHY_TPS_04 {
        doc /* AFRSI ブランケット（機能ブロック SSD-FD-TPS-001、機器 PHY-TPS-04） */
        port o_FL_TPS_04 : ThermalConductionPort;
    }
    part def <'EQ-TPS-07'> FrsiBlankets :> SSD_ALC_SYS_001::Physical::PHY_TPS_05 {
        doc /* FRSI ブランケット（機能ブロック SSD-FD-TPS-001、機器 PHY-TPS-05） */
        port o_FL_TPS_05 : ThermalConductionPort;
    }
    part def <'EQ-TPS-08'> StrainIsolatorPad {
        doc /* SIP（ひずみ隔離パッド）とシリコーン接着層（機能ブロック SSD-FD-TPS-001） */
        port i_FL_TPS_01 : ~ThermalConductionPort;
        port i_FL_TPS_02 : ~ThermalConductionPort;
        port o_FL_TPS_03 : ThermalConductionPort;
    }
    part def <'EQ-TPS-09'> GapFillersAndBarriers {
        doc /* フィラバー・ギャップフィラ・熱障壁（機能ブロック SSD-FD-TPS-001） */
        port o_FL_TPS_09 : ThermalConductionPort;
    }
    part def <'EQ-TPS-10'> BulkInsulationBlankets {
        doc /* バルク断熱ブランケット（機能ブロック SSD-FD-TCS-PTC-001） */
    }
    part def <'EQ-TPS-11'> MultilayerInsulationBlankets {
        doc /* 多層断熱ブランケット（機能ブロック SSD-FD-TCS-PTC-001） */
    }
    part def <'EQ-TPS-12'> HeaterControlSwitches {
        doc /* ヒータ制御スイッチ（RCS/OMS HEATERS、H2O LINE HTR・H2O RELIEF HTR の A AUTO・B AUTO）（機能ブロック SSD-FD-TCS-PTC-001） */
        port i_FL_TPS_10 : ~HeaterPowerPort;
        port o_FL_TPS_11 : HeaterPowerPort;
        port o_FL_TPS_14 : HeaterPowerPort;
    }
    part def <'EQ-TPS-13'> PodThermostats {
        doc /* ポッドのヒータ用サーモスタット（A・B）（機能ブロック SSD-FD-TCS-PTC-001） */
        port i_FL_TPS_11 : ~HeaterPowerPort;
        port o_FL_TPS_12 : HeaterPowerPort;
    }
    part def <'EQ-TPS-14'> WaterLineThermostats {
        doc /* 燃料電池の水管ヒータ用サーモスタット（A・B）（機能ブロック SSD-FD-TCS-PTC-001） */
        port i_FL_TPS_14 : ~HeaterPowerPort;
        port o_FL_TPS_15 : HeaterPowerPort;
    }
    part def <'EQ-TPS-15'> PodStripHeaters {
        doc /* OMS/RCS ポッドのストリップヒータ（A・B）（機能ブロック SSD-FD-TCS-PTC-001） */
        port i_FL_TPS_12 : ~HeaterPowerPort;
        port o_FL_TPS_13 : HeaterHeatPort;
    }
    part def <'EQ-TPS-16'> WaterLineHeaters {
        doc /* 燃料電池の生成水管・リリーフ管のヒータ（A・B）（機能ブロック SSD-FD-TCS-PTC-001） */
        port i_FL_TPS_15 : ~HeaterPowerPort;
        port o_FL_TPS_16 : HeaterHeatPort;
    }
    part def <'EQ-TPS-17'> PurgeCircuits {
        doc /* パージ回路（T-0 アンビリカルから非与圧区画）（機能ブロック SSD-FD-TCS-PTC-001） */
        port i_FL_TPS_17 : ~PurgeGasPort;
        port o_FL_TPS_18 : PurgeGasPort;
    }
    part def <'EQ-TPS-18'> VentDoors {
        doc /* ベントドア（1・2・6・8・9 がパージ位置を持つ）（機能ブロック SSD-FD-TCS-PTC-001） */
        port i_FL_TPS_18 : ~PurgeGasPort;
    }
    // ---- 図202 TPS・受動熱制御 内部ブロック図：接続（TpsInterconnection は ORB を特化）
    part def TpsInterconnection :> ORB {
        doc /* 熱防護系と受動熱制御（RCC・タイル・ブランケットの熱の流れ、ヒータ、パージ）の内部ブロック図（図202）。基の機能ブロック SSD-FD-ORB-001。 */
        part redefines tps {
            part rccNoseCap : RccNoseCap;
            part rccWingLeadingEdge : RccWingLeadingEdge;
            part rccInternalInsulation : RccInternalInsulation;
            part hrsiTiles : HrsiTiles;
            part lrsiTiles : LrsiTiles;
            part afrsiBlankets : AfrsiBlankets;
            part frsiBlankets : FrsiBlankets;
            part strainIsolatorPad : StrainIsolatorPad;
            part gapFillersAndBarriers : GapFillersAndBarriers;
        }
        part redefines tcs {
            part redefines ptc {
                part bulkInsulationBlankets : BulkInsulationBlankets;
                part multilayerInsulationBlankets : MultilayerInsulationBlankets;
                part heaterControlSwitches : HeaterControlSwitches;
                part podThermostats : PodThermostats;
                part waterLineThermostats : WaterLineThermostats;
                part podStripHeaters : PodStripHeaters;
                part waterLineHeaters : WaterLineHeaters;
                part purgeCircuits : PurgeCircuits;
                part ventDoors : VentDoors;
            }
        }
        port b_FL_TPS_03 : ThermalConductionPort { doc /* 枠の外の相手 EB-TPS-01（オービタの外板（アルミニウム・グラファイトエポキシの構造、STR）） */ }
        port b_FL_TPS_04 : ThermalConductionPort { doc /* 枠の外の相手 EB-TPS-01（オービタの外板（アルミニウム・グラファイトエポキシの構造、STR）） */ }
        port b_FL_TPS_05 : ThermalConductionPort { doc /* 枠の外の相手 EB-TPS-01（オービタの外板（アルミニウム・グラファイトエポキシの構造、STR）） */ }
        port b_FL_TPS_08 : ThermalConductionPort { doc /* 枠の外の相手 EB-TPS-01（オービタの外板（アルミニウム・グラファイトエポキシの構造、STR）） */ }
        port b_FL_TPS_09 : ThermalConductionPort { doc /* 枠の外の相手 EB-TPS-01（オービタの外板（アルミニウム・グラファイトエポキシの構造、STR）） */ }
        port b_FL_TPS_10 : ~HeaterPowerPort { doc /* 枠の外の相手 EB-TPS-02（電力系：燃料電池（ヒータ用の主母線）） */ }
        port b_FL_TPS_13 : HeaterHeatPort { doc /* 枠の外の相手 EB-TPS-03（OMS/RCS ポッドの推進薬とクロスフィード管） */ }
        port b_FL_TPS_16 : HeaterHeatPort { doc /* 枠の外の相手 EB-TPS-04（燃料電池の生成水管・リリーフ管） */ }
        port b_FL_TPS_17 : ~PurgeGasPort { doc /* 枠の外の相手 EB-TPS-05（地上冷却・パージ設備（T-0 アンビリカル経由）） */ }
        flow <'FL-TPS-01'> fl_tps_01 of ThermalConduction from tps.hrsiTiles.o_FL_TPS_01.heat to tps.strainIsolatorPad.i_FL_TPS_01.heat;
        flow <'FL-TPS-02'> fl_tps_02 of ThermalConduction from tps.lrsiTiles.o_FL_TPS_02.heat to tps.strainIsolatorPad.i_FL_TPS_02.heat;
        flow <'FL-TPS-03'> fl_tps_03 from tps.strainIsolatorPad.o_FL_TPS_03.heat to b_FL_TPS_03.heat {
            item :>> payload : ThermalConduction {
                attribute temperatureMax :> temperature = 350 ['°F_abs'] { doc /* 温度 最大 350°F */ }
            }
        }
        flow <'FL-TPS-04'> fl_tps_04 from tps.afrsiBlankets.o_FL_TPS_04.heat to b_FL_TPS_04.heat {
            item :>> payload : ThermalConduction {
                attribute temperatureMax :> temperature = 350 ['°F_abs'] { doc /* 温度 最大 350°F */ }
            }
        }
        flow <'FL-TPS-05'> fl_tps_05 from tps.frsiBlankets.o_FL_TPS_05.heat to b_FL_TPS_05.heat {
            item :>> payload : ThermalConduction {
                attribute temperatureMax :> temperature = 350 ['°F_abs'] { doc /* 温度 最大 350°F */ }
            }
        }
        flow <'FL-TPS-06'> fl_tps_06 of RccRadiation from tps.rccNoseCap.o_FL_TPS_06.heat to tps.rccInternalInsulation.i_FL_TPS_06.heat;
        flow <'FL-TPS-07'> fl_tps_07 of RccRadiation from tps.rccWingLeadingEdge.o_FL_TPS_07.heat to tps.rccInternalInsulation.i_FL_TPS_07.heat;
        flow <'FL-TPS-08'> fl_tps_08 of ThermalConduction from tps.rccInternalInsulation.o_FL_TPS_08.heat to b_FL_TPS_08.heat;
        flow <'FL-TPS-09'> fl_tps_09 of ThermalConduction from tps.gapFillersAndBarriers.o_FL_TPS_09.heat to b_FL_TPS_09.heat;
        flow <'FL-TPS-10'> fl_tps_10 of HeaterPower from b_FL_TPS_10.electricPower to tcs.ptc.heaterControlSwitches.i_FL_TPS_10.electricPower;
        flow <'FL-TPS-11'> fl_tps_11 of HeaterPower from tcs.ptc.heaterControlSwitches.o_FL_TPS_11.electricPower to tcs.ptc.podThermostats.i_FL_TPS_11.electricPower;
        flow <'FL-TPS-12'> fl_tps_12 of HeaterPower from tcs.ptc.podThermostats.o_FL_TPS_12.electricPower to tcs.ptc.podStripHeaters.i_FL_TPS_12.electricPower;
        flow <'FL-TPS-13'> fl_tps_13 from tcs.ptc.podStripHeaters.o_FL_TPS_13.heat to b_FL_TPS_13.heat {
            item :>> payload : HeaterHeat {
                attribute temperatureMin :> temperature = 55 ['°F_abs'] { doc /* 温度 55〜75°F */ }
                attribute temperatureMax :> temperature = 75 ['°F_abs'] { doc /* 温度 55〜75°F */ }
            }
        }
        flow <'FL-TPS-14'> fl_tps_14 of HeaterPower from tcs.ptc.heaterControlSwitches.o_FL_TPS_14.electricPower to tcs.ptc.waterLineThermostats.i_FL_TPS_14.electricPower;
        flow <'FL-TPS-15'> fl_tps_15 of HeaterPower from tcs.ptc.waterLineThermostats.o_FL_TPS_15.electricPower to tcs.ptc.waterLineHeaters.i_FL_TPS_15.electricPower;
        flow <'FL-TPS-16'> fl_tps_16 from tcs.ptc.waterLineHeaters.o_FL_TPS_16.heat to b_FL_TPS_16.heat {
            item :>> payload : HeaterHeat {
                attribute temperatureMin :> temperature = 53 ['°F_abs'] { doc /* 温度 最小 53°F */ }
            }
        }
        flow <'FL-TPS-17'> fl_tps_17 of PurgeGas from b_FL_TPS_17.fluid to tcs.ptc.purgeCircuits.i_FL_TPS_17.fluid;
        flow <'FL-TPS-18'> fl_tps_18 of PurgeGas from tcs.ptc.purgeCircuits.o_FL_TPS_18.fluid to tcs.ptc.ventDoors.i_FL_TPS_18.fluid;
    }
    // ---- 流れ → IF（詳細化）
    package FlowRefinement {
        #refinement dependency <'FL-ET-03>IF-ET-01'> from EtInterconnection::fl_et_03 to SSD_BLK_SYS_001::ET::IF_ET_01;
        #refinement dependency <'FL-ET-04>IF-SYS-01'> from EtInterconnection::fl_et_04 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_01;
        #refinement dependency <'FL-ET-07>IF-ET-02'> from EtInterconnection::fl_et_07 to SSD_BLK_SYS_001::ET::IF_ET_02;
        #refinement dependency <'FL-ET-08>IF-SYS-01'> from EtInterconnection::fl_et_08 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_01;
        #refinement dependency <'FL-ET-09>IF-MPS-01'> from EtInterconnection::fl_et_09 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_01;
        #refinement dependency <'FL-ET-10>IF-ET-01'> from EtInterconnection::fl_et_10 to SSD_BLK_SYS_001::ET::IF_ET_01;
        #refinement dependency <'FL-ET-11>IF-MPS-01'> from EtInterconnection::fl_et_11 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_01;
        #refinement dependency <'FL-ET-12>IF-ET-02'> from EtInterconnection::fl_et_12 to SSD_BLK_SYS_001::ET::IF_ET_02;
        #refinement dependency <'FL-ET-13>IF-MPS-02'> from EtInterconnection::fl_et_13 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_02;
        #refinement dependency <'FL-ET-14>IF-MPS-02'> from EtInterconnection::fl_et_14 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_MPS_02;
        #refinement dependency <'FL-ET-17>IF-SRB-01'> from EtInterconnection::fl_et_17 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_01;
        #refinement dependency <'FL-ET-19>IF-ET-03'> from EtInterconnection::fl_et_19 to SSD_BLK_SYS_001::ET::IF_ET_03;
        #refinement dependency <'FL-ET-20>IF-ET-04'> from EtInterconnection::fl_et_20 to SSD_BLK_SYS_001::ET::IF_ET_04;
        #refinement dependency <'FL-ET-21>IF-SRB-02'> from EtInterconnection::fl_et_21 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_02;
        #refinement dependency <'FL-ET-24>IF-STR-01'> from EtInterconnection::fl_et_24 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_STR_01;
        #refinement dependency <'FL-ET-26>IF-STR-02'> from EtInterconnection::fl_et_26 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_STR_02;
        #refinement dependency <'FL-ET-27>IF-ET-05'> from EtInterconnection::fl_et_27 to SSD_BLK_SYS_001::ET::IF_ET_05;
        #refinement dependency <'FL-ET-28>IF-ET-05'> from EtInterconnection::fl_et_28 to SSD_BLK_SYS_001::ET::IF_ET_05;
        #refinement dependency <'FL-ET-29>IF-DPS-09'> from EtInterconnection::fl_et_29 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_09;
        #refinement dependency <'FL-ET-30>IF-ORB-25'> from EtInterconnection::fl_et_30 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_25;
        #refinement dependency <'FL-ET-31>IF-ET-06'> from EtInterconnection::fl_et_31 to SSD_BLK_SYS_001::ET::IF_ET_06;
        #refinement dependency <'FL-ET-33>IF-ET-07'> from EtInterconnection::fl_et_33 to SSD_BLK_SYS_001::ET::IF_ET_07;
        #refinement dependency <'FL-ET-34>IF-SRB-01'> from EtInterconnection::fl_et_34 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_01;
        #refinement dependency <'FL-ET-35>IF-EPS-11'> from EtInterconnection::fl_et_35 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_EPS_11;
        #refinement dependency <'FL-ET-36>IF-ORB-27'> from EtInterconnection::fl_et_36 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_27;
        #refinement dependency <'FL-ET-37>IF-SRB-02'> from EtInterconnection::fl_et_37 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_02;
        #refinement dependency <'FL-ET-41>IF-SYS-08'> from EtInterconnection::fl_et_41 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_08;
        #refinement dependency <'FL-SRB-01>IF-SYS-02'> from SrbInterconnection::fl_srb_01 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_02;
        #refinement dependency <'FL-SRB-02>IF-SRB-01'> from SrbInterconnection::fl_srb_02 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_01;
        #refinement dependency <'FL-SRB-03>IF-SRB-02'> from SrbInterconnection::fl_srb_03 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_02;
        #refinement dependency <'FL-SRB-04>IF-SRB-03'> from SrbInterconnection::fl_srb_04 to SSD_BLK_SYS_001::MissionContext::IF_SRB_03;
        #refinement dependency <'FL-SRB-05>IF-SYS-10'> from SrbInterconnection::fl_srb_05 to SSD_BLK_SYS_001::MissionContext::IF_SYS_10;
        #refinement dependency <'FL-SRB-06>IF-ORB-26'> from SrbInterconnection::fl_srb_06 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_26;
        #refinement dependency <'FL-SRB-09>IF-SRB-06'> from SrbInterconnection::fl_srb_09 to SSD_BLK_SYS_001::SRB::IF_SRB_06;
        #refinement dependency <'FL-SRB-14>IF-SRB-07'> from SrbInterconnection::fl_srb_14 to SSD_BLK_SYS_001::SRB::IF_SRB_07;
        #refinement dependency <'FL-SRB-15>IF-DPS-08'> from SrbInterconnection::fl_srb_15 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_08;
        #refinement dependency <'FL-SRB-16>IF-DPS-08'> from SrbInterconnection::fl_srb_16 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_08;
        #refinement dependency <'FL-SRB-17>IF-DPS-08'> from SrbInterconnection::fl_srb_17 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_08;
        #refinement dependency <'FL-SRB-18>IF-DPS-07'> from SrbInterconnection::fl_srb_18 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_DPS_07;
        #refinement dependency <'FL-SRB-19>IF-ORB-18'> from SrbInterconnection::fl_srb_19 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_18;
        #refinement dependency <'FL-SRB-20>IF-SYS-03'> from SrbInterconnection::fl_srb_20 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SYS_03;
        #refinement dependency <'FL-SRB-22>IF-SRB-05'> from SrbInterconnection::fl_srb_22 to SSD_BLK_SYS_001::SRB::IF_SRB_05;
        #refinement dependency <'FL-SRB-25>IF-GNC-18'> from SrbInterconnection::fl_srb_25 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_GNC_18;
        #refinement dependency <'FL-SRB-26>IF-ORB-22'> from SrbInterconnection::fl_srb_26 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_22;
        #refinement dependency <'FL-SRB-27>IF-SRB-04'> from SrbInterconnection::fl_srb_27 to SSD_BLK_SYS_001::SRB::IF_SRB_04;
        #refinement dependency <'FL-SRB-28>IF-GNC-19'> from SrbInterconnection::fl_srb_28 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_GNC_19;
        #refinement dependency <'FL-SRB-29>IF-EPS-11'> from SrbInterconnection::fl_srb_29 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_EPS_11;
        #refinement dependency <'FL-SRB-30>IF-ORB-28'> from SrbInterconnection::fl_srb_30 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_ORB_28;
        #refinement dependency <'FL-SRB-33>IF-SRB-08'> from SrbInterconnection::fl_srb_33 to SSD_BLK_SYS_001::SRB::IF_SRB_08;
        #refinement dependency <'FL-SRB-34>IF-SRB-01'> from SrbInterconnection::fl_srb_34 to SSD_BLK_SYS_001::SpaceTransportationSystem::IF_SRB_01;
        #refinement dependency <'FL-TPS-03>IF-ORB-37'> from TpsInterconnection::fl_tps_03 to SSD_BLK_SYS_001::ORB::IF_ORB_37;
        #refinement dependency <'FL-TPS-04>IF-ORB-37'> from TpsInterconnection::fl_tps_04 to SSD_BLK_SYS_001::ORB::IF_ORB_37;
        #refinement dependency <'FL-TPS-05>IF-ORB-37'> from TpsInterconnection::fl_tps_05 to SSD_BLK_SYS_001::ORB::IF_ORB_37;
        #refinement dependency <'FL-TPS-08>IF-ORB-37'> from TpsInterconnection::fl_tps_08 to SSD_BLK_SYS_001::ORB::IF_ORB_37;
        #refinement dependency <'FL-TPS-09>IF-ORB-37'> from TpsInterconnection::fl_tps_09 to SSD_BLK_SYS_001::ORB::IF_ORB_37;
        #refinement dependency <'FL-TPS-10>IF-TCS-20'> from TpsInterconnection::fl_tps_10 to SSD_BLK_SYS_001::ORB::IF_TCS_20;
        #refinement dependency <'FL-TPS-13>IF-TCS-20'> from TpsInterconnection::fl_tps_13 to SSD_BLK_SYS_001::ORB::IF_TCS_20;
        #refinement dependency <'FL-TPS-16>IF-TCS-20'> from TpsInterconnection::fl_tps_16 to SSD_BLK_SYS_001::ORB::IF_TCS_20;
        #refinement dependency <'FL-TPS-17>IF-TCS-17'> from TpsInterconnection::fl_tps_17 to SSD_BLK_SYS_001::MissionContext::IF_TCS_17;
    }
    // ---- 状態機械
    item def SrbEv01 { doc /* 事象：最終カウントダウン（T−5:00 で S&A をアーム、T−28 s で HPU を運転） */ }
    item def SrbEv02 { doc /* 事象：点火指令（T−0、MEC から PIC へ arm・fire 1・fire 2） */ }
    item def SrbEv03 { doc /* 事象：T−3 s までに SSME が 90% に届かない、または T−31 s 以降の打上げ中止（カットオフ） */ }
    item def SrbEv04 { doc /* 事象：安全化の手順の完了（T−20 分への再サイクルまたはスクラブ） */ }
    item def SrbEv05 { doc /* 事象：保持ボルトの解放（破断ナットが切れる） */ }
    item def SrbEv06 { doc /* 事象：離昇約50秒（穿孔の形で推力を約3分の1下げる） */ }
    item def SrbEv07 { doc /* 事象：両 SRB の頭部の燃焼圧が 50 psi 以下（Pc < 50 の表示） */ }
    item def SrbEv08 { doc /* 事象：SRB 分離の手順（アクチュエータ中立・SSME 第2段構成・RSS の電源断・回収系の電源投入） */ }
    item def SrbEv09 { doc /* 事象：火工品の発火の指令から 30 ms 以内に分離、BSM が 1.02 s 燃焼 */ }
    item def SrbEv10 { doc /* 事象：高高度の気圧スイッチ（高度 15,700 ft・分離188秒後） */ }
    item def SrbEv11 { doc /* 事象：低高度の気圧スイッチ（高度 5,500 ft・分離243秒後） */ }
    item def SrbEv12 { doc /* 事象：着水（分離277秒後・76 ft/s） */ }
    item def SrbEv13 { doc /* 事象：回収船の到着・主パラシュートの回収・曳航 */ }
    item def SrbEv14 { doc /* 事象：再整備したモータセグメント・点火器・ノズルで再び積み上げる */ }
    item def SrbEv15 { doc /* 事象：両方の HPU の油圧供給圧が 1000 psig 以下 */ }
    item def SrbEv16 { doc /* 事象：両方の HPU の油圧供給圧が 1000 psig 以下 */ }
    item def SrbEv17 { doc /* 事象：制御喪失に至らず、燃焼が終わる */ }
    item def SrbEv18 { doc /* 事象：レッドラインの逸脱で FCO が arm・fire を送る */ }
    item def SrbEv19 { doc /* 事象：レッドラインの逸脱で FCO が arm・fire を送る */ }
    item def SrbEv20 { doc /* 事象：制御喪失・レッドラインの逸脱で FCO が arm・fire を送る */ }
    item def EtkEv01 { doc /* 事象：T−5時間50分に SSME の LH2 チルダウンの手順を開始 */ }
    item def EtkEv02 { doc /* 事象：T−5時間15分に LO2 と LH2 の高速充填を開始 */ }
    item def EtkEv03 { doc /* 事象：LH2 が 98% になり（T−3時間45秒）低速のトッピングを開始 */ }
    item def EtkEv04 { doc /* 事象：T−3時間15分に LH2、T−3時間10分に LO2 の補充を開始 */ }
    item def EtkEv05 { doc /* 事象：T−2分55秒に LO2 の vent 弁を閉じて 21 psig に加圧、T−1分57秒に LH2 の vent 弁を閉じて 42 psig に加圧 */ }
    item def EtkEv06 { doc /* 事象：T−0 の離昇（T−0 アンビリカル解放、各 SSME の GO2・GH2 による加圧に切替え） */ }
    item def EtkEv07 { doc /* 事象：所定の速度に達した MECO、または LO2/LH2 の枯渇センサ4つのうち2つが乾き */ }
    item def EtkEv08 { doc /* 事象：MECO の確認（約 8分30秒 MET）で ET 分離の手順を開始 */ }
    item def EtkEv09 { doc /* 事象：GPC が ET 分離の火工品を指令し、直前にタンブル系が作動する */ }
    item def EtkEv10 { doc /* 事象：ET SEP INH（角速度が 0.7 deg/s 超または切離し弁が閉じない） */ }
    item def EtkEv11 { doc /* 事象：乗員が角速度を零にするか、手動で分離を始める */ }
    item def EtkEv12 { doc /* 事象：RTLS・TAL でベントのための短い遅れののち自動で分離 */ }
    item def EtkEv13 { doc /* 事象：ET SEPARATION スイッチの dilemma（ET SEP MAN が既定） */ }
    item def EtkEv14 { doc /* 事象：乗員が手動で ET 分離を始める */ }
    item def EtkEv15 { doc /* 事象：打上げのスクラブ（装填中）でデタンキング */ }
    item def EtkEv16 { doc /* 事象：排出の完了 */ }
    item def EtkEv17 { doc /* 事象：レッドラインの逸脱で FCO が破壊の指令を送る */ }
    state def SrbStates {
        doc /* 図203 SRB 状態遷移図：固体ロケットブースタ（SRB）の状態（固体ロケットブースタ（SRB）） */
        @PhaseMode { phase = "PH-1"; states = "SRBS-01,SRBS-02,SRBS-13"; }
        @PhaseMode { phase = "PH-2"; states = "SRBS-03,SRBS-04,SRBS-05,SRBS-06,SRBS-07,SRBS-08,SRBS-09,SRBS-10,SRBS-11,SRBS-14,SRBS-15"; }
        attribute srbGuard01 : ScalarValues::Boolean { doc /* ガード：安全ピンは数日前に外し済み */ }
        attribute srbGuard02 : ScalarValues::Boolean { doc /* ガード：3基の SSME が定格の 90% 以上、SSME 故障・PIC 低電圧・保留なし */ }
        attribute srbGuard03 : ScalarValues::Boolean { doc /* ガード：SRB は未点火 */ }
        attribute srbGuard04 : ScalarValues::Boolean { doc /* ガード：RSLS が制御を GLS に戻した後 */ }
        attribute srbGuard05 : ScalarValues::Boolean { doc /* ガード：燃焼圧が 563.5 psia に達する（点火 0.23 s 後） */ }
        attribute srbGuard06 : ScalarValues::Boolean { doc /* ガード：最大動圧の領域 */ }
        attribute srbGuard07 : ScalarValues::Boolean { doc /* ガード：センサの偏りに備えて点火からの時間でも進む（遅くとも MET 2:20） */ }
        attribute srbGuard08 : ScalarValues::Boolean { doc /* ガード：各 SRB の推力が 100,000 lb 未満 */ }
        attribute srbGuard09 : ScalarValues::Boolean { doc /* ガード：約5秒の推力の尾引きのあと */ }
        attribute srbGuard10 : ScalarValues::Boolean { doc /* ガード：ノーズキャップのスラスタが作動 */ }
        attribute srbGuard11 : ScalarValues::Boolean { doc /* ガード：フラスタムをドローグが引き離す */ }
        attribute srbGuard12 : ScalarValues::Boolean { doc /* ガード：ノズルを下に着水 */ }
        attribute srbGuard13 : ScalarValues::Boolean { doc /* ガード：SWAR で主パラシュートが外れた後 */ }
        attribute srbGuard14 : ScalarValues::Boolean { doc /* ガード：再使用（20 ミッションの設計） */ }
        attribute srbGuard15 : ScalarValues::Boolean { doc /* ガード：主から副への切替え（2050 psi）だけでは TVC は失われない */ }
        attribute srbGuard16 : ScalarValues::Boolean { doc /* ガード：同上 */ }
        attribute srbGuard17 : ScalarValues::Boolean { doc /* ガード：手動の制御も乗員の処置もなく飛行を続ける */ }
        attribute srbGuard18 : ScalarValues::Boolean { doc /* ガード：第1段の飛行終了 */ }
        attribute srbGuard19 : ScalarValues::Boolean { doc /* ガード：第1段の飛行終了 */ }
        attribute srbGuard20 : ScalarValues::Boolean { doc /* ガード：第1段の飛行終了 */ }
        entry; then SRBS_01;
        state SRBS_01 { doc /* SRBS-01 射点で保持（ホールドダウン・S&A セーフ） */ }
        state SRBS_02 { doc /* SRBS-02 アーム済み・カウントダウン（S&A アーム・HPU 運転） */ }
        state SRBS_03 { doc /* SRBS-03 点火（PIC の発火・保持ボルトの解放） */ }
        state SRBS_04 { doc /* SRBS-04 第1段の燃焼（高推力・TVC） */ }
        state SRBS_05 { doc /* SRBS-05 推力の谷（穿孔による推力の低下・最大動圧） */ }
        state SRBS_06 { doc /* SRBS-06 推力の低下（Pc 50 psi 以下） */ }
        state SRBS_07 { doc /* SRBS-07 分離（アクチュエータ中立・BSM） */ }
        state SRBS_08 { doc /* SRBS-08 弾道の上昇・降下 */ }
        state SRBS_09 { doc /* SRBS-09 ノーズキャップ放出・ドローグ降下 */ }
        state SRBS_10 { doc /* SRBS-10 主パラシュート降下（フラスタム分離） */ }
        state SRBS_11 { doc /* SRBS-11 着水・浮遊（SWAR） */ }
        state SRBS_12 { doc /* SRBS-12 回収・再整備・再使用 */ }
        state SRBS_13 { doc /* SRBS-13 RSLS 停止・パッドアボート（点火前） */ }
        state SRBS_14 { doc /* SRBS-14 TVC 喪失（両方の HPU が 1000 psig 以下） */ }
        state SRBS_15 { doc /* SRBS-15 射場安全系による破壊 */ }
        transition SRBT_01 first SRBS_01 accept SrbEv01 if srbGuard01 then SRBS_02;
        transition SRBT_02 first SRBS_02 accept SrbEv02 if srbGuard02 then SRBS_03;
        transition SRBT_03 first SRBS_02 accept SrbEv03 if srbGuard03 then SRBS_13;
        transition SRBT_04 first SRBS_13 accept SrbEv04 if srbGuard04 then SRBS_01;
        transition SRBT_05 first SRBS_03 accept SrbEv05 if srbGuard05 then SRBS_04;
        transition SRBT_06 first SRBS_04 accept SrbEv06 if srbGuard06 then SRBS_05;
        transition SRBT_07 first SRBS_05 accept SrbEv07 if srbGuard07 then SRBS_06;
        transition SRBT_08 first SRBS_06 accept SrbEv08 if srbGuard08 then SRBS_07;
        transition SRBT_09 first SRBS_07 accept SrbEv09 if srbGuard09 then SRBS_08;
        transition SRBT_10 first SRBS_08 accept SrbEv10 if srbGuard10 then SRBS_09;
        transition SRBT_11 first SRBS_09 accept SrbEv11 if srbGuard11 then SRBS_10;
        transition SRBT_12 first SRBS_10 accept SrbEv12 if srbGuard12 then SRBS_11;
        transition SRBT_13 first SRBS_11 accept SrbEv13 if srbGuard13 then SRBS_12;
        transition SRBT_14 first SRBS_12 accept SrbEv14 if srbGuard14 then SRBS_01;
        transition SRBT_15 first SRBS_04 accept SrbEv15 if srbGuard15 then SRBS_14;
        transition SRBT_16 first SRBS_05 accept SrbEv16 if srbGuard16 then SRBS_14;
        transition SRBT_17 first SRBS_14 accept SrbEv17 if srbGuard17 then SRBS_06;
        transition SRBT_18 first SRBS_04 accept SrbEv18 if srbGuard18 then SRBS_15;
        transition SRBT_19 first SRBS_05 accept SrbEv19 if srbGuard19 then SRBS_15;
        transition SRBT_20 first SRBS_14 accept SrbEv20 if srbGuard20 then SRBS_15;
    }
    state def ExternalTankStates {
        doc /* 図204 ET 状態遷移図：外部タンク（ET）の状態（外部タンク（ET）） */
        @PhaseMode { phase = "PH-1"; states = "ETKS-01,ETKS-02,ETKS-03,ETKS-04,ETKS-05,ETKS-06,ETKS-07,ETKS-14"; }
        @PhaseMode { phase = "PH-2"; states = "ETKS-08,ETKS-09,ETKS-10,ETKS-11,ETKS-12,ETKS-13,ETKS-15"; }
        attribute etkGuard01 : ScalarValues::Boolean { doc /* ガード：打上げ処理システムの手順 */ }
        attribute etkGuard02 : ScalarValues::Boolean { doc /* ガード：LH2 再循環ポンプを始動 */ }
        attribute etkGuard03 : ScalarValues::Boolean { doc /* ガード：LO2 の高速充填は T−3時間30分に終了 */ }
        attribute etkGuard04 : ScalarValues::Boolean { doc /* ガード：装填中は vent 弁を開いたまま */ }
        attribute etkGuard05 : ScalarValues::Boolean { doc /* ガード：LO2 のキャップは離昇の約2分前に引き込む */ }
        attribute etkGuard06 : ScalarValues::Boolean { doc /* ガード：SSME が 90% に達し SRB が点火された */ }
        attribute etkGuard07 : ScalarValues::Boolean { doc /* ガード：センサは有効になった後のみ */ }
        attribute etkGuard08 : ScalarValues::Boolean { doc /* ガード：MECO CONFIRMED のフラグが立つ */ }
        attribute etkGuard09 : ScalarValues::Boolean { doc /* ガード：角速度が 0.7 deg/s 以下で、17 in の切離し弁が閉じた */ }
        attribute etkGuard10 : ScalarValues::Boolean { doc /* ガード：通常・ATO。TAL は過大な角速度のときだけ */ }
        attribute etkGuard11 : ScalarValues::Boolean { doc /* ガード：ET SEPARATION スイッチで手動にできる */ }
        attribute etkGuard12 : ScalarValues::Boolean { doc /* ガード：TAL は過大な角速度が無いとき、RTLS は SRB 分離の指令の後 */ }
        attribute etkGuard16 : ScalarValues::Boolean { doc /* ガード：センサなどの点検後に再び装填できる */ }
        attribute etkGuard17 : ScalarValues::Boolean { doc /* ガード：第1段は SRB 側の破壊が ET の推進薬も分散させる */ }
        entry; then ETKS_01;
        state ETKS_01 { doc /* ETKS-01 空（射点・未装填） */ }
        state ETKS_02 {
            doc /* ETKS-02 推進薬の装填 */
            entry; then ETKS_03;
            state ETKS_03 { doc /* ETKS-03 チルダウン（LH2 の再循環） */ }
            state ETKS_04 { doc /* ETKS-04 高速充填 */ }
            state ETKS_05 { doc /* ETKS-05 低速のトッピング（LH2 を 100% へ） */ }
            state ETKS_06 { doc /* ETKS-06 補充（replenish） */ }
        }
        state ETKS_07 { doc /* ETKS-07 打上げ前の加圧（vent 弁を閉・GSE のヘリウム） */ }
        state ETKS_08 { doc /* ETKS-08 上昇中の供給（GO2・GH2 での加圧・ベント/逃し） */ }
        state ETKS_09 { doc /* ETKS-09 MECO（速度または枯渇センサ） */ }
        state ETKS_10 { doc /* ETKS-10 分離の手順（切離し弁を閉・アンビリカルの解放） */ }
        state ETKS_11 { doc /* ETKS-11 分離の抑止（ET SEP INH） */ }
        state ETKS_12 { doc /* ETKS-12 手動の分離（ET SEP MAN） */ }
        state ETKS_13 { doc /* ETKS-13 タンブル・再突入・破壊 */ }
        state ETKS_14 { doc /* ETKS-14 排出（ドレン・デタンキング） */ }
        state ETKS_15 { doc /* ETKS-15 レンジセーフティによる破壊 */ }
        transition ETKT_01 first ETKS_01 accept EtkEv01 if etkGuard01 then ETKS_02.ETKS_03;
        transition ETKT_02 first ETKS_02.ETKS_03 accept EtkEv02 if etkGuard02 then ETKS_02.ETKS_04;
        transition ETKT_03 first ETKS_02.ETKS_04 accept EtkEv03 if etkGuard03 then ETKS_02.ETKS_05;
        transition ETKT_04 first ETKS_02.ETKS_05 accept EtkEv04 if etkGuard04 then ETKS_02.ETKS_06;
        transition ETKT_05 first ETKS_02.ETKS_06 accept EtkEv05 if etkGuard05 then ETKS_07;
        transition ETKT_06 first ETKS_07 accept EtkEv06 if etkGuard06 then ETKS_08;
        transition ETKT_07 first ETKS_08 accept EtkEv07 if etkGuard07 then ETKS_09;
        transition ETKT_08 first ETKS_09 accept EtkEv08 if etkGuard08 then ETKS_10;
        transition ETKT_09 first ETKS_10 accept EtkEv09 if etkGuard09 then ETKS_13;
        transition ETKT_10 first ETKS_10 accept EtkEv10 if etkGuard10 then ETKS_11;
        transition ETKT_11 first ETKS_11 accept EtkEv11 if etkGuard11 then ETKS_13;
        transition ETKT_12 first ETKS_10 accept EtkEv12 if etkGuard12 then ETKS_13;
        transition ETKT_13 first ETKS_10 accept EtkEv13 then ETKS_12;
        transition ETKT_14 first ETKS_12 accept EtkEv14 then ETKS_13;
        transition ETKT_15 first ETKS_02 accept EtkEv15 then ETKS_14;
        transition ETKT_16 first ETKS_14 accept EtkEv16 if etkGuard16 then ETKS_01;
        transition ETKT_17 first ETKS_08 accept EtkEv17 if etkGuard17 then ETKS_15;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def SrbStatesHolder :> SRB {
        doc /* 固体ロケットブースタ（SRB）（SSD-FD-SRB-001）は SrbStates の状態を持つ */
        exhibit state srbStates : SrbStates;
    }
    part def ExternalTankStatesHolder :> ET {
        doc /* 外部タンク（ET）（SSD-FD-ET-001）は ExternalTankStates の状態を持つ */
        exhibit state externalTankStates : ExternalTankStates;
    }
    // ---- 活動（行動・判断・合流と流れ）
    action def TpsInspectionAndDisposition {
        doc /* 図205 飛行中の TPS の点検と損傷の判断 活動図：飛行中の TPS の点検と損傷の判断（STS-114 以降の手順） */
        attribute dockingToIss : ScalarValues::Boolean { doc /* ガード：ISS へランデブする */ }
        attribute entrySurvivable : ScalarValues::Boolean { doc /* ガード：耐える */ }
        action AC_TP_01 { doc /* AC-TP-01 上昇中の映像（ET カメラ・地上の撮影）と WLEIDS で、衝突の可能性を探す */ }
        action AC_TP_02 { doc /* AC-TP-02 SRMS と OBSS で翼前縁・ノーズ・機体下面を点検する */ }
        decide DC_TP_01;
            if dockingToIss then AC_TP_03;
            if not dockingToIss then AC_TP_04;
        action AC_TP_03 { doc /* AC-TP-03 ランデブ時の RPM で ISS から機体下面を撮影する */ }
        merge MG_TP_01;
        action AC_TP_05 { doc /* AC-TP-05 DAT が画像から関心領域を評価し、必要なら LCS・ITVC で焦点を絞った点検を行い、評価を繰り返す */ }
        decide DC_TP_02;
            if entrySurvivable then AC_TP_06;
            if not entrySurvivable then AC_TP_07;
        action AC_TP_06 { doc /* AC-TP-06 MMT が再突入を承認する */ }
        action AC_TP_04 { doc /* AC-TP-04 OBSS で右舷・左舷の下面のタイルを追加で点検する */ }
        action AC_TP_07 { doc /* AC-TP-07 EVA で修理する（ギャップフィラの除去、NOAX・EWA によるタイル／RCC の修理） */ }
        action AC_TP_08 { doc /* AC-TP-08 修理で足りなければ ISS に待避し（CSCS）、救援機（STS-400 の例）を待つ */ }
        first start then AC_TP_01;
        first AC_TP_01 then AC_TP_02;
        first AC_TP_02 then DC_TP_01;
        first AC_TP_03 then MG_TP_01;
        first AC_TP_04 then MG_TP_01;
        first MG_TP_01 then AC_TP_05;
        first AC_TP_05 then DC_TP_02;
        first AC_TP_06 then done;
        first AC_TP_07 then AC_TP_08;
        first AC_TP_08 then done;
    }
}
