// SysML v2 テキスト：MBSE グリッド・手法対応定義書（SE プロセス × SysML の柱のグリッド、MBSE 手法の工程との対応）
// SSD-GRD-SYS-001 MBSE グリッド・手法対応定義書（SE プロセス × SysML の柱のグリッド、MBSE 手法の工程との対応） の表から生成（lib/build_docs_cs.py・rev_cs/csdata.py・gridrules.py）。根拠の頁は SSD-GRD-SYS-001 にある。
package SSD_GRD_SYS_001 {
    doc /* SSD-GRD-SYS-001 MBSE グリッド・手法対応定義書（SE プロセス × SysML の柱のグリッド、MBSE 手法の工程との対応）。グリッドの行（SE プロセス）ごとの図の件数、MBSE 手法の工程の判定、ISO/IEC/IEEE 42010 の概念の件数を part の使用として持つ。対象の文書は文字列の属性（assesses）で持ち、パッケージへの依存を張らない。要求への関係（導出・充足・検証）は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    part def MethodStep {
        doc /* MBSE 手法の工程と本パッケージの対応（Estefan 2008 の工程名の言い換え）。判定は有・一部・無。assesses は対象の文書の番号（文字列。パッケージへの dependency にしない） */
        attribute method : String;
        attribute stepName : String;
        attribute rating : String;
        attribute assesses : String;
    }
    part def GridRow {
        doc /* SE プロセスの行と、SysML の柱ごとの図の件数 */
        attribute origin : String;
        attribute reqFigs : Integer;
        attribute structFigs : Integer;
        attribute behaviorFigs : Integer;
        attribute paramFigs : Integer;
        attribute otherFigs : Integer;
        attribute total : Integer;
    }
    part def ArchConcept {
        doc /* ISO/IEC/IEEE 42010 の概念と SSD-VPT-SYS-001 の要素の件数 */
        attribute conceptName : String;
        attribute elementCount : Integer;
    }
    package Items {
        doc /* 項目の使用 */
        part <'GRD-01'> grd_01 : GridRow { doc /* ステークホルダーの期待の定義 */ :>> origin = "HDBK 1"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 23; :>> paramFigs = 0; :>> otherFigs = 0; :>> total = 23; }
        part <'GRD-02'> grd_02 : GridRow { doc /* 技術要求の定義 */ :>> origin = "HDBK 2"; :>> reqFigs = 11; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 1; :>> otherFigs = 1; :>> total = 13; }
        part <'GRD-03'> grd_03 : GridRow { doc /* 論理分割 */ :>> origin = "HDBK 3"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 45; :>> paramFigs = 0; :>> otherFigs = 1; :>> total = 46; }
        part <'GRD-04'> grd_04 : GridRow { doc /* 設計解の定義 */ :>> origin = "HDBK 4"; :>> reqFigs = 0; :>> structFigs = 68; :>> behaviorFigs = 0; :>> paramFigs = 1; :>> otherFigs = 1; :>> total = 70; }
        part <'GRD-05'> grd_05 : GridRow { doc /* 製品の実装 */ :>> origin = "HDBK 5"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 0; :>> total = 0; }
        part <'GRD-06'> grd_06 : GridRow { doc /* 製品の統合 */ :>> origin = "HDBK 6"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 0; :>> total = 0; }
        part <'GRD-07'> grd_07 : GridRow { doc /* 製品の検証 */ :>> origin = "HDBK 7"; :>> reqFigs = 3; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 0; :>> total = 3; }
        part <'GRD-08'> grd_08 : GridRow { doc /* 製品の妥当性確認 */ :>> origin = "HDBK 8"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 0; :>> total = 0; }
        part <'GRD-09'> grd_09 : GridRow { doc /* 製品の移行 */ :>> origin = "HDBK 9"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 3; :>> paramFigs = 0; :>> otherFigs = 0; :>> total = 3; }
        part <'GRD-10'> grd_10 : GridRow { doc /* 技術計画 */ :>> origin = "拡張 10"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 6; :>> total = 6; }
        part <'GRD-11'> grd_11 : GridRow { doc /* 要求管理 */ :>> origin = "拡張 11"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 3; :>> total = 3; }
        part <'GRD-12'> grd_12 : GridRow { doc /* インタフェース管理 */ :>> origin = "拡張 12"; :>> reqFigs = 0; :>> structFigs = 3; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 0; :>> total = 3; }
        part <'GRD-13'> grd_13 : GridRow { doc /* 技術リスク管理 */ :>> origin = "拡張 13"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 6; :>> paramFigs = 0; :>> otherFigs = 31; :>> total = 37; }
        part <'GRD-14'> grd_14 : GridRow { doc /* 構成管理 */ :>> origin = "拡張 14"; :>> reqFigs = 0; :>> structFigs = 3; :>> behaviorFigs = 0; :>> paramFigs = 1; :>> otherFigs = 0; :>> total = 4; }
        part <'GRD-15'> grd_15 : GridRow { doc /* 技術データ管理 */ :>> origin = "拡張 15"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 0; :>> otherFigs = 34; :>> total = 34; }
        part <'GRD-16'> grd_16 : GridRow { doc /* 技術評価 */ :>> origin = "拡張 16"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 24; :>> otherFigs = 0; :>> total = 24; }
        part <'GRD-17'> grd_17 : GridRow { doc /* 決定分析 */ :>> origin = "拡張 17"; :>> reqFigs = 0; :>> structFigs = 0; :>> behaviorFigs = 0; :>> paramFigs = 1; :>> otherFigs = 0; :>> total = 1; }
        part <'GRD-18'> grd_18 : ArchConcept { doc /* 関係者 */ :>> conceptName = "関係者"; :>> elementCount = 10; }
        part <'GRD-19'> grd_19 : ArchConcept { doc /* 関心事 */ :>> conceptName = "関心事"; :>> elementCount = 21; }
        part <'GRD-20'> grd_20 : ArchConcept { doc /* ビューポイント */ :>> conceptName = "ビューポイント"; :>> elementCount = 13; }
        part <'GRD-21'> grd_21 : ArchConcept { doc /* ビュー */ :>> conceptName = "ビュー"; :>> elementCount = 270; }
        part <'GRD-22'> grd_22 : MethodStep { doc /* Harmony-SE 要求分析 */ :>> method = "Harmony-SE"; :>> stepName = "要求分析"; :>> rating = "一部"; :>> assesses = "SSD-RQM-SYS-001"; }
        part <'GRD-23'> grd_23 : MethodStep { doc /* Harmony-SE システムの機能分析 */ :>> method = "Harmony-SE"; :>> stepName = "システムの機能分析"; :>> rating = "有"; :>> assesses = "SSD-BLK-SYS-001,SSD-ALC-SYS-001,SSD-BEH-ORB-001,SSD-BEH-ORB-003"; }
        part <'GRD-24'> grd_24 : MethodStep { doc /* Harmony-SE アーキテクチャ設計 */ :>> method = "Harmony-SE"; :>> stepName = "アーキテクチャ設計"; :>> rating = "有"; :>> assesses = "SSD-BLK-SYS-001,SSD-IBD-ORB-001"; }
        part <'GRD-25'> grd_25 : MethodStep { doc /* OOSEM ステークホルダーのニーズの分析 */ :>> method = "OOSEM"; :>> stepName = "ステークホルダーのニーズの分析"; :>> rating = "一部"; :>> assesses = "SSD-VPT-SYS-001,SSD-UC-ORB-001,SSD-TPM-SYS-001"; }
        part <'GRD-26'> grd_26 : MethodStep { doc /* OOSEM システム要求の定義 */ :>> method = "OOSEM"; :>> stepName = "システム要求の定義"; :>> rating = "有"; :>> assesses = "SSD-RQL-SYS-001,SSD-IRQ-SYS-001"; }
        part <'GRD-27'> grd_27 : MethodStep { doc /* OOSEM 論理アーキテクチャの定義 */ :>> method = "OOSEM"; :>> stepName = "論理アーキテクチャの定義"; :>> rating = "有"; :>> assesses = "SSD-BLK-SYS-001,SSD-ALC-SYS-001"; }
        part <'GRD-28'> grd_28 : MethodStep { doc /* OOSEM 割り付けた候補アーキテクチャの合成 */ :>> method = "OOSEM"; :>> stepName = "割り付けた候補アーキテクチャの合成"; :>> rating = "一部"; :>> assesses = "SSD-ALC-SYS-001"; }
        part <'GRD-29'> grd_29 : MethodStep { doc /* OOSEM 代替案の最適化と評価 */ :>> method = "OOSEM"; :>> stepName = "代替案の最適化と評価"; :>> rating = "一部"; :>> assesses = "SSD-ANA-ORB-001"; }
        part <'GRD-30'> grd_30 : MethodStep { doc /* OOSEM システムの検証と妥当性確認 */ :>> method = "OOSEM"; :>> stepName = "システムの検証と妥当性確認"; :>> rating = "一部"; :>> assesses = "SSD-VER-SYS-001,SSD-FLT-ORB-001"; }
        part <'GRD-31'> grd_31 : MethodStep { doc /* Vitech 要求の起源 */ :>> method = "Vitech"; :>> stepName = "要求の起源"; :>> rating = "一部"; :>> assesses = ""; }
        part <'GRD-32'> grd_32 : MethodStep { doc /* Vitech 振る舞い・機能アーキテクチャ */ :>> method = "Vitech"; :>> stepName = "振る舞い・機能アーキテクチャ"; :>> rating = "有"; :>> assesses = "SSD-BEH-ORB-001,SSD-BEH-ORB-003,SSD-ALC-SYS-001"; }
        part <'GRD-33'> grd_33 : MethodStep { doc /* Vitech 物理アーキテクチャの定義 */ :>> method = "Vitech"; :>> stepName = "物理アーキテクチャの定義"; :>> rating = "有"; :>> assesses = "SSD-BLK-SYS-001,SSD-IBD-ORB-001"; }
        part <'GRD-34'> grd_34 : MethodStep { doc /* Vitech 適格性確認（検証） */ :>> method = "Vitech"; :>> stepName = "適格性確認（検証）"; :>> rating = "有"; :>> assesses = "SSD-VER-SYS-001,SSD-FLT-ORB-001"; }
        part <'GRD-35'> grd_35 : MethodStep { doc /* JPL State Analysis 状態に基づく振る舞いのモデリング */ :>> method = "JPL State Analysis"; :>> stepName = "状態に基づく振る舞いのモデリング"; :>> rating = "有"; :>> assesses = "SSD-BEH-ORB-001,SSD-BEH-ORB-005,SSD-BEH-ORB-006"; }
        part <'GRD-36'> grd_36 : MethodStep { doc /* JPL State Analysis 状態に基づくソフトウェア設計 */ :>> method = "JPL State Analysis"; :>> stepName = "状態に基づくソフトウェア設計"; :>> rating = "一部"; :>> assesses = "SSD-BEH-ORB-005,SSD-IBD-ORB-001"; }
        part <'GRD-37'> grd_37 : MethodStep { doc /* JPL State Analysis 目標指向の運用工学 */ :>> method = "JPL State Analysis"; :>> stepName = "目標指向の運用工学"; :>> rating = "一部"; :>> assesses = "SSD-UC-ORB-001,SSD-TPM-SYS-001"; }
    }
}
