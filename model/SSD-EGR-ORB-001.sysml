// SysML v2 テキスト：容積・動線・緊急脱出（与圧区画・移動の経路・非常退避のモード）
// SSD-EGR-ORB-001 容積・動線・緊急脱出定義書（与圧区画・移動の経路・非常退避のモード） の表から生成（lib/build_docs_be.py・rev_be/bedata.py）。根拠の頁は SSD-EGR-ORB-001 にある。
package SSD_EGR_ORB_001 {
    doc /* SSD-EGR-ORB-001 容積・動線・緊急脱出定義書（与圧区画・移動の経路・非常退避のモード）。図156・157 と同じ内容。 */
    private import ScalarValues::*;
    metadata def RelatedRequirement { doc /* 非常退避のモードに関わる既存の要求 */ }
    part def Space { doc /* 区画（与圧区画と機外） */ }
    connection def TranslationPath {
        doc /* 区画どうし・区画と機外をつなぐ移動の経路・開口（開口の寸法は doc に書く） */
        end a : Space;
        end b : Space;
    }
    part def CrewModuleArrangement {
        doc /* 乗員区画の配置。乗員室 2475 ft3、外部エアロックを含め約 2703 ft3（7人で 1人あたり約 386 ft3、本書の計算） */
        part exterior : Space { doc /* 機外（地上・宇宙空間・ペイロードベイ） */ }
        part <'SP-01'> sp01 : Space { doc /* 操縦室（前方の操縦席・後方の操縦ステーション）。容積の値は資料に無い */ }
        part <'SP-02'> sp02 : Space { doc /* 中甲板。容積の値は資料に無い */ }
        part <'SP-03'> sp03 : Space { doc /* エアロック（内部、中甲板の中）。容積の値は資料に無い */ }
        part <'SP-04'> sp04 : Space { doc /* エアロック（外部、ペイロードベイ。ODS の一部）。容積 228 ft3 */ }
        part <'SP-05'> sp05 : Space { doc /* トンネルアダプタとトンネル（Spacelab・Spacehab へ）。容積の値は資料に無い */ }
        part <'SP-06'> sp06 : Space { doc /* Spacelab・Spacehab の与圧モジュール。容積の値は資料に無い */ }
        part <'SP-07'> sp07 : Space { doc /* ISS（ODS でドッキングしたときの先の与圧区画）。容積の値は資料に無い */ }
        connection <'PA-01'> pa01 : TranslationPath connect sp01 to sp02;
        connection <'PA-02'> pa02 : TranslationPath connect sp01 to sp02;
        connection <'PA-03'> pa03 : TranslationPath connect sp02 to exterior;
        connection <'PA-04'> pa04 : TranslationPath connect sp02 to sp03;
        connection <'PA-05'> pa05 : TranslationPath connect sp03 to exterior;
        connection <'PA-06'> pa06 : TranslationPath connect sp02 to sp04;
        connection <'PA-07'> pa07 : TranslationPath connect sp04 to exterior;
        connection <'PA-08'> pa08 : TranslationPath connect sp04 to sp07;
        connection <'PA-09'> pa09 : TranslationPath connect sp04 to sp05;
        connection <'PA-10'> pa10 : TranslationPath connect sp05 to sp06;
        connection <'PA-11'> pa11 : TranslationPath connect sp05 to exterior;
        connection <'PA-12'> pa12 : TranslationPath connect sp01 to exterior;
    }
    package EgressModes {
        doc /* 非常退避・退出のモード（経路は区画と開口の順） */
        action def <'EG-01'> Eg01 { doc /* 射点の自力の非常退避（Mode I）。フェーズ PH-1。経路 SP-01→PA-01→SP-02→PA-03→OUT。所要時間 スライドワイヤのバスケットは時速約55マイルで滑り、止め網と減速用の鎖で約30秒で止まる。退避全体の所要時間・目標の値は資料に無い。 */ }
        action def <'EG-02'> Eg02 { doc /* 射点の助けのある非常退避（Mode II〜IV：クローズアウト要員・消防救難要員）。フェーズ PH-1。経路 SP-01→PA-01→SP-02→PA-03→OUT。所要時間 資料に無い */ }
        action def <'EG-03'> Eg03 { doc /* 着陸後の通常の退出。フェーズ PH-7。経路 SP-01→PA-01→SP-02→PA-03→OUT。所要時間 資料に無い */ }
        action def <'EG-04'> Eg04 { doc /* 着陸後の自力の非常退出・側面ハッチ（Mode V：ハッチを開く・ハッチ投棄）。フェーズ PH-7。経路 SP-01→PA-01→SP-02→PA-03→OUT。所要時間 脱出スライドは側面ハッチの全開・投棄から60秒以内に乗員を地上へ降ろす。T ハンドルの安全ピンの抜き取りは各1秒未満。 */ }
        action def <'EG-05'> Eg05 { doc /* 着陸後の自力の非常退出・頭上窓（Mode V：窓8の脱出パネル、降下器）。フェーズ PH-7。経路 SP-02→PA-01→SP-01→PA-12→OUT。所要時間 逆止め装置がかかってから窓を開ける前の均圧に34秒（FOM Vol. 12）。降下は約23 ft。全体の所要時間は資料に無い。 */ }
        action def <'EG-06'> Eg06 { doc /* 着陸後の助けのある退出（Mode VI・VII：車列が近づける区域・近づけない場所）。フェーズ PH-7。経路 SP-01→PA-01→SP-02→PA-03→OUT。所要時間 資料に無い */ }
        action def <'EG-07'> Eg07 { doc /* 制御された滑空中の脱出（Mode VIII：キャビンベント・側面ハッチ投棄・脱出ポール・パラシュート）。フェーズ PH-2・PH-6b。経路 SP-01→PA-01→SP-02→PA-03→OUT。所要時間 最大8人の脱出に約2分。40,000 ft でのキャビンベントで外気圧まで約75秒（均圧は約31,000 ft）。宣言はできれば50K ft より上。 */ }
        action def <'EG-08'> Eg08 { doc /* 制御を失った飛行からの脱出（正式の要求なし）。フェーズ PH-2・PH-6b。経路 SP-02→PA-03→OUT。所要時間 資料に無い */ }
        action def <'EG-09'> Eg09 { doc /* 軌道上の Spacehab からの退避と隔離（火災・減圧・有毒物の漏れ）。フェーズ PH-3。経路 SP-06→PA-10→SP-05→PA-09→SP-04→PA-06→SP-02。所要時間 非常のとき3分以内にモジュールを安全化・隔離する（ハッチを閉じるのに約1分）。 */ }
        action def <'EG-10'> Eg10 { doc /* 軌道上の ISS への退避（CSCS）と救助のシャトル（LON）。フェーズ PH-3。経路 SP-02→PA-06→SP-04→PA-08→SP-07。所要時間 資料に無い */ }
    }
    #RelatedRequirement dependency <'EG-01>REQ-CREW-09'> from EgressModes::Eg01 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #RelatedRequirement dependency <'EG-02>REQ-CREW-09'> from EgressModes::Eg02 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #RelatedRequirement dependency <'EG-04>REQ-CREW-09'> from EgressModes::Eg04 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #RelatedRequirement dependency <'EG-05>REQ-CREW-09'> from EgressModes::Eg05 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #RelatedRequirement dependency <'EG-06>REQ-CREW-09'> from EgressModes::Eg06 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #RelatedRequirement dependency <'EG-07>REQ-CREW-08'> from EgressModes::Eg07 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    #RelatedRequirement dependency <'EG-07>REQ-CREW-09'> from EgressModes::Eg07 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #RelatedRequirement dependency <'EG-07>REQ-CREW-10'> from EgressModes::Eg07 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_10;
    #RelatedRequirement dependency <'EG-08>REQ-CREW-09'> from EgressModes::Eg08 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
}
