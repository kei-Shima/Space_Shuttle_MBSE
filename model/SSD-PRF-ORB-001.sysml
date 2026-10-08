// SysML v2 テキスト：消耗品・電力プロファイル（時間軸の残量、設計と実績）
// SSD-PRF-ORB-001 消耗品・電力プロファイル定義書（時間軸の残量・設計と実績） の表から生成（lib/build_docs_aw.py・rev_aw/awdata.py）。根拠の頁は SSD-PRF-ORB-001 にある。
package SSD_PRF_ORB_001 {
    doc /* SSD-PRF-ORB-001 消耗品・電力プロファイル定義書（時間軸の残量・設計と実績）。図134・135 と同じ内容。 */
    private import ScalarValues::*;
    private import SampledFunctions::*;
    metadata def ObservedIn { doc /* 実績の時系列を得た飛行の個体（SSD-IND-ORB-001） */ }
    attribute def ConsumableProfile :> SampledFunction { doc /* 消耗品の残量の時系列（domainValue＝経過時間、rangeValue＝残量）。単位は doc に書く */ }
    analysis def ConsumableDepletion {
        doc /* 消耗品の枯渇の日＝容量 ÷ 1日の使用量（本書の計算） */
        subject mission : SSD_PAR_ORB_001::StandardMission;
        in attribute capacity : Real;
        in attribute dailyUse : Real;
        return attribute depletionDay : Real = capacity / dailyUse;
    }
    requirement def EnduranceRequirement {
        doc /* 消耗品が必要日数（軌道滞在＋予備）の間もつ */
        attribute requiredDays : Real;
        attribute depletionDay : Real;
        require constraint { depletionDay >= requiredDays }
    }
    package DesignProfiles {
        doc /* 標準ミッション（7人・10日）の日ごとの残量（0〜16 日） */
        attribute <'PFD-01'> liohRemaining : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 42.0), new SamplePair(1.0, 38.5), new SamplePair(2.0, 35.0), new SamplePair(3.0, 31.5), new SamplePair(4.0, 28.0), new SamplePair(5.0, 24.5), new SamplePair(6.0, 21.0), new SamplePair(7.0, 17.5), new SamplePair(8.0, 14.0), new SamplePair(9.0, 10.5), new SamplePair(10.0, 7.0), new SamplePair(11.0, 3.5), new SamplePair(12.0, 0.0), new SamplePair(13.0, 0.0), new SamplePair(14.0, 0.0), new SamplePair(15.0, 0.0), new SamplePair(16.0, 0.0))) { doc /* LiOH キャニスタの残量（日 → 個） */ }
        analysis liohDepletion : ConsumableDepletion {
            doc /* LiOH キャニスタ：乗員数 × 24 時間 ÷ キャニスタ1個の定格（PAR-01・PAR-05）。枯渇の日 12.00 日 */
            subject :>> mission;
            in attribute :>> capacity = 42.0;
            in attribute :>> dailyUse = 3.5;
        }
        requirement liohEndurance : EnduranceRequirement { doc /* 満たす（マージン 0） */ attribute :>> requiredDays = 12.0; attribute :>> depletionDay = 12.00; }
        attribute <'PFD-02'> o2Remaining : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 3905.0), new SamplePair(1.0, 3655.8), new SamplePair(2.0, 3406.6), new SamplePair(3.0, 3157.4), new SamplePair(4.0, 2908.2), new SamplePair(5.0, 2659.0), new SamplePair(6.0, 2409.8), new SamplePair(7.0, 2160.6), new SamplePair(8.0, 1911.4), new SamplePair(9.0, 1662.2), new SamplePair(10.0, 1413.0), new SamplePair(11.0, 1163.8), new SamplePair(12.0, 914.6), new SamplePair(13.0, 665.4), new SamplePair(14.0, 416.2), new SamplePair(15.0, 167.0), new SamplePair(16.0, 0.0))) { doc /* 酸素（PRSD 反応剤）の残量（日 → lb） */ }
        analysis o2Depletion : ConsumableDepletion {
            doc /* 酸素（PRSD 反応剤）：平均電力 × 24 時間 × 1 kWh あたりの酸素 ＋ 乗員の酸素（PAR-15・PAR-18・PAR-23）。枯渇の日 15.67 日 */
            subject :>> mission;
            in attribute :>> capacity = 3905.0;
            in attribute :>> dailyUse = 249.2;
        }
        requirement o2Endurance : EnduranceRequirement { doc /* 満たす */ attribute :>> requiredDays = 12.0; attribute :>> depletionDay = 15.67; }
        attribute <'PFD-03'> h2Remaining : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 460.0), new SamplePair(1.0, 429.76), new SamplePair(2.0, 399.52), new SamplePair(3.0, 369.28), new SamplePair(4.0, 339.04), new SamplePair(5.0, 308.8), new SamplePair(6.0, 278.56), new SamplePair(7.0, 248.32), new SamplePair(8.0, 218.08), new SamplePair(9.0, 187.84), new SamplePair(10.0, 157.6), new SamplePair(11.0, 127.36), new SamplePair(12.0, 97.12), new SamplePair(13.0, 66.88), new SamplePair(14.0, 36.64), new SamplePair(15.0, 6.4), new SamplePair(16.0, 0.0))) { doc /* 水素（PRSD 反応剤）の残量（日 → lb） */ }
        analysis h2Depletion : ConsumableDepletion {
            doc /* 水素（PRSD 反応剤）：平均電力 × 24 時間 × 1 kWh あたりの水素（PAR-15・PAR-19）。枯渇の日 15.21 日 */
            subject :>> mission;
            in attribute :>> capacity = 460.0;
            in attribute :>> dailyUse = 30.24;
        }
        requirement h2Endurance : EnduranceRequirement { doc /* 満たす */ attribute :>> requiredDays = 12.0; attribute :>> depletionDay = 15.21; }
        attribute <'PFD-04'> n2Remaining : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 360.0), new SamplePair(1.0, 354.0), new SamplePair(2.0, 348.0), new SamplePair(3.0, 342.0), new SamplePair(4.0, 336.0), new SamplePair(5.0, 330.0), new SamplePair(6.0, 324.0), new SamplePair(7.0, 318.0), new SamplePair(8.0, 312.0), new SamplePair(9.0, 306.0), new SamplePair(10.0, 300.0), new SamplePair(11.0, 294.0), new SamplePair(12.0, 288.0), new SamplePair(13.0, 282.0), new SamplePair(14.0, 276.0), new SamplePair(15.0, 270.0), new SamplePair(16.0, 264.0))) { doc /* 窒素の残量（日 → lb） */ }
        analysis n2Depletion : ConsumableDepletion {
            doc /* 窒素：窒素の使用量（PAR-12）。枯渇の日 60.00 日 */
            subject :>> mission;
            in attribute :>> capacity = 360.0;
            in attribute :>> dailyUse = 6.0;
        }
        requirement n2Endurance : EnduranceRequirement { doc /* 満たす */ attribute :>> requiredDays = 12.0; attribute :>> depletionDay = 60.0; }
    }
    package FlightProfiles {
        doc /* 飛行の反応剤の残量：実績（離昇と着陸の点、間は直線で補う）と設計の率による計算 */
        attribute <'PFC-01'> sts1O2Actual : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 97.45), new SamplePair(54.37, 59.1))) { doc /* STS-1 酸素（PRSD 反応剤）の残量の実績（時 → %） */ }
        attribute sts1O2Design : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 97.45), new SamplePair(54.37, 58.5637))) { doc /* STS-1 酸素（PRSD 反応剤）の残量の設計の率による計算（2 組のタンク（1 基 781 lb）の平均の %。設計＝平均電力 15.75 kW・乗員 2 人で飛行時間 54.37 h） */ }
        attribute <'PFC-02'> sts1H2Actual : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 92.15), new SamplePair(54.37, 50.4))) { doc /* STS-1 水素（PRSD 反応剤）の残量の実績（時 → %） */ }
        attribute sts1H2Design : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 92.15), new SamplePair(54.37, 50.2644))) { doc /* STS-1 水素（PRSD 反応剤）の残量の設計の率による計算（2 組のタンク（1 基 92 lb）の平均の %。設計＝平均電力 15.75 kW・乗員 2 人で飛行時間 54.37 h） */ }
        attribute <'PFC-03'> sts114O2Actual : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 3931.0), new SamplePair(333.55, 604.0))) { doc /* STS-114 酸素（PRSD 反応剤）の残量の実績（時 → lbm） */ }
        attribute sts114O2Design : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 3931.0), new SamplePair(333.55, 584.3817))) { doc /* STS-114 酸素（PRSD 反応剤）の残量の設計の率による計算（総量。設計＝平均電力 13.6 kW・乗員 7 人で飛行時間 333.55 h） */ }
        attribute <'PFC-04'> sts114H2Actual : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 462.0), new SamplePair(333.55, 75.0))) { doc /* STS-114 水素（PRSD 反応剤）の残量の実績（時 → lbm） */ }
        attribute sts114H2Design : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 462.0), new SamplePair(333.55, 53.7348))) { doc /* STS-114 水素（PRSD 反応剤）の残量の設計の率による計算（総量。設計＝平均電力 13.6 kW・乗員 7 人で飛行時間 333.55 h） */ }
        attribute <'PFC-05'> sts125O2Actual : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 3914.0), new SamplePair(309.65, 542.0))) { doc /* STS-125 酸素（PRSD 反応剤）の残量の実績（時 → lbm） */ }
        attribute sts125O2Design : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 3914.0), new SamplePair(309.65, 503.7213))) { doc /* STS-125 酸素（PRSD 反応剤）の残量の設計の率による計算（総量。設計＝平均電力 15 kW・乗員 7 人で飛行時間 309.65 h） */ }
        attribute <'PFC-06'> sts125H2Actual : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 456.7), new SamplePair(309.65, 53.9))) { doc /* STS-125 水素（PRSD 反応剤）の残量の実績（時 → lbm） */ }
        attribute sts125H2Design : ConsumableProfile = new ConsumableProfile(samples = (new SamplePair(0.0, 456.7), new SamplePair(309.65, 38.6725))) { doc /* STS-125 水素（PRSD 反応剤）の残量の設計の率による計算（総量。設計＝平均電力 15 kW・乗員 7 人で飛行時間 309.65 h） */ }
    }
    #ObservedIn dependency <'PFC-01>STS-1'> from FlightProfiles::sts1O2Actual to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'PFC-02>STS-1'> from FlightProfiles::sts1H2Actual to SSD_IND_ORB_001::Sts1;
    #ObservedIn dependency <'PFC-03>STS-114'> from FlightProfiles::sts114O2Actual to SSD_IND_ORB_001::Sts114;
    #ObservedIn dependency <'PFC-04>STS-114'> from FlightProfiles::sts114H2Actual to SSD_IND_ORB_001::Sts114;
    #ObservedIn dependency <'PFC-05>STS-125'> from FlightProfiles::sts125O2Actual to SSD_IND_ORB_001::Sts125;
    #ObservedIn dependency <'PFC-06>STS-125'> from FlightProfiles::sts125H2Actual to SSD_IND_ORB_001::Sts125;
}
