// SysML v2 テキスト：ハザード解析（ハザード・原因・管理策・リスク）
// SSD-HAZ-ORB-001 ハザード解析書（ハザード・原因・管理策・検証） の表から生成（lib/build_docs_aq.py・rev_aq/aqdata.py）。根拠の頁は SSD-HAZ-ORB-001 にある。
package SSD_HAZ_ORB_001 {
    doc /* SSD-HAZ-ORB-001 ハザード解析書（ハザード・原因・管理策・検証）。図120・121 と同じ内容。 */
    private import ScalarValues::*;
    private import CauseAndEffect::*;
    private import RiskMetadata::*;
    metadata def ImplementedBy { doc /* 管理策を実現する既存の要求・警報・活動 */ }
    metadata def Involves { doc /* 原因に関わる機能ブロック */ }
    occurrence def Hazard { doc /* ハザード（危険な状態） */ attribute severity : String; attribute worstOutcome : String; }
    occurrence def HazardCause { doc /* ハザードの原因 */ }
    occurrence def <'HZ-01'> HZ01_Hazard :> Hazard { doc /* キャビン・アビオニクスベイの火災 */ }
    occurrence def <'HZ-02'> HZ02_Hazard :> Hazard { doc /* キャビンの減圧（与圧の喪失） */ }
    occurrence def <'HZ-03'> HZ03_Hazard :> Hazard { doc /* CO2 の蓄積・キャビン大気の汚染（燃焼生成物・ハロン・フレオン 21・ヒドラジン） */ }
    occurrence def <'HZ-04'> HZ04_Hazard :> Hazard { doc /* 電力の喪失（燃料電池・極低温反応剤・主母線） */ }
    occurrence def <'HZ-05'> HZ05_Hazard :> Hazard { doc /* 能動熱制御（冷却）の喪失 */ }
    occurrence def <'HZ-06'> HZ06_Hazard :> Hazard { doc /* 油圧の喪失（舵面・SSME TVC・脚・制動）と APU の故障 */ }
    occurrence def <'HZ-07'> HZ07_Hazard :> Hazard { doc /* 上昇中の SSME の停止・MPS の He 漏れ（推力の喪失・破片を伴うエンジン破損） */ }
    occurrence def <'HZ-08'> HZ08_Hazard :> Hazard { doc /* MPS・ET の水素の漏れ・残留推進薬・マニホールドの過圧 */ }
    occurrence def <'HZ-09'> HZ09_Hazard :> Hazard { doc /* OMS/RCS 推進薬（MMH・N2O4）の漏れ・毒性・枯渇 */ }
    occurrence def <'HZ-10'> HZ10_Hazard :> Hazard { doc /* TPS（タイル・RCC・熱窓）の損傷による再突入の過熱 */ }
    occurrence def <'HZ-11'> HZ11_Hazard :> Hazard { doc /* ペイロードベイドアの閉鎖不能・ラッチの不掛かり */ }
    occurrence def <'HZ-12'> HZ12_Hazard :> Hazard { doc /* EVA 中の EMU の故障・乗員の離脱 */ }
    occurrence def <'HZ-13'> HZ13_Hazard :> Hazard { doc /* SRB の故障（推力方向制御の喪失・軌道の逸脱） */ }
    occurrence def <'HZ-14'> HZ14_Hazard :> Hazard { doc /* 着陸装置・制動・操向の故障 */ }
    occurrence def <'HZ-15'> HZ15_Hazard :> Hazard { doc /* 地上との通信の喪失（音声・コマンド・テレメトリ） */ }
    occurrence def <'HZ-16'> HZ16_Hazard :> Hazard { doc /* 飛行制御の喪失（GPC 冗長セット・FCS チャネル・センサの故障） */ }
    occurrence def <'HC-01'> HC01Cause :> HazardCause { doc /* アビオニクスベイの電気的短絡・アークトラッキング */ }
    occurrence def <'HC-02'> HC02Cause :> HazardCause { doc /* キャビン内の機器・材料の燃焼（ファンの対流で酸化剤が供給される） */ }
    occurrence def <'HC-03'> HC03Cause :> HazardCause { doc /* 酸素の多い大気（ヘルメット着用中の酸素の多い呼気で PPO2 が可燃限界に近づく） */ }
    occurrence def <'HC-04'> HC04Cause :> HazardCause { doc /* 与圧殻・窓の破損（上昇初期の差圧、デブリの衝突） */ }
    occurrence def <'HC-05'> HC05Cause :> HazardCause { doc /* PCS（O2/N2 供給）の隔離できない漏れ・制御の故障 */ }
    occurrence def <'HC-06'> HC06Cause :> HazardCause { doc /* 正圧逃し弁の不作動（過大圧）・キャビンベント弁の不用意な開放 */ }
    occurrence def <'HC-07'> HC07Cause :> HazardCause { doc /* CO2 除去能力の喪失（LiOH の不足、RCRS の故障・火災後の停止） */ }
    occurrence def <'HC-08'> HC08Cause :> HazardCause { doc /* 火災の燃焼生成物・ハロンの分解生成物 */ }
    occurrence def <'HC-09'> HC09Cause :> HazardCause { doc /* 水ループのキャビンへの漏れとインタチェンジャでのフレオン 21 の混入 */ }
    occurrence def <'HC-10'> HC10Cause :> HazardCause { doc /* EVA 後の EMU に付いたヒドラジン・酸化剤の持込み、LiOH の粉塵 */ }
    occurrence def <'HC-11'> HC11Cause :> HazardCause { doc /* 極低温反応剤（O2・H2）のタンク・マニホールドの漏れ、ヒータの短絡 */ }
    occurrence def <'HC-12'> HC12Cause :> HazardCause { doc /* 燃料電池の冷却喪失（冷却材ポンプ・交流母線・ECU・ESS 母線の故障、冷却材の漏れ） */ }
    occurrence def <'HC-13'> HC13Cause :> HazardCause { doc /* 反応剤弁の閉故障による燃料電池の停止 */ }
    occurrence def <'HC-14'> HC14Cause :> HazardCause { doc /* 主母線・制御母線の短絡 */ }
    occurrence def <'HC-15'> HC15Cause :> HazardCause { doc /* フレオン・水ループの漏れ（流体の枯渇） */ }
    occurrence def <'HC-16'> HC16Cause :> HazardCause { doc /* 冷却ループのポンプ・ファンの故障 */ }
    occurrence def <'HC-17'> HC17Cause :> HazardCause { doc /* 排熱系（放熱器・FES・NH3 ボイラ）の喪失、放熱器のラッチ・格納の喪失 */ }
    occurrence def <'HC-18'> HC18Cause :> HazardCause { doc /* APU の停止（過回転・回転不足・燃料の漏れ） */ }
    occurrence def <'HC-19'> HC19Cause :> HazardCause { doc /* 油圧系の故障・漏れ（ポンプの劣化・配管の閉塞） */ }
    occurrence def <'HC-20'> HC20Cause :> HazardCause { doc /* 水噴霧ボイラの水漏れ・制御器の故障による APU の過熱 */ }
    occurrence def <'HC-21'> HC21Cause :> HazardCause { doc /* エンジン系統・空圧系の He の漏れ */ }
    occurrence def <'HC-22'> HC22Cause :> HazardCause { doc /* エンジンのレッドライン超過・制御器の故障による停止（停止の監視の抑止中を含む） */ }
    occurrence def <'HC-23'> HC23Cause :> HazardCause { doc /* 指令経路・データ経路の故障、スロットルの固着（油圧・電気のロックアップ） */ }
    occurrence def <'HC-24'> HC24Cause :> HazardCause { doc /* 射点・上昇中の水素の漏れ（ET の LH2 ベント・アンビリカル付近） */ }
    occurrence def <'HC-25'> HC25Cause :> HazardCause { doc /* MECO 後の残留推進薬（ダンプ・不活性化の失敗）とマニホールドの過圧 */ }
    occurrence def <'HC-26'> HC26Cause :> HazardCause { doc /* 推進薬タンク・マニホールド・配管の漏れ */ }
    occurrence def <'HC-27'> HC27Cause :> HazardCause { doc /* 噴射器の on 故障・漏れ */ }
    occurrence def <'HC-28'> HC28Cause :> HazardCause { doc /* He 加圧系の漏れ・レギュレータの故障による OMS 能力の喪失 */ }
    occurrence def <'HC-29'> HC29Cause :> HazardCause { doc /* 上昇中の ET 発泡断熱材などの落下物の衝突 */ }
    occurrence def <'HC-30'> HC30Cause :> HazardCause { doc /* 軌道デブリ・微小隕石の衝突 */ }
    occurrence def <'HC-31'> HC31Cause :> HazardCause { doc /* 突き出たギャップフィラー・熱窓ガラスの損傷、接着層の低温による脆化 */ }
    occurrence def <'HC-32'> HC32Cause :> HazardCause { doc /* 熱変形によるドアと隔壁の干渉 */ }
    occurrence def <'HC-33'> HC33Cause :> HazardCause { doc /* 駆動モータ・ラッチの故障（両モータの故障で作動できない） */ }
    occurrence def <'HC-34'> HC34Cause :> HazardCause { doc /* RMS・MPM を収納できない（ドアの閉鎖を妨げる） */ }
    occurrence def <'HC-35'> HC35Cause :> HazardCause { doc /* EMU の服圧の漏れ */ }
    occurrence def <'HC-36'> HC36Cause :> HazardCause { doc /* EMU の消耗品（O2・電力・LiOH・水）の枯渇 */ }
    occurrence def <'HC-37'> HC37Cause :> HazardCause { doc /* テザーの外れによる乗員の漂流、エアロックのハッチの漏れ */ }
    occurrence def <'HC-38'> HC38Cause :> HazardCause { doc /* 脱窒素の不足による減圧症 */ }
    occurrence def <'HC-39'> HC39Cause :> HazardCause { doc /* SRB の HPU・油圧の喪失による TVC の喪失 */ }
    occurrence def <'HC-40'> HC40Cause :> HazardCause { doc /* サーボ弁・ATVC の指令の故障 */ }
    occurrence def <'HC-41'> HC41Cause :> HazardCause { doc /* 第1段の制御の喪失・軌道の逸脱（人口密集地へ向かう） */ }
    occurrence def <'HC-42'> HC42Cause :> HazardCause { doc /* 意図しない制動圧 */ }
    occurrence def <'HC-43'> HC43Cause :> HazardCause { doc /* 脚の展開の失敗（油圧系1の喪失）・タイヤの低温・低圧 */ }
    occurrence def <'HC-44'> HC44Cause :> HazardCause { doc /* 前輪操向・自動着陸の故障、ドラッグシュートの誤展開 */ }
    occurrence def <'HC-45'> HC45Cause :> HazardCause { doc /* 機上の通信機器（S帯・ACCU・ATU・UHF）の故障 */ }
    occurrence def <'HC-46'> HC46Cause :> HazardCause { doc /* 地上局・衛星の問題、アンテナの遮蔽 */ }
    occurrence def <'HC-47'> HC47Cause :> HazardCause { doc /* GPC の冗長セットの故障・セットスプリット、PASS の共通のソフトウェア誤り */ }
    occurrence def <'HC-48'> HC48Cause :> HazardCause { doc /* FCS チャネル・作動器の故障 */ }
    occurrence def <'HC-49'> HC49Cause :> HazardCause { doc /* センサ（RGA・ADTA・IMU）の故障・選択の混乱 */ }
    package HazardModel {
        doc /* ハザードと原因の使用、原因 → ハザードの因果、リスク */
        occurrence hz01 : HZ01_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "乗員の負傷・死亡、重要機器の喪失（乗員・機体の喪失）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz02 : HZ02_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "呼吸用酸素と機器冷却の喪失、窓の両ペインの喪失で乗員とオービタの喪失";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz03 : HZ03_Hazard {
            attribute :>> severity = "critical";
            attribute :>> worstOutcome = "乗員の健康影響、早期の帰還（MDF・次の PLS）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::medium); }
        }
        occurrence hz04 : HZ04_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "すべての電力の喪失による乗員・機体の喪失、燃料電池内の O2/H2 混合による爆発";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::low, impact = LevelEnum::high); }
        }
        occurrence hz05 : HZ05_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "燃料電池・アビオニクスの過熱による乗員・機体の喪失";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz06 : HZ06_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "飛行制御・着陸の能力の喪失（乗員・機体の喪失）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz07 : HZ07_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "アボート（ミッションの喪失）、破片を伴うエンジン破損で機体と乗員の喪失";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz08 : HZ08_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "射点・後部区画・再突入中の水素火災・爆発";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz09 : HZ09_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "ポッドの損傷・火災、軌道離脱・姿勢制御の喪失（乗員・機体の喪失）、乗員の中毒";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz10 : HZ10_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "再突入中の構造破壊（乗員・機体の喪失、STS-107）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::high, impact = LevelEnum::high); }
        }
        occurrence hz11 : HZ11_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "再突入の荷重・加熱に耐えられない（乗員・機体の喪失）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz12 : HZ12_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "EVA 乗員の喪失（減圧・低酸素・漂流）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz13 : HZ13_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "第1段の制御の喪失、射場安全による飛行の終了（乗員・機体の喪失）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::low, impact = LevelEnum::high); }
        }
        occurrence hz14 : HZ14_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "滑走路上の方向制御の喪失・タイヤの破損、過大な沈下率";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::high); }
        }
        occurrence hz15 : HZ15_Hazard {
            attribute :>> severity = "critical";
            attribute :>> worstOutcome = "MCC の支援なしの運用・早期の軌道離脱（ミッションの喪失）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::medium, impact = LevelEnum::medium); }
        }
        occurrence hz16 : HZ16_Hazard {
            attribute :>> severity = "catastrophic";
            attribute :>> worstOutcome = "上昇・再突入中の機体の制御の喪失（乗員・機体の喪失）";
            metadata Risk { totalRisk = new RiskLevel(probability = LevelEnum::low, impact = LevelEnum::high); }
        }
        #cause occurrence hc01 : HC01Cause;
        #cause occurrence hc02 : HC02Cause;
        #cause occurrence hc03 : HC03Cause;
        #cause occurrence hc04 : HC04Cause;
        #cause occurrence hc05 : HC05Cause;
        #cause occurrence hc06 : HC06Cause;
        #cause occurrence hc07 : HC07Cause;
        #cause occurrence hc08 : HC08Cause;
        #cause occurrence hc09 : HC09Cause;
        #cause occurrence hc10 : HC10Cause;
        #cause occurrence hc11 : HC11Cause;
        #cause occurrence hc12 : HC12Cause;
        #cause occurrence hc13 : HC13Cause;
        #cause occurrence hc14 : HC14Cause;
        #cause occurrence hc15 : HC15Cause;
        #cause occurrence hc16 : HC16Cause;
        #cause occurrence hc17 : HC17Cause;
        #cause occurrence hc18 : HC18Cause;
        #cause occurrence hc19 : HC19Cause;
        #cause occurrence hc20 : HC20Cause;
        #cause occurrence hc21 : HC21Cause;
        #cause occurrence hc22 : HC22Cause;
        #cause occurrence hc23 : HC23Cause;
        #cause occurrence hc24 : HC24Cause;
        #cause occurrence hc25 : HC25Cause;
        #cause occurrence hc26 : HC26Cause;
        #cause occurrence hc27 : HC27Cause;
        #cause occurrence hc28 : HC28Cause;
        #cause occurrence hc29 : HC29Cause;
        #cause occurrence hc30 : HC30Cause;
        #cause occurrence hc31 : HC31Cause;
        #cause occurrence hc32 : HC32Cause;
        #cause occurrence hc33 : HC33Cause;
        #cause occurrence hc34 : HC34Cause;
        #cause occurrence hc35 : HC35Cause;
        #cause occurrence hc36 : HC36Cause;
        #cause occurrence hc37 : HC37Cause;
        #cause occurrence hc38 : HC38Cause;
        #cause occurrence hc39 : HC39Cause;
        #cause occurrence hc40 : HC40Cause;
        #cause occurrence hc41 : HC41Cause;
        #cause occurrence hc42 : HC42Cause;
        #cause occurrence hc43 : HC43Cause;
        #cause occurrence hc44 : HC44Cause;
        #cause occurrence hc45 : HC45Cause;
        #cause occurrence hc46 : HC46Cause;
        #cause occurrence hc47 : HC47Cause;
        #cause occurrence hc48 : HC48Cause;
        #cause occurrence hc49 : HC49Cause;
        #causation connection <'HC-01>HZ-01'> hc01_to_hz01 connect hc01 to hz01;
        #causation connection <'HC-02>HZ-01'> hc02_to_hz01 connect hc02 to hz01;
        #causation connection <'HC-03>HZ-01'> hc03_to_hz01 connect hc03 to hz01;
        #causation connection <'HC-04>HZ-02'> hc04_to_hz02 connect hc04 to hz02;
        #causation connection <'HC-05>HZ-02'> hc05_to_hz02 connect hc05 to hz02;
        #causation connection <'HC-06>HZ-02'> hc06_to_hz02 connect hc06 to hz02;
        #causation connection <'HC-07>HZ-03'> hc07_to_hz03 connect hc07 to hz03;
        #causation connection <'HC-08>HZ-03'> hc08_to_hz03 connect hc08 to hz03;
        #causation connection <'HC-09>HZ-03'> hc09_to_hz03 connect hc09 to hz03;
        #causation connection <'HC-10>HZ-03'> hc10_to_hz03 connect hc10 to hz03;
        #causation connection <'HC-11>HZ-04'> hc11_to_hz04 connect hc11 to hz04;
        #causation connection <'HC-12>HZ-04'> hc12_to_hz04 connect hc12 to hz04;
        #causation connection <'HC-13>HZ-04'> hc13_to_hz04 connect hc13 to hz04;
        #causation connection <'HC-14>HZ-04'> hc14_to_hz04 connect hc14 to hz04;
        #causation connection <'HC-15>HZ-05'> hc15_to_hz05 connect hc15 to hz05;
        #causation connection <'HC-16>HZ-05'> hc16_to_hz05 connect hc16 to hz05;
        #causation connection <'HC-17>HZ-05'> hc17_to_hz05 connect hc17 to hz05;
        #causation connection <'HC-18>HZ-06'> hc18_to_hz06 connect hc18 to hz06;
        #causation connection <'HC-19>HZ-06'> hc19_to_hz06 connect hc19 to hz06;
        #causation connection <'HC-20>HZ-06'> hc20_to_hz06 connect hc20 to hz06;
        #causation connection <'HC-21>HZ-07'> hc21_to_hz07 connect hc21 to hz07;
        #causation connection <'HC-22>HZ-07'> hc22_to_hz07 connect hc22 to hz07;
        #causation connection <'HC-23>HZ-07'> hc23_to_hz07 connect hc23 to hz07;
        #causation connection <'HC-24>HZ-08'> hc24_to_hz08 connect hc24 to hz08;
        #causation connection <'HC-25>HZ-08'> hc25_to_hz08 connect hc25 to hz08;
        #causation connection <'HC-26>HZ-09'> hc26_to_hz09 connect hc26 to hz09;
        #causation connection <'HC-27>HZ-09'> hc27_to_hz09 connect hc27 to hz09;
        #causation connection <'HC-28>HZ-09'> hc28_to_hz09 connect hc28 to hz09;
        #causation connection <'HC-29>HZ-10'> hc29_to_hz10 connect hc29 to hz10;
        #causation connection <'HC-30>HZ-10'> hc30_to_hz10 connect hc30 to hz10;
        #causation connection <'HC-31>HZ-10'> hc31_to_hz10 connect hc31 to hz10;
        #causation connection <'HC-32>HZ-11'> hc32_to_hz11 connect hc32 to hz11;
        #causation connection <'HC-33>HZ-11'> hc33_to_hz11 connect hc33 to hz11;
        #causation connection <'HC-34>HZ-11'> hc34_to_hz11 connect hc34 to hz11;
        #causation connection <'HC-35>HZ-12'> hc35_to_hz12 connect hc35 to hz12;
        #causation connection <'HC-36>HZ-12'> hc36_to_hz12 connect hc36 to hz12;
        #causation connection <'HC-37>HZ-12'> hc37_to_hz12 connect hc37 to hz12;
        #causation connection <'HC-38>HZ-12'> hc38_to_hz12 connect hc38 to hz12;
        #causation connection <'HC-39>HZ-13'> hc39_to_hz13 connect hc39 to hz13;
        #causation connection <'HC-40>HZ-13'> hc40_to_hz13 connect hc40 to hz13;
        #causation connection <'HC-41>HZ-13'> hc41_to_hz13 connect hc41 to hz13;
        #causation connection <'HC-42>HZ-14'> hc42_to_hz14 connect hc42 to hz14;
        #causation connection <'HC-43>HZ-14'> hc43_to_hz14 connect hc43 to hz14;
        #causation connection <'HC-44>HZ-14'> hc44_to_hz14 connect hc44 to hz14;
        #causation connection <'HC-45>HZ-15'> hc45_to_hz15 connect hc45 to hz15;
        #causation connection <'HC-46>HZ-15'> hc46_to_hz15 connect hc46 to hz15;
        #causation connection <'HC-47>HZ-16'> hc47_to_hz16 connect hc47 to hz16;
        #causation connection <'HC-48>HZ-16'> hc48_to_hz16 connect hc48 to hz16;
        #causation connection <'HC-49>HZ-16'> hc49_to_hz16 connect hc49 to hz16;
    }
    package HazardControls {
        doc /* 管理策（安全要求）。subject は対象のハザード */
        requirement <'HM-01'> hm01 {
            doc /* 警報：イオン化式の煙感知器で煙濃度・急増を検知し、サイレン・MASTER ALARM・SMOKE DETECTION 灯で知らせる（クラス1） */
            subject hazard = HazardModel::hz01;
        }
        requirement <'HM-02'> hm02 {
            doc /* 手順：ファンを止め、ヘルメット・QDM で身を守り、固定式・携帯式のハロンで消火する */
            subject hazard = HazardModel::hz01;
        }
        requirement <'HM-03'> hm03 {
            doc /* 飛行規則：火災後はベイの機器を電源断して着火源を減らし、短絡した回路は回路保護を再投入しない */
            subject hazard = HazardModel::hz01;
        }
        requirement <'HM-04'> hm04 {
            doc /* 運用制約：大気を浄化できず PPO2 を可燃限界より下に保てなければ早期に軌道離脱する（生命維持の Go/No-Go） */
            subject hazard = HazardModel::hz01;
        }
        requirement <'HM-05'> hm05 {
            doc /* 警報：dP/dT −0.08 psi/min でクラクソン・MASTER ALARM、客室圧・PPO2・O2/N2 流量の限界外で CABIN ATM 灯 */
            subject hazard = HazardModel::hz02;
        }
        requirement <'HM-06'> hm06 {
            doc /* 手順：漏れの大きさの評価・逃し弁の隔離弁を閉じての確認・再構成による隔離・電源の削減・軌道離脱の準備 */
            subject hazard = HazardModel::hz02;
        }
        requirement <'HM-07'> hm07 {
            doc /* 飛行規則：漏れの率で intact アボート・AOA を選び、軌道上は 8 psia を保って TMAX までに軌道離脱する */
            subject hazard = HazardModel::hz02;
        }
        requirement <'HM-08'> hm08 {
            doc /* 設計：窓に圧力ペインと冗長ペインを持たせ、片方が壊れたらキャビン圧を 10.2 psi に下げて次の PLS で帰還する */
            subject hazard = HazardModel::hz02;
        }
        requirement <'HM-09'> hm09 {
            doc /* 設計：2つの正圧逃し弁を全飛行段階で有効にし、キャビンベント弁は上昇後に回路遮断器を開けて誤開放を防ぐ */
            subject hazard = HazardModel::hz02;
        }
        requirement <'HM-10'> hm10 {
            doc /* 設計：LiOH キャニスタ（長期滞在では RCRS）で CO2 を除き、活性炭で微量汚染物質を除く */
            subject hazard = HazardModel::hz03;
        }
        requirement <'HM-11'> hm11 {
            doc /* 運用制約：未使用の LiOH を2日分予備に持ち PPCO2 7.6 mmHg を守る。予備を使う前に直らなければ次の PLS */
            subject hazard = HazardModel::hz03;
        }
        requirement <'HM-12'> hm12 {
            doc /* 手順：火災後は RCRS を止め、LiOH・ATCO・WCS の活性炭で燃焼生成物を除き、ハロン曝露の時間を管理する */
            subject hazard = HazardModel::hz03;
        }
        requirement <'HM-13'> hm13 {
            doc /* 飛行規則：水ループのキャビンへの漏れでは、フレオン 21 の混入までゼロ故障許容となるため MDF とする */
            subject hazard = HazardModel::hz03;
        }
        requirement <'HM-14'> hm14 {
            doc /* 手順：EMU の汚染が確認されたらヒドラジン除染手順を行い、EVA 後はキャビン大気を除染する。LiOH 交換時はファンを止める */
            subject hazard = HazardModel::hz03;
        }
        requirement <'HM-15'> hm15 {
            doc /* 設計：逆止弁で漏れたタンクから他のタンクへの逆流を止め、マニホールドの隔離弁で漏れを隔離する。O2 ヒータは電流差センサで短絡を切る */
            subject hazard = HazardModel::hz04;
        }
        requirement <'HM-16'> hm16 {
            doc /* 飛行規則：冷却を失った燃料電池は 7 kW で9分以内に停止し、バスタイで主母線を保つ */
            subject hazard = HazardModel::hz04;
        }
        requirement <'HM-17'> hm17 {
            doc /* 手順：反応剤弁の警報では PLT が直ちに弁の再開とバスタイを試み、確認された故障では燃料電池を停止する */
            subject hazard = HazardModel::hz04;
        }
        requirement <'HM-18'> hm18 {
            doc /* 設計：3基の燃料電池を独立した主母線に給電させ、RPC・ヒューズ・回路遮断器で短絡を切る。健全な母線を短絡した母線に結ばない */
            subject hazard = HazardModel::hz04;
        }
        requirement <'HM-19'> hm19 {
            doc /* 飛行規則：極低温タンク・燃料電池・母線の喪失の数で MDF・次の PLS を判定し、上昇中の極低温の喪失は地上までの時間が最短のアボートとする */
            subject hazard = HazardModel::hz04;
        }
        requirement <'HM-20'> hm20 {
            doc /* 警報：フレオンループの流量・蒸発器出口温度、水ループのポンプ出口圧の限界外で FREON LOOP・H2O LOOP 灯 */
            subject hazard = HazardModel::hz05;
        }
        requirement <'HM-21'> hm21 {
            doc /* 設計：冷却ループを2系統とし予備のポンプ・ファンに切り替える。動力飛行中は交流の過渡を避け重要な機器だけを切り替える */
            subject hazard = HazardModel::hz05;
        }
        requirement <'HM-22'> hm22 {
            doc /* 飛行規則：フレオンループ1系統の喪失で次の PLS、2系統の喪失で最も早いアボート・緊急の再突入とする */
            subject hazard = HazardModel::hz05;
        }
        requirement <'HM-23'> hm23 {
            doc /* 手順：排熱系の喪失では再構成と電源の削減を行い、必要ならペイロードベイドアを開けて放熱器を使う */
            subject hazard = HazardModel::hz05;
        }
        requirement <'HM-24'> hm24 {
            doc /* 警報：APU の過回転・回転不足・温度、油圧の供給圧の限界外で F7 の灯と MASTER ALARM */
            subject hazard = HazardModel::hz06;
        }
        requirement <'HM-25'> hm25 {
            doc /* 設計：独立した3系統の APU・油圧を持ち、過回転は燃料タンク隔離弁による自動停止で守る */
            subject hazard = HazardModel::hz06;
        }
        requirement <'HM-26'> hm26 {
            doc /* 手順：燃料の漏れでは APU を止めて隔離弁を閉じ、隔離できなければ再始動して燃料を燃やし尽くす */
            subject hazard = HazardModel::hz06;
        }
        requirement <'HM-27'> hm27 {
            doc /* 手順：水噴霧ボイラの異常では予備の制御器に切り替え、温度が上がり続ければ APU を止める */
            subject hazard = HazardModel::hz06;
        }
        requirement <'HM-28'> hm28 {
            doc /* 飛行規則：1系統の喪失で EOM、単一 APU の再突入に近づけば次の PLS、全系統の喪失が迫れば RTLS など最も早いアボートとする */
            subject hazard = HazardModel::hz06;
        }
        requirement <'HM-29'> hm29 {
            doc /* 手順：He 漏れは1系統ずつ隔離し、必要なら空圧系を相互接続し、故障エンジンの He を使う */
            subject hazard = HazardModel::hz07;
        }
        requirement <'HM-30'> hm30 {
            doc /* 設計：エンジン制御器は2重の計算機を持ち、1つ目の故障後も運転を続け2つ目で安全に停止する。停止の監視（レッドライン）を抑止するのはアボートの隙間に限る */
            subject hazard = HazardModel::hz07;
        }
        requirement <'HM-31'> hm31 {
            doc /* 手順：エンジン故障では GPC が故障を知ったことを確かめ、AC BUS SENSOR を切る。指令経路の故障は AC/PB で手動停止する */
            subject hazard = HazardModel::hz07;
        }
        requirement <'HM-32'> hm32 {
            doc /* 飛行規則：エンジン停止に対し intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に戻る */
            subject hazard = HazardModel::hz07;
        }
        requirement <'HM-33'> hm33 {
            doc /* 手順：射点の緊急時は4つの脱出モードで乗員・要員を退避させる */
            subject hazard = HazardModel::hz08;
        }
        requirement <'HM-34'> hm34 {
            doc /* 設計：MECO 後に残留推進薬を自動でダンプし、マニホールドを真空不活性化する。マニホールドの過圧ではダンプを自動で始める */
            subject hazard = HazardModel::hz08;
        }
        requirement <'HM-35'> hm35 {
            doc /* 飛行規則：MECO 前に漏れのあったエンジンはダンプから隔離し、LH2 のダンプ抑止では緊急の電源断と Mode V 脱出を行う */
            subject hazard = HazardModel::hz08;
        }
        requirement <'HM-36'> hm36 {
            doc /* 設計：角速度過大や供給配管の切離し弁の閉故障では ET の自動分離を抑止する */
            subject hazard = HazardModel::hz08;
        }
        requirement <'HM-37'> hm37 {
            doc /* 警報：ヘリウム圧・推進薬量の低下で F7 の OMS・RCS 灯と漏れのメッセージ */
            subject hazard = HazardModel::hz09;
        }
        requirement <'HM-38'> hm38 {
            doc /* 手順：漏れを独立の表示で確かめてから系を閉じて隔離し、タンクの漏れは推進薬を燃やしてポッドへの漏れを防ぐ。on 故障の噴射器はマニホールドを閉じる */
            subject hazard = HazardModel::hz09;
        }
        requirement <'HM-39'> hm39 {
            doc /* 飛行規則：漏れのある配管は機体の制御に必須でない限り再加圧しない */
            subject hazard = HazardModel::hz09;
        }
        requirement <'HM-40'> hm40 {
            doc /* 運用制約：軌道離脱・姿勢制御に要る OMS・後部 RCS の推進薬のレッドラインを残す */
            subject hazard = HazardModel::hz09;
        }
        requirement <'HM-41'> hm41 {
            doc /* 運用制約：EVA 乗員は漏れている噴射器・APU と PRCS の噴流の近くを避け、汚染を確かめたら除染する */
            subject hazard = HazardModel::hz09;
        }
        requirement <'HM-42'> hm42 {
            doc /* 検査：上昇中の落下物と衝突を地上・ET のカメラ、レーダ、翼前縁の衝突検知計装で監視する */
            subject hazard = HazardModel::hz10;
        }
        requirement <'HM-43'> hm43 {
            doc /* 検査：OBSS による軌道上の TPS 全域の点検と、RPM での ISS からの撮影、損傷評価チームの判定 */
            subject hazard = HazardModel::hz10;
        }
        requirement <'HM-44'> hm44 {
            doc /* 手順：突き出たギャップフィラーなど再突入の加熱を増やす異常は EVA で取り除く */
            subject hazard = HazardModel::hz10;
        }
        requirement <'HM-45'> hm45 {
            doc /* 運用制約：デブリに弱い姿勢（-ZVV）の時間を制限し、姿勢で TPS の接着層の温度を管理する */
            subject hazard = HazardModel::hz10;
        }
        requirement <'HM-46'> hm46 {
            doc /* 飛行規則：外側の熱窓ガラスの破損では熱応力の小さい RTLS でアボートする */
            subject hazard = HazardModel::hz10;
        }
        requirement <'HM-47'> hm47 {
            doc /* 設計：2つのモータで駆動し、1つの故障でも2倍の時間で作動できるようにする */
            subject hazard = HazardModel::hz11;
        }
        requirement <'HM-48'> hm48 {
            doc /* 運用制約：ドア閉鎖の温度の Go/No-Go（曲げ温度差）を守り、閉まらなければ上面を太陽に向けて熱調整する */
            subject hazard = HazardModel::hz11;
        }
        requirement <'HM-49'> hm49 {
            doc /* 手順：緊急の閉鎖手順を段階的に行い、最後は EVA で手動のラッチ工具を付ける */
            subject hazard = HazardModel::hz11;
        }
        requirement <'HM-50'> hm50 {
            doc /* 設計：MPM は2重のモータで収納し、アームを戻せないときは投棄できる。RMS が収納台に無いときは MPM の電源を外す */
            subject hazard = HazardModel::hz11;
        }
        requirement <'HM-51'> hm51 {
            doc /* 検査：着用前に EMU の漏れ点検（0.3 psi/min）を行い、エアロックのハッチの気密（0.2 psi/min）を確かめる */
            subject hazard = HazardModel::hz12;
        }
        requirement <'HM-52'> hm52 {
            doc /* 設計：EMU の二次酸素パック（SOP）が一次酸素系の予備として最低30分の非常用酸素を与える */
            subject hazard = HazardModel::hz12;
        }
        requirement <'HM-53'> hm53 {
            doc /* 飛行規則：服の漏れで EVA の終了・中止を判断し、消耗品が残り30分になるまでにエアロックに戻って SCU につなぐ */
            subject hazard = HazardModel::hz12;
        }
        requirement <'HM-54'> hm54 {
            doc /* 運用制約：閉じたエアロックの中を除き、EVA 乗員を常に安全テザーでオービタにつなぐ */
            subject hazard = HazardModel::hz12;
        }
        requirement <'HM-55'> hm55 {
            doc /* 手順：減圧の前に前呼吸の手順で脱窒素する */
            subject hazard = HazardModel::hz12;
        }
        requirement <'HM-56'> hm56 {
            doc /* 設計：各 SRB に2台の独立した HPU と、4つのサーボ弁の多数決を持つ作動器を置き、1つの故障で TVC を失わない */
            subject hazard = HazardModel::hz13;
        }
        requirement <'HM-57'> hm57 {
            doc /* 設計：各 SRB に射場安全系を持ち、分配器を相互接続して、軌道のレッドラインを外れたときだけ飛行を終わらせる */
            subject hazard = HazardModel::hz13;
        }
        requirement <'HM-58'> hm58 {
            doc /* 飛行規則：第1段の制御喪失を角速度で定義し、飛行制御に回復の機会を与えたうえで射場安全の判断に使う */
            subject hazard = HazardModel::hz13;
        }
        requirement <'HM-59'> hm59 {
            doc /* 手順：ブレーキ隔離弁を主脚接地後に開け、意図しない制動圧では PLT が隔離弁2を閉じる */
            subject hazard = HazardModel::hz14;
        }
        requirement <'HM-60'> hm60 {
            doc /* 設計：油圧系1でアップロックを外せないときは、火工品の起動器が自動でアップロックを外す */
            subject hazard = HazardModel::hz14;
        }
        requirement <'HM-61'> hm61 {
            doc /* 運用制約：姿勢でタイヤを熱調整して着陸に必要な圧と温度を保つ */
            subject hazard = HazardModel::hz14;
        }
        requirement <'HM-62'> hm62 {
            doc /* 飛行規則：ドラッグシュートは arm と展開を同時に行い、展開・投棄の速度の制約を守る */
            subject hazard = HazardModel::hz14;
        }
        requirement <'HM-63'> hm63 {
            doc /* 設計：前輪操向は主脚・前脚の接地などの条件がそろってから有効にし、方向制御の冗長を Go/No-Go で判定する */
            subject hazard = HazardModel::hz14;
        }
        requirement <'HM-64'> hm64 {
            doc /* 設計：S帯 PM のトランスポンダを2台冗長に持ち、ACCU・ATU を予備に切り替えられるようにする */
            subject hazard = HazardModel::hz15;
        }
        requirement <'HM-65'> hm65 {
            doc /* 手順：通信喪失の手順（ACCU の予備電源、パネルでの S帯の運用、手動のアンテナ選択、UHF の GUARD）で回復を試みる */
            subject hazard = HazardModel::hz15;
        }
        requirement <'HM-66'> hm66 {
            doc /* 飛行規則：音声とコマンドの両方の喪失では軌道へ進み早期に軌道離脱する。喪失の数で MDF・次の PLS を判定する */
            subject hazard = HazardModel::hz15;
        }
        requirement <'HM-67'> hm67 {
            doc /* 設計：GPC の冗長セットで同じ GNC ソフトウェアを動かして計算を照合し、冗長セットを失えば BFS で制御を引き継ぐ */
            subject hazard = HazardModel::hz16;
        }
        requirement <'HM-68'> hm68 {
            doc /* 手順：FCS チャネルの2つ目の故障で残るチャネルを OVERRIDE にし、GPC の数に合わせてチャネルを割り当てる */
            subject hazard = HazardModel::hz16;
        }
        requirement <'HM-69'> hm69 {
            doc /* 飛行規則：RGA・ADTA の冗長を管理し、ADTA が1台だけならエアデータを誘導・制御に取り込まない */
            subject hazard = HazardModel::hz16;
        }
    }
    #ImplementedBy dependency <'HM-01>REQ-ECLSS-11'> from HazardControls::hm01 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
    #ImplementedBy dependency <'HM-01>REQ-CW-06'> from HazardControls::hm01 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
    #ImplementedBy dependency <'HM-01>EM-01'> from HazardControls::hm01 to SSD_FDIR_ORB_001::SmokeDetectionFireAlarm;
    #ImplementedBy dependency <'HM-01>FireResponse'> from HazardControls::hm01 to SSD_BEH_ORB_002::FireResponse;
    #ImplementedBy dependency <'HM-02>REQ-ECLSS-11'> from HazardControls::hm02 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
    #ImplementedBy dependency <'HM-02>EM-01'> from HazardControls::hm02 to SSD_FDIR_ORB_001::SmokeDetectionFireAlarm;
    #ImplementedBy dependency <'HM-02>FireResponse'> from HazardControls::hm02 to SSD_BEH_ORB_002::FireResponse;
    #ImplementedBy dependency <'HM-03>REQ-EPS-17'> from HazardControls::hm03 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_17;
    #ImplementedBy dependency <'HM-03>FireResponse'> from HazardControls::hm03 to SSD_BEH_ORB_002::FireResponse;
    #ImplementedBy dependency <'HM-04>REQ-ECLSS-12'> from HazardControls::hm04 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_12;
    #ImplementedBy dependency <'HM-04>FireResponse'> from HazardControls::hm04 to SSD_BEH_ORB_002::FireResponse;
    #ImplementedBy dependency <'HM-05>REQ-ECLSS-02'> from HazardControls::hm05 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
    #ImplementedBy dependency <'HM-05>REQ-CW-06'> from HazardControls::hm05 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
    #ImplementedBy dependency <'HM-05>EM-02'> from HazardControls::hm05 to SSD_FDIR_ORB_001::CabinPressureDpDtAlarm;
    #ImplementedBy dependency <'HM-05>CW-06'> from HazardControls::hm05 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #ImplementedBy dependency <'HM-05>CabinLeakResponse'> from HazardControls::hm05 to SSD_BEH_ORB_004::CabinLeakResponse;
    #ImplementedBy dependency <'HM-06>REQ-ECLSS-01'> from HazardControls::hm06 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    #ImplementedBy dependency <'HM-06>CW-06'> from HazardControls::hm06 to SSD_FDIR_ORB_001::CabinAtmAlarm;
    #ImplementedBy dependency <'HM-06>CabinLeakResponse'> from HazardControls::hm06 to SSD_BEH_ORB_004::CabinLeakResponse;
    #ImplementedBy dependency <'HM-07>REQ-ECLSS-03'> from HazardControls::hm07 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
    #ImplementedBy dependency <'HM-07>REQ-SYS-15'> from HazardControls::hm07 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_15;
    #ImplementedBy dependency <'HM-07>CabinLeakResponse'> from HazardControls::hm07 to SSD_BEH_ORB_004::CabinLeakResponse;
    #ImplementedBy dependency <'HM-08>REQ-STR-03'> from HazardControls::hm08 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_03;
    #ImplementedBy dependency <'HM-08>REQ-STR-04'> from HazardControls::hm08 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
    #ImplementedBy dependency <'HM-09>REQ-ECLSS-02'> from HazardControls::hm09 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
    #ImplementedBy dependency <'HM-10>REQ-ECLSS-05'> from HazardControls::hm10 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    #ImplementedBy dependency <'HM-10>REQ-ECLSS-06'> from HazardControls::hm10 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #ImplementedBy dependency <'HM-11>REQ-ECLSS-06'> from HazardControls::hm11 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #ImplementedBy dependency <'HM-12>REQ-ECLSS-06'> from HazardControls::hm12 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    #ImplementedBy dependency <'HM-12>REQ-ECLSS-12'> from HazardControls::hm12 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_12;
    #ImplementedBy dependency <'HM-12>FireResponse'> from HazardControls::hm12 to SSD_BEH_ORB_002::FireResponse;
    #ImplementedBy dependency <'HM-13>REQ-ECLSS-07'> from HazardControls::hm13 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
    #ImplementedBy dependency <'HM-13>REQ-ECLSS-09'> from HazardControls::hm13 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
    #ImplementedBy dependency <'HM-13>CW-16'> from HazardControls::hm13 to SSD_FDIR_ORB_001::H2OLoopAlarm;
    #ImplementedBy dependency <'HM-14>REQ-EVA-05'> from HazardControls::hm14 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
    #ImplementedBy dependency <'HM-15>REQ-EPS-13'> from HazardControls::hm15 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_13;
    #ImplementedBy dependency <'HM-15>REQ-EPS-10'> from HazardControls::hm15 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
    #ImplementedBy dependency <'HM-15>CW-01'> from HazardControls::hm15 to SSD_FDIR_ORB_001::O2PressAlarm;
    #ImplementedBy dependency <'HM-15>CW-02'> from HazardControls::hm15 to SSD_FDIR_ORB_001::H2PressAlarm;
    #ImplementedBy dependency <'HM-15>CW-07'> from HazardControls::hm15 to SSD_FDIR_ORB_001::O2HeaterTempAlarm;
    #ImplementedBy dependency <'HM-16>REQ-EPS-15'> from HazardControls::hm16 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
    #ImplementedBy dependency <'HM-16>REQ-EPS-03'> from HazardControls::hm16 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
    #ImplementedBy dependency <'HM-16>CW-04'> from HazardControls::hm16 to SSD_FDIR_ORB_001::FuelCellStackTempAlarm;
    #ImplementedBy dependency <'HM-16>CW-05'> from HazardControls::hm16 to SSD_FDIR_ORB_001::FuelCellPumpAlarm;
    #ImplementedBy dependency <'HM-16>FuelCellCoolingLossResponse'> from HazardControls::hm16 to SSD_BEH_ORB_002::FuelCellCoolingLossResponse;
    #ImplementedBy dependency <'HM-17>REQ-EPS-03'> from HazardControls::hm17 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
    #ImplementedBy dependency <'HM-17>CW-03'> from HazardControls::hm17 to SSD_FDIR_ORB_001::FuelCellReacAlarm;
    #ImplementedBy dependency <'HM-17>FuelCellCoolingLossResponse'> from HazardControls::hm17 to SSD_BEH_ORB_002::FuelCellCoolingLossResponse;
    #ImplementedBy dependency <'HM-18>REQ-EPS-03'> from HazardControls::hm18 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
    #ImplementedBy dependency <'HM-18>REQ-EPS-07'> from HazardControls::hm18 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_07;
    #ImplementedBy dependency <'HM-18>REQ-EPS-17'> from HazardControls::hm18 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_17;
    #ImplementedBy dependency <'HM-18>CW-08'> from HazardControls::hm18 to SSD_FDIR_ORB_001::MainBusUndervoltAlarm;
    #ImplementedBy dependency <'HM-19>REQ-EPS-18'> from HazardControls::hm19 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_18;
    #ImplementedBy dependency <'HM-19>REQ-SYS-14'> from HazardControls::hm19 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
    #ImplementedBy dependency <'HM-20>REQ-CW-01'> from HazardControls::hm20 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
    #ImplementedBy dependency <'HM-20>CW-11'> from HazardControls::hm20 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #ImplementedBy dependency <'HM-20>CW-16'> from HazardControls::hm20 to SSD_FDIR_ORB_001::H2OLoopAlarm;
    #ImplementedBy dependency <'HM-20>CW-12'> from HazardControls::hm20 to SSD_FDIR_ORB_001::AvBayCabinAirAlarm;
    #ImplementedBy dependency <'HM-21>REQ-ECLSS-07'> from HazardControls::hm21 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
    #ImplementedBy dependency <'HM-21>REQ-ECLSS-08'> from HazardControls::hm21 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
    #ImplementedBy dependency <'HM-22>REQ-ECLSS-09'> from HazardControls::hm22 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
    #ImplementedBy dependency <'HM-22>CW-11'> from HazardControls::hm22 to SSD_FDIR_ORB_001::FreonLoopAlarm;
    #ImplementedBy dependency <'HM-23>REQ-TPS-07'> from HazardControls::hm23 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_07;
    #ImplementedBy dependency <'HM-23>REQ-ECLSS-08'> from HazardControls::hm23 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
    #ImplementedBy dependency <'HM-24>REQ-APU-04'> from HazardControls::hm24 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
    #ImplementedBy dependency <'HM-24>CW-37'> from HazardControls::hm24 to SSD_FDIR_ORB_001::ApuTempAlarm;
    #ImplementedBy dependency <'HM-24>CW-38'> from HazardControls::hm24 to SSD_FDIR_ORB_001::ApuOverspeedAlarm;
    #ImplementedBy dependency <'HM-24>CW-39'> from HazardControls::hm24 to SSD_FDIR_ORB_001::ApuUnderspeedAlarm;
    #ImplementedBy dependency <'HM-24>CW-40'> from HazardControls::hm24 to SSD_FDIR_ORB_001::HydPressAlarm;
    #ImplementedBy dependency <'HM-25>REQ-APU-01'> from HazardControls::hm25 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
    #ImplementedBy dependency <'HM-25>REQ-APU-04'> from HazardControls::hm25 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
    #ImplementedBy dependency <'HM-25>REQ-APU-05'> from HazardControls::hm25 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
    #ImplementedBy dependency <'HM-25>REQ-GNC-10'> from HazardControls::hm25 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
    #ImplementedBy dependency <'HM-26>REQ-APU-01'> from HazardControls::hm26 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
    #ImplementedBy dependency <'HM-27>REQ-APU-07'> from HazardControls::hm27 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
    #ImplementedBy dependency <'HM-27>CW-37'> from HazardControls::hm27 to SSD_FDIR_ORB_001::ApuTempAlarm;
    #ImplementedBy dependency <'HM-28>REQ-APU-08'> from HazardControls::hm28 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
    #ImplementedBy dependency <'HM-29>REQ-MPS-11'> from HazardControls::hm29 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
    #ImplementedBy dependency <'HM-29>REQ-MPS-13'> from HazardControls::hm29 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
    #ImplementedBy dependency <'HM-29>CW-34'> from HazardControls::hm29 to SSD_FDIR_ORB_001::MpsAlarm;
    #ImplementedBy dependency <'HM-29>MpsHeliumLeakResponse'> from HazardControls::hm29 to SSD_BEH_ORB_002::MpsHeliumLeakResponse;
    #ImplementedBy dependency <'HM-30>REQ-MPS-04'> from HazardControls::hm30 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
    #ImplementedBy dependency <'HM-30>REQ-MPS-06'> from HazardControls::hm30 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_06;
    #ImplementedBy dependency <'HM-31>REQ-MPS-05'> from HazardControls::hm31 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_05;
    #ImplementedBy dependency <'HM-31>REQ-MPS-13'> from HazardControls::hm31 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
    #ImplementedBy dependency <'HM-31>REQ-EPS-09'> from HazardControls::hm31 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_09;
    #ImplementedBy dependency <'HM-32>REQ-SYS-15'> from HazardControls::hm32 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_15;
    #ImplementedBy dependency <'HM-33>REQ-CREW-09'> from HazardControls::hm33 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    #ImplementedBy dependency <'HM-34>REQ-MPS-10'> from HazardControls::hm34 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
    #ImplementedBy dependency <'HM-34>CW-34'> from HazardControls::hm34 to SSD_FDIR_ORB_001::MpsAlarm;
    #ImplementedBy dependency <'HM-35>REQ-MPS-10'> from HazardControls::hm35 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
    #ImplementedBy dependency <'HM-36>REQ-ET-08'> from HazardControls::hm36 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
    #ImplementedBy dependency <'HM-36>REQ-MPS-07'> from HazardControls::hm36 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_07;
    #ImplementedBy dependency <'HM-37>REQ-RCS-03'> from HazardControls::hm37 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_03;
    #ImplementedBy dependency <'HM-37>CW-14'> from HazardControls::hm37 to SSD_FDIR_ORB_001::FwdRcsAlarm;
    #ImplementedBy dependency <'HM-37>CW-19'> from HazardControls::hm37 to SSD_FDIR_ORB_001::LeftRcsAlarm;
    #ImplementedBy dependency <'HM-37>CW-20'> from HazardControls::hm37 to SSD_FDIR_ORB_001::RightRcsAlarm;
    #ImplementedBy dependency <'HM-37>CW-24'> from HazardControls::hm37 to SSD_FDIR_ORB_001::LeftOmsAlarm;
    #ImplementedBy dependency <'HM-37>CW-25'> from HazardControls::hm37 to SSD_FDIR_ORB_001::RightOmsAlarm;
    #ImplementedBy dependency <'HM-38>REQ-RCS-08'> from HazardControls::hm38 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
    #ImplementedBy dependency <'HM-38>REQ-RCS-10'> from HazardControls::hm38 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_10;
    #ImplementedBy dependency <'HM-38>CW-15'> from HazardControls::hm38 to SSD_FDIR_ORB_001::RcsJetAlarm;
    #ImplementedBy dependency <'HM-39>REQ-OMS-07'> from HazardControls::hm39 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    #ImplementedBy dependency <'HM-40>REQ-OMS-11'> from HazardControls::hm40 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_11;
    #ImplementedBy dependency <'HM-40>REQ-RCS-09'> from HazardControls::hm40 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_09;
    #ImplementedBy dependency <'HM-41>REQ-EVA-04'> from HazardControls::hm41 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
    #ImplementedBy dependency <'HM-42>REQ-ET-07'> from HazardControls::hm42 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
    #ImplementedBy dependency <'HM-43>REQ-TPS-01'> from HazardControls::hm43 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
    #ImplementedBy dependency <'HM-44>REQ-EVA-06'> from HazardControls::hm44 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
    #ImplementedBy dependency <'HM-44>EvaOperation'> from HazardControls::hm44 to SSD_BEH_ORB_004::EvaOperation;
    #ImplementedBy dependency <'HM-45>REQ-TPS-03'> from HazardControls::hm45 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_03;
    #ImplementedBy dependency <'HM-45>REQ-STR-08'> from HazardControls::hm45 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_08;
    #ImplementedBy dependency <'HM-46>REQ-STR-04'> from HazardControls::hm46 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
    #ImplementedBy dependency <'HM-47>REQ-MECH-01'> from HazardControls::hm47 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
    #ImplementedBy dependency <'HM-47>REQ-MECH-03'> from HazardControls::hm47 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
    #ImplementedBy dependency <'HM-47>REQ-MECH-04'> from HazardControls::hm47 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_04;
    #ImplementedBy dependency <'HM-48>REQ-MECH-03'> from HazardControls::hm48 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
    #ImplementedBy dependency <'HM-48>PayloadBayDoorCloseFailure'> from HazardControls::hm48 to SSD_BEH_ORB_004::PayloadBayDoorCloseFailure;
    #ImplementedBy dependency <'HM-49>REQ-EVA-06'> from HazardControls::hm49 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
    #ImplementedBy dependency <'HM-49>REQ-MECH-04'> from HazardControls::hm49 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_04;
    #ImplementedBy dependency <'HM-49>PayloadBayDoorCloseFailure'> from HazardControls::hm49 to SSD_BEH_ORB_004::PayloadBayDoorCloseFailure;
    #ImplementedBy dependency <'HM-50>REQ-PLS-05'> from HazardControls::hm50 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_05;
    #ImplementedBy dependency <'HM-51>REQ-EVA-01'> from HazardControls::hm51 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
    #ImplementedBy dependency <'HM-51>REQ-EVA-03'> from HazardControls::hm51 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
    #ImplementedBy dependency <'HM-51>EvaOperation'> from HazardControls::hm51 to SSD_BEH_ORB_004::EvaOperation;
    #ImplementedBy dependency <'HM-52>REQ-EVA-01'> from HazardControls::hm52 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
    #ImplementedBy dependency <'HM-53>REQ-EVA-08'> from HazardControls::hm53 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
    #ImplementedBy dependency <'HM-53>EvaOperation'> from HazardControls::hm53 to SSD_BEH_ORB_004::EvaOperation;
    #ImplementedBy dependency <'HM-54>REQ-EVA-04'> from HazardControls::hm54 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
    #ImplementedBy dependency <'HM-55>REQ-EVA-02'> from HazardControls::hm55 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
    #ImplementedBy dependency <'HM-55>EvaOperation'> from HazardControls::hm55 to SSD_BEH_ORB_004::EvaOperation;
    #ImplementedBy dependency <'HM-56>REQ-SRB-05'> from HazardControls::hm56 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
    #ImplementedBy dependency <'HM-56>REQ-GNC-11'> from HazardControls::hm56 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
    #ImplementedBy dependency <'HM-57>REQ-SRB-07'> from HazardControls::hm57 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_07;
    #ImplementedBy dependency <'HM-57>REQ-ET-09'> from HazardControls::hm57 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_09;
    #ImplementedBy dependency <'HM-58>REQ-GNC-13'> from HazardControls::hm58 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
    #ImplementedBy dependency <'HM-59>REQ-MECH-08'> from HazardControls::hm59 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_08;
    #ImplementedBy dependency <'HM-60>REQ-MECH-07'> from HazardControls::hm60 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
    #ImplementedBy dependency <'HM-61>REQ-MECH-10'> from HazardControls::hm61 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_10;
    #ImplementedBy dependency <'HM-62>REQ-MECH-08'> from HazardControls::hm62 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_08;
    #ImplementedBy dependency <'HM-63>REQ-MECH-09'> from HazardControls::hm63 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_09;
    #ImplementedBy dependency <'HM-63>REQ-MECH-10'> from HazardControls::hm63 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_10;
    #ImplementedBy dependency <'HM-64>REQ-CT-01'> from HazardControls::hm64 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
    #ImplementedBy dependency <'HM-64>REQ-CT-06'> from HazardControls::hm64 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
    #ImplementedBy dependency <'HM-65>REQ-CT-06'> from HazardControls::hm65 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
    #ImplementedBy dependency <'HM-66>REQ-CT-09'> from HazardControls::hm66 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_09;
    #ImplementedBy dependency <'HM-67>REQ-DPS-01'> from HazardControls::hm67 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
    #ImplementedBy dependency <'HM-67>REQ-DPS-02'> from HazardControls::hm67 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_02;
    #ImplementedBy dependency <'HM-67>REQ-DPS-04'> from HazardControls::hm67 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
    #ImplementedBy dependency <'HM-67>CW-27'> from HazardControls::hm67 to SSD_FDIR_ORB_001::GpcAlarm;
    #ImplementedBy dependency <'HM-67>CW-36'> from HazardControls::hm67 to SSD_FDIR_ORB_001::BackupCWAlarm;
    #ImplementedBy dependency <'HM-68>REQ-GNC-10'> from HazardControls::hm68 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
    #ImplementedBy dependency <'HM-68>REQ-GNC-13'> from HazardControls::hm68 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
    #ImplementedBy dependency <'HM-68>CW-33'> from HazardControls::hm68 to SSD_FDIR_ORB_001::FcsChannelAlarm;
    #ImplementedBy dependency <'HM-68>CW-28'> from HazardControls::hm68 to SSD_FDIR_ORB_001::FcsSaturationAlarm;
    #ImplementedBy dependency <'HM-69>REQ-GNC-04'> from HazardControls::hm69 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_04;
    #ImplementedBy dependency <'HM-69>REQ-GNC-08'> from HazardControls::hm69 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_08;
    #ImplementedBy dependency <'HM-69>CW-17'> from HazardControls::hm69 to SSD_FDIR_ORB_001::RgaAccelAlarm;
    #ImplementedBy dependency <'HM-69>CW-18'> from HazardControls::hm69 to SSD_FDIR_ORB_001::AirDataAlarm;
    #ImplementedBy dependency <'HM-69>CW-13'> from HazardControls::hm69 to SSD_FDIR_ORB_001::ImuAlarm;
    #Involves dependency <'HC-01>SSD-FD-EPS-DC-001'> from HazardModel::hc01 to SSD_BLK_SYS_001::EPS_DC;
    #Involves dependency <'HC-01>SSD-FD-ARS-AVB-001'> from HazardModel::hc01 to SSD_BLK_SYS_001::ARS_AVB;
    #Involves dependency <'HC-01>SSD-FD-ECL-FDS-DET-001'> from HazardModel::hc01 to SSD_BLK_SYS_001::ECL_FDS_DET;
    #Involves dependency <'HC-02>SSD-FD-ARS-CAC-001'> from HazardModel::hc02 to SSD_BLK_SYS_001::ARS_CAC;
    #Involves dependency <'HC-02>SSD-FD-ECL-CAB-001'> from HazardModel::hc02 to SSD_BLK_SYS_001::ECL_CAB;
    #Involves dependency <'HC-03>SSD-FD-ECL-PCS-MNF-001'> from HazardModel::hc03 to SSD_BLK_SYS_001::ECL_PCS_MNF;
    #Involves dependency <'HC-03>SSD-FD-ECL-PCS-N2S-001'> from HazardModel::hc03 to SSD_BLK_SYS_001::ECL_PCS_N2S;
    #Involves dependency <'HC-04>SSD-FD-STR-CRM-001'> from HazardModel::hc04 to SSD_BLK_SYS_001::STR_CRM;
    #Involves dependency <'HC-04>SSD-FD-STR-FWD-001'> from HazardModel::hc04 to SSD_BLK_SYS_001::STR_FWD;
    #Involves dependency <'HC-05>SSD-FD-ECL-PCS-001'> from HazardModel::hc05 to SSD_BLK_SYS_001::ECL_PCS;
    #Involves dependency <'HC-05>SSD-FD-ECL-PCS-O2S-001'> from HazardModel::hc05 to SSD_BLK_SYS_001::ECL_PCS_O2S;
    #Involves dependency <'HC-05>SSD-FD-ECL-PCS-N2S-001'> from HazardModel::hc05 to SSD_BLK_SYS_001::ECL_PCS_N2S;
    #Involves dependency <'HC-06>SSD-FD-ECL-PCS-RLF-001'> from HazardModel::hc06 to SSD_BLK_SYS_001::ECL_PCS_RLF;
    #Involves dependency <'HC-07>SSD-FD-ARS-CO2-001'> from HazardModel::hc07 to SSD_BLK_SYS_001::ARS_CO2;
    #Involves dependency <'HC-07>SSD-FD-CO2-CAN-001'> from HazardModel::hc07 to SSD_BLK_SYS_001::CO2_CAN;
    #Involves dependency <'HC-07>SSD-FD-ARS-RCRS-001'> from HazardModel::hc07 to SSD_BLK_SYS_001::ARS_RCRS;
    #Involves dependency <'HC-08>SSD-FD-ECL-FDS-001'> from HazardModel::hc08 to SSD_BLK_SYS_001::ECL_FDS;
    #Involves dependency <'HC-08>SSD-FD-ECL-FDS-FIX-001'> from HazardModel::hc08 to SSD_BLK_SYS_001::ECL_FDS_FIX;
    #Involves dependency <'HC-09>SSD-FD-ARS-WCL-001'> from HazardModel::hc09 to SSD_BLK_SYS_001::ARS_WCL;
    #Involves dependency <'HC-09>SSD-FD-ARS-WCL-ICH-001'> from HazardModel::hc09 to SSD_BLK_SYS_001::ARS_WCL_ICH;
    #Involves dependency <'HC-10>SSD-FD-EVA-MNT-001'> from HazardModel::hc10 to SSD_BLK_SYS_001::EVA_MNT;
    #Involves dependency <'HC-10>SSD-FD-CO2-CAN-001'> from HazardModel::hc10 to SSD_BLK_SYS_001::CO2_CAN;
    #Involves dependency <'HC-11>SSD-FD-EPS-PRSD-001'> from HazardModel::hc11 to SSD_BLK_SYS_001::EPS_PRSD;
    #Involves dependency <'HC-12>SSD-FD-EPS-FCP-001'> from HazardModel::hc12 to SSD_BLK_SYS_001::EPS_FCP;
    #Involves dependency <'HC-12>SSD-FD-EPS-AC-001'> from HazardModel::hc12 to SSD_BLK_SYS_001::EPS_AC;
    #Involves dependency <'HC-13>SSD-FD-EPS-FCP-001'> from HazardModel::hc13 to SSD_BLK_SYS_001::EPS_FCP;
    #Involves dependency <'HC-13>SSD-FD-EPS-PRSD-001'> from HazardModel::hc13 to SSD_BLK_SYS_001::EPS_PRSD;
    #Involves dependency <'HC-14>SSD-FD-EPS-DC-001'> from HazardModel::hc14 to SSD_BLK_SYS_001::EPS_DC;
    #Involves dependency <'HC-15>SSD-FD-TCS-FCL-001'> from HazardModel::hc15 to SSD_BLK_SYS_001::TCS_FCL;
    #Involves dependency <'HC-15>SSD-FD-ARS-WCL-001'> from HazardModel::hc15 to SSD_BLK_SYS_001::ARS_WCL;
    #Involves dependency <'HC-16>SSD-FD-ARS-WCL-PMP-001'> from HazardModel::hc16 to SSD_BLK_SYS_001::ARS_WCL_PMP;
    #Involves dependency <'HC-16>SSD-FD-TCS-FCL-001'> from HazardModel::hc16 to SSD_BLK_SYS_001::TCS_FCL;
    #Involves dependency <'HC-16>SSD-FD-ARS-AVB-FAN-001'> from HazardModel::hc16 to SSD_BLK_SYS_001::ARS_AVB_FAN;
    #Involves dependency <'HC-17>SSD-FD-TCS-RAD-001'> from HazardModel::hc17 to SSD_BLK_SYS_001::TCS_RAD;
    #Involves dependency <'HC-17>SSD-FD-TCS-FES-001'> from HazardModel::hc17 to SSD_BLK_SYS_001::TCS_FES;
    #Involves dependency <'HC-17>SSD-FD-TCS-NH3-001'> from HazardModel::hc17 to SSD_BLK_SYS_001::TCS_NH3;
    #Involves dependency <'HC-18>SSD-FD-APU-CTL-001'> from HazardModel::hc18 to SSD_BLK_SYS_001::APU_CTL;
    #Involves dependency <'HC-18>SSD-FD-APU-TRB-001'> from HazardModel::hc18 to SSD_BLK_SYS_001::APU_TRB;
    #Involves dependency <'HC-18>SSD-FD-APU-FUL-001'> from HazardModel::hc18 to SSD_BLK_SYS_001::APU_FUL;
    #Involves dependency <'HC-19>SSD-FD-APU-HYD-001'> from HazardModel::hc19 to SSD_BLK_SYS_001::APU_HYD;
    #Involves dependency <'HC-20>SSD-FD-APU-WSB-001'> from HazardModel::hc20 to SSD_BLK_SYS_001::APU_WSB;
    #Involves dependency <'HC-21>SSD-FD-MPS-HE-001'> from HazardModel::hc21 to SSD_BLK_SYS_001::MPS_HE;
    #Involves dependency <'HC-22>SSD-FD-MPS-SSME-001'> from HazardModel::hc22 to SSD_BLK_SYS_001::MPS_SSME;
    #Involves dependency <'HC-22>SSD-FD-MPS-CTL-001'> from HazardModel::hc22 to SSD_BLK_SYS_001::MPS_CTL;
    #Involves dependency <'HC-23>SSD-FD-MPS-CTL-001'> from HazardModel::hc23 to SSD_BLK_SYS_001::MPS_CTL;
    #Involves dependency <'HC-23>SSD-FD-DPS-ASC-001'> from HazardModel::hc23 to SSD_BLK_SYS_001::DPS_ASC;
    #Involves dependency <'HC-23>SSD-FD-MPS-TVC-001'> from HazardModel::hc23 to SSD_BLK_SYS_001::MPS_TVC;
    #Involves dependency <'HC-24>SSD-FD-ET-LH2-001'> from HazardModel::hc24 to SSD_BLK_SYS_001::ET_LH2;
    #Involves dependency <'HC-24>SSD-FD-ET-UMB-001'> from HazardModel::hc24 to SSD_BLK_SYS_001::ET_UMB;
    #Involves dependency <'HC-24>SSD-FD-MPS-PMS-001'> from HazardModel::hc24 to SSD_BLK_SYS_001::MPS_PMS;
    #Involves dependency <'HC-25>SSD-FD-MPS-DMP-001'> from HazardModel::hc25 to SSD_BLK_SYS_001::MPS_DMP;
    #Involves dependency <'HC-25>SSD-FD-MPS-PMS-001'> from HazardModel::hc25 to SSD_BLK_SYS_001::MPS_PMS;
    #Involves dependency <'HC-26>SSD-FD-OMS-PSD-001'> from HazardModel::hc26 to SSD_BLK_SYS_001::OMS_PSD;
    #Involves dependency <'HC-26>SSD-FD-RCS-PRP-001'> from HazardModel::hc26 to SSD_BLK_SYS_001::RCS_PRP;
    #Involves dependency <'HC-26>SSD-FD-OMS-XFD-001'> from HazardModel::hc26 to SSD_BLK_SYS_001::OMS_XFD;
    #Involves dependency <'HC-27>SSD-FD-RCS-JET-001'> from HazardModel::hc27 to SSD_BLK_SYS_001::RCS_JET;
    #Involves dependency <'HC-27>SSD-FD-RCS-RM-001'> from HazardModel::hc27 to SSD_BLK_SYS_001::RCS_RM;
    #Involves dependency <'HC-28>SSD-FD-OMS-HE-001'> from HazardModel::hc28 to SSD_BLK_SYS_001::OMS_HE;
    #Involves dependency <'HC-28>SSD-FD-RCS-HEP-001'> from HazardModel::hc28 to SSD_BLK_SYS_001::RCS_HEP;
    #Involves dependency <'HC-29>SSD-FD-ET-TPS-001'> from HazardModel::hc29 to SSD_BLK_SYS_001::ET_TPS;
    #Involves dependency <'HC-29>SSD-FD-TPS-001'> from HazardModel::hc29 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'HC-30>SSD-FD-TPS-001'> from HazardModel::hc30 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'HC-30>SSD-FD-STR-OPS-001'> from HazardModel::hc30 to SSD_BLK_SYS_001::STR_OPS;
    #Involves dependency <'HC-31>SSD-FD-TPS-001'> from HazardModel::hc31 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'HC-31>SSD-FD-STR-CRM-001'> from HazardModel::hc31 to SSD_BLK_SYS_001::STR_CRM;
    #Involves dependency <'HC-32>SSD-FD-MECH-PLB-001'> from HazardModel::hc32 to SSD_BLK_SYS_001::MECH_PLB;
    #Involves dependency <'HC-32>SSD-FD-STR-MID-001'> from HazardModel::hc32 to SSD_BLK_SYS_001::STR_MID;
    #Involves dependency <'HC-33>SSD-FD-MECH-ACT-001'> from HazardModel::hc33 to SSD_BLK_SYS_001::MECH_ACT;
    #Involves dependency <'HC-33>SSD-FD-MECH-PLB-001'> from HazardModel::hc33 to SSD_BLK_SYS_001::MECH_PLB;
    #Involves dependency <'HC-34>SSD-FD-PLS-MPM-001'> from HazardModel::hc34 to SSD_BLK_SYS_001::PLS_MPM;
    #Involves dependency <'HC-34>SSD-FD-PLS-ARM-001'> from HazardModel::hc34 to SSD_BLK_SYS_001::PLS_ARM;
    #Involves dependency <'HC-35>SSD-FD-EVA-001'> from HazardModel::hc35 to SSD_BLK_SYS_001::EVA;
    #Involves dependency <'HC-35>SSD-FD-EVA-CHK-001'> from HazardModel::hc35 to SSD_BLK_SYS_001::EVA_CHK;
    #Involves dependency <'HC-36>SSD-FD-EVA-001'> from HazardModel::hc36 to SSD_BLK_SYS_001::EVA;
    #Involves dependency <'HC-36>SSD-FD-ECL-ALS-SCU-001'> from HazardModel::hc36 to SSD_BLK_SYS_001::ECL_ALS_SCU;
    #Involves dependency <'HC-37>SSD-FD-EVA-TLS-001'> from HazardModel::hc37 to SSD_BLK_SYS_001::EVA_TLS;
    #Involves dependency <'HC-37>SSD-FD-ECL-ALS-DEP-001'> from HazardModel::hc37 to SSD_BLK_SYS_001::ECL_ALS_DEP;
    #Involves dependency <'HC-38>SSD-FD-EVA-DPR-001'> from HazardModel::hc38 to SSD_BLK_SYS_001::EVA_DPR;
    #Involves dependency <'HC-39>SSD-FD-SRB-TVC-001'> from HazardModel::hc39 to SSD_BLK_SYS_001::SRB_TVC;
    #Involves dependency <'HC-40>SSD-FD-SRB-TVC-001'> from HazardModel::hc40 to SSD_BLK_SYS_001::SRB_TVC;
    #Involves dependency <'HC-40>SSD-FD-GNC-ACT-001'> from HazardModel::hc40 to SSD_BLK_SYS_001::GNC_ACT;
    #Involves dependency <'HC-41>SSD-FD-GNC-FCS-001'> from HazardModel::hc41 to SSD_BLK_SYS_001::GNC_FCS;
    #Involves dependency <'HC-41>SSD-FD-SRB-AVN-001'> from HazardModel::hc41 to SSD_BLK_SYS_001::SRB_AVN;
    #Involves dependency <'HC-42>SSD-FD-MECH-DEC-001'> from HazardModel::hc42 to SSD_BLK_SYS_001::MECH_DEC;
    #Involves dependency <'HC-42>SSD-FD-APU-HYD-001'> from HazardModel::hc42 to SSD_BLK_SYS_001::APU_HYD;
    #Involves dependency <'HC-43>SSD-FD-MECH-LDG-001'> from HazardModel::hc43 to SSD_BLK_SYS_001::MECH_LDG;
    #Involves dependency <'HC-44>SSD-FD-MECH-DEC-001'> from HazardModel::hc44 to SSD_BLK_SYS_001::MECH_DEC;
    #Involves dependency <'HC-44>SSD-FD-GNC-CCD-001'> from HazardModel::hc44 to SSD_BLK_SYS_001::GNC_CCD;
    #Involves dependency <'HC-45>SSD-FD-CT-SBD-001'> from HazardModel::hc45 to SSD_BLK_SYS_001::CT_SBD;
    #Involves dependency <'HC-45>SSD-FD-CT-AUD-001'> from HazardModel::hc45 to SSD_BLK_SYS_001::CT_AUD;
    #Involves dependency <'HC-45>SSD-FD-CT-UHF-001'> from HazardModel::hc45 to SSD_BLK_SYS_001::CT_UHF;
    #Involves dependency <'HC-46>SSD-FD-EXT-001'> from HazardModel::hc46 to SSD_BLK_SYS_001::EXT;
    #Involves dependency <'HC-46>SSD-FD-CT-OPS-001'> from HazardModel::hc46 to SSD_BLK_SYS_001::CT_OPS;
    #Involves dependency <'HC-47>SSD-FD-DPS-GPC-001'> from HazardModel::hc47 to SSD_BLK_SYS_001::DPS_GPC;
    #Involves dependency <'HC-47>SSD-FD-DPS-FSW-001'> from HazardModel::hc47 to SSD_BLK_SYS_001::DPS_FSW;
    #Involves dependency <'HC-48>SSD-FD-GNC-ACT-001'> from HazardModel::hc48 to SSD_BLK_SYS_001::GNC_ACT;
    #Involves dependency <'HC-48>SSD-FD-GNC-FCS-001'> from HazardModel::hc48 to SSD_BLK_SYS_001::GNC_FCS;
    #Involves dependency <'HC-49>SSD-FD-GNC-FCS-001'> from HazardModel::hc49 to SSD_BLK_SYS_001::GNC_FCS;
    #Involves dependency <'HC-49>SSD-FD-GNC-NAS-001'> from HazardModel::hc49 to SSD_BLK_SYS_001::GNC_NAS;
    #Involves dependency <'HC-49>SSD-FD-GNC-INS-001'> from HazardModel::hc49 to SSD_BLK_SYS_001::GNC_INS;
}
