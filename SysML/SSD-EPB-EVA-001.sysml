// SysML v2 テキスト：EMU の消耗品と前呼吸（持続時間・組織の窒素と R 値）
// SSD-EPB-EVA-001 EMU の消耗品と前呼吸の定義書（持続時間・組織の窒素と R 値） の表から生成（lib/build_docs_bn.py・rev_bn/bndata.py）。値の根拠の頁は SSD-EPB-EVA-001 にある。
package SSD_EPB_EVA_001 {
    doc /* SSD-EPB-EVA-001 EMU の消耗品と前呼吸の定義書（持続時間・組織の窒素と R 値）。図183・184 と同じモデル。値は資料の単位で、単位は doc に書く。計算は本書が行い、結果を属性に書いた。 */
    private import ScalarValues::*;
    private import SampledFunctions::*;
    metadata def CriterionFrom { doc /* 照合の基準の出どころ（照合表の 3001 の要求） */ }
    attribute def TissueNitrogenProfile :> SampledFunction { doc /* 時間（min）→ 360分の組織の窒素分圧（psia） */ }
    part def EmuConsumables {
        doc /* EMU の消耗品と前呼吸のパラメータ（EPB-P の表） */
        attribute <'EPB-P01'> p01 : Real = 1.217 { doc /* 一次 O2 の容量（lb） */ }
        attribute <'EPB-P02'> p02 : Real = 1.48 { doc /* LiOH カートリッジの CO2 の吸収量（lb） */ }
        attribute <'EPB-P03'> p03 : Real = 32.0 { doc /* 電池の容量（Ah） */ }
        attribute <'EPB-P04'> p04 : Real = 3.5 { doc /* 電池の負荷の電流（A） */ }
        attribute <'EPB-P05'> p05 : Real = 1000.0 { doc /* EMU の設計の代謝率（Btu/hr） */ }
        attribute <'EPB-P06'> p06 : Real = 800.0 { doc /* EV 乗員の平均の代謝率（Btu/hr） */ }
        attribute <'EPB-P07'> p07 : Real = 0.0739 { doc /* 乗員1人の O2 の消費（代謝 450 Btu/hr）（lb/man-hour） */ }
        attribute <'EPB-P08'> p08 : Real = 0.0882 { doc /* 乗員1人の CO2 の生成（代謝 450 Btu/hr）（lb/man-hour） */ }
        attribute <'EPB-P09'> p09 : Real = 7.0 { doc /* EVA の設計の時間（h） */ }
        attribute <'EPB-P10'> p10 : Real = 4.3 { doc /* 服の圧力（EVA）（psid） */ }
        attribute <'EPB-P11'> p11 : Real = 1.65 { doc /* R 値の許容の上限（—） */ }
    }
    constraint def <'EPB-M01'> OxygenDuration {
        doc /* 一次 O2 の持続時間：t = C ÷ (q × M ÷ 450) */
        in attribute capacity : Real; in attribute useRate : Real; in attribute metabolicRate : Real; in attribute hours : Real;
        hours == capacity / (useRate * metabolicRate / 450.0)
    }
    constraint def <'EPB-M02'> LiohDuration {
        doc /* LiOH の持続時間：t = C ÷ (q × M ÷ 450) */
        in attribute capacity : Real; in attribute co2Rate : Real; in attribute metabolicRate : Real; in attribute hours : Real;
        hours == capacity / (co2Rate * metabolicRate / 450.0)
    }
    constraint def <'EPB-M03'> BatteryDuration {
        doc /* 電池の持続時間：t = C ÷ I */
        in attribute capacity : Real; in attribute current : Real; in attribute hours : Real;
        hours == capacity / current
    }
    constraint def <'EPB-M04'> TissueNitrogen {
        doc /* 組織の窒素分圧の1段：P1 = Pi + (P0 − Pi)·k（k は 360分の半減期の減衰の係数） */
        in attribute initialPressure : Real; in attribute inspiredPressure : Real; in attribute decay : Real; in attribute finalPressure : Real;
        finalPressure == inspiredPressure + (initialPressure - inspiredPressure) * decay
    }
    constraint def <'EPB-M05'> RValue {
        doc /* R ＝ 組織の窒素分圧 ÷ 服の圧力 */
        in attribute tissuePressure : Real; in attribute suitPressure : Real; in attribute r : Real;
        r == tissuePressure / suitPressure
    }
    part def DesignEva :> EmuConsumables {
        doc /* 設計の代謝率（1,000 Btu/hr）・電池 3.5 A の持続時間（本書の計算） */
        attribute o2Hours : Real = 7.4107;
        attribute liohHours : Real = 7.5510;
        attribute batteryHours : Real = 9.1429;
        assert constraint battery : BatteryDuration { in attribute :>> capacity = p03; in attribute :>> current = p04; in attribute :>> hours = batteryHours; }
    }
    package Protocols {
        analysis def <'EPB-R01'> Protocol01 {
            subject emu : EmuConsumables;
            doc /* 10.2 psi キャビン・12時間（選択肢1）。服に入る前の組織の窒素分圧 7.11 psia、R 1.65（本書の計算）。資料の R 1.65〜1.68 */
            attribute tissue : TissueNitrogenProfile = new TissueNitrogenProfile(samples = (new SamplePair(0, 11.613), new SamplePair(30, 10.961), new SamplePair(60, 10.346), new SamplePair(90, 10.186), new SamplePair(120, 10.035), new SamplePair(150, 9.893), new SamplePair(180, 9.758), new SamplePair(210, 9.631), new SamplePair(240, 9.512), new SamplePair(270, 9.398), new SamplePair(300, 9.292), new SamplePair(330, 9.191), new SamplePair(360, 9.096), new SamplePair(390, 9.006), new SamplePair(420, 8.922), new SamplePair(450, 8.842), new SamplePair(480, 8.766), new SamplePair(510, 8.695), new SamplePair(540, 8.628), new SamplePair(570, 8.564), new SamplePair(600, 8.504), new SamplePair(630, 8.448), new SamplePair(660, 8.394), new SamplePair(690, 8.344), new SamplePair(720, 8.296), new SamplePair(750, 8.252), new SamplePair(780, 8.209), new SamplePair(810, 7.749), new SamplePair(840, 7.314), new SamplePair(855, 7.105)));
            attribute r : Real = 1.6524;
        }
        analysis def <'EPB-R02'> Protocol02 {
            subject emu : EmuConsumables;
            doc /* 10.2 psi キャビン・24時間（選択肢2）。服に入る前の組織の窒素分圧 7.11 psia、R 1.65（本書の計算）。資料の R 1.65〜1.68 */
            attribute tissue : TissueNitrogenProfile = new TissueNitrogenProfile(samples = (new SamplePair(0, 11.613), new SamplePair(30, 10.961), new SamplePair(60, 10.346), new SamplePair(90, 10.186), new SamplePair(120, 10.035), new SamplePair(150, 9.893), new SamplePair(180, 9.758), new SamplePair(210, 9.631), new SamplePair(240, 9.512), new SamplePair(270, 9.398), new SamplePair(300, 9.292), new SamplePair(330, 9.191), new SamplePair(360, 9.096), new SamplePair(390, 9.006), new SamplePair(420, 8.922), new SamplePair(450, 8.842), new SamplePair(480, 8.766), new SamplePair(510, 8.695), new SamplePair(540, 8.628), new SamplePair(570, 8.564), new SamplePair(600, 8.504), new SamplePair(630, 8.448), new SamplePair(660, 8.394), new SamplePair(690, 8.344), new SamplePair(720, 8.296), new SamplePair(750, 8.252), new SamplePair(780, 8.209), new SamplePair(810, 8.169), new SamplePair(840, 8.132), new SamplePair(870, 8.096), new SamplePair(900, 8.062), new SamplePair(930, 8.031), new SamplePair(960, 8.001), new SamplePair(990, 7.972), new SamplePair(1020, 7.946), new SamplePair(1050, 7.921), new SamplePair(1080, 7.897), new SamplePair(1110, 7.874), new SamplePair(1140, 7.853), new SamplePair(1170, 7.833), new SamplePair(1200, 7.814), new SamplePair(1230, 7.796), new SamplePair(1260, 7.780), new SamplePair(1290, 7.764), new SamplePair(1320, 7.749), new SamplePair(1350, 7.735), new SamplePair(1380, 7.721), new SamplePair(1410, 7.709), new SamplePair(1440, 7.697), new SamplePair(1470, 7.686), new SamplePair(1500, 7.675), new SamplePair(1530, 7.244), new SamplePair(1540, 7.106)));
            attribute r : Real = 1.6526;
        }
        analysis def <'EPB-R03'> Protocol03 {
            subject emu : EmuConsumables;
            doc /* 10.2 psi キャビン・20時間。服に入る前の組織の窒素分圧 7.07 psia、R 1.64（本書の計算）。資料の R 1.65〜1.68 */
            attribute tissue : TissueNitrogenProfile = new TissueNitrogenProfile(samples = (new SamplePair(0, 11.613), new SamplePair(30, 10.961), new SamplePair(60, 10.346), new SamplePair(90, 10.186), new SamplePair(120, 10.035), new SamplePair(150, 9.893), new SamplePair(180, 9.758), new SamplePair(210, 9.631), new SamplePair(240, 9.512), new SamplePair(270, 9.398), new SamplePair(300, 9.292), new SamplePair(330, 9.191), new SamplePair(360, 9.096), new SamplePair(390, 9.006), new SamplePair(420, 8.922), new SamplePair(450, 8.842), new SamplePair(480, 8.766), new SamplePair(510, 8.695), new SamplePair(540, 8.628), new SamplePair(570, 8.564), new SamplePair(600, 8.504), new SamplePair(630, 8.448), new SamplePair(660, 8.394), new SamplePair(690, 8.344), new SamplePair(720, 8.296), new SamplePair(750, 8.252), new SamplePair(780, 8.209), new SamplePair(810, 8.169), new SamplePair(840, 8.132), new SamplePair(870, 8.096), new SamplePair(900, 8.062), new SamplePair(930, 8.031), new SamplePair(960, 8.001), new SamplePair(990, 7.972), new SamplePair(1020, 7.946), new SamplePair(1050, 7.921), new SamplePair(1080, 7.897), new SamplePair(1110, 7.874), new SamplePair(1140, 7.853), new SamplePair(1170, 7.833), new SamplePair(1200, 7.814), new SamplePair(1230, 7.796), new SamplePair(1260, 7.780), new SamplePair(1290, 7.343), new SamplePair(1310, 7.066)));
            attribute r : Real = 1.6432;
        }
        analysis def <'EPB-R04'> Protocol04 {
            subject emu : EmuConsumables;
            doc /* 10.2 psi キャビン・16時間。服に入る前の組織の窒素分圧 7.08 psia、R 1.65（本書の計算）。資料の R 1.65〜1.68 */
            attribute tissue : TissueNitrogenProfile = new TissueNitrogenProfile(samples = (new SamplePair(0, 11.613), new SamplePair(30, 10.961), new SamplePair(60, 10.346), new SamplePair(90, 10.186), new SamplePair(120, 10.035), new SamplePair(150, 9.893), new SamplePair(180, 9.758), new SamplePair(210, 9.631), new SamplePair(240, 9.512), new SamplePair(270, 9.398), new SamplePair(300, 9.292), new SamplePair(330, 9.191), new SamplePair(360, 9.096), new SamplePair(390, 9.006), new SamplePair(420, 8.922), new SamplePair(450, 8.842), new SamplePair(480, 8.766), new SamplePair(510, 8.695), new SamplePair(540, 8.628), new SamplePair(570, 8.564), new SamplePair(600, 8.504), new SamplePair(630, 8.448), new SamplePair(660, 8.394), new SamplePair(690, 8.344), new SamplePair(720, 8.296), new SamplePair(750, 8.252), new SamplePair(780, 8.209), new SamplePair(810, 8.169), new SamplePair(840, 8.132), new SamplePair(870, 8.096), new SamplePair(900, 8.062), new SamplePair(930, 8.031), new SamplePair(960, 8.001), new SamplePair(990, 7.972), new SamplePair(1020, 7.946), new SamplePair(1050, 7.500), new SamplePair(1080, 7.079), new SamplePair(1080, 7.079)));
            attribute r : Real = 1.6462;
        }
        analysis def <'EPB-R06'> Protocol06 {
            subject emu : EmuConsumables;
            doc /* 服内の4時間の前呼吸（選択肢3）。服に入る前の組織の窒素分圧 7.32 psia、R 1.70（本書の計算）。資料の R 1.65〜1.68 */
            attribute tissue : TissueNitrogenProfile = new TissueNitrogenProfile(samples = (new SamplePair(0, 11.613), new SamplePair(30, 10.961), new SamplePair(60, 10.346), new SamplePair(90, 9.765), new SamplePair(120, 9.217), new SamplePair(150, 8.700), new SamplePair(180, 8.212), new SamplePair(210, 7.751), new SamplePair(240, 7.316), new SamplePair(240, 7.316)));
            attribute r : Real = 1.7013;
        }
        analysis def <'EPB-R07'> Protocol07 {
            subject emu : EmuConsumables;
            doc /* 非常時 EVA の最短の前呼吸（推奨）。服に入る前の組織の窒素分圧 8.70 psia、R 2.02（本書の計算）。資料の R — */
            attribute tissue : TissueNitrogenProfile = new TissueNitrogenProfile(samples = (new SamplePair(0, 11.613), new SamplePair(30, 10.961), new SamplePair(60, 10.346), new SamplePair(90, 9.765), new SamplePair(120, 9.217), new SamplePair(150, 8.700), new SamplePair(150, 8.700)));
            attribute r : Real = 2.0232;
        }
        analysis def <'EPB-R08'> Protocol08 {
            subject emu : EmuConsumables;
            doc /* 服内の3.5時間の前呼吸（STS-6、シャトルの最初の EVA）。服に入る前の組織の窒素分圧 7.75 psia、R 1.80（本書の計算）。資料の R — */
            attribute tissue : TissueNitrogenProfile = new TissueNitrogenProfile(samples = (new SamplePair(0, 11.613), new SamplePair(30, 10.961), new SamplePair(60, 10.346), new SamplePair(90, 9.765), new SamplePair(120, 9.217), new SamplePair(150, 8.700), new SamplePair(180, 8.212), new SamplePair(210, 7.751), new SamplePair(210, 7.751)));
            attribute r : Real = 1.8025;
        }
    }
    package Evaluations {
        requirement def <'EPB-E01'> Eval01 {
            doc /* 一次 O2 の持続時間（設計の代謝 1,000 Btu/hr）：基準 EVA の設計の 7 時間＋予備 30 分（A15-154）。モデル 7.41 h。判定：ほぼ満たす（予備の 30 分に 0.1 h 足りない） */
            attribute limit : Real = 7.5;
            attribute modelValue : Real = 7.4107;
            require constraint { modelValue >= limit }
        }
        requirement def <'EPB-E02'> Eval02 {
            doc /* LiOH の持続時間（設計の代謝 1,000 Btu/hr）：基準 EVA の設計の 7 時間＋予備 30 分（A15-154）。モデル 7.55 h。判定：満たす */
            attribute limit : Real = 7.5;
            attribute modelValue : Real = 7.551;
            require constraint { modelValue >= limit }
        }
        requirement def <'EPB-E03'> Eval03 {
            doc /* 電池の持続時間（3.5 A）：基準 EVA の設計の 7 時間＋予備 30 分（A15-154）。モデル 9.14 h。判定：満たす */
            attribute limit : Real = 7.5;
            attribute modelValue : Real = 9.1429;
            require constraint { modelValue >= limit }
        }
        requirement def <'EPB-E04'> Eval04 {
            doc /* R 値（10.2 psi キャビン・12時間（選択肢1））：基準 R ≤ 1.65（A13-103）。モデル 1.65。判定：満たす */
            attribute limit : Real = 1.65;
            attribute modelValue : Real = 1.65;
            require constraint { modelValue <= limit }
        }
        requirement def <'EPB-E05'> Eval05 {
            doc /* R 値（10.2 psi キャビン・24時間（選択肢2））：基準 R ≤ 1.65（A13-103）。モデル 1.65。判定：満たす */
            attribute limit : Real = 1.65;
            attribute modelValue : Real = 1.65;
            require constraint { modelValue <= limit }
        }
        requirement def <'EPB-E06'> Eval06 {
            doc /* R 値（服内の4時間の前呼吸（選択肢3））：基準 R ≤ 1.65（A13-103）。モデル 1.70。判定：満たさない */
            attribute limit : Real = 1.65;
            attribute modelValue : Real = 1.7;
            require constraint { modelValue <= limit }
        }
        requirement def <'EPB-E07'> Eval07 {
            doc /* R 値（非常時 EVA の最短の前呼吸（推奨））：基準 R ≤ 1.65（A13-103）。モデル 2.02。判定：満たさない */
            attribute limit : Real = 1.65;
            attribute modelValue : Real = 2.02;
            require constraint { modelValue <= limit }
        }
        requirement def <'EPB-E08'> Eval08 {
            doc /* R 値（服内の3.5時間の前呼吸（STS-6、シャトルの）：基準 R ≤ 1.65（A13-103）。モデル 1.80。判定：満たさない */
            attribute limit : Real = 1.65;
            attribute modelValue : Real = 1.8;
            require constraint { modelValue <= limit }
        }
        requirement def <'EPB-E09'> Eval09 {
            doc /* 減圧症の確率（地上の室の試験）：基準 4% 未満（95% の信頼度）（HSI-105）。モデル 地上の試験の症状 21〜32%（手順により）。判定：比べられない（症状の率で、基準の確率と量が違う） */
        }
        #CriterionFrom dependency <'EPB-E09>HSI-105'> from Eval09 to SSD_HSI_SYS_001::V2Criteria::V2_6008;
    }
}
