// SysML v2 テキスト：運用・非常時の活動（キャビン減圧・EVA・ペイロードベイドア閉鎖不能）
// SSD-BEH-ORB-004 運用・非常時の活動定義書（キャビン減圧・EVA・ペイロードベイドア閉鎖不能） の節点・流れの表から生成（lib/build_docs_ac.py）。根拠の頁は SSD-BEH-ORB-004 にある。
package SSD_BEH_ORB_004 {
    doc /* SSD-BEH-ORB-004 運用・非常時の活動定義書（キャビン減圧・EVA・ペイロードベイドア閉鎖不能）。図86・図87・図88 と同じ節点と流れ。 */
    action def CabinLeakResponse {
        doc /* 図86 キャビン減圧処置 活動図：乗員室の圧力の低下（キャビンの漏れ）の処置 */
        attribute leakConfirmed : ScalarValues::Boolean { doc /* ガード：確認した */ }
        attribute timeAvailable : ScalarValues::Boolean { doc /* ガード：余裕がある */ }
        action AC_LK_01 { doc /* AC-LK-01 減圧の警報（クラクソン・MASTER ALARM・CABIN ATM 灯） */ }
        action AC_LK_02 { doc /* AC-LK-02 客室の逃し弁の隔離弁を閉じ、表示と計器で漏れを確かめる */ }
        decide DC_LK_01;
            if leakConfirmed then AC_LK_03;
            if not leakConfirmed then done;
        action AC_LK_03 { doc /* AC-LK-03 大きな漏れでは 8 psi の非常用調圧器が流量を与える */ }
        decide DC_LK_02;
            if timeAvailable then AC_LK_04;
            if not timeAvailable then AC_LK_07;
        action AC_LK_07 { doc /* AC-LK-07 上昇のアボートまたは緊急の軌道離脱（漏れ率で決める） */ }
        action AC_LK_04 { doc /* AC-LK-04 追加の漏れ隔離の手順を行う */ }
        action AC_LK_05 { doc /* AC-LK-05 減電する */ }
        action AC_LK_06 { doc /* AC-LK-06 軌道離脱の準備をする */ }
        merge MG_LK_01;
        first start then AC_LK_01;
        first AC_LK_01 then AC_LK_02;
        first AC_LK_02 then DC_LK_01;
        first AC_LK_03 then DC_LK_02;
        first AC_LK_04 then AC_LK_05;
        first AC_LK_05 then AC_LK_06;
        first AC_LK_06 then MG_LK_01;
        first AC_LK_07 then MG_LK_01;
        first MG_LK_01 then done;
    }
    action def EvaOperation {
        doc /* 図87 EVA 準備〜再与圧 活動図：EVA の前呼吸からエアロックの再与圧・EMU の再充填まで（10.2 psi キャビン） */
        attribute leakCheckPassed : ScalarValues::Boolean { doc /* ガード：合格 */ }
        attribute decompressionSickness : ScalarValues::Boolean { doc /* ガード：症状あり */ }
        action AC_EV_01 { doc /* AC-EV-01 10.2 psi キャビンで45分以上の初期前呼吸 */ }
        action AC_EV_02 { doc /* AC-EV-02 EMU を着用し主調圧器の漏れ点検（4.2〜4.4 psid） */ }
        action AC_EV_03 { doc /* AC-EV-03 窒素パージ（10.2 psi で8分） */ }
        action AC_EV_04 { doc /* AC-EV-04 エアロックの減圧を始める */ }
        action AC_EV_05 { doc /* AC-EV-05 5.0 psi で止めて EMU の漏れ点検 */ }
        decide DC_EV_01;
            if leakCheckPassed then AC_EV_07;
            if not leakCheckPassed then AC_EV_06;
        action AC_EV_06 { doc /* AC-EV-06 FAILED LEAK CHECK（5 PSI）の手順へ */ }
        action AC_EV_07 { doc /* AC-EV-07 0 psi まで減圧して EVA（安全テザーで常時つなぐ） */ }
        action AC_EV_08 { doc /* AC-EV-08 消耗品の残り30分までにエアロックへ進入 */ }
        action AC_EV_09 { doc /* AC-EV-09 再与圧（5.0 psi で気密を確かめる） */ }
        decide DC_EV_02;
            if not decompressionSickness then MG_EV_01;
            if decompressionSickness then AC_EV_10;
        action AC_EV_10 { doc /* AC-EV-10 BTA で処置（6〜8 psid、地上の医師が決める） */ }
        merge MG_EV_01;
        action AC_EV_11 { doc /* AC-EV-11 EMU の O2・水を再充填する */ }
        first start then AC_EV_01;
        first AC_EV_01 then AC_EV_02;
        first AC_EV_02 then AC_EV_03;
        first AC_EV_03 then AC_EV_04;
        first AC_EV_04 then AC_EV_05;
        first AC_EV_05 then DC_EV_01;
        first AC_EV_06 then done;
        first AC_EV_07 then AC_EV_08;
        first AC_EV_08 then AC_EV_09;
        first AC_EV_09 then DC_EV_02;
        first AC_EV_10 then MG_EV_01;
        first MG_EV_01 then AC_EV_11;
        first AC_EV_11 then done;
    }
    action def PayloadBayDoorCloseFailure {
        doc /* 図88 ペイロードベイドア閉鎖不能処置 活動図：軌道離脱の前にペイロードベイドアを閉じられないときの処置 */
        attribute closedInTime : ScalarValues::Boolean { doc /* ガード：閉じた */ }
        attribute atMostOneGangOpen : ScalarValues::Boolean { doc /* ガード：1つまで */ }
        action AC_PB_01 { doc /* AC-PB-01 ドアを閉じる（右舷を後に閉め、32 のラッチで保つ） */ }
        decide DC_PB_01;
            if not closedInTime then AC_PB_02;
            if closedInTime then done;
        action AC_PB_02 { doc /* AC-PB-02 駆動の指令を止め、故障とみなす */ }
        decide DC_PB_02;
            if not atMostOneGangOpen then AC_PB_04;
            if atMostOneGangOpen then AC_PB_03;
        action AC_PB_03 { doc /* AC-PB-03 そのまま突入できる（フェイルセーフ） */ }
        action AC_PB_04 { doc /* AC-PB-04 非常時 EVA でドア・ラッチを手動で処置する */ }
        action AC_PB_05 { doc /* AC-PB-05 ペイロードベイを軌道離脱の構成にして EVA を終える */ }
        merge MG_PB_01;
        first start then AC_PB_01;
        first AC_PB_01 then DC_PB_01;
        first AC_PB_02 then DC_PB_02;
        first AC_PB_03 then MG_PB_01;
        first AC_PB_04 then AC_PB_05;
        first AC_PB_05 then MG_PB_01;
        first MG_PB_01 then done;
    }
}
