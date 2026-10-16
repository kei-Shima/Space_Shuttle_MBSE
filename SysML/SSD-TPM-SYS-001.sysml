// SysML v2 テキスト：飛行実績の測定指標（MOE・MOP・TPM）
// SSD-TPM-SYS-001 飛行実績の測定指標定義書（MOE・MOP・TPM の階層と、飛行ごとの TPM の推移） の表から生成（lib/build_docs_ck.py・rev_ck/ckdata.py・rev_ck/ckcalc.py）。値の根拠の頁は SSD-TPM-SYS-001 にある。
package SSD_TPM_SYS_001 {
    doc /* SSD-TPM-SYS-001 飛行実績の測定指標定義書（MOE・MOP・TPM の階層と、飛行ごとの TPM の推移）。図249〜251 と同じ内容。本書の TPM は、運用の飛行ごとの実測値（Mission Report の表・本文の値）を、要求・飛行規則の閾値と比べた推移である（本書の判断）。開発の間に設計の現在の見込み値を閾値と比べて追う、システムズエンジニアリングの TPM ではない（その推移は公開資料からほぼ取れない）。 */
    private import ScalarValues::*;
    private import SampledFunctions::*;
    attribute def FlightSeries :> SampledFunction { doc /* 打上げの日（1988-01-01 を 0 とした日数）→ 量（単位は doc） */ }
    // ---- 測定指標の階層（MOE・MOP）
    part def MeasureHierarchy {
        doc /* 本書が既存の要求から引いた MOE・MOP（文書の階層の表）。値は作らない。TPM は下の constraint def */
        attribute <'MOE-01'> moe01 : String = "重量の限界内で帰還する" { doc /* 上位の要求：REQ-SYS-17。下位の MOP：MOP-01。TPM：TPM-01 */ }
        attribute <'MOE-02'> moe02 : String = "搭載した APU の燃料の範囲で上昇と再突入を完了する" { doc /* 上位の要求：REQ-SYS-15。下位の MOP：MOP-02。TPM：TPM-02 */ }
        attribute <'MOE-03'> moe03 : String = "着陸装置の限界内で滑走路に着陸する" { doc /* 上位の要求：REQ-SYS-18。下位の MOP：MOP-03・MOP-04・MOP-05。TPM：TPM-03 */ }
        attribute <'MOE-04'> moe04 : String = "計画した軌道・期間でミッションを行う" { doc /* 上位の要求：REQ-SYS-02・REQ-SYS-06。下位の MOP：MOP-06・MOP-07・MOP-08。TPM：— */ }
        attribute <'MOP-01'> mop01 : String = "着陸重量の余裕（閾値 − 実測）" { doc /* 上位の MOE：MOE-01。閾値の要求：REQ-MPS-10・REQ-OMS-11。種類：TPM の値の余裕。TPM：TPM-01 */ }
        attribute <'MOP-02'> mop02 : String = "APU の燃料の余裕（閾値 − 実測）" { doc /* 上位の MOE：MOE-02。閾値の要求：REQ-APU-01。種類：TPM の値の余裕。TPM：TPM-02 */ }
        attribute <'MOP-03'> mop03 : String = "主脚の接地の対地速度" { doc /* 上位の MOE：MOE-03。閾値の要求：REQ-MECH-07・REQ-MECH-09（関連。本書の判断）。種類：TPM の値。TPM：TPM-03 */ }
        attribute <'MOP-04'> mop04 : String = "滑走距離" { doc /* 上位の MOE：MOE-03。閾値の要求：（閾値なし）。種類：参考値。TPM：— */ }
        attribute <'MOP-05'> mop05 : String = "主脚の接地の沈下率" { doc /* 上位の MOE：MOE-03。閾値の要求：（閾値なし）。種類：参考値。TPM：— */ }
        attribute <'MOP-06'> mop06 : String = "軌道の高さ（OMS-2 後の高い方の高度）" { doc /* 上位の MOE：MOE-04。閾値の要求：REQ-SYS-02（100〜312 n.mi.）。種類：能力の実証。TPM：— */ }
        attribute <'MOP-07'> mop07 : String = "飛行時間（打上げから着陸）" { doc /* 上位の MOE：MOE-04。閾値の要求：REQ-SYS-06（通常 4〜16 日）。種類：能力の実証。TPM：— */ }
        attribute <'MOP-08'> mop08 : String = "MECO の時刻" { doc /* 上位の MOE：MOE-04。閾値の要求：（閾値なし）。種類：参考値。TPM：— */ }
    }
    // ---- TPM の閾値（判定の窓の中の飛行だけを判定する）
    constraint def <'TPM-01'> LandingWeightLimit {
        doc /* 着陸重量（EOM の最大着陸重量）：閾値 ≤ 233,000 lb（EOM。アボートは 239,000〜248,000 lb）（REQ-SYS-17、SCOM（2008））。判定の窓：打上げ 2008-01-01 以降。値は lb */
        in attribute measured : Real; in attribute limit : Real;
        measured <= limit
    }
    constraint def <'TPM-02'> ApuFuelLimit {
        doc /* APU 1台あたりの燃料の使用量（飛行の合計）：閾値 約 332 lb／APU（REQ-APU-01、SCOM（2008））。判定の窓：打上げ 2008-01-01 以降。値は lb */
        in attribute measured : Real; in attribute limit : Real;
        measured <= limit
    }
    constraint def <'TPM-03'> TouchdownGroundSpeedLimit {
        doc /* 主脚の接地の対地速度：閾値 予測の対地速度 ≤ 214 KGS（A4-108、運用飛行規則（2002年版））。判定の窓：打上げ 2002-01-01 以降。値は KGS */
        in attribute measured : Real; in attribute limit : Real;
        measured <= limit
    }
    // ---- 飛行ごとの値（打上げの日 → 値。判定の窓の中と、後の時代の基準に照らした参考を分ける）
    package Measurements {
        attribute landingWeightJudged : FlightSeries = new FlightSeries(samples = (new SamplePair(7342, 207215.0), new SamplePair(7375, 208761.7), new SamplePair(7456, 203754.9), new SamplePair(7623, 221979.8), new SamplePair(7744, 201906.5), new SamplePair(7801, 232591.4), new SamplePair(7866, 215858.0), new SamplePair(7910, 222270.7), new SamplePair(7990, 207200.2), new SamplePair(8130, 224970.0), new SamplePair(8169, 210563.0), new SamplePair(8455, 205021.5), new SamplePair(8536, 204477.0))) { doc /* 着陸重量 lb（判定の窓の中）：13点 */ }
        attribute landingWeightReference : FlightSeries = new FlightSeries(samples = (new SamplePair(739, 228335.0), new SamplePair(789, 187200.2), new SamplePair(1066, 225329.2), new SamplePair(1309, 196046.5), new SamplePair(1350, 192790.0), new SamplePair(1482, 218130.0), new SamplePair(1716, 220097.0), new SamplePair(1756, 216176.0), new SamplePair(1797, 193987.0), new SamplePair(1839, 197470.0), new SamplePair(1942, 227279.0), new SamplePair(1998, 224459.0), new SamplePair(2081, 207006.0), new SamplePair(2117, 229116.0), new SamplePair(2162, 212828.0), new SamplePair(2290, 222030.0), new SamplePair(2380, 229308.0), new SamplePair(2443, 212179.5), new SamplePair(2464, 221571.0), new SamplePair(2498, 211327.0), new SamplePair(2590, 224130.2), new SamplePair(2617, 217450.0), new SamplePair(2750, 194280.0), new SamplePair(2932, 218062.0), new SamplePair(2974, 226312.0), new SamplePair(3003, 211893.0), new SamplePair(3299, 214915.0), new SamplePair(3329, 213710.0), new SamplePair(3381, 235285.0), new SamplePair(3422, 216167.2), new SamplePair(3469, 230910.9), new SamplePair(3506, 221184.3), new SamplePair(3556, 214726.4), new SamplePair(3675, 216635.0), new SamplePair(3954, 228639.2), new SamplePair(3990, 201606.1), new SamplePair(4164, 201606.1), new SamplePair(4221, 202721.0), new SamplePair(4371, 212311.0), new SamplePair(4424, 225037.8), new SamplePair(4522, 226130.0), new SamplePair(4634, 222800.0), new SamplePair(4857, 220786.6), new SamplePair(4970, 222486.1), new SamplePair(5087, 226441.6), new SamplePair(5173, 222139.7), new SamplePair(5211, 201895.3), new SamplePair(5269, 220173.0), new SamplePair(5393, 202709.1), new SamplePair(5441, 201714.7), new SamplePair(6826, 200006.5), new SamplePair(6918, 224041.0), new SamplePair(7098, 199305.0), new SamplePair(7159, 221660.1))) { doc /* 着陸重量 lb（窓の前。後の時代の基準に照らした参考）：54点 */ }
        attribute apuFuelJudged : FlightSeries = new FlightSeries(samples = (new SamplePair(7342, 203.0), new SamplePair(7375, 215.0), new SamplePair(7456, 226.0), new SamplePair(7623, 224.0), new SamplePair(7744, 207.0), new SamplePair(7801, 223.0), new SamplePair(7866, 228.0), new SamplePair(7910, 212.0), new SamplePair(7990, 224.0), new SamplePair(8130, 203.0), new SamplePair(8169, 207.0), new SamplePair(8455, 210.0), new SamplePair(8536, 227.0))) { doc /* APU の燃料 lb/APU（判定の窓の中）：13点 */ }
        attribute apuFuelReference : FlightSeries = new FlightSeries(samples = (new SamplePair(336, 208.0), new SamplePair(739, 202.0), new SamplePair(789, 233.0), new SamplePair(844, 323.0), new SamplePair(1009, 246.0), new SamplePair(1049, 196.0), new SamplePair(1066, 204.0), new SamplePair(1190, 231.0), new SamplePair(1213, 260.0), new SamplePair(1251, 198.0), new SamplePair(1309, 225.0), new SamplePair(1350, 242.0), new SamplePair(1423, 226.0), new SamplePair(1482, 225.0), new SamplePair(1544, 203.0), new SamplePair(1716, 196.0), new SamplePair(1756, 204.0), new SamplePair(1797, 232.0), new SamplePair(1839, 220.0), new SamplePair(1942, 232.0), new SamplePair(1998, 248.0), new SamplePair(2081, 204.0), new SamplePair(2117, 249.0), new SamplePair(2290, 226.0), new SamplePair(2380, 229.0), new SamplePair(2443, 213.0), new SamplePair(2464, 189.0), new SamplePair(2498, 214.0), new SamplePair(2590, 265.0), new SamplePair(2617, 231.0), new SamplePair(2750, 207.0), new SamplePair(2932, 225.0), new SamplePair(2974, 227.0), new SamplePair(3003, 234.0), new SamplePair(3299, 212.0), new SamplePair(3329, 219.0), new SamplePair(3381, 238.0), new SamplePair(3422, 199.0), new SamplePair(3469, 233.0), new SamplePair(3506, 212.0), new SamplePair(3556, 219.0), new SamplePair(3675, 246.0), new SamplePair(3954, 250.0), new SamplePair(3990, 260.0), new SamplePair(4164, 218.0), new SamplePair(4221, 224.0), new SamplePair(4371, 256.0), new SamplePair(4424, 219.0), new SamplePair(4522, 162.0), new SamplePair(4634, 202.0), new SamplePair(4718, 239.0), new SamplePair(4786, 199.0), new SamplePair(4857, 248.0), new SamplePair(4970, 213.0), new SamplePair(5087, 243.0), new SamplePair(5173, 231.0), new SamplePair(5211, 188.0), new SamplePair(5269, 260.0), new SamplePair(5393, 235.0), new SamplePair(5441, 262.0), new SamplePair(6416, 229.0), new SamplePair(6759, 234.0), new SamplePair(6826, 211.0), new SamplePair(6918, 223.0), new SamplePair(7098, 217.0), new SamplePair(7159, 229.0), new SamplePair(7235, 218.0))) { doc /* APU の燃料 lb/APU（窓の前。参考）：67点 */ }
        attribute touchdownKgsJudged : FlightSeries = new FlightSeries(samples = (new SamplePair(7235, 202.8), new SamplePair(7342, 196.4), new SamplePair(7375, 201.6), new SamplePair(7456, 208.8), new SamplePair(7623, 218.4), new SamplePair(7801, 192.0), new SamplePair(7866, 207.5), new SamplePair(7910, 220.9), new SamplePair(7990, 183.8), new SamplePair(8130, 198.3), new SamplePair(8169, 192.4), new SamplePair(8455, 179.7), new SamplePair(8536, 195.3))) { doc /* 接地の対地速度 KGS（判定の窓の中）：13点 */ }
        attribute touchdownKgsReference : FlightSeries = new FlightSeries(samples = (new SamplePair(789, 187.8), new SamplePair(844, 180.0), new SamplePair(1049, 194.3), new SamplePair(1066, 207.9), new SamplePair(1213, 210.4), new SamplePair(1251, 199.8), new SamplePair(1309, 203.4))) { doc /* 接地の対地速度 KGS（窓の前。参考）：7点 */ }
    }
}
