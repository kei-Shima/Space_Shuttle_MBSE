// SysML v2 テキスト：上昇・再突入の時間変化モデル
// SSD-TRJ-ORB-001 上昇・再突入の時間変化モデル定義書（質量・推力加速度・動圧・減速度・加熱の相対値と、実績・限界との比較） の表から生成（lib/build_docs_bz.py・rev_bz/bzdata.py・rev_bz/bzmodel.py）。値の根拠の頁は SSD-TRJ-ORB-001 にある。
package SSD_TRJ_ORB_001 {
    doc /* SSD-TRJ-ORB-001 上昇・再突入の時間変化モデル定義書（質量・推力加速度・動圧・減速度・加熱の相対値と、実績・限界との比較）。図230〜232 と同じモデル。値は資料の単位で、単位は doc に書く。式の評価（シナリオの計算）は本書が行い、結果を属性に書いた。 */
    private import ScalarValues::*;
    private import SampledFunctions::*;
    attribute def TrajectoryProfile :> SampledFunction { doc /* 時間（s）→ 量（単位は doc） */ }
    // ---- パラメータ
    part def AscentAndEntryVehicle {
        doc /* 上昇・再突入のモデルのパラメータ（TRJ-P の表。値は資料の単位で、単位は doc に書く） */
        attribute <'TRJ-P01'> p01 : Real = 4449965.0 { doc /* リフトオフ（SRB 点火指令）の全質量（lb） */ }
        attribute <'TRJ-P02'> p02 : Real = 2226987.0 { doc /* SRB 2本の推進薬（消費する分）（lb） */ }
        attribute <'TRJ-P03'> p03 : Real = 362713.0 { doc /* SRB 2本の投棄する質量（lb） */ }
        attribute <'TRJ-P04'> p04 : Real = 295100000.0 { doc /* SRB 1本の全力積（作用時間、真空）（lb-sec） */ }
        attribute <'TRJ-P05'> p05 : Real = 122.7 { doc /* SRB の作用時間（s） */ }
        attribute <'TRJ-P06'> p06 : Real = 131.44 { doc /* SRB 分離の時刻（s） */ }
        attribute <'TRJ-P07'> p07 : Real = 470000.0 { doc /* SSME 1基の推力（100 パーセント、真空）（lbf） */ }
        attribute <'TRJ-P08'> p08 : Real = 455.2 { doc /* SSME の比推力（真空）（s） */ }
        attribute <'TRJ-P09'> p09 : Real = 1564823.0 { doc /* ET の推進薬（SRB 点火時）（lb） */ }
        attribute <'TRJ-P10'> p10a : Real = 46.0 { doc /* 最大動圧の前後の SSME の絞り（1つめの値、s・s・—） */ }
        attribute p10b : Real = 61.0 { doc /* 最大動圧の前後の SSME の絞り（2つめの値、s・s・—） */ }
        attribute p10c : Real = 0.65 { doc /* 最大動圧の前後の SSME の絞り（3つめの値、s・s・—） */ }
        attribute <'TRJ-P11'> p11 : Real = 3.0 { doc /* 上昇の加速度の上限（g） */ }
        attribute <'TRJ-P12'> p12 : Real = 0.65 { doc /* SSME の最低の出力（—） */ }
        attribute <'TRJ-P13'> p13 : Real = 400000.0 { doc /* EI の高度（ft） */ }
        attribute <'TRJ-P14'> p14 : Real = 24600.0 { doc /* EI の速度（ft/s） */ }
        attribute <'TRJ-P15'> p15a : Real = 195.0 { doc /* 目標の接地速度（1つめの値、KEAS） */ }
        attribute p15b : Real = 205.0 { doc /* 目標の接地速度（2つめの値、KEAS） */ }
        attribute <'TRJ-P16'> p16 : Real = 140.0 { doc /* ブレーキを始める速度（KGS） */ }
        attribute <'TRJ-P17'> p17 : Real = 7.5 { doc /* 制動の減速度（実績）（ft/s²） */ }
    }
    // ---- モデル（式）
    constraint def <'TRJ-M01'> AscentMass {
        doc /* 上昇の質量：m(t) = m₀ − ṁ_SRB·t − ∫ṁ_SSME dt − （SRB 分離で）m_SRB,投棄、ṁ_SRB = 推進薬 ÷ 作用時間、ṁ_SSME = k·F_SSME ÷ Isp */
        in attribute m0 : Real; in attribute srbFlow : Real; in attribute ssmeUsed : Real; in attribute t : Real; in attribute m : Real;
        m == m0 - srbFlow * t - ssmeUsed
    }
    constraint def <'TRJ-M02'> ThrustAcceleration {
        doc /* 推力加速度：a_T = (k·F_SSME ＋ F_SRB) ÷ m　（g の単位。推力と質量だけで、重力・抗力は引かない） */
        in attribute thrust : Real; in attribute m : Real; in attribute a : Real;
        a == thrust / m
    }
    constraint def <'TRJ-M03'> ThreeGThrottle {
        doc /* 3 g の絞り：a_T が 3 g に達したら k = 3·m ÷ F_SSME（k ≥ 最低の出力）で 3 g を保つ。このとき m(t) = m₃·exp(−3·g₀·t ÷ (g₀·Isp)) */
        in attribute gLimit : Real; in attribute m : Real; in attribute fullThrust : Real; in attribute k : Real;
        k == gLimit * m / fullThrust
    }
    constraint def <'TRJ-M04'> IdealVelocity {
        doc /* 理想の速度増分：ΔV_ideal = ∫ a_T dt　（推力と質量だけの速度増分） */
        in attribute meanAcceleration : Real; in attribute duration : Real; in attribute dv : Real;
        dv == meanAcceleration * duration
    }
    constraint def <'TRJ-M05'> DynamicPressure {
        doc /* 標準大気と動圧：q = ρ(h)·V² ÷ 2、マッハ数 = V ÷ a(h)、等価対気速度 = √(2q ÷ ρ₀) */
        in attribute density : Real; in attribute v : Real; in attribute q : Real;
        q == density * v * v / 2.0
    }
    constraint def <'TRJ-M06'> MeanDeceleration {
        doc /* 平均の減速度と道のり：ā = (Vᵢ − Vᵢ₊₁) ÷ (tᵢ₊₁ − tᵢ)、s = Σ (Vᵢ ＋ Vᵢ₊₁) ÷ 2 × (tᵢ₊₁ − tᵢ) */
        in attribute v0 : Real; in attribute v1 : Real; in attribute duration : Real; in attribute a : Real;
        a == (v0 - v1) / duration
    }
    constraint def <'TRJ-M07'> RelativeHeating {
        doc /* 加熱率の相対値：q̇_rel = √ρ·V³ ÷ max(√ρ·V³) */
        in attribute sqrtDensity : Real; in attribute v : Real; in attribute peak : Real; in attribute rel : Real;
        rel == sqrtDensity * v * v * v / peak
    }
    constraint def <'TRJ-M08'> StoppingDistance {
        doc /* 接地後の停止：s = V² ÷ (2a)、運動エネルギー E = m·V² ÷ 2 */
        in attribute v : Real; in attribute a : Real; in attribute s : Real;
        s == v * v / (2.0 * a)
    }
    // ---- シナリオ（本書の計算の結果）
    package Scenarios {
        analysis def <'TRJ-S01'> Scenario01 {
            subject vehicle : AscentAndEntryVehicle;
            doc /* 上昇の質量と推力加速度（STS-1 の計画の質量、SSME 100 パーセント）。式 TRJ-M01〜M04。結果：リフトオフの推力加速度 1.40 g、SRB 分離の直後 1,467,386 lb・0.96 g、3 g の絞りの開始 453.5 s（7:33.5）、計画の MECO（518.04 s）の質量 307,187 lb、推進薬を使い切る時刻（MECO の上限）524.7 s、計画の MECO までの理想の速度増分 31,323 ft/s */
            attribute profile : TrajectoryProfile = new TrajectoryProfile(samples = (new SamplePair(0.0, 1.398), new SamplePair(20.0, 1.545), new SamplePair(40.0, 1.728), new SamplePair(60.0, 1.795), new SamplePair(80.0, 2.248), new SamplePair(100.0, 2.656), new SamplePair(120.0, 3.245), new SamplePair(140.0, 0.978), new SamplePair(160.0, 1.022), new SamplePair(180.0, 1.070), new SamplePair(200.0, 1.123), new SamplePair(220.0, 1.182), new SamplePair(240.0, 1.246), new SamplePair(260.0, 1.319), new SamplePair(280.0, 1.400), new SamplePair(300.0, 1.491), new SamplePair(320.0, 1.596), new SamplePair(340.0, 1.716), new SamplePair(360.0, 1.856), new SamplePair(380.0, 2.021), new SamplePair(400.0, 2.218), new SamplePair(420.0, 2.458), new SamplePair(440.0, 2.755), new SamplePair(460.0, 3.000), new SamplePair(480.0, 3.000), new SamplePair(500.0, 3.000))) { doc /* 時間 s → 推力加速度 g */ }
        }
        analysis def <'TRJ-S02'> Scenario02 {
            subject vehicle : AscentAndEntryVehicle;
            doc /* SRB 分離の点の動圧。式 TRJ-M05。結果：高度 167,274 ft・相対速度 4,186.8 ft/s で q = 15.5 psf */
        }
        analysis def <'TRJ-S03'> Scenario03 {
            subject vehicle : AscentAndEntryVehicle;
            doc /* 再突入の時刻表の点ごとの量（EI 〜 Mach 1）。式 TRJ-M05〜M07。結果：動圧は Mach 19 で 53 psf、Mach 1 で 141 psf。点の間の平均の減速度の最大 1.04 g、加熱率の相対値は点の中で Mach 19 が最大（資料は Mach 24〜19 を最大の表面温度の領域とする。Mach 24 の点は高度の値が無いので計算していない）、EI から TAEM 境界までの道のり 4,270 n.mi. */
            attribute profile : TrajectoryProfile = new TrajectoryProfile(samples = (new SamplePair(0.0, 0.007), new SamplePair(882.0, 53.281), new SamplePair(951.0, 76.989), new SamplePair(1020.0, 105.118), new SamplePair(1077.0, 102.129), new SamplePair(1137.0, 93.053), new SamplePair(1203.0, 172.788), new SamplePair(1410.0, 161.256), new SamplePair(1540.0, 255.265), new SamplePair(1673.0, 140.836))) { doc /* 時間 s → 動圧 psf */ }
        }
        analysis def <'TRJ-S04'> Scenario04 {
            subject vehicle : AscentAndEntryVehicle;
            doc /* 接地後の停止。式 TRJ-M08。結果：195 KEAS から一定の 7.5 ft/s² で止まる距離 7,221 ft。最大着陸重量 233,000 lb の運動エネルギーは、接地（205 KEAS）で 433、ブレーキの開始（140 KGS）で 202 百万 ft-lb */
        }
    }
    // ---- 限界との照合
    package Evaluations {
        requirement def <'TRJ-E01'> Eval01 {
            doc /* 第2段の推力加速度（計画の MECO まで）：基準 ≤ 3.0 g（REQ-SYS-08・REQ-GNC-06）。値 モデルの最大 3.00 g（3 g の絞りで保つ）。判定：満たす */
            attribute limit : Real = 3.0;
            attribute comparedValue : Real = 3.0;
            require constraint { comparedValue <= limit }
        }
        requirement def <'TRJ-E02'> Eval02 {
            doc /* 最大動圧（構造の仕様の限界）：基準 ≤ 820 psf（A2-61）。値 STS-1 の計画 575 psf、実績 615 / 606 psf（資料の値。本書のモデルは最大動圧を計算しない）。判定：満たす */
            attribute limit : Real = 820.0;
            attribute comparedValue : Real = 615.0;
            require constraint { comparedValue <= limit }
        }
        requirement def <'TRJ-E03'> Eval03 {
            doc /* 最大動圧（STS-1 の拘束）：基準 ≤ 620 psf（STS-1 の運用飛行プロファイル）。値 実績 615 / 606 psf（余裕 5〜14 psf）。判定：満たす */
            attribute limit : Real = 620.0;
            attribute comparedValue : Real = 615.0;
            require constraint { comparedValue <= limit }
        }
        requirement def <'TRJ-E04'> Eval04 {
            doc /* SRB 分離の点の動圧：基準 ≤ 75 psf（REQ-SRB-08）。値 モデル 15.5 psf（計画 16 psf）。判定：満たす */
            attribute limit : Real = 75.0;
            attribute comparedValue : Real = 15.4515;
            require constraint { comparedValue <= limit }
        }
        requirement def <'TRJ-E05'> Eval05 {
            doc /* 再突入の Nz：基準 ≤ 2.5 g（A4-207・REQ-GNC-07）。値 STS-1 の最大の G 1.5 g（資料の値）。モデルの平均の減速度の最大は 1.04 g（量が違う）。判定：満たす */
            attribute limit : Real = 2.5;
            attribute comparedValue : Real = 1.5;
            require constraint { comparedValue <= limit }
        }
        requirement def <'TRJ-E06'> Eval06 {
            doc /* Mach 1 未満の動圧：基準 ≤ 350 psf（A4-207・REQ-GNC-07）。値 Mach 1 の点 141 psf、進入の 300 KEAS は 305 psf（本書の計算）。判定：満たす */
            attribute limit : Real = 350.0;
            attribute comparedValue : Real = 304.695;
            require constraint { comparedValue <= limit }
        }
        requirement def <'TRJ-E07'> Eval07 {
            doc /* 再突入の最大対気速度：基準 ≤ 333 KEAS（SCOM 4.3）。値 時刻表の最大 300 KEAS（外側グライドスロープ）。判定：満たす */
            attribute limit : Real = 333.0;
            attribute comparedValue : Real = 300.0;
            require constraint { comparedValue <= limit }
        }
        requirement def <'TRJ-E08'> Eval08 {
            doc /* 接地の速度（タイヤ速度の限界）：基準 予測の対地速度 ≤ 214 KGS（A4-108）。値 目標 195・205 KEAS。実績は STS-2 194.3 KEAS（対地 185.8 kt）、STS-125 200.1 keas（192.0 kgs）、STS-114 221.5 keas。判定：目標と STS-2・STS-125 は満たす。STS-114 は対気速度が 214 を超え、対地速度は資料に無いので判定しない */
        }
        requirement def <'TRJ-E09'> Eval09 {
            doc /* 着陸重量：基準 ≤ 233,000 lb（REQ-SYS-17）。値 実績 STS-114 226,199 lb・STS-125 232,591 lb。判定：満たす */
            attribute limit : Real = 233000.0;
            attribute comparedValue : Real = 232591.4;
            require constraint { comparedValue <= limit }
        }
    }
}
