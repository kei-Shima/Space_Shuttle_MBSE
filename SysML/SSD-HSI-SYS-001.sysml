// SysML v2 テキスト：人間系の基準（NASA-STD-3001）とシャトルの照合
// SSD-HSI-SYS-001 人間系の基準の照合表（NASA-STD-3001 によるシャトルの後付け評価） の表から生成（lib/build_docs_ay.py・rev_ay/aydata.py）。基準の値の出どころとシャトルの根拠の頁は SSD-HSI-SYS-001 にある。
package SSD_HSI_SYS_001 {
    doc /* SSD-HSI-SYS-001 人間系の基準の照合表（NASA-STD-3001 によるシャトルの後付け評価）。図143・144 と同じ内容。3001 は評価基準で、シャトルの要求の上位ではない。 */
    private import ScalarValues::*;
    enum def HsiVerdict { enum compliant; enum nonCompliant; enum insufficientData; enum notApplicable; }
    metadata def HsiEvaluation { attribute verdict : HsiVerdict; attribute row : String; attribute conflict : Boolean; }
    metadata def Evaluates { doc /* 基準の要求が評価するシャトルの既存の要求（評価の関係。derive・satisfy ではない） */ }
    package <'NASA-STD-3001 Vol. 1 Rev. C'> V1Criteria {
        doc /* NASA-STD-3001 Vol. 1 Rev. C の要求 */
        requirement def <'HSI-001'> V1_3000 {
            doc /* [V1 3000] 地上と飛行中の医療は米国などの医療水準に従い、航空医官・CMO を含む飛行医学のチームが管理する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-001"; conflict = false; }
        }
        requirement def <'HSI-002'> V1_3001 {
            doc /* [V1 3001] 乗員は OCHMO-STD-100.1A に従い医学・心理学の面で選抜し、毎年再認定する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-002"; conflict = false; }
        }
        requirement def <'HSI-003'> V1_3002 {
            doc /* [V1 3002] 栄養・ビタミンD・骨密度の画像・体力・歯科・予防接種・行動健康・放射線・HSP などの飛行前の予防を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-003"; conflict = false; }
        }
        requirement def <'HSI-004'> V1_3003 {
            doc /* [V1 3003] 飛行中の予防医療（健康の監視・栄養・運動・作業と休息・環境・減圧症の予防・聴覚・心理・起立耐性・SANS・免疫など）の訓練・能力・資源を備える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-004"; conflict = false; }
        }
        requirement def <'HSI-005'> V1_3004 {
            doc /* [V1 3004] 飛行中の診断・治療のための医療の構成・医療キット・診察・バイタルサイン・検査・処置・拘束・投薬・私的通信・医療データの送信・医療搬送・緩和ケアなどを備える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-005"; conflict = false; }
        }
        requirement def <'HSI-006'> V1_3007 {
            doc /* [V1 3007] 現場の医療能力を超える傷病に対し、より高い医療の場所への医療搬送を用意する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-006"; conflict = false; }
        }
        requirement def <'HSI-007'> V1_3008 {
            doc /* [V1 3008] 重い傷病の乗員を根治的医療施設（DMCF）などへ運ぶ計画と機体を用意する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-007"; conflict = false; }
        }
        requirement def <'HSI-008'> V1_3009 {
            doc /* [V1 3009] 救命が不可能で搬送もできないときのための飛行中の緩和ケアの能力を備える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-008"; conflict = false; }
        }
        requirement def <'HSI-009'> V1_3010 {
            doc /* [V1 3010] 治療の終了の基準を飛行の前に用意する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-009"; conflict = false; }
        }
        requirement def <'HSI-010'> V1_3050 {
            doc /* [V1 3050] 各飛行の前に乗員の死亡の計画を作って実行し、法的な管轄を決める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-010"; conflict = false; }
        }
        requirement def <'HSI-011'> V1_3051 {
            doc /* [V1 3051] 飛行中の乗員の死亡を医学的に判定し、死亡の宣告を法的に記録する手順を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-011"; conflict = false; }
        }
        requirement def <'HSI-012'> V1_3052 {
            doc /* [V1 3052] 死亡した乗員から飛行中に法医学の試料を取り、地球へ持ち帰る能力を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-012"; conflict = false; }
        }
        requirement def <'HSI-013'> V1_3053 {
            doc /* [V1 3053] 死亡した乗員の遺体を地球へ持ち帰る能力を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-013"; conflict = false; }
        }
        requirement def <'HSI-014'> V1_3054 {
            doc /* [V1 3054] 遺体をその場に置く・投棄するときは惑星保護の規則を守る。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-014"; conflict = false; }
        }
        requirement def <'HSI-015'> V1_3055 {
            doc /* [V1 3055] 死亡した乗員の家族・残った乗員・支援チームに飛行中と飛行後の行動健康の支援を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-015"; conflict = false; }
        }
        requirement def <'HSI-016'> V1_3012 {
            doc /* [V1 3012] 打上げ・着陸の場所に HSP・ATLS/ACLS 相当の医療・民間と DOD の救急医療を含む医療能力を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-016"; conflict = false; }
        }
        requirement def <'HSI-017'> V1_3013 {
            doc /* [V1 3013] 各打上げ・着陸の場所（正規と緊急）について根治的医療施設と医療の協定を結ぶ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-017"; conflict = false; }
        }
        requirement def <'HSI-018'> V1_3056 {
            doc /* [V1 3056] 飛行の前に大統領委員会の事故調査を支えるデータの収集の計画を用意する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-018"; conflict = false; }
        }
        requirement def <'HSI-019'> V1_3014 {
            doc /* [V1 3014] 各打上げ・着陸の場所から根治的医療施設へ乗員を運ぶ能力を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-019"; conflict = false; }
        }
        requirement def <'HSI-020'> V1_3015 {
            doc /* [V1 3015] 打上げ・着陸の医療チームの訓練の計画を認定する（長い打上げの姿勢・宇宙生理学・外傷・有毒物質・服の脱がせ方・機体の故障の傷害など）。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-020"; conflict = false; }
        }
        requirement def <'HSI-021'> V1_3016 {
            doc /* [V1 3016] 飛行後の医療（着陸直後と以後の診察・検査・再調整・休み・概日リズム・栄養・行動健康など）を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-021"; conflict = false; }
        }
        requirement def <'HSI-022'> V1_3017 {
            doc /* [V1 3017] 乗員ごとの段階的な飛行後の再調整の計画・資源を用意する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-022"; conflict = false; }
        }
        requirement def <'HSI-023'> V1_3018 {
            doc /* [V1 3018] 帰還した乗員の健康・行動健康を標準化した方法で長期に追跡する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-023"; conflict = false; }
        }
        requirement def <'HSI-024'> V1_4001 {
            doc /* [V1 4001] 微小重力の EVA のある飛行では、飛行中の VO2max を 32.9 ml/min/kg 以上に保つ。 */
            attribute criterion : String = "≥32.9 ml/min/kg（飛行中の VO2max）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-024"; conflict = false; }
        }
        requirement def <'HSI-025'> V1_4002 {
            doc /* [V1 4002] 天体の表面の EVA のある飛行では、飛行中の VO2max を 36.5 ml/min/kg 以上に保つ。 */
            attribute criterion : String = "≥36.5 ml/min/kg（飛行中の VO2max）";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-025"; conflict = false; }
        }
        requirement def <'HSI-026'> V1_4003 {
            doc /* [V1 4003] 飛行中の有酸素能力を飛行前の 80% 以上に保つ。 */
            attribute criterion : String = "≥80%（飛行前の有酸素能力に対し）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-026"; conflict = false; }
        }
        requirement def <'HSI-027'> V1_4004 {
            doc /* [V1 4004] 飛行後の再調整は VO2max を飛行前の値以上に戻すことを目指す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-027"; conflict = false; }
        }
        requirement def <'HSI-028'> V1_4005 {
            doc /* [V1 4005] 飛行前の感覚運動の機能は乗員の年齢・性別の臨床の正常値の内にある。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-028"; conflict = false; }
        }
        requirement def <'HSI-029'> V1_4006 {
            doc /* [V1 4006] 飛行中の任務適性の要求は重要な作業（機体の操縦・ロボット操作・EVA）の性質に沿って定める。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-029"; conflict = false; }
        }
        requirement def <'HSI-030'> V1_4007 {
            doc /* [V1 4007] 飛行中の任務適性は作業ごとの指標で評価する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-030"; conflict = false; }
        }
        requirement def <'HSI-031'> V1_4008 {
            doc /* [V1 4008] 感覚運動の能力の限度を指標ごとに運用上定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-031"; conflict = false; }
        }
        requirement def <'HSI-032'> V1_4009 {
            doc /* [V1 4009] 対策により感覚運動の機能を能力の限度内に保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-032"; conflict = false; }
        }
        requirement def <'HSI-033'> V1_4010 {
            doc /* [V1 4010] 飛行後の再調整は感覚運動の機能を基準値に戻すことを目指して監視する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-033"; conflict = false; }
        }
        requirement def <'HSI-034'> V1_4011 {
            doc /* [V1 4011] 飛行前・中・後の行動健康と認知の状態を行動健康の評価で臨床的に許容される値の内に保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-034"; conflict = false; }
        }
        requirement def <'HSI-035'> V1_4012 {
            doc /* [V1 4012] 飛行の終わりに認知の状態を評価・監視し、必要なら飛行前の値に戻す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-035"; conflict = false; }
        }
        requirement def <'HSI-036'> V1_4013 {
            doc /* [V1 4013] 飛行の終わりに行動健康・心理社会の評価と、仕事・家族・社会への復帰の支援を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-036"; conflict = false; }
        }
        requirement def <'HSI-037'> V1_4014 {
            doc /* [V1 4014] 重要な作業・作業日・運動・睡眠の計画の時間に限度を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-037"; conflict = false; }
        }
        requirement def <'HSI-038'> V1_4015 {
            doc /* [V1 4015] 打上げ前の血液・免疫の機能は健康な一般の人の正常範囲の内にある。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-038"; conflict = false; }
        }
        requirement def <'HSI-039'> V1_4016 {
            doc /* [V1 4016] 飛行中の対策で血液・免疫の値を正常範囲に保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-039"; conflict = false; }
        }
        requirement def <'HSI-040'> V1_4017 {
            doc /* [V1 4017] 対策と監視で免疫・血液の値を危険値の外に保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-040"; conflict = false; }
        }
        requirement def <'HSI-041'> V1_4018 {
            doc /* [V1 4018] 飛行後の評価と治療は血液・免疫の値を飛行前の基準値に戻すことを目指す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-041"; conflict = false; }
        }
        requirement def <'HSI-042'> V1_4019 {
            doc /* [V1 4019] 飛行前の栄養の状態を評価し、不足を打上げ前に補う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-042"; conflict = false; }
        }
        requirement def <'HSI-043'> V1_4020 {
            doc /* [V1 4020] 各乗員に年齢・性別・体重・身長・活動に基づいて計算した栄養とエネルギーの必要量の 100% を与える。 */
            attribute criterion : String = "計算した必要量の 100%";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-043"; conflict = false; }
        }
        requirement def <'HSI-044'> V1_4022 {
            doc /* [V1 4022] 飛行後の栄養の評価と治療は飛行前の基準に戻すことを目指す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-044"; conflict = false; }
        }
        requirement def <'HSI-045'> V1_4023 {
            doc /* [V1 4023] 飛行前の筋力と機能は Table 4.6-1 の値以上とする。 */
            attribute criterion : String = "Table 4.6-1 の値以上";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-045"; conflict = false; }
        }
        requirement def <'HSI-046'> V1_4024 {
            doc /* [V1 4024] 対策で飛行中の骨格筋の筋力を基準値の 80% 以上に保つ。 */
            attribute criterion : String = "≥80%（基準値に対し）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-046"; conflict = false; }
        }
        requirement def <'HSI-047'> V1_4025 {
            doc /* [V1 4025] 飛行後の再調整は筋力を基準値に戻すことを目指す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-047"; conflict = false; }
        }
        requirement def <'HSI-048'> V1_4026 {
            doc /* [V1 4026] 飛行前の股関節・腰椎の骨密度（DXA の T スコア）は年齢・性別などをそろえた集団と同等とする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-048"; conflict = false; }
        }
        requirement def <'HSI-049'> V1_4027 {
            doc /* [V1 4027] 対策で股関節・脊椎の骨密度を飛行前の 95% 以上、大腿骨頸部を 90% 以上に保つ。 */
            attribute criterion : String = "股関節・脊椎 ≥95%、大腿骨頸部 ≥90%（飛行前に対し）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-049"; conflict = false; }
        }
        requirement def <'HSI-050'> V1_4028 {
            doc /* [V1 4028] 飛行後の再調整は骨密度を飛行前の値に戻すことを目指す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-050"; conflict = false; }
        }
        requirement def <'HSI-051'> V1_4029 {
            doc /* [V1 4029] 乗員の被ばくは ALARA の原則で最小にする。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-051"; conflict = false; }
        }
        requirement def <'HSI-052'> V1_4030 {
            doc /* [V1 4030] 宇宙放射線による乗員の生涯の実効線量を 600 mSv 未満とする。 */
            attribute criterion : String = "<600 mSv（生涯の実効線量）";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-052"; conflict = false; }
        }
        requirement def <'HSI-053'> V1_4031 {
            doc /* [V1 4031] 設計基準の太陽粒子現象（1989年10月の現象の合計のスペクトル）から乗員を実効線量 250 mSv 未満に守る。 */
            attribute criterion : String = "<250 mSv（設計基準の SPE、実効線量）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-053"; conflict = false; }
        }
        requirement def <'HSI-054'> V1_4032 {
            doc /* [V1 4032] 原子力技術（RPS・核分裂炉など）による乗員の被ばくを ALARA で実効線量 20 mSv/飛行年未満とする。 */
            attribute criterion : String = "<20 mSv/飛行年（実効線量、期間で按分）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-054"; conflict = false; }
        }
        requirement def <'HSI-055'> V1_4033 {
            doc /* [V1 4033] 60 日を超えて乗員を支える居住系は GCR から乗員を 1.3 mSv/日（自由空間）・0.9 mSv/日（天体表面）未満に守る。 */
            attribute criterion : String = "<1.3 mSv/日（自由空間）、<0.9 mSv/日（天体表面）";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-055"; conflict = false; }
        }
        requirement def <'HSI-056'> V1_5001 {
            doc /* [V1 5001] 乗員・航空医官・管制の支援要員・地上の支援要員に医学訓練を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-056"; conflict = false; }
        }
        requirement def <'HSI-057'> V1_5002 {
            doc /* [V1 5002] 候補者の年から応急処置・CPR・高度生理学・CO2 暴露・宇宙の医学・心理・毒性学・医療機器・体力の訓練を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-057"; conflict = false; }
        }
        requirement def <'HSI-058'> V1_5003 {
            doc /* [V1 5003] CMO に任じた乗員に健康・宇宙生理学・行動健康・医療手順・機器・毒性学・対策の詳しい訓練を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-058"; conflict = false; }
        }
        requirement def <'HSI-059'> V1_3006 {
            doc /* [V1 3006] 機体ごとに少なくとも2人の乗員を CMO として訓練する。 */
            attribute criterion : String = "≥2 人/機体";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-059"; conflict = false; }
        }
        requirement def <'HSI-060'> V1_5004 {
            doc /* [V1 5004] 全要員の医学訓練を検証する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-060"; conflict = false; }
        }
        requirement def <'HSI-061'> V1_5005 {
            doc /* [V1 5005] 計画に割り当てた航空医官は計画ごとの訓練の計画に従い訓練と認定を受ける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-061"; conflict = false; }
        }
        requirement def <'HSI-062'> V1_5006 {
            doc /* [V1 5006] 管制センターの医療運用の要員は計画ごとの訓練・認定の計画に従い訓練・認定する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-062"; conflict = false; }
        }
        requirement def <'HSI-063'> V1_5007 {
            doc /* [V1 5007] 宇宙医学の知識が要る要員（フライトディレクタ・医療の相談役など）に監督付きの訓練を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-063"; conflict = false; }
        }
        requirement def <'HSI-064'> V1_5008 {
            doc /* [V1 5008] CDR・CMO・乗員・地上の要員・家族に心理社会の現象についての飛行前の説明と訓練を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-064"; conflict = false; }
        }
        requirement def <'HSI-065'> V1_5009 {
            doc /* [V1 5009] CO2 暴露・低酸素・遠心機・高性能機による微小重力の順応などの生理学的な訓練を飛行ごとに行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-065"; conflict = false; }
        }
        requirement def <'HSI-066'> V1_6001 {
            doc /* [V1 6001] 概日リズムの同調・作業と休息の評価・作業負荷の評価・対策を含む乗員の日程の計画と運用を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-066"; conflict = false; }
        }
        requirement def <'HSI-067'> V1_6002 {
            doc /* [V1 6002] 私的な医学通信を航空医官が決める頻度で定期に組む。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-067"; conflict = false; }
        }
        requirement def <'HSI-068'> V1_6003 {
            doc /* [V1 6003] 宇宙機の通信で送る私的な医学通信の情報は私的な通信として扱う。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-068"; conflict = false; }
        }
        requirement def <'HSI-069'> V1_6004 {
            doc /* [V1 6004] 乗員・地上の要員・家族に飛行の間ずっと行動健康の支援を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-069"; conflict = false; }
        }
        requirement def <'HSI-070'> V1_6006 {
            doc /* [V1 6006] 各 EVA の前に地上の医療要員が乗員の EVA の医学的な許可を出す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-070"; conflict = false; }
        }
        requirement def <'HSI-071'> V1_6008 {
            doc /* [V1 6008] 全段階の医療・健康の考え方を定める乗員の健康の運用構想（CHOC）文書を作る。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-071"; conflict = false; }
        }
        requirement def <'HSI-072'> V1_6010 {
            doc /* [V1 6010] 心理の私的な通信（PPC）を行動健康の担当者が決める頻度で定期に組む。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-072"; conflict = false; }
        }
        requirement def <'HSI-073'> V1_6011 {
            doc /* [V1 6011] 宇宙機の通信で送る心理の情報は私的な通信として扱う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-073"; conflict = false; }
        }
        requirement def <'HSI-074'> V1_6009 {
            doc /* [V1 6009] CHOC と NASA-STD-3001 に基づく医療・乗員の健康の技術要求文書を作る。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-074"; conflict = false; }
        }
        requirement def <'HSI-075'> V1_7001 {
            doc /* [V1 7001] 乗員の健康の監視の結果を傾向の解析ができる恒久的な取り出せる形で保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-075"; conflict = false; }
        }
        requirement def <'HSI-076'> V1_7002 {
            doc /* [V1 7002] 乗員の医学的な健康のデータの送信の方法は計画の医療運用の必要を満たす。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-076"; conflict = false; }
        }
        requirement def <'HSI-077'> V1_7003 {
            doc /* [V1 7003] 乗員の医学的な記録の扱い・保管・送信の方法を安全にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-077"; conflict = false; }
        }
    }
    package <'NASA-STD-3001 Vol. 2 Rev. F'> V2Criteria {
        doc /* NASA-STD-3001 Vol. 2 Rev. F の要求 */
        requirement def <'HSI-078'> V2_3006 {
            doc /* [V2 3006] 計画ごとに人間中心の作業分析を行い、システムと運用の設計を支える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-078"; conflict = false; }
        }
        requirement def <'HSI-079'> V2_3102 {
            doc /* [V2 3102] 計画ごとに作業に基づく人間の誤りの解析（HEA）を行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-079"; conflict = false; }
        }
        requirement def <'HSI-080'> V2_3101 {
            doc /* [V2 3101] 設計と開発の全体を通じて人を入れた試験（HITL）を繰り返し行う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-080"; conflict = false; }
        }
        requirement def <'HSI-081'> V2_4102 {
            doc /* [V2 4102] Appendix E の人体寸法と関節可動域の範囲の乗員がインタフェースに体が収まり、手が届き、見え、操作できる。 */
            attribute criterion : String = "Appendix E の E.3・E.4（例：身長 148.6〜194.6 cm）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-081"; conflict = false; }
        }
        requirement def <'HSI-082'> V2_4103 {
            doc /* [V2 4103] Appendix E の体重・体積・体表面積のデータに対応する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-082"; conflict = false; }
        }
        requirement def <'HSI-083'> V2_4104 {
            doc /* [V2 4104] 全飛行段階で、Appendix E の最も弱い筋力の乗員が操作できる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-083"; conflict = false; }
        }
        requirement def <'HSI-084'> V2_4105 {
            doc /* [V2 4105] 全飛行段階で、Appendix E の最大の筋力の乗員の力に壊れずに耐える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-084"; conflict = false; }
        }
        requirement def <'HSI-085'> V2_4013 {
            doc /* [V2 4013] 筋の持久力と疲労の影響を設計に入れる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-085"; conflict = false; }
        }
        requirement def <'HSI-086'> V2_4015 {
            doc /* [V2 4015] Vol. 1 の有酸素能力の乗員がシステムを操作できる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-086"; conflict = false; }
        }
        requirement def <'HSI-087'> V2_10001 {
            doc /* [V2 10001] 乗員のインタフェースは NMSUS の満足度の平均 85 以上とする。 */
            attribute criterion : String = "NMSUS 平均 ≥85";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-087"; conflict = false; }
        }
        requirement def <'HSI-088'> V2_10003 {
            doc /* [V2 10003] 乗員のインタフェースで作業を適切な時間と正確さで成功させられる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-088"; conflict = false; }
        }
        requirement def <'HSI-089'> V2_10002 {
            doc /* [V2 10002] 乗員のインタフェースの設計による誤りの率を Table 5.1-1 の最大値以下とする。 */
            attribute criterion : String = "破局的な誤り 0%、利用者・作業ごとの非破局的な誤り 5% など";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-089"; conflict = false; }
        }
        requirement def <'HSI-090'> V2_5007 {
            doc /* [V2 5007] 乗員のインタフェースは Bedford の作業負荷の評定を通常の作業で 3 以下、劣化時の作業で 6 以下とする。 */
            attribute criterion : String = "Bedford ≤3（通常）、≤6（劣化時）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-090"; conflict = false; }
        }
        requirement def <'HSI-091'> V2_5006 {
            doc /* [V2 5006] 効率よく作業するための状況認識を与え、失ったときに取り戻す手段を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-091"; conflict = false; }
        }
        requirement def <'HSI-092'> V2_10200 {
            doc /* [V2 10200] 乗員のインタフェースは Borg-CR10 の主観的運動強度を 4（やや強い）以下とする。 */
            attribute criterion : String = "Borg-CR10 ≤4";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-092"; conflict = false; }
        }
        requirement def <'HSI-093'> V2_5051 {
            doc /* [V2 5051] 乗員のインタフェースは想定の運用の条件で読み取れる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-093"; conflict = false; }
        }
        requirement def <'HSI-094'> V2_10004 {
            doc /* [V2 10004] 手動操縦が主の方式か自動が働かないとき、Cooper-Harper の Level 1（HQR 1〜3）の操縦性を示す。 */
            attribute criterion : String = "HQR 1〜3（Level 1）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-094"; conflict = false; }
        }
        requirement def <'HSI-095'> V2_5052 {
            doc /* [V2 5052] Level 1 を求めない他の手動操縦の場面では Level 2（HQR 4〜6）以上の操縦性を示す。 */
            attribute criterion : String = "HQR 4〜6 以上（Level 2）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-095"; conflict = false; }
        }
        requirement def <'HSI-096'> V2_5053 {
            doc /* [V2 5053] 人間の誤りを、防ぐ・起こりにくくして検出と回復を可能にする・影響を限る、の順で抑える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-096"; conflict = false; }
        }
        requirement def <'HSI-097'> V2_10027 {
            doc /* [V2 10027] 操作器の不用意な作動を防ぐ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-097"; conflict = false; }
        }
        requirement def <'HSI-098'> V2_10028 {
            doc /* [V2 10028] 人間の誤りとシステムの状態の不用意な変化を検出し、回復する能力を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-098"; conflict = false; }
        }
        requirement def <'HSI-099'> V2_6001 {
            doc /* [V2 6001] 環境・スーツの監視データを時間の傾向の解析に使える形式で提供する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-099"; conflict = false; }
        }
        requirement def <'HSI-100'> V2_6002 {
            doc /* [V2 6002] 乗員室の大気は希釈ガスを30%以上含む（残りは酸素）。 */
            attribute criterion : String = "≥30%（希釈ガス）";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-100"; conflict = false; }
        }
        requirement def <'HSI-101'> V2_6003 {
            doc /* [V2 6003] 吸気の酸素分圧（PIO2）を表 6.2-1 の範囲に保つ。 */
            attribute criterion : String = "PIO2 目標 145〜155 mmHg、上限 356 mmHg（無期限）、下限 127 mmHg（1時間平均、絶対 122 mmHg）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-101"; conflict = false; }
        }
        requirement def <'HSI-102'> V2_6004 {
            doc /* [V2 6004] 居住区画の CO2 分圧の1時間平均を 3 mmHg 以下に保つ。 */
            attribute criterion : String = "≤3 mmHg（1時間平均）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-102"; conflict = true; }
        }
        requirement def <'HSI-103'> V2_6006 {
            doc /* [V2 6006] 乗員がさらされる全圧を 5 psia を超え 15.0 psia 以下に保つ（無期限の暴露）。 */
            attribute criterion : String = "5 psia < 全圧 ≤ 15.0 psia";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-103"; conflict = false; }
        }
        requirement def <'HSI-104'> V2_6007 {
            doc /* [V2 6007] 1.0 psi を超える圧力の変化では、機内の全圧の変化率を 13.5 psi/min 以下にする。 */
            attribute criterion : String = "≤13.5 psi/min（>1.0 psi の変化）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-104"; conflict = false; }
        }
        requirement def <'HSI-105'> V2_6008 {
            doc /* [V2 6008] 計画ごとに DCS の対策を定め、地上の試験で DCS の確率 4% 未満（95% の信頼度）を示す（重い DCS なし、VGE を評価）。 */
            attribute criterion : String = "DCS の確率 <4%（95% の信頼度）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-105"; conflict = false; }
        }
        requirement def <'HSI-106'> V2_6150 {
            doc /* [V2 6150] 指令による圧力の変化中、乗員の停止の指示から 1 psi 以内で止め、その後に加圧・減圧を選べる。 */
            attribute criterion : String = "停止の指示から 1 psi 以内で停止";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-106"; conflict = false; }
        }
        requirement def <'HSI-107'> V2_6009 {
            doc /* [V2 6009] DCS を治療する能力を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-107"; conflict = false; }
        }
        requirement def <'HSI-108'> V2_6012 {
            doc /* [V2 6012] 乗員室の湿度・温度を図 6.2-2 の運用の限界の内に保つ（スーツ・上昇・再突入・着陸・着陸後を除く）。 */
            attribute criterion : String = "図 6.2-2 の範囲（左上の隅 18°C・75%、右下の隅 27°C・25%）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-108"; conflict = false; }
        }
        requirement def <'HSI-109'> V2_6013 {
            doc /* [V2 6013] 通常の運用で居住区画の湿度・温度を図 6.2-3 の性能の範囲に到達できる。 */
            attribute criterion : String = "図 6.2-3（理由の欄：20〜25°C・湿度 30〜60%）";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-109"; conflict = false; }
        }
        requirement def <'HSI-110'> V2_6014 {
            doc /* [V2 6014] 打上げ前・上昇・再突入・着陸後・非常時などで乗員の蓄熱を 4.7 kJ/kg と −4.1 kJ/kg の間に保つ（検証済みの体温調節モデルで計算）。 */
            attribute criterion : String = "4.7 kJ/kg > ΔQ > −4.1 kJ/kg";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-110"; conflict = false; }
        }
        requirement def <'HSI-111'> V2_6011 {
            doc /* [V2 6011] 着陸後の通常の運用で相対湿度を表 6.2-2 の範囲に抑える。 */
            attribute criterion : String = "RH 25〜75% は無期限、75〜85% は24時間、85〜95% は12時間、95% 超は8時間";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-111"; conflict = false; }
        }
        requirement def <'HSI-112'> V2_6151 {
            doc /* [V2 6151] 居住区画の温度の設定点を 0.5°C 以下の刻みで選べ、設定の誤差を ±1.5°C とする。 */
            attribute criterion : String = "刻み ≤0.5°C、誤差 ±1.5°C";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-112"; conflict = false; }
        }
        requirement def <'HSI-113'> V2_6152 {
            doc /* [V2 6152] 居住区画の温度を 1°C/時以上の速さで変えられる。 */
            attribute criterion : String = "≥1°C/時";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-113"; conflict = false; }
        }
        requirement def <'HSI-114'> V2_6017 {
            doc /* [V2 6017] 全圧・湿度・温度・換気・ppO2 を機内と遠隔の両方から制御できる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-114"; conflict = false; }
        }
        requirement def <'HSI-115'> V2_6020 {
            doc /* [V2 6020] 隔離できる居住区画ごとに、全圧・湿度・温度・ppO2・ppCO2 を自動で記録する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-115"; conflict = false; }
        }
        requirement def <'HSI-116'> V2_7041 {
            doc /* [V2 7041] 運動の区域で増える O2 の消費と熱・CO2・汗・臭気・粒子に環境制御が対応する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-116"; conflict = false; }
        }
        requirement def <'HSI-117'> V2_6021 {
            doc /* [V2 6021] 全圧・湿度・温度・ppO2・ppCO2 の実時間の値を機内と遠隔の乗員に表示する。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-117"; conflict = false; }
        }
        requirement def <'HSI-118'> V2_6022 {
            doc /* [V2 6022] 全圧・湿度・温度・ppO2・ppCO2 が安全の限界を外れたら機内と遠隔に警報を出す。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-118"; conflict = false; }
        }
        requirement def <'HSI-119'> V2_6023 {
            doc /* [V2 6023] 乗員室の微量の揮発性有機化合物（VOC）を監視し、限度に近づいたら機内と遠隔に警報を出す。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-119"; conflict = false; }
        }
        requirement def <'HSI-120'> V2_6024 {
            doc /* [V2 6024] 燃焼生成物（CO・HCN・HCl・HF または HX）を表 6.2-3 の範囲・精度で実時間に監視し、機内と遠隔に警報を出す。 */
            attribute criterion : String = "CO 5〜1000 ppm（±10%、1 ppm）、HCN・HCl・HF（または HX）2〜50 ppm（±25%、1 ppm）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-120"; conflict = false; }
        }
        requirement def <'HSI-121'> V2_6025 {
            doc /* [V2 6025] 毒物の放出・漏れなどの汚染の前・中・後に大気の化合物の濃度を監視・表示し、機内と遠隔に警報を出す。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-121"; conflict = false; }
        }
        requirement def <'HSI-122'> V2_6107 {
            doc /* [V2 6107] CO2 や熱のたまりができない換気を保つ（スーツ・毒物の事象・無人のときを除く）。 */
            attribute criterion : String = "（理由の欄）時間平均の風速 15〜120 ft/min";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-122"; conflict = false; }
        }
        requirement def <'HSI-123'> V2_6153 {
            doc /* [V2 6153] 天体の塵を監視し、限度に近づいたら警報を出す。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-123"; conflict = false; }
        }
        requirement def <'HSI-124'> V2_6050 {
            doc /* [V2 6050] 居住区画の大気のガス状汚染物質を JSC-20584 の SMAC 未満に抑える。 */
            attribute criterion : String = "SMAC（JSC-20584）未満";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-124"; conflict = true; }
        }
        requirement def <'HSI-125'> V2_6052 {
            doc /* [V2 6052] 大気の粒子状物質を全粉じん 3 mg/m3 未満、2.5 μm 未満の吸入性の画分を 1 mg/m3 未満に抑える。 */
            attribute criterion : String = "全粉じん <3 mg/m3、2.5 μm 未満 <1 mg/m3";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-125"; conflict = false; }
        }
        requirement def <'HSI-126'> V2_6108 {
            doc /* [V2 6108] 通常の居住区画の外の保守作業など、異常時の運用でも ppO2・ppCO2・相対湿度を制御する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-126"; conflict = false; }
        }
        requirement def <'HSI-127'> V2_6053 {
            doc /* [V2 6053] 10 μm 未満の月の塵を時間加重平均 0.3 mg/m3 未満に抑える（最長6か月の間欠の暴露）。 */
            attribute criterion : String = "<0.3 mg/m3（時間加重平均）";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-127"; conflict = false; }
        }
        requirement def <'HSI-128'> V2_6253 {
            doc /* [V2 6253] 10 μm 未満の火星の塵を時間加重平均 0.1 mg/m3 未満に抑える（最長30日の暴露）。 */
            attribute criterion : String = "<0.1 mg/m3（時間加重平均）";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-128"; conflict = false; }
        }
        requirement def <'HSI-129'> V2_6026 {
            doc /* [V2 6026] 使用の地点で、見た目・味が受け入れられ、化学的・微生物学的に安全な飲料水を提供する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-129"; conflict = false; }
        }
        requirement def <'HSI-130'> V2_6059 {
            doc /* [V2 6059] 居住区画の空気を微生物学的に安全に保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-130"; conflict = false; }
        }
        requirement def <'HSI-131'> V2_6046 {
            doc /* [V2 6046] 水質を監視し、限度に近づいたら機内と遠隔の乗員に知らせる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-131"; conflict = false; }
        }
        requirement def <'HSI-132'> V2_6051 {
            doc /* [V2 6051] 飲料水・衛生用水の微生物・大気・化学・非飲料水による汚染を防ぐ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-132"; conflict = false; }
        }
        requirement def <'HSI-133'> V2_6109 {
            doc /* [V2 6109] 表 6.3-1 の最小の水量（飲用 2.5 L/人日、衛生、洗眼、医療、EVA、水分負荷など）を提供する。 */
            attribute criterion : String = "飲用 ≥2.5 L/人日、衛生 ≥400 mL/人日、医療 ≥5 L/件、再突入の水分負荷 ≥1 L/人 など";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-133"; conflict = false; }
        }
        requirement def <'HSI-134'> V2_6110 {
            doc /* [V2 6110] 表 6.3-1 の用途ごとの水温（温水 68〜79°C、常温 18〜27°C、冷水 16°C 以下など）を提供する。 */
            attribute criterion : String = "温水 68〜79°C（155〜175°F）、常温 18〜27°C、冷水 ≤16°C（60°F）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-134"; conflict = false; }
        }
        requirement def <'HSI-135'> V2_6039 {
            doc /* [V2 6039] 食品の系に合う速さで水を出す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-135"; conflict = false; }
        }
        requirement def <'HSI-136'> V2_6040 {
            doc /* [V2 6040] あふれを防ぐため、食品の調理の指示と食事の日程に合う刻みで水を出せる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-136"; conflict = false; }
        }
        requirement def <'HSI-137'> V2_6047 {
            doc /* [V2 6047] 居住区画では毒性の区分 3 以下（JSC-26895）の化学物質だけを使う。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-137"; conflict = false; }
        }
        requirement def <'HSI-138'> V2_6048 {
            doc /* [V2 6048] 毒性の区分 4 の化学物質が居住区画に入らないようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-138"; conflict = false; }
        }
        requirement def <'HSI-139'> V2_6049 {
            doc /* [V2 6049] 居住区画に放出されても有害な物質に分解しない化学物質だけを使う。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-139"; conflict = false; }
        }
        requirement def <'HSI-140'> V2_6060 {
            doc /* [V2 6060] 生物のペイロードと、その手順・保護具を乗員の健康を守るよう定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-140"; conflict = false; }
        }
        requirement def <'HSI-141'> V2_6061 {
            doc /* [V2 6061] 乗員・ペイロード・機体・天体の環境の間の生物の相互汚染を防ぐか減らす。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-141"; conflict = false; }
        }
        requirement def <'HSI-142'> V2_6062 {
            doc /* [V2 6062] 毒性・環境の有害の情報を乗員と地上が飛行中ずっと使える形で提供する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-142"; conflict = false; }
        }
        requirement def <'HSI-143'> V2_6063 {
            doc /* [V2 6063] 放出された化学・生物の汚染を除くか隔離し、環境を安全に戻す手段を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-143"; conflict = false; }
        }
        requirement def <'HSI-144'> V2_6064 {
            doc /* [V2 6064] 持続（0.5 秒超）の並進加速度の大きさ・方向・時間を図 6.5-2〜7・表 6.5-1〜6 の限界より下に保つ。 */
            attribute criterion : String = "例：着座・非デコンディショニングの +Ax 上限 157 m/s2（5 s）・73.5 m/s2（300 s）";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-144"; conflict = false; }
        }
        requirement def <'HSI-145'> V2_6065 {
            doc /* [V2 6065] ヨー・ピッチ・ロールの回転の角速度を図 6.5-8・表 6.5-7 の限界より下に保つ。 */
            attribute criterion : String = "非デコンディショニング 6.6 rad/s（0.5 s）〜0.63 rad/s（700 s）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-145"; conflict = false; }
        }
        requirement def <'HSI-146'> V2_6066 {
            doc /* [V2 6066] 2 軸の同時回転による持続の回転加速度を 2 rad/s2 を超えないようにする。 */
            attribute criterion : String = "≤2 rad/s2（連成の回転）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-146"; conflict = false; }
        }
        requirement def <'HSI-147'> V2_6067 {
            doc /* [V2 6067] 一時（0.5 秒以下）の頭の回転加速度を表 6.5-8 の限界に抑える。 */
            attribute criterion : String = "中位の男性 2,200 rad/s2（通常）、3,800 rad/s2（異常時）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-147"; conflict = false; }
        }
        requirement def <'HSI-148'> V2_6069 {
            doc /* [V2 6069] 動的な段階の加速度による傷害のリスクを表 6.5-9 の範囲に抑える。 */
            attribute criterion : String = "表 6.5-9（例：95% 超の場合で軽傷 <4%、中等度 <1%、重傷・致命 <0.1%）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-148"; conflict = false; }
        }
        requirement def <'HSI-149'> V2_6070 {
            doc /* [V2 6070] 一時（0.5 秒以下）の並進加速度で Brinkley の傷害のリスクの指標 β を 1.0 以下にする。 */
            attribute criterion : String = "β ≤1.0（Low）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-149"; conflict = false; }
        }
        requirement def <'HSI-150'> V2_6111 {
            doc /* [V2 6111] 動的な段階とスーツの運用で、機体と乗員の加速度・運動の応答とメタデータを集め、傷害と結びつける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-150"; conflict = false; }
        }
        requirement def <'HSI-151'> V2_6112 {
            doc /* [V2 6112] 吊り下がり（宙づり）の状態にさらす時間を7分以下にする。 */
            attribute criterion : String = "≤7 分";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-151"; conflict = false; }
        }
        requirement def <'HSI-152'> V2_6113 {
            doc /* [V2 6113] 打上げの姿勢（あお向け・足を上げた姿勢）の時間を3時間15分以下にする（安全化・脱出を除く）。 */
            attribute criterion : String = "≤3 時間15分";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-152"; conflict = false; }
        }
        requirement def <'HSI-153'> V2_6154 {
            doc /* [V2 6154] 地表移動車（ESTV）の持続の並進加速度を表 6.5-10 の限界より下に保つ。 */
            attribute criterion : String = "表 6.5-10 の限界";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-153"; conflict = false; }
        }
        requirement def <'HSI-154'> V2_6155 {
            doc /* [V2 6155] 地表移動車（ESTV）の並進の加加速度を表 6.5-11 の限界に抑える。 */
            attribute criterion : String = "例：dAx/dt 294 m/s3";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-154"; conflict = false; }
        }
        requirement def <'HSI-155'> V2_6156 {
            doc /* [V2 6156] 鈍的な外力を図 6.5-9 の圧縮の深さと、骨格の部位で 18 lbf 未満に抑える。 */
            attribute criterion : String = "骨格の部位で <18 lbf";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-155"; conflict = false; }
        }
        requirement def <'HSI-156'> V2_6073 {
            doc /* [V2 6073] 打上げ・再突入・アボートの騒音の24時間の線量 D を 100 以下にする（8時間 85 dBA 相当）。 */
            attribute criterion : String = "D ≤100（8時間 85 dBA TWA 相当）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-156"; conflict = false; }
        }
        requirement def <'HSI-157'> V2_6074 {
            doc /* [V2 6074] 打上げ・再突入の乗員の耳の A 特性の音圧を最大 105 dBA に抑える。 */
            attribute criterion : String = "≤105 dBA";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-157"; conflict = false; }
        }
        requirement def <'HSI-158'> V2_6075 {
            doc /* [V2 6075] 打上げのアボートの乗員の耳の A 特性の音圧を最大 115 dBA に抑える。 */
            attribute criterion : String = "≤115 dBA";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-158"; conflict = false; }
        }
        requirement def <'HSI-159'> V2_6076 {
            doc /* [V2 6076] 打上げ・再突入・アボートの衝撃音を乗員の耳で 140 dB peak 未満にする。 */
            attribute criterion : String = "<140 dB peak SPL";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-159"; conflict = false; }
        }
        requirement def <'HSI-160'> V2_6077 {
            doc /* [V2 6077] 異常時・放送・与圧の弁・保守の A 特性の音圧を時間によらず 85 dBA 未満にする。 */
            attribute criterion : String = "<85 dBA（fast）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-160"; conflict = false; }
        }
        requirement def <'HSI-161'> V2_6078 {
            doc /* [V2 6078] 作業区域の連続騒音のオクターブ帯の音圧を NC-50 の曲線（表 6.6-3）以下にする。 */
            attribute criterion : String = "NC-50（63 Hz 71 dB、125 Hz 64、250 Hz 58、500 Hz 54、1 kHz 51、2 kHz 49、4 kHz 48、8 kHz 47 dB）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-161"; conflict = true; }
        }
        requirement def <'HSI-162'> V2_6115 {
            doc /* [V2 6115] 打上げ・再突入・アボート以外の24時間の騒音の線量 D を 100 以下にする（8時間 75 dBA、24時間 70 dBA 相当）。 */
            attribute criterion : String = "D ≤100（8時間 75 dBA TWA、24時間 70 dBA 相当）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-162"; conflict = true; }
        }
        requirement def <'HSI-163'> V2_6079 {
            doc /* [V2 6079] 30日を超える飛行では、乗員の個室・睡眠区画の連続騒音を NC-40 以下にする。 */
            attribute criterion : String = "NC-40（30日を超える飛行）";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-163"; conflict = false; }
        }
        requirement def <'HSI-164'> V2_6080 {
            doc /* [V2 6080] 8時間以下で動く機器の間欠騒音を 0.6 m で表 6.6-4 の時間ごとの上限に抑える。 */
            attribute criterion : String = "表 6.6-4（例：5分 ≤76 dBA、1分 ≤79 dBA、80 dBA 以上は不可）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-164"; conflict = false; }
        }
        requirement def <'HSI-165'> V2_6081 {
            doc /* [V2 6081] 警報の音の A 特性の音圧を受け手の位置で 95 dBA 未満にする。 */
            attribute criterion : String = "<95 dBA";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-165"; conflict = false; }
        }
        requirement def <'HSI-166'> V2_6082 {
            doc /* [V2 6082] 睡眠中の衝撃音・間欠音を背景より 10 dB 以下の上乗せに抑える（通信・警報を除く）。 */
            attribute criterion : String = "背景 +10 dB 以下";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-166"; conflict = false; }
        }
        requirement def <'HSI-167'> V2_6083 {
            doc /* [V2 6083] 打上げ・再突入・アボート以外の衝撃音を乗員の頭の位置で 140 dB peak 未満にする。 */
            attribute criterion : String = "<140 dB peak SPL";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-167"; conflict = false; }
        }
        requirement def <'HSI-168'> V2_6084 {
            doc /* [V2 6084] 狭帯域の成分・純音を、含まれるオクターブ帯の音圧より 10 dB 以上低くする。 */
            attribute criterion : String = "オクターブ帯の音圧より ≥10 dB 低い";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-168"; conflict = false; }
        }
        requirement def <'HSI-169'> V2_6085 {
            doc /* [V2 6085] 1〜20 Hz の超低周波の音圧を乗員の頭の位置で 150 dB 未満にする。 */
            attribute criterion : String = "<150 dB（1〜20 Hz）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-169"; conflict = false; }
        }
        requirement def <'HSI-170'> V2_6087 {
            doc /* [V2 6087] 乗員の健康・安全に必要なだけ、帯域全体と周波数ごとの音圧を監視・定量する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-170"; conflict = false; }
        }
        requirement def <'HSI-171'> V2_6106 {
            doc /* [V2 6106] 個人の音響機器が乗員の耳に作る A 特性の音圧を 115 dBA 以下にする。 */
            attribute criterion : String = "≤115 dBA（拡散音場に換算）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-171"; conflict = false; }
        }
        requirement def <'HSI-172'> V2_6088 {
            doc /* [V2 6088] 乗員の健康・安全に必要なだけ、乗員ごとの騒音の暴露を監視・定量する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-172"; conflict = false; }
        }
        requirement def <'HSI-173'> V2_6089 {
            doc /* [V2 6089] 打上げ前の 0.1〜0.5 Hz の振動（揺れ）を各軸 0.05 g RMS 未満にする（10分ごと）。 */
            attribute criterion : String = "<0.05 g（0.5 m/s2）RMS";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-173"; conflict = false; }
        }
        requirement def <'HSI-174'> V2_6090 {
            doc /* [V2 6090] 動的な段階の振動を表 6.7-1（10分 4 m/s2 RMS、1分 6 m/s2 RMS）以下にする。 */
            attribute criterion : String = "10分 4 m/s2 RMS、1分 6 m/s2 RMS";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-174"; conflict = false; }
        }
        requirement def <'HSI-175'> V2_6091 {
            doc /* [V2 6091] 睡眠以外の長時間の振動の線量を ISO 2631-1 の健康の注意域の下限以下にする。 */
            attribute criterion : String = "図 6.7-2（例：24時間で 0.25 m/s2）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-175"; conflict = false; }
        }
        requirement def <'HSI-176'> V2_6092 {
            doc /* [V2 6092] 睡眠中の 1〜80 Hz の振動を各軸 0.01 g RMS 未満にする（2分ごと）。 */
            attribute criterion : String = "<0.01 g（0.1 m/s2）RMS";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-176"; conflict = false; }
        }
        requirement def <'HSI-177'> V2_6093 {
            doc /* [V2 6093] 予想されるすべての振動の下で作業の性能を評価し、必要な性能を保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-177"; conflict = false; }
        }
        requirement def <'HSI-178'> V2_6094 {
            doc /* [V2 6094] 工具・機器による手の振動を ANSI/ASA S2.70 の1日の暴露の対策値以下にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-178"; conflict = false; }
        }
        requirement def <'HSI-179'> V2_6160 {
            doc /* [V2 6160] 地表移動車（ESTV）の振動を図 6.7-3・表 6.7-2 の限界以下にする。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-179"; conflict = false; }
        }
        requirement def <'HSI-180'> V2_6095 {
            doc /* [V2 6095] 計画として、乗員が Vol. 1 4.8 節の生涯の許容暴露限度（PEL）を超えないよう設計の要求と運用の制約を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-180"; conflict = false; }
        }
        requirement def <'HSI-181'> V2_6098 {
            doc /* [V2 6098] 計画として、設計の要求と検証に使う放射線の環境を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-181"; conflict = false; }
        }
        requirement def <'HSI-182'> V2_6161 {
            doc /* [V2 6161] 居住区画の銀河宇宙線・太陽高エネルギー粒子・捕捉放射線・中性子の被ばくを表 6.8-1 のとおり監視する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-182"; conflict = false; }
        }
        requirement def <'HSI-183'> V2_6162 {
            doc /* [V2 6162] 乗員ごとの銀河宇宙線・太陽高エネルギー粒子・捕捉放射線の被ばくを表 6.8-1 のとおり監視する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-183"; conflict = false; }
        }
        requirement def <'HSI-184'> V2_6163 {
            doc /* [V2 6163] 計画として、原子力の技術による乗員の被ばくを監視する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-184"; conflict = false; }
        }
        requirement def <'HSI-185'> V2_6164 {
            doc /* [V2 6164] 被ばくの線量率が決めた閾値を超えたら、監視系が乗員と運用チームに警報を出す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-185"; conflict = false; }
        }
        requirement def <'HSI-186'> V2_6165 {
            doc /* [V2 6165] 計画として、機外の宇宙天気（線量率・電子と陽子のフラックスのスペクトル）をその場で監視する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-186"; conflict = false; }
        }
        requirement def <'HSI-187'> V2_6102 {
            doc /* [V2 6102] 乗員の RF 電磁界の暴露を表 6.8-2・図 6.8-1 の最大許容暴露以下に保つ。 */
            attribute criterion : String = "300〜5000 MHz で電力密度 S = f/150 W/m2（30分平均）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-187"; conflict = false; }
        }
        requirement def <'HSI-188'> V2_6103 {
            doc /* [V2 6103] 乗員の目・皮膚と地上の人の目のレーザの暴露を ANSI Z136.1 の限度以下に保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-188"; conflict = false; }
        }
        requirement def <'HSI-189'> V2_6104 {
            doc /* [V2 6104] 180〜3000 nm の太陽光の暴露を表 6.8-3 の限度内に保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-189"; conflict = false; }
        }
        requirement def <'HSI-190'> V2_6117 {
            doc /* [V2 6117] 人工の光源（180〜3000 nm）の暴露を ACGIH 2022 以降の TLV 以下に抑える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-190"; conflict = false; }
        }
        requirement def <'HSI-191'> V2_7001 {
            doc /* [V2 7001] 食料の系はミッションの全段階で食品の安全と栄養を保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-191"; conflict = false; }
        }
        requirement def <'HSI-192'> V2_7002 {
            doc /* [V2 7002] ミッションの期間にわたり乗員が受け入れられる食料を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-192"; conflict = false; }
        }
        requirement def <'HSI-193'> V2_7003 {
            doc /* [V2 7003] 各乗員に平均 3,035 kcal/日（または EER の式で求めた値）の食料を与える。 */
            attribute criterion : String = "12,698 kJ（3,035 kcal）/人日、または Table 7.1-1 の EER";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-193"; conflict = false; }
        }
        requirement def <'HSI-194'> V2_7004 {
            doc /* [V2 7004] EVA を行う乗員には EVA 1時間あたり 200 kcal を追加する。 */
            attribute criterion : String = "+837 kJ（200 kcal）/EVA 時間";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-194"; conflict = false; }
        }
        requirement def <'HSI-195'> V2_7100 {
            doc /* [V2 7100] DRI（Table 7.1-2 の宇宙飛行の調整つき）の栄養組成の食事を与える。 */
            attribute criterion : String = "DRI（Table 7.1-2 の調整つき）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-195"; conflict = false; }
        }
        requirement def <'HSI-196'> V2_7110 {
            doc /* [V2 7110] 食品と包装の機体の系への影響を評価する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-196"; conflict = false; }
        }
        requirement def <'HSI-197'> V2_7111 {
            doc /* [V2 7111] プログラムは製品の寿命を通じて飛行用食品の安全を保つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-197"; conflict = false; }
        }
        requirement def <'HSI-198'> V2_7007 {
            doc /* [V2 7007] 食品と製造区域の微生物を Table 7.1-3 の限度以下にする。 */
            attribute criterion : String = "表面 3000 CFU/ft2 ほか（Table 7.1-3）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-198"; conflict = false; }
        }
        requirement def <'HSI-199'> V2_7112 {
            doc /* [V2 7112] 食品の製造施設は法令（FDA 相当）と GMP に従う。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-199"; conflict = false; }
        }
        requirement def <'HSI-200'> V2_7010 {
            doc /* [V2 7010] 機内の食料の収納・調理・食事の区域を、環境との相互汚染を防ぐよう設計・配置する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-200"; conflict = false; }
        }
        requirement def <'HSI-201'> V2_7008 {
            doc /* [V2 7008] 食料の調理・摂取・収納の能力を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-201"; conflict = false; }
        }
        requirement def <'HSI-202'> V2_7009 {
            doc /* [V2 7009] 割り当てた食事の時間内に全乗員の準備・調理・片付けができる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-202"; conflict = false; }
        }
        requirement def <'HSI-203'> V2_7011 {
            doc /* [V2 7011] 食品・飲料をそれぞれに合う温度に加温できる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-203"; conflict = false; }
        }
        requirement def <'HSI-204'> V2_7014 {
            doc /* [V2 7014] 食べ物のかけら・こぼれを収めて取り除ける。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-204"; conflict = false; }
        }
        requirement def <'HSI-205'> V2_7015 {
            doc /* [V2 7015] 食料の設備・器具・作業域の清掃と消毒の方法を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-205"; conflict = false; }
        }
        requirement def <'HSI-206'> V2_7012 {
            doc /* [V2 7012] 乗員が一緒に食事できる容積と設備を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-206"; conflict = false; }
        }
        requirement def <'HSI-207'> V2_7016 {
            doc /* [V2 7016] 各乗員に個人衛生の用品と、口腔衛生・身だしなみ・体の清拭の能力を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-207"; conflict = false; }
        }
        requirement def <'HSI-208'> V2_7017 {
            doc /* [V2 7017] 個人衛生の活動の間のプライバシーを与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-208"; conflict = false; }
        }
        requirement def <'HSI-209'> V2_7019 {
            doc /* [V2 7019] 個人衛生の設備・器具に環境と両立する消毒の方法を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-209"; conflict = false; }
        }
        requirement def <'HSI-210'> V2_7020 {
            doc /* [V2 7020] 男女の排泄物の収集・封じ込め・廃棄の能力を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-210"; conflict = false; }
        }
        requirement def <'HSI-211'> V2_7021 {
            doc /* [V2 7021] 排泄の系を食料の調理・食事の区域から隔てる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-211"; conflict = false; }
        }
        requirement def <'HSI-212'> V2_7022 {
            doc /* [V2 7022] 排泄の系を使う間のプライバシーを与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-212"; conflict = false; }
        }
        requirement def <'HSI-213'> V2_7023 {
            doc /* [V2 7023] 排泄の用品を各乗員に与え、使う乗員の手の届く所に置く。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-213"; conflict = false; }
        }
        requirement def <'HSI-214'> V2_7024 {
            doc /* [V2 7024] 下衣を完全に脱がずに排尿と排便を同時にできる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-214"; conflict = false; }
        }
        requirement def <'HSI-215'> V2_7025 {
            doc /* [V2 7025] 排泄の系から排泄物が漏れ出ないようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-215"; conflict = false; }
        }
        requirement def <'HSI-216'> V2_7026 {
            doc /* [V2 7026] 排泄の系の臭気を抑える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-216"; conflict = false; }
        }
        requirement def <'HSI-217'> V2_7027 {
            doc /* [V2 7027] 排泄のごみの収集を使う乗員の手の届く所に置く。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-217"; conflict = false; }
        }
        requirement def <'HSI-218'> V2_7029 {
            doc /* [V2 7029] 排泄の設備・器具を清掃・消毒・保守できる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-218"; conflict = false; }
        }
        requirement def <'HSI-219'> V2_7101 {
            doc /* [V2 7101] 30日を超えるミッションでは排泄と個人衛生に別の専用の容積を与える。 */
            attribute criterion : String = ">30 日のミッション";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-219"; conflict = false; }
        }
        requirement def <'HSI-220'> V2_7102 {
            doc /* [V2 7102] Table 7.3-1 の排泄物（便・下痢・尿・嘔吐物・月経血）を各ミッションの必要に応じて収集・封じ込めできる。 */
            attribute criterion : String = "尿 最大 1 L/回・50 mL/s、便 平均 150 g/回（1日2回）ほか（Table 7.3-1）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-220"; conflict = true; }
        }
        requirement def <'HSI-221'> V2_7085 {
            doc /* [V2 7085] 排便と排尿を同時にするときもすべての排泄物を収集・封じ込めできる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-221"; conflict = false; }
        }
        requirement def <'HSI-222'> V2_7035 {
            doc /* [V2 7035] 乗員1人あたり Vu = 3 + 2.5t リットルの尿を処理または廃棄のため収集・封じ込めできる。 */
            attribute criterion : String = "Vu = 3 + 2.5t L/人（t：日数）";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-222"; conflict = false; }
        }
        requirement def <'HSI-223'> V2_7038 {
            doc /* [V2 7038] 骨・筋肉・感覚運動・体温調節・有酸素の Vol. 1 の要求を満たす対抗措置を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-223"; conflict = false; }
        }
        requirement def <'HSI-224'> V2_7040 {
            doc /* [V2 7040] 割り当てた対抗措置の時間内に取出し・運用・収納ができる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-224"; conflict = false; }
        }
        requirement def <'HSI-225'> V2_7042 {
            doc /* [V2 7042] 無重量から重力への移行と Az の加速度での起立耐性の低下を抑える対抗措置を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-225"; conflict = false; }
        }
        requirement def <'HSI-226'> V2_7043 {
            doc /* [V2 7043] Vol. 1 の医療の要求を満たす医療の系を乗員に与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-226"; conflict = false; }
        }
        requirement def <'HSI-227'> V2_7045 {
            doc /* [V2 7045] 医師でない乗員でも医療器具を使える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-227"; conflict = false; }
        }
        requirement def <'HSI-228'> V2_7046 {
            doc /* [V2 7046] 治療の間、患者・処置者・用品の位置を決めて拘束する器具を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-228"; conflict = false; }
        }
        requirement def <'HSI-229'> V2_7115 {
            doc /* [V2 7115] 医療の処置・薬・用品の機体の系への影響を評価する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-229"; conflict = false; }
        }
        requirement def <'HSI-230'> V2_7050 {
            doc /* [V2 7050] 機器・用品の収納（場所・拘束・保護）を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-230"; conflict = false; }
        }
        requirement def <'HSI-231'> V2_7051 {
            doc /* [V2 7051] 個人の持ち物と被服の収納場所を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-231"; conflict = false; }
        }
        requirement def <'HSI-232'> V2_7052 {
            doc /* [V2 7052] 動かせるすべての物（食料・EVA 服・予備品など）に専用の収納場所を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-232"; conflict = false; }
        }
        requirement def <'HSI-233'> V2_7053 {
            doc /* [V2 7053] 乗員の作業を妨げない収納場所を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-233"; conflict = false; }
        }
        requirement def <'HSI-234'> V2_7054 {
            doc /* [V2 7054] 取り出して使う機器・用品・持ち物を拘束できる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-234"; conflict = false; }
        }
        requirement def <'HSI-235'> V2_7055 {
            doc /* [V2 7055] 使い方に応じ、重要で頻繁に使う物を最も取り出しやすくする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-235"; conflict = false; }
        }
        requirement def <'HSI-236'> V2_7056 {
            doc /* [V2 7056] 収納容器と拘束具を工具なしで操作できる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-236"; conflict = false; }
        }
        requirement def <'HSI-237'> V2_7057 {
            doc /* [V2 7057] 与圧服を着た乗員が収納に近づける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-237"; conflict = false; }
        }
        requirement def <'HSI-238'> V2_7058 {
            doc /* [V2 7058] 収納の識別の方式を在庫管理と両立させる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-238"; conflict = false; }
        }
        requirement def <'HSI-239'> V2_7059 {
            doc /* [V2 7059] ミッションを通じて物（有害なごみを含む）の場所と数を追う在庫管理を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-239"; conflict = false; }
        }
        requirement def <'HSI-240'> V2_7060 {
            doc /* [V2 7060] 在庫管理の作業を割り当てた時間内に終えられる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-240"; conflict = false; }
        }
        requirement def <'HSI-241'> V2_7061 {
            doc /* [V2 7061] 在庫管理の物の名称を手順・ラベルと一致させる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-241"; conflict = false; }
        }
        requirement def <'HSI-242'> V2_7062 {
            doc /* [V2 7062] 個別に識別が要る物に一意の名前を付ける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-242"; conflict = false; }
        }
        requirement def <'HSI-243'> V2_7063 {
            doc /* [V2 7063] 同一で互換の物には同一の名称を付ける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-243"; conflict = false; }
        }
        requirement def <'HSI-244'> V2_7064 {
            doc /* [V2 7064] 想定するすべてのごみを収め、臭気を抑え、漏れを防ぎ、廃棄するごみの管理の系を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-244"; conflict = false; }
        }
        requirement def <'HSI-245'> V2_7065 {
            doc /* [V2 7065] ミッションごとにごみの収納容積を割り当てる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-245"; conflict = false; }
        }
        requirement def <'HSI-246'> V2_7066 {
            doc /* [V2 7066] 乗員の作業を妨げないごみの収納を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-246"; conflict = false; }
        }
        requirement def <'HSI-247'> V2_7069 {
            doc /* [V2 7069] 有害な廃棄物の外側の封じ込めに危険の対応レベル（HRL）を表示する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-247"; conflict = false; }
        }
        requirement def <'HSI-248'> V2_7070 {
            doc /* [V2 7070] 各乗員に睡眠の容積・拘束・設備・環境の制御・プライバシーを与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-248"; conflict = false; }
        }
        requirement def <'HSI-249'> V2_7071 {
            doc /* [V2 7071] 長期（>30日）のミッションでは個人のプライバシーの設備を与える。 */
            attribute criterion : String = ">30 日のミッション";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-249"; conflict = false; }
        }
        requirement def <'HSI-250'> V2_7073 {
            doc /* [V2 7073] 部分重力と 1 g の環境で水平の寝る面を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-250"; conflict = false; }
        }
        requirement def <'HSI-251'> V2_7074 {
            doc /* [V2 7074] 清潔で丈夫な被服を乗員の必要に足りる量で与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-251"; conflict = false; }
        }
        requirement def <'HSI-252'> V2_7075 {
            doc /* [V2 7075] 被服を各乗員の専用にする。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-252"; conflict = false; }
        }
        requirement def <'HSI-253'> V2_7076 {
            doc /* [V2 7076] 被服を着る環境（温度・湿度）に対し着心地のよい寸法と素材にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-253"; conflict = false; }
        }
        requirement def <'HSI-254'> V2_7079 {
            doc /* [V2 7079] 清掃の要る場所に近づいて家事を行える容積を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-254"; conflict = false; }
        }
        requirement def <'HSI-255'> V2_7080 {
            doc /* [V2 7080] 打上げ前からある、または運用で生じる微粒子を点検・除去できるよう設計する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-255"; conflict = false; }
        }
        requirement def <'HSI-256'> V2_7081 {
            doc /* [V2 7081] 人が触れて微生物学的に安全な表面を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-256"; conflict = false; }
        }
        requirement def <'HSI-257'> V2_7082 {
            doc /* [V2 7082] 計画した方法で容易に清掃・消毒できる表面の材料にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-257"; conflict = false; }
        }
        requirement def <'HSI-258'> V2_7083 {
            doc /* [V2 7083] 有効で人に安全で、水・空気・廃棄物の系や材料と両立する清掃の材料を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-258"; conflict = false; }
        }
        requirement def <'HSI-259'> V2_6058 {
            doc /* [V2 6058] 機内の表面に結露が残らないようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-259"; conflict = false; }
        }
        requirement def <'HSI-260'> V2_7084 {
            doc /* [V2 7084] 個人とチームの娯楽の能力を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-260"; conflict = false; }
        }
        requirement def <'HSI-261'> V2_8001 {
            doc /* [V2 8001] 定めた居住容積と配置で乗員の作業と生活を収める。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-261"; conflict = false; }
        }
        requirement def <'HSI-262'> V2_8005 {
            doc /* [V2 8005] 居住の機能を共用の機器・干渉・作業の順序と両立性に基づいて配置する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-262"; conflict = false; }
        }
        requirement def <'HSI-263'> V2_8006 {
            doc /* [V2 8006] 互いに害する機能の区域を分ける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-263"; conflict = false; }
        }
        requirement def <'HSI-264'> V2_8007 {
            doc /* [V2 8007] 定めた鉛直の向きに対し空間とインタフェースの向きをそろえる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-264"; conflict = false; }
        }
        requirement def <'HSI-265'> V2_8010 {
            doc /* [V2 8010] あらかじめ定めた各場所を一意に示す標準の位置の符号の方式を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-265"; conflict = false; }
        }
        requirement def <'HSI-266'> V2_8011 {
            doc /* [V2 8011] 物や場所を探し、向きを知る助けを与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-266"; conflict = false; }
        }
        requirement def <'HSI-267'> V2_8013 {
            doc /* [V2 8013] 与圧服を着た乗員・着ていない乗員と機器が安全に妨げなく移れる機内の経路を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-267"; conflict = false; }
        }
        requirement def <'HSI-268'> V2_8014 {
            doc /* [V2 8014] ハザードの解析と対応の考え方に見合う、妨げの無い見える非常脱出の経路を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-268"; conflict = false; }
        }
        requirement def <'HSI-269'> V2_8020 {
            doc /* [V2 8020] ほかの乗員に助けられた乗員の乗込み・退出に対応する経路を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-269"; conflict = false; }
        }
        requirement def <'HSI-270'> V2_8022 {
            doc /* [V2 8022] ハッチと扉は両側から乗員1人が工具なしで操作できる。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-270"; conflict = false; }
        }
        requirement def <'HSI-271'> V2_11005 {
            doc /* [V2 11005] EVA の移動の経路にハザードが無いようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-271"; conflict = false; }
        }
        requirement def <'HSI-272'> V2_8023 {
            doc /* [V2 8023] ハッチのラッチを外すには別々の順序だった2つの操作を要する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-272"; conflict = false; }
        }
        requirement def <'HSI-273'> V2_8024 {
            doc /* [V2 8024] 通常の運用でハッチと扉を両側から乗員1人が60秒以内に操作できる。 */
            attribute criterion : String = "≤60 s（両側から、1人）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-273"; conflict = false; }
        }
        requirement def <'HSI-274'> V2_8025 {
            doc /* [V2 8025] ハッチと扉の操作の力を [V2 4104] の乗員の力の範囲に収める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-274"; conflict = false; }
        }
        requirement def <'HSI-275'> V2_8027 {
            doc /* [V2 8027] ハッチの開口を、与圧服の乗員や荷物を持つ乗員の通過を含むすべての移動に合う大きさ・形にする。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-275"; conflict = false; }
        }
        requirement def <'HSI-276'> V2_8028 {
            doc /* [V2 8028] 各ハッチの各側に、与圧服の有無を問わずその側から操作できる手動の均圧の能力を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-276"; conflict = false; }
        }
        requirement def <'HSI-277'> V2_8029 {
            doc /* [V2 8029] ハッチの向こう側の環境を電子機器を使わずに直接見る窓を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-277"; conflict = false; }
        }
        requirement def <'HSI-278'> V2_8030 {
            doc /* [V2 8030] 開いたハッチ・ハッチカバー・扉が人の流れを妨げない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-278"; conflict = false; }
        }
        requirement def <'HSI-279'> V2_8031 {
            doc /* [V2 8031] 与圧のハッチは閉と施錠の状態をハッチの両側に示す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-279"; conflict = false; }
        }
        requirement def <'HSI-280'> V2_8032 {
            doc /* [V2 8032] 与圧のハッチは差圧を両側から見えるように示す。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-280"; conflict = false; }
        }
        requirement def <'HSI-281'> V2_8033 {
            doc /* [V2 8033] 想定する乗員の作業に拘束具を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-281"; conflict = false; }
        }
        requirement def <'HSI-282'> V2_8101 {
            doc /* [V2 8101] ハッチの開口にケーブル・ダクトなどを通したままにしない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-282"; conflict = false; }
        }
        requirement def <'HSI-283'> V2_8038 {
            doc /* [V2 8038] 拘束具と移動補助具を標準化し、見分けやすくし、動き始め・止まり・向きの変更を助ける位置に置く。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-283"; conflict = false; }
        }
        requirement def <'HSI-284'> V2_8040 {
            doc /* [V2 8040] 与圧服の有無を問わず、助けられた乗込み・退出の移動補助具を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-284"; conflict = false; }
        }
        requirement def <'HSI-285'> V2_8041 {
            doc /* [V2 8041] ほかの乗員・地上の人の助けなしの乗込み・退出・脱出の移動補助具を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-285"; conflict = false; }
        }
        requirement def <'HSI-286'> V2_8042 {
            doc /* [V2 8042] 想定する与圧服・普段着のすべての作業に移動補助具を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-286"; conflict = false; }
        }
        requirement def <'HSI-287'> V2_8043 {
            doc /* [V2 8043] 想定する乗員の作業に妨げの無い視野の窓を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-287"; conflict = false; }
        }
        requirement def <'HSI-288'> V2_8045 {
            doc /* [V2 8045] 窓の光学の性質を乗員の作業の要に見合わせる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-288"; conflict = false; }
        }
        requirement def <'HSI-289'> V2_8049 {
            doc /* [V2 8049] 各窓に外の光を防ぐ手段を設け、窓から 0.5 m で機内を 2.0 lux まで下げられる。 */
            attribute criterion : String = "≤2.0 lux（窓から 0.5 m）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-289"; conflict = false; }
        }
        requirement def <'HSI-290'> V2_8050 {
            doc /* [V2 8050] 日常に使う窓の付属品は乗員1人が操作でき、工具なしで外し・付けられる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-290"; conflict = false; }
        }
        requirement def <'HSI-291'> V2_8051 {
            doc /* [V2 8051] 軌道の日光の無い機内・機外の作業に Table 8.7-1 以上の照度を与える。 */
            attribute criterion : String = "移動・収納 ≥108 lux、全般水平 ≥350 lux、医療・作業 ≥750 lux、睡眠 ≤0.02 lux ほか（Table 8.7-1）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-291"; conflict = false; }
        }
        requirement def <'HSI-292'> V2_8103 {
            doc /* [V2 8103] 外の光を弱め、照明の構成を補う対抗措置を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-292"; conflict = false; }
        }
        requirement def <'HSI-293'> V2_8104 {
            doc /* [V2 8104] 日向と日陰がある作業域で、日陰の対比を最大の表面輝度の2桁以内に下げる。 */
            attribute criterion : String = "2桁以内（最大の表面輝度に対し）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-293"; conflict = false; }
        }
        requirement def <'HSI-294'> V2_8105 {
            doc /* [V2 8105] 天体の表面の運用で目標の確認を助ける発光・受動の標識を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-294"; conflict = false; }
        }
        requirement def <'HSI-295'> V2_8053 {
            doc /* [V2 8053] 全電力の喪失のとき視界を保つ非常照明（機内・機外）を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-295"; conflict = false; }
        }
        requirement def <'HSI-296'> V2_8059 {
            doc /* [V2 8059] 色の見分けが要る作業の白色照明の色度を CCT 2700〜6500 K の範囲に入れる。 */
            attribute criterion : String = "CCT 2700〜6500 K（ANSI C78.377）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-296"; conflict = false; }
        }
        requirement def <'HSI-297'> V2_8060 {
            doc /* [V2 8060] 色の見分けが要る作業の白色照明の演色（Rf）を 90±10 にする。 */
            attribute criterion : String = "Rf 90±10（IES TM-30）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-297"; conflict = false; }
        }
        requirement def <'HSI-298'> V2_8055 {
            doc /* [V2 8055] 概日リズムのため Table 8.7-2 の光を与える。 */
            attribute criterion : String = "覚醒時 melanopic EDI ≥250 lux・DER ≥0.7、就寝前 8±2 lux・DER ≤0.3（Table 8.7-2）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-298"; conflict = false; }
        }
        requirement def <'HSI-299'> V2_8056 {
            doc /* [V2 8056] 照明の系に入切の操作を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-299"; conflict = false; }
        }
        requirement def <'HSI-300'> V2_8057 {
            doc /* [V2 8057] 機内と機外の照明を調光できるようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-300"; conflict = false; }
        }
        requirement def <'HSI-301'> V2_8058 {
            doc /* [V2 8058] 周りの面・機器・照明を合わせて直接・間接のまぶしさの影響を抑える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-301"; conflict = false; }
        }
        requirement def <'HSI-302'> V2_8106 {
            doc /* [V2 8106] 天体表面の移動車（ESTV）の操作盤と表示の照明と日光の減衰を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-302"; conflict = false; }
        }
        requirement def <'HSI-303'> V2_9001 {
            doc /* [V2 9001] 似た機能の機器は乗員とのインタフェースを共通にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-303"; conflict = false; }
        }
        requirement def <'HSI-304'> V2_9002 {
            doc /* [V2 9002] 形が似て機能が違う機器は見分けやすく、物理的に互換にしない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-304"; conflict = false; }
        }
        requirement def <'HSI-305'> V2_9003 {
            doc /* [V2 9003] 作業場所は日常作業の工具・機器にすぐ手が届くようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-305"; conflict = false; }
        }
        requirement def <'HSI-306'> V2_9004 {
            doc /* [V2 9004] 乗員が扱う機器は訓練の時間を最小にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-306"; conflict = false; }
        }
        requirement def <'HSI-307'> V2_9101 {
            doc /* [V2 9101] 系は乗員への物理的なハザードを最小にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-307"; conflict = false; }
        }
        requirement def <'HSI-308'> V2_9110 {
            doc /* [V2 9110] 保守の工具・試験機器の使い方を含む飛行中の訓練・復習を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-308"; conflict = false; }
        }
        requirement def <'HSI-309'> V2_9005 {
            doc /* [V2 9005] 可動部から乗員を守る。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-309"; conflict = false; }
        }
        requirement def <'HSI-310'> V2_9006 {
            doc /* [V2 9006] 絡まり・引っかかりなどの巻き込みから乗員を守る。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-310"; conflict = false; }
        }
        requirement def <'HSI-311'> V2_9007 {
            doc /* [V2 9007] 蓄えた位置エネルギーを乗員を傷つける形で放出しない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-311"; conflict = false; }
        }
        requirement def <'HSI-312'> V2_9008 {
            doc /* [V2 9008] 急な加速度・衝突のとき、機器の取付けと居住区画は飛散物・構造の崩壊から乗員を守る。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-312"; conflict = false; }
        }
        requirement def <'HSI-313'> V2_9009 {
            doc /* [V2 9009] 素肌が触れうる固定・手持ちの機器の角と辺を Table 9.3-1 の半径に丸める。 */
            attribute criterion : String = "厚さ t に応じ角の半径 6.5〜13 mm、辺の半径 1.5〜3.0 mm または全周の丸め";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-313"; conflict = false; }
        }
        requirement def <'HSI-314'> V2_9010 {
            doc /* [V2 9010] 機能上鋭い物は使わないとき乗員・機器を傷つけないようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-314"; conflict = false; }
        }
        requirement def <'HSI-315'> V2_9011 {
            doc /* [V2 9011] ルースの機器の角と辺を質量に応じ Table 9.3-2 の半径以上に丸める。 */
            attribute criterion : String = "質量に応じ辺の半径 0.3〜3.5 mm、角の半径 0.5〜13.0 mm";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-315"; conflict = false; }
        }
        requirement def <'HSI-316'> V2_9012 {
            doc /* [V2 9012] 露出面にバリが無いようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-316"; conflict = false; }
        }
        requirement def <'HSI-317'> V2_9013 {
            doc /* [V2 9013] 挟み込みの箇所は覆うなどしてけがを防ぐ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-317"; conflict = false; }
        }
        requirement def <'HSI-318'> V2_9016 {
            doc /* [V2 9016] 運ぶ・交換する物は、最も動きにくい装備でもつかんで運べる手段を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-318"; conflict = false; }
        }
        requirement def <'HSI-319'> V2_9102 {
            doc /* [V2 9102] 素肌が触れる面は皮膚温度を傷害の限界（≥49°C・≤0°C）にしない。 */
            attribute criterion : String = "皮膚温度 ≥49°C または ≤0°C にしない";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-319"; conflict = false; }
        }
        requirement def <'HSI-320'> V2_9103 {
            doc /* [V2 9103] 素肌が触れる面は皮膚温度を痛みの範囲（43〜49°C、0〜15°C）に入れない。 */
            attribute criterion : String = "43°C ≤ T皮膚 < 49°C、0°C < T皮膚 ≤ 15°C に入れない";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-320"; conflict = false; }
        }
        requirement def <'HSI-321'> V2_9017 {
            doc /* [V2 9017] 乗員が電気回路の電力を制御できる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-321"; conflict = false; }
        }
        requirement def <'HSI-322'> V2_9018 {
            doc /* [V2 9018] 回路の非通電の状態を乗員の視野の中に表示する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-322"; conflict = false; }
        }
        requirement def <'HSI-323'> V2_9019 {
            doc /* [V2 9019] 通常の接触で乗員に流れる電流を DC 0.4 mA・AC 0.2 mA（ピーク）以下にする。 */
            attribute criterion : String = "DC ≤0.4 mA、AC ≤0.2 mA（ピーク）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-323"; conflict = false; }
        }
        requirement def <'HSI-324'> V2_9020 {
            doc /* [V2 9020] あらゆる状況で乗員に流れる電流を DC 40 mA・AC 8 mA（ピーク）以下にする。 */
            attribute criterion : String = "DC ≤40 mA、AC ≤8 mA（ピーク）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-324"; conflict = false; }
        }
        requirement def <'HSI-325'> V2_9021 {
            doc /* [V2 9021] 驚愕反応のありうる重要な作業中は DC 2 mA・AC 0.5 mA 以下にする。 */
            attribute criterion : String = "DC ≤2 mA、AC ≤0.5 mA";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-325"; conflict = false; }
        }
        requirement def <'HSI-326'> V2_9022 {
            doc /* [V2 9022] 電流の限界の電圧の計算に IEC 60479-1 の5パーセンタイルの体インピーダンスを使う。 */
            attribute criterion : String = "IEC 60479-1 の5パーセンタイルの体インピーダンス";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-326"; conflict = false; }
        }
        requirement def <'HSI-327'> V2_9023 {
            doc /* [V2 9023] 生体計測・医療機器の漏れ電流を Table 9.3-11 の値未満にする。 */
            attribute criterion : String = "外部接触 DC〜1 kHz：通常 0.1 mA・単一故障 0.5 mA、内部接触：通常 0.01 mA・単一故障 0.05 mA（絶縁型）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-327"; conflict = false; }
        }
        requirement def <'HSI-328'> V2_9024 {
            doc /* [V2 9024] 機器は蓄えた液体・気体を乗員を傷つける形で放出しない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-328"; conflict = false; }
        }
        requirement def <'HSI-329'> V2_9025 {
            doc /* [V2 9025] 機器の液体の隔離・遮断の手段を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-329"; conflict = false; }
        }
        requirement def <'HSI-330'> V2_9026 {
            doc /* [V2 9026] 運用・保守で漏れうる液体の封じ込めと処分の手段を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-330"; conflict = false; }
        }
        requirement def <'HSI-331'> V2_9027 {
            doc /* [V2 9027] 機器は乗員が意図して・意図せずに加える力から守られ、耐える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-331"; conflict = false; }
        }
        requirement def <'HSI-332'> V2_9028 {
            doc /* [V2 9028] クローズアウトパネルなどで機器を居住区画の乗員から隔てる。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-332"; conflict = false; }
        }
        requirement def <'HSI-333'> V2_9029 {
            doc /* [V2 9029] 機器を誤って取り付けられない設計にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-333"; conflict = false; }
        }
        requirement def <'HSI-334'> V2_9030 {
            doc /* [V2 9030] コネクタの間隔は予想される服装で着脱できるようにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-334"; conflict = false; }
        }
        requirement def <'HSI-335'> V2_9031 {
            doc /* [V2 9031] コネクタは最も動きにくい装備でも工具なしで着脱できる。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-335"; conflict = false; }
        }
        requirement def <'HSI-336'> V2_9032 {
            doc /* [V2 9032] ケーブル・配管・アンビリカルのコネクタは誤結合と着脱の損傷を防ぐ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-336"; conflict = false; }
        }
        requirement def <'HSI-337'> V2_9033 {
            doc /* [V2 9033] 着脱で漏れ・感電・蓄積エネルギーの放出の危険にさらさない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-337"; conflict = false; }
        }
        requirement def <'HSI-338'> V2_9034 {
            doc /* [V2 9034] ケーブル・電線・ホースの位置・保護・配線・保持を管理し、作業と安全を妨げない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-338"; conflict = false; }
        }
        requirement def <'HSI-339'> V2_9111 {
            doc /* [V2 9111] 保守の対象ごとに環境・工具・技能・アクセスなどを考えた保守の運用構想を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-339"; conflict = false; }
        }
        requirement def <'HSI-340'> V2_9112 {
            doc /* [V2 9112] 修理・交換は影響が出るまでの時間の余裕の中で終える設計にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-340"; conflict = false; }
        }
        requirement def <'HSI-341'> V2_9113 {
            doc /* [V2 9113] 保守の間の損傷を防ぐ設計にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-341"; conflict = false; }
        }
        requirement def <'HSI-342'> V2_9114 {
            doc /* [V2 9114] すべての飛行のハードウェア・ソフトウェアを飛行中の予防・修正の保守と点検がしやすい設計にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-342"; conflict = false; }
        }
        requirement def <'HSI-343'> V2_9036 {
            doc /* [V2 9036] 最も動きにくい装備でも日常・計画外の保守を安全・効率よく行える手段を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-343"; conflict = false; }
        }
        requirement def <'HSI-344'> V2_9037 {
            doc /* [V2 9037] 市販品（COTS）の保守を宇宙飛行の環境に合うものにする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-344"; conflict = false; }
        }
        requirement def <'HSI-345'> V2_9038 {
            doc /* [V2 9038] 飛行中の共通の工具・試験機器の一式を定める。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-345"; conflict = false; }
        }
        requirement def <'HSI-346'> V2_9039 {
            doc /* [V2 9039] 計画の保守は、最も動きにくい装備でも乗員の日程の中で行える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-346"; conflict = false; }
        }
        requirement def <'HSI-347'> V2_9050 {
            doc /* [V2 9050] 飛行中の保守のすべての工具のインタフェースに工具の取付け・操作の隙間を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-347"; conflict = false; }
        }
        requirement def <'HSI-348'> V2_9115 {
            doc /* [V2 9115] 工具・試験機器は全範囲の体格・筋力の乗員が保護具を着けて使える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-348"; conflict = false; }
        }
        requirement def <'HSI-349'> V2_9116 {
            doc /* [V2 9116] 保守を飛行中の工具・試験機器の一式でできる設計にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-349"; conflict = false; }
        }
        requirement def <'HSI-350'> V2_9042 {
            doc /* [V2 9042] 保守で乗員が扱う留め具は拘束式にする。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-350"; conflict = false; }
        }
        requirement def <'HSI-351'> V2_9043 {
            doc /* [V2 9043] 乗員が整備しうる物の留め具の数を構造の要求の最小にする。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-351"; conflict = false; }
        }
        requirement def <'HSI-352'> V2_9044 {
            doc /* [V2 9044] 系は共通の留め具の一式で整備できる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-352"; conflict = false; }
        }
        requirement def <'HSI-353'> V2_9117 {
            doc /* [V2 9117] 保守の要る機器は飛行中に搭載の工具一式で近づけて開けられる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-353"; conflict = false; }
        }
        requirement def <'HSI-354'> V2_9045 {
            doc /* [V2 9045] 保守の対象には、ほかの系・機器を外したり止めたりせずに近づける（点検パネルを除く）。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-354"; conflict = false; }
        }
        requirement def <'HSI-355'> V2_9046 {
            doc /* [V2 9046] 点検・整備の箇所は最も動きにくい装備でも直接に近づける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-355"; conflict = false; }
        }
        requirement def <'HSI-356'> V2_9047 {
            doc /* [V2 9047] 作業の空間は乗員・工具・保護具を収める。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-356"; conflict = false; }
        }
        requirement def <'HSI-357'> V2_9035 {
            doc /* [V2 9035] 保守のケーブル・電線・ホースは保守の箇所で一意かつ一貫して識別する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-357"; conflict = false; }
        }
        requirement def <'HSI-358'> V2_9048 {
            doc /* [V2 9048] 目で確かめる保守の作業は、最も動きにくい装備でも直接見える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-358"; conflict = false; }
        }
        requirement def <'HSI-359'> V2_9118 {
            doc /* [V2 9118] 飛行の系は乗員が機器の位置を知り、扱い、識別できる情報と表示を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-359"; conflict = false; }
        }
        requirement def <'HSI-360'> V2_9051 {
            doc /* [V2 9051] 保守中の機器は速く確実に故障を検出し、不良品を切り分ける。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-360"; conflict = false; }
        }
        requirement def <'HSI-361'> V2_9119 {
            doc /* [V2 9119] 保守には縮尺・向き・文脈の適切な図などの視覚の補助を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-361"; conflict = false; }
        }
        requirement def <'HSI-362'> V2_9052 {
            doc /* [V2 9052] 重要な機器が故障したとき、または許容範囲を外れたときに乗員に警報する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-362"; conflict = false; }
        }
        requirement def <'HSI-363'> V2_9120 {
            doc /* [V2 9120] 状態監視のデータを乗員・保守のデータ系・管制が使える情報系に与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-363"; conflict = false; }
        }
        requirement def <'HSI-364'> V2_9121 {
            doc /* [V2 9121] 保守の対象ごとに手順・図・状態・完了の表示・交換品の履歴・実施の記録を乗員に与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-364"; conflict = false; }
        }
        requirement def <'HSI-365'> V2_9122 {
            doc /* [V2 9122] 異常な保守の対象について、センサのデータ・故障探求の手順・故障の候補・試験点と正常値・判定の助言を実時間で与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-365"; conflict = false; }
        }
        requirement def <'HSI-366'> V2_9123 {
            doc /* [V2 9123] 保守の作業は全乗員に共通の技能に合わせて設計する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-366"; conflict = false; }
        }
        requirement def <'HSI-367'> V2_9124 {
            doc /* [V2 9124] 修正の保守に、全乗員の共通の専門性で診断・故障探求・手順の実行を支える判断の補助を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-367"; conflict = false; }
        }
        requirement def <'HSI-368'> V2_9125 {
            doc /* [V2 9125] 予防・修正の保守は完了を確かめる手段を含む。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-368"; conflict = false; }
        }
        requirement def <'HSI-369'> V2_9126 {
            doc /* [V2 9126] 惑星の表面の任務では保守の作業で塵などの汚染を防ぐ。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-369"; conflict = false; }
        }
        requirement def <'HSI-370'> V2_9127 {
            doc /* [V2 9127] 惑星の表面で保守する機器・工具は DSNE の環境で NASA-STD-5017A の性能を満たす。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-370"; conflict = false; }
        }
        requirement def <'HSI-371'> V2_9128 {
            doc /* [V2 9128] 侵入を防げない塵で工具・機器の機能を最低の性能より下げない。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-371"; conflict = false; }
        }
        requirement def <'HSI-372'> V2_9129 {
            doc /* [V2 9129] 地球外の表面の塵にさらされた物は計画の清掃の方法に損傷なく耐える。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-372"; conflict = false; }
        }
        requirement def <'HSI-373'> V2_9053 {
            doc /* [V2 9053] 予想されるハザードから乗員を守る保護具を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-373"; conflict = false; }
        }
        requirement def <'HSI-374'> V2_9054 {
            doc /* [V2 9054] 保護具は乗員の通常・非常の作業と通信を妨げない。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-374"; conflict = false; }
        }
        requirement def <'HSI-375'> V2_9055 {
            doc /* [V2 9055] 乗員が救命の作業をできないときのため、保護具の救命補助を自動化する。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-375"; conflict = false; }
        }
        requirement def <'HSI-376'> V2_9056 {
            doc /* [V2 9056] 聴覚保護具を使わずに 6.6 節の音圧レベルの限界を満たす。 */
            attribute criterion : String = "6.6 節の SPL の限界（連続騒音 NC-50 など）を聴覚保護具なしで";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-376"; conflict = true; }
        }
        requirement def <'HSI-377'> V2_9057 {
            doc /* [V2 9057] 緊急や好みのため、全飛行段階で適切な聴覚保護具を与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-377"; conflict = false; }
        }
        requirement def <'HSI-378'> V2_9058 {
            doc /* [V2 9058] 聴覚保護具が音声通信・系の監視・警報の検知を妨げない設計にする。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-378"; conflict = false; }
        }
        requirement def <'HSI-379'> V2_9059 {
            doc /* [V2 9059] 全区画・全飛行段階で、危険な環境をつくらない検知・警報・消火の機器から成る防火系を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-379"; conflict = true; }
        }
        requirement def <'HSI-380'> V2_9060 {
            doc /* [V2 9060] 防火系の健全性と状態のデータを乗員とほかの系に与える。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-380"; conflict = false; }
        }
        requirement def <'HSI-381'> V2_9061 {
            doc /* [V2 9061] 防火系の故障を乗員に警報する。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-381"; conflict = false; }
        }
        requirement def <'HSI-382'> V2_9062 {
            doc /* [V2 9062] 防火系を手動で作動・停止できる。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-382"; conflict = false; }
        }
        requirement def <'HSI-383'> V2_9063 {
            doc /* [V2 9063] 最も動きにくい装備でも使える手動の携帯消火器を持つ。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-383"; conflict = false; }
        }
        requirement def <'HSI-384'> V2_9064 {
            doc /* [V2 9064] 非常用の機器は明確に識別でき、必要な時間内に最も動きにくい装備でも使える。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-384"; conflict = false; }
        }
        requirement def <'HSI-385'> V2_10005 {
            doc /* [V2 10005] 乗員インタフェースは系全体で外観・配置・場所・操作が一貫していること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-385"; conflict = false; }
        }
        requirement def <'HSI-386'> V2_10006 {
            doc /* [V2 10006] 運用の用語を系全体で標準化すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-386"; conflict = false; }
        }
        requirement def <'HSI-387'> V2_10020 {
            doc /* [V2 10020] データが古い・欠測・使えない・不明のとき視覚で示すこと。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-387"; conflict = false; }
        }
        requirement def <'HSI-388'> V2_10022 {
            doc /* [V2 10022] 乗員の操作に対する確かな応答を Table 10.2-1 の時間内に示すこと。 */
            attribute criterion : String = "離散入力の応答 0.1 s、GUI の呼出し 1.0 s、状態変化の表示 1.0 s ほか（Table 10.2-1）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-388"; conflict = false; }
        }
        requirement def <'HSI-389'> V2_10150 {
            doc /* [V2 10150] Appendix F の表示の標準を満たすこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-389"; conflict = false; }
        }
        requirement def <'HSI-390'> V2_10151 {
            doc /* [V2 10151] 計画で定めたラベルの計画・アイコンの集に沿うラベルとすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-390"; conflict = false; }
        }
        requirement def <'HSI-391'> V2_10152 {
            doc /* [V2 10152] 手動の飛行制御と時間が厳しい自動制御の監視に使う表示の遅れを 50 ms 以下とすること。 */
            attribute criterion : String = "≤50 ms";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-391"; conflict = false; }
        }
        requirement def <'HSI-392'> V2_10080 {
            doc /* [V2 10080] 重大・危険・不可逆・破壊的な指令の完了の前に操作員の確認を求めること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-392"; conflict = false; }
        }
        requirement def <'HSI-393'> V2_10113 {
            doc /* [V2 10113] 重要なデータを、暗算・記憶・繰返しの画面移動なしにわかる形で適切な詳しさで示すこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-393"; conflict = false; }
        }
        requirement def <'HSI-394'> V2_10123 {
            doc /* [V2 10123] 乗員が作業を効率よく行える速さで系が動くこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-394"; conflict = false; }
        }
        requirement def <'HSI-395'> V2_10124 {
            doc /* [V2 10124] 作業を行う各作業場所で、その作業に要るデータを乗員に与えること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-395"; conflict = false; }
        }
        requirement def <'HSI-396'> V2_10153 {
            doc /* [V2 10153] 模擬・試験・運用のモードの切替えに明示の指令を求めること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-396"; conflict = false; }
        }
        requirement def <'HSI-397'> V2_10120 {
            doc /* [V2 10120] 乗員がミッションのデータを入力・保存・受信・表示・処理・配布・更新・廃棄できる方法と道具を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-397"; conflict = false; }
        }
        requirement def <'HSI-398'> V2_10125 {
            doc /* [V2 10125] 秘密・私的なデータ・伝送の保護、安全な閲覧、送信者の確認の機能を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-398"; conflict = false; }
        }
        requirement def <'HSI-399'> V2_10126 {
            doc /* [V2 10126] 地上が乗員の介入なしに搭載データベースの全機能を扱えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-399"; conflict = false; }
        }
        requirement def <'HSI-400'> V2_10129 {
            doc /* [V2 10129] 系に欠かせない情報の自動の予備と乗員による復元、乗員が変えた情報の乗員による予備と復元を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-400"; conflict = false; }
        }
        requirement def <'HSI-401'> V2_10114 {
            doc /* [V2 10114] 緊急・警告・注意と勧告の事象に、Table 10.3-1 のとおり区別できる視覚・聴覚の報知を行うこと。 */
            attribute criterion : String = "緊急：赤の点滅＋サイレン/クラクソン＋音声、警告：赤＋交互音＋音声、注意：黄＋512 Hz、勧告：青（Table 10.3-1）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-401"; conflict = true; }
        }
        requirement def <'HSI-402'> V2_10130 {
            doc /* [V2 10130] 情報管理系を失ったときに使う別の情報源を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-402"; conflict = false; }
        }
        requirement def <'HSI-403'> V2_10131 {
            doc /* [V2 10131] ソフトウェアの停止から速やかに回復できること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-403"; conflict = false; }
        }
        requirement def <'HSI-404'> V2_10175 {
            doc /* [V2 10175] Table 10.3-1 の優先度（火災＞他の緊急＞警告＞注意＞勧告）でアラートを順位付けること。 */
            attribute criterion : String = "優先度 1〜5（Table 10.3-1）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-404"; conflict = false; }
        }
        requirement def <'HSI-405'> V2_10176 {
            doc /* [V2 10176] 聴覚の報知の最初の1回を最終の音量より 10 dB 低く鳴らす前触れの報知を持つこと。 */
            attribute criterion : String = "最初の1回は −10 dB";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-405"; conflict = false; }
        }
        requirement def <'HSI-406'> V2_10115 {
            doc /* [V2 10115] 選んだ系のパラメータが許容範囲を外れたら操作員に知らせること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-406"; conflict = false; }
        }
        requirement def <'HSI-407'> V2_10154 {
            doc /* [V2 10154] 操作員がアラートの機能を有効にできること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-407"; conflict = false; }
        }
        requirement def <'HSI-408'> V2_10155 {
            doc /* [V2 10155] 使用外のアラートの機能を操作員が抑止できること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-408"; conflict = false; }
        }
        requirement def <'HSI-409'> V2_10156 {
            doc /* [V2 10156] 抑止中のアラートをすべて点検し操作員に知らせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-409"; conflict = false; }
        }
        requirement def <'HSI-410'> V2_10177 {
            doc /* [V2 10177] 操作員がアラートの音と視覚の報知を抑えられること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-410"; conflict = false; }
        }
        requirement def <'HSI-411'> V2_10056 {
            doc /* [V2 10056] 音声でない聴覚の報知を、周囲の騒音より 15 dBA 超（または帯域で 10/13 dB 超）とすること。 */
            attribute criterion : String = ">15 dBA（A特性、睡眠中の乗員を起こす警報はこの方法）ほか";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-411"; conflict = false; }
        }
        requirement def <'HSI-412'> V2_10058 {
            doc /* [V2 10058] 聴覚の警報の周波数を人の感度の高い 200 Hz〜4 kHz とすること。 */
            attribute criterion : String = "200 Hz〜4 kHz";
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-412"; conflict = false; }
        }
        requirement def <'HSI-413'> V2_10116 {
            doc /* [V2 10116] 鳴っている聴覚の報知を手動で止める機能を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-413"; conflict = false; }
        }
        requirement def <'HSI-414'> V2_10117 {
            doc /* [V2 10117] 乗員の求めで視覚・聴覚の報知器の故障を試験すること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-414"; conflict = false; }
        }
        requirement def <'HSI-415'> V2_10032 {
            doc /* [V2 10032] 表示と操作器の関係を、目的・機能・順序で論理的・明示的にまとめること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-415"; conflict = false; }
        }
        requirement def <'HSI-416'> V2_10034 {
            doc /* [V2 10034] 表示を、操作器の動きと系の応答に Table 10.4-1 のとおり合わせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-416"; conflict = false; }
        }
        requirement def <'HSI-417'> V2_10037 {
            doc /* [V2 10037] 重要な作業の情報をすべて、操作員の視野の中で同時に示せる表示の面積を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-417"; conflict = false; }
        }
        requirement def <'HSI-418'> V2_10045 {
            doc /* [V2 10045] 重要な情報を色で示すときは、ほかの合図も添えること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-418"; conflict = false; }
        }
        requirement def <'HSI-419'> V2_10046 {
            doc /* [V2 10046] 数値ごと（または同じ単位の数値の組ごと）に一貫した単位を表示すること。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-419"; conflict = false; }
        }
        requirement def <'HSI-420'> V2_10048 {
            doc /* [V2 10048] IVA の表示を Table 10.4-2 の表示の値（輝度・コントラスト・解像度など）に合わせること。 */
            attribute criterion : String = "白のピーク輝度 >100 cd/m2、周囲光でのコントラスト比 100:1、空間解像度 32 pixels/deg、フレーム率 60 Hz ほか";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-420"; conflict = false; }
        }
        requirement def <'HSI-421'> V2_10201 {
            doc /* [V2 10201] 表示灯を Table 10.4-3 の色の意味（赤の点滅＝緊急、赤＝警告、黄＝注意、緑＝電源・正常）に合わせること。 */
            attribute criterion : String = "赤の点滅：緊急、赤：警告・故障、黄：注意、緑：電源・正常（Table 10.4-3）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-421"; conflict = false; }
        }
        requirement def <'HSI-422'> V2_10060 {
            doc /* [V2 10060] 品目の識別、通常・非常の手順、危険の回避のためのラベルを持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-422"; conflict = false; }
        }
        requirement def <'HSI-423'> V2_10063 {
            doc /* [V2 10063] ラベルを対象の上かすぐ隣に置くこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-423"; conflict = false; }
        }
        requirement def <'HSI-424'> V2_10066 {
            doc /* [V2 10066] ラベルの字の高さを、想定する姿勢で 12 ポイントまたは 0.4° 以上とすること。 */
            attribute criterion : String = "≥12 pt または ≥0.4°";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-424"; conflict = false; }
        }
        requirement def <'HSI-425'> V2_10068 {
            doc /* [V2 10068] 見ずに操作する操作器は、位置か手触りで互いに区別できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-425"; conflict = false; }
        }
        requirement def <'HSI-426'> V2_10069 {
            doc /* [V2 10069] 危険・不可逆の操作器を、非常用でない操作器と区別できる符号で示すこと。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-426"; conflict = false; }
        }
        requirement def <'HSI-427'> V2_10070 {
            doc /* [V2 10070] IVA の操作器の間隔を Table 10.4-4 に合わせること。 */
            attribute criterion : String = "押しボタン（1本指）最小 13 mm、つまみ（片手）最小 25 mm ほか（Table 10.4-4）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-427"; conflict = false; }
        }
        requirement def <'HSI-428'> V2_10157 {
            doc /* [V2 10157] IVA のコネクタの間隔を、素手 25 mm・与圧しない手袋 32 mm・握る 64 mm 以上とすること。 */
            attribute criterion : String = "≥25 mm（素手）、≥32 mm（与圧しない手袋）、≥64 mm（握る）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-428"; conflict = false; }
        }
        requirement def <'HSI-429'> V2_10073 {
            doc /* [V2 10073] 想定する重力・加速度・振動の下で、正確な操作と誤操作の防止のための体・手足の支えと拘束を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-429"; conflict = false; }
        }
        requirement def <'HSI-430'> V2_10158 {
            doc /* [V2 10158] 2〜3 g の加速度の下で使う操作器を、手・手首の動きか ±30° の円錐内の前方への到達で操作できる位置に置くこと。 */
            attribute criterion : String = "2〜3 g：手・手首の動き、または ±30° の円錐内";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-430"; conflict = false; }
        }
        requirement def <'HSI-431'> V2_10159 {
            doc /* [V2 10159] 3 g を超える加速度の下で使う操作器を、腕を伸ばさず手・手首の動きで操作できる位置に置くこと。 */
            attribute criterion : String = ">3 g：到達なしで手・手首の動き";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-431"; conflict = false; }
        }
        requirement def <'HSI-432'> V2_10076 {
            doc /* [V2 10076] 手動操縦の操作器の遅れを、高ゲインの作業で 100 ms 未満、低ゲインの作業で 200 ms 未満とすること。 */
            attribute criterion : String = "<100 ms（高ゲイン）、<200 ms（低ゲイン）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-432"; conflict = false; }
        }
        requirement def <'HSI-433'> V2_10077 {
            doc /* [V2 10077] 操作器の抵抗力で、意図しない位置のずれを防ぐこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-433"; conflict = false; }
        }
        requirement def <'HSI-434'> V2_10160 {
            doc /* [V2 10160] 手動操縦の操作器の遅れのばらつきを最小にすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-434"; conflict = false; }
        }
        requirement def <'HSI-435'> V2_10052 {
            doc /* [V2 10052] 電子的に記憶した音声のメッセージを、実際の騒音の下で 100% 聞き取れ区別できること。 */
            attribute criterion : String = "明瞭度・区別 100%";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-435"; conflict = false; }
        }
        requirement def <'HSI-436'> V2_10078 {
            doc /* [V2 10078] 段階的に動く操作器にはデテントを持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-436"; conflict = false; }
        }
        requirement def <'HSI-437'> V2_10079 {
            doc /* [V2 10079] 範囲の端を超えて操作しない操作器には、始めと終わりにストップを持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-437"; conflict = false; }
        }
        requirement def <'HSI-438'> V2_10178 {
            doc /* [V2 10178] 緊急時の対処を、表示の機能から独立に手動で起動できること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-438"; conflict = false; }
        }
        requirement def <'HSI-439'> V2_10057 {
            doc /* [V2 10057] 500 Hz・1 kHz・2 kHz のオクターブ帯で残響時間を 0.6 秒未満とすること。 */
            attribute criterion : String = "<0.6 s（500 Hz・1 kHz・2 kHz）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-439"; conflict = false; }
        }
        requirement def <'HSI-440'> V2_10083 {
            doc /* [V2 10083] 通信系を、協調した分散のチーム作業を支えるよう設計すること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-440"; conflict = false; }
        }
        requirement def <'HSI-441'> V2_10084 {
            doc /* [V2 10084] 乗員どうし・宇宙機の系・地上の系の間で通信を送受信できること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-441"; conflict = false; }
        }
        requirement def <'HSI-442'> V2_10085 {
            doc /* [V2 10085] 乗員が想定する背景騒音の下で、普通の声の大きさで互いと地上に話せること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-442"; conflict = false; }
        }
        requirement def <'HSI-443'> V2_10091 {
            doc /* [V2 10091] 重要な通信で、ANSI/ASA S3.2-2009 の方法で英単語の認識 90% を確保すること。 */
            attribute criterion : String = "英単語の認識 ≥90%（ANSI/ASA S3.2-2009）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-443"; conflict = false; }
        }
        requirement def <'HSI-444'> V2_10093 {
            doc /* [V2 10093] 地上と双方向の私的な音声の通信ができること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-444"; conflict = false; }
        }
        requirement def <'HSI-445'> V2_10094 {
            doc /* [V2 10094] 映像の通信にデジタルの符号化（または同等の画質の符号化）を使うこと。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-445"; conflict = false; }
        }
        requirement def <'HSI-446'> V2_10095 {
            doc /* [V2 10095] 映像の通信に、作業に十分な空間の解像度を持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-446"; conflict = false; }
        }
        requirement def <'HSI-447'> V2_10096 {
            doc /* [V2 10096] 映像の通信に、作業に十分な時間の解像度（フレーム率）を持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-447"; conflict = false; }
        }
        requirement def <'HSI-448'> V2_10097 {
            doc /* [V2 10097] 映像の通信に、作業に十分な色と明るさの階調を持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-448"; conflict = false; }
        }
        requirement def <'HSI-449'> V2_10098 {
            doc /* [V2 10098] 映像の通信のビットレートを、圧縮のひずみを合理的に低くできる高さとすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-449"; conflict = false; }
        }
        requirement def <'HSI-450'> V2_10099 {
            doc /* [V2 10099] 同期させる音と映像のずれを、音の先行 15 ms 以内・遅れ 45 ms 以内とすること。 */
            attribute criterion : String = "音の先行 ≤15 ms、遅れ ≤45 ms";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-450"; conflict = false; }
        }
        requirement def <'HSI-451'> V2_10161 {
            doc /* [V2 10161] 自動の系は、状態・将来の状態の予測とモード・健全性・構成の情報を操作員に示すこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-451"; conflict = false; }
        }
        requirement def <'HSI-452'> V2_10162 {
            doc /* [V2 10162] 安全上重要な運用のモードの変化を操作員に知らせること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-452"; conflict = false; }
        }
        requirement def <'HSI-453'> V2_10163 {
            doc /* [V2 10163] 自動・ロボットの系は運用と性能のデータを記録し、乗員と地上が使えるようにすること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-453"; conflict = false; }
        }
        requirement def <'HSI-454'> V2_10164 {
            doc /* [V2 10164] ある時点の操作を人と系のどちらが行うはずかを示すこと。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-454"; conflict = false; }
        }
        requirement def <'HSI-455'> V2_10165 {
            doc /* [V2 10165] 自動・ロボットの系を操作員が安全に上書き・停止できること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-455"; conflict = false; }
        }
        requirement def <'HSI-456'> V2_10166 {
            doc /* [V2 10166] 自動・ロボットの系の構成を、安全と性能の限界の中で操作員が変えられること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-456"; conflict = false; }
        }
        requirement def <'HSI-457'> V2_10167 {
            doc /* [V2 10167] 自動・ロボットの系に、想定する運用の条件に合う幅の操作の選択肢を持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-457"; conflict = false; }
        }
        requirement def <'HSI-458'> V2_10168 {
            doc /* [V2 10168] 自動・ロボットの系の故障や能力の超過のとき、操作員が安全に制御を引き継げること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-458"; conflict = false; }
        }
        requirement def <'HSI-459'> V2_10169 {
            doc /* [V2 10169] 意思決定の支援をいつ・どの方法で使うかを操作員が決められること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-459"; conflict = false; }
        }
        requirement def <'HSI-460'> V2_10170 {
            doc /* [V2 10170] 意思決定の支援は、説明・根拠と行動の結果を示すこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-460"; conflict = false; }
        }
        requirement def <'HSI-461'> V2_10171 {
            doc /* [V2 10171] 意思決定の支援は、問題がその能力を超えるとき操作員に知らせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-461"; conflict = false; }
        }
        requirement def <'HSI-462'> V2_10172 {
            doc /* [V2 10172] 自動・ロボットの系は、運用の安全の閾値を超えたら保護の動作をとるか、操作員に制御を求めること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-462"; conflict = false; }
        }
        requirement def <'HSI-463'> V2_10173 {
            doc /* [V2 10173] 操作員が求めに応じて制御を引き継がないときも、自動・ロボットの系が安全な運用を保つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-463"; conflict = false; }
        }
        requirement def <'HSI-464'> V2_10174 {
            doc /* [V2 10174] 自律のロボットの系は、緊急・保護の停止の後の再起動を含め、操作員だけが起動すること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-464"; conflict = false; }
        }
        requirement def <'HSI-465'> V2_11001 {
            doc /* [V2 11001] 通常・非常の運用で宇宙服を効率よく確実に着脱できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-465"; conflict = false; }
        }
        requirement def <'HSI-466'> V2_11125 {
            doc /* [V2 11125] 薬・外用薬・清掃の材料が服の材料（内外）と合うこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-466"; conflict = false; }
        }
        requirement def <'HSI-467'> V2_11126 {
            doc /* [V2 11126] 服の材料（内外）が想定の清掃の材料・方法に耐えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-467"; conflict = false; }
        }
        requirement def <'HSI-468'> V2_11006 {
            doc /* [V2 11006] 乗員が服の運用の圧力の範囲の中で離散の設定圧を選べること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-468"; conflict = false; }
        }
        requirement def <'HSI-469'> V2_11007 {
            doc /* [V2 11007] 設定圧で平衡に達した後、服の圧力を 0.25 psi の幅の中に保つこと。 */
            attribute criterion : String = "1.72 kPa（0.25 psi）以内";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-469"; conflict = false; }
        }
        requirement def <'HSI-470'> V2_11009 {
            doc /* [V2 11009] 服が出す連続の騒音を耳の位置で NC-50 以下にすること（補助の聴覚保護なし）。 */
            attribute criterion : String = "NC-50 以下";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-470"; conflict = false; }
        }
        requirement def <'HSI-471'> V2_11010 {
            doc /* [V2 11010] EVA の服が放射線の監視と警報を備えるか受け入れ、乗員が処置をとれること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-471"; conflict = false; }
        }
        requirement def <'HSI-472'> V2_11011 {
            doc /* [V2 11011] 通常の着用の運用で乗員の蓄熱を 3.0〜-1.9 kJ/kg の範囲に収めること（41ノードまたは Wissler のモデル）。 */
            attribute criterion : String = "3.0 kJ/kg > ΔQ > -1.9 kJ/kg";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-472"; conflict = false; }
        }
        requirement def <'HSI-473'> V2_11013 {
            doc /* [V2 11013] 服が着用中の尿・便・月経血・吐物を処理できること。 */
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-473"; conflict = false; }
        }
        requirement def <'HSI-474'> V2_11028 {
            doc /* [V2 11028] EVA の服が尿 Vu = 0.5 + 2.24t/24 L（t は着用の時間）を集められること。 */
            attribute criterion : String = "Vu = 0.5 + 2.24t/24 L";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-474"; conflict = false; }
        }
        requirement def <'HSI-475'> V2_11014 {
            doc /* [V2 11014] LEA の服が尿 Vu = 0.5 + 2t/24 L を着用の間に集められること。 */
            attribute criterion : String = "Vu = 0.5 + 2t/24 L";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-475"; conflict = false; }
        }
        requirement def <'HSI-476'> V2_11015 {
            doc /* [V2 11015] 24時間を超える非常の着用の運用で、1人1日 1 L の尿を集めて保てること。 */
            attribute criterion : String = "1 L（33.8 fl oz）/人・日";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-476"; conflict = false; }
        }
        requirement def <'HSI-477'> V2_11016 {
            doc /* [V2 11016] 非常の着用の運用で、1人1日 75 g・75 mL の便を集められること。 */
            attribute criterion : String = "75 g（0.17 lb）・75 mL（2.5 fl oz）/人・日";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-477"; conflict = false; }
        }
        requirement def <'HSI-478'> V2_11017 {
            doc /* [V2 11017] 乗員が吐いても服が破局的なハザードを生まないことを示すこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-478"; conflict = false; }
        }
        requirement def <'HSI-479'> V2_11018 {
            doc /* [V2 11018] 服が必要な作業に足る見回しの範囲（field of regard）を与えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-479"; conflict = false; }
        }
        requirement def <'HSI-480'> V2_11019 {
            doc /* [V2 11019] ヘルメットが作業と状況の認識に足る光学の品質を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-480"; conflict = false; }
        }
        requirement def <'HSI-481'> V2_11020 {
            doc /* [V2 11020] ヘルメットが作業を妨げる高輝度の物を見ることから乗員を守ること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-481"; conflict = false; }
        }
        requirement def <'HSI-482'> V2_11021 {
            doc /* [V2 11021] ヘルメットに視覚のゆがみが無いこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-482"; conflict = false; }
        }
        requirement def <'HSI-483'> V2_11022 {
            doc /* [V2 11022] ヘルメット・頭部装着の表示を備える場合、見回しの範囲を妨げないこと。 */
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-483"; conflict = false; }
        }
        requirement def <'HSI-484'> V2_11023 {
            doc /* [V2 11023] 消耗品・服の状態と警報・生体のデータを乗員が入力・保存・表示・監視などできること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-484"; conflict = false; }
        }
        requirement def <'HSI-485'> V2_11100 {
            doc /* [V2 11100] 打上げ・再突入と客室の減圧の危険の高い運用で、乗員が十分な時間、与圧服を着られること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-485"; conflict = false; }
        }
        requirement def <'HSI-486'> V2_11024 {
            doc /* [V2 11024] 服が許容の負荷・疲労の中で作業できる動き・器用さ・触覚を与え、けがの危険を小さくすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-486"; conflict = false; }
        }
        requirement def <'HSI-487'> V2_11025 {
            doc /* [V2 11025] 表面の EVA で4時間超、または12時間を超える着用の活動で、服の中の栄養を与えること。 */
            attribute criterion : String = "表面 EVA 4時間超・着用 12時間超";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-487"; conflict = false; }
        }
        requirement def <'HSI-488'> V2_11029 {
            doc /* [V2 11029] LEA の服で、24時間に 2 L 以上の飲み水を求めに応じて飲めること。 */
            attribute criterion : String = "2 L（67.6 fl oz）/24 h";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-488"; conflict = false; }
        }
        requirement def <'HSI-489'> V2_11030 {
            doc /* [V2 11030] EVA の服で、1時間に 240 mL 以上の飲み水を求めに応じて飲めること。 */
            attribute criterion : String = "240 mL（8.1 fl oz）/h";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-489"; conflict = false; }
        }
        requirement def <'HSI-490'> V2_11027 {
            doc /* [V2 11027] 12時間を超える与圧の着用で、与圧の乗員に薬を与える手段を持つこと。 */
            attribute criterion : String = "与圧の着用 12時間超";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-490"; conflict = false; }
        }
        requirement def <'HSI-491'> V2_11031 {
            doc /* [V2 11031] 着用の運用で相対湿度を表 11.2-1 の時間の限界に収めること。 */
            attribute criterion : String = "RH ≤5%：1 h、5〜15%：2 h、15〜25%：8 h、25〜75%：無制限";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-491"; conflict = false; }
        }
        requirement def <'HSI-492'> V2_11032 {
            doc /* [V2 11032] LEA の服が客室の減圧のとき II 型の減圧症を防ぐのに足る圧力で働くこと。 */
            attribute criterion : String = "十分な服圧（根拠：14.7 psia に飽和して 40 kPa（5.8 psia）で II 型減圧症 15% 未満）";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-492"; conflict = true; }
        }
        requirement def <'HSI-493'> V2_11033 {
            doc /* [V2 11033] 着用の乗員と遠隔の操作者が服の熱制御を調整できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-493"; conflict = false; }
        }
        requirement def <'HSI-494'> V2_11034 {
            doc /* [V2 11034] 服の圧力・ppO2・ppCO2 を自動で記録すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-494"; conflict = false; }
        }
        requirement def <'HSI-495'> V2_11035 {
            doc /* [V2 11035] 服の圧力・ppO2・ppCO2 を着用の乗員に表示すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-495"; conflict = false; }
        }
        requirement def <'HSI-496'> V2_11036 {
            doc /* [V2 11036] 服の圧力・ppO2・ppCO2 を監視し、安全の限界を外れたら乗員に警報すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-496"; conflict = false; }
        }
        requirement def <'HSI-497'> V2_11039 {
            doc /* [V2 11039] 宇宙服の吸気の CO2 分圧（PICO2）を表 11.3-1 の時間の限界に収めること。 */
            attribute criterion : String = "PICO2 >15 mmHg 禁止、>12.5：≤0.5 h/日、>10：≤1 h、>7：≤2.5 h、>4：≤8 h、≤4：無制限";
            @HsiEvaluation { verdict = HsiVerdict::nonCompliant; row = "HSI-497"; conflict = false; }
        }
        requirement def <'HSI-498'> V2_11040 {
            doc /* [V2 11040] 部分重力の非常の場面で、吸気の CO2 分圧を1時間まで 20 mmHg 以下にすること。 */
            attribute criterion : String = "≤20 mmHg（1時間まで）";
            @HsiEvaluation { verdict = HsiVerdict::notApplicable; row = "HSI-498"; conflict = false; }
        }
        requirement def <'HSI-499'> V2_11037 {
            doc /* [V2 11037] EVA の乗員の代謝率を測るか計算すること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-499"; conflict = false; }
        }
        requirement def <'HSI-500'> V2_11038 {
            doc /* [V2 11038] EVA の乗員の代謝のデータを乗員（地上の要員を含む）に表示すること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-500"; conflict = false; }
        }
        requirement def <'HSI-501'> V2_11101 {
            doc /* [V2 11101] 意識のない（行動できない）着用の乗員を救助する資源を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-501"; conflict = false; }
        }
        requirement def <'HSI-502'> V2_12003 {
            doc /* [V2 12003] 計画が地上支援の作業の環境・道具・要員の特性・作業を文書にすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-502"; conflict = false; }
        }
        requirement def <'HSI-503'> V2_12004 {
            doc /* [V2 12004] 地上支援の要員の人体寸法・生体力学・可動域・筋力のデータ集を定めること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-503"; conflict = false; }
        }
        requirement def <'HSI-504'> V2_12005 {
            doc /* [V2 12005] 地上の要員の保護具・服装に対応すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-504"; conflict = false; }
        }
        requirement def <'HSI-505'> V2_12006 {
            doc /* [V2 12006] 地上の要員が道具を使ってすべての地上処理の作業を行える容積を与えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-505"; conflict = false; }
        }
        requirement def <'HSI-506'> V2_12007 {
            doc /* [V2 12007] 機体・機器が 1 g で地上の要員・GSE の加える力から守られるか耐えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-506"; conflict = false; }
        }
        requirement def <'HSI-507'> V2_12008 {
            doc /* [V2 12008] 地上の要員の点検・作業を要する部品・機器に近づけること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-507"; conflict = false; }
        }
        requirement def <'HSI-508'> V2_12009 {
            doc /* [V2 12009] 地上処理のすべての工具の接点に、取り付けと操作の隙間を与えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-508"; conflict = false; }
        }
        requirement def <'HSI-509'> V2_12010 {
            doc /* [V2 12010] 形が同じか似て機能が違う部品を物理的に入れ替えられないようにすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-509"; conflict = false; }
        }
        requirement def <'HSI-510'> V2_12011 {
            doc /* [V2 12011] 地上処理の間の損傷から飛行の機器を守る手段を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-510"; conflict = false; }
        }
        requirement def <'HSI-511'> V2_12012 {
            doc /* [V2 12012] 地上支援の作業のための移動補助具を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-511"; conflict = false; }
        }
        requirement def <'HSI-512'> V2_12013 {
            doc /* [V2 12013] 運ぶ・支える・取り外す品目に、つかんで運ぶ手段を持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-512"; conflict = false; }
        }
        requirement def <'HSI-513'> V2_12014 {
            doc /* [V2 12014] 地上処理の間の操作器の不用意な操作を防ぐこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-513"; conflict = false; }
        }
        requirement def <'HSI-514'> V2_12015 {
            doc /* [V2 12015] 機器を誤って取り付けられないように設計すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-514"; conflict = false; }
        }
        requirement def <'HSI-515'> V2_12016 {
            doc /* [V2 12016] 定めた標準の工具と少数の専用工具で組立・準備・整備・再構成できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-515"; conflict = false; }
        }
        requirement def <'HSI-516'> V2_12017 {
            doc /* [V2 12017] 取り付ける単位の締結具を脱落防止にすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-516"; conflict = false; }
        }
        requirement def <'HSI-517'> V2_12018 {
            doc /* [V2 12018] 組立・試験・故障探求・整備でほかの部品を損傷しない設計にすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-517"; conflict = false; }
        }
        requirement def <'HSI-518'> V2_12019 {
            doc /* [V2 12019] 整備の品目を、ほかの系・部品の取り外しなしに作業できる位置に置くこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-518"; conflict = false; }
        }
        requirement def <'HSI-519'> V2_12020 {
            doc /* [V2 12020] 点検・作業を要する部品への直接の見通しを与えること（自己結合のコネクタを除く）。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-519"; conflict = false; }
        }
        requirement def <'HSI-520'> V2_12021 {
            doc /* [V2 12021] 飛行の系と GSE で、機内の地上処理の作業の照明を与えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-520"; conflict = false; }
        }
        requirement def <'HSI-521'> V2_12022 {
            doc /* [V2 12022] 地上の要員だけでは確実・安全にできない作業を補う系を支えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-521"; conflict = false; }
        }
        requirement def <'HSI-522'> V2_12023 {
            doc /* [V2 12023] 地上処理の作業の間で操作を一貫させること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-522"; conflict = false; }
        }
        requirement def <'HSI-523'> V2_12024 {
            doc /* [V2 12024] 着用・非着用の地上の要員の届く範囲を確保する拘束具・作業台の置き場を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-523"; conflict = false; }
        }
        requirement def <'HSI-524'> V2_12025 {
            doc /* [V2 12025] 作業の完了を操作者に知らせる手ごたえ（フィードバック）を与えること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-524"; conflict = false; }
        }
        requirement def <'HSI-525'> V2_12026 {
            doc /* [V2 12026] 遅い搭載・早い取り出しを要する収納の容積に地上の要員が近づけること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-525"; conflict = false; }
        }
        requirement def <'HSI-526'> V2_12027 {
            doc /* [V2 12027] 地上処理で地上の要員が飛行のソフトウェアを安全に操作できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-526"; conflict = false; }
        }
        requirement def <'HSI-527'> V2_12028 {
            doc /* [V2 12028] 鋭い縁・ばりによるけがから地上の要員を守ること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-527"; conflict = false; }
        }
        requirement def <'HSI-528'> V2_12029 {
            doc /* [V2 12029] 挟み込みによるけがから地上の要員を守ること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-528"; conflict = false; }
        }
        requirement def <'HSI-529'> V2_12030 {
            doc /* [V2 12030] こぼれ・感電・蓄えたエネルギーの放出などのハザードへの不要な暴露を防ぐこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-529"; conflict = false; }
        }
        requirement def <'HSI-530'> V2_12031 {
            doc /* [V2 12031] 地上の作業の前に、系を安全化するよう知らせ、安全化できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-530"; conflict = false; }
        }
        requirement def <'HSI-531'> V2_12032 {
            doc /* [V2 12032] 機体への汚染物の持ち込みを防ぐ管理を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-531"; conflict = false; }
        }
        requirement def <'HSI-532'> V2_12033 {
            doc /* [V2 12033] 飛行の系に漏れた流体・気体の封じ込めと処分の手段を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-532"; conflict = false; }
        }
        requirement def <'HSI-533'> V2_12034 {
            doc /* [V2 12034] GSE なしで地上の要員が着脱する機器を安全な重量の限界より軽くすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-533"; conflict = false; }
        }
        requirement def <'HSI-534'> V2_12035 {
            doc /* [V2 12035] 同時の地上処理の作業でハザード・干渉・誤りが起きないよう部品を配置すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-534"; conflict = false; }
        }
        requirement def <'HSI-535'> V2_12036 {
            doc /* [V2 12036] 地上の要員が正確に損傷なく着脱できるようコネクタを設計・配置すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-535"; conflict = false; }
        }
        requirement def <'HSI-536'> V2_12037 {
            doc /* [V2 12037] コネクタに誤結合を防ぐ物理的な特徴（シェルの寸法・キーの配置・接点の配置）を持たせること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-536"; conflict = false; }
        }
        requirement def <'HSI-537'> V2_12038 {
            doc /* [V2 12038] 地上の要員が品目の識別・手順・ハザードの回避に使うラベル・掲示板を持つこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-537"; conflict = false; }
        }
        requirement def <'HSI-538'> V2_12039 {
            doc /* [V2 12039] ラベル・掲示板を系の全体で一貫させ標準化すること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-538"; conflict = false; }
        }
        requirement def <'HSI-539'> V2_12040 {
            doc /* [V2 12040] ラベル・掲示板の文字の大きさ・色の対比・字の高さと書体を読みやすくすること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-539"; conflict = false; }
        }
        requirement def <'HSI-540'> V2_12041 {
            doc /* [V2 12041] 照明・向き・操作者の位置を考え、読める場所にラベル・掲示板を置くこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-540"; conflict = false; }
        }
        requirement def <'HSI-541'> V2_12042 {
            doc /* [V2 12042] 地上処理のラベル・表示が乗員のラベルを視覚・操作で妨げないこと。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-541"; conflict = false; }
        }
        requirement def <'HSI-542'> V2_12043 {
            doc /* [V2 12043] 非常のとき、乗員と地上支援の要員が健康と安全を保てる時間の中で射点から脱出できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-542"; conflict = false; }
        }
        requirement def <'HSI-543'> V2_12044 {
            doc /* [V2 12044] 乗員と地上支援の要員が、高度な病院前の救命処置を受けられる場所へ脱出できること。 */
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-543"; conflict = false; }
        }
        requirement def <'HSI-544'> V2_12045 {
            doc /* [V2 12045] 通常の着陸・打上げの中止・アボートの後、乗員の健康のため脱出を早めること。 */
            @HsiEvaluation { verdict = HsiVerdict::compliant; row = "HSI-544"; conflict = false; }
        }
        requirement def <'HSI-545'> V2_12046 {
            doc /* [V2 12046] 地上の非常脱出系で乗員の加速度の大きさ・向きを表 12.2-1・12.2-2 の限界に収めること。 */
            attribute criterion : String = "持続の加速度とジャークの限界（姿勢・拘束の区分 0〜4 ごと、例：区分 0 で ／Ax／ ≤0.3 g）";
            @HsiEvaluation { verdict = HsiVerdict::insufficientData; row = "HSI-545"; conflict = false; }
        }
    }
    #Evaluates dependency <'HSI-001>REQ-CREW-05'> from V1Criteria::V1_3000 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    #Evaluates dependency <'HSI-003>REQ-CREW-06'> from V1Criteria::V1_3002 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-004>REQ-CREW-02'> from V1Criteria::V1_3003 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-004>REQ-EVA-02'> from V1Criteria::V1_3003 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
    #Evaluates dependency <'HSI-005>REQ-CREW-05'> from V1Criteria::V1_3004 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    #Evaluates dependency <'HSI-005>REQ-EVA-07'> from V1Criteria::V1_3004 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_07;
    #Evaluates dependency <'HSI-024>REQ-CREW-02'> from V1Criteria::V1_4001 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-026>REQ-CREW-02'> from V1Criteria::V1_4003 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-029>REQ-EVA-08'> from V1Criteria::V1_4006 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
    #Evaluates dependency <'HSI-037>REQ-CREW-01'> from V1Criteria::V1_4014 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
    #Evaluates dependency <'HSI-037>REQ-CREW-02'> from V1Criteria::V1_4014 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-046>REQ-CREW-02'> from V1Criteria::V1_4024 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-051>REQ-CREW-06'> from V1Criteria::V1_4029 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-052>REQ-CREW-06'> from V1Criteria::V1_4030 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-053>REQ-CREW-06'> from V1Criteria::V1_4031 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-066>REQ-CREW-01'> from V1Criteria::V1_6001 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
    #Evaluates dependency <'HSI-070>REQ-EVA-08'> from V1Criteria::V1_6006 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
    #Evaluates dependency <'HSI-091>REQ-CW-03'> from V2Criteria::V2_5006 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
    #Evaluates dependency <'HSI-098>REQ-CW-03'> from V2Criteria::V2_10028 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
    #Evaluates dependency <'HSI-099>REQ-ECLSS-01'> from V2Criteria::V2_6001 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #Evaluates dependency <'HSI-100>REQ-ECLSS-01'> from V2Criteria::V2_6002 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #Evaluates dependency <'HSI-101>REQ-ECLSS-01'> from V2Criteria::V2_6003 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #Evaluates dependency <'HSI-102>REQ-ECLSS-06'> from V2Criteria::V2_6004 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #Evaluates dependency <'HSI-103>REQ-SYS-07'> from V2Criteria::V2_6006 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
    #Evaluates dependency <'HSI-103>REQ-ECLSS-01'> from V2Criteria::V2_6006 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #Evaluates dependency <'HSI-103>REQ-ECLSS-03'> from V2Criteria::V2_6006 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
    #Evaluates dependency <'HSI-103>REQ-ECLSS-04'> from V2Criteria::V2_6006 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
    #Evaluates dependency <'HSI-104>REQ-ECLSS-02'> from V2Criteria::V2_6007 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
    #Evaluates dependency <'HSI-104>REQ-ECLSS-04'> from V2Criteria::V2_6007 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
    #Evaluates dependency <'HSI-105>REQ-EVA-02'> from V2Criteria::V2_6008 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
    #Evaluates dependency <'HSI-105>REQ-ECLSS-04'> from V2Criteria::V2_6008 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
    #Evaluates dependency <'HSI-106>REQ-ECLSS-04'> from V2Criteria::V2_6150 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
    #Evaluates dependency <'HSI-106>REQ-EVA-03'> from V2Criteria::V2_6150 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
    #Evaluates dependency <'HSI-107>REQ-EVA-07'> from V2Criteria::V2_6009 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_07;
    #Evaluates dependency <'HSI-107>REQ-CREW-05'> from V2Criteria::V2_6009 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    #Evaluates dependency <'HSI-108>REQ-ECLSS-05'> from V2Criteria::V2_6012 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-109>REQ-ECLSS-05'> from V2Criteria::V2_6013 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-110>REQ-CREW-08'> from V2Criteria::V2_6014 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    #Evaluates dependency <'HSI-114>REQ-ECLSS-01'> from V2Criteria::V2_6017 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #Evaluates dependency <'HSI-114>REQ-ECLSS-05'> from V2Criteria::V2_6017 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-115>REQ-ECLSS-01'> from V2Criteria::V2_6020 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #Evaluates dependency <'HSI-115>REQ-ECLSS-05'> from V2Criteria::V2_6020 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-116>REQ-CREW-02'> from V2Criteria::V2_7041 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-116>REQ-ECLSS-05'> from V2Criteria::V2_7041 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-117>REQ-ECLSS-01'> from V2Criteria::V2_6021 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #Evaluates dependency <'HSI-117>REQ-ECLSS-05'> from V2Criteria::V2_6021 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-118>REQ-CW-01'> from V2Criteria::V2_6022 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
    #Evaluates dependency <'HSI-118>REQ-ECLSS-02'> from V2Criteria::V2_6022 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
    #Evaluates dependency <'HSI-118>REQ-ECLSS-05'> from V2Criteria::V2_6022 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-119>REQ-ECLSS-06'> from V2Criteria::V2_6023 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #Evaluates dependency <'HSI-120>REQ-ECLSS-11'> from V2Criteria::V2_6024 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
    #Evaluates dependency <'HSI-121>REQ-ECLSS-06'> from V2Criteria::V2_6025 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #Evaluates dependency <'HSI-122>REQ-ECLSS-05'> from V2Criteria::V2_6107 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-124>REQ-ECLSS-06'> from V2Criteria::V2_6050 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #Evaluates dependency <'HSI-125>REQ-ECLSS-06'> from V2Criteria::V2_6052 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #Evaluates dependency <'HSI-129>REQ-ECLSS-10'> from V2Criteria::V2_6026 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
    #Evaluates dependency <'HSI-130>REQ-ECLSS-05'> from V2Criteria::V2_6059 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #Evaluates dependency <'HSI-131>REQ-ECLSS-10'> from V2Criteria::V2_6046 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
    #Evaluates dependency <'HSI-132>REQ-ECLSS-10'> from V2Criteria::V2_6051 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
    #Evaluates dependency <'HSI-133>REQ-ECLSS-10'> from V2Criteria::V2_6109 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
    #Evaluates dependency <'HSI-134>REQ-ECLSS-10'> from V2Criteria::V2_6110 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
    #Evaluates dependency <'HSI-139>REQ-ECLSS-11'> from V2Criteria::V2_6049 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
    #Evaluates dependency <'HSI-143>REQ-ECLSS-06'> from V2Criteria::V2_6063 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #Evaluates dependency <'HSI-144>REQ-SYS-08'> from V2Criteria::V2_6064 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_08;
    #Evaluates dependency <'HSI-148>REQ-CREW-08'> from V2Criteria::V2_6069 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    #Evaluates dependency <'HSI-150>REQ-CREW-05'> from V2Criteria::V2_6111 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    #Evaluates dependency <'HSI-151>REQ-CREW-08'> from V2Criteria::V2_6112 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    #Evaluates dependency <'HSI-156>REQ-CREW-03'> from V2Criteria::V2_6073 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-157>REQ-CREW-03'> from V2Criteria::V2_6074 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-160>REQ-CREW-03'> from V2Criteria::V2_6077 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-161>REQ-CREW-03'> from V2Criteria::V2_6078 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-162>REQ-CREW-03'> from V2Criteria::V2_6115 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-163>REQ-SYS-06'> from V2Criteria::V2_6079 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
    #Evaluates dependency <'HSI-164>REQ-CREW-03'> from V2Criteria::V2_6080 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-165>REQ-CW-06'> from V2Criteria::V2_6081 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
    #Evaluates dependency <'HSI-166>REQ-CREW-01'> from V2Criteria::V2_6082 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
    #Evaluates dependency <'HSI-167>REQ-ECLSS-11'> from V2Criteria::V2_6083 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
    #Evaluates dependency <'HSI-168>REQ-CREW-03'> from V2Criteria::V2_6084 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-170>REQ-CREW-03'> from V2Criteria::V2_6087 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-172>REQ-CREW-03'> from V2Criteria::V2_6088 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-176>REQ-CREW-01'> from V2Criteria::V2_6092 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
    #Evaluates dependency <'HSI-180>REQ-CREW-06'> from V2Criteria::V2_6095 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-181>REQ-CREW-06'> from V2Criteria::V2_6098 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-182>REQ-CREW-06'> from V2Criteria::V2_6161 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-183>REQ-CREW-06'> from V2Criteria::V2_6162 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-184>REQ-CREW-06'> from V2Criteria::V2_6163 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-185>REQ-CREW-06'> from V2Criteria::V2_6164 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-186>REQ-CREW-06'> from V2Criteria::V2_6165 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-189>REQ-CREW-07'> from V2Criteria::V2_6104 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
    #Evaluates dependency <'HSI-190>REQ-CREW-07'> from V2Criteria::V2_6117 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
    #Evaluates dependency <'HSI-207>REQ-CREW-01'> from V2Criteria::V2_7016 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
    #Evaluates dependency <'HSI-210>REQ-ECLSS-13'> from V2Criteria::V2_7020 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
    #Evaluates dependency <'HSI-215>REQ-ECLSS-13'> from V2Criteria::V2_7025 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
    #Evaluates dependency <'HSI-219>REQ-SYS-06'> from V2Criteria::V2_7101 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
    #Evaluates dependency <'HSI-220>REQ-ECLSS-13'> from V2Criteria::V2_7102 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
    #Evaluates dependency <'HSI-221>REQ-ECLSS-13'> from V2Criteria::V2_7085 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
    #Evaluates dependency <'HSI-222>REQ-ECLSS-10'> from V2Criteria::V2_7035 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
    #Evaluates dependency <'HSI-222>REQ-ECLSS-13'> from V2Criteria::V2_7035 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
    #Evaluates dependency <'HSI-223>REQ-CREW-02'> from V2Criteria::V2_7038 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-224>REQ-CREW-02'> from V2Criteria::V2_7040 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    #Evaluates dependency <'HSI-226>REQ-CREW-05'> from V2Criteria::V2_7043 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    #Evaluates dependency <'HSI-227>REQ-CREW-05'> from V2Criteria::V2_7045 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    #Evaluates dependency <'HSI-228>REQ-CREW-05'> from V2Criteria::V2_7046 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    #Evaluates dependency <'HSI-230>REQ-CREW-04'> from V2Criteria::V2_7050 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
    #Evaluates dependency <'HSI-244>REQ-CREW-03'> from V2Criteria::V2_7064 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-248>REQ-CREW-01'> from V2Criteria::V2_7070 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
    #Evaluates dependency <'HSI-249>REQ-SYS-06'> from V2Criteria::V2_7071 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
    #Evaluates dependency <'HSI-261>REQ-SYS-05'> from V2Criteria::V2_8001 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_05;
    #Evaluates dependency <'HSI-268>REQ-CREW-08'> from V2Criteria::V2_8014 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    #Evaluates dependency <'HSI-268>REQ-CREW-09'> from V2Criteria::V2_8014 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #Evaluates dependency <'HSI-269>REQ-CREW-09'> from V2Criteria::V2_8020 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #Evaluates dependency <'HSI-281>REQ-CREW-04'> from V2Criteria::V2_8033 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
    #Evaluates dependency <'HSI-285>REQ-CREW-09'> from V2Criteria::V2_8041 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #Evaluates dependency <'HSI-291>REQ-CREW-07'> from V2Criteria::V2_8051 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
    #Evaluates dependency <'HSI-295>REQ-CREW-07'> from V2Criteria::V2_8053 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
    #Evaluates dependency <'HSI-362>REQ-CW-01'> from V2Criteria::V2_9052 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
    #Evaluates dependency <'HSI-376>REQ-CREW-03'> from V2Criteria::V2_9056 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-379>REQ-ECLSS-11'> from V2Criteria::V2_9059 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
    #Evaluates dependency <'HSI-400>REQ-DPS-05'> from V2Criteria::V2_10129 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_05;
    #Evaluates dependency <'HSI-401>REQ-CW-06'> from V2Criteria::V2_10114 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
    #Evaluates dependency <'HSI-401>REQ-CW-07'> from V2Criteria::V2_10114 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_07;
    #Evaluates dependency <'HSI-403>REQ-DPS-04'> from V2Criteria::V2_10131 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
    #Evaluates dependency <'HSI-403>REQ-DPS-05'> from V2Criteria::V2_10131 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_05;
    #Evaluates dependency <'HSI-404>REQ-CW-04'> from V2Criteria::V2_10175 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_04;
    #Evaluates dependency <'HSI-406>REQ-CW-01'> from V2Criteria::V2_10115 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
    #Evaluates dependency <'HSI-406>REQ-CW-03'> from V2Criteria::V2_10115 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
    #Evaluates dependency <'HSI-407>REQ-CW-08'> from V2Criteria::V2_10154 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
    #Evaluates dependency <'HSI-408>REQ-CW-08'> from V2Criteria::V2_10155 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
    #Evaluates dependency <'HSI-408>REQ-CW-09'> from V2Criteria::V2_10155 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_09;
    #Evaluates dependency <'HSI-411>REQ-CREW-03'> from V2Criteria::V2_10056 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    #Evaluates dependency <'HSI-421>REQ-CW-07'> from V2Criteria::V2_10201 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_07;
    #Evaluates dependency <'HSI-430>REQ-SYS-08'> from V2Criteria::V2_10158 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_08;
    #Evaluates dependency <'HSI-431>REQ-SYS-08'> from V2Criteria::V2_10159 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_08;
    #Evaluates dependency <'HSI-440>REQ-CT-06'> from V2Criteria::V2_10083 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
    #Evaluates dependency <'HSI-441>REQ-CT-01'> from V2Criteria::V2_10084 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
    #Evaluates dependency <'HSI-441>REQ-CT-05'> from V2Criteria::V2_10084 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
    #Evaluates dependency <'HSI-441>REQ-CT-06'> from V2Criteria::V2_10084 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
    #Evaluates dependency <'HSI-441>REQ-CT-08'> from V2Criteria::V2_10084 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
    #Evaluates dependency <'HSI-442>REQ-CT-06'> from V2Criteria::V2_10085 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
    #Evaluates dependency <'HSI-443>REQ-CT-06'> from V2Criteria::V2_10091 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
    #Evaluates dependency <'HSI-445>REQ-CT-07'> from V2Criteria::V2_10094 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
    #Evaluates dependency <'HSI-446>REQ-CT-07'> from V2Criteria::V2_10095 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
    #Evaluates dependency <'HSI-447>REQ-CT-07'> from V2Criteria::V2_10096 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
    #Evaluates dependency <'HSI-453>REQ-CT-08'> from V2Criteria::V2_10163 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
    #Evaluates dependency <'HSI-455>REQ-PLS-03'> from V2Criteria::V2_10165 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
    #Evaluates dependency <'HSI-457>REQ-PLS-04'> from V2Criteria::V2_10167 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_04;
    #Evaluates dependency <'HSI-462>REQ-PLS-03'> from V2Criteria::V2_10172 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
    #Evaluates dependency <'HSI-464>REQ-PLS-03'> from V2Criteria::V2_10174 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
    #Evaluates dependency <'HSI-465>REQ-EVA-01'> from V2Criteria::V2_11001 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
    #Evaluates dependency <'HSI-467>REQ-EVA-05'> from V2Criteria::V2_11126 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
    #Evaluates dependency <'HSI-469>REQ-EVA-01'> from V2Criteria::V2_11007 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
    #Evaluates dependency <'HSI-471>REQ-CREW-06'> from V2Criteria::V2_11010 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
    #Evaluates dependency <'HSI-478>REQ-EVA-08'> from V2Criteria::V2_11017 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
    #Evaluates dependency <'HSI-485>REQ-CREW-08'> from V2Criteria::V2_11100 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    #Evaluates dependency <'HSI-486>REQ-EVA-01'> from V2Criteria::V2_11024 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
    #Evaluates dependency <'HSI-490>REQ-EVA-07'> from V2Criteria::V2_11027 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_07;
    #Evaluates dependency <'HSI-492>REQ-CREW-08'> from V2Criteria::V2_11032 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    #Evaluates dependency <'HSI-516>REQ-CREW-04'> from V2Criteria::V2_12017 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
    #Evaluates dependency <'HSI-542>REQ-CREW-09'> from V2Criteria::V2_12043 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
}
