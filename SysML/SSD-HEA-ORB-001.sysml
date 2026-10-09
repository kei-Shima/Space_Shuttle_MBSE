// SysML v2 テキスト：ヒューマンエラー解析（作業ごとの誤り → ハザードの原因、管理策）
// SSD-HEA-ORB-001 ヒューマンエラー解析書（作業ごとの誤り・結果・ハザード・管理策） の表から生成（lib/build_docs_bb.py・rev_bb/bbdata.py）。根拠の頁は SSD-HEA-ORB-001 にある。
package SSD_HEA_ORB_001 {
    doc /* SSD-HEA-ORB-001 ヒューマンエラー解析書（作業ごとの誤り・結果・ハザード・管理策）。図150・151 と同じ内容。原因・ハザード・管理策はハザード解析（SSD_HAZ_ORB_001）のもの。 */
    private import ScalarValues::*;
    private import CauseAndEffect::*;
    metadata def MitigatedBy { doc /* 誤りへの管理策（ハザード解析の管理策 HM） */ }
    metadata def DuringTask { doc /* 誤りの起こる作業 */ }
    occurrence def HumanError {
        doc /* 乗員・地上の誤り（[V2 3102] の作業に基づく HEA の枠） */
        attribute errorKind : String;
        attribute consequence : String;
        attribute controlKinds : String;
    }
    package Tasks {
        doc /* 誤りの起こる作業 */
        action def <'HT-01'> Ht01 { doc /* 上昇中の MPS の故障対応（He 漏れの隔離、リミットの管理、SSME の手動停止）（PH-2a・PH-2b） */ }
        action def <'HT-02'> Ht02 { doc /* 上昇・再突入の DPS の故障対応（パネル O6 の GPC・MDM のスイッチ、BFS の engage、GPC のモード）（PH-2・PH-6） */ }
        action def <'HT-03'> Ht03 { doc /* キーボードの項目入力と OPS 遷移・restring（NBAT・目標の入力、IDP の割当て）（PH-2c・PH-3・PH-4） */ }
        action def <'HT-04'> Ht04 { doc /* 電力系の故障対応（燃料電池の停止と反応剤弁、冷却喪失、回路遮断器・RPC のリセット）（PH-2・PH-3・PH-6） */ }
        action def <'HT-05'> Ht05 { doc /* APU・油圧の運用（APU の停止、油圧系の LOW PRESS）（PH-4・PH-6・PH-7） */ }
        action def <'HT-06'> Ht06 { doc /* OMS/RCS の構成と噴射（OMS 噴射、クロスフィード、アボートのダンプ後の再構成、地上の推進薬の扱い）（PH-2c・PH-3・PH-4・PH-8） */ }
        action def <'HT-07'> Ht07 { doc /* 手動の飛行制御（RHC・THC、FCS チャネル、CSS と手動スロットル、DAP のモード）（PH-2・PH-3・PH-6） */ }
        action def <'HT-08'> Ht08 { doc /* ペイロードベイの機械系（PLBD・放熱器・MPM・RMS の保持ラッチ）（PH-3・PH-4） */ }
        action def <'HT-09'> Ht09 { doc /* 進入・着陸の操作（着陸脚の展開、ドラッグシュート）（PH-6c） */ }
        action def <'HT-10'> Ht10 { doc /* C&W の運用（故障メッセージの確認・消去、煙検知のリセット、R13U の限界・抑止の管理）（PH-2・PH-3・PH-6） */ }
        action def <'HT-11'> Ht11 { doc /* 乗員室の環境の構成（PCS の弁、キャビンベント弁、ファン・湿気分離器のスイッチ）（PH-1・PH-2・PH-3・PH-4） */ }
        action def <'HT-12'> Ht12 { doc /* 通信と地上の調整（手持ち無線、地上局の切替え、INCO の通信の管理）（PH-3・PH-6c・PH-7） */ }
    }
    package HumanErrors {
        doc /* 誤りの使用と、ハザードの原因（無ければハザード）への因果 */
        #cause occurrence <'HE-01'> he01 : HumanError { doc /* He 漏れの隔離または SSME の停止の手順で、パネル R2 の隣り合う ENGINE POWER（AC）スイッチと He ISOLATION スイッチを取り違える。 */ attribute :>> errorKind = "選択の誤り"; attribute :>> consequence = "ENGINE POWER を OFF にするとそのエンジンはデータ経路故障になり、停止しても赤い MAIN ENGINE STATUS 灯を示さない。"; attribute :>> controlKinds = "設計・訓練・手順"; }
        #cause occurrence <'HE-02'> he02 : HumanError { doc /* データ経路故障と commfault の押しボタン（またはデータ経路故障と指令経路故障）の組合せで MAIN ENGINE SHUT DOWN 押しボタンを使う。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "SAFING 指令がデータ経路故障と重なり、運転中のエンジンのプリバルブを閉じて破局的な停止になる。"; attribute :>> controlKinds = "手順・訓練"; }
        #cause occurrence <'HE-03'> he03 : HumanError { doc /* He 漏れでレギュレータ圧が下がり始めたのに、そのエンジンのリミットを有効にしない（停止の監視を抑止したままにする）。 */ attribute :>> errorKind = "省略"; attribute :>> consequence = "He が不足しリミットの停止が抑止されていると SSME はほぼ確実に破局的に故障する。"; attribute :>> controlKinds = "手順・警報"; }
        #cause occurrence <'HE-04'> he04 : HumanError { doc /* 上昇の終わり（MM 105）より前に AC BUS SNSR スイッチを AUTO TRIP にする（MONITOR にしない）。 */ attribute :>> errorKind = "時機の誤り"; attribute :>> consequence = "動力飛行中の不用意な交流母線の切離しで SSME 制御器が別の交流母線の二次側へ自動で切り替わり、SSME を失うおそれがある。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-05'> he05 : HumanError { doc /* 上昇中に CSS を取ったのに手動スロットルを取らない。 */ attribute :>> errorKind = "省略"; attribute :>> consequence = "機体の姿勢が誘導の解を満たさず誘導が未収束になり、望まない MECO 指令（不用意な停止）を出しうる。"; attribute :>> controlKinds = "手順・訓練"; }
        #cause occurrence <'HE-06'> he06 : HumanError { doc /* 動的な飛行で、手が届きにくくヘルメットで見にくいパネル O6 の GPC・MDM スイッチのうち誤ったものを操作する。 */ attribute :>> errorKind = "選択の誤り"; attribute :>> consequence = "誤った MDM の電源断や誤った GPC のモード切替えで、1故障で危機的な状態が残る。"; attribute :>> controlKinds = "手順・設計・訓練"; }
        #cause occurrence <'HE-07'> he07 : HumanError { doc /* BFS ENGAGE の押しボタンを不用意に押す（不用意な engage）。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "BFS が使えない・単独のときの不用意な engage で PASS がソフトウェア停止に陥る。"; attribute :>> controlKinds = "設計・手順"; }
        #cause occurrence <'HE-08'> he08 : HumanError { doc /* BFS の engage の後に、動作中のすべての PASS GPC が engage を認識した（MODE・OUTPUT のトークバックが barberpole）かを確かめない。 */ attribute :>> errorKind = "省略"; attribute :>> consequence = "認識しない PASS GPC が飛行重要ストリングに I/O の問題を起こす。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-09'> he09 : HumanError { doc /* GPC MODE スイッチを位置の間で手を離さずに動かす、または STBY と RUN の間で動かした後の 10 秒以内にほかのスイッチの操作・キーボードの入力をする。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "スイッチが同時に2つの位置にある問題が起き、また共通セットに入れる GPC が同期に失敗しうる。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-10'> he10 : HumanError { doc /* OPS 遷移・restring の前に NBAT が正しいと思い込んで確かめない、または同期できない GPC に IDP を割り当てたまま入力する。 */ attribute :>> errorKind = "誤認・誤判断"; attribute :>> consequence = "誤ったストリングの割当てや、NBAT・restring・噴射目標の不用意な入力が起こる。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-11'> he11 : HumanError { doc /* キーボードで不正な打鍵・誤った値を入力する、または IDP/CRT SEL を確かめずに別の表示・GPC に入力する。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "不正な入力が GPC に入る、意図しない表示・GPC に値が入る。"; attribute :>> controlKinds = "設計・手順"; }
        #cause occurrence <'HE-12'> he12 : HumanError { doc /* 主機能を切り替えるつもりで、パネル C2 で MAJOR FUNC スイッチの隣の IDP/CRT POWER スイッチを切る。 */ attribute :>> errorKind = "選択の誤り"; attribute :>> consequence = "その IDP の電源が切れる（表示を失う）。"; attribute :>> controlKinds = "手順・訓練"; }
        #cause occurrence <'HE-13'> he13 : HumanError { doc /* 燃料電池を止めるとき、パネル R1 で 1-3-2 の順に並ぶ FUEL CELL REAC スイッチのうち誤った反応剤弁を閉じる。 */ attribute :>> errorKind = "選択の誤り"; attribute :>> consequence = "2基目の燃料電池と、場合により2本の主母線を失う。"; attribute :>> controlKinds = "訓練・警報"; }
        #cause occurrence <'HE-14'> he14 : HumanError { doc /* 構成外で見つけた回路遮断器・RPC を MCC と調整せずに閉じる・リセットする、または短絡・故障の分かっている部品に電源を戻す。 */ attribute :>> errorKind = "誤認・誤判断"; attribute :>> consequence = "回路保護のリセットは多くの場合に元の事象より大きな損傷を招き、カプトン配線のアークトラッキングで配線束を失うと破局的になりうる。"; attribute :>> controlKinds = "手順・地上の監視"; }
        #cause occurrence <'HE-15'> he15 : HumanError { doc /* 燃料電池の冷却喪失で 9 分以内に処置（停止）しない。 */ attribute :>> errorKind = "時機の誤り"; attribute :>> consequence = "燃料電池の火災・爆発による破局的な乗員・機体の喪失。"; attribute :>> controlKinds = "警報・手順"; }
        #cause occurrence <'HE-16'> he16 : HumanError { doc /* APU の停止手順や油圧系を LOW PRESS にするとき、パネル R2 の隣り合う HYD MAIN PUMP と APU CNTLR PWR のスイッチを取り違える。 */ attribute :>> errorKind = "選択の誤り"; attribute :>> consequence = "資料に無い。"; attribute :>> controlKinds = "訓練"; }
        #cause occurrence <'HE-17'> he17 : HumanError { doc /* OMS 噴射の構成で He 隔離弁が点火時に開くようにしない（手順の誤り）。 */ attribute :>> errorKind = "省略"; attribute :>> consequence = "噴射がアレージのブローダウンモードで行われ、燃焼室圧が下がる。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-18'> he18 : HumanError { doc /* クロスフィードの手順でスイッチ・モードを戻し忘れる（autopilot のモードを選んだまま残す）。 */ attribute :>> errorKind = "省略"; attribute :>> consequence = "手順が防ぐはずの噴射が起き、推進薬のマニホールドが真空になるおそれがある。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-19'> he19 : HumanError { doc /* 多重故障でのアボートのダンプの後、ソフトウェアが OMS・RCS を悪い構成のまま残したことに気付かず手で再構成しない。 */ attribute :>> errorKind = "誤認・誤判断"; attribute :>> consequence = "不用意な推進薬の枯渇や制御の喪失。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-20'> he20 : HumanError { doc /* RCS の並進の噴射器の構成、または試験の DAP のモードを誤って選ぶ（構成外のまま噴射する）。 */ attribute :>> errorKind = "選択の誤り"; attribute :>> consequence = "failed-off の冗長管理のメッセージが出る、またはバーニア RCS の作動が過大になる。"; attribute :>> controlKinds = "手順・設計"; }
        #cause occurrence <'HE-21'> he21 : HumanError { doc /* 地上の作業（フェリー飛行の構成）で推進薬タンクの排出を不適切に行う。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "後部 RCS の推進薬タンクが逆向きの加圧を受ける。"; attribute :>> controlKinds = ""; }
        #cause occurrence <'HE-22'> he22 : HumanError { doc /* 飛行制御の電源の入切や RHC・THC への不用意な接触・操作で、意図しない噴射や手動 DAP への切替えを起こす。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "意図しない姿勢・並進の噴射と角速度（STS-3 では約 0.4 deg/sec のロールと約 1 deg/sec のヨー）、推進薬の消費。"; attribute :>> controlKinds = "設計・手順"; }
        #cause occurrence <'HE-23'> he23 : HumanError { doc /* FCS CHANNEL スイッチを、スイッチ操作の間を 2 秒空けずに続けて動かす。 */ attribute :>> errorKind = "時機の誤り"; attribute :>> consequence = "資料に無い。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-24'> he24 : HumanError { doc /* パネル R13L で、名称と外見の似た PL BAY DOOR SYS ENABLE と PL BAY MECH PWR SYS のスイッチを取り違える。 */ attribute :>> errorKind = "選択の誤り"; attribute :>> consequence = "資料に無い。"; attribute :>> controlKinds = "手順・訓練"; }
        #cause occurrence <'HE-25'> he25 : HumanError { doc /* RMS の保持ラッチ・MPM のスイッチを不用意に操作する（RMS が受け台に無いときの MPM の作動、OBSS の解放）。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "RMS の運用中に MPM が格納されるとオービタ・RMS・ペイロードが損傷しうる。OBSS の不用意な解放。"; attribute :>> controlKinds = "設計・手順"; }
        #cause occurrence <'HE-26'> he26 : HumanError { doc /* 機械系（PLBD・ラッチ・放熱器など）を、単モータの時間を過ぎても所定の状態にならないのに駆動し続ける。 */ attribute :>> errorKind = "時機の誤り"; attribute :>> consequence = "資料に無い。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-27'> he27 : HumanError { doc /* 着陸脚・油圧の操作器を不用意に作動させる（早すぎる・速すぎる着陸脚の展開を含む）。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "脚は飛行中に引き込めない（F-MECH-LDG-06）。"; attribute :>> controlKinds = "設計・手順"; }
        #cause occurrence <'HE-28'> he28 : HumanError { doc /* ドラッグシュートを展開より前に arm する、または 230 KEAS を超えて展開する。 */ attribute :>> errorKind = "時機の誤り"; attribute :>> consequence = "arm の後の追加の故障で不用意な展開が起こりえ、不用意な展開は破局的になりうる過大な沈下率を招く。"; attribute :>> controlKinds = "手順・設計"; }
        #cause occurrence <'HE-29'> he29 : HumanError { doc /* 故障メッセージの行を見た後に消さない、故障の要約を定期的に見ない。 */ attribute :>> errorKind = "省略"; attribute :>> consequence = "後の故障の警報や故障メッセージを見落とす。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-30'> he30 : HumanError { doc /* 煙の濃度が 1.8 を下回ったのにパネル L1 の SENSOR RESET を押さない。 */ attribute :>> errorKind = "省略"; attribute :>> consequence = "煙検知の警報がマスクされる。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-31'> he31 : HumanError { doc /* パネル R13U の PARAMETER SELECT を使った後に 119 以下の値のまま残す、または系のスイッチ（IMU のファン・湿気分離器など）を不用意に切る。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "パラメータが不用意に抑止・有効化され、限界外れの警報が出ない。系の機能（冷却・湿気の除去）を失う。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-32'> he32 : HumanError { doc /* WCS の上の天井パネルにある PCS の機械・電気の弁とスイッチの操作を誤る。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "資料に無い。"; attribute :>> controlKinds = "訓練"; }
        #cause occurrence <'HE-33'> he33 : HumanError { doc /* キャビンベント弁を不用意に開ける。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "キャビンの減圧。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-34'> he34 : HumanError { doc /* 手持ち無線の音量のつまみを十分に上げない（操作の手順の誤り）。 */ attribute :>> errorKind = "誤操作"; attribute :>> consequence = "着陸後にコンボイと交信できない。"; attribute :>> controlKinds = "手順"; }
        #cause occurrence <'HE-35'> he35 : HumanError { doc /* 地上局どうし（または INCO の手動の通信の管理）で通信の構成・引継ぎの調整を誤る。 */ attribute :>> errorKind = "伝達の誤り"; attribute :>> consequence = "UHF の2つの送信機が同時にアップリンクして音声が乱れる。人間の誤りによる通信の喪失。"; attribute :>> controlKinds = "地上の監視・手順"; }
        #causation connection <'HE-01>HC-21'> he01_hc21 connect he01 to SSD_HAZ_ORB_001::HazardModel::hc21;
        #causation connection <'HE-01>HC-23'> he01_hc23 connect he01 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'HE-02>HC-23'> he02_hc23 connect he02 to SSD_HAZ_ORB_001::HazardModel::hc23;
        #causation connection <'HE-03>HC-21'> he03_hc21 connect he03 to SSD_HAZ_ORB_001::HazardModel::hc21;
        #causation connection <'HE-03>HC-22'> he03_hc22 connect he03 to SSD_HAZ_ORB_001::HazardModel::hc22;
        #causation connection <'HE-04>HZ-07'> he04_hz07 connect he04 to SSD_HAZ_ORB_001::HazardModel::hz07;
        #causation connection <'HE-05>HZ-07'> he05_hz07 connect he05 to SSD_HAZ_ORB_001::HazardModel::hz07;
        #causation connection <'HE-06>HC-47'> he06_hc47 connect he06 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'HE-07>HC-47'> he07_hc47 connect he07 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'HE-08>HC-47'> he08_hc47 connect he08 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'HE-09>HC-47'> he09_hc47 connect he09 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'HE-10>HC-47'> he10_hc47 connect he10 to SSD_HAZ_ORB_001::HazardModel::hc47;
        #causation connection <'HE-13>HC-13'> he13_hc13 connect he13 to SSD_HAZ_ORB_001::HazardModel::hc13;
        #causation connection <'HE-14>HC-01'> he14_hc01 connect he14 to SSD_HAZ_ORB_001::HazardModel::hc01;
        #causation connection <'HE-14>HC-14'> he14_hc14 connect he14 to SSD_HAZ_ORB_001::HazardModel::hc14;
        #causation connection <'HE-15>HC-12'> he15_hc12 connect he15 to SSD_HAZ_ORB_001::HazardModel::hc12;
        #causation connection <'HE-16>HC-18'> he16_hc18 connect he16 to SSD_HAZ_ORB_001::HazardModel::hc18;
        #causation connection <'HE-17>HC-28'> he17_hc28 connect he17 to SSD_HAZ_ORB_001::HazardModel::hc28;
        #causation connection <'HE-18>HZ-09'> he18_hz09 connect he18 to SSD_HAZ_ORB_001::HazardModel::hz09;
        #causation connection <'HE-19>HC-26'> he19_hc26 connect he19 to SSD_HAZ_ORB_001::HazardModel::hc26;
        #causation connection <'HE-23>HC-48'> he23_hc48 connect he23 to SSD_HAZ_ORB_001::HazardModel::hc48;
        #causation connection <'HE-24>HC-33'> he24_hc33 connect he24 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'HE-25>HC-34'> he25_hc34 connect he25 to SSD_HAZ_ORB_001::HazardModel::hc34;
        #causation connection <'HE-26>HC-33'> he26_hc33 connect he26 to SSD_HAZ_ORB_001::HazardModel::hc33;
        #causation connection <'HE-27>HC-43'> he27_hc43 connect he27 to SSD_HAZ_ORB_001::HazardModel::hc43;
        #causation connection <'HE-28>HC-44'> he28_hc44 connect he28 to SSD_HAZ_ORB_001::HazardModel::hc44;
        #causation connection <'HE-30>HC-01'> he30_hc01 connect he30 to SSD_HAZ_ORB_001::HazardModel::hc01;
        #causation connection <'HE-30>HC-02'> he30_hc02 connect he30 to SSD_HAZ_ORB_001::HazardModel::hc02;
        #causation connection <'HE-32>HC-05'> he32_hc05 connect he32 to SSD_HAZ_ORB_001::HazardModel::hc05;
        #causation connection <'HE-33>HC-06'> he33_hc06 connect he33 to SSD_HAZ_ORB_001::HazardModel::hc06;
        #causation connection <'HE-35>HC-46'> he35_hc46 connect he35 to SSD_HAZ_ORB_001::HazardModel::hc46;
    }
    #DuringTask dependency <'HE-01>HT-01'> from HumanErrors::he01 to Tasks::Ht01;
    #MitigatedBy dependency <'HE-01>HM-29'> from HumanErrors::he01 to SSD_HAZ_ORB_001::HazardControls::hm29;
    #DuringTask dependency <'HE-02>HT-01'> from HumanErrors::he02 to Tasks::Ht01;
    #MitigatedBy dependency <'HE-02>HM-31'> from HumanErrors::he02 to SSD_HAZ_ORB_001::HazardControls::hm31;
    #DuringTask dependency <'HE-03>HT-01'> from HumanErrors::he03 to Tasks::Ht01;
    #MitigatedBy dependency <'HE-03>HM-29'> from HumanErrors::he03 to SSD_HAZ_ORB_001::HazardControls::hm29;
    #DuringTask dependency <'HE-04>HT-01'> from HumanErrors::he04 to Tasks::Ht01;
    #DuringTask dependency <'HE-05>HT-07'> from HumanErrors::he05 to Tasks::Ht07;
    #DuringTask dependency <'HE-06>HT-02'> from HumanErrors::he06 to Tasks::Ht02;
    #MitigatedBy dependency <'HE-06>HM-67'> from HumanErrors::he06 to SSD_HAZ_ORB_001::HazardControls::hm67;
    #DuringTask dependency <'HE-07>HT-02'> from HumanErrors::he07 to Tasks::Ht02;
    #MitigatedBy dependency <'HE-07>HM-67'> from HumanErrors::he07 to SSD_HAZ_ORB_001::HazardControls::hm67;
    #DuringTask dependency <'HE-08>HT-02'> from HumanErrors::he08 to Tasks::Ht02;
    #MitigatedBy dependency <'HE-08>HM-67'> from HumanErrors::he08 to SSD_HAZ_ORB_001::HazardControls::hm67;
    #DuringTask dependency <'HE-09>HT-02'> from HumanErrors::he09 to Tasks::Ht02;
    #DuringTask dependency <'HE-10>HT-03'> from HumanErrors::he10 to Tasks::Ht03;
    #DuringTask dependency <'HE-11>HT-03'> from HumanErrors::he11 to Tasks::Ht03;
    #DuringTask dependency <'HE-12>HT-03'> from HumanErrors::he12 to Tasks::Ht03;
    #DuringTask dependency <'HE-13>HT-04'> from HumanErrors::he13 to Tasks::Ht04;
    #MitigatedBy dependency <'HE-13>HM-17'> from HumanErrors::he13 to SSD_HAZ_ORB_001::HazardControls::hm17;
    #DuringTask dependency <'HE-14>HT-04'> from HumanErrors::he14 to Tasks::Ht04;
    #MitigatedBy dependency <'HE-14>HM-03'> from HumanErrors::he14 to SSD_HAZ_ORB_001::HazardControls::hm03;
    #MitigatedBy dependency <'HE-14>HM-18'> from HumanErrors::he14 to SSD_HAZ_ORB_001::HazardControls::hm18;
    #DuringTask dependency <'HE-15>HT-04'> from HumanErrors::he15 to Tasks::Ht04;
    #MitigatedBy dependency <'HE-15>HM-16'> from HumanErrors::he15 to SSD_HAZ_ORB_001::HazardControls::hm16;
    #DuringTask dependency <'HE-16>HT-05'> from HumanErrors::he16 to Tasks::Ht05;
    #DuringTask dependency <'HE-17>HT-06'> from HumanErrors::he17 to Tasks::Ht06;
    #DuringTask dependency <'HE-18>HT-06'> from HumanErrors::he18 to Tasks::Ht06;
    #DuringTask dependency <'HE-19>HT-06'> from HumanErrors::he19 to Tasks::Ht06;
    #MitigatedBy dependency <'HE-19>HM-40'> from HumanErrors::he19 to SSD_HAZ_ORB_001::HazardControls::hm40;
    #DuringTask dependency <'HE-20>HT-06'> from HumanErrors::he20 to Tasks::Ht06;
    #DuringTask dependency <'HE-21>HT-06'> from HumanErrors::he21 to Tasks::Ht06;
    #DuringTask dependency <'HE-22>HT-07'> from HumanErrors::he22 to Tasks::Ht07;
    #DuringTask dependency <'HE-23>HT-07'> from HumanErrors::he23 to Tasks::Ht07;
    #MitigatedBy dependency <'HE-23>HM-68'> from HumanErrors::he23 to SSD_HAZ_ORB_001::HazardControls::hm68;
    #DuringTask dependency <'HE-24>HT-08'> from HumanErrors::he24 to Tasks::Ht08;
    #DuringTask dependency <'HE-25>HT-08'> from HumanErrors::he25 to Tasks::Ht08;
    #MitigatedBy dependency <'HE-25>HM-50'> from HumanErrors::he25 to SSD_HAZ_ORB_001::HazardControls::hm50;
    #DuringTask dependency <'HE-26>HT-08'> from HumanErrors::he26 to Tasks::Ht08;
    #MitigatedBy dependency <'HE-26>HM-47'> from HumanErrors::he26 to SSD_HAZ_ORB_001::HazardControls::hm47;
    #DuringTask dependency <'HE-27>HT-09'> from HumanErrors::he27 to Tasks::Ht09;
    #DuringTask dependency <'HE-28>HT-09'> from HumanErrors::he28 to Tasks::Ht09;
    #MitigatedBy dependency <'HE-28>HM-62'> from HumanErrors::he28 to SSD_HAZ_ORB_001::HazardControls::hm62;
    #DuringTask dependency <'HE-29>HT-10'> from HumanErrors::he29 to Tasks::Ht10;
    #DuringTask dependency <'HE-30>HT-10'> from HumanErrors::he30 to Tasks::Ht10;
    #MitigatedBy dependency <'HE-30>HM-01'> from HumanErrors::he30 to SSD_HAZ_ORB_001::HazardControls::hm01;
    #DuringTask dependency <'HE-31>HT-10'> from HumanErrors::he31 to Tasks::Ht10;
    #DuringTask dependency <'HE-32>HT-11'> from HumanErrors::he32 to Tasks::Ht11;
    #DuringTask dependency <'HE-33>HT-11'> from HumanErrors::he33 to Tasks::Ht11;
    #MitigatedBy dependency <'HE-33>HM-09'> from HumanErrors::he33 to SSD_HAZ_ORB_001::HazardControls::hm09;
    #DuringTask dependency <'HE-34>HT-12'> from HumanErrors::he34 to Tasks::Ht12;
    #DuringTask dependency <'HE-35>HT-12'> from HumanErrors::he35 to Tasks::Ht12;
}
