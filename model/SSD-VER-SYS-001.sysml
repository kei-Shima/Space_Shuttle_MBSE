// SysML v2 テキスト：検証ケースと検証の結果
// SSD-VER-SYS-001 検証定義書（検証ケース・検証マトリクス） の表から生成（lib/build_docs_al.py）。検証の根拠の頁は SSD-VER-SYS-001 と各要求書にある。
package SSD_VER_SYS_001 {
    doc /* SSD-VER-SYS-001 検証定義書（検証ケース・検証マトリクス）。要求1件に検証ケース1つ。要求モデル SSD_RQM_SYS_001 と構造モデル SSD_BLK_SYS_001 を読み込んでから読む。 */
    private import SSD_RQM_SYS_001::*;
    private import VerificationCases::*;
    // ---- 検証ケース（要求ごと）
    verification def <'VC-REQ-SYS-01'> VC_REQ_SYS_01 {
        doc /* REQ-SYS-01 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-02'> VC_REQ_SYS_02 {
        doc /* REQ-SYS-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-03'> VC_REQ_SYS_03 {
        doc /* REQ-SYS-03 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-04'> VC_REQ_SYS_04 {
        doc /* REQ-SYS-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-05'> VC_REQ_SYS_05 {
        doc /* REQ-SYS-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-06'> VC_REQ_SYS_06 {
        doc /* REQ-SYS-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-07'> VC_REQ_SYS_07 {
        doc /* REQ-SYS-07 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-08'> VC_REQ_SYS_08 {
        doc /* REQ-SYS-08 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-09'> VC_REQ_SYS_09 {
        doc /* REQ-SYS-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-10'> VC_REQ_SYS_10 {
        doc /* REQ-SYS-10 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-11'> VC_REQ_SYS_11 {
        doc /* REQ-SYS-11 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_11; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-12'> VC_REQ_SYS_12 {
        doc /* REQ-SYS-12 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_12; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-13'> VC_REQ_SYS_13 {
        doc /* REQ-SYS-13 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_13; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-14'> VC_REQ_SYS_14 {
        doc /* REQ-SYS-14 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_14; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-15'> VC_REQ_SYS_15 {
        doc /* REQ-SYS-15 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_15; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-16'> VC_REQ_SYS_16 {
        doc /* REQ-SYS-16 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_16; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-17'> VC_REQ_SYS_17 {
        doc /* REQ-SYS-17 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_17; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SYS-18'> VC_REQ_SYS_18 {
        doc /* REQ-SYS-18 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_SYS::REQ_SYS_18; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-01'> VC_REQ_EPS_01 {
        doc /* REQ-EPS-01 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-02'> VC_REQ_EPS_02 {
        doc /* REQ-EPS-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-03'> VC_REQ_EPS_03 {
        doc /* REQ-EPS-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-04'> VC_REQ_EPS_04 {
        doc /* REQ-EPS-04 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-05'> VC_REQ_EPS_05 {
        doc /* REQ-EPS-05 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-06'> VC_REQ_EPS_06 {
        doc /* REQ-EPS-06 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-07'> VC_REQ_EPS_07 {
        doc /* REQ-EPS-07 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-08'> VC_REQ_EPS_08 {
        doc /* REQ-EPS-08 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-09'> VC_REQ_EPS_09 {
        doc /* REQ-EPS-09 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-10'> VC_REQ_EPS_10 {
        doc /* REQ-EPS-10 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-11'> VC_REQ_EPS_11 {
        doc /* REQ-EPS-11 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_11; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-12'> VC_REQ_EPS_12 {
        doc /* REQ-EPS-12 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_12; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-13'> VC_REQ_EPS_13 {
        doc /* REQ-EPS-13 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_13; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-14'> VC_REQ_EPS_14 {
        doc /* REQ-EPS-14 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_14; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-15'> VC_REQ_EPS_15 {
        doc /* REQ-EPS-15 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_15; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-16'> VC_REQ_EPS_16 {
        doc /* REQ-EPS-16 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_16; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-17'> VC_REQ_EPS_17 {
        doc /* REQ-EPS-17 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_17; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-18'> VC_REQ_EPS_18 {
        doc /* REQ-EPS-18 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_18; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-19'> VC_REQ_EPS_19 {
        doc /* REQ-EPS-19 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_19; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-20'> VC_REQ_EPS_20 {
        doc /* REQ-EPS-20 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_20; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-21'> VC_REQ_EPS_21 {
        doc /* REQ-EPS-21 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_21; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EPS-22'> VC_REQ_EPS_22 {
        doc /* REQ-EPS-22 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_EPS::REQ_EPS_22; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-01'> VC_REQ_ECLSS_01 {
        doc /* REQ-ECLSS-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-02'> VC_REQ_ECLSS_02 {
        doc /* REQ-ECLSS-02 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-03'> VC_REQ_ECLSS_03 {
        doc /* REQ-ECLSS-03 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-04'> VC_REQ_ECLSS_04 {
        doc /* REQ-ECLSS-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-05'> VC_REQ_ECLSS_05 {
        doc /* REQ-ECLSS-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-06'> VC_REQ_ECLSS_06 {
        doc /* REQ-ECLSS-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-07'> VC_REQ_ECLSS_07 {
        doc /* REQ-ECLSS-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-08'> VC_REQ_ECLSS_08 {
        doc /* REQ-ECLSS-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-09'> VC_REQ_ECLSS_09 {
        doc /* REQ-ECLSS-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-10'> VC_REQ_ECLSS_10 {
        doc /* REQ-ECLSS-10 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-11'> VC_REQ_ECLSS_11 {
        doc /* REQ-ECLSS-11 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_11; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-12'> VC_REQ_ECLSS_12 {
        doc /* REQ-ECLSS-12 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_12; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ECLSS-13'> VC_REQ_ECLSS_13 {
        doc /* REQ-ECLSS-13 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ECLSS::REQ_ECLSS_13; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-01'> VC_REQ_GNC_01 {
        doc /* REQ-GNC-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-02'> VC_REQ_GNC_02 {
        doc /* REQ-GNC-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-03'> VC_REQ_GNC_03 {
        doc /* REQ-GNC-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-04'> VC_REQ_GNC_04 {
        doc /* REQ-GNC-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-05'> VC_REQ_GNC_05 {
        doc /* REQ-GNC-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-06'> VC_REQ_GNC_06 {
        doc /* REQ-GNC-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-07'> VC_REQ_GNC_07 {
        doc /* REQ-GNC-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-08'> VC_REQ_GNC_08 {
        doc /* REQ-GNC-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-09'> VC_REQ_GNC_09 {
        doc /* REQ-GNC-09 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-10'> VC_REQ_GNC_10 {
        doc /* REQ-GNC-10 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-11'> VC_REQ_GNC_11 {
        doc /* REQ-GNC-11 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_11; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-12'> VC_REQ_GNC_12 {
        doc /* REQ-GNC-12 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_12; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-13'> VC_REQ_GNC_13 {
        doc /* REQ-GNC-13 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_13; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-GNC-14'> VC_REQ_GNC_14 {
        doc /* REQ-GNC-14 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_GNC::REQ_GNC_14; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-01'> VC_REQ_DPS_01 {
        doc /* REQ-DPS-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-02'> VC_REQ_DPS_02 {
        doc /* REQ-DPS-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-03'> VC_REQ_DPS_03 {
        doc /* REQ-DPS-03 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-04'> VC_REQ_DPS_04 {
        doc /* REQ-DPS-04 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-05'> VC_REQ_DPS_05 {
        doc /* REQ-DPS-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-06'> VC_REQ_DPS_06 {
        doc /* REQ-DPS-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-07'> VC_REQ_DPS_07 {
        doc /* REQ-DPS-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-08'> VC_REQ_DPS_08 {
        doc /* REQ-DPS-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-09'> VC_REQ_DPS_09 {
        doc /* REQ-DPS-09 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-10'> VC_REQ_DPS_10 {
        doc /* REQ-DPS-10 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-11'> VC_REQ_DPS_11 {
        doc /* REQ-DPS-11 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_11; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-12'> VC_REQ_DPS_12 {
        doc /* REQ-DPS-12 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_12; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-DPS-13'> VC_REQ_DPS_13 {
        doc /* REQ-DPS-13 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_DPS::REQ_DPS_13; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-01'> VC_REQ_MPS_01 {
        doc /* REQ-MPS-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-02'> VC_REQ_MPS_02 {
        doc /* REQ-MPS-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-03'> VC_REQ_MPS_03 {
        doc /* REQ-MPS-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-04'> VC_REQ_MPS_04 {
        doc /* REQ-MPS-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-05'> VC_REQ_MPS_05 {
        doc /* REQ-MPS-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-06'> VC_REQ_MPS_06 {
        doc /* REQ-MPS-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-07'> VC_REQ_MPS_07 {
        doc /* REQ-MPS-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-08'> VC_REQ_MPS_08 {
        doc /* REQ-MPS-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-09'> VC_REQ_MPS_09 {
        doc /* REQ-MPS-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-10'> VC_REQ_MPS_10 {
        doc /* REQ-MPS-10 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-11'> VC_REQ_MPS_11 {
        doc /* REQ-MPS-11 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_11; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-12'> VC_REQ_MPS_12 {
        doc /* REQ-MPS-12 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_12; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MPS-13'> VC_REQ_MPS_13 {
        doc /* REQ-MPS-13 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_MPS::REQ_MPS_13; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-01'> VC_REQ_OMS_01 {
        doc /* REQ-OMS-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-02'> VC_REQ_OMS_02 {
        doc /* REQ-OMS-02 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-03'> VC_REQ_OMS_03 {
        doc /* REQ-OMS-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-04'> VC_REQ_OMS_04 {
        doc /* REQ-OMS-04 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-05'> VC_REQ_OMS_05 {
        doc /* REQ-OMS-05 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-06'> VC_REQ_OMS_06 {
        doc /* REQ-OMS-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-07'> VC_REQ_OMS_07 {
        doc /* REQ-OMS-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-08'> VC_REQ_OMS_08 {
        doc /* REQ-OMS-08 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-09'> VC_REQ_OMS_09 {
        doc /* REQ-OMS-09 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-10'> VC_REQ_OMS_10 {
        doc /* REQ-OMS-10 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-OMS-11'> VC_REQ_OMS_11 {
        doc /* REQ-OMS-11 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_OMS::REQ_OMS_11; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-01'> VC_REQ_RCS_01 {
        doc /* REQ-RCS-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-02'> VC_REQ_RCS_02 {
        doc /* REQ-RCS-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-03'> VC_REQ_RCS_03 {
        doc /* REQ-RCS-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-04'> VC_REQ_RCS_04 {
        doc /* REQ-RCS-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-05'> VC_REQ_RCS_05 {
        doc /* REQ-RCS-05 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-06'> VC_REQ_RCS_06 {
        doc /* REQ-RCS-06 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-07'> VC_REQ_RCS_07 {
        doc /* REQ-RCS-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-08'> VC_REQ_RCS_08 {
        doc /* REQ-RCS-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-09'> VC_REQ_RCS_09 {
        doc /* REQ-RCS-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-RCS-10'> VC_REQ_RCS_10 {
        doc /* REQ-RCS-10 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_RCS::REQ_RCS_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-01'> VC_REQ_APU_01 {
        doc /* REQ-APU-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-02'> VC_REQ_APU_02 {
        doc /* REQ-APU-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-03'> VC_REQ_APU_03 {
        doc /* REQ-APU-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-04'> VC_REQ_APU_04 {
        doc /* REQ-APU-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-05'> VC_REQ_APU_05 {
        doc /* REQ-APU-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-06'> VC_REQ_APU_06 {
        doc /* REQ-APU-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-07'> VC_REQ_APU_07 {
        doc /* REQ-APU-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-08'> VC_REQ_APU_08 {
        doc /* REQ-APU-08 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-APU-09'> VC_REQ_APU_09 {
        doc /* REQ-APU-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_APU::REQ_APU_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-01'> VC_REQ_CT_01 {
        doc /* REQ-CT-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-02'> VC_REQ_CT_02 {
        doc /* REQ-CT-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-03'> VC_REQ_CT_03 {
        doc /* REQ-CT-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-04'> VC_REQ_CT_04 {
        doc /* REQ-CT-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-05'> VC_REQ_CT_05 {
        doc /* REQ-CT-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-06'> VC_REQ_CT_06 {
        doc /* REQ-CT-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-07'> VC_REQ_CT_07 {
        doc /* REQ-CT-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-08'> VC_REQ_CT_08 {
        doc /* REQ-CT-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CT-09'> VC_REQ_CT_09 {
        doc /* REQ-CT-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CT::REQ_CT_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-TPS-01'> VC_REQ_TPS_01 {
        doc /* REQ-TPS-01 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_TPS::REQ_TPS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-TPS-02'> VC_REQ_TPS_02 {
        doc /* REQ-TPS-02 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_TPS::REQ_TPS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-TPS-03'> VC_REQ_TPS_03 {
        doc /* REQ-TPS-03 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_TPS::REQ_TPS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-TPS-04'> VC_REQ_TPS_04 {
        doc /* REQ-TPS-04 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_TPS::REQ_TPS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-TPS-05'> VC_REQ_TPS_05 {
        doc /* REQ-TPS-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_TPS::REQ_TPS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-TPS-06'> VC_REQ_TPS_06 {
        doc /* REQ-TPS-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_TPS::REQ_TPS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-TPS-07'> VC_REQ_TPS_07 {
        doc /* REQ-TPS-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_TPS::REQ_TPS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-01'> VC_REQ_CW_01 {
        doc /* REQ-CW-01 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-02'> VC_REQ_CW_02 {
        doc /* REQ-CW-02 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-03'> VC_REQ_CW_03 {
        doc /* REQ-CW-03 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-04'> VC_REQ_CW_04 {
        doc /* REQ-CW-04 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-05'> VC_REQ_CW_05 {
        doc /* REQ-CW-05 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-06'> VC_REQ_CW_06 {
        doc /* REQ-CW-06 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-07'> VC_REQ_CW_07 {
        doc /* REQ-CW-07 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-08'> VC_REQ_CW_08 {
        doc /* REQ-CW-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-09'> VC_REQ_CW_09 {
        doc /* REQ-CW-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CW-10'> VC_REQ_CW_10 {
        doc /* REQ-CW-10 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CW::REQ_CW_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-01'> VC_REQ_CREW_01 {
        doc /* REQ-CREW-01 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-02'> VC_REQ_CREW_02 {
        doc /* REQ-CREW-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-03'> VC_REQ_CREW_03 {
        doc /* REQ-CREW-03 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-04'> VC_REQ_CREW_04 {
        doc /* REQ-CREW-04 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-05'> VC_REQ_CREW_05 {
        doc /* REQ-CREW-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-06'> VC_REQ_CREW_06 {
        doc /* REQ-CREW-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-07'> VC_REQ_CREW_07 {
        doc /* REQ-CREW-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-08'> VC_REQ_CREW_08 {
        doc /* REQ-CREW-08 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-09'> VC_REQ_CREW_09 {
        doc /* REQ-CREW-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-CREW-10'> VC_REQ_CREW_10 {
        doc /* REQ-CREW-10 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_CREW::REQ_CREW_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-01'> VC_REQ_EVA_01 {
        doc /* REQ-EVA-01 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-02'> VC_REQ_EVA_02 {
        doc /* REQ-EVA-02 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-03'> VC_REQ_EVA_03 {
        doc /* REQ-EVA-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-04'> VC_REQ_EVA_04 {
        doc /* REQ-EVA-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-05'> VC_REQ_EVA_05 {
        doc /* REQ-EVA-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-06'> VC_REQ_EVA_06 {
        doc /* REQ-EVA-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-07'> VC_REQ_EVA_07 {
        doc /* REQ-EVA-07 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-EVA-08'> VC_REQ_EVA_08 {
        doc /* REQ-EVA-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_EVA::REQ_EVA_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-01'> VC_REQ_PLS_01 {
        doc /* REQ-PLS-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-02'> VC_REQ_PLS_02 {
        doc /* REQ-PLS-02 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-03'> VC_REQ_PLS_03 {
        doc /* REQ-PLS-03 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-04'> VC_REQ_PLS_04 {
        doc /* REQ-PLS-04 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-05'> VC_REQ_PLS_05 {
        doc /* REQ-PLS-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-06'> VC_REQ_PLS_06 {
        doc /* REQ-PLS-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-07'> VC_REQ_PLS_07 {
        doc /* REQ-PLS-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-08'> VC_REQ_PLS_08 {
        doc /* REQ-PLS-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-PLS-09'> VC_REQ_PLS_09 {
        doc /* REQ-PLS-09 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_PLS::REQ_PLS_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-01'> VC_REQ_MECH_01 {
        doc /* REQ-MECH-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-02'> VC_REQ_MECH_02 {
        doc /* REQ-MECH-02 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-03'> VC_REQ_MECH_03 {
        doc /* REQ-MECH-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-04'> VC_REQ_MECH_04 {
        doc /* REQ-MECH-04 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-05'> VC_REQ_MECH_05 {
        doc /* REQ-MECH-05 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-06'> VC_REQ_MECH_06 {
        doc /* REQ-MECH-06 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-07'> VC_REQ_MECH_07 {
        doc /* REQ-MECH-07 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-08'> VC_REQ_MECH_08 {
        doc /* REQ-MECH-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-09'> VC_REQ_MECH_09 {
        doc /* REQ-MECH-09 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-MECH-10'> VC_REQ_MECH_10 {
        doc /* REQ-MECH-10 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_MECH::REQ_MECH_10; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-01'> VC_REQ_STR_01 {
        doc /* REQ-STR-01 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-02'> VC_REQ_STR_02 {
        doc /* REQ-STR-02 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-03'> VC_REQ_STR_03 {
        doc /* REQ-STR-03 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-04'> VC_REQ_STR_04 {
        doc /* REQ-STR-04 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-05'> VC_REQ_STR_05 {
        doc /* REQ-STR-05 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-06'> VC_REQ_STR_06 {
        doc /* REQ-STR-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-07'> VC_REQ_STR_07 {
        doc /* REQ-STR-07 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-STR-08'> VC_REQ_STR_08 {
        doc /* REQ-STR-08 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_STR::REQ_STR_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-01'> VC_REQ_ET_01 {
        doc /* REQ-ET-01 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-02'> VC_REQ_ET_02 {
        doc /* REQ-ET-02 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-03'> VC_REQ_ET_03 {
        doc /* REQ-ET-03 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-04'> VC_REQ_ET_04 {
        doc /* REQ-ET-04 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-05'> VC_REQ_ET_05 {
        doc /* REQ-ET-05 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-06'> VC_REQ_ET_06 {
        doc /* REQ-ET-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-07'> VC_REQ_ET_07 {
        doc /* REQ-ET-07 をI（検査）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::inspect; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-08'> VC_REQ_ET_08 {
        doc /* REQ-ET-08 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-ET-09'> VC_REQ_ET_09 {
        doc /* REQ-ET-09 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_ET::REQ_ET_09; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-01'> VC_REQ_SRB_01 {
        doc /* REQ-SRB-01 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_01; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-02'> VC_REQ_SRB_02 {
        doc /* REQ-SRB-02 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_02; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-03'> VC_REQ_SRB_03 {
        doc /* REQ-SRB-03 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_03; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-04'> VC_REQ_SRB_04 {
        doc /* REQ-SRB-04 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_04; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-05'> VC_REQ_SRB_05 {
        doc /* REQ-SRB-05 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_05; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-06'> VC_REQ_SRB_06 {
        doc /* REQ-SRB-06 をA（解析）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::analyze; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_06; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-07'> VC_REQ_SRB_07 {
        doc /* REQ-SRB-07 をT（試験）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::test; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_07; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-08'> VC_REQ_SRB_08 {
        doc /* REQ-SRB-08 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_08; }
        return verdict : VerdictKind;
    }
    verification def <'VC-REQ-SRB-09'> VC_REQ_SRB_09 {
        doc /* REQ-SRB-09 をD（実証）で確かめる。 */
        @VerificationMethod { kind = VerificationMethodKind::demo; }
        subject s : Parts::Part;
        objective { verify REQ_SRB::REQ_SRB_09; }
        return verdict : VerdictKind;
    }
    // ---- 検証の結果（主体＝要求を充足する部品・インタフェース、判定＝検証の根拠の状態）
    package Results {
        verification vc_req_sys_01 : VC_REQ_SYS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_02 : VC_REQ_SYS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_03 : VC_REQ_SYS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_sys_04 : VC_REQ_SYS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_05 : VC_REQ_SYS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_sys_06 : VC_REQ_SYS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_07 : VC_REQ_SYS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_08 : VC_REQ_SYS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_09 : VC_REQ_SYS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_10 : VC_REQ_SYS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_11 : VC_REQ_SYS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_12 : VC_REQ_SYS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_13 : VC_REQ_SYS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_14 : VC_REQ_SYS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_15 : VC_REQ_SYS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_16 : VC_REQ_SYS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_17 : VC_REQ_SYS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_sys_18 : VC_REQ_SYS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_01 : VC_REQ_EPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_02 : VC_REQ_EPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_03 : VC_REQ_EPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_04 : VC_REQ_EPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_05 : VC_REQ_EPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_06 : VC_REQ_EPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_07 : VC_REQ_EPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_08 : VC_REQ_EPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_09 : VC_REQ_EPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_10 : VC_REQ_EPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_11 : VC_REQ_EPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_12 : VC_REQ_EPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_13 : VC_REQ_EPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_14 : VC_REQ_EPS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_15 : VC_REQ_EPS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_16 : VC_REQ_EPS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_17 : VC_REQ_EPS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_18 : VC_REQ_EPS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_19 : VC_REQ_EPS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_20 : VC_REQ_EPS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_21 : VC_REQ_EPS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eps_22 : VC_REQ_EPS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_01 : VC_REQ_ECLSS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_02 : VC_REQ_ECLSS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_03 : VC_REQ_ECLSS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_04 : VC_REQ_ECLSS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_05 : VC_REQ_ECLSS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_06 : VC_REQ_ECLSS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_07 : VC_REQ_ECLSS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_08 : VC_REQ_ECLSS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_09 : VC_REQ_ECLSS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_10 : VC_REQ_ECLSS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_11 : VC_REQ_ECLSS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eclss_12 : VC_REQ_ECLSS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_eclss_13 : VC_REQ_ECLSS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_01 : VC_REQ_GNC_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ins;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_02 : VC_REQ_GNC_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ins;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_03 : VC_REQ_GNC_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_04 : VC_REQ_GNC_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_05 : VC_REQ_GNC_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_06 : VC_REQ_GNC_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_07 : VC_REQ_GNC_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_08 : VC_REQ_GNC_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.fcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_09 : VC_REQ_GNC_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.fcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_10 : VC_REQ_GNC_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_11 : VC_REQ_GNC_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_12 : VC_REQ_GNC_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ccd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_13 : VC_REQ_GNC_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_gnc_14 : VC_REQ_GNC_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_01 : VC_REQ_DPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_02 : VC_REQ_DPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_03 : VC_REQ_DPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_04 : VC_REQ_DPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.fsw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_05 : VC_REQ_DPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.fsw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_06 : VC_REQ_DPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.bus;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_07 : VC_REQ_DPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.bus;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_08 : VC_REQ_DPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.asc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_09 : VC_REQ_DPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.asc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_10 : VC_REQ_DPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.meds;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_11 : VC_REQ_DPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.mtu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_12 : VC_REQ_DPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_dps_13 : VC_REQ_DPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_01 : VC_REQ_MPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_02 : VC_REQ_MPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_03 : VC_REQ_MPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_04 : VC_REQ_MPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_05 : VC_REQ_MPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_06 : VC_REQ_MPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_07 : VC_REQ_MPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_08 : VC_REQ_MPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_09 : VC_REQ_MPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_10 : VC_REQ_MPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.dmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_11 : VC_REQ_MPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_12 : VC_REQ_MPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mps_13 : VC_REQ_MPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_01 : VC_REQ_OMS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.eng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_02 : VC_REQ_OMS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.eng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_03 : VC_REQ_OMS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.eng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_04 : VC_REQ_OMS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_05 : VC_REQ_OMS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_06 : VC_REQ_OMS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_07 : VC_REQ_OMS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_08 : VC_REQ_OMS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_09 : VC_REQ_OMS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.thm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_10 : VC_REQ_OMS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_oms_11 : VC_REQ_OMS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_01 : VC_REQ_RCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.hep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_02 : VC_REQ_RCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.prp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_03 : VC_REQ_RCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.prp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_04 : VC_REQ_RCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.jet;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_05 : VC_REQ_RCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.jet;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_06 : VC_REQ_RCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rjd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_07 : VC_REQ_RCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_08 : VC_REQ_RCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_09 : VC_REQ_RCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_rcs_10 : VC_REQ_RCS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_01 : VC_REQ_APU_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ful;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_02 : VC_REQ_APU_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ful;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_03 : VC_REQ_APU_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_04 : VC_REQ_APU_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_05 : VC_REQ_APU_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.hyd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_06 : VC_REQ_APU_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.cir;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_07 : VC_REQ_APU_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.wsb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_08 : VC_REQ_APU_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_apu_09 : VC_REQ_APU_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_01 : VC_REQ_CT_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.sbd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_02 : VC_REQ_CT_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.sbd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_03 : VC_REQ_CT_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_04 : VC_REQ_CT_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_05 : VC_REQ_CT_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.uhf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_06 : VC_REQ_CT_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.aud;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_07 : VC_REQ_CT_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.cctv;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_08 : VC_REQ_CT_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.inst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ct_09 : VC_REQ_CT_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_tps_01 : VC_REQ_TPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_tps_02 : VC_REQ_TPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_tps_03 : VC_REQ_TPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_tps_04 : VC_REQ_TPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_tps_05 : VC_REQ_TPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs.ptc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_tps_06 : VC_REQ_TPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs.ptc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_tps_07 : VC_REQ_TPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_01 : VC_REQ_CW_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.pri;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_02 : VC_REQ_CW_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.pri;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_03 : VC_REQ_CW_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.bkp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_04 : VC_REQ_CW_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.alt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_05 : VC_REQ_CW_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.alt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_06 : VC_REQ_CW_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ann;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_07 : VC_REQ_CW_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ann;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_08 : VC_REQ_CW_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_09 : VC_REQ_CW_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_cw_10 : VC_REQ_CW_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_01 : VC_REQ_CREW_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_02 : VC_REQ_CREW_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_03 : VC_REQ_CREW_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_04 : VC_REQ_CREW_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.stw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_05 : VC_REQ_CREW_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.med;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_06 : VC_REQ_CREW_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.med;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_07 : VC_REQ_CREW_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ltg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_08 : VC_REQ_CREW_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_09 : VC_REQ_CREW_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_crew_10 : VC_REQ_CREW_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_01 : VC_REQ_EVA_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_02 : VC_REQ_EVA_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_03 : VC_REQ_EVA_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.dpr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_04 : VC_REQ_EVA_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_05 : VC_REQ_EVA_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.mnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_06 : VC_REQ_EVA_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_07 : VC_REQ_EVA_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_eva_08 : VC_REQ_EVA_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_01 : VC_REQ_PLS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.arm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_02 : VC_REQ_PLS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.arm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_03 : VC_REQ_PLS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_04 : VC_REQ_PLS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_05 : VC_REQ_PLS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.mpm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_06 : VC_REQ_PLS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.prl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_07 : VC_REQ_PLS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ods;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_08 : VC_REQ_PLS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pls_09 : VC_REQ_PLS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_01 : VC_REQ_MECH_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_02 : VC_REQ_MECH_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_03 : VC_REQ_MECH_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.plb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_04 : VC_REQ_MECH_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_05 : VC_REQ_MECH_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.vnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_06 : VC_REQ_MECH_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.vnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_07 : VC_REQ_MECH_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ldg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_08 : VC_REQ_MECH_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.dec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_09 : VC_REQ_MECH_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.dec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_mech_10 : VC_REQ_MECH_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_01 : VC_REQ_STR_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.fwd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_02 : VC_REQ_STR_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.fwd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_03 : VC_REQ_STR_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_04 : VC_REQ_STR_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_05 : VC_REQ_STR_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.mid;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_06 : VC_REQ_STR_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.aft;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_07 : VC_REQ_STR_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_str_08 : VC_REQ_STR_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_01 : VC_REQ_ET_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_02 : VC_REQ_ET_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_03 : VC_REQ_ET_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lh2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_04 : VC_REQ_ET_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_05 : VC_REQ_ET_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.umb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_06 : VC_REQ_ET_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.umb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_07 : VC_REQ_ET_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_08 : VC_REQ_ET_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_et_09 : VC_REQ_ET_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_01 : VC_REQ_SRB_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_02 : VC_REQ_SRB_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_03 : VC_REQ_SRB_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_04 : VC_REQ_SRB_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_05 : VC_REQ_SRB_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_06 : VC_REQ_SRB_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_07 : VC_REQ_SRB_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_08 : VC_REQ_SRB_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.att;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_srb_09 : VC_REQ_SRB_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.rec;
            return :>> verdict = VerdictKind::pass;
        }
    }
}
