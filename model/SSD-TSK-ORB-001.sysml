// SysML v2 テキスト：乗員の作業分析と、人・自動化・地上の機能の分担
// SSD-TSK-ORB-001 乗員の作業分析・機能の分担定義書（人と自動化と地上の分担、作業の段） の表から生成（lib/build_docs_ba.py・rev_ba/badata.py）。根拠の頁は SSD-TSK-ORB-001 にある。
package SSD_TSK_ORB_001 {
    doc /* SSD-TSK-ORB-001 乗員の作業分析・機能の分担定義書（人と自動化と地上の分担、作業の段）。図147〜149 と同じ内容。 */
    private import ScalarValues::*;
    enum def LevelOfAutomation { enum automatic; enum supervised; enum consent; enum assisted; enum manual; }
    metadata def Allocation { attribute loa : LevelOfAutomation; attribute phases : String; }
    metadata def AllocatedTo { doc /* 機能の主の担い手 */ }
    metadata def BackedUpBy { doc /* 機能の従（引継ぎ・監視）の担い手 */ }
    metadata def PerformedBy { attribute performer : String; attribute recipient : String; attribute cue : String; }
    package Agents {
        doc /* 担い手（乗員の役割・自動化・地上） */
        part def <'AG-CDR'> Commander { doc /* 船長（CDR）（乗員） */ }
        part def <'AG-PLT'> Pilot { doc /* 操縦手（PLT）（乗員） */ }
        part def <'AG-MS1'> MissionSpecialist1 { doc /* MS1（ミッションスペシャリスト）（乗員） */ }
        part def <'AG-MS2'> MissionSpecialist2 { doc /* MS2（フライトエンジニア）（乗員） */ }
        part def <'AG-CREW'> CrewUnassigned { doc /* 乗員（資料が担当を書かないとき）（乗員） */ }
        part def <'AG-EV1'> ExtravehicularCrew1 { doc /* EV1（EVA 乗員）（乗員） */ }
        part def <'AG-EV2'> ExtravehicularCrew2 { doc /* EV2（EVA 乗員）（乗員） */ }
        part def <'AG-IV'> IntravehicularCrew { doc /* IV（キャビンから EVA を支える乗員）（乗員） */ }
        part def <'AG-GPC'> OnboardComputers { doc /* 搭載計算機（PASS・BFS）（自動） */ }
        part def <'AG-EMU'> EmuControl { doc /* EMU の制御（DCM・CWS）（自動） */ }
        part def <'AG-MCC'> MissionControl { doc /* 地上（MCC）（地上） */ }
    }
    package FunctionAllocation {
        doc /* 機能の分担（自動化の段階） */
        action def <'FA-01'> Fa01 { doc /* 上昇の誘導と飛行制御（第1段・第2段）。地上：MCC は性能を監視し、必要なときに乗員に介入を指示する */ @Allocation { loa = LevelOfAutomation::supervised; phases = "PH-2a・PH-2b"; } }
        action def <'FA-02'> Fa02 { doc /* SSME のレッドラインによる停止。地上：— */ @Allocation { loa = LevelOfAutomation::supervised; phases = "PH-2a・PH-2b"; } }
        action def <'FA-03'> Fa03 { doc /* 上昇のアボートの境界の判定とアボートの選択。地上：MCC が追跡データと ARD で境界を求めて CAPCOM が伝え、アボートを指示し、FD が F6 の ABORT 灯を点ける */ @Allocation { loa = LevelOfAutomation::assisted; phases = "PH-2b"; } }
        action def <'FA-04'> Fa04 { doc /* PASS から BFS への切替え。地上：— */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-2・PH-6"; } }
        action def <'FA-05'> Fa05 { doc /* 軌道上の OMS・RCS 噴射の目標と実行。地上：MCC が OMS 噴射の目標と状態ベクトルをアップリンクする */ @Allocation { loa = LevelOfAutomation::consent; phases = "PH-3"; } }
        action def <'FA-06'> Fa06 { doc /* ランデブーの噴射（NCC〜MC4）の目標。地上：冗長な GNC GPC を求める規則のもとで、地上は追跡と状態ベクトルで支える */ @Allocation { loa = LevelOfAutomation::consent; phases = "PH-3"; } }
        action def <'FA-07'> Fa07 { doc /* 近傍運用と最終接近（手動の段階）。地上：— */ @Allocation { loa = LevelOfAutomation::assisted; phases = "PH-3"; } }
        action def <'FA-08'> Fa08 { doc /* 軌道離脱の判断（GO/NO-GO）。地上：MCC が飛行規則に基づいて軌道離脱噴射の GO/NO-GO を出す */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-4"; } }
        action def <'FA-09'> Fa09 { doc /* 軌道離脱噴射の実行と監視。地上：MCC は最後の更新・アップリンクを送る */ @Allocation { loa = LevelOfAutomation::consent; phases = "PH-6a"; } }
        action def <'FA-10'> Fa10 { doc /* 再突入の誘導と飛行制御（EI〜TAEM）。地上：MCC は追跡で状態ベクトルを更新する */ @Allocation { loa = LevelOfAutomation::supervised; phases = "PH-6a・PH-6b"; } }
        action def <'FA-11'> Fa11 { doc /* 航法の更新（TACAN・エアデータの取り込み）。地上：MCC がデータを比べて取り込みの GO を出す */ @Allocation { loa = LevelOfAutomation::consent; phases = "PH-6b"; } }
        action def <'FA-12'> Fa12 { doc /* TAEM と HAC（亜音速からの手動操縦）。地上：— */ @Allocation { loa = LevelOfAutomation::assisted; phases = "PH-6b"; } }
        action def <'FA-13'> Fa13 { doc /* 進入と着陸（プレフレア・接地）。地上：— */ @Allocation { loa = LevelOfAutomation::assisted; phases = "PH-6c"; } }
        action def <'FA-14'> Fa14 { doc /* 脚の展開。地上：— */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-6c"; } }
        action def <'FA-15'> Fa15 { doc /* 接地後の減速と方向の制御（ドラッグシュート・制動・前輪操向）。地上：— */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-6c"; } }
        action def <'FA-16'> Fa16 { doc /* RMS の操作。地上：地上は RMS の故障の情報をテレメトリで受ける */ @Allocation { loa = LevelOfAutomation::assisted; phases = "PH-3"; } }
        action def <'FA-17'> Fa17 { doc /* EVA の作業と消耗品の監視。地上：MCC が EMU のデータで消耗品の残りを計算し、30分の限界が近いことを音声で知らせる */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-5"; } }
        action def <'FA-18'> Fa18 { doc /* C&W の検知と警報。地上：MCC は TMBU で限界を変えられる */ @Allocation { loa = LevelOfAutomation::automatic; phases = "PH-1・PH-2・PH-3・PH-4・PH-5・PH-6"; } }
        action def <'FA-19'> Fa19 { doc /* 警報への処置（故障の切り分けと処置）。地上：MCC が系の故障の判断と処置を声で伝え、規則に基づく呼び出しを行う */ @Allocation { loa = LevelOfAutomation::assisted; phases = "PH-2・PH-3・PH-4・PH-6"; } }
        action def <'FA-20'> Fa20 { doc /* 乗員室の圧力と酸素分圧の制御。地上：— */ @Allocation { loa = LevelOfAutomation::supervised; phases = "PH-3・PH-5"; } }
        action def <'FA-21'> Fa21 { doc /* 消耗品の管理（極低温の反応剤・推進薬・水と重心）。地上：MCC が実時間で消耗品と EOM の重心を管理し、TIPS の通報で状態を乗員に送る */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-3・PH-4"; } }
        action def <'FA-22'> Fa22 { doc /* 電力の管理（燃料電池のパージ）。地上：軌道上では MCC のアップリンクで自動のパージを始めるのが通常 */ @Allocation { loa = LevelOfAutomation::consent; phases = "PH-3"; } }
        action def <'FA-23'> Fa23 { doc /* 通信の構成（S 帯 PM の組替えとアンテナの選択）。地上：S 帯 PM の組替えは地上が主で、GCIL の指令で行う */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-2・PH-3・PH-6"; } }
        action def <'FA-24'> Fa24 { doc /* ペイロードベイドアの開閉。地上：MCC が必要に応じて TMBU をアップリンクする */ @Allocation { loa = LevelOfAutomation::supervised; phases = "PH-2c・PH-4"; } }
        action def <'FA-25'> Fa25 { doc /* 医療（傷病の診断と処置）。地上：FCR の航空医官が診断・処置を指示し、「医師の承認が必要」の薬品の使用を決める */ @Allocation { loa = LevelOfAutomation::manual; phases = "PH-3"; } }
    }
    #AllocatedTo dependency <'FA-01>AG-GPC'> from FunctionAllocation::Fa01 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-01>AG-CDR'> from FunctionAllocation::Fa01 to Agents::Commander;
    #BackedUpBy dependency <'FA-01>AG-PLT'> from FunctionAllocation::Fa01 to Agents::Pilot;
    #BackedUpBy dependency <'FA-01>AG-MS2'> from FunctionAllocation::Fa01 to Agents::MissionSpecialist2;
    #AllocatedTo dependency <'FA-02>AG-GPC'> from FunctionAllocation::Fa02 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-02>AG-CDR'> from FunctionAllocation::Fa02 to Agents::Commander;
    #AllocatedTo dependency <'FA-03>AG-CDR'> from FunctionAllocation::Fa03 to Agents::Commander;
    #BackedUpBy dependency <'FA-03>AG-PLT'> from FunctionAllocation::Fa03 to Agents::Pilot;
    #BackedUpBy dependency <'FA-03>AG-GPC'> from FunctionAllocation::Fa03 to Agents::OnboardComputers;
    #AllocatedTo dependency <'FA-04>AG-CDR'> from FunctionAllocation::Fa04 to Agents::Commander;
    #BackedUpBy dependency <'FA-04>AG-PLT'> from FunctionAllocation::Fa04 to Agents::Pilot;
    #AllocatedTo dependency <'FA-05>AG-GPC'> from FunctionAllocation::Fa05 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-05>AG-CDR'> from FunctionAllocation::Fa05 to Agents::Commander;
    #AllocatedTo dependency <'FA-06>AG-GPC'> from FunctionAllocation::Fa06 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-06>AG-CDR'> from FunctionAllocation::Fa06 to Agents::Commander;
    #BackedUpBy dependency <'FA-06>AG-MCC'> from FunctionAllocation::Fa06 to Agents::MissionControl;
    #AllocatedTo dependency <'FA-07>AG-CDR'> from FunctionAllocation::Fa07 to Agents::Commander;
    #BackedUpBy dependency <'FA-07>AG-PLT'> from FunctionAllocation::Fa07 to Agents::Pilot;
    #AllocatedTo dependency <'FA-08>AG-MCC'> from FunctionAllocation::Fa08 to Agents::MissionControl;
    #BackedUpBy dependency <'FA-08>AG-CDR'> from FunctionAllocation::Fa08 to Agents::Commander;
    #AllocatedTo dependency <'FA-09>AG-GPC'> from FunctionAllocation::Fa09 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-09>AG-CDR'> from FunctionAllocation::Fa09 to Agents::Commander;
    #BackedUpBy dependency <'FA-09>AG-PLT'> from FunctionAllocation::Fa09 to Agents::Pilot;
    #AllocatedTo dependency <'FA-10>AG-GPC'> from FunctionAllocation::Fa10 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-10>AG-CDR'> from FunctionAllocation::Fa10 to Agents::Commander;
    #AllocatedTo dependency <'FA-11>AG-GPC'> from FunctionAllocation::Fa11 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-11>AG-CDR'> from FunctionAllocation::Fa11 to Agents::Commander;
    #BackedUpBy dependency <'FA-11>AG-PLT'> from FunctionAllocation::Fa11 to Agents::Pilot;
    #AllocatedTo dependency <'FA-12>AG-CDR'> from FunctionAllocation::Fa12 to Agents::Commander;
    #BackedUpBy dependency <'FA-12>AG-GPC'> from FunctionAllocation::Fa12 to Agents::OnboardComputers;
    #AllocatedTo dependency <'FA-13>AG-CDR'> from FunctionAllocation::Fa13 to Agents::Commander;
    #BackedUpBy dependency <'FA-13>AG-GPC'> from FunctionAllocation::Fa13 to Agents::OnboardComputers;
    #AllocatedTo dependency <'FA-14>AG-PLT'> from FunctionAllocation::Fa14 to Agents::Pilot;
    #BackedUpBy dependency <'FA-14>AG-CDR'> from FunctionAllocation::Fa14 to Agents::Commander;
    #AllocatedTo dependency <'FA-15>AG-CDR'> from FunctionAllocation::Fa15 to Agents::Commander;
    #BackedUpBy dependency <'FA-15>AG-PLT'> from FunctionAllocation::Fa15 to Agents::Pilot;
    #BackedUpBy dependency <'FA-15>AG-MS2'> from FunctionAllocation::Fa15 to Agents::MissionSpecialist2;
    #AllocatedTo dependency <'FA-16>AG-MS1'> from FunctionAllocation::Fa16 to Agents::MissionSpecialist1;
    #BackedUpBy dependency <'FA-16>AG-MS2'> from FunctionAllocation::Fa16 to Agents::MissionSpecialist2;
    #BackedUpBy dependency <'FA-16>AG-GPC'> from FunctionAllocation::Fa16 to Agents::OnboardComputers;
    #AllocatedTo dependency <'FA-17>AG-EV1'> from FunctionAllocation::Fa17 to Agents::ExtravehicularCrew1;
    #BackedUpBy dependency <'FA-17>AG-EV2'> from FunctionAllocation::Fa17 to Agents::ExtravehicularCrew2;
    #BackedUpBy dependency <'FA-17>AG-IV'> from FunctionAllocation::Fa17 to Agents::IntravehicularCrew;
    #AllocatedTo dependency <'FA-18>AG-GPC'> from FunctionAllocation::Fa18 to Agents::OnboardComputers;
    #AllocatedTo dependency <'FA-19>AG-CREW'> from FunctionAllocation::Fa19 to Agents::CrewUnassigned;
    #BackedUpBy dependency <'FA-19>AG-MS2'> from FunctionAllocation::Fa19 to Agents::MissionSpecialist2;
    #AllocatedTo dependency <'FA-20>AG-GPC'> from FunctionAllocation::Fa20 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-20>AG-IV'> from FunctionAllocation::Fa20 to Agents::IntravehicularCrew;
    #AllocatedTo dependency <'FA-21>AG-MCC'> from FunctionAllocation::Fa21 to Agents::MissionControl;
    #BackedUpBy dependency <'FA-21>AG-CREW'> from FunctionAllocation::Fa21 to Agents::CrewUnassigned;
    #AllocatedTo dependency <'FA-22>AG-GPC'> from FunctionAllocation::Fa22 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-22>AG-CREW'> from FunctionAllocation::Fa22 to Agents::CrewUnassigned;
    #AllocatedTo dependency <'FA-23>AG-MCC'> from FunctionAllocation::Fa23 to Agents::MissionControl;
    #BackedUpBy dependency <'FA-23>AG-CREW'> from FunctionAllocation::Fa23 to Agents::CrewUnassigned;
    #BackedUpBy dependency <'FA-23>AG-GPC'> from FunctionAllocation::Fa23 to Agents::OnboardComputers;
    #AllocatedTo dependency <'FA-24>AG-GPC'> from FunctionAllocation::Fa24 to Agents::OnboardComputers;
    #BackedUpBy dependency <'FA-24>AG-MS2'> from FunctionAllocation::Fa24 to Agents::MissionSpecialist2;
    #AllocatedTo dependency <'FA-25>AG-CREW'> from FunctionAllocation::Fa25 to Agents::CrewUnassigned;
    package Tasks {
        doc /* 作業分析（段の順） */
        action def <'T1'> DeorbitToLanding {
            doc /* 軌道離脱準備から着陸まで（PH-4・PH-6） */
            action <'T1-01'> st1_01 { doc /* TIG−4:00：PLT が Deorbit Prep Checklist に移り、軌道離脱の TIG に CRT タイマを合わせる */ @PerformedBy { performer = "AG-PLT"; recipient = "AG-GPC"; cue = "GNC 2 TIME 表示・SM のタイマ"; } }
            action <'T1-02'> st1_02 { doc /* TIG−2:40：乗員がペイロードベイドアの閉鎖を指令する */ @PerformedBy { performer = "AG-CREW"; recipient = "AG-GPC"; cue = "SM PL BAY DOORS 表示（IDP 4・SM OPS 2）"; } }
            action <'T1-03'> st1_03 { doc /* TIG−2:16：CDR・PLT が DPS を3段階で組み替え、GPC 1〜4 を PASS OPS 3、GPC 5 を BFS OPS 3 にする */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-GPC"; cue = "DPS 表示"; } }
            action <'T1-04'> st1_04 { doc /* TIG−1:42：MCC が PAD を読み上げ、状態ベクトルと軌道離脱の目標をアップリンクする */ @PerformedBy { performer = "AG-MCC"; recipient = "AG-CDR"; cue = "PAD（OMS 推進薬・軌道離脱/突入/着陸・軌道離脱の機動）"; } }
            action <'T1-05'> st1_05 { doc /* TIG−1:06：CDR が最後の IMU アラインメントを行い、RM のしきい値をリセットする */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-GPC"; cue = "DPS 表示"; } }
            action <'T1-06'> st1_06 { doc /* TIG−0:40：CDR が OMS TVC のジンバル点検を行い、同じ時間帯に PLT が APU の始動前の手順と OMS 噴射の準備を行う */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-GPC"; cue = "OMS MNVR EXEC 表示・BFS の SM SYS SUMM 2・GNC 50 HORIZ SIT・GNC 51 OVERRIDE"; } }
            action <'T1-07'> st1_07 { doc /* TIG−0:25：CDR が OPS 302 に進み、MCC が軌道離脱噴射の GO/NO-GO を出す */ @PerformedBy { performer = "AG-MCC"; recipient = "AG-CDR"; cue = "OPS 302 の表示"; } }
            action <'T1-08'> st1_08 { doc /* TIG−0:05：PLT が APU を1基始動し、低圧で運転する */ @PerformedBy { performer = "AG-PLT"; recipient = "AG-PLT"; cue = "BFS の SM SYS SUMM 2"; } }
            action <'T1-09'> st1_09 { doc /* TIG−0:00:15：CDR が点滅する EXEC キーを押して OMS の点火を起こす */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-GPC"; cue = "OMS MNVR EXEC 表示の EXEC の点滅"; } }
            action <'T1-10'> st1_10 { doc /* TIG：GPC が噴射を行い、CDR・PLT が ΔVTOT・VGO・TGO・HP で噴射を監視する（通常2〜3分） */ @PerformedBy { performer = "AG-GPC"; recipient = "AG-CDR"; cue = "GNC OMS MNVR EXEC・BFS GNC SYS SUMM 2"; } }
            action <'T1-11'> st1_11 { doc /* EI−13:00：PLT が残る2基の APU を始動し、3基を通常の圧力にする */ @PerformedBy { performer = "AG-PLT"; recipient = "AG-PLT"; cue = "APU・油圧の表示"; } }
            action <'T1-12'> st1_12 { doc /* EI−5:00：CDR が EI−5 の姿勢を確かめて GPC を OPS 304 に遷移させる */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-GPC"; cue = "DPS 表示"; } }
            action <'T1-13'> st1_13 { doc /* EI：GPC が再突入の誘導で飛び、乗員が ADI・AMI・AVVI を Entry キューカードと比べ、PASS と BFS の誘導を比べる */ @PerformedBy { performer = "AG-GPC"; recipient = "AG-CDR"; cue = "ENTRY TRAJ・HORIZ SIT・GNC SYS SUMM 1・BFS ENTRY TRAJ・ADI・AMI・AVVI"; } }
            action <'T1-14'> st1_14 { doc /* EI+22:00：MCC と乗員が TACAN のデータを航法と比べ、MCC が TACAN の取り込みを伝える */ @PerformedBy { performer = "AG-MCC"; recipient = "AG-CDR"; cue = "GNC 50 HORIZ SIT"; } }
            action <'T1-15'> st1_15 { doc /* EI+25:40：GPC が自動で OPS 305 に遷移して TAEM の誘導に入り、PLT がエアデータの取り込みを確かめる */ @PerformedBy { performer = "AG-GPC"; recipient = "AG-GPC"; cue = "VERT SIT 1"; } }
            action <'T1-16'> st1_16 { doc /* EI+28:17：CDR がピッチとロール/ヨーの CSS を選んで手動で飛ぶ */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-GPC"; cue = "スピードブレーキの指令と実位置"; } }
            action <'T1-17'> st1_17 { doc /* 接地−0:20：CDR の合図で PLT が脚を下げ、PLT と MS2 が脚の下げの表示を確かめる */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-PLT"; cue = "脚の表示"; } }
            action <'T1-18'> st1_18 { doc /* 接地+0:01：CDR の合図で PLT がドラッグシュートを展開する */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-PLT"; cue = "HUD（WOW の表示）"; } }
            action <'T1-19'> st1_19 { doc /* 接地+0:10：前脚の接地で MS2 が SRB SEP または ET SEP の押しボタンで荷重軽減・前輪操向・アンチスキッドの自動の離散信号を予備として与える */ @PerformedBy { performer = "AG-MS2"; recipient = "AG-GPC"; cue = "エレボンの位置・NWS FAIL 灯・アンチスキッドの故障灯"; } }
            action <'T1-20'> st1_20 { doc /* 接地+0:42：CDR が制動をかけて止め、MCC に滑走停止を報告する */ @PerformedBy { performer = "AG-CDR"; recipient = "AG-MCC"; cue = "HUD の対地速度と減速"; } }
            first st1_01 then st1_02;
            first st1_02 then st1_03;
            first st1_03 then st1_04;
            first st1_04 then st1_05;
            first st1_05 then st1_06;
            first st1_06 then st1_07;
            first st1_07 then st1_08;
            first st1_08 then st1_09;
            first st1_09 then st1_10;
            first st1_10 then st1_11;
            first st1_11 then st1_12;
            first st1_12 then st1_13;
            first st1_13 then st1_14;
            first st1_14 then st1_15;
            first st1_15 then st1_16;
            first st1_16 then st1_17;
            first st1_17 then st1_18;
            first st1_18 then st1_19;
            first st1_19 then st1_20;
        }
        action def <'T2'> EvaPreparation {
            doc /* EVA の準備（10.2 psi キャビンの前呼吸からエアロックの減圧まで）（PH-3・PH-5） */
            action <'T2-01'> st2_01 { doc /* —：EV1（と EV2）がアスピリンを飲んでマスクを着け、O2 の制御を EMERGENCY にして O2 の流れを確かめる */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EV1"; cue = "マスクの O2 の流れ"; } }
            action <'T2-02'> st2_02 { doc /* —：EV1（と EV2）が時刻を記し、少なくとも1時間マスクの前呼吸を続ける */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EV1"; cue = "時刻（MET）"; } }
            action <'T2-03'> st2_03 { doc /* —：EV1・EV2 の45分の前呼吸の後に、IV がキャビンの減圧を始めて DEPRESS CHART どおりに弁を組む */ @PerformedBy { performer = "AG-IV"; recipient = "AG-IV"; cue = "10.2 PSIA DEPRESS CHART"; } }
            action <'T2-04'> st2_04 { doc /* —：SM SYS SUMM 1 の CABIN P と PPO2 を IV が60秒ごとに図に記入し、区域が変わるたびに弁を組み替える */ @PerformedBy { performer = "AG-GPC"; recipient = "AG-IV"; cue = "SM SYS SUMM 1（CABIN P・PPO2・O2 濃度）"; } }
            action <'T2-05'> st2_05 { doc /* —：CABIN P と PPO2 が CONTROL ZONE に入ったら IV が減圧を止める */ @PerformedBy { performer = "AG-IV"; recipient = "AG-IV"; cue = "10.2 PSIA DEPRESS CHART の CONTROL ZONE・TARGET ZONE"; } }
            action <'T2-06'> st2_06 { doc /* —：IV が FDA と C/W の限界を 10.2 psi 用に変え、MCC に B/U C/W と SM ALERT の TMBU を頼む */ @PerformedBy { performer = "AG-IV"; recipient = "AG-GPC"; cue = "SPEC 60 SM TABLE MAINT"; } }
            action <'T2-07'> st2_07 { doc /* —：10.2 psia で1時間の前呼吸を終えたら、EV1（と EV2）がマスクの O2 制御を NORMAL にしてマスクを外す */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EV1"; cue = "キャビン圧・前呼吸の時間"; } }
            action <'T2-08'> st2_08 { doc /* —：IV が生体計測の信号・EMU のデータ・RF の通信を MCC と確かめる */ @PerformedBy { performer = "AG-IV"; recipient = "AG-MCC"; cue = "生体計測の信号・EMU のデータ"; } }
            action <'T2-09'> st2_09 { doc /* —：EV1 と EV2 が EMU を着用する（55分、同時に行ってよい） */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EV1"; cue = "DCM の STATUS（SOP 圧）"; } }
            action <'T2-10'> st2_10 { doc /* —：EV1 が DCM で漏れ点検を求め、EMU が自動の漏れ点検を行う */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EMU"; cue = "DCM の表示（LEAK CHECK?・LEAKAGE HI）"; } }
            action <'T2-11'> st2_11 { doc /* —：EV1（と EV2）が O2 ACT を PRESS にして PURGE 弁を開け、窒素をパージする（10.2 psi で8分） */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EV1"; cue = "パージの時計"; } }
            action <'T2-12'> st2_12 { doc /* —：IV が EMU 内の前呼吸の時計を始め、エアロックの減圧弁のふたを外す */ @PerformedBy { performer = "AG-IV"; recipient = "AG-IV"; cue = "前呼吸の時間の表（10.2 psi で12時間なら1:15、24時間なら0:40）"; } }
            action <'T2-13'> st2_13 { doc /* —：IV が SAFER を袋から出して EV の PLSS に取り付ける */ @PerformedBy { performer = "AG-IV"; recipient = "AG-EV1"; cue = "SAFER の留め具の表示"; } }
            action <'T2-14'> st2_14 { doc /* —：MCC の求めに応じて EV1・EV2 が DCM で電池のアンペア時を設定する */ @PerformedBy { performer = "AG-MCC"; recipient = "AG-EV1"; cue = "DCM の BATT 表示"; } }
            action <'T2-15'> st2_15 { doc /* —：IV がエアロックを出て内側ハッチを閉じて締め、均圧弁を OFF にする */ @PerformedBy { performer = "AG-IV"; recipient = "AG-IV"; cue = "—"; } }
            action <'T2-16'> st2_16 { doc /* —：前呼吸の時間が終わると、MCC に減圧へ進む GO を確かめる */ @PerformedBy { performer = "AG-IV"; recipient = "AG-MCC"; cue = "前呼吸の時計"; } }
            action <'T2-17'> st2_17 { doc /* —：エアロックの減圧弁を 5 にして減圧し、服圧計が 5.5 未満であることを監視する */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EV1"; cue = "服圧計・EV ALERT TONE"; } }
            action <'T2-18'> st2_18 { doc /* —：5.0 psi で減圧弁を閉じ、両方の EV が DCM で EMU の漏れ点検を行う */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EMU"; cue = "DCM の表示（LEAK CHECK?・LEAKAGE HI）"; } }
            action <'T2-19'> st2_19 { doc /* —：O2 ACT を EVA にして 0 まで減圧し、腰のテザーを D リングにつなぎ、ΔP が 0.5 未満で外部ハッチを開ける */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-EV1"; cue = "エアロックの dP/dT・ΔP"; } }
            action <'T2-20'> st2_20 { doc /* —：EV が EMU の電源を電池にし、IV が MET を記録して EVA の PET を 00:00 とする */ @PerformedBy { performer = "AG-EV1"; recipient = "AG-IV"; cue = "EV WARN TONE・MET"; } }
            first st2_01 then st2_02;
            first st2_02 then st2_03;
            first st2_03 then st2_04;
            first st2_04 then st2_05;
            first st2_05 then st2_06;
            first st2_06 then st2_07;
            first st2_07 then st2_08;
            first st2_08 then st2_09;
            first st2_09 then st2_10;
            first st2_10 then st2_11;
            first st2_11 then st2_12;
            first st2_12 then st2_13;
            first st2_13 then st2_14;
            first st2_14 then st2_15;
            first st2_15 then st2_16;
            first st2_16 then st2_17;
            first st2_17 then st2_18;
            first st2_18 then st2_19;
            first st2_19 then st2_20;
        }
    }
}
