// SysML v2 テキスト：人間系の評価方法（3001 の要求・シャトルの記録・本パッケージの図表の対応）
// SSD-HVM-SYS-001 人間系の評価方法定義書（評価方法・人間系の関心事・人間系の図表の対応） の表から生成（lib/build_docs_bf.py・rev_bf/bfdata.py）。根拠の頁は SSD-HVM-SYS-001 にある。
package SSD_HVM_SYS_001 {
    doc /* SSD-HVM-SYS-001 人間系の評価方法定義書（評価方法・人間系の関心事・人間系の図表の対応）。図158 と同じ内容。人間系の関心事はビューポイント VP-13（SSD_VPT_SYS_001）の関心事 CN-14〜。 */
    private import ScalarValues::*;
    enum def EvaluationKind { enum byTest; enum byAnalysis; enum byInspection; enum byDemonstration; enum byHumanInTheLoop; }
    metadata def Evaluation { attribute kind : EvaluationKind; attribute shuttleRecord : Boolean; }
    metadata def AppliesTo { doc /* 評価方法を求める・使う 3001 の要求（照合表） */ }
    metadata def RealizedBy { doc /* 本パッケージで評価方法を後付けに行った図表のパッケージ */ }
    package Methods {
        doc /* 人間系の評価方法 */
        action def <'EVM-01'> Evm01 { doc /* 作業分析（マスタ作業リスト・機能の分担）：乗員と系の作業・下位作業、だれが行うか、使う機器、条件、頻度と時間、作業の重要度・依存を明らかにし、人と自動の分担、重要な乗員の作業を決める。 */ @Evaluation { kind = EvaluationKind::byAnalysis; shuttleRecord = true; } }
        action def <'EVM-02'> Evm02 { doc /* ヒューマンエラー解析（HEA）：作業の手順ごとに起こり得る人の誤り（不用意な操作・不実施・誤操作・不正確な操作・時機の誤り）とその結果を見つけ、防ぐ・起こりにくくして検出と回復を可能にする・影響を限る、の順で設計を変える。 */ @Evaluation { kind = EvaluationKind::byAnalysis; shuttleRecord = true; } }
        action def <'EVM-03'> Evm03 { doc /* 人を入れた反復試験（HITL）：設計と開発の全体で、使い勝手・操作性・作業負荷・状況認識・表示の設計・共通性の問題を早く見つけ、設計に返す。 */ @Evaluation { kind = EvaluationKind::byHumanInTheLoop; shuttleRecord = true; } }
        action def <'EVM-04'> Evm04 { doc /* 作業負荷の評価（Bedford・NASA-TLX）：作業の要求を満たすための知的・身体的な努力が、成績を下げない水準（過負荷も過少負荷も避ける）にあるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byHumanInTheLoop; shuttleRecord = true; } }
        action def <'EVM-05'> Evm05 { doc /* 使い勝手の評価（SUS・NMSUS）：想定の利用者が想定の目的を達する度合いを、有効さ（誤りの率・作業の成功）・効率（完了時間・最適な経路からのずれ）・満足（評定尺度）の3つで確かめる。 */ @Evaluation { kind = EvaluationKind::byHumanInTheLoop; shuttleRecord = true; } }
        action def <'EVM-06'> Evm06 { doc /* 人体寸法の適合の評価（届く範囲・視界・体格の範囲）：想定の乗員の全集団（体格・可動域・筋力・体重）が、機体・服・インタフェースに体が収まり、手が届き、見え、操作できるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byAnalysis; shuttleRecord = true; } }
        action def <'EVM-07'> Evm07 { doc /* 操縦性の評価（Cooper-Harper）：手動操縦の飛行経路と姿勢の制御で、機体の操縦性が Level 1（HQR 1〜3）・Level 2（HQR 4〜6）を満たすかを確かめる。 */ @Evaluation { kind = EvaluationKind::byHumanInTheLoop; shuttleRecord = true; } }
        action def <'EVM-08'> Evm08 { doc /* 騒音の管理計画（ANCP）：打上げ・アボート・軌道上・再突入・着陸後の各段階で、乗員の耳の位置の騒音が聴覚・通信・睡眠の限度を満たすかを確かめ、騒音を出す機器に限度を割り当てる。 */ @Evaluation { kind = EvaluationKind::byTest; shuttleRecord = true; } }
        action def <'EVM-09'> Evm09 { doc /* 居住容積の評価（機能容積・NHV）：乗員の人数と飛行日数に対して、作業・睡眠・食事・乗込み・退出などを安全に効率よく行える機能容積（正味の居住容積）があるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byHumanInTheLoop; shuttleRecord = true; } }
        action def <'EVM-10'> Evm10 { doc /* 照明の設計（照度・調光・まぶしさ）：軌道の日光の無い機内・機外の作業に要る照度、調光、まぶしさの抑え、非常照明が、想定の作業を支えるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byTest; shuttleRecord = true; } }
        action def <'EVM-11'> Evm11 { doc /* 乗員の時間の見積り（時間線の解析）：重要な作業・作業日・運動・睡眠の計画の時間が限度の中にあり、手順の作業が使える時間の中で終わるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byAnalysis; shuttleRecord = true; } }
        action def <'EVM-12'> Evm12 { doc /* 表示の文字・ラベルの読みやすさの評価（判読性）：文字・数字・記号・アイコン・ラベルが、想定の照明・振動・服とヘルメット・視角の条件で速く正しく読めるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byHumanInTheLoop; shuttleRecord = true; } }
        action def <'EVM-13'> Evm13 { doc /* 表示の書式とラベルの設計の標準（表示の標準・ラベル設計計画）：すべての表示とラベルの外観・操作・用語・ふるまいが一貫し、状況認識を与え作業負荷を下げるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byInspection; shuttleRecord = true; } }
        action def <'EVM-14'> Evm14 { doc /* 緊急脱出の評価（脱出の経路と時間）：射点・着陸後・飛行中の緊急時に、乗員が健康と安全を保てる時間の中で妨げなく脱出できるかを確かめる。 */ @Evaluation { kind = EvaluationKind::byDemonstration; shuttleRecord = true; } }
    }
    #AppliesTo dependency <'EVM-01>HSI-078'> from Methods::Evm01 to SSD_HSI_SYS_001::V2Criteria::V2_3006;
    #AppliesTo dependency <'EVM-01>HSI-088'> from Methods::Evm01 to SSD_HSI_SYS_001::V2Criteria::V2_10003;
    #RealizedBy dependency <'EVM-01>SSD-TSK-ORB-001'> from Methods::Evm01 to SSD_TSK_ORB_001;
    #AppliesTo dependency <'EVM-02>HSI-079'> from Methods::Evm02 to SSD_HSI_SYS_001::V2Criteria::V2_3102;
    #AppliesTo dependency <'EVM-02>HSI-096'> from Methods::Evm02 to SSD_HSI_SYS_001::V2Criteria::V2_5053;
    #AppliesTo dependency <'EVM-02>HSI-097'> from Methods::Evm02 to SSD_HSI_SYS_001::V2Criteria::V2_10027;
    #AppliesTo dependency <'EVM-02>HSI-098'> from Methods::Evm02 to SSD_HSI_SYS_001::V2Criteria::V2_10028;
    #AppliesTo dependency <'EVM-02>HSI-089'> from Methods::Evm02 to SSD_HSI_SYS_001::V2Criteria::V2_10002;
    #RealizedBy dependency <'EVM-02>SSD-HEA-ORB-001'> from Methods::Evm02 to SSD_HEA_ORB_001;
    #AppliesTo dependency <'EVM-03>HSI-080'> from Methods::Evm03 to SSD_HSI_SYS_001::V2Criteria::V2_3101;
    #AppliesTo dependency <'EVM-04>HSI-090'> from Methods::Evm04 to SSD_HSI_SYS_001::V2Criteria::V2_5007;
    #AppliesTo dependency <'EVM-04>HSI-092'> from Methods::Evm04 to SSD_HSI_SYS_001::V2Criteria::V2_10200;
    #AppliesTo dependency <'EVM-04>HSI-066'> from Methods::Evm04 to SSD_HSI_SYS_001::V1Criteria::V1_6001;
    #RealizedBy dependency <'EVM-04>SSD-TSK-ORB-001'> from Methods::Evm04 to SSD_TSK_ORB_001;
    #AppliesTo dependency <'EVM-05>HSI-087'> from Methods::Evm05 to SSD_HSI_SYS_001::V2Criteria::V2_10001;
    #AppliesTo dependency <'EVM-05>HSI-088'> from Methods::Evm05 to SSD_HSI_SYS_001::V2Criteria::V2_10003;
    #AppliesTo dependency <'EVM-05>HSI-089'> from Methods::Evm05 to SSD_HSI_SYS_001::V2Criteria::V2_10002;
    #RealizedBy dependency <'EVM-05>SSD-CIF-ORB-001'> from Methods::Evm05 to SSD_CIF_ORB_001;
    #AppliesTo dependency <'EVM-06>HSI-081'> from Methods::Evm06 to SSD_HSI_SYS_001::V2Criteria::V2_4102;
    #AppliesTo dependency <'EVM-06>HSI-082'> from Methods::Evm06 to SSD_HSI_SYS_001::V2Criteria::V2_4103;
    #AppliesTo dependency <'EVM-06>HSI-083'> from Methods::Evm06 to SSD_HSI_SYS_001::V2Criteria::V2_4104;
    #RealizedBy dependency <'EVM-06>SSD-EGR-ORB-001'> from Methods::Evm06 to SSD_EGR_ORB_001;
    #AppliesTo dependency <'EVM-07>HSI-094'> from Methods::Evm07 to SSD_HSI_SYS_001::V2Criteria::V2_10004;
    #AppliesTo dependency <'EVM-07>HSI-095'> from Methods::Evm07 to SSD_HSI_SYS_001::V2Criteria::V2_5052;
    #AppliesTo dependency <'EVM-08>HSI-156'> from Methods::Evm08 to SSD_HSI_SYS_001::V2Criteria::V2_6073;
    #AppliesTo dependency <'EVM-08>HSI-161'> from Methods::Evm08 to SSD_HSI_SYS_001::V2Criteria::V2_6078;
    #AppliesTo dependency <'EVM-08>HSI-162'> from Methods::Evm08 to SSD_HSI_SYS_001::V2Criteria::V2_6115;
    #AppliesTo dependency <'EVM-08>HSI-164'> from Methods::Evm08 to SSD_HSI_SYS_001::V2Criteria::V2_6080;
    #AppliesTo dependency <'EVM-08>HSI-170'> from Methods::Evm08 to SSD_HSI_SYS_001::V2Criteria::V2_6087;
    #AppliesTo dependency <'EVM-08>HSI-172'> from Methods::Evm08 to SSD_HSI_SYS_001::V2Criteria::V2_6088;
    #RealizedBy dependency <'EVM-08>SSD-EXP-ORB-001'> from Methods::Evm08 to SSD_EXP_ORB_001;
    #AppliesTo dependency <'EVM-09>HSI-261'> from Methods::Evm09 to SSD_HSI_SYS_001::V2Criteria::V2_8001;
    #AppliesTo dependency <'EVM-09>HSI-262'> from Methods::Evm09 to SSD_HSI_SYS_001::V2Criteria::V2_8005;
    #AppliesTo dependency <'EVM-09>HSI-263'> from Methods::Evm09 to SSD_HSI_SYS_001::V2Criteria::V2_8006;
    #RealizedBy dependency <'EVM-09>SSD-EGR-ORB-001'> from Methods::Evm09 to SSD_EGR_ORB_001;
    #AppliesTo dependency <'EVM-10>HSI-291'> from Methods::Evm10 to SSD_HSI_SYS_001::V2Criteria::V2_8051;
    #AppliesTo dependency <'EVM-10>HSI-295'> from Methods::Evm10 to SSD_HSI_SYS_001::V2Criteria::V2_8053;
    #AppliesTo dependency <'EVM-10>HSI-299'> from Methods::Evm10 to SSD_HSI_SYS_001::V2Criteria::V2_8056;
    #AppliesTo dependency <'EVM-10>HSI-300'> from Methods::Evm10 to SSD_HSI_SYS_001::V2Criteria::V2_8057;
    #AppliesTo dependency <'EVM-10>HSI-301'> from Methods::Evm10 to SSD_HSI_SYS_001::V2Criteria::V2_8058;
    #RealizedBy dependency <'EVM-10>SSD-HAB-ORB-001'> from Methods::Evm10 to SSD_HAB_ORB_001;
    #AppliesTo dependency <'EVM-11>HSI-037'> from Methods::Evm11 to SSD_HSI_SYS_001::V1Criteria::V1_4014;
    #AppliesTo dependency <'EVM-11>HSI-066'> from Methods::Evm11 to SSD_HSI_SYS_001::V1Criteria::V1_6001;
    #AppliesTo dependency <'EVM-11>HSI-202'> from Methods::Evm11 to SSD_HSI_SYS_001::V2Criteria::V2_7009;
    #AppliesTo dependency <'EVM-11>HSI-240'> from Methods::Evm11 to SSD_HSI_SYS_001::V2Criteria::V2_7060;
    #AppliesTo dependency <'EVM-11>HSI-346'> from Methods::Evm11 to SSD_HSI_SYS_001::V2Criteria::V2_9039;
    #RealizedBy dependency <'EVM-11>SSD-TSK-ORB-001'> from Methods::Evm11 to SSD_TSK_ORB_001;
    #AppliesTo dependency <'EVM-12>HSI-093'> from Methods::Evm12 to SSD_HSI_SYS_001::V2Criteria::V2_5051;
    #AppliesTo dependency <'EVM-12>HSI-424'> from Methods::Evm12 to SSD_HSI_SYS_001::V2Criteria::V2_10066;
    #AppliesTo dependency <'EVM-12>HSI-420'> from Methods::Evm12 to SSD_HSI_SYS_001::V2Criteria::V2_10048;
    #AppliesTo dependency <'EVM-12>HSI-539'> from Methods::Evm12 to SSD_HSI_SYS_001::V2Criteria::V2_12040;
    #RealizedBy dependency <'EVM-12>SSD-CIF-ORB-001'> from Methods::Evm12 to SSD_CIF_ORB_001;
    #AppliesTo dependency <'EVM-13>HSI-385'> from Methods::Evm13 to SSD_HSI_SYS_001::V2Criteria::V2_10005;
    #AppliesTo dependency <'EVM-13>HSI-386'> from Methods::Evm13 to SSD_HSI_SYS_001::V2Criteria::V2_10006;
    #AppliesTo dependency <'EVM-13>HSI-389'> from Methods::Evm13 to SSD_HSI_SYS_001::V2Criteria::V2_10150;
    #AppliesTo dependency <'EVM-13>HSI-390'> from Methods::Evm13 to SSD_HSI_SYS_001::V2Criteria::V2_10151;
    #AppliesTo dependency <'EVM-13>HSI-422'> from Methods::Evm13 to SSD_HSI_SYS_001::V2Criteria::V2_10060;
    #RealizedBy dependency <'EVM-13>SSD-CIF-ORB-001'> from Methods::Evm13 to SSD_CIF_ORB_001;
    #AppliesTo dependency <'EVM-14>HSI-268'> from Methods::Evm14 to SSD_HSI_SYS_001::V2Criteria::V2_8014;
    #AppliesTo dependency <'EVM-14>HSI-285'> from Methods::Evm14 to SSD_HSI_SYS_001::V2Criteria::V2_8041;
    #AppliesTo dependency <'EVM-14>HSI-542'> from Methods::Evm14 to SSD_HSI_SYS_001::V2Criteria::V2_12043;
    #AppliesTo dependency <'EVM-14>HSI-544'> from Methods::Evm14 to SSD_HSI_SYS_001::V2Criteria::V2_12045;
    #RealizedBy dependency <'EVM-14>SSD-EGR-ORB-001'> from Methods::Evm14 to SSD_EGR_ORB_001;
}
