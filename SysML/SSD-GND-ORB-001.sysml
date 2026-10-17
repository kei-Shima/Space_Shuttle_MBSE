// SysML v2 テキスト：地上処理・ターンアラウンド定義書（着陸後から打上げまでの活動、地上の機体の状態、段と秒読みの節目）
// SSD-GND-ORB-001 地上処理・ターンアラウンド定義書（着陸後から打上げまでの活動、地上の機体の状態、段と秒読みの節目） の表から生成（lib/build_docs_cm.py・rev_cm/cmdata.py）。根拠の頁は SSD-GND-ORB-001 にある。
package SSD_GND_ORB_001 {
    doc /* SSD-GND-ORB-001 地上処理・ターンアラウンド定義書（着陸後から打上げまでの活動、地上の機体の状態、段と秒読みの節目）。着陸後から打上げまでの地上処理を action def（図254）、地上の機体の状態を state def（図255）で示す。段・節目の表（図256）は SysML に置かない。要求への関係（導出・充足・検証）は張らず、トレースの外に置く。 */
    private import SSD_BLK_SYS_001::*;
    private import SSD_BEH_ORB_005::PhaseMode;
    // ---- 状態機械
    item def GndEv01 { doc /* 事象：JSC が機体の責任を KSC に引き渡す */ }
    item def GndEv02 { doc /* 事象：牽引車が OPF へ機体を曳き入れる（着陸後4時間以内に始まり6時間以内に完了） */ }
    item def GndEv03 { doc /* 事象：orbiter transfer system で OPF から VAB へ移す */ }
    item def GndEv04 { doc /* 事象：クローラ・トランスポータが MLP ごと機体を載せてロールアウトを始める */ }
    item def GndEv05 { doc /* 事象：MLP が射点の台座に据えられる（hard down） */ }
    item def GndEv06 { doc /* 事象：T-43 時間にカウントダウンが始まる（打上げの約3日前） */ }
    item def GndEv07 { doc /* 事象：T-27 時間に計画の保持に入る（火工品イニシエータ制御器の試験） */ }
    item def GndEv08 { doc /* 事象：カウントダウンが再開する（燃料電池の極低温反応物を搭載） */ }
    item def GndEv09 { doc /* 事象：T-19 時間に保持に入る（中間体アンビリカルの切り離し・音響抑制系の水タンクの充填） */ }
    item def GndEv10 { doc /* 事象：カウントダウンが再開する（3基のメインエンジンを推進薬の搭載と飛行に向けて準備する） */ }
    item def GndEv11 { doc /* 事象：T-11 時間に第3の保持に入る（未了の準備と不具合の調査） */ }
    item def GndEv12 { doc /* 事象：カウントダウンが再開し、回転整備構造を引き戻す */ }
    item def GndEv13 { doc /* 事象：外部タンクへの推進薬の充填が始まる（打上げ予定の約8時間前） */ }
    item def GndEv14 { doc /* 事象：最終の準備確認がそろい、ターミナル・シーケンスに入る */ }
    state def GroundProcessingStates {
        doc /* 図255 地上の機体の状態 状態遷移図：地上の機体の状態（着陸後から打上げの最終まで）（地上処理（GND）） */
        @PhaseMode { phase = "PH-1"; states = "GNDS-07,GNDS-08,GNDS-09,GNDS-10,GNDS-11,GNDS-12"; }
        @PhaseMode { phase = "PH-7"; states = "GNDS-01"; }
        attribute gndGuard01 : ScalarValues::Boolean { doc /* ガード：乗員が退出し、地上冷却が確立している */ }
        attribute gndGuard03 : ScalarValues::Boolean { doc /* ガード：重量と重心の測定が済んでいる */ }
        attribute gndGuard04 : ScalarValues::Boolean { doc /* ガード：VAB の点検が完了している（6日） */ }
        attribute gndGuard06 : ScalarValues::Boolean { doc /* ガード：最終準備（ペイロード・後部エンジン区画・火工品）が行われている */ }
        attribute gndGuard12 : ScalarValues::Boolean { doc /* ガード：問題がない */ }
        attribute gndGuard14 : ScalarValues::Boolean { doc /* ガード：乗員が搭乗し、最終の準備確認がそろっている */ }
        entry; then GNDS_01;
        state GNDS_01 { doc /* GNDS-01 着陸後・滑走路上（コンボイ展開・安全化・乗員退出。PH-7 と重なる） */ }
        state GNDS_02 { doc /* GNDS-02 引継ぎ・牽引（滑走路から OPF へ） */ }
        state GNDS_03 { doc /* GNDS-03 OPF で処理中 */ }
        state GNDS_04 { doc /* GNDS-04 VAB で結合・点検中 */ }
        state GNDS_05 { doc /* GNDS-05 クローラでロールアウト中 */ }
        state GNDS_06 { doc /* GNDS-06 射点で最終処理 */ }
        state GNDS_07 { doc /* GNDS-07 カウントダウン計数中（T-43 時間から。保持から戻る） */ }
        state GNDS_08 { doc /* GNDS-08 T-27 時間の保持 */ }
        state GNDS_09 { doc /* GNDS-09 T-19 時間の保持 */ }
        state GNDS_10 { doc /* GNDS-10 T-11 時間の保持（第3） */ }
        state GNDS_11 { doc /* GNDS-11 最終の数時間（外部タンクの充填・乗員搭乗・最終確認） */ }
        state GNDS_12 { doc /* GNDS-12 ターミナル・シーケンス以降（図95 の最終秒読み。PH-1 の末） */ }
        transition GNDT_01 first GNDS_01 accept GndEv01 if gndGuard01 then GNDS_02;
        transition GNDT_02 first GNDS_02 accept GndEv02 then GNDS_03;
        transition GNDT_03 first GNDS_03 accept GndEv03 if gndGuard03 then GNDS_04;
        transition GNDT_04 first GNDS_04 accept GndEv04 if gndGuard04 then GNDS_05;
        transition GNDT_05 first GNDS_05 accept GndEv05 then GNDS_06;
        transition GNDT_06 first GNDS_06 accept GndEv06 if gndGuard06 then GNDS_07;
        transition GNDT_07 first GNDS_07 accept GndEv07 then GNDS_08;
        transition GNDT_08 first GNDS_08 accept GndEv08 then GNDS_07;
        transition GNDT_09 first GNDS_07 accept GndEv09 then GNDS_09;
        transition GNDT_10 first GNDS_09 accept GndEv10 then GNDS_07;
        transition GNDT_11 first GNDS_07 accept GndEv11 then GNDS_10;
        transition GNDT_12 first GNDS_10 accept GndEv12 if gndGuard12 then GNDS_07;
        transition GNDT_13 first GNDS_07 accept GndEv13 then GNDS_11;
        transition GNDT_14 first GNDS_11 accept GndEv14 if gndGuard14 then GNDS_12;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def GroundProcessingStatesHolder :> LaunchProcessing {
        doc /* 地上処理（GND）（SSD-FD-EXT-001）は GroundProcessingStates の状態を持つ */
        exhibit state groundProcessingStates : GroundProcessingStates;
    }
    // ---- 活動（行動・判断・合流と流れ）
    action def GroundTurnaround {
        doc /* 図254 着陸後から打上げまでの地上処理 活動図：着陸後から打上げまでの地上処理（資料の順。施設は図256） */
        attribute noDamage : ScalarValues::Boolean { doc /* ガード：損傷なし */ }
        action AC_TA_01 { doc /* AC-TA-01 着陸後、コンボイが滑走路に展開して蒸気を測り、機体をパージして乗員が退出する */ }
        action AC_TA_02 { doc /* AC-TA-02 乗員の退出と地上冷却のあと JSC が KSC に責任を引き渡し、機体を OPF へ牽引する */ }
        action AC_TA_03 { doc /* AC-TA-03 OPF でエンジンを外し、タイル・構造・降着装置を点検し、重量と重心を測る */ }
        decide DC_TA_01;
            if noDamage then MG_TA_01;
            if not noDamage then AC_TA_04;
        merge MG_TA_01;
        action AC_TA_05 { doc /* AC-TA-05 VAB へ移し、MLP 上で外部タンク・SRB と結合して6日の点検を行う */ }
        action AC_TA_06 { doc /* AC-TA-06 クローラ・トランスポータで射点へ運び、MLP を台座に据える */ }
        action AC_TA_07 { doc /* AC-TA-07 射点でペイロード・後部エンジン区画・火工品の最終処理を行い、乗員が TCDT を行う */ }
        action AC_TA_08 { doc /* AC-TA-08 T-43 時間にカウントダウンを始め、T-27・T-19 時間の保持で試験・切り離し・搭載を行う */ }
        action AC_TA_09 { doc /* AC-TA-09 T-11 時間の保持で未了の準備と不具合の調査を行い、問題がなければ再開して回転整備構造を引き戻す */ }
        action AC_TA_10 { doc /* AC-TA-10 射点で外部タンクに約 500,000 gal の極低温推進薬を充填する（打上げ予定の約8時間前） */ }
        action AC_TA_11 { doc /* AC-TA-11 乗員が搭乗し、最終の確認とターミナル・シーケンス（図95）を経て打ち上げる */ }
        action AC_TA_04 { doc /* AC-TA-04 損傷を次の飛行の前に直す */ }
        first start then AC_TA_01;
        first AC_TA_01 then AC_TA_02;
        first AC_TA_02 then AC_TA_03;
        first AC_TA_03 then DC_TA_01;
        first AC_TA_04 then MG_TA_01;
        first MG_TA_01 then AC_TA_05;
        first AC_TA_05 then AC_TA_06;
        first AC_TA_06 then AC_TA_07;
        first AC_TA_07 then AC_TA_08;
        first AC_TA_08 then AC_TA_09;
        first AC_TA_09 then AC_TA_10;
        first AC_TA_10 then AC_TA_11;
        first AC_TA_11 then done;
    }
}
