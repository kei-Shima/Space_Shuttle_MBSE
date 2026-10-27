// SysML v2 テキスト：ミッション類型と運用概念定義書（飛行の類型・飛行ごとの目的・ユースケースとキットの対応・運用概念の章立てとの対応）
// SSD-MTY-ORB-001 ミッション類型と運用概念定義書（飛行の類型・飛行ごとの目的・ユースケースとキットの対応・運用概念の章立てとの対応） の表から生成（lib/build_docs_cv.py・rev_cv/cvdata.py）。根拠の頁は SSD-MTY-ORB-001 にある。
package SSD_MTY_ORB_001 {
    doc /* SSD-MTY-ORB-001 ミッション類型と運用概念定義書（飛行の類型・飛行ごとの目的・ユースケースとキットの対応・運用概念の章立てとの対応）。ミッション類型を part def MissionType の使用、飛行ごとの目的の記録を part def MissionFlight の使用として持つ。類型・飛行は文字列の属性で、パッケージへの矢印は張らない。要求への関係（導出・充足・検証）は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    part def MissionType {
        doc /* ミッション類型（本書の判断。PLAN_CV 追記1） */
        attribute typeName : String;
        attribute definition : String;
    }
    part def MissionFlight {
        doc /* 飛行ごとの目的の記録。Mission Report 本文の目的の文。類型は本書の判断 */
        attribute flight : String;
        attribute primaryType : String;
        attribute secondaryTypes : String;
        attribute basisRule : String;
    }
    part <'MT-01'> mt_01 : MissionType { doc /* 軌道上の実験室 */ :>> typeName = "軌道上の実験室"; :>> definition = "与圧モジュール（Spacelab・SPACEHAB・IML など、乗員が中に入って作業する）での科学・マイクロ重力実験が主な飛行"; }
    part <'MT-02'> mt_02 : MissionType { doc /* 衛星・上段・探査機の放出 */ :>> typeName = "衛星・上段・探査機の放出"; :>> definition = "通信・科学・探査の衛星や上段（IUS・PAM など）を放出する飛行"; }
    part <'MT-03'> mt_03 : MissionType { doc /* 軌道上の回収・整備 */ :>> typeName = "軌道上の回収・整備"; :>> definition = "前の飛行で軌道に出ていた機体（HST の整備、LDEF・SMM・Palapa B-2・Westar VI・Intelsat VI・EURECA・SFU の回収など）を扱う飛行"; }
    part <'MT-04'> mt_04 : MissionType { doc /* ISS の組立・補給・乗員交代 */ :>> typeName = "ISS の組立・補給・乗員交代"; :>> definition = "ISS に結合して構成要素の取付け・補給・乗員交代を行う飛行"; }
    part <'MT-05'> mt_05 : MissionType { doc /* Mir との結合・ランデブ */ :>> typeName = "Mir との結合・ランデブ"; :>> definition = "Mir とのランデブまたは結合を行う飛行（STS-63 はランデブのみ）"; }
    part <'MT-06'> mt_06 : MissionType { doc /* 国防総省の飛行 */ :>> typeName = "国防総省の飛行"; :>> definition = "本文が国防総省（DoD）の飛行・ペイロードと書く飛行"; }
    part <'MT-07'> mt_07 : MissionType { doc /* 地球観測・科学のパレット */ :>> typeName = "地球観測・科学のパレット"; :>> definition = "パレットや搭載の観測装置、同じ飛行の中で放出・回収するフリーフライヤによる観測・科学（レーダ・大気観測・天文・TSS・SPARTAN・WSF など）"; }
    part <'MT-08'> mt_08 : MissionType { doc /* 試験飛行・開発飛行 */ :>> typeName = "試験飛行・開発飛行"; :>> definition = "primary は本文が軌道飛行試験（OFT）を目的として書く飛行（STS-1〜4）だけ。secondary には、飛行中の試験・実証（EVA の構造物の組立て・ランデブの実証・マニピュレータの飛行実証・飛行再開の点検など）を含む"; }
    part <'MT-09'> mt_09 : MissionType { doc /* その他・不明 */ :>> typeName = "その他・不明"; :>> definition = "本文が目的を名指ししない、または決められない飛行"; }
    part <'MTF-001'> mtf_001 : MissionFlight { doc /* STS-1 */ :>> flight = "STS-1"; :>> primaryType = "MT-08"; :>> secondaryTypes = ""; :>> basisRule = "OFT"; }
    part <'MTF-002'> mtf_002 : MissionFlight { doc /* STS-2 */ :>> flight = "STS-2"; :>> primaryType = "MT-08"; :>> secondaryTypes = "MT-07"; :>> basisRule = "OFT"; }
    part <'MTF-003'> mtf_003 : MissionFlight { doc /* STS-3 */ :>> flight = "STS-3"; :>> primaryType = "MT-08"; :>> secondaryTypes = "MT-07"; :>> basisRule = "OFT"; }
    part <'MTF-004'> mtf_004 : MissionFlight { doc /* STS-4 */ :>> flight = "STS-4"; :>> primaryType = "MT-08"; :>> secondaryTypes = "MT-06,MT-07"; :>> basisRule = "OFT"; }
    part <'MTF-005'> mtf_005 : MissionFlight { doc /* STS-5 */ :>> flight = "STS-5"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-006'> mtf_006 : MissionFlight { doc /* STS-6 */ :>> flight = "STS-6"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-007'> mtf_007 : MissionFlight { doc /* STS-7 */ :>> flight = "STS-7"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-008'> mtf_008 : MissionFlight { doc /* STS-8 */ :>> flight = "STS-8"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-009'> mtf_009 : MissionFlight { doc /* STS-9 */ :>> flight = "STS-9"; :>> primaryType = "MT-01"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-010'> mtf_010 : MissionFlight { doc /* STS-26 */ :>> flight = "STS-26"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-011'> mtf_011 : MissionFlight { doc /* STS-27 */ :>> flight = "STS-27"; :>> primaryType = "MT-06"; :>> secondaryTypes = ""; :>> basisRule = "DOD"; }
    part <'MTF-012'> mtf_012 : MissionFlight { doc /* STS-28 */ :>> flight = "STS-28"; :>> primaryType = "MT-06"; :>> secondaryTypes = ""; :>> basisRule = "DOD"; }
    part <'MTF-013'> mtf_013 : MissionFlight { doc /* STS-29 */ :>> flight = "STS-29"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-014'> mtf_014 : MissionFlight { doc /* STS-30 */ :>> flight = "STS-30"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-015'> mtf_015 : MissionFlight { doc /* STS-31 */ :>> flight = "STS-31"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-016'> mtf_016 : MissionFlight { doc /* STS-32 */ :>> flight = "STS-32"; :>> primaryType = "MT-03"; :>> secondaryTypes = "MT-02"; :>> basisRule = "PRIO"; }
    part <'MTF-017'> mtf_017 : MissionFlight { doc /* STS-33 */ :>> flight = "STS-33"; :>> primaryType = "MT-06"; :>> secondaryTypes = ""; :>> basisRule = "DOD"; }
    part <'MTF-018'> mtf_018 : MissionFlight { doc /* STS-34 */ :>> flight = "STS-34"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-019'> mtf_019 : MissionFlight { doc /* STS-35 */ :>> flight = "STS-35"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-020'> mtf_020 : MissionFlight { doc /* STS-36 */ :>> flight = "STS-36"; :>> primaryType = "MT-06"; :>> secondaryTypes = ""; :>> basisRule = "DOD"; }
    part <'MTF-021'> mtf_021 : MissionFlight { doc /* STS-37 */ :>> flight = "STS-37"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-022'> mtf_022 : MissionFlight { doc /* STS-38 */ :>> flight = "STS-38"; :>> primaryType = "MT-06"; :>> secondaryTypes = ""; :>> basisRule = "DOD"; }
    part <'MTF-023'> mtf_023 : MissionFlight { doc /* STS-39 */ :>> flight = "STS-39"; :>> primaryType = "MT-06"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-024'> mtf_024 : MissionFlight { doc /* STS-40 */ :>> flight = "STS-40"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-025'> mtf_025 : MissionFlight { doc /* STS-41 */ :>> flight = "STS-41"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-026'> mtf_026 : MissionFlight { doc /* STS-41B */ :>> flight = "STS-41B"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-08"; :>> basisRule = "P"; }
    part <'MTF-027'> mtf_027 : MissionFlight { doc /* STS-41C */ :>> flight = "STS-41C"; :>> primaryType = "MT-03"; :>> secondaryTypes = "MT-02"; :>> basisRule = "PRIO"; }
    part <'MTF-028'> mtf_028 : MissionFlight { doc /* STS-41D */ :>> flight = "STS-41D"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-029'> mtf_029 : MissionFlight { doc /* STS-41G */ :>> flight = "STS-41G"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-030'> mtf_030 : MissionFlight { doc /* STS-42 */ :>> flight = "STS-42"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-031'> mtf_031 : MissionFlight { doc /* STS-43 */ :>> flight = "STS-43"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-032'> mtf_032 : MissionFlight { doc /* STS-44 */ :>> flight = "STS-44"; :>> primaryType = "MT-06"; :>> secondaryTypes = "MT-02"; :>> basisRule = "PRIO"; }
    part <'MTF-033'> mtf_033 : MissionFlight { doc /* STS-45 */ :>> flight = "STS-45"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-034'> mtf_034 : MissionFlight { doc /* STS-46 */ :>> flight = "STS-46"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-035'> mtf_035 : MissionFlight { doc /* STS-47 */ :>> flight = "STS-47"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-036'> mtf_036 : MissionFlight { doc /* STS-48 */ :>> flight = "STS-48"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-037'> mtf_037 : MissionFlight { doc /* STS-49 */ :>> flight = "STS-49"; :>> primaryType = "MT-03"; :>> secondaryTypes = "MT-08"; :>> basisRule = "P"; }
    part <'MTF-038'> mtf_038 : MissionFlight { doc /* STS-50 */ :>> flight = "STS-50"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-039'> mtf_039 : MissionFlight { doc /* STS-51 */ :>> flight = "STS-51"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-040'> mtf_040 : MissionFlight { doc /* STS-51A */ :>> flight = "STS-51A"; :>> primaryType = "MT-03"; :>> secondaryTypes = "MT-02"; :>> basisRule = "PRIO"; }
    part <'MTF-041'> mtf_041 : MissionFlight { doc /* STS-51B */ :>> flight = "STS-51B"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-01"; :>> basisRule = "PRIO"; }
    part <'MTF-042'> mtf_042 : MissionFlight { doc /* STS-51C */ :>> flight = "STS-51C"; :>> primaryType = "MT-09"; :>> secondaryTypes = ""; :>> basisRule = "CLS"; }
    part <'MTF-043'> mtf_043 : MissionFlight { doc /* STS-51D */ :>> flight = "STS-51D"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-044'> mtf_044 : MissionFlight { doc /* STS-51F */ :>> flight = "STS-51F"; :>> primaryType = "MT-07"; :>> secondaryTypes = "MT-08"; :>> basisRule = "P"; }
    part <'MTF-045'> mtf_045 : MissionFlight { doc /* STS-51G */ :>> flight = "STS-51G"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-046'> mtf_046 : MissionFlight { doc /* STS-51I */ :>> flight = "STS-51I"; :>> primaryType = "MT-03"; :>> secondaryTypes = "MT-02"; :>> basisRule = "PRIO"; }
    part <'MTF-047'> mtf_047 : MissionFlight { doc /* STS-51J */ :>> flight = "STS-51J"; :>> primaryType = "MT-09"; :>> secondaryTypes = ""; :>> basisRule = "CLS"; }
    part <'MTF-048'> mtf_048 : MissionFlight { doc /* STS-52 */ :>> flight = "STS-52"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-049'> mtf_049 : MissionFlight { doc /* STS-53 */ :>> flight = "STS-53"; :>> primaryType = "MT-06"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-050'> mtf_050 : MissionFlight { doc /* STS-54 */ :>> flight = "STS-54"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-051'> mtf_051 : MissionFlight { doc /* STS-55 */ :>> flight = "STS-55"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-052'> mtf_052 : MissionFlight { doc /* STS-56 */ :>> flight = "STS-56"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-053'> mtf_053 : MissionFlight { doc /* STS-57 */ :>> flight = "STS-57"; :>> primaryType = "MT-03"; :>> secondaryTypes = "MT-01"; :>> basisRule = "PRIO"; }
    part <'MTF-054'> mtf_054 : MissionFlight { doc /* STS-58 */ :>> flight = "STS-58"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-055'> mtf_055 : MissionFlight { doc /* STS-59 */ :>> flight = "STS-59"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-056'> mtf_056 : MissionFlight { doc /* STS-60 */ :>> flight = "STS-60"; :>> primaryType = "MT-01"; :>> secondaryTypes = "MT-07"; :>> basisRule = "PRIO"; }
    part <'MTF-057'> mtf_057 : MissionFlight { doc /* STS-61 */ :>> flight = "STS-61"; :>> primaryType = "MT-03"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-058'> mtf_058 : MissionFlight { doc /* STS-61B */ :>> flight = "STS-61B"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-08,MT-07"; :>> basisRule = "P"; }
    part <'MTF-059'> mtf_059 : MissionFlight { doc /* STS-61C */ :>> flight = "STS-61C"; :>> primaryType = "MT-02"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-060'> mtf_060 : MissionFlight { doc /* STS-62 */ :>> flight = "STS-62"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-061'> mtf_061 : MissionFlight { doc /* STS-63 */ :>> flight = "STS-63"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01,MT-07"; :>> basisRule = "PRIO"; }
    part <'MTF-062'> mtf_062 : MissionFlight { doc /* STS-64 */ :>> flight = "STS-64"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-063'> mtf_063 : MissionFlight { doc /* STS-65 */ :>> flight = "STS-65"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-064'> mtf_064 : MissionFlight { doc /* STS-66 */ :>> flight = "STS-66"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-065'> mtf_065 : MissionFlight { doc /* STS-67 */ :>> flight = "STS-67"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-066'> mtf_066 : MissionFlight { doc /* STS-68 */ :>> flight = "STS-68"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-067'> mtf_067 : MissionFlight { doc /* STS-69 */ :>> flight = "STS-69"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-068'> mtf_068 : MissionFlight { doc /* STS-70 */ :>> flight = "STS-70"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-069'> mtf_069 : MissionFlight { doc /* STS-71 */ :>> flight = "STS-71"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01"; :>> basisRule = "P"; }
    part <'MTF-070'> mtf_070 : MissionFlight { doc /* STS-72 */ :>> flight = "STS-72"; :>> primaryType = "MT-03"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-071'> mtf_071 : MissionFlight { doc /* STS-73 */ :>> flight = "STS-73"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-072'> mtf_072 : MissionFlight { doc /* STS-74 */ :>> flight = "STS-74"; :>> primaryType = "MT-05"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-073'> mtf_073 : MissionFlight { doc /* STS-75 */ :>> flight = "STS-75"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-074'> mtf_074 : MissionFlight { doc /* STS-76 */ :>> flight = "STS-76"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01"; :>> basisRule = "P"; }
    part <'MTF-075'> mtf_075 : MissionFlight { doc /* STS-77 */ :>> flight = "STS-77"; :>> primaryType = "MT-01"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-076'> mtf_076 : MissionFlight { doc /* STS-78 */ :>> flight = "STS-78"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-077'> mtf_077 : MissionFlight { doc /* STS-80 */ :>> flight = "STS-80"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-078'> mtf_078 : MissionFlight { doc /* STS-81 */ :>> flight = "STS-81"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01"; :>> basisRule = "P"; }
    part <'MTF-079'> mtf_079 : MissionFlight { doc /* STS-82 */ :>> flight = "STS-82"; :>> primaryType = "MT-03"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-080'> mtf_080 : MissionFlight { doc /* STS-83 */ :>> flight = "STS-83"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-081'> mtf_081 : MissionFlight { doc /* STS-84 */ :>> flight = "STS-84"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01"; :>> basisRule = "P"; }
    part <'MTF-082'> mtf_082 : MissionFlight { doc /* STS-85 */ :>> flight = "STS-85"; :>> primaryType = "MT-07"; :>> secondaryTypes = "MT-08"; :>> basisRule = "P"; }
    part <'MTF-083'> mtf_083 : MissionFlight { doc /* STS-86 */ :>> flight = "STS-86"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01"; :>> basisRule = "P"; }
    part <'MTF-084'> mtf_084 : MissionFlight { doc /* STS-87 */ :>> flight = "STS-87"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-085'> mtf_085 : MissionFlight { doc /* STS-88 */ :>> flight = "STS-88"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-086'> mtf_086 : MissionFlight { doc /* STS-89 */ :>> flight = "STS-89"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01"; :>> basisRule = "P"; }
    part <'MTF-087'> mtf_087 : MissionFlight { doc /* STS-90 */ :>> flight = "STS-90"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-088'> mtf_088 : MissionFlight { doc /* STS-91 */ :>> flight = "STS-91"; :>> primaryType = "MT-05"; :>> secondaryTypes = "MT-01"; :>> basisRule = "P"; }
    part <'MTF-089'> mtf_089 : MissionFlight { doc /* STS-92 */ :>> flight = "STS-92"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-090'> mtf_090 : MissionFlight { doc /* STS-93 */ :>> flight = "STS-93"; :>> primaryType = "MT-02"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-091'> mtf_091 : MissionFlight { doc /* STS-94 */ :>> flight = "STS-94"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-092'> mtf_092 : MissionFlight { doc /* STS-95 */ :>> flight = "STS-95"; :>> primaryType = "MT-01"; :>> secondaryTypes = "MT-07"; :>> basisRule = "P"; }
    part <'MTF-093'> mtf_093 : MissionFlight { doc /* STS-96 */ :>> flight = "STS-96"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-094'> mtf_094 : MissionFlight { doc /* STS-97 */ :>> flight = "STS-97"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-095'> mtf_095 : MissionFlight { doc /* STS-98 */ :>> flight = "STS-98"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-096'> mtf_096 : MissionFlight { doc /* STS-99 */ :>> flight = "STS-99"; :>> primaryType = "MT-07"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-097'> mtf_097 : MissionFlight { doc /* STS-100 */ :>> flight = "STS-100"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-098'> mtf_098 : MissionFlight { doc /* STS-101 */ :>> flight = "STS-101"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-099'> mtf_099 : MissionFlight { doc /* STS-102 */ :>> flight = "STS-102"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-100'> mtf_100 : MissionFlight { doc /* STS-103 */ :>> flight = "STS-103"; :>> primaryType = "MT-03"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-101'> mtf_101 : MissionFlight { doc /* STS-104 */ :>> flight = "STS-104"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-102'> mtf_102 : MissionFlight { doc /* STS-105 */ :>> flight = "STS-105"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-103'> mtf_103 : MissionFlight { doc /* STS-106 */ :>> flight = "STS-106"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-104'> mtf_104 : MissionFlight { doc /* STS-107 */ :>> flight = "STS-107"; :>> primaryType = "MT-01"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-105'> mtf_105 : MissionFlight { doc /* STS-108 */ :>> flight = "STS-108"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-106'> mtf_106 : MissionFlight { doc /* STS-109 */ :>> flight = "STS-109"; :>> primaryType = "MT-03"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-107'> mtf_107 : MissionFlight { doc /* STS-110 */ :>> flight = "STS-110"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-108'> mtf_108 : MissionFlight { doc /* STS-111 */ :>> flight = "STS-111"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-109'> mtf_109 : MissionFlight { doc /* STS-112 */ :>> flight = "STS-112"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-110'> mtf_110 : MissionFlight { doc /* STS-113 */ :>> flight = "STS-113"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-111'> mtf_111 : MissionFlight { doc /* STS-114 */ :>> flight = "STS-114"; :>> primaryType = "MT-04"; :>> secondaryTypes = "MT-08"; :>> basisRule = "P"; }
    part <'MTF-112'> mtf_112 : MissionFlight { doc /* STS-115 */ :>> flight = "STS-115"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-113'> mtf_113 : MissionFlight { doc /* STS-116 */ :>> flight = "STS-116"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-114'> mtf_114 : MissionFlight { doc /* STS-117 */ :>> flight = "STS-117"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-115'> mtf_115 : MissionFlight { doc /* STS-118 */ :>> flight = "STS-118"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-116'> mtf_116 : MissionFlight { doc /* STS-119 */ :>> flight = "STS-119"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-117'> mtf_117 : MissionFlight { doc /* STS-120 */ :>> flight = "STS-120"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-118'> mtf_118 : MissionFlight { doc /* STS-121 */ :>> flight = "STS-121"; :>> primaryType = "MT-04"; :>> secondaryTypes = "MT-08"; :>> basisRule = "P"; }
    part <'MTF-119'> mtf_119 : MissionFlight { doc /* STS-122 */ :>> flight = "STS-122"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-120'> mtf_120 : MissionFlight { doc /* STS-123 */ :>> flight = "STS-123"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-121'> mtf_121 : MissionFlight { doc /* STS-124 */ :>> flight = "STS-124"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-122'> mtf_122 : MissionFlight { doc /* STS-125 */ :>> flight = "STS-125"; :>> primaryType = "MT-03"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-123'> mtf_123 : MissionFlight { doc /* STS-126 */ :>> flight = "STS-126"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-124'> mtf_124 : MissionFlight { doc /* STS-127 */ :>> flight = "STS-127"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-125'> mtf_125 : MissionFlight { doc /* STS-128 */ :>> flight = "STS-128"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-126'> mtf_126 : MissionFlight { doc /* STS-129 */ :>> flight = "STS-129"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-127'> mtf_127 : MissionFlight { doc /* STS-130 */ :>> flight = "STS-130"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-128'> mtf_128 : MissionFlight { doc /* STS-131 */ :>> flight = "STS-131"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-129'> mtf_129 : MissionFlight { doc /* STS-132 */ :>> flight = "STS-132"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-130'> mtf_130 : MissionFlight { doc /* STS-133 */ :>> flight = "STS-133"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-131'> mtf_131 : MissionFlight { doc /* STS-134 */ :>> flight = "STS-134"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
    part <'MTF-132'> mtf_132 : MissionFlight { doc /* STS-135 */ :>> flight = "STS-135"; :>> primaryType = "MT-04"; :>> secondaryTypes = ""; :>> basisRule = "P"; }
}
