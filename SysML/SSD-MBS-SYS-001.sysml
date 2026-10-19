// SysML v2 テキスト：MBSE 実践の対応定義書（NASA-HDBK-1009A の作業成果物・SEBoK の効果的なモデルの基準との対応）
// SSD-MBS-SYS-001 MBSE 実践の対応定義書（NASA-HDBK-1009A の作業成果物・SEBoK の効果的なモデルの基準との対応） の表から生成（lib/build_docs_cs.py（Rev. A）・rev_cr/crdata.py）。根拠の頁は SSD-MBS-SYS-001 にある。
package SSD_MBS_SYS_001 {
    doc /* SSD-MBS-SYS-001 MBSE 実践の対応定義書（NASA-HDBK-1009A の作業成果物・SEBoK の効果的なモデルの基準との対応）。HDBK-1009A の作業成果物・メタモデルの要素と SEBoK の基準・性質を part def MbseItem の使用として持つ。対象の文書は文字列の属性（assesses）で持つ（Rev. A の #Assesses の dependency を替えた）。要求への関係（導出・充足・検証）は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    part def MbseItem {
        doc /* MBSE 実践の対応の項目（HDBK-1009A の作業成果物・メタモデルの要素・SEBoK の基準・性質）。判定は有・一部・無（性質は分類で、判定は —）。assesses は対象の文書の番号（文字列。Rev. A から。パッケージへの dependency にしない） */
        attribute source : String;
        attribute reference : String;
        attribute rating : String;
        attribute assesses : String;
    }
    package Items {
        doc /* 項目の使用 */
        part <'MBS-01'> mbs_01 : MbseItem { doc /* ステークホルダーの識別と期待 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "一部"; :>> assesses = "SSD-VPT-SYS-001"; }
        part <'MBS-02'> mbs_02 : MbseItem { doc /* 運用概念（ConOps） */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "一部"; :>> assesses = "SSD-UC-ORB-001,SSD-BEH-ORB-003,SSD-GND-ORB-001,SSD-HSI-SYS-001"; }
        part <'MBS-03'> mbs_03 : MbseItem { doc /* MOE の定義 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "有"; :>> assesses = "SSD-TPM-SYS-001"; }
        part <'MBS-04'> mbs_04 : MbseItem { doc /* 技術要求 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "有"; :>> assesses = "SSD-RQM-SYS-001,SSD-RQL-SYS-001,SSD-IRQ-SYS-001"; }
        part <'MBS-05'> mbs_05 : MbseItem { doc /* MOP の定義 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "有"; :>> assesses = "SSD-TPM-SYS-001"; }
        part <'MBS-06'> mbs_06 : MbseItem { doc /* TPM の定義 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "一部"; :>> assesses = "SSD-TPM-SYS-001"; }
        part <'MBS-07'> mbs_07 : MbseItem { doc /* 検証の要求 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001"; }
        part <'MBS-08'> mbs_08 : MbseItem { doc /* 検証の計画 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "一部"; :>> assesses = "SSD-VER-SYS-001,SSD-FLT-ORB-001"; }
        part <'MBS-09'> mbs_09 : MbseItem { doc /* 検証の結果と報告 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001,SSD-FLT-ORB-001"; }
        part <'MBS-10'> mbs_10 : MbseItem { doc /* 妥当性確認の要求 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-11'> mbs_11 : MbseItem { doc /* 妥当性確認の計画 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-12'> mbs_12 : MbseItem { doc /* 妥当性確認の結果と報告 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-T411"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-13'> mbs_13 : MbseItem { doc /* 8.1 ステークホルダーの識別と期待の文（bdd・表） */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-81"; :>> rating = "一部"; :>> assesses = "SSD-VPT-SYS-001"; }
        part <'MBS-14'> mbs_14 : MbseItem { doc /* 8.2 ニーズ・目標・目的（NGO）の要求図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-82"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-15'> mbs_15 : MbseItem { doc /* 8.3 システム文脈の bdd */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-83"; :>> rating = "一部"; :>> assesses = "SSD-BLK-SYS-001"; }
        part <'MBS-16'> mbs_16 : MbseItem { doc /* 8.4 システム文脈の ibd */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-84"; :>> rating = "一部"; :>> assesses = "SSD-BLK-SYS-001"; }
        part <'MBS-17'> mbs_17 : MbseItem { doc /* 8.5 システムのユースケース図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-85"; :>> rating = "有"; :>> assesses = "SSD-UC-ORB-001"; }
        part <'MBS-18'> mbs_18 : MbseItem { doc /* 8.6 ユースケースを支える活動図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-86"; :>> rating = "有"; :>> assesses = "SSD-UC-ORB-001,SSD-BEH-ORB-002,SSD-BEH-ORB-004"; }
        part <'MBS-19'> mbs_19 : MbseItem { doc /* 8.7 構造の分解の bdd */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-87"; :>> rating = "有"; :>> assesses = "SSD-BLK-SYS-001"; }
        part <'MBS-20'> mbs_20 : MbseItem { doc /* 8.8 構造の接続の ibd */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-88"; :>> rating = "有"; :>> assesses = "SSD-IBD-ORB-001"; }
        part <'MBS-21'> mbs_21 : MbseItem { doc /* 8.9 活動の機能分解（bdd） */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-89"; :>> rating = "一部"; :>> assesses = "SSD-ALC-SYS-001"; }
        part <'MBS-22'> mbs_22 : MbseItem { doc /* 8.10 システム要求図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-810"; :>> rating = "有"; :>> assesses = "SSD-RQM-SYS-001"; }
        part <'MBS-23'> mbs_23 : MbseItem { doc /* 8.11 トレーサビリティつきの要求表 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-811"; :>> rating = "有"; :>> assesses = "SSD-TRC-SYS-001"; }
        part <'MBS-24'> mbs_24 : MbseItem { doc /* 8.12 MOE・MOP と要求のトレースの要求図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-812"; :>> rating = "一部"; :>> assesses = "SSD-TPM-SYS-001"; }
        part <'MBS-25'> mbs_25 : MbseItem { doc /* 8.13 MOP・TPM を識別した構造の分解 bdd */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-813"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-26'> mbs_26 : MbseItem { doc /* 8.14 検証の要求（文）の要求図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-814"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001"; }
        part <'MBS-27'> mbs_27 : MbseItem { doc /* 8.15 検証の要求とトレーサビリティの要求図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-815"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001"; }
        part <'MBS-28'> mbs_28 : MbseItem { doc /* 8.16 要求の検証マトリクスの表 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-816"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001"; }
        part <'MBS-29'> mbs_29 : MbseItem { doc /* 8.17 検証要求のマトリクス（検証コンプライアンス） */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-817"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001,SSD-FLT-ORB-001"; }
        part <'MBS-30'> mbs_30 : MbseItem { doc /* 8.18 V&V ケースのユースケース図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-818"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-31'> mbs_31 : MbseItem { doc /* 8.19 V&V の構成の分解 bdd */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-819"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-32'> mbs_32 : MbseItem { doc /* 8.20 V&V ケースの手順の活動図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-820"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-33'> mbs_33 : MbseItem { doc /* 8.21 妥当性確認の要求とトレーサビリティの要求図 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-821"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-34'> mbs_34 : MbseItem { doc /* 8.22 妥当性確認の要求のマトリクスの表 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-822"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-35'> mbs_35 : MbseItem { doc /* ステークホルダーの期待の文・ニーズ・目標・目的 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-36'> mbs_36 : MbseItem { doc /* 要求（要求の階層） */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "有"; :>> assesses = "SSD-RQM-SYS-001,SSD-RQL-SYS-001,SSD-IRQ-SYS-001"; }
        part <'MBS-37'> mbs_37 : MbseItem { doc /* MOE・MOP・TPM */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "一部"; :>> assesses = "SSD-TPM-SYS-001"; }
        part <'MBS-38'> mbs_38 : MbseItem { doc /* 検証の要求と verifies の関係 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001"; }
        part <'MBS-39'> mbs_39 : MbseItem { doc /* 妥当性確認の要求と satisfies の関係 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "無"; :>> assesses = ""; }
        part <'MBS-40'> mbs_40 : MbseItem { doc /* V&V ケース・V&V ケースの活動・V&V の構成 */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-VV"; :>> rating = "一部"; :>> assesses = "SSD-VER-SYS-001,SSD-FLT-ORB-001"; }
        part <'MBS-41'> mbs_41 : MbseItem { doc /* 構造（ブロック）と IF */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "有"; :>> assesses = "SSD-BLK-SYS-001,SSD-IBD-ORB-001"; }
        part <'MBS-42'> mbs_42 : MbseItem { doc /* 振る舞い（uc・act・sd・stm） */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "有"; :>> assesses = "SSD-BEH-ORB-001,SSD-UC-ORB-001,SSD-BEH-ORB-003"; }
        part <'MBS-43'> mbs_43 : MbseItem { doc /* パラメトリック（値の性質と制約） */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "有"; :>> assesses = "SSD-PAR-ORB-001,SSD-ANA-ORB-001,SSD-TRJ-ORB-001"; }
        part <'MBS-44'> mbs_44 : MbseItem { doc /* 要求・MOE が満たされる先は階層のどこでもよい */ :>> source = "NASA-HDBK-1009A"; :>> reference = "H-META"; :>> rating = "一部"; :>> assesses = "SSD-RQM-SYS-001"; }
        part <'MBS-45'> mbs_45 : MbseItem { doc /* 基準1 範囲が対象システム全体と合う */ :>> source = "SEBoK"; :>> reference = "S-C01"; :>> rating = "一部"; :>> assesses = "SSD-BLK-SYS-001"; }
        part <'MBS-46'> mbs_46 : MbseItem { doc /* 基準2 全領域の全体の見方 */ :>> source = "SEBoK"; :>> reference = "S-C02"; :>> rating = "有"; :>> assesses = "SSD-VPT-SYS-001"; }
        part <'MBS-47'> mbs_47 : MbseItem { doc /* 基準3 標準のモデリング言語への厳密な準拠 */ :>> source = "SEBoK"; :>> reference = "S-C03"; :>> rating = "有"; :>> assesses = ""; }
        part <'MBS-48'> mbs_48 : MbseItem { doc /* 基準4 関係する情報だけへの抽象化 */ :>> source = "SEBoK"; :>> reference = "S-C04"; :>> rating = "一部"; :>> assesses = "SSD-BLK-SYS-001"; }
        part <'MBS-49'> mbs_49 : MbseItem { doc /* 基準5 概念的である（要求などを取り込める） */ :>> source = "SEBoK"; :>> reference = "S-C05"; :>> rating = "有"; :>> assesses = "SSD-RQM-SYS-001"; }
        part <'MBS-50'> mbs_50 : MbseItem { doc /* 基準6 機能と構造に、解析・定量の性質を加える */ :>> source = "SEBoK"; :>> reference = "S-C06"; :>> rating = "有"; :>> assesses = "SSD-BLK-SYS-001,SSD-ALC-SYS-001,SSD-PAR-ORB-001,SSD-ANA-ORB-001"; }
        part <'MBS-51'> mbs_51 : MbseItem { doc /* 基準7 十分な忠実度 */ :>> source = "SEBoK"; :>> reference = "S-C07"; :>> rating = "一部"; :>> assesses = "SSD-ANA-ORB-001,SSD-TRJ-ORB-001,SSD-PLB-ORB-001"; }
        part <'MBS-52'> mbs_52 : MbseItem { doc /* 基準8 範囲に対して完全 */ :>> source = "SEBoK"; :>> reference = "S-C08"; :>> rating = "一部"; :>> assesses = "SSD-TRC-SYS-001"; }
        part <'MBS-53'> mbs_53 : MbseItem { doc /* 基準9 補助のモデルとの統合 */ :>> source = "SEBoK"; :>> reference = "S-C09"; :>> rating = "一部"; :>> assesses = "SSD-PAR-ORB-001"; }
        part <'MBS-54'> mbs_54 : MbseItem { doc /* 基準10 利用する人のニーズに合う品質 */ :>> source = "SEBoK"; :>> reference = "S-C10"; :>> rating = "有"; :>> assesses = "SSD-VPT-SYS-001"; }
        part <'MBS-55'> mbs_55 : MbseItem { doc /* 範囲 */ :>> source = "SEBoK"; :>> reference = "S-P01"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-56'> mbs_56 : MbseItem { doc /* 領域 */ :>> source = "SEBoK"; :>> reference = "S-P02"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-57'> mbs_57 : MbseItem { doc /* 形式性 */ :>> source = "SEBoK"; :>> reference = "S-P03"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-58'> mbs_58 : MbseItem { doc /* 抽象度 */ :>> source = "SEBoK"; :>> reference = "S-P04"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-59'> mbs_59 : MbseItem { doc /* 物理か概念か */ :>> source = "SEBoK"; :>> reference = "S-P05"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-60'> mbs_60 : MbseItem { doc /* 記述か解析か */ :>> source = "SEBoK"; :>> reference = "S-P06"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-61'> mbs_61 : MbseItem { doc /* 忠実度 */ :>> source = "SEBoK"; :>> reference = "S-P07"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-62'> mbs_62 : MbseItem { doc /* 完全性 */ :>> source = "SEBoK"; :>> reference = "S-P08"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-63'> mbs_63 : MbseItem { doc /* 統合 */ :>> source = "SEBoK"; :>> reference = "S-P09"; :>> rating = "—"; :>> assesses = ""; }
        part <'MBS-64'> mbs_64 : MbseItem { doc /* 品質 */ :>> source = "SEBoK"; :>> reference = "S-P10"; :>> rating = "—"; :>> assesses = ""; }
    }
}
