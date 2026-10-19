// SysML v2 テキスト：モデル計画書（モデルが支える成果物・資源と役割・道具・規約・モデルの構成・公開・管理）
// SSD-PLN-SYS-001 モデル計画書（モデルが支える成果物・資源と役割・道具・規約・モデルの構成・公開・管理） の表から生成（lib/build_docs_ct.py・rev_ct/ctdata.py）。根拠の頁は SSD-PLN-SYS-001 にある。
package SSD_PLN_SYS_001 {
    doc /* SSD-PLN-SYS-001 モデル計画書（モデルが支える成果物・資源と役割・道具・規約・モデルの構成・公開・管理）。モデル計画の項目・担当・道具・更新の手順の段階を part の使用として持つ。対象の文書は文字列の属性（assesses）で持ち、パッケージへの依存を張らない。要求への関係（導出・充足・検証）は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    part def PlanItem {
        doc /* モデル計画の項目（HDBK-1009A §5・§6 と SEBoK の Process Frameworks）。判定は有・一部・無。assesses は対象の文書の番号（文字列。パッケージへの dependency にしない） */
        attribute category : String;
        attribute itemName : String;
        attribute rating : String;
        attribute assesses : String;
    }
    part def PlanRole {
        doc /* 担当と役割 */
        attribute roleName : String;
        attribute duty : String;
    }
    part def PlanTool {
        doc /* 道具と版 */
        attribute toolName : String;
        attribute toolVersion : String;
        attribute usage : String;
    }
    part def PlanStep {
        doc /* モデルの更新の手順の段階 */
        attribute stageName : String;
        attribute tooling : String;
    }
    package Items {
        doc /* 項目の使用 */
        part <'PLN-01'> pln_01 : PlanItem { doc /* モデルが支える成果物の一覧 */ :>> category = "HDBK §5"; :>> itemName = "モデルが支える成果物の一覧"; :>> rating = "有"; :>> assesses = "SSD-MBS-SYS-001,SSD-VPT-SYS-001"; }
        part <'PLN-02'> pln_02 : PlanItem { doc /* モデリングの資源 */ :>> category = "HDBK §5"; :>> itemName = "モデリングの資源"; :>> rating = "一部"; :>> assesses = ""; }
        part <'PLN-03'> pln_03 : PlanItem { doc /* 役割と責任 */ :>> category = "HDBK §5"; :>> itemName = "役割と責任"; :>> rating = "一部"; :>> assesses = ""; }
        part <'PLN-04'> pln_04 : PlanItem { doc /* モデリングのツール */ :>> category = "HDBK §5"; :>> itemName = "モデリングのツール"; :>> rating = "有"; :>> assesses = ""; }
        part <'PLN-05'> pln_05 : PlanItem { doc /* モデリングの規約 */ :>> category = "HDBK §5"; :>> itemName = "モデリングの規約"; :>> rating = "有"; :>> assesses = "SSD-VPT-SYS-001"; }
        part <'PLN-06'> pln_06 : PlanItem { doc /* モデルへのアクセス */ :>> category = "HDBK §5"; :>> itemName = "モデルへのアクセス"; :>> rating = "一部"; :>> assesses = ""; }
        part <'PLN-07'> pln_07 : PlanItem { doc /* モデルの管理 */ :>> category = "HDBK §5"; :>> itemName = "モデルの管理"; :>> rating = "一部"; :>> assesses = ""; }
        part <'PLN-08'> pln_08 : PlanItem { doc /* 命名規約（要素・パッケージ） */ :>> category = "HDBK §6"; :>> itemName = "命名規約（要素・パッケージ）"; :>> rating = "有"; :>> assesses = "SSD-VPT-SYS-001"; }
        part <'PLN-09'> pln_09 : PlanItem { doc /* 標準（プロファイルなど） */ :>> category = "HDBK §6"; :>> itemName = "標準（プロファイルなど）"; :>> rating = "一部"; :>> assesses = ""; }
        part <'PLN-10'> pln_10 : PlanItem { doc /* モデルの構成（パッケージの階層） */ :>> category = "HDBK §6"; :>> itemName = "モデルの構成（パッケージの階層）"; :>> rating = "有"; :>> assesses = ""; }
        part <'PLN-11'> pln_11 : PlanItem { doc /* メタモデルと前提の記録 */ :>> category = "HDBK §7"; :>> itemName = "メタモデルと前提の記録"; :>> rating = "一部"; :>> assesses = "SSD-MBS-SYS-001"; }
        part <'PLN-12'> pln_12 : PlanItem { doc /* 構成管理のプロセス */ :>> category = "SEBoK"; :>> itemName = "構成管理のプロセス"; :>> rating = "有"; :>> assesses = ""; }
        part <'PLN-13'> pln_13 : PlanItem { doc /* アクセスの指針 */ :>> category = "SEBoK"; :>> itemName = "アクセスの指針"; :>> rating = "一部"; :>> assesses = ""; }
        part <'PLN-14'> pln_14 : PlanItem { doc /* モデルを更新する実践 */ :>> category = "SEBoK"; :>> itemName = "モデルを更新する実践"; :>> rating = "一部"; :>> assesses = ""; }
        part <'PLN-15'> pln_15 : PlanItem { doc /* SE のライフサイクルへの組み込み */ :>> category = "SEBoK"; :>> itemName = "SE のライフサイクルへの組み込み"; :>> rating = "無"; :>> assesses = ""; }
        part <'PLN-16'> pln_16 : PlanItem { doc /* 小さなプロジェクトの版管理 */ :>> category = "SEBoK"; :>> itemName = "小さなプロジェクトの版管理"; :>> rating = "有"; :>> assesses = ""; }
        part <'PLN-17'> pln_17 : PlanItem { doc /* 構成管理計画・SE 管理計画との照合 */ :>> category = "SEBoK"; :>> itemName = "構成管理計画・SE 管理計画との照合"; :>> rating = "無"; :>> assesses = ""; }
        part <'PLN-18'> pln_18 : PlanRole { doc /* 利用者 */ :>> roleName = "利用者"; :>> duty = "依頼を出し、方針を決め、外に出る操作（GitHub へのプッシュ）を確認する。"; }
        part <'PLN-19'> pln_19 : PlanRole { doc /* Claude（作業の担当） */ :>> roleName = "Claude（作業の担当）"; :>> duty = "調査・データ・文書・図・SysML の作成と、検査の実行。ふだんの作業は Sonnet で進める。"; }
        part <'PLN-20'> pln_20 : PlanRole { doc /* 助言者（Opus） */ :>> roleName = "助言者（Opus）"; :>> duty = "区切りごとに確かめる：作業計画・調査の指示書・build の前・検査の NG・Design/ への上書き・コミット／プッシュ／タグ（外に出る操作）・完了の前。一次資料と食い違うときは黙って乗り換えない。"; }
        part <'PLN-21'> pln_21 : PlanRole { doc /* 調査担当（サブエージェント） */ :>> roleName = "調査担当（サブエージェント）"; :>> duty = "資料の読み取りなど範囲を決めた調査。結果は主のセッションが助言者で確かめる。"; }
        part <'PLN-22'> pln_22 : PlanTool { doc /* OMG SysML v2 Pilot Implementation（jupyter-sysml-kernel）と Eclipse Temurin JDK */ :>> toolName = "OMG SysML v2 Pilot Implementation（jupyter-sysml-kernel）と Eclipse Temurin JDK"; :>> toolVersion = "0.62.0・JDK 21"; :>> usage = "SysML v2 テキストの構文・名前の解決・型の検査（誤り 0・警告 0）"; }
        part <'PLN-23'> pln_23 : PlanTool { doc /* VS Code 拡張機能 SysML v2.0 Language Support */ :>> toolName = "VS Code 拡張機能 SysML v2.0 Language Support"; :>> toolVersion = "0.55.0（確かめたとき）"; :>> usage = "利用者が .sysml を開いて確かめる。誤り 0 を確かめたのは 0.55.0 のときで、入っている 0.56.0 には言語サーバーが無く、以降の版では実行していない（Design/README.md）"; }
        part <'PLN-24'> pln_24 : PlanTool { doc /* draw.io Desktop（コマンドライン） */ :>> toolName = "draw.io Desktop（コマンドライン）"; :>> toolVersion = "31.5.2"; :>> usage = "図（.drawio）の SVG・PNG への書き出し"; }
        part <'PLN-25'> pln_25 : PlanTool { doc /* Python 3.12（PyMuPDF・Pillow ほか） */ :>> toolName = "Python 3.12（PyMuPDF・Pillow ほか）"; :>> toolVersion = "3.12"; :>> usage = "データ（task/tools の Python）から文書・SysML・図を生成し、検査する"; }
        part <'PLN-26'> pln_26 : PlanTool { doc /* Git と GitHub（GitHub Pages） */ :>> toolName = "Git と GitHub（GitHub Pages）"; :>> toolVersion = "—"; :>> usage = "版管理（コミット・タグ rev-<版>）、公開（CC BY 4.0）、閲覧"; }
        part <'PLN-27'> pln_27 : PlanStep { doc /* 1 調べる・計画する */ :>> stageName = "1 調べる・計画する"; :>> tooling = "task/README.md・指示書・資料"; }
        part <'PLN-28'> pln_28 : PlanStep { doc /* 2 データを書く */ :>> stageName = "2 データを書く"; :>> tooling = "research/rev_<版>/ のデータ（Python）"; }
        part <'PLN-29'> pln_29 : PlanStep { doc /* 3 文書と SysML を生成する */ :>> stageName = "3 文書と SysML を生成する"; :>> tooling = "build_docs_<版>.py（rev_run.sh）"; }
        part <'PLN-30'> pln_30 : PlanStep { doc /* 4 図を生成する */ :>> stageName = "4 図を生成する"; :>> tooling = "build_drawio_<版>.py（rev_run.sh）"; }
        part <'PLN-31'> pln_31 : PlanStep { doc /* 5 モデルを検査する */ :>> stageName = "5 モデルを検査する"; :>> tooling = "verify_nx.py（Pilot）"; }
        part <'PLN-32'> pln_32 : PlanStep { doc /* 6 図を書き出す */ :>> stageName = "6 図を書き出す"; :>> tooling = "export_pages.py（draw.io）"; }
        part <'PLN-33'> pln_33 : PlanStep { doc /* 7 書き出しとリンクを検査する */ :>> stageName = "7 書き出しとリンクを検査する"; :>> tooling = "verify_nx.py --exports・check_links.py"; }
        part <'PLN-34'> pln_34 : PlanStep { doc /* 8 Design/ に反映する */ :>> stageName = "8 Design/ に反映する"; :>> tooling = "apply_rev.py（新構成への変換・件数の更新・REFERENCES.md）"; }
        part <'PLN-35'> pln_35 : PlanStep { doc /* 9 コミットとタグ */ :>> stageName = "9 コミットとタグ"; :>> tooling = "git commit・git tag rev-<版>"; }
        part <'PLN-36'> pln_36 : PlanStep { doc /* 10 プッシュ */ :>> stageName = "10 プッシュ"; :>> tooling = "git push（main とタグ）"; }
    }
}
