// SysML v2 テキスト：天候基準の制約定義書（天候の限界を constraint def として展開。値には束ねない）
// SSD-WXK-ORB-001 天候基準の制約定義書（天候の限界を constraint def として展開。値には束ねない） の表から生成（lib/build_docs_dh.py・rev_dh/wkdata.py）。根拠の頁は SSD-WXK-ORB-001 にある。
package SSD_WXK_ORB_001 {
    doc /* SSD-WXK-ORB-001 天候基準の制約定義書（天候の限界を constraint def として展開。値には束ねない）。天候の限界を constraint def（不等式だけ）として持ち、限界の値を part def WeatherLimit の使用として持つ（constraintId で制約を指すだけ）。観測値・飛行の値への bind・assert constraint・:= は書かない。要求への関係は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    constraint def <'WXK-001'> WxCrosswindDeorbitMax {
        doc /* 横風／デオービット／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-001）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-002'> WxCrosswindLandingAoaMax {
        doc /* 横風／着陸（AOA）／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-002）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-003'> WxCrosswindLandingEomMax {
        doc /* 横風／着陸（EOM）／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-003）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-004'> WxCrosswindLandingRtlsMax {
        doc /* 横風／着陸（RTLS）／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-004）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-005'> WxCrosswindLandingTalMax {
        doc /* 横風／着陸（TAL）／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-005）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-006'> WxCrosswindOtherMax {
        doc /* 横風／その他／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-006）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-007'> WxCrosswindOtherMin {
        doc /* 横風／その他／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-007）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-008'> WxCrosswindOtherRange {
        doc /* 横風／その他／範囲（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-008）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue >= limitLo and observedValue <= limitHi
    }
    constraint def <'WXK-009'> WxWindSpeedOtherMax {
        doc /* 風速／その他／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-009）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-010'> WxCeilingDeorbitMin {
        doc /* 雲高／デオービット／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-010）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-011'> WxCeilingLandingEomMin {
        doc /* 雲高／着陸（EOM）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-011）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-012'> WxCeilingLandingRtlsMin {
        doc /* 雲高／着陸（RTLS）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-012）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-013'> WxCeilingLandingTalMin {
        doc /* 雲高／着陸（TAL）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-013）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-014'> WxCeilingOtherMin {
        doc /* 雲高／その他／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-014）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-015'> WxVisibilityDeorbitMin {
        doc /* 視程／デオービット／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-015）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-016'> WxVisibilityLandingEomMin {
        doc /* 視程／着陸（EOM）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-016）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-017'> WxVisibilityLandingRtlsMin {
        doc /* 視程／着陸（RTLS）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-017）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-018'> WxVisibilityLandingTalMin {
        doc /* 視程／着陸（TAL）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-018）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-019'> WxVisibilityOtherMin {
        doc /* 視程／その他／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-019）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-020'> WxCloudCoverLandingEomRangeProhibitBand {
        doc /* 雲量／着陸（EOM）／範囲（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-020）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-021'> WxPrecipitationLandingAoaMin {
        doc /* 降水／着陸（AOA）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-021）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-022'> WxPrecipitationLandingEomMin {
        doc /* 降水／着陸（EOM）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-022）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-023'> WxPrecipitationLandingRtlsMax {
        doc /* 降水／着陸（RTLS）／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-023）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-024'> WxPrecipitationLandingRtlsMin {
        doc /* 降水／着陸（RTLS）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-024）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-025'> WxPrecipitationLandingTalMin {
        doc /* 降水／着陸（TAL）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-025）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-026'> WxThunderstormLandingAoaMin {
        doc /* 雷雨／着陸（AOA）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-026）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-027'> WxThunderstormLandingEomMin {
        doc /* 雷雨／着陸（EOM）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-027）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-028'> WxThunderstormLandingRtlsMin {
        doc /* 雷雨／着陸（RTLS）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-028）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-029'> WxThunderstormLandingTalMin {
        doc /* 雷雨／着陸（TAL）／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-029）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-030'> WxLightningDistanceOtherMin {
        doc /* 雷までの距離／その他／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-030）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-031'> WxTemperatureLandingRtlsMax {
        doc /* 温度／着陸（RTLS）／上限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-031）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-032'> WxOtherOtherMin {
        doc /* その他／その他／下限（飛行規則）。限界の値は WeatherLimit の使用（constraintId＝WXK-032）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-033'> LlccG41711ATemperatureMax {
        doc /* 温度／打上げ／上限／G417.11(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-033）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-034'> LlccG41711AOtherRangeProhibitBand {
        doc /* その他／打上げ／範囲／G417.11(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-034）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-035'> LlccG41711BTemperatureMax {
        doc /* 温度／打上げ／上限／G417.11(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-035）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-036'> LlccG41711BOtherRangeProhibitBand {
        doc /* その他／打上げ／範囲／G417.11(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-036）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-037'> LlccG41711COtherMin {
        doc /* その他／打上げ／下限／G417.11(c)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-037）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-038'> LlccG41711C1TemperatureMax {
        doc /* 温度／打上げ／上限／G417.11(c)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-038）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-039'> LlccG41711C1OtherMax {
        doc /* その他／打上げ／上限／G417.11(c)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-039）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-040'> LlccG41711C2OtherMax {
        doc /* その他／打上げ／上限／G417.11(c)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-040）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-041'> LlccG41713ATemperatureMax {
        doc /* 温度／打上げ／上限／G417.13(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-041）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-042'> LlccG41713AOtherRangeProhibitBand {
        doc /* その他／打上げ／範囲／G417.13(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-042）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-043'> LlccG41713BOtherRangeProhibitBand {
        doc /* その他／打上げ／範囲／G417.13(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-043）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-044'> LlccG41713B1TemperatureMax {
        doc /* 温度／打上げ／上限／G417.13(b)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-044）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-045'> LlccG41713B1OtherMax {
        doc /* その他／打上げ／上限／G417.13(b)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-045）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-046'> LlccG41713B2OtherMax {
        doc /* その他／打上げ／上限／G417.13(b)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-046）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-047'> LlccG41713COtherRangeProhibitBand {
        doc /* その他／打上げ／範囲／G417.13(c)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-047）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-048'> LlccG41713C1IiElectricFieldMax {
        doc /* 電界／打上げ／上限／G417.13(c)(1)(ii)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-048）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-049'> LlccG41713C1IiiOtherMax {
        doc /* その他／打上げ／上限／G417.13(c)(1)(iii)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-049）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-050'> LlccG41713C2ITemperatureMax {
        doc /* 温度／打上げ／上限／G417.13(c)(2)(i)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-050）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-051'> LlccG41713C2IOtherMax {
        doc /* その他／打上げ／上限／G417.13(c)(2)(i)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-051）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-052'> LlccG41713C2IiOtherMax {
        doc /* その他／打上げ／上限／G417.13(c)(2)(ii)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-052）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-053'> LlccG41713D2ITemperatureMax {
        doc /* 温度／打上げ／上限／G417.13(d)(2)(i)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-053）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-054'> LlccG41713D2IOtherMax {
        doc /* その他／打上げ／上限／G417.13(d)(2)(i)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-054）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-055'> LlccG41713D2IiOtherMax {
        doc /* その他／打上げ／上限／G417.13(d)(2)(ii)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-055）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-056'> LlccG41715ATemperatureMin {
        doc /* 温度／打上げ／下限／G417.15(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-056）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-057'> LlccG41715AOtherRangeProhibitBand {
        doc /* その他／打上げ／範囲／G417.15(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-057）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-058'> LlccG41715A1IiElectricFieldMax {
        doc /* 電界／打上げ／上限／G417.15(a)(1)(ii)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-058）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-059'> LlccG41715A1IiiOtherMax {
        doc /* その他／打上げ／上限／G417.15(a)(1)(iii)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-059）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-060'> LlccG41715A2ITemperatureMax {
        doc /* 温度／打上げ／上限／G417.15(a)(2)(i)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-060）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-061'> LlccG41715A2IOtherMax {
        doc /* その他／打上げ／上限／G417.15(a)(2)(i)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-061）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-062'> LlccG41715A2IiOtherMax {
        doc /* その他／打上げ／上限／G417.15(a)(2)(ii)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-062）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-063'> LlccG41715B1TemperatureMax {
        doc /* 温度／打上げ／上限／G417.15(b)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-063）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-064'> LlccG41715B1OtherMax {
        doc /* その他／打上げ／上限／G417.15(b)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-064）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-065'> LlccG41715B2OtherMax {
        doc /* その他／打上げ／上限／G417.15(b)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-065）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-066'> LlccG41719A1CloudThicknessMax {
        doc /* 雲の厚さ／打上げ／上限／G417.19(a)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-066）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-067'> LlccG41719A1TemperatureRangeProhibitBand {
        doc /* 温度／打上げ／範囲／G417.19(a)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-067）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-068'> LlccG41719A2CloudThicknessMax {
        doc /* 雲の厚さ／打上げ／上限／G417.19(a)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-068）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-069'> LlccG41719A2TemperatureRangeProhibitBand {
        doc /* 温度／打上げ／範囲／G417.19(a)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-069）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-070'> LlccG41719A2OtherMax {
        doc /* その他／打上げ／上限／G417.19(a)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-070）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-071'> LlccG41719BTemperatureMax {
        doc /* 温度／打上げ／上限／G417.19(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-071）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-072'> LlccG4175AElectricFieldMax {
        doc /* 電界／打上げ／上限／G417.5(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-072）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-073'> LlccG4175BElectricFieldMax {
        doc /* 電界／打上げ／上限／G417.5(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-073）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-074'> LlccG4175B1OtherMax {
        doc /* その他／打上げ／上限／G417.5(b)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-074）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-075'> LlccG4175B2TemperatureMin {
        doc /* 温度／打上げ／下限／G417.5(b)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-075）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-076'> LlccG4175B2OtherMax {
        doc /* その他／打上げ／上限／G417.5(b)(2)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-076）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-077'> LlccG4177AThunderstormMin {
        doc /* 雷雨／打上げ／下限／G417.7(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-077）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-078'> LlccG4177BLightningDistanceMin {
        doc /* 雷までの距離／打上げ／下限／G417.7(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-078）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-079'> LlccG4177B1OtherMin {
        doc /* その他／打上げ／下限／G417.7(b)(1)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-079）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-080'> LlccG4177B3ElectricFieldMax {
        doc /* 電界／打上げ／上限／G417.7(b)(3)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-080）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue <= limitValue
    }
    constraint def <'WXK-081'> LlccG4179ATemperatureMin {
        doc /* 温度／打上げ／下限／G417.9(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-081）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-082'> LlccG4179AOtherMin {
        doc /* その他／打上げ／下限／G417.9(a)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-082）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-083'> LlccG4179BTemperatureMin {
        doc /* 温度／打上げ／下限／G417.9(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-083）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-084'> LlccG4179BOtherMin {
        doc /* その他／打上げ／下限／G417.9(b)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-084）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-085'> LlccG4179CTemperatureMin {
        doc /* 温度／打上げ／下限／G417.9(c)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-085）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitValue : ScalarValues::Real;
        observedValue >= limitValue
    }
    constraint def <'WXK-086'> LlccG4179DTemperatureRangeProhibitBand {
        doc /* 温度／打上げ／範囲／G417.9(d)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-086）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue < limitLo or observedValue > limitHi
    }
    constraint def <'WXK-087'> LlccG4179D3ElectricFieldRange {
        doc /* 電界／打上げ／範囲／G417.9(d)(3)（2010 の雷の基準）。限界の値は WeatherLimit の使用（constraintId＝WXK-087）。観測値には束ねない */
        in attribute observedValue : ScalarValues::Real; in attribute limitLo : ScalarValues::Real; in attribute limitHi : ScalarValues::Real;
        observedValue >= limitLo and observedValue <= limitHi
    }
    part def WeatherLimit {
        doc /* 天候の限界の値（DE の記録 WXC-nnn の本文の値のまま。換算しない）。どの制約の限界かは constraintId で示すだけで、制約の入力には束ねない */
        attribute constraintId : String;
        attribute sourceRecord : String;
        attribute rulebookEdition : String;
        attribute limitValue : ScalarValues::Real;
        attribute limitValueHigh : ScalarValues::Real [0..1];
        attribute limitUnit : String;
        attribute ruleCondition : String;
    }
    part <'WXL-001'> wxl_001 : WeatherLimit { doc /* WXC-004 1996 */ :>> constraintId = "WXK-020"; :>> sourceRecord = "WXC-004"; :>> rulebookEdition = "1996"; :>> limitValue = 2.0; :>> limitValueHigh = 4.0; :>> limitUnit = "eighths of sky coverage"; :>> ruleCondition = "KSC EOM only; cloud layers below 8K ft reported by ground weather observers or w"; }
    part <'WXL-002'> wxl_002 : WeatherLimit { doc /* WXC-005 1996 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-005"; :>> rulebookEdition = "1996"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "TSTORM (INCLUDING ATTACHED NONTRANSPARENT ANVILS), AND LIGHTNING; prelaunch RTLS"; }
    part <'WXL-003'> wxl_003 : WeatherLimit { doc /* WXC-006 1996 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-006"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "TSTORM (INCLUDING ATTACHED NONTRANSPARENT ANVILS), AND LIGHTNING; prelaunch RTLS"; }
    part <'WXL-004'> wxl_004 : WeatherLimit { doc /* WXC-007 1996 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-007"; :>> rulebookEdition = "1996"; :>> limitValue = 30.0; :>> limitUnit = "NM"; :>> ruleCondition = "TSTORM (INCLUDING ATTACHED NONTRANSPARENT ANVILS), AND LIGHTNING; predeorbit EOM"; }
    part <'WXL-005'> wxl_005 : WeatherLimit { doc /* WXC-008 1996 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-008"; :>> rulebookEdition = "1996"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "TSTORM (INCLUDING ATTACHED NONTRANSPARENT ANVILS), AND LIGHTNING; predeorbit EOM"; }
    part <'WXL-006'> wxl_006 : WeatherLimit { doc /* WXC-009 1996 */ :>> constraintId = "WXK-026"; :>> sourceRecord = "WXC-009"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "NM"; :>> ruleCondition = "TSTORM (INCLUDING ATTACHED NONTRANSPARENT ANVILS), AND LIGHTNING; prelaunch AOA;"; }
    part <'WXL-007'> wxl_007 : WeatherLimit { doc /* WXC-010 1996 */ :>> constraintId = "WXK-026"; :>> sourceRecord = "WXC-010"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "NM"; :>> ruleCondition = "TSTORM (INCLUDING ATTACHED NONTRANSPARENT ANVILS), AND LIGHTNING; prelaunch AOA;"; }
    part <'WXL-008'> wxl_008 : WeatherLimit { doc /* WXC-012 1996 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-012"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "NM"; :>> ruleCondition = "DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; prelaunch RTLS and TAL (column lists "; }
    part <'WXL-009'> wxl_009 : WeatherLimit { doc /* WXC-013 1996 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-013"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "NM"; :>> ruleCondition = "DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; prelaunch RTLS and TAL (column lists "; }
    part <'WXL-010'> wxl_010 : WeatherLimit { doc /* WXC-014 1996 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-014"; :>> rulebookEdition = "1996"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; predeorbit EOM and daily PLS (column "; }
    part <'WXL-011'> wxl_011 : WeatherLimit { doc /* WXC-015 1996 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-015"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; predeorbit EOM and daily PLS (column "; }
    part <'WXL-012'> wxl_012 : WeatherLimit { doc /* WXC-016 1996 */ :>> constraintId = "WXK-026"; :>> sourceRecord = "WXC-016"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "NM"; :>> ruleCondition = "DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; prelaunch AOA; radial distance from t"; }
    part <'WXL-013'> wxl_013 : WeatherLimit { doc /* WXC-017 1996 */ :>> constraintId = "WXK-026"; :>> sourceRecord = "WXC-017"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "NM"; :>> ruleCondition = "DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; prelaunch AOA; lateral distance along"; }
    part <'WXL-014'> wxl_014 : WeatherLimit { doc /* WXC-019 1996 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-019"; :>> rulebookEdition = "1996"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "PRECIPITATION *; prelaunch RTLS and TAL (column lists both; scene = first listed"; }
    part <'WXL-015'> wxl_015 : WeatherLimit { doc /* WXC-020 1996 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-020"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "PRECIPITATION *; prelaunch RTLS and TAL (column lists both; scene = first listed"; }
    part <'WXL-016'> wxl_016 : WeatherLimit { doc /* WXC-021 1996 */ :>> constraintId = "WXK-022"; :>> sourceRecord = "WXC-021"; :>> rulebookEdition = "1996"; :>> limitValue = 30.0; :>> limitUnit = "NM"; :>> ruleCondition = "PRECIPITATION *; predeorbit EOM and daily PLS (column lists both; scene = first "; }
    part <'WXL-017'> wxl_017 : WeatherLimit { doc /* WXC-022 1996 */ :>> constraintId = "WXK-022"; :>> sourceRecord = "WXC-022"; :>> rulebookEdition = "1996"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "PRECIPITATION *; predeorbit EOM and daily PLS (column lists both; scene = first "; }
    part <'WXL-018'> wxl_018 : WeatherLimit { doc /* WXC-023 1996 */ :>> constraintId = "WXK-021"; :>> sourceRecord = "WXC-023"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "NM"; :>> ruleCondition = "PRECIPITATION *; prelaunch AOA; radial distance from the center of the prime run"; }
    part <'WXL-019'> wxl_019 : WeatherLimit { doc /* WXC-024 1996 */ :>> constraintId = "WXK-021"; :>> sourceRecord = "WXC-024"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "NM"; :>> ruleCondition = "PRECIPITATION *; prelaunch AOA; lateral distance along the approach path out to "; }
    part <'WXL-020'> wxl_020 : WeatherLimit { doc /* WXC-027 1996 */ :>> constraintId = "WXK-023"; :>> sourceRecord = "WXC-027"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "percent of the area within 20 "; :>> ruleCondition = "RTLS; rain showers (excluding thunderstorms) within the limits are acceptable if"; }
    part <'WXL-021'> wxl_021 : WeatherLimit { doc /* WXC-028 1996 */ :>> constraintId = "WXK-031"; :>> sourceRecord = "WXC-028"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "deg C"; :>> ruleCondition = "RTLS shower exception; tops of clouds containing precipitation do not exceed the"; }
    part <'WXL-022'> wxl_022 : WeatherLimit { doc /* WXC-029 1996 */ :>> constraintId = "WXK-031"; :>> sourceRecord = "WXC-029"; :>> rulebookEdition = "1996"; :>> limitValue = -10.0; :>> limitUnit = "deg C"; :>> ruleCondition = "RTLS shower exception; clouds have not exceeded the -10 deg C level within 2.5 h"; }
    part <'WXL-023'> wxl_023 : WeatherLimit { doc /* WXC-030 1996 */ :>> constraintId = "WXK-023"; :>> sourceRecord = "WXC-030"; :>> rulebookEdition = "1996"; :>> limitValue = 30.0; :>> limitUnit = "dBZ"; :>> ruleCondition = "RTLS shower exception; precipitation is light (less than 30 dBZ) at all levels w"; }
    part <'WXL-024'> wxl_024 : WeatherLimit { doc /* WXC-031 1996 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-031"; :>> rulebookEdition = "1996"; :>> limitValue = 2.0; :>> limitUnit = "NM"; :>> ruleCondition = "RTLS; for any shower within 20 miles of the SLF that exceeds paragraph 4.c or 4."; }
    part <'WXL-025'> wxl_025 : WeatherLimit { doc /* WXC-032 1996 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-032"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "RTLS; for any shower within 20 miles of the SLF that exceeds paragraph 4.c or 4."; }
    part <'WXL-026'> wxl_026 : WeatherLimit { doc /* WXC-033 1996 */ :>> constraintId = "WXK-032"; :>> sourceRecord = "WXC-033"; :>> rulebookEdition = "1996"; :>> limitValue = 1.0; :>> limitUnit = "hour"; :>> ruleCondition = "the orbiter shall not penetrate a cumulus cloud attached to a smoke plume produc"; }
    part <'WXL-027'> wxl_027 : WeatherLimit { doc /* WXC-034 1996 */ :>> constraintId = "WXK-011"; :>> sourceRecord = "WXC-034"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "K ft"; :>> ruleCondition = "concrete runway; day; MLS column (redundant / single string / none) is not recov"; }
    part <'WXL-028'> wxl_028 : WeatherLimit { doc /* WXC-035 1996 */ :>> constraintId = "WXK-016"; :>> sourceRecord = "WXC-035"; :>> rulebookEdition = "1996"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "concrete runway; day; MLS column (redundant / single string / none) is not recov"; }
    part <'WXL-029'> wxl_029 : WeatherLimit { doc /* WXC-038 1996 */ :>> constraintId = "WXK-011"; :>> sourceRecord = "WXC-038"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "K ft"; :>> ruleCondition = "lakebed runway; day; WX recon required; MLS column (redundant / single string / "; }
    part <'WXL-030'> wxl_030 : WeatherLimit { doc /* WXC-039 1996 */ :>> constraintId = "WXK-016"; :>> sourceRecord = "WXC-039"; :>> rulebookEdition = "1996"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "lakebed runway; day; WX recon required; MLS column (redundant / single string / "; }
    part <'WXL-031'> wxl_031 : WeatherLimit { doc /* WXC-040 1996 */ :>> constraintId = "WXK-011"; :>> sourceRecord = "WXC-040"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "K ft"; :>> ruleCondition = "lakebed runway; night; MLS column (redundant / single string / none) is not reco"; }
    part <'WXL-032'> wxl_032 : WeatherLimit { doc /* WXC-041 1996 */ :>> constraintId = "WXK-016"; :>> sourceRecord = "WXC-041"; :>> rulebookEdition = "1996"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "lakebed runway; night; MLS column (redundant / single string / none) is not reco"; }
    part <'WXL-033'> wxl_033 : WeatherLimit { doc /* WXC-042 1996 */ :>> constraintId = "WXK-012"; :>> sourceRecord = "WXC-042"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "K ft"; :>> ruleCondition = "RTLS; concrete runway; day; MLS column (redundant / single string / none) is not"; }
    part <'WXL-034'> wxl_034 : WeatherLimit { doc /* WXC-043 1996 */ :>> constraintId = "WXK-017"; :>> sourceRecord = "WXC-043"; :>> rulebookEdition = "1996"; :>> limitValue = 4.0; :>> limitUnit = "SM"; :>> ruleCondition = "RTLS; concrete runway; day; MLS column (redundant / single string / none) is not"; }
    part <'WXL-035'> wxl_035 : WeatherLimit { doc /* WXC-044 1996 */ :>> constraintId = "WXK-013"; :>> sourceRecord = "WXC-044"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "K ft"; :>> ruleCondition = "TAL; concrete runway; day; the table prints '>5/5' (strict) for TAL while RTLS i"; }
    part <'WXL-036'> wxl_036 : WeatherLimit { doc /* WXC-045 1996 */ :>> constraintId = "WXK-018"; :>> sourceRecord = "WXC-045"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "SM"; :>> ruleCondition = "TAL; concrete runway; day; the table prints '>5/5' (strict) for TAL while RTLS i"; }
    part <'WXL-037'> wxl_037 : WeatherLimit { doc /* WXC-046 1996 */ :>> constraintId = "WXK-012"; :>> sourceRecord = "WXC-046"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "K ft"; :>> ruleCondition = "RTLS and TAL; concrete runway; day; second value of the row (after '>5/5 TAL'); "; }
    part <'WXL-038'> wxl_038 : WeatherLimit { doc /* WXC-047 1996 */ :>> constraintId = "WXK-017"; :>> sourceRecord = "WXC-047"; :>> rulebookEdition = "1996"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "RTLS and TAL; concrete runway; day; second value of the row (after '>5/5 TAL'); "; }
    part <'WXL-039'> wxl_039 : WeatherLimit { doc /* WXC-052 1996 */ :>> constraintId = "WXK-010"; :>> sourceRecord = "WXC-052"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "K ft"; :>> ruleCondition = "predeorbit; one APU failed or attempt-two-APUs procedure"; }
    part <'WXL-040'> wxl_040 : WeatherLimit { doc /* WXC-053 1996 */ :>> constraintId = "WXK-015"; :>> sourceRecord = "WXC-053"; :>> rulebookEdition = "1996"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "predeorbit; one APU failed or attempt-two-APUs procedure"; }
    part <'WXL-041'> wxl_041 : WeatherLimit { doc /* WXC-054 1996 */ :>> constraintId = "WXK-004"; :>> sourceRecord = "WXC-054"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "RTLS; peak crosswind; * requires an STA evaluation to 17 knots and a GO from the"; }
    part <'WXL-042'> wxl_042 : WeatherLimit { doc /* WXC-055 1996 */ :>> constraintId = "WXK-004"; :>> sourceRecord = "WXC-055"; :>> rulebookEdition = "1996"; :>> limitValue = 17.0; :>> limitUnit = "knots"; :>> ruleCondition = "RTLS; peak crosswind above 15 knots needs an STA evaluation up to 17 knots and a"; }
    part <'WXL-043'> wxl_043 : WeatherLimit { doc /* WXC-056 1996 */ :>> constraintId = "WXK-003"; :>> sourceRecord = "WXC-056"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "day; peak crosswind; the row lists EOM, TAL, AOA and daily PLS selection"; }
    part <'WXL-044'> wxl_044 : WeatherLimit { doc /* WXC-057 1996 */ :>> constraintId = "WXK-003"; :>> sourceRecord = "WXC-057"; :>> rulebookEdition = "1996"; :>> limitValue = 12.0; :>> limitUnit = "knots"; :>> ruleCondition = "night; peak crosswind; the row lists EOM, TAL, AOA and daily PLS selection"; }
    part <'WXL-045'> wxl_045 : WeatherLimit { doc /* WXC-058 1996 */ :>> constraintId = "WXK-008"; :>> sourceRecord = "WXC-058"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitValueHigh = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "crosswind DTO; peak crosswind from at least 10 up to 15 knots"; }
    part <'WXL-046'> wxl_046 : WeatherLimit { doc /* WXC-059 1996 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-059"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "nominal drag chute deploy; peak crosswind"; }
    part <'WXL-047'> wxl_047 : WeatherLimit { doc /* WXC-060 1996 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-060"; :>> rulebookEdition = "1996"; :>> limitValue = 12.0; :>> limitUnit = "knots"; :>> ruleCondition = "landing at or after the CDR's flight day 19 (table); the p102 rationale text say"; }
    part <'WXL-048'> wxl_048 : WeatherLimit { doc /* WXC-061 1996 */ :>> constraintId = "WXK-001"; :>> sourceRecord = "WXC-061"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "knots"; :>> ruleCondition = "predeorbit; one APU failed or attempt-2-APUs procedure; peak crosswind"; }
    part <'WXL-049'> wxl_049 : WeatherLimit { doc /* WXC-062 1996 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-062"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "ECAL/ELS; peak crosswind"; }
    part <'WXL-050'> wxl_050 : WeatherLimit { doc /* WXC-067 1996 */ :>> constraintId = "WXK-010"; :>> sourceRecord = "WXC-067"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "K ft"; :>> ruleCondition = "WX placards for the priority of landing sites after systems failures (note [2] o"; }
    part <'WXL-051'> wxl_051 : WeatherLimit { doc /* WXC-068 1996 */ :>> constraintId = "WXK-015"; :>> sourceRecord = "WXC-068"; :>> rulebookEdition = "1996"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "WX placards for the priority of landing sites after systems failures (note [2] o"; }
    part <'WXL-052'> wxl_052 : WeatherLimit { doc /* WXC-069 1996 */ :>> constraintId = "WXK-001"; :>> sourceRecord = "WXC-069"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "knots"; :>> ruleCondition = "WX placards for the priority of landing sites after systems failures (note [2] o"; }
    part <'WXL-053'> wxl_053 : WeatherLimit { doc /* WXC-070 1996 */ :>> constraintId = "WXK-007"; :>> sourceRecord = "WXC-070"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "knots"; :>> ruleCondition = "crosswind DTO is NO-GO when the peak crosswind is below 10 knots (p379 rationale"; }
    part <'WXL-054'> wxl_054 : WeatherLimit { doc /* WXC-071 1996 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-071"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "crosswind DTO is NO-GO when the peak crosswind is above 15 knots (nominal crossw"; }
    part <'WXL-055'> wxl_055 : WeatherLimit { doc /* WXC-072 1996 */ :>> constraintId = "WXK-009"; :>> sourceRecord = "WXC-072"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "knots"; :>> ruleCondition = "crosswind DTO is NO-GO when the gust is above 10 knots (gust above the steady-st"; }
    part <'WXL-056'> wxl_056 : WeatherLimit { doc /* WXC-073 1996 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-073"; :>> rulebookEdition = "1996"; :>> limitValue = 12.0; :>> limitUnit = "knots"; :>> ruleCondition = "crosswind landing DTOs above 12 knots peak will not be performed on night landin"; }
    part <'WXL-057'> wxl_057 : WeatherLimit { doc /* WXC-080 1996 */ :>> constraintId = "WXK-010"; :>> sourceRecord = "WXC-080"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "K ft"; :>> ruleCondition = "prior to the deorbit burn, if an APU/hydraulic system fails or its capability to"; }
    part <'WXL-058'> wxl_058 : WeatherLimit { doc /* WXC-081 1996 */ :>> constraintId = "WXK-015"; :>> sourceRecord = "WXC-081"; :>> rulebookEdition = "1996"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "prior to the deorbit burn, if an APU/hydraulic system fails or its capability to"; }
    part <'WXL-059'> wxl_059 : WeatherLimit { doc /* WXC-082 1996 */ :>> constraintId = "WXK-001"; :>> sourceRecord = "WXC-082"; :>> rulebookEdition = "1996"; :>> limitValue = 10.0; :>> limitUnit = "knots"; :>> ruleCondition = "prior to the deorbit burn, if an APU/hydraulic system fails or its capability to"; }
    part <'WXL-060'> wxl_060 : WeatherLimit { doc /* WXC-083 1996 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-083"; :>> rulebookEdition = "1996"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "the drag chute will not be deployed if the crosswind is above 15 knots peak"; }
    part <'WXL-061'> wxl_061 : WeatherLimit { doc /* WXC-084 1996 */ :>> constraintId = "WXK-030"; :>> sourceRecord = "WXC-084"; :>> rulebookEdition = "1996"; :>> limitValue = 5.0; :>> limitUnit = "miles"; :>> ruleCondition = "normal postlanding operations continue except for lightning within 5 miles (the "; }
    part <'WXL-062'> wxl_062 : WeatherLimit { doc /* WXC-085 2002 */ :>> constraintId = "WXK-012"; :>> sourceRecord = "WXC-085"; :>> rulebookEdition = "2002"; :>> limitValue = 5.0; :>> limitUnit = "K FT"; :>> ruleCondition = "RTLS, concrete runway, DAY; MLS column not legible in the text layer (A3-202: re"; }
    part <'WXL-063'> wxl_063 : WeatherLimit { doc /* WXC-086 2002 */ :>> constraintId = "WXK-017"; :>> sourceRecord = "WXC-086"; :>> rulebookEdition = "2002"; :>> limitValue = 4.0; :>> limitUnit = "SM"; :>> ruleCondition = "RTLS, concrete runway, DAY; MLS column not legible in the text layer (A3-202: re"; }
    part <'WXL-064'> wxl_064 : WeatherLimit { doc /* WXC-087 2002 */ :>> constraintId = "WXK-013"; :>> sourceRecord = "WXC-087"; :>> rulebookEdition = "2002"; :>> limitValue = 5.0; :>> limitUnit = "K FT"; :>> ruleCondition = "TAL, concrete runway, DAY; printed as '>5/5 TAL'; MLS column not legible in the "; }
    part <'WXL-065'> wxl_065 : WeatherLimit { doc /* WXC-088 2002 */ :>> constraintId = "WXK-018"; :>> sourceRecord = "WXC-088"; :>> rulebookEdition = "2002"; :>> limitValue = 5.0; :>> limitUnit = "SM"; :>> ruleCondition = "TAL, concrete runway, DAY; printed as '>5/5 TAL'; MLS column not legible in the "; }
    part <'WXL-066'> wxl_066 : WeatherLimit { doc /* WXC-089 2002 */ :>> constraintId = "WXK-014"; :>> sourceRecord = "WXC-089"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "K FT"; :>> ruleCondition = "lakebed runway, NIGHT; MLS column not legible (rationale pdf 497: single-string "; }
    part <'WXL-067'> wxl_067 : WeatherLimit { doc /* WXC-090 2002 */ :>> constraintId = "WXK-019"; :>> sourceRecord = "WXC-090"; :>> rulebookEdition = "2002"; :>> limitValue = 7.0; :>> limitUnit = "SM"; :>> ruleCondition = "lakebed runway, NIGHT; MLS column not legible (rationale pdf 497: single-string "; }
    part <'WXL-068'> wxl_068 : WeatherLimit { doc /* WXC-106 2002 */ :>> constraintId = "WXK-020"; :>> sourceRecord = "WXC-106"; :>> rulebookEdition = "2002"; :>> limitValue = 2.0; :>> limitValueHigh = 4.0; :>> limitUnit = "eighths of sky coverage"; :>> ruleCondition = "cloud layers below 8K FT reported by ground observers or weather aircraft, at th"; }
    part <'WXL-069'> wxl_069 : WeatherLimit { doc /* WXC-107 2002 */ :>> constraintId = "WXK-004"; :>> sourceRecord = "WXC-107"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "RTLS; footnote * applies to this value (STA evaluation to 17 knots)"; }
    part <'WXL-070'> wxl_070 : WeatherLimit { doc /* WXC-108 2002 */ :>> constraintId = "WXK-004"; :>> sourceRecord = "WXC-108"; :>> rulebookEdition = "2002"; :>> limitValue = 17.0; :>> limitUnit = "knots"; :>> ruleCondition = "RTLS, only with an STA evaluation to 17 knots and a GO from the STA pilot (also "; }
    part <'WXL-071'> wxl_071 : WeatherLimit { doc /* WXC-109 2002 */ :>> constraintId = "WXK-003"; :>> sourceRecord = "WXC-109"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "DAY; the row cell is shared by EOM, TAL, AOA and DAILY PLS SELECTION (this recor"; }
    part <'WXL-072'> wxl_072 : WeatherLimit { doc /* WXC-110 2002 */ :>> constraintId = "WXK-005"; :>> sourceRecord = "WXC-110"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "DAY; the row cell is shared by EOM, TAL, AOA and DAILY PLS SELECTION (this recor"; }
    part <'WXL-073'> wxl_073 : WeatherLimit { doc /* WXC-111 2002 */ :>> constraintId = "WXK-002"; :>> sourceRecord = "WXC-111"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "DAY; the row cell is shared by EOM, TAL, AOA and DAILY PLS SELECTION (this recor"; }
    part <'WXL-074'> wxl_074 : WeatherLimit { doc /* WXC-112 2002 */ :>> constraintId = "WXK-003"; :>> sourceRecord = "WXC-112"; :>> rulebookEdition = "2002"; :>> limitValue = 12.0; :>> limitUnit = "knots"; :>> ruleCondition = "NIGHT; the row cell is shared by EOM and DAILY PLS SELECTION"; }
    part <'WXL-075'> wxl_075 : WeatherLimit { doc /* WXC-113 2002 */ :>> constraintId = "WXK-005"; :>> sourceRecord = "WXC-113"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "NIGHT; the row cell is shared by TAL and AOA (this record: TAL)"; }
    part <'WXL-076'> wxl_076 : WeatherLimit { doc /* WXC-114 2002 */ :>> constraintId = "WXK-002"; :>> sourceRecord = "WXC-114"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "NIGHT; the row cell is shared by TAL and AOA (this record: AOA)"; }
    part <'WXL-077'> wxl_077 : WeatherLimit { doc /* WXC-115 2002 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-115"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "knots"; :>> ruleCondition = "ECAL/ELS; turbulence column N/A"; }
    part <'WXL-078'> wxl_078 : WeatherLimit { doc /* WXC-116 2002 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-116"; :>> rulebookEdition = "2002"; :>> limitValue = 12.0; :>> limitUnit = "knots"; :>> ruleCondition = "landing after the CDR's flight day 19 (printed 'LANDING ? CDR FD19'; the sign gl"; }
    part <'WXL-079'> wxl_079 : WeatherLimit { doc /* WXC-121 2002 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-121"; :>> rulebookEdition = "2002"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; TSTORM (INCLUDING ATTACHED NONTRANSPARENT AN"; }
    part <'WXL-080'> wxl_080 : WeatherLimit { doc /* WXC-122 2002 */ :>> constraintId = "WXK-029"; :>> sourceRecord = "WXC-122"; :>> rulebookEdition = "2002"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; TSTORM (INCLUDING ATTACHED NONTRANSPARENT AN"; }
    part <'WXL-081'> wxl_081 : WeatherLimit { doc /* WXC-123 2002 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-123"; :>> rulebookEdition = "2002"; :>> limitValue = 30.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; TSTORM (INCLUDING ATTACHED NONTRANSPARENT AN"; }
    part <'WXL-082'> wxl_082 : WeatherLimit { doc /* WXC-125 2002 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-125"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; TSTORM (INCLUDING ATTACHED NONTRANSPAR"; }
    part <'WXL-083'> wxl_083 : WeatherLimit { doc /* WXC-126 2002 */ :>> constraintId = "WXK-029"; :>> sourceRecord = "WXC-126"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; TSTORM (INCLUDING ATTACHED NONTRANSPAR"; }
    part <'WXL-084'> wxl_084 : WeatherLimit { doc /* WXC-127 2002 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-127"; :>> rulebookEdition = "2002"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; TSTORM (INCLUDING ATTACHED NONTRANSPAR"; }
    part <'WXL-085'> wxl_085 : WeatherLimit { doc /* WXC-129 2002 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-129"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; t"; }
    part <'WXL-086'> wxl_086 : WeatherLimit { doc /* WXC-130 2002 */ :>> constraintId = "WXK-029"; :>> sourceRecord = "WXC-130"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; t"; }
    part <'WXL-087'> wxl_087 : WeatherLimit { doc /* WXC-131 2002 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-131"; :>> rulebookEdition = "2002"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; DETACHED NONTRANSPARENT ANVIL < 3 HRS OLD; t"; }
    part <'WXL-088'> wxl_088 : WeatherLimit { doc /* WXC-133 2002 */ :>> constraintId = "WXK-028"; :>> sourceRecord = "WXC-133"; :>> rulebookEdition = "2002"; :>> limitValue = 5.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; DETACHED NONTRANSPARENT ANVIL < 3 HRS "; }
    part <'WXL-089'> wxl_089 : WeatherLimit { doc /* WXC-134 2002 */ :>> constraintId = "WXK-029"; :>> sourceRecord = "WXC-134"; :>> rulebookEdition = "2002"; :>> limitValue = 5.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; DETACHED NONTRANSPARENT ANVIL < 3 HRS "; }
    part <'WXL-090'> wxl_090 : WeatherLimit { doc /* WXC-135 2002 */ :>> constraintId = "WXK-027"; :>> sourceRecord = "WXC-135"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; DETACHED NONTRANSPARENT ANVIL < 3 HRS "; }
    part <'WXL-091'> wxl_091 : WeatherLimit { doc /* WXC-137 2002 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-137"; :>> rulebookEdition = "2002"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; PRECIPITATION *; the column cell is shared b"; }
    part <'WXL-092'> wxl_092 : WeatherLimit { doc /* WXC-138 2002 */ :>> constraintId = "WXK-025"; :>> sourceRecord = "WXC-138"; :>> rulebookEdition = "2002"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; PRECIPITATION *; the column cell is shared b"; }
    part <'WXL-093'> wxl_093 : WeatherLimit { doc /* WXC-139 2002 */ :>> constraintId = "WXK-022"; :>> sourceRecord = "WXC-139"; :>> rulebookEdition = "2002"; :>> limitValue = 30.0; :>> limitUnit = "NM"; :>> ruleCondition = "radial from center of prime runway; PRECIPITATION *; the column cell is shared b"; }
    part <'WXL-094'> wxl_094 : WeatherLimit { doc /* WXC-141 2002 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-141"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; PRECIPITATION *; the column cell is sh"; }
    part <'WXL-095'> wxl_095 : WeatherLimit { doc /* WXC-142 2002 */ :>> constraintId = "WXK-025"; :>> sourceRecord = "WXC-142"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; PRECIPITATION *; the column cell is sh"; }
    part <'WXL-096'> wxl_096 : WeatherLimit { doc /* WXC-143 2002 */ :>> constraintId = "WXK-022"; :>> sourceRecord = "WXC-143"; :>> rulebookEdition = "2002"; :>> limitValue = 20.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral along approach path out to 30 NM; PRECIPITATION *; the column cell is sh"; }
    part <'WXL-097'> wxl_097 : WeatherLimit { doc /* WXC-148 2002 */ :>> constraintId = "WXK-023"; :>> sourceRecord = "WXC-148"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "percent"; :>> ruleCondition = "area coverage of showers within 20 NM of the SLF, or multiple HAC's clear of sho"; }
    part <'WXL-098'> wxl_098 : WeatherLimit { doc /* WXC-149 2002 */ :>> constraintId = "WXK-031"; :>> sourceRecord = "WXC-149"; :>> rulebookEdition = "2002"; :>> limitValue = 5.0; :>> limitUnit = "deg C"; :>> ruleCondition = "cloud-top temperature level of clouds containing precipitation; RTLS rain shower"; }
    part <'WXL-099'> wxl_099 : WeatherLimit { doc /* WXC-150 2002 */ :>> constraintId = "WXK-031"; :>> sourceRecord = "WXC-150"; :>> rulebookEdition = "2002"; :>> limitValue = -10.0; :>> limitUnit = "deg C"; :>> ruleCondition = "cloud tops must not have exceeded the -10 deg C level within 2.5 hours prior to "; }
    part <'WXL-100'> wxl_100 : WeatherLimit { doc /* WXC-151 2002 */ :>> constraintId = "WXK-023"; :>> sourceRecord = "WXC-151"; :>> rulebookEdition = "2002"; :>> limitValue = 30.0; :>> limitUnit = "dBZ"; :>> ruleCondition = "radar reflectivity at all levels within and below the cloud; RTLS rain showers ("; }
    part <'WXL-101'> wxl_101 : WeatherLimit { doc /* WXC-152 2002 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-152"; :>> rulebookEdition = "2002"; :>> limitValue = 2.0; :>> limitUnit = "NM"; :>> ruleCondition = "vertical clearance; for any shower within 20 miles of the SLF that exceeds C.4.c"; }
    part <'WXL-102'> wxl_102 : WeatherLimit { doc /* WXC-153 2002 */ :>> constraintId = "WXK-024"; :>> sourceRecord = "WXC-153"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "NM"; :>> ruleCondition = "lateral clearance; for any shower within 20 miles of the SLF that exceeds C.4.c "; }
    part <'WXL-103'> wxl_103 : WeatherLimit { doc /* WXC-154 2002 */ :>> constraintId = "WXK-032"; :>> sourceRecord = "WXC-154"; :>> rulebookEdition = "2002"; :>> limitValue = 1.0; :>> limitUnit = "hour"; :>> ruleCondition = "after the cumulus cloud detaches from the smoke plume, 1 hour must elapse before"; }
    part <'WXL-104'> wxl_104 : WeatherLimit { doc /* WXC-155 2002 */ :>> constraintId = "WXK-010"; :>> sourceRecord = "WXC-155"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "K FEET"; :>> ruleCondition = "single APU WX placards: landing sites for 1 or 2 APU/HYD system failures (and th"; }
    part <'WXL-105'> wxl_105 : WeatherLimit { doc /* WXC-156 2002 */ :>> constraintId = "WXK-015"; :>> sourceRecord = "WXC-156"; :>> rulebookEdition = "2002"; :>> limitValue = 7.0; :>> limitUnit = "STATUTE MILES"; :>> ruleCondition = "single APU WX placards: landing sites for 1 or 2 APU/HYD system failures (and th"; }
    part <'WXL-106'> wxl_106 : WeatherLimit { doc /* WXC-157 2002 */ :>> constraintId = "WXK-001"; :>> sourceRecord = "WXC-157"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "KNOTS (PEAK)"; :>> ruleCondition = "single APU WX placards: landing sites for 1 or 2 APU/HYD system failures (and th"; }
    part <'WXL-107'> wxl_107 : WeatherLimit { doc /* WXC-159 2002 */ :>> constraintId = "WXK-007"; :>> sourceRecord = "WXC-159"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "KNOTS PEAK"; :>> ruleCondition = "crosswind DTO is NO-GO for peak crosswind below 10 knots (not within DTO limits)"; }
    part <'WXL-108'> wxl_108 : WeatherLimit { doc /* WXC-160 2002 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-160"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "KNOTS PEAK"; :>> ruleCondition = "crosswind DTO is NO-GO for peak crosswind above 15 knots"; }
    part <'WXL-109'> wxl_109 : WeatherLimit { doc /* WXC-161 2002 */ :>> constraintId = "WXK-009"; :>> sourceRecord = "WXC-161"; :>> rulebookEdition = "2002"; :>> limitValue = 10.0; :>> limitUnit = "KNOTS GUST"; :>> ruleCondition = "crosswind DTO is NO-GO for gusts above 10 knots (gust = above the steady-state w"; }
    part <'WXL-110'> wxl_110 : WeatherLimit { doc /* WXC-162 2002 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-162"; :>> rulebookEdition = "2002"; :>> limitValue = 12.0; :>> limitUnit = "KNOTS PEAK"; :>> ruleCondition = "crosswind landing DTO's above 12 knots peak will not be performed on night landi"; }
    part <'WXL-111'> wxl_111 : WeatherLimit { doc /* WXC-170 2002 */ :>> constraintId = "WXK-006"; :>> sourceRecord = "WXC-170"; :>> rulebookEdition = "2002"; :>> limitValue = 15.0; :>> limitUnit = "KNOTS PEAK"; :>> ruleCondition = "the drag chute will not be deployed if crosswind is greater than 15 knots peak"; }
    part <'WXL-112'> wxl_112 : WeatherLimit { doc /* WXC-171 2002 */ :>> constraintId = "WXK-030"; :>> sourceRecord = "WXC-171"; :>> rulebookEdition = "2002"; :>> limitValue = 5.0; :>> limitUnit = "MILES"; :>> ruleCondition = "normal postlanding operations will be continued except for lightning within 5 mi"; }
    part <'WXL-113'> wxl_113 : WeatherLimit { doc /* WXC-172 2010 */ :>> constraintId = "WXK-072"; :>> sourceRecord = "WXC-172"; :>> rulebookEdition = "2010"; :>> limitValue = 1500.0; :>> limitUnit = "V/m"; :>> ruleCondition = "absolute value of any electric field measurement within 5 nmi of the flight path"; }
    part <'WXL-114'> wxl_114 : WeatherLimit { doc /* WXC-175 2010 */ :>> constraintId = "WXK-073"; :>> sourceRecord = "WXC-175"; :>> rulebookEdition = "2010"; :>> limitValue = 1000.0; :>> limitUnit = "V/m"; :>> ruleCondition = "absolute value of any electric field measurement within 5 nmi of the flight path"; }
    part <'WXL-115'> wxl_115 : WeatherLimit { doc /* WXC-178 2010 */ :>> constraintId = "WXK-074"; :>> sourceRecord = "WXC-178"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception: all clouds within this distance of the flight path are transparent"; }
    part <'WXL-116'> wxl_116 : WeatherLimit { doc /* WXC-179 2010 */ :>> constraintId = "WXK-076"; :>> sourceRecord = "WXC-179"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception: all clouds within this distance of the flight path meet the cloud-top"; }
    part <'WXL-117'> wxl_117 : WeatherLimit { doc /* WXC-180 2010 */ :>> constraintId = "WXK-075"; :>> sourceRecord = "WXC-180"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception: cloud tops of all clouds within 10 nmi"; }
    part <'WXL-118'> wxl_118 : WeatherLimit { doc /* WXC-181 2010 */ :>> constraintId = "WXK-075"; :>> sourceRecord = "WXC-181"; :>> rulebookEdition = "2010"; :>> limitValue = -10.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception: clouds have not been part of convective clouds with tops this cold du"; }
    part <'WXL-119'> wxl_119 : WeatherLimit { doc /* WXC-184 2010 */ :>> constraintId = "WXK-077"; :>> sourceRecord = "WXC-184"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "after lightning in the thunderstorm; an attached anvil cloud is not part of its "; }
    part <'WXL-120'> wxl_120 : WeatherLimit { doc /* WXC-186 2010 */ :>> constraintId = "WXK-078"; :>> sourceRecord = "WXC-186"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "any type of lightning; unless all three of (b)(1)-(3) satisfied"; }
    part <'WXL-121'> wxl_121 : WeatherLimit { doc /* WXC-187 2010 */ :>> constraintId = "WXK-079"; :>> sourceRecord = "WXC-187"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception: the cloud that produced the lightning"; }
    part <'WXL-122'> wxl_122 : WeatherLimit { doc /* WXC-189 2010 */ :>> constraintId = "WXK-080"; :>> sourceRecord = "WXC-189"; :>> rulebookEdition = "2010"; :>> limitValue = 1000.0; :>> limitUnit = "V/m"; :>> ruleCondition = "exception: absolute values of all measurements within 5 nmi of the flight path a"; }
    part <'WXL-123'> wxl_123 : WeatherLimit { doc /* WXC-192 2010 */ :>> constraintId = "WXK-082"; :>> sourceRecord = "WXC-192"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "cumulus cloud with cloud top colder than or equal to -20 C"; }
    part <'WXL-124'> wxl_124 : WeatherLimit { doc /* WXC-193 2010 */ :>> constraintId = "WXK-081"; :>> sourceRecord = "WXC-193"; :>> rulebookEdition = "2010"; :>> limitValue = -20.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "cloud top colder than or equal to this triggers the standoff"; }
    part <'WXL-125'> wxl_125 : WeatherLimit { doc /* WXC-194 2010 */ :>> constraintId = "WXK-084"; :>> sourceRecord = "WXC-194"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "cumulus cloud with cloud top colder than or equal to -10 C"; }
    part <'WXL-126'> wxl_126 : WeatherLimit { doc /* WXC-195 2010 */ :>> constraintId = "WXK-083"; :>> sourceRecord = "WXC-195"; :>> rulebookEdition = "2010"; :>> limitValue = -10.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "cloud top colder than or equal to this triggers the standoff"; }
    part <'WXL-127'> wxl_127 : WeatherLimit { doc /* WXC-196 2010 */ :>> constraintId = "WXK-085"; :>> sourceRecord = "WXC-196"; :>> rulebookEdition = "2010"; :>> limitValue = -5.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "flight path through any cumulus cloud whose top is colder than or equal to this"; }
    part <'WXL-128'> wxl_128 : WeatherLimit { doc /* WXC-197 2010 */ :>> constraintId = "WXK-086"; :>> sourceRecord = "WXC-197"; :>> rulebookEdition = "2010"; :>> limitValue = -5.0; :>> limitValueHigh = 5.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "flight through cumulus with top warmer than -5 C to colder than or equal to +5 C"; }
    part <'WXL-129'> wxl_129 : WeatherLimit { doc /* WXC-199 2010 */ :>> constraintId = "WXK-087"; :>> sourceRecord = "WXC-199"; :>> rulebookEdition = "2010"; :>> limitValue = -100.0; :>> limitValueHigh = 500.0; :>> limitUnit = "V/m"; :>> ruleCondition = "exception: all measurements within 5 nmi of the flight path and at each field mi"; }
    part <'WXL-130'> wxl_130 : WeatherLimit { doc /* WXC-202 2010 */ :>> constraintId = "WXK-034"; :>> sourceRecord = "WXC-202"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitValueHigh = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "attached anvil cloud; first 30 minutes after the last lightning discharge in or "; }
    part <'WXL-131'> wxl_131 : WeatherLimit { doc /* WXC-204 2010 */ :>> constraintId = "WXK-033"; :>> sourceRecord = "WXC-204"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception: the portion of the attached anvil within 10 nmi of the flight path lo"; }
    part <'WXL-132'> wxl_132 : WeatherLimit { doc /* WXC-205 2010 */ :>> constraintId = "WXK-036"; :>> sourceRecord = "WXC-205"; :>> rulebookEdition = "2010"; :>> limitValue = 3.0; :>> limitValueHigh = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "attached anvil cloud; first three hours after the last lightning discharge"; }
    part <'WXL-133'> wxl_133 : WeatherLimit { doc /* WXC-207 2010 */ :>> constraintId = "WXK-035"; :>> sourceRecord = "WXC-207"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception: the portion of the attached anvil within 5 nmi of the flight path loc"; }
    part <'WXL-134'> wxl_134 : WeatherLimit { doc /* WXC-208 2010 */ :>> constraintId = "WXK-037"; :>> sourceRecord = "WXC-208"; :>> rulebookEdition = "2010"; :>> limitValue = 3.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "attached anvil cloud; unless (c)(1)-(3) all satisfied"; }
    part <'WXL-135'> wxl_135 : WeatherLimit { doc /* WXC-209 2010 */ :>> constraintId = "WXK-038"; :>> sourceRecord = "WXC-209"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception: portion of the attached anvil within 5 nmi of the flight path located"; }
    part <'WXL-136'> wxl_136 : WeatherLimit { doc /* WXC-210 2010 */ :>> constraintId = "WXK-039"; :>> sourceRecord = "WXC-210"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception: the portion of the attached anvil considered"; }
    part <'WXL-137'> wxl_137 : WeatherLimit { doc /* WXC-211 2010 */ :>> constraintId = "WXK-040"; :>> sourceRecord = "WXC-211"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ-km"; :>> ruleCondition = "exception: at every point within 1 nmi of the flight path (also written +33 dBZ-"; }
    part <'WXL-138'> wxl_138 : WeatherLimit { doc /* WXC-213 2010 */ :>> constraintId = "WXK-042"; :>> sourceRecord = "WXC-213"; :>> rulebookEdition = "2010"; :>> limitValue = 3.0; :>> limitValueHigh = 10.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "detached anvil cloud; first 30 minutes after the last lightning discharge"; }
    part <'WXL-139'> wxl_139 : WeatherLimit { doc /* WXC-215 2010 */ :>> constraintId = "WXK-041"; :>> sourceRecord = "WXC-215"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception: the portion of the detached anvil within 10 nmi of the flight path lo"; }
    part <'WXL-140'> wxl_140 : WeatherLimit { doc /* WXC-216 2010 */ :>> constraintId = "WXK-043"; :>> sourceRecord = "WXC-216"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitValueHigh = 3.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "detached anvil cloud; first 30 minutes after the last lightning discharge; unles"; }
    part <'WXL-141'> wxl_141 : WeatherLimit { doc /* WXC-218 2010 */ :>> constraintId = "WXK-044"; :>> sourceRecord = "WXC-218"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception: portion of the detached anvil within 5 nmi of the flight path entirel"; }
    part <'WXL-142'> wxl_142 : WeatherLimit { doc /* WXC-219 2010 */ :>> constraintId = "WXK-045"; :>> sourceRecord = "WXC-219"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception: the portion of the detached anvil considered"; }
    part <'WXL-143'> wxl_143 : WeatherLimit { doc /* WXC-220 2010 */ :>> constraintId = "WXK-046"; :>> sourceRecord = "WXC-220"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ-km"; :>> ruleCondition = "exception: at every point within 1 nmi of the flight path (also written +33 dBZ-"; }
    part <'WXL-144'> wxl_144 : WeatherLimit { doc /* WXC-222 2010 */ :>> constraintId = "WXK-047"; :>> sourceRecord = "WXC-222"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitValueHigh = 3.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "detached anvil cloud; after the first 30 minutes up to 3 hours after the last li"; }
    part <'WXL-145'> wxl_145 : WeatherLimit { doc /* WXC-226 2010 */ :>> constraintId = "WXK-048"; :>> sourceRecord = "WXC-226"; :>> rulebookEdition = "2010"; :>> limitValue = 1000.0; :>> limitUnit = "V/m"; :>> ruleCondition = "exception (c)(1): absolute values of all measurements within 5 nmi of the flight"; }
    part <'WXL-146'> wxl_146 : WeatherLimit { doc /* WXC-229 2010 */ :>> constraintId = "WXK-049"; :>> sourceRecord = "WXC-229"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ"; :>> ruleCondition = "exception (c)(1): has been below this value for 15 minutes"; }
    part <'WXL-147'> wxl_147 : WeatherLimit { doc /* WXC-232 2010 */ :>> constraintId = "WXK-050"; :>> sourceRecord = "WXC-232"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception (c)(2): portion within 5 nmi of the flight path entirely at altitudes "; }
    part <'WXL-148'> wxl_148 : WeatherLimit { doc /* WXC-233 2010 */ :>> constraintId = "WXK-051"; :>> sourceRecord = "WXC-233"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception (c)(2)"; }
    part <'WXL-149'> wxl_149 : WeatherLimit { doc /* WXC-234 2010 */ :>> constraintId = "WXK-052"; :>> sourceRecord = "WXC-234"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ-km"; :>> ruleCondition = "exception (c)(2): at every point within 1 nmi of the flight path (also written +"; }
    part <'WXL-150'> wxl_150 : WeatherLimit { doc /* WXC-238 2010 */ :>> constraintId = "WXK-053"; :>> sourceRecord = "WXC-238"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception (d)(2): portion within 5 nmi of the flight path entirely at altitudes "; }
    part <'WXL-151'> wxl_151 : WeatherLimit { doc /* WXC-239 2010 */ :>> constraintId = "WXK-054"; :>> sourceRecord = "WXC-239"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception (d)(2)"; }
    part <'WXL-152'> wxl_152 : WeatherLimit { doc /* WXC-240 2010 */ :>> constraintId = "WXK-055"; :>> sourceRecord = "WXC-240"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ-km"; :>> ruleCondition = "exception (d)(2): everywhere along the flight path (also written +33 dBZ-kft)"; }
    part <'WXL-153'> wxl_153 : WeatherLimit { doc /* WXC-241 2010 */ :>> constraintId = "WXK-057"; :>> sourceRecord = "WXC-241"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitValueHigh = 3.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "debris cloud; 3 hours after observed detached or after formed by collapse of par"; }
    part <'WXL-154'> wxl_154 : WeatherLimit { doc /* WXC-243 2010 */ :>> constraintId = "WXK-056"; :>> sourceRecord = "WXC-243"; :>> rulebookEdition = "2010"; :>> limitValue = -10.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "debris cloud observed to have formed by the collapse of the parent cloud top to "; }
    part <'WXL-155'> wxl_155 : WeatherLimit { doc /* WXC-245 2010 */ :>> constraintId = "WXK-058"; :>> sourceRecord = "WXC-245"; :>> rulebookEdition = "2010"; :>> limitValue = 1000.0; :>> limitUnit = "V/m"; :>> ruleCondition = "exception (a)(1): absolute values of all measurements within 5 nmi of the flight"; }
    part <'WXL-156'> wxl_156 : WeatherLimit { doc /* WXC-248 2010 */ :>> constraintId = "WXK-059"; :>> sourceRecord = "WXC-248"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ"; :>> ruleCondition = "exception (a)(1): has been below this value for 15 minutes or longer"; }
    part <'WXL-157'> wxl_157 : WeatherLimit { doc /* WXC-251 2010 */ :>> constraintId = "WXK-060"; :>> sourceRecord = "WXC-251"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exception (a)(2): portion within 5 nmi of the flight path entirely at altitudes "; }
    part <'WXL-158'> wxl_158 : WeatherLimit { doc /* WXC-252 2010 */ :>> constraintId = "WXK-061"; :>> sourceRecord = "WXC-252"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "exception (a)(2)"; }
    part <'WXL-159'> wxl_159 : WeatherLimit { doc /* WXC-253 2010 */ :>> constraintId = "WXK-062"; :>> sourceRecord = "WXC-253"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ-km"; :>> ruleCondition = "exception (a)(2): at every point within 1 nmi of the flight path (also written +"; }
    part <'WXL-160'> wxl_160 : WeatherLimit { doc /* WXC-255 2010 */ :>> constraintId = "WXK-063"; :>> sourceRecord = "WXC-255"; :>> rulebookEdition = "2010"; :>> limitValue = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "condition (b)(1): flight through a debris cloud during the 3-hour period; portio"; }
    part <'WXL-161'> wxl_161 : WeatherLimit { doc /* WXC-256 2010 */ :>> constraintId = "WXK-064"; :>> sourceRecord = "WXC-256"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "condition (b)(1)"; }
    part <'WXL-162'> wxl_162 : WeatherLimit { doc /* WXC-257 2010 */ :>> constraintId = "WXK-065"; :>> sourceRecord = "WXC-257"; :>> rulebookEdition = "2010"; :>> limitValue = 10.0; :>> limitUnit = "dBZ-km"; :>> ruleCondition = "condition (b)(2): everywhere along the flight path (also written +33 dBZ-kft)"; }
    part <'WXL-163'> wxl_163 : WeatherLimit { doc /* WXC-260 2010 */ :>> constraintId = "WXK-066"; :>> sourceRecord = "WXC-260"; :>> rulebookEdition = "2010"; :>> limitValue = 4500.0; :>> limitUnit = "feet"; :>> ruleCondition = "cloud layer with any part along the flight path at a temperature between 0 and -"; }
    part <'WXL-164'> wxl_164 : WeatherLimit { doc /* WXC-261 2010 */ :>> constraintId = "WXK-067"; :>> sourceRecord = "WXC-261"; :>> rulebookEdition = "2010"; :>> limitValue = -20.0; :>> limitValueHigh = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "applicability band of the thick-layer prohibition"; }
    part <'WXL-165'> wxl_165 : WeatherLimit { doc /* WXC-262 2010 */ :>> constraintId = "WXK-068"; :>> sourceRecord = "WXC-262"; :>> rulebookEdition = "2010"; :>> limitValue = 4500.0; :>> limitUnit = "feet"; :>> ruleCondition = "layer connected to a thick cloud layer within 5 nmi of the flight path, any part"; }
    part <'WXL-166'> wxl_166 : WeatherLimit { doc /* WXC-263 2010 */ :>> constraintId = "WXK-070"; :>> sourceRecord = "WXC-263"; :>> rulebookEdition = "2010"; :>> limitValue = 5.0; :>> limitUnit = "nautical miles"; :>> ruleCondition = "connected thick cloud layer"; }
    part <'WXL-167'> wxl_167 : WeatherLimit { doc /* WXC-264 2010 */ :>> constraintId = "WXK-069"; :>> sourceRecord = "WXC-264"; :>> rulebookEdition = "2010"; :>> limitValue = -20.0; :>> limitValueHigh = 0.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "applicability band of the connected-layer prohibition"; }
    part <'WXL-168'> wxl_168 : WeatherLimit { doc /* WXC-265 2010 */ :>> constraintId = "WXK-071"; :>> sourceRecord = "WXC-265"; :>> rulebookEdition = "2010"; :>> limitValue = -15.0; :>> limitUnit = "degrees Celsius"; :>> ruleCondition = "exemption: cirriform layer never associated with convective clouds, located enti"; }
}
