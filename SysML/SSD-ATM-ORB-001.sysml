// SysML v2 テキスト：キャビン大気の動的モデル（CO2・圧力と漏れ・熱と湿度）
// SSD-ATM-ORB-001 キャビン大気の動的モデル定義書（CO2・圧力と漏れ・熱と湿度） の表から生成（lib/build_docs_bj.py・rev_bj/bjdata.py・rev_bj/bjmodel.py）。値の根拠の頁は SSD-ATM-ORB-001 にある。
package SSD_ATM_ORB_001 {
    doc /* SSD-ATM-ORB-001 キャビン大気の動的モデル定義書（CO2・圧力と漏れ・熱と湿度）。図163〜165 と同じモデル。値は資料の単位で、単位は doc に書く。式の評価（シナリオの計算）は本書が行い、結果を属性に書いた。 */
    private import ScalarValues::*;
    private import SampledFunctions::*;
    metadata def CriterionFrom { doc /* 照合の基準の出どころ（照合表の 3001 の要求） */ }
    attribute def AtmosphereProfile :> SampledFunction { doc /* 時間（h）→ 量（単位は doc） */ }
    // ---- パラメータ
    part def CabinAtmosphere {
        doc /* 乗員室の大気（パラメータの値は ATM-P の表） */
        attribute <'ATM-P01'> p01 : Real = 2475.0 { doc /* 乗員室の容積（ft3） */ }
        attribute <'ATM-P02'> p02 : Real = 14.7 { doc /* 全圧（通常）（psia） */ }
        attribute <'ATM-P03'> p03 : Real = 75.0 { doc /* 乗員室の空気の温度（質量の計算）（°F） */ }
        attribute <'ATM-P04'> p04 : Real = 0.0882 { doc /* 乗員1人の CO2 の生成（lb/man-hour） */ }
        attribute <'ATM-P05'> p05 : Real = 48.0 { doc /* LiOH キャニスタ1個の定格（man-hours） */ }
        attribute <'ATM-P06'> p06 : Real = 120.0 { doc /* 各 LiOH キャニスタを通る空気の流量（lb/hr） */ }
        attribute <'ATM-P07'> p07 : Real = 1.0 { doc /* 装着部の混合の係数（式には掛けない）（—） */ }
        attribute <'ATM-P08'> p08 : Real = 110.0 { doc /* RCRS を通る空気の流量（lb/hr） */ }
        attribute <'ATM-P09'> p09 : Real = 1.76 { doc /* 乗員1人の O2 の消費（lb/人・日） */ }
        attribute <'ATM-P10'> p10 : Real = 0.36 { doc /* O2 ブリードオリフィスの流量（lb/hr） */ }
        attribute <'ATM-P11'> p11Lower : Real = 2.95 { doc /* PPO2 の制御の範囲（14.7 psia）（下限、psia） */ }
        attribute p11Upper : Real = 3.45 { doc /* PPO2 の制御の範囲（14.7 psia）（上限、psia） */ }
        attribute <'ATM-P12'> p12 : Real = 2.58 { doc /* 乗員室の漏れの率（実績）（lb/day） */ }
        attribute <'ATM-P13'> p13 : Real = 125.0 { doc /* 8 psia 非常用レギュレータの最大流量（lb/hr） */ }
        attribute <'ATM-P14'> p14 : Real = 402.5 { doc /* 乗員1人の顕熱（Btu/man-hr） */ }
        attribute <'ATM-P15'> p15 : Real = 244.5 { doc /* 乗員1人の潜熱（Btu/man-hr） */ }
        attribute <'ATM-P16'> p16 : Real = 1700.0 { doc /* 空冷の電子機器の熱負荷（Btu/hr） */ }
        attribute <'ATM-P17'> p17 : Real = 1400.0 { doc /* キャビンファンの空気流量（lb/hr） */ }
        attribute <'ATM-P18'> p18 : Real = 0.4 { doc /* キャビン熱交換器を迂回する空気の割合（—） */ }
        attribute <'ATM-P19'> p19 : Real = 50.0 { doc /* キャビン熱交換器の出口の空気の温度（°F） */ }
        attribute <'ATM-P20'> p20 : Real = 0.409 { doc /* LiOH の反応水（lb/lb CO2） */ }
    }
    // ---- モデル（式）
    constraint def <'ATM-M01'> Co2Balance {
        doc /* CO2 の物質収支（定常）：生成 n·g と除去 η·Q·m/M が等しい（f は有効な効率 η） */
        in attribute n : Real; in attribute g : Real; in attribute f : Real; in attribute q : Real; in attribute massRatio : Real;
        n * g == f * q * massRatio
    }
    constraint def <'ATM-M02'> LiohBreakthrough {
        doc /* LiOH の効率：吸収量 L が容量の knee 以下なら 1、それより上は (C − L)/((1 − knee)·C)。Rev. BQ から knee = 0（η = 1 − L/C、本書の較正） */
        in attribute load : Real; in attribute capacity : Real; in attribute knee : Real; in attribute eta : Real;
        (load <= knee * capacity and eta == 1.0) or (load > knee * capacity and eta == (capacity - load) / ((1.0 - knee) * capacity))
    }
    constraint def <'ATM-M03'> LeakPressureRate {
        doc /* 全圧と漏れ：dP/dt = (補給 − 漏れ)·P/M */
        in attribute supply : Real; in attribute leak : Real; in attribute pressure : Real; in attribute airMass : Real; in attribute rate : Real;
        rate == (supply - leak) * pressure / airMass
    }
    constraint def <'ATM-M04'> ChokedHoleFlow {
        doc /* 穴の臨界流：ṁ [lb/s] = 0.532·Cd·A·P/√T（A in²、P psia、T °R） */
        in attribute cd : Real; in attribute area : Real; in attribute pressure : Real; in attribute sqrtTemperature : Real; in attribute massFlow : Real;
        massFlow == 0.532 * cd * area * pressure / sqrtTemperature
    }
    constraint def <'ATM-M05'> OxygenBalance {
        doc /* 酸素分圧の収支：補給 F = 消費 − ブリード ＋ 漏れ（O2 の補給の間は F が O2） */
        in attribute consumption : Real; in attribute bleed : Real; in attribute leak : Real; in attribute makeup : Real;
        makeup == consumption - bleed + leak
    }
    constraint def <'ATM-M06'> CabinHeatBalance {
        doc /* 乗員室の熱収支（定常）：T = T_out ＋ Q/(ṁ·(1 − b)·c_p) */
        in attribute heatLoad : Real; in attribute fanFlow : Real; in attribute bypass : Real; in attribute outletTemperature : Real; in attribute cabinTemperature : Real;
        cabinTemperature == outletTemperature + heatLoad / (fanFlow * (1.0 - bypass) * 0.24)
    }
    constraint def <'ATM-M07'> VaporBalance {
        doc /* 水蒸気の収支：生成 = n·潜熱/1050 ＋ 0.409·n·g（凝縮の無いとき湿度比が上がる） */
        in attribute n : Real; in attribute latent : Real; in attribute g : Real; in attribute vapor : Real;
        vapor == n * latent / 1050.0 + 0.409 * n * g
    }
    part def StandardCrewCabin :> CabinAtmosphere {
        doc /* 乗員7人・14.7 psia の定常（ATM-S01・S09 の入力） */
        attribute crew : Real = 7.0;
        attribute airMass : Real = 183.692 { doc /* 空気の質量（lb、本書の計算） */ }
        attribute totalHeat : Real = 4517.5 { doc /* 熱負荷（Btu/hr）＝乗員7人の顕熱 ＋ 空冷の電子機器 */ }
        attribute steadyTemperature : Real = 72.408 { doc /* 定常の乗員室の温度（°F、ATM-S09） */ }
        assert constraint heat : CabinHeatBalance { in attribute :>> heatLoad = totalHeat; in attribute :>> fanFlow = p17; in attribute :>> bypass = p18; in attribute :>> outletTemperature = p19; in attribute :>> cabinTemperature = steadyTemperature; }
        assert constraint makeup : OxygenBalance { in attribute :>> consumption = crew * p09 / 24.0; in attribute :>> bleed = p10; in attribute :>> leak = p12 / 24.0; in attribute :>> makeup = crew * p09 / 24.0 - p10 + p12 / 24.0; }
    }
    // ---- シナリオ（本書の計算の結果）
    package Scenarios {
        analysis def <'ATM-S01'> Scenario01 {
            subject cabin : CabinAtmosphere;
            doc /* CO2：乗員7人、LiOH 2個を12時間ごとに同時に交換（48時間）。式 ATM-M01・M02。結果：最小 1.29・最大 5.25 mmHg、1時間平均の最大 4.89 mmHg */
            attribute profile : AtmosphereProfile = new AtmosphereProfile(samples = (new SamplePair(0.0, 1.287), new SamplePair(1.0, 1.329), new SamplePair(2.0, 1.412), new SamplePair(3.0, 1.517), new SamplePair(4.0, 1.640), new SamplePair(5.0, 1.782), new SamplePair(6.0, 1.947), new SamplePair(7.0, 2.140), new SamplePair(8.0, 2.368), new SamplePair(9.0, 2.638), new SamplePair(10.0, 2.961), new SamplePair(11.0, 3.348), new SamplePair(12.0, 3.815), new SamplePair(13.0, 2.133), new SamplePair(14.0, 1.788), new SamplePair(15.0, 1.782), new SamplePair(16.0, 1.889), new SamplePair(17.0, 2.051), new SamplePair(18.0, 2.255), new SamplePair(19.0, 2.500), new SamplePair(20.0, 2.795), new SamplePair(21.0, 3.148), new SamplePair(22.0, 3.573), new SamplePair(23.0, 4.085), new SamplePair(24.0, 4.703), new SamplePair(25.0, 2.437), new SamplePair(26.0, 1.943), new SamplePair(27.0, 1.895), new SamplePair(28.0, 1.995), new SamplePair(29.0, 2.165), new SamplePair(30.0, 2.384), new SamplePair(31.0, 2.651), new SamplePair(32.0, 2.974), new SamplePair(33.0, 3.363), new SamplePair(34.0, 3.832), new SamplePair(35.0, 4.397), new SamplePair(36.0, 5.078), new SamplePair(37.0, 2.569), new SamplePair(38.0, 2.013), new SamplePair(39.0, 1.946), new SamplePair(40.0, 2.043), new SamplePair(41.0, 2.216), new SamplePair(42.0, 2.442), new SamplePair(43.0, 2.720), new SamplePair(44.0, 3.055), new SamplePair(45.0, 3.460), new SamplePair(46.0, 3.949), new SamplePair(47.0, 4.539), new SamplePair(48.0, 5.247))) { doc /* 時間 h → ppCO2 mmHg */ }
        }
        analysis def <'ATM-S02'> Scenario02 {
            subject cabin : CabinAtmosphere;
            doc /* CO2：乗員7人、1個ずつ6時間ごとに交互に交換。式 ATM-M01・M02。結果：最小 1.29・最大 3.72 mmHg、1時間平均の最大 3.51 mmHg */
            attribute profile : AtmosphereProfile = new AtmosphereProfile(samples = (new SamplePair(0.0, 1.287), new SamplePair(1.0, 1.439), new SamplePair(2.0, 1.568), new SamplePair(3.0, 1.705), new SamplePair(4.0, 1.860), new SamplePair(5.0, 2.039), new SamplePair(6.0, 2.249), new SamplePair(7.0, 1.953), new SamplePair(8.0, 1.967), new SamplePair(9.0, 2.098), new SamplePair(10.0, 2.292), new SamplePair(11.0, 2.537), new SamplePair(12.0, 2.835), new SamplePair(13.0, 2.280), new SamplePair(14.0, 2.216), new SamplePair(15.0, 2.335), new SamplePair(16.0, 2.547), new SamplePair(17.0, 2.827), new SamplePair(18.0, 3.176), new SamplePair(19.0, 2.481), new SamplePair(20.0, 2.374), new SamplePair(21.0, 2.485), new SamplePair(22.0, 2.707), new SamplePair(23.0, 3.010), new SamplePair(24.0, 3.391), new SamplePair(25.0, 2.611), new SamplePair(26.0, 2.475), new SamplePair(27.0, 2.582), new SamplePair(28.0, 2.811), new SamplePair(29.0, 3.128), new SamplePair(30.0, 3.530), new SamplePair(31.0, 2.695), new SamplePair(32.0, 2.543), new SamplePair(33.0, 2.646), new SamplePair(34.0, 2.879), new SamplePair(35.0, 3.206), new SamplePair(36.0, 3.621), new SamplePair(37.0, 2.751), new SamplePair(38.0, 2.587), new SamplePair(39.0, 2.688), new SamplePair(40.0, 2.925), new SamplePair(41.0, 3.258), new SamplePair(42.0, 3.681), new SamplePair(43.0, 2.789), new SamplePair(44.0, 2.617), new SamplePair(45.0, 2.717), new SamplePair(46.0, 2.955), new SamplePair(47.0, 3.292), new SamplePair(48.0, 3.722))) { doc /* 時間 h → ppCO2 mmHg */ }
        }
        analysis def <'ATM-S03'> Scenario03 {
            subject cabin : CabinAtmosphere;
            doc /* CO2：乗員2人（STS-1 の構成）、LiOH 2個。式 ATM-M01・M02。結果：最小 0.39・最大 0.48 mmHg */
            attribute profile : AtmosphereProfile = new AtmosphereProfile(samples = (new SamplePair(0.0, 0.368), new SamplePair(1.0, 0.371), new SamplePair(2.0, 0.378), new SamplePair(3.0, 0.385), new SamplePair(4.0, 0.394), new SamplePair(5.0, 0.402), new SamplePair(6.0, 0.411), new SamplePair(7.0, 0.421), new SamplePair(8.0, 0.431), new SamplePair(9.0, 0.441), new SamplePair(10.0, 0.452), new SamplePair(11.0, 0.463), new SamplePair(12.0, 0.475), new SamplePair(13.0, 0.401), new SamplePair(14.0, 0.387), new SamplePair(15.0, 0.389), new SamplePair(16.0, 0.396), new SamplePair(17.0, 0.405), new SamplePair(18.0, 0.414), new SamplePair(19.0, 0.423), new SamplePair(20.0, 0.433), new SamplePair(21.0, 0.443), new SamplePair(22.0, 0.454), new SamplePair(23.0, 0.466), new SamplePair(24.0, 0.478), new SamplePair(25.0, 0.402), new SamplePair(26.0, 0.387), new SamplePair(27.0, 0.390), new SamplePair(28.0, 0.396), new SamplePair(29.0, 0.405), new SamplePair(30.0, 0.414), new SamplePair(31.0, 0.423), new SamplePair(32.0, 0.433), new SamplePair(33.0, 0.443), new SamplePair(34.0, 0.454), new SamplePair(35.0, 0.466), new SamplePair(36.0, 0.478), new SamplePair(37.0, 0.402), new SamplePair(38.0, 0.387), new SamplePair(39.0, 0.390), new SamplePair(40.0, 0.396), new SamplePair(41.0, 0.405), new SamplePair(42.0, 0.414), new SamplePair(43.0, 0.423), new SamplePair(44.0, 0.433), new SamplePair(45.0, 0.443), new SamplePair(46.0, 0.454), new SamplePair(47.0, 0.466), new SamplePair(48.0, 0.478))) { doc /* 時間 h → ppCO2 mmHg */ }
        }
        analysis def <'ATM-S04'> Scenario04 {
            subject cabin : CabinAtmosphere;
            doc /* CO2：乗員7人、RCRS だけ（LiOH なし）。式 ATM-M01。結果：定常 4.26 mmHg */
            attribute profile : AtmosphereProfile = new AtmosphereProfile(samples = (new SamplePair(0.0, 4.256), new SamplePair(1.0, 4.256), new SamplePair(2.0, 4.256), new SamplePair(3.0, 4.256), new SamplePair(4.0, 4.256), new SamplePair(5.0, 4.256), new SamplePair(6.0, 4.256), new SamplePair(7.0, 4.256), new SamplePair(8.0, 4.256), new SamplePair(9.0, 4.256), new SamplePair(10.0, 4.256), new SamplePair(11.0, 4.256), new SamplePair(12.0, 4.256), new SamplePair(13.0, 4.256), new SamplePair(14.0, 4.256), new SamplePair(15.0, 4.256), new SamplePair(16.0, 4.256), new SamplePair(17.0, 4.256), new SamplePair(18.0, 4.256), new SamplePair(19.0, 4.256), new SamplePair(20.0, 4.256), new SamplePair(21.0, 4.256), new SamplePair(22.0, 4.256), new SamplePair(23.0, 4.256), new SamplePair(24.0, 4.256), new SamplePair(25.0, 4.256), new SamplePair(26.0, 4.256), new SamplePair(27.0, 4.256), new SamplePair(28.0, 4.256), new SamplePair(29.0, 4.256), new SamplePair(30.0, 4.256), new SamplePair(31.0, 4.256), new SamplePair(32.0, 4.256), new SamplePair(33.0, 4.256), new SamplePair(34.0, 4.256), new SamplePair(35.0, 4.256), new SamplePair(36.0, 4.256), new SamplePair(37.0, 4.256), new SamplePair(38.0, 4.256), new SamplePair(39.0, 4.256), new SamplePair(40.0, 4.256), new SamplePair(41.0, 4.256), new SamplePair(42.0, 4.256), new SamplePair(43.0, 4.256), new SamplePair(44.0, 4.256), new SamplePair(45.0, 4.256), new SamplePair(46.0, 4.256), new SamplePair(47.0, 4.256), new SamplePair(48.0, 4.256))) { doc /* 時間 h → ppCO2 mmHg */ }
        }
        analysis def <'ATM-S05'> Scenario05 {
            subject cabin : CabinAtmosphere;
            doc /* CO2：乗員7人、除去なし（上昇・再突入・着陸後）、ATM-S01 の値から。式 ATM-M01。結果：上がる速さ 1.68 mmHg/時、7.6 mmHg まで 226 分 */
            attribute profile : AtmosphereProfile = new AtmosphereProfile(samples = (new SamplePair(0.0, 1.287), new SamplePair(1.0, 2.969), new SamplePair(2.0, 4.651), new SamplePair(3.0, 6.333), new SamplePair(4.0, 8.015))) { doc /* 時間 h → ppCO2 mmHg */ }
        }
        analysis def <'ATM-S06'> Scenario06 {
            subject cabin : CabinAtmosphere;
            doc /* 全圧：一定の漏れの dP/dt。式 ATM-M03。結果：2.58 lb/日 → -0.00014 psi/分、8.2 lb/日 → -0.00046 psi/分、3 lb/hr → -0.0040 psi/分 */
        }
        analysis def <'ATM-S07'> Scenario07 {
            subject cabin : CabinAtmosphere;
            doc /* 全圧：穴の減圧（直径 0.1〜1.0 in、8 psia 非常用レギュレータ1個）。式 ATM-M03・M04。結果：0.1 in：初めの漏れ 6 lb/hr・等価 dP/dT -0.008 psi/分・12.5 psia まで —・8 psia まで —・3時間後 13.39 psia、0.25 in：初めの漏れ 36 lb/hr・等価 dP/dT -0.048 psi/分・12.5 psia まで 50 分・8 psia まで —・3時間後 8.18 psia、0.45 in：初めの漏れ 116 lb/hr・等価 dP/dT -0.155 psi/分・12.5 psia まで 15 分・8 psia まで 58 分・3時間後 7.99 psia、0.75 in：初めの漏れ 323 lb/hr・等価 dP/dT -0.430 psi/分・12.5 psia まで 6 分・8 psia まで 21 分・3時間後 5.71 psia、1.0 in：初めの漏れ 574 lb/hr・等価 dP/dT -0.765 psi/分・12.5 psia まで 3 分・8 psia まで 12 分・3時間後 3.20 psia */
        }
        analysis def <'ATM-S08'> Scenario08 {
            subject cabin : CabinAtmosphere;
            doc /* 酸素分圧：乗員7人、14.7 psia、漏れ 2.58 lb/日（240時間）。式 ATM-M05。結果：PPO2 は 2.95〜3.45 psia を周期 約 123 時間で往復（O2 の補給で上がる 85 時間・N2 の補給で下がる 39 時間） */
            attribute profile : AtmosphereProfile = new AtmosphereProfile(samples = (new SamplePair(0.0, 3.200), new SamplePair(6.0, 3.122), new SamplePair(12.0, 3.045), new SamplePair(18.0, 2.968), new SamplePair(24.0, 2.978), new SamplePair(30.0, 3.014), new SamplePair(36.0, 3.050), new SamplePair(42.0, 3.086), new SamplePair(48.0, 3.122), new SamplePair(54.0, 3.158), new SamplePair(60.0, 3.193), new SamplePair(66.0, 3.229), new SamplePair(72.0, 3.264), new SamplePair(78.0, 3.299), new SamplePair(84.0, 3.334), new SamplePair(90.0, 3.369), new SamplePair(96.0, 3.404), new SamplePair(102.0, 3.439), new SamplePair(108.0, 3.397), new SamplePair(114.0, 3.319), new SamplePair(120.0, 3.241), new SamplePair(126.0, 3.163), new SamplePair(132.0, 3.085), new SamplePair(138.0, 3.008), new SamplePair(144.0, 2.959), new SamplePair(150.0, 2.995), new SamplePair(156.0, 3.031), new SamplePair(162.0, 3.067), new SamplePair(168.0, 3.103), new SamplePair(174.0, 3.139), new SamplePair(180.0, 3.175), new SamplePair(186.0, 3.210), new SamplePair(192.0, 3.246), new SamplePair(198.0, 3.281), new SamplePair(204.0, 3.316), new SamplePair(210.0, 3.351), new SamplePair(216.0, 3.386), new SamplePair(222.0, 3.421), new SamplePair(228.0, 3.438), new SamplePair(234.0, 3.359), new SamplePair(240.0, 3.281))) { doc /* 時間 h → PPO2 psia */ }
        }
        analysis def <'ATM-S09'> Scenario09 {
            subject cabin : CabinAtmosphere;
            doc /* 熱・湿度：乗員7人の定常（迂回 40 %、出口 50 °F）。式 ATM-M06・M07。結果：熱負荷 4,518 Btu/hr、乗員室 72.4 °F（22.4 °C）、露点 ≈ 50 °F、相対湿度 45 % */
        }
        analysis def <'ATM-S10'> Scenario10 {
            subject cabin : CabinAtmosphere;
            doc /* 熱・湿度：2つの水ループの喪失（乗員7人、75 °F・40 % から）。式 ATM-M06・M07。結果：2時間後 90.0 °F・90 %、95 °F まで 160 分、C_eff 602 Btu/°F（本書の較正） */
        }
    }
    // ---- 基準・限界との照合
    package Evaluations {
        requirement def <'ATM-E01'> Eval01 {
            doc /* CO2 分圧の1時間平均（7人・LiOH）：基準 ≤ 3 mmHg（1時間平均）（HSI-102）。モデル ATM-S01 4.89・ATM-S02 3.51 mmHg。判定：満たさない */
            attribute limit : Real = 3.0;
            attribute modelValue : Real = 4.888;
            require constraint { modelValue <= limit }
        }
        #CriterionFrom dependency <'ATM-E01>HSI-102'> from Eval01 to SSD_HSI_SYS_001::V2Criteria::V2_6004;
        requirement def <'ATM-E02'> Eval02 {
            doc /* CO2 分圧の1時間平均（7人・RCRS だけ）：基準 ≤ 3 mmHg（1時間平均）（HSI-102）。モデル ATM-S04 4.26 mmHg。判定：満たさない */
            attribute limit : Real = 3.0;
            attribute modelValue : Real = 4.2556;
            require constraint { modelValue <= limit }
        }
        #CriterionFrom dependency <'ATM-E02>HSI-102'> from Eval02 to SSD_HSI_SYS_001::V2Criteria::V2_6004;
        requirement def <'ATM-E03'> Eval03 {
            doc /* CO2 分圧の長期の最大（除去なし）：基準 ≤ 7.6 mmHg（A13-52A.2）。モデル ATM-S05：226 分で 7.6 mmHg に達する。判定：時間で決まる */
        }
        requirement def <'ATM-E04'> Eval04 {
            doc /* 漏れで 8 psia を保てる穴（非常用レギュレータ1個）：基準 乗員室圧 ≥ 8.0 psia（A13-51）。モデル 直径 0.63 in まで（2個で 0.89 in）。判定：— */
        }
        requirement def <'ATM-E05'> Eval05 {
            doc /* 上昇中の即時の完全アボートの漏れ：基準 等価 dP/dT 0.15 psia/分（A17-201）。モデル 漏れ 112 lb/hr、直径 0.44 in の穴に当たる。判定：— */
        }
        requirement def <'ATM-E06'> Eval06 {
            doc /* 吸気の酸素分圧（PIO2）：基準 目標 145〜155 mmHg（HSI-101）。モデル ATM-S08 の PPO2 2.95〜3.45 psia → PIO2 143〜167 mmHg。判定：一部満たさない（下限側・上限側で範囲の外） */
        }
        #CriterionFrom dependency <'ATM-E06>HSI-101'> from Eval06 to SSD_HSI_SYS_001::V2Criteria::V2_6003;
        requirement def <'ATM-E07'> Eval07 {
            doc /* 乗員室の温度・相対湿度（定常）：基準 18〜27 °C、25〜75 %（HSI-108）。モデル ATM-S09 22.4 °C・45 %。判定：満たす */
        }
        #CriterionFrom dependency <'ATM-E07>HSI-108'> from Eval07 to SSD_HSI_SYS_001::V2Criteria::V2_6012;
        requirement def <'ATM-E08'> Eval08 {
            doc /* 冷却の喪失の大気の制御の喪失：基準 乗員室 95 °F（A17-102A）。モデル ATM-S10：160 分で 95 °F に達する。判定：時間で決まる */
        }
    }
}
