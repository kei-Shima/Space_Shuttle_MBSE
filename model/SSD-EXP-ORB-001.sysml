// SysML v2 テキスト：乗員の環境曝露（曝露の量のパラメトリックと時間軸のプロファイル）
// SSD-EXP-ORB-001 乗員の環境曝露定義書（曝露の量のパラメトリック・時間軸のプロファイル） の表から生成（lib/build_docs_az.py・rev_az/azdata.py）。根拠の頁は SSD-EXP-ORB-001 にある。
package SSD_EXP_ORB_001 {
    doc /* SSD-EXP-ORB-001 乗員の環境曝露定義書（曝露の量のパラメトリック・時間軸のプロファイル）。図145・146 と同じ内容。基準は照合表（SSD_HSI_SYS_001）の要求、値の単位は doc に書く。 */
    private import ScalarValues::*;
    private import SampledFunctions::*;
    metadata def CriterionFrom { doc /* 曝露の量の基準の出どころ（照合表の 3001 の要求） */ }
    attribute def ExposureProfile :> SampledFunction { doc /* 時間軸の曝露（domainValue＝時間、rangeValue＝量）。単位は doc に書く */ }
    constraint def ExposureEnvelope {
        doc /* 曝露の値が基準の下限〜上限の内にある */
        in attribute lower : Real;
        in attribute upper : Real;
        in attribute exposure : Real;
        exposure >= lower and exposure <= upper
    }
    requirement def <'EXP-01'> Exp01 {
        doc /* 乗員室の全圧（psia）。基準 5〜15（HSI-103）、設計 14.5〜14.9。設計の判定：満たす */
        attribute criterionLower : Real = 5.0;
        attribute criterionUpper : Real = 15.0;
        attribute designLower : Real = 14.5;
        attribute designUpper : Real = 14.9;
        require constraint { designUpper <= criterionUpper }
        require constraint { designLower >= criterionLower }
    }
    #CriterionFrom dependency <'EXP-01>HSI-103'> from Exp01 to SSD_HSI_SYS_001::V2Criteria::V2_6006;
    requirement def <'EXP-02'> Exp02 {
        doc /* 吸気の酸素分圧（PIO2）（mmHg）。基準 127〜356（HSI-101）、設計 143.1〜167.4。設計の判定：満たす */
        attribute criterionLower : Real = 127.0;
        attribute criterionUpper : Real = 356.0;
        attribute designLower : Real = 143.1;
        attribute designUpper : Real = 167.4;
        require constraint { designUpper <= criterionUpper }
        require constraint { designLower >= criterionLower }
    }
    #CriterionFrom dependency <'EXP-02>HSI-101'> from Exp02 to SSD_HSI_SYS_001::V2Criteria::V2_6003;
    requirement def <'EXP-03'> Exp03 {
        doc /* CO2 分圧（1時間平均）（mmHg）。基準 ≤ 3（HSI-102）、設計 ≤ 7.6。設計の判定：満たさない */
        attribute criterionUpper : Real = 3.0;
        attribute designUpper : Real = 7.6;
        require constraint { designUpper <= criterionUpper }
    }
    #CriterionFrom dependency <'EXP-03>HSI-102'> from Exp03 to SSD_HSI_SYS_001::V2Criteria::V2_6004;
    requirement def <'EXP-04'> Exp04 {
        doc /* 乗員室の温度（°C）。基準 18〜27（HSI-108）、設計 18.3〜26.7。設計の判定：満たす */
        attribute criterionLower : Real = 18.0;
        attribute criterionUpper : Real = 27.0;
        attribute designLower : Real = 18.3;
        attribute designUpper : Real = 26.7;
        require constraint { designUpper <= criterionUpper }
        require constraint { designLower >= criterionLower }
    }
    #CriterionFrom dependency <'EXP-04>HSI-108'> from Exp04 to SSD_HSI_SYS_001::V2Criteria::V2_6012;
    requirement def <'EXP-05'> Exp05 {
        doc /* 乗員室の相対湿度（%）。基準 25〜75（HSI-108）、設計 30〜75。設計の判定：満たす */
        attribute criterionLower : Real = 25.0;
        attribute criterionUpper : Real = 75.0;
        attribute designLower : Real = 30.0;
        attribute designUpper : Real = 75.0;
        require constraint { designUpper <= criterionUpper }
        require constraint { designLower >= criterionLower }
    }
    #CriterionFrom dependency <'EXP-05>HSI-108'> from Exp05 to SSD_HSI_SYS_001::V2Criteria::V2_6012;
    requirement def <'EXP-06'> Exp06 {
        doc /* 乗員室の換気の風速（ft/min）。基準 15〜120（HSI-122）、設計 15〜40。設計の判定：満たす */
        attribute criterionLower : Real = 15.0;
        attribute criterionUpper : Real = 120.0;
        attribute designLower : Real = 15.0;
        attribute designUpper : Real = 40.0;
        require constraint { designUpper <= criterionUpper }
        require constraint { designLower >= criterionLower }
    }
    #CriterionFrom dependency <'EXP-06>HSI-122'> from Exp06 to SSD_HSI_SYS_001::V2Criteria::V2_6107;
    requirement def <'EXP-07'> Exp07 {
        doc /* 騒音（24時間の平均）（dBA）。基準 ≤ 70（HSI-162）、設計 ≤ 74。設計の判定：満たさない */
        attribute criterionUpper : Real = 70.0;
        attribute designUpper : Real = 74.0;
        require constraint { designUpper <= criterionUpper }
    }
    #CriterionFrom dependency <'EXP-07>HSI-162'> from Exp07 to SSD_HSI_SYS_001::V2Criteria::V2_6115;
    requirement def <'EXP-08'> Exp08 {
        doc /* 連続騒音（全体の A 特性）（dBA）。基準 —（HSI-161）、設計 ≤ 55。設計の判定：比べられない */
        attribute designUpper : Real = 55.0;
    }
    #CriterionFrom dependency <'EXP-08>HSI-161'> from Exp08 to SSD_HSI_SYS_001::V2Criteria::V2_6078;
    requirement def <'EXP-09'> Exp09 {
        doc /* 連続騒音（1 kHz のオクターブ帯）（dB）。基準 ≤ 51（HSI-161）、設計 ≤ 52.5。設計の判定：満たさない */
        attribute criterionUpper : Real = 51.0;
        attribute designUpper : Real = 52.5;
        require constraint { designUpper <= criterionUpper }
    }
    #CriterionFrom dependency <'EXP-09>HSI-161'> from Exp09 to SSD_HSI_SYS_001::V2Criteria::V2_6078;
    requirement def <'EXP-10'> Exp10 {
        doc /* 間欠騒音（5分）（dBA）。基準 ≤ 76（HSI-164）、設計 ≤ 80。設計の判定：満たさない */
        attribute criterionUpper : Real = 76.0;
        attribute designUpper : Real = 80.0;
        require constraint { designUpper <= criterionUpper }
    }
    #CriterionFrom dependency <'EXP-10>HSI-164'> from Exp10 to SSD_HSI_SYS_001::V2Criteria::V2_6080;
    requirement def <'EXP-11'> Exp11 {
        doc /* 上昇の加速度（Gx 持続）（g）。基準 ≤ 7.49（HSI-144）、設計 ≤ 3。設計の判定：満たす */
        attribute criterionUpper : Real = 7.49;
        attribute designUpper : Real = 3.0;
        require constraint { designUpper <= criterionUpper }
    }
    #CriterionFrom dependency <'EXP-11>HSI-144'> from Exp11 to SSD_HSI_SYS_001::V2Criteria::V2_6064;
    requirement def <'EXP-12'> Exp12 {
        doc /* 再突入の加速度（Gz・体力低下の乗員）（g）。基準 ≤ 4（HSI-144）、設計 ≤ 2.5。設計の判定：満たす */
        attribute criterionUpper : Real = 4.0;
        attribute designUpper : Real = 2.5;
        require constraint { designUpper <= criterionUpper }
    }
    #CriterionFrom dependency <'EXP-12>HSI-144'> from Exp12 to SSD_HSI_SYS_001::V2Criteria::V2_6064;
    requirement def <'EXP-13'> Exp13 {
        doc /* 着陸の衝撃（乗員室の Nz）（g）。基準 —（HSI-149）、設計 ≤ 4.08。設計の判定：比べられない */
        attribute designUpper : Real = 4.08;
    }
    #CriterionFrom dependency <'EXP-13>HSI-149'> from Exp13 to SSD_HSI_SYS_001::V2Criteria::V2_6070;
    requirement def <'EXP-14'> Exp14 {
        doc /* 放射線（1飛行の線量）（mSv）。基準 ≤ 600（HSI-052）、設計 ≤ 250。設計の判定：満たす */
        attribute criterionUpper : Real = 600.0;
        attribute designUpper : Real = 250.0;
        require constraint { designUpper <= criterionUpper }
    }
    #CriterionFrom dependency <'EXP-14>HSI-052'> from Exp14 to SSD_HSI_SYS_001::V1Criteria::V1_4030;
    requirement def <'EXP-15'> Exp15 {
        doc /* EVA 準備の乗員室圧（psia）。基準 5〜15（HSI-103）、設計 10〜10.4。設計の判定：満たす */
        attribute criterionLower : Real = 5.0;
        attribute criterionUpper : Real = 15.0;
        attribute designLower : Real = 10.0;
        attribute designUpper : Real = 10.4;
        require constraint { designUpper <= criterionUpper }
        require constraint { designLower >= criterionLower }
    }
    #CriterionFrom dependency <'EXP-15>HSI-103'> from Exp15 to SSD_HSI_SYS_001::V2Criteria::V2_6006;
    requirement def <'EXP-16'> Exp16 {
        doc /* 飲料水（人日）（L/人日）。基準 ≥ 2.5（HSI-133）、設計 2。設計の判定：満たさない */
        attribute criterionLower : Real = 2.5;
        attribute designLower : Real = 2.0;
        attribute designUpper : Real = 2.0;
        require constraint { designLower >= criterionLower }
    }
    #CriterionFrom dependency <'EXP-16>HSI-133'> from Exp16 to SSD_HSI_SYS_001::V2Criteria::V2_6109;
    package Actuals {
        doc /* 飛行の実績（基準の内なら ExposureEnvelope が成り立つ） */
        attribute <'EXP-01-A1'> exp01Actual1 : Real = 15.04 { doc /* STS-1：打上げのとき（psia）。満たさない */ }
        constraint exp01Actual1Envelope : ExposureEnvelope { in attribute :>> lower = 5.0; in attribute :>> upper = 15.0; in attribute :>> exposure = exp01Actual1; }
        attribute <'EXP-01-A2'> exp01Actual2 : Real = 16.96 { doc /* STS-1：打上げ前の気密点検（一時）（psia）。満たさない */ }
        constraint exp01Actual2Envelope : ExposureEnvelope { in attribute :>> lower = 5.0; in attribute :>> upper = 15.0; in attribute :>> exposure = exp01Actual2; }
        attribute <'EXP-03-A1'> exp03Actual1 : Real = 4.3 { doc /* STS-4：上昇の最大（mmHg）。満たさない */ }
        constraint exp03Actual1Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 3.0; in attribute :>> exposure = exp03Actual1; }
        attribute <'EXP-03-A2'> exp03Actual2 : Real = 0.8 { doc /* STS-4：軌道上の最大（mmHg）。満たす */ }
        assert constraint exp03Actual2Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 3.0; in attribute :>> exposure = exp03Actual2; }
        attribute <'EXP-03-A3'> exp03Actual3 : Real = 5.8 { doc /* STS-1：LiOH を入れる前の最大（mmHg）。満たさない */ }
        constraint exp03Actual3Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 3.0; in attribute :>> exposure = exp03Actual3; }
        attribute <'EXP-03-A4'> exp03Actual4 : Real = 5.9 { doc /* STS-1：着陸後、ハッチを開けるとき（mmHg）。満たさない */ }
        constraint exp03Actual4Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 3.0; in attribute :>> exposure = exp03Actual4; }
        attribute <'EXP-03-A5'> exp03Actual5 : Real = 8.4 { doc /* STS-3：着陸後、ハッチを開ける前の最大（mmHg）。満たさない */ }
        constraint exp03Actual5Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 3.0; in attribute :>> exposure = exp03Actual5; }
        attribute <'EXP-04-A1'> exp04Actual1 : Real = 28.3 { doc /* STS-1：打上げのとき 83°F（°C）。満たさない */ }
        constraint exp04Actual1Envelope : ExposureEnvelope { in attribute :>> lower = 18.0; in attribute :>> upper = 27.0; in attribute :>> exposure = exp04Actual1; }
        attribute <'EXP-04-A2'> exp04Actual2 : Real = 23.9 { doc /* STS-1：飛行中の表示の最低 75°F（°C）。満たす */ }
        assert constraint exp04Actual2Envelope : ExposureEnvelope { in attribute :>> lower = 18.0; in attribute :>> upper = 27.0; in attribute :>> exposure = exp04Actual2; }
        attribute <'EXP-04-A3'> exp04Actual3 : Real = 28.3 { doc /* STS-1：飛行中の表示の最高 83°F（°C）。満たさない */ }
        constraint exp04Actual3Envelope : ExposureEnvelope { in attribute :>> lower = 18.0; in attribute :>> upper = 27.0; in attribute :>> exposure = exp04Actual3; }
        attribute <'EXP-04-A4'> exp04Actual4 : Real = 26.7 { doc /* STS-1：接地からハッチを開けるまで 80°F（°C）。満たす */ }
        assert constraint exp04Actual4Envelope : ExposureEnvelope { in attribute :>> lower = 18.0; in attribute :>> upper = 27.0; in attribute :>> exposure = exp04Actual4; }
        attribute <'EXP-05-A1'> exp05Actual1 : Real = 16.0 { doc /* STS-1：飛行中の表示の最低（%）。満たさない */ }
        constraint exp05Actual1Envelope : ExposureEnvelope { in attribute :>> lower = 25.0; in attribute :>> upper = 75.0; in attribute :>> exposure = exp05Actual1; }
        attribute <'EXP-05-A2'> exp05Actual2 : Real = 40.0 { doc /* STS-1：飛行中の表示の最高（%）。満たす */ }
        assert constraint exp05Actual2Envelope : ExposureEnvelope { in attribute :>> lower = 25.0; in attribute :>> upper = 75.0; in attribute :>> exposure = exp05Actual2; }
        attribute <'EXP-05-A3'> exp05Actual3 : Real = 36.0 { doc /* STS-1：着陸後、ハッチを開けるとき（%）。満たす */ }
        assert constraint exp05Actual3Envelope : ExposureEnvelope { in attribute :>> lower = 25.0; in attribute :>> upper = 75.0; in attribute :>> exposure = exp05Actual3; }
        attribute <'EXP-07-A1'> exp07Actual1 : Real = 67.0 { doc /* STS-1：中甲板の睡眠区画（瞬時、24時間平均ではない）（dBA）。満たす */ }
        assert constraint exp07Actual1Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 70.0; in attribute :>> exposure = exp07Actual1; }
        attribute <'EXP-08-A1'> exp08Actual1 : Real = 67.0 { doc /* STS-1：中甲板の睡眠区画（dBA）。比べられない */ }
        attribute <'EXP-08-A2'> exp08Actual2 : Real = 65.0 { doc /* 運用の飛行：中甲板の上限（ペイロードなし、62〜65 dBA）（dBA）。比べられない */ }
        attribute <'EXP-09-A1'> exp09Actual1 : Real = 62.0 { doc /* STS-1：中甲板の睡眠区画（dB）。満たさない */ }
        constraint exp09Actual1Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 51.0; in attribute :>> exposure = exp09Actual1; }
        attribute <'EXP-10-A1'> exp10Actual1 : Real = 87.0 { doc /* STS-2：WCS の運転中（音源の近く）（dBA）。満たさない */ }
        constraint exp10Actual1Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 76.0; in attribute :>> exposure = exp10Actual1; }
        attribute <'EXP-11-A1'> exp11Actual1 : Real = 3.0 { doc /* OFT（STS-1〜4）：最大の g は 3.0 G を超えない（g）。満たす */ }
        assert constraint exp11Actual1Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 7.49; in attribute :>> exposure = exp11Actual1; }
        attribute <'EXP-12-A1'> exp12Actual1 : Real = 1.65 { doc /* STS-1：再突入の最大 Nz（g）。満たす */ }
        assert constraint exp12Actual1Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 4.0; in attribute :>> exposure = exp12Actual1; }
        attribute <'EXP-12-A2'> exp12Actual2 : Real = 1.9 { doc /* STS-2：再突入の最大 Nz（g）。満たす */ }
        assert constraint exp12Actual2Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 4.0; in attribute :>> exposure = exp12Actual2; }
        attribute <'EXP-12-A3'> exp12Actual3 : Real = 1.6 { doc /* STS-3：再突入の最大 Nz（制限 2.0 g）（g）。満たす */ }
        assert constraint exp12Actual3Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 4.0; in attribute :>> exposure = exp12Actual3; }
        attribute <'EXP-12-A4'> exp12Actual4 : Real = 1.8 { doc /* STS-4：再突入の最大 Nz（制限 2.0 g）（g）。満たす */ }
        assert constraint exp12Actual4Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 4.0; in attribute :>> exposure = exp12Actual4; }
        attribute <'EXP-12-A5'> exp12Actual5 : Real = 1.5 { doc /* シャトル一般：最大 17 分続く（HIDH）（g）。満たす */ }
        assert constraint exp12Actual5Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 4.0; in attribute :>> exposure = exp12Actual5; }
        attribute <'EXP-12-A6'> exp12Actual6 : Real = 1.3 { doc /* シャトル一般：Mach 2.5 まで約 1.3 g（SCOM）（g）。満たす */ }
        assert constraint exp12Actual6Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 4.0; in attribute :>> exposure = exp12Actual6; }
        attribute <'EXP-13-A1'> exp13Actual1 : Real = 1.85 { doc /* STS-1：前脚の接地（Xo 511 Z）（g）。比べられない */ }
        attribute <'EXP-13-A2'> exp13Actual2 : Real = 1.48 { doc /* STS-2：前脚の接地（Xo 511 Z）（g）。比べられない */ }
        attribute <'EXP-13-A3'> exp13Actual3 : Real = 1.52 { doc /* STS-4：前脚の接地（Xo 513）（g）。比べられない */ }
        attribute <'EXP-14-A1'> exp14Actual1 : Real = 0.19 { doc /* STS-1：線量当量 19 mrem 未満（mSv）。満たす */ }
        assert constraint exp14Actual1Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 600.0; in attribute :>> exposure = exp14Actual1; }
        attribute <'EXP-14-A2'> exp14Actual2 : Real = 0.625 { doc /* STS-3：線量当量 62.5 mrem（mSv）。満たす */ }
        assert constraint exp14Actual2Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 600.0; in attribute :>> exposure = exp14Actual2; }
        attribute <'EXP-14-A3'> exp14Actual3 : Real = 0.623 { doc /* STS-4：線量当量 62.3 mrem（mSv）。満たす */ }
        assert constraint exp14Actual3Envelope : ExposureEnvelope { in attribute :>> lower = -1000000000.0; in attribute :>> upper = 600.0; in attribute :>> exposure = exp14Actual3; }
    }
    package Profiles {
        doc /* 時間軸の曝露（点は資料の値。間の補間は本書の判断） */
        attribute <'PRO-01'> profile01 : ExposureProfile = new ExposureProfile(samples = (new SamplePair(129.9, 2.3), new SamplePair(129.9, 1.0), new SamplePair(456.8, 3.0), new SamplePair(513.8, 3.0), new SamplePair(513.8, 0.0))) { doc /* 上昇の加速度（STS-2）（MET s → 加速度 g）。量は EXP-11 */ }
        attribute <'PRO-02'> profile02 : ExposureProfile = new ExposureProfile(samples = (new SamplePair(0.0, 14.7), new SamplePair(0.75, 14.7), new SamplePair(1.0, 10.2), new SamplePair(13.0, 10.2), new SamplePair(14.25, 10.2), new SamplePair(20.25, 10.2), new SamplePair(20.25, 14.7))) { doc /* EVA 準備の乗員室圧（10.2 psia の選択肢1）（マスクのプリブリーズの開始からの時間 h → 乗員室圧 psia）。量は EXP-15 */ }
        attribute <'PRO-03'> profile03 : ExposureProfile = new ExposureProfile(samples = (new SamplePair(0.0, 1.1), new SamplePair(6.65, 5.8), new SamplePair(6.65, 0.4), new SamplePair(17.0, 0.6), new SamplePair(34.83, 0.9), new SamplePair(49.25, 1.0), new SamplePair(54.35, 4.8))) { doc /* 飛行中の CO2 分圧（STS-1）（MET h → CO2 分圧 mmHg）。量は EXP-03 */ }
        attribute <'PRO-04'> profile04 : ExposureProfile = new ExposureProfile(samples = (new SamplePair(-90.07, 14.8), new SamplePair(-67.07, 16.96), new SamplePair(-51.07, 14.88), new SamplePair(0.0, 15.04))) { doc /* 打上げ前の乗員室圧（STS-1）（打上げからの時間 min → 乗員室圧 psia）。量は EXP-01 */ }
    }
}
