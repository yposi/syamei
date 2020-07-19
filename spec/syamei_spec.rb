RSpec.describe Syamei do
  describe '.with_end?' do
    context 'name is nil' do
      it { expect(Syamei.with_end?(nil, 0)).to eq false }
    end
    context 'name is empty' do
      it { expect(Syamei.with_end?('', 0)).to eq false }
    end
    context 'type: 0' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_end?('株式会社XXX', 0)).to eq false }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_end?('XXX株式会社', 0)).to eq true }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_end?('有限会社XXX', 0)).to eq false }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_end?('XXX有限会社', 0)).to eq true }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_end?('合名会社XXX', 0)).to eq false }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_end?('XXX合名会社', 0)).to eq true }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_end?('合資会社XXX', 0)).to eq false }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_end?('XXX合資会社', 0)).to eq true }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_end?('合同会社XXX', 0)).to eq false }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_end?('XXX合同会社', 0)).to eq true }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_end?('医療法人社団XXX', 0)).to eq false }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人社団', 0)).to eq true }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_end?('医療法人財団XXX', 0)).to eq false }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人財団', 0)).to eq true }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_end?('医療法人XXX', 0)).to eq false }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人', 0)).to eq true }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_end?('社会医療法人XXX', 0)).to eq false }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会医療法人', 0)).to eq true }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_end?('財団法人XXX', 0)).to eq false }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX財団法人', 0)).to eq true }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_end?('一般財団法人XXX', 0)).to eq false }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX一般財団法人', 0)).to eq true }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_end?('公益財団法人XXX', 0)).to eq false }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX公益財団法人', 0)).to eq true }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_end?('社団法人XXX', 0)).to eq false }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX社団法人', 0)).to eq true }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_end?('一般社団法人XXX', 0)).to eq false }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX一般社団法人', 0)).to eq true }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_end?('公益社団法人XXX', 0)).to eq false }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX公益社団法人', 0)).to eq true }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_end?('宗教法人XXX', 0)).to eq false }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_end?('XXX宗教法人', 0)).to eq true }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_end?('学校法人XXX', 0)).to eq false }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_end?('XXX学校法人', 0)).to eq true }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_end?('社会福祉法人XXX', 0)).to eq false }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会福祉法人', 0)).to eq true }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_end?('更生保護法人XXX', 0)).to eq false }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_end?('XXX更生保護法人', 0)).to eq true }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_end?('相互会社XXX', 0)).to eq false }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_end?('XXX相互会社', 0)).to eq true }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_end?('特定非営利活動法人XXX', 0)).to eq false }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_end?('XXX特定非営利活動法人', 0)).to eq true }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_end?('独立行政法人XXX', 0)).to eq false }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_end?('XXX独立行政法人', 0)).to eq true }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_end?('地方独立行政法人XXX', 0)).to eq false }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_end?('XXX地方独立行政法人', 0)).to eq true }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_end?('弁護士法人XXX', 0)).to eq false }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_end?('XXX弁護士法人', 0)).to eq true }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end?('有限責任中間法人XXX', 0)).to eq false }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_end?('XXX有限責任中間法人', 0)).to eq true }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end?('無限責任中間法人XXX', 0)).to eq false }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_end?('XXX無限責任中間法人', 0)).to eq true }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_end?('行政書士法人XXX', 0)).to eq false }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_end?('XXX行政書士法人', 0)).to eq true }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_end?('司法書士法人XXX', 0)).to eq false }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_end?('XXX司法書士法人', 0)).to eq true }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_end?('税理士法人XXX', 0)).to eq false }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_end?('XXX税理士法人', 0)).to eq true }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_end?('国立大学法人XXX', 0)).to eq false }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_end?('XXX国立大学法人', 0)).to eq true }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_end?('公立大学法人XXX', 0)).to eq false }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_end?('XXX公立大学法人', 0)).to eq true }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_end?('農事組合法人XXX', 0)).to eq false }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_end?('XXX農事組合法人', 0)).to eq true }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_end?('管理組合法人XXX', 0)).to eq false }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_end?('XXX管理組合法人', 0)).to eq true }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_end?('社会保険労務士法人XXX', 0)).to eq false }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会保険労務士法人', 0)).to eq true }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_end?('営業所XXX', 0)).to eq false }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_end?('XXX営業所', 0)).to eq true }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_end?('出張所XXX', 0)).to eq false }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_end?('XXX出張所', 0)).to eq true }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_end?('㈱XXX', 0)).to eq false }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_end?('XXX㈱', 0)).to eq true }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_end?('㈲XXX', 0)).to eq false }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_end?('XXX㈲', 0)).to eq true }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_end?('㈱XXX', 0)).to eq false }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_end?('XXX㈱', 0)).to eq true }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_end?('㈲XXX', 0)).to eq false }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_end?('XXX㈲', 0)).to eq true }
      end

      context 'カ\)XXX の場合' do
        it { expect(Syamei.with_end?('カ)XXX', 0)).to eq false }
      end

      context 'XXXカ\) の場合' do
        it { expect(Syamei.with_end?('XXXカ)', 0)).to eq false }
      end

      context 'ユ\)XXX の場合' do
        it { expect(Syamei.with_end?('ユ)XXX', 0)).to eq false }
      end

      context 'XXXユ\) の場合' do
        it { expect(Syamei.with_end?('XXXユ)', 0)).to eq false }
      end

      context 'メ\)XXX の場合' do
        it { expect(Syamei.with_end?('メ)XXX', 0)).to eq false }
      end

      context 'XXXメ\) の場合' do
        it { expect(Syamei.with_end?('XXXメ)', 0)).to eq false }
      end

      context 'シ\)XXX の場合' do
        it { expect(Syamei.with_end?('シ)XXX', 0)).to eq false }
      end

      context 'XXXシ\) の場合' do
        it { expect(Syamei.with_end?('XXXシ)', 0)).to eq false }
      end

      context 'ド\)XXX の場合' do
        it { expect(Syamei.with_end?('ド)XXX', 0)).to eq false }
      end

      context 'XXXド\) の場合' do
        it { expect(Syamei.with_end?('XXXド)', 0)).to eq false }
      end

      context 'イ\)XXX の場合' do
        it { expect(Syamei.with_end?('イ)XXX', 0)).to eq false }
      end

      context 'XXXイ\) の場合' do
        it { expect(Syamei.with_end?('XXXイ)', 0)).to eq false }
      end

      context 'ザイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ザイ)XXX', 0)).to eq false }
      end

      context 'XXXザイ\) の場合' do
        it { expect(Syamei.with_end?('XXXザイ)', 0)).to eq false }
      end

      context 'シヤ\)XXX の場合' do
        it { expect(Syamei.with_end?('シヤ)XXX', 0)).to eq false }
      end

      context 'XXXシヤ\) の場合' do
        it { expect(Syamei.with_end?('XXXシヤ)', 0)).to eq false }
      end

      context 'ガク\)XXX の場合' do
        it { expect(Syamei.with_end?('ガク)XXX', 0)).to eq false }
      end

      context 'XXXガク\) の場合' do
        it { expect(Syamei.with_end?('XXXガク)', 0)).to eq false }
      end

      context 'フク\)XXX の場合' do
        it { expect(Syamei.with_end?('フク)XXX', 0)).to eq false }
      end

      context 'XXXフク\) の場合' do
        it { expect(Syamei.with_end?('XXXフク)', 0)).to eq false }
      end

      context 'ホゴ\)XXX の場合' do
        it { expect(Syamei.with_end?('ホゴ)XXX', 0)).to eq false }
      end

      context 'XXXホゴ\) の場合' do
        it { expect(Syamei.with_end?('XXXホゴ)', 0)).to eq false }
      end

      context 'ソ\)XXX の場合' do
        it { expect(Syamei.with_end?('ソ)XXX', 0)).to eq false }
      end

      context 'XXXソ\) の場合' do
        it { expect(Syamei.with_end?('XXXソ)', 0)).to eq false }
      end

      context 'トクヒ\)XXX の場合' do
        it { expect(Syamei.with_end?('トクヒ)XXX', 0)).to eq false }
      end

      context 'XXXトクヒ\) の場合' do
        it { expect(Syamei.with_end?('XXXトクヒ)', 0)).to eq false }
      end

      context 'ドク\)XXX の場合' do
        it { expect(Syamei.with_end?('ドク)XXX', 0)).to eq false }
      end

      context 'XXXドク\) の場合' do
        it { expect(Syamei.with_end?('XXXドク)', 0)).to eq false }
      end

      context 'チドク\)XXX の場合' do
        it { expect(Syamei.with_end?('チドク)XXX', 0)).to eq false }
      end

      context 'XXXチドク\) の場合' do
        it { expect(Syamei.with_end?('XXXチドク)', 0)).to eq false }
      end

      context 'ベン\)XXX の場合' do
        it { expect(Syamei.with_end?('ベン)XXX', 0)).to eq false }
      end

      context 'XXXベン\) の場合' do
        it { expect(Syamei.with_end?('XXXベン)', 0)).to eq false }
      end

      context 'チユウ\)XXX の場合' do
        it { expect(Syamei.with_end?('チユウ)XXX', 0)).to eq false }
      end

      context 'XXXチユウ\) の場合' do
        it { expect(Syamei.with_end?('XXXチユウ)', 0)).to eq false }
      end

      context 'ギヨ\)XXX の場合' do
        it { expect(Syamei.with_end?('ギヨ)XXX', 0)).to eq false }
      end

      context 'XXXギヨ\) の場合' do
        it { expect(Syamei.with_end?('XXXギヨ)', 0)).to eq false }
      end

      context 'シホウ\)XXX の場合' do
        it { expect(Syamei.with_end?('シホウ)XXX', 0)).to eq false }
      end

      context 'XXXシホウ\) の場合' do
        it { expect(Syamei.with_end?('XXXシホウ)', 0)).to eq false }
      end

      context 'ゼイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ゼイ)XXX', 0)).to eq false }
      end

      context 'XXXゼイ\) の場合' do
        it { expect(Syamei.with_end?('XXXゼイ)', 0)).to eq false }
      end

      context 'ダイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ダイ)XXX', 0)).to eq false }
      end

      context 'XXXダイ\) の場合' do
        it { expect(Syamei.with_end?('XXXダイ)', 0)).to eq false }
      end

      context 'ノウ\)XXX の場合' do
        it { expect(Syamei.with_end?('ノウ)XXX', 0)).to eq false }
      end

      context 'XXXノウ\) の場合' do
        it { expect(Syamei.with_end?('XXXノウ)', 0)).to eq false }
      end

      context 'カンリ\)XXX の場合' do
        it { expect(Syamei.with_end?('カンリ)XXX', 0)).to eq false }
      end

      context 'XXXカンリ\) の場合' do
        it { expect(Syamei.with_end?('XXXカンリ)', 0)).to eq false }
      end

      context 'ロウム\)XXX の場合' do
        it { expect(Syamei.with_end?('ロウム)XXX', 0)).to eq false }
      end

      context 'XXXロウム\) の場合' do
        it { expect(Syamei.with_end?('XXXロウム)', 0)).to eq false }
      end

      context 'エイ\)XXX の場合' do
        it { expect(Syamei.with_end?('エイ)XXX', 0)).to eq false }
      end

      context 'XXXエイ\) の場合' do
        it { expect(Syamei.with_end?('XXXエイ)', 0)).to eq false }
      end

      context 'シユツ\)XXX の場合' do
        it { expect(Syamei.with_end?('シユツ)XXX', 0)).to eq false }
      end

      context 'XXXシユツ\) の場合' do
        it { expect(Syamei.with_end?('XXXシユツ)', 0)).to eq false }
      end

      context '\(カXXX の場合' do
        it { expect(Syamei.with_end?('(カXXX', 0)).to eq false }
      end

      context 'XXX\(カ の場合' do
        it { expect(Syamei.with_end?('XXX(カ', 0)).to eq true }
      end

      context '\(ユXXX の場合' do
        it { expect(Syamei.with_end?('(ユXXX', 0)).to eq false }
      end

      context 'XXX\(ユ の場合' do
        it { expect(Syamei.with_end?('XXX(ユ', 0)).to eq true }
      end

      context '\(メXXX の場合' do
        it { expect(Syamei.with_end?('(メXXX', 0)).to eq false }
      end

      context 'XXX\(メ の場合' do
        it { expect(Syamei.with_end?('XXX(メ', 0)).to eq true }
      end

      context '\(シXXX の場合' do
        it { expect(Syamei.with_end?('(シXXX', 0)).to eq false }
      end

      context 'XXX\(シ の場合' do
        it { expect(Syamei.with_end?('XXX(シ', 0)).to eq true }
      end

      context '\(ドXXX の場合' do
        it { expect(Syamei.with_end?('(ドXXX', 0)).to eq false }
      end

      context 'XXX\(ド の場合' do
        it { expect(Syamei.with_end?('XXX(ド', 0)).to eq true }
      end

      context '\(イXXX の場合' do
        it { expect(Syamei.with_end?('(イXXX', 0)).to eq false }
      end

      context 'XXX\(イ の場合' do
        it { expect(Syamei.with_end?('XXX(イ', 0)).to eq true }
      end

      context '\(ホゴXXX の場合' do
        it { expect(Syamei.with_end?('(ホゴXXX', 0)).to eq false }
      end

      context 'XXX\(ホゴ の場合' do
        it { expect(Syamei.with_end?('XXX(ホゴ', 0)).to eq true }
      end

      context '\(ソXXX の場合' do
        it { expect(Syamei.with_end?('(ソXXX', 0)).to eq false }
      end

      context 'XXX\(ソ の場合' do
        it { expect(Syamei.with_end?('XXX(ソ', 0)).to eq true }
      end

      context '\(トクヒXXX の場合' do
        it { expect(Syamei.with_end?('(トクヒXXX', 0)).to eq false }
      end

      context 'XXX\(トクヒ の場合' do
        it { expect(Syamei.with_end?('XXX(トクヒ', 0)).to eq true }
      end

      context '\(ドクXXX の場合' do
        it { expect(Syamei.with_end?('(ドクXXX', 0)).to eq false }
      end

      context 'XXX\(ドク の場合' do
        it { expect(Syamei.with_end?('XXX(ドク', 0)).to eq true }
      end

      context '\(チドクXXX の場合' do
        it { expect(Syamei.with_end?('(チドクXXX', 0)).to eq false }
      end

      context 'XXX\(チドク の場合' do
        it { expect(Syamei.with_end?('XXX(チドク', 0)).to eq true }
      end

      context '\(ベンXXX の場合' do
        it { expect(Syamei.with_end?('(ベンXXX', 0)).to eq false }
      end

      context 'XXX\(ベン の場合' do
        it { expect(Syamei.with_end?('XXX(ベン', 0)).to eq true }
      end

      context '\(チユウXXX の場合' do
        it { expect(Syamei.with_end?('(チユウXXX', 0)).to eq false }
      end

      context 'XXX\(チユウ の場合' do
        it { expect(Syamei.with_end?('XXX(チユウ', 0)).to eq true }
      end

      context '\(ギヨXXX の場合' do
        it { expect(Syamei.with_end?('(ギヨXXX', 0)).to eq false }
      end

      context 'XXX\(ギヨ の場合' do
        it { expect(Syamei.with_end?('XXX(ギヨ', 0)).to eq true }
      end

      context '\(シホウXXX の場合' do
        it { expect(Syamei.with_end?('(シホウXXX', 0)).to eq false }
      end

      context 'XXX\(シホウ の場合' do
        it { expect(Syamei.with_end?('XXX(シホウ', 0)).to eq true }
      end

      context '\(ゼイXXX の場合' do
        it { expect(Syamei.with_end?('(ゼイXXX', 0)).to eq false }
      end

      context 'XXX\(ゼイ の場合' do
        it { expect(Syamei.with_end?('XXX(ゼイ', 0)).to eq true }
      end

      context '\(ダイXXX の場合' do
        it { expect(Syamei.with_end?('(ダイXXX', 0)).to eq false }
      end

      context 'XXX\(ダイ の場合' do
        it { expect(Syamei.with_end?('XXX(ダイ', 0)).to eq true }
      end

      context '\(ノウXXX の場合' do
        it { expect(Syamei.with_end?('(ノウXXX', 0)).to eq false }
      end

      context 'XXX\(ノウ の場合' do
        it { expect(Syamei.with_end?('XXX(ノウ', 0)).to eq true }
      end

      context '\(カンリXXX の場合' do
        it { expect(Syamei.with_end?('(カンリXXX', 0)).to eq false }
      end

      context 'XXX\(カンリ の場合' do
        it { expect(Syamei.with_end?('XXX(カンリ', 0)).to eq true }
      end

      context '\(ロウムXXX の場合' do
        it { expect(Syamei.with_end?('(ロウムXXX', 0)).to eq false }
      end

      context 'XXX\(ロウム の場合' do
        it { expect(Syamei.with_end?('XXX(ロウム', 0)).to eq true }
      end

      context '\(エイXXX の場合' do
        it { expect(Syamei.with_end?('(エイXXX', 0)).to eq false }
      end

      context 'XXX\(エイ の場合' do
        it { expect(Syamei.with_end?('XXX(エイ', 0)).to eq true }
      end

      context '\(シユツXXX の場合' do
        it { expect(Syamei.with_end?('(シユツXXX', 0)).to eq false }
      end

      context 'XXX\(シユツ の場合' do
        it { expect(Syamei.with_end?('XXX(シユツ', 0)).to eq true }
      end
    end
    context 'type: 1' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_end?('株式会社XXX', 1)).to eq false }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_end?('XXX株式会社', 1)).to eq true }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_end?('有限会社XXX', 1)).to eq false }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_end?('XXX有限会社', 1)).to eq true }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_end?('合名会社XXX', 1)).to eq false }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_end?('XXX合名会社', 1)).to eq true }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_end?('合資会社XXX', 1)).to eq false }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_end?('XXX合資会社', 1)).to eq true }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_end?('合同会社XXX', 1)).to eq false }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_end?('XXX合同会社', 1)).to eq true }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_end?('医療法人社団XXX', 1)).to eq false }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人社団', 1)).to eq true }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_end?('医療法人財団XXX', 1)).to eq false }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人財団', 1)).to eq true }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_end?('医療法人XXX', 1)).to eq false }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人', 1)).to eq true }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_end?('社会医療法人XXX', 1)).to eq false }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会医療法人', 1)).to eq true }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_end?('財団法人XXX', 1)).to eq false }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX財団法人', 1)).to eq true }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_end?('一般財団法人XXX', 1)).to eq false }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX一般財団法人', 1)).to eq true }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_end?('公益財団法人XXX', 1)).to eq false }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX公益財団法人', 1)).to eq true }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_end?('社団法人XXX', 1)).to eq false }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX社団法人', 1)).to eq true }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_end?('一般社団法人XXX', 1)).to eq false }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX一般社団法人', 1)).to eq true }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_end?('公益社団法人XXX', 1)).to eq false }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX公益社団法人', 1)).to eq true }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_end?('宗教法人XXX', 1)).to eq false }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_end?('XXX宗教法人', 1)).to eq true }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_end?('学校法人XXX', 1)).to eq false }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_end?('XXX学校法人', 1)).to eq true }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_end?('社会福祉法人XXX', 1)).to eq false }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会福祉法人', 1)).to eq true }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_end?('更生保護法人XXX', 1)).to eq false }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_end?('XXX更生保護法人', 1)).to eq true }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_end?('相互会社XXX', 1)).to eq false }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_end?('XXX相互会社', 1)).to eq true }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_end?('特定非営利活動法人XXX', 1)).to eq false }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_end?('XXX特定非営利活動法人', 1)).to eq true }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_end?('独立行政法人XXX', 1)).to eq false }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_end?('XXX独立行政法人', 1)).to eq true }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_end?('地方独立行政法人XXX', 1)).to eq false }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_end?('XXX地方独立行政法人', 1)).to eq true }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_end?('弁護士法人XXX', 1)).to eq false }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_end?('XXX弁護士法人', 1)).to eq true }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end?('有限責任中間法人XXX', 1)).to eq false }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_end?('XXX有限責任中間法人', 1)).to eq true }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end?('無限責任中間法人XXX', 1)).to eq false }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_end?('XXX無限責任中間法人', 1)).to eq true }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_end?('行政書士法人XXX', 1)).to eq false }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_end?('XXX行政書士法人', 1)).to eq true }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_end?('司法書士法人XXX', 1)).to eq false }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_end?('XXX司法書士法人', 1)).to eq true }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_end?('税理士法人XXX', 1)).to eq false }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_end?('XXX税理士法人', 1)).to eq true }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_end?('国立大学法人XXX', 1)).to eq false }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_end?('XXX国立大学法人', 1)).to eq true }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_end?('公立大学法人XXX', 1)).to eq false }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_end?('XXX公立大学法人', 1)).to eq true }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_end?('農事組合法人XXX', 1)).to eq false }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_end?('XXX農事組合法人', 1)).to eq true }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_end?('管理組合法人XXX', 1)).to eq false }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_end?('XXX管理組合法人', 1)).to eq true }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_end?('社会保険労務士法人XXX', 1)).to eq false }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会保険労務士法人', 1)).to eq true }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_end?('営業所XXX', 1)).to eq false }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_end?('XXX営業所', 1)).to eq true }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_end?('出張所XXX', 1)).to eq false }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_end?('XXX出張所', 1)).to eq true }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_end?('㈱XXX', 1)).to eq false }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_end?('XXX㈱', 1)).to eq false }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_end?('㈲XXX', 1)).to eq false }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_end?('XXX㈲', 1)).to eq false }
      end

      context 'カ\)XXX の場合' do
        it { expect(Syamei.with_end?('カ)XXX', 1)).to eq false }
      end

      context 'XXXカ\) の場合' do
        it { expect(Syamei.with_end?('XXXカ)', 1)).to eq false }
      end

      context 'ユ\)XXX の場合' do
        it { expect(Syamei.with_end?('ユ)XXX', 1)).to eq false }
      end

      context 'XXXユ\) の場合' do
        it { expect(Syamei.with_end?('XXXユ)', 1)).to eq false }
      end

      context 'メ\)XXX の場合' do
        it { expect(Syamei.with_end?('メ)XXX', 1)).to eq false }
      end

      context 'XXXメ\) の場合' do
        it { expect(Syamei.with_end?('XXXメ)', 1)).to eq false }
      end

      context 'シ\)XXX の場合' do
        it { expect(Syamei.with_end?('シ)XXX', 1)).to eq false }
      end

      context 'XXXシ\) の場合' do
        it { expect(Syamei.with_end?('XXXシ)', 1)).to eq false }
      end

      context 'ド\)XXX の場合' do
        it { expect(Syamei.with_end?('ド)XXX', 1)).to eq false }
      end

      context 'XXXド\) の場合' do
        it { expect(Syamei.with_end?('XXXド)', 1)).to eq false }
      end

      context 'イ\)XXX の場合' do
        it { expect(Syamei.with_end?('イ)XXX', 1)).to eq false }
      end

      context 'XXXイ\) の場合' do
        it { expect(Syamei.with_end?('XXXイ)', 1)).to eq false }
      end

      context 'ザイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ザイ)XXX', 1)).to eq false }
      end

      context 'XXXザイ\) の場合' do
        it { expect(Syamei.with_end?('XXXザイ)', 1)).to eq false }
      end

      context 'シヤ\)XXX の場合' do
        it { expect(Syamei.with_end?('シヤ)XXX', 1)).to eq false }
      end

      context 'XXXシヤ\) の場合' do
        it { expect(Syamei.with_end?('XXXシヤ)', 1)).to eq false }
      end

      context 'ガク\)XXX の場合' do
        it { expect(Syamei.with_end?('ガク)XXX', 1)).to eq false }
      end

      context 'XXXガク\) の場合' do
        it { expect(Syamei.with_end?('XXXガク)', 1)).to eq false }
      end

      context 'フク\)XXX の場合' do
        it { expect(Syamei.with_end?('フク)XXX', 1)).to eq false }
      end

      context 'XXXフク\) の場合' do
        it { expect(Syamei.with_end?('XXXフク)', 1)).to eq false }
      end

      context 'ホゴ\)XXX の場合' do
        it { expect(Syamei.with_end?('ホゴ)XXX', 1)).to eq false }
      end

      context 'XXXホゴ\) の場合' do
        it { expect(Syamei.with_end?('XXXホゴ)', 1)).to eq false }
      end

      context 'ソ\)XXX の場合' do
        it { expect(Syamei.with_end?('ソ)XXX', 1)).to eq false }
      end

      context 'XXXソ\) の場合' do
        it { expect(Syamei.with_end?('XXXソ)', 1)).to eq false }
      end

      context 'トクヒ\)XXX の場合' do
        it { expect(Syamei.with_end?('トクヒ)XXX', 1)).to eq false }
      end

      context 'XXXトクヒ\) の場合' do
        it { expect(Syamei.with_end?('XXXトクヒ)', 1)).to eq false }
      end

      context 'ドク\)XXX の場合' do
        it { expect(Syamei.with_end?('ドク)XXX', 1)).to eq false }
      end

      context 'XXXドク\) の場合' do
        it { expect(Syamei.with_end?('XXXドク)', 1)).to eq false }
      end

      context 'チドク\)XXX の場合' do
        it { expect(Syamei.with_end?('チドク)XXX', 1)).to eq false }
      end

      context 'XXXチドク\) の場合' do
        it { expect(Syamei.with_end?('XXXチドク)', 1)).to eq false }
      end

      context 'ベン\)XXX の場合' do
        it { expect(Syamei.with_end?('ベン)XXX', 1)).to eq false }
      end

      context 'XXXベン\) の場合' do
        it { expect(Syamei.with_end?('XXXベン)', 1)).to eq false }
      end

      context 'チユウ\)XXX の場合' do
        it { expect(Syamei.with_end?('チユウ)XXX', 1)).to eq false }
      end

      context 'XXXチユウ\) の場合' do
        it { expect(Syamei.with_end?('XXXチユウ)', 1)).to eq false }
      end

      context 'ギヨ\)XXX の場合' do
        it { expect(Syamei.with_end?('ギヨ)XXX', 1)).to eq false }
      end

      context 'XXXギヨ\) の場合' do
        it { expect(Syamei.with_end?('XXXギヨ)', 1)).to eq false }
      end

      context 'シホウ\)XXX の場合' do
        it { expect(Syamei.with_end?('シホウ)XXX', 1)).to eq false }
      end

      context 'XXXシホウ\) の場合' do
        it { expect(Syamei.with_end?('XXXシホウ)', 1)).to eq false }
      end

      context 'ゼイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ゼイ)XXX', 1)).to eq false }
      end

      context 'XXXゼイ\) の場合' do
        it { expect(Syamei.with_end?('XXXゼイ)', 1)).to eq false }
      end

      context 'ダイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ダイ)XXX', 1)).to eq false }
      end

      context 'XXXダイ\) の場合' do
        it { expect(Syamei.with_end?('XXXダイ)', 1)).to eq false }
      end

      context 'ノウ\)XXX の場合' do
        it { expect(Syamei.with_end?('ノウ)XXX', 1)).to eq false }
      end

      context 'XXXノウ\) の場合' do
        it { expect(Syamei.with_end?('XXXノウ)', 1)).to eq false }
      end

      context 'カンリ\)XXX の場合' do
        it { expect(Syamei.with_end?('カンリ)XXX', 1)).to eq false }
      end

      context 'XXXカンリ\) の場合' do
        it { expect(Syamei.with_end?('XXXカンリ)', 1)).to eq false }
      end

      context 'ロウム\)XXX の場合' do
        it { expect(Syamei.with_end?('ロウム)XXX', 1)).to eq false }
      end

      context 'XXXロウム\) の場合' do
        it { expect(Syamei.with_end?('XXXロウム)', 1)).to eq false }
      end

      context 'エイ\)XXX の場合' do
        it { expect(Syamei.with_end?('エイ)XXX', 1)).to eq false }
      end

      context 'XXXエイ\) の場合' do
        it { expect(Syamei.with_end?('XXXエイ)', 1)).to eq false }
      end

      context 'シユツ\)XXX の場合' do
        it { expect(Syamei.with_end?('シユツ)XXX', 1)).to eq false }
      end

      context 'XXXシユツ\) の場合' do
        it { expect(Syamei.with_end?('XXXシユツ)', 1)).to eq false }
      end

      context '\(カXXX の場合' do
        it { expect(Syamei.with_end?('(カXXX', 1)).to eq false }
      end

      context 'XXX\(カ の場合' do
        it { expect(Syamei.with_end?('XXX(カ', 1)).to eq false }
      end

      context '\(ユXXX の場合' do
        it { expect(Syamei.with_end?('(ユXXX', 1)).to eq false }
      end

      context 'XXX\(ユ の場合' do
        it { expect(Syamei.with_end?('XXX(ユ', 1)).to eq false }
      end

      context '\(メXXX の場合' do
        it { expect(Syamei.with_end?('(メXXX', 1)).to eq false }
      end

      context 'XXX\(メ の場合' do
        it { expect(Syamei.with_end?('XXX(メ', 1)).to eq false }
      end

      context '\(シXXX の場合' do
        it { expect(Syamei.with_end?('(シXXX', 1)).to eq false }
      end

      context 'XXX\(シ の場合' do
        it { expect(Syamei.with_end?('XXX(シ', 1)).to eq false }
      end

      context '\(ドXXX の場合' do
        it { expect(Syamei.with_end?('(ドXXX', 1)).to eq false }
      end

      context 'XXX\(ド の場合' do
        it { expect(Syamei.with_end?('XXX(ド', 1)).to eq false }
      end

      context '\(イXXX の場合' do
        it { expect(Syamei.with_end?('(イXXX', 1)).to eq false }
      end

      context 'XXX\(イ の場合' do
        it { expect(Syamei.with_end?('XXX(イ', 1)).to eq false }
      end

      context '\(ホゴXXX の場合' do
        it { expect(Syamei.with_end?('(ホゴXXX', 1)).to eq false }
      end

      context 'XXX\(ホゴ の場合' do
        it { expect(Syamei.with_end?('XXX(ホゴ', 1)).to eq false }
      end

      context '\(ソXXX の場合' do
        it { expect(Syamei.with_end?('(ソXXX', 1)).to eq false }
      end

      context 'XXX\(ソ の場合' do
        it { expect(Syamei.with_end?('XXX(ソ', 1)).to eq false }
      end

      context '\(トクヒXXX の場合' do
        it { expect(Syamei.with_end?('(トクヒXXX', 1)).to eq false }
      end

      context 'XXX\(トクヒ の場合' do
        it { expect(Syamei.with_end?('XXX(トクヒ', 1)).to eq false }
      end

      context '\(ドクXXX の場合' do
        it { expect(Syamei.with_end?('(ドクXXX', 1)).to eq false }
      end

      context 'XXX\(ドク の場合' do
        it { expect(Syamei.with_end?('XXX(ドク', 1)).to eq false }
      end

      context '\(チドクXXX の場合' do
        it { expect(Syamei.with_end?('(チドクXXX', 1)).to eq false }
      end

      context 'XXX\(チドク の場合' do
        it { expect(Syamei.with_end?('XXX(チドク', 1)).to eq false }
      end

      context '\(ベンXXX の場合' do
        it { expect(Syamei.with_end?('(ベンXXX', 1)).to eq false }
      end

      context 'XXX\(ベン の場合' do
        it { expect(Syamei.with_end?('XXX(ベン', 1)).to eq false }
      end

      context '\(チユウXXX の場合' do
        it { expect(Syamei.with_end?('(チユウXXX', 1)).to eq false }
      end

      context 'XXX\(チユウ の場合' do
        it { expect(Syamei.with_end?('XXX(チユウ', 1)).to eq false }
      end

      context '\(ギヨXXX の場合' do
        it { expect(Syamei.with_end?('(ギヨXXX', 1)).to eq false }
      end

      context 'XXX\(ギヨ の場合' do
        it { expect(Syamei.with_end?('XXX(ギヨ', 1)).to eq false }
      end

      context '\(シホウXXX の場合' do
        it { expect(Syamei.with_end?('(シホウXXX', 1)).to eq false }
      end

      context 'XXX\(シホウ の場合' do
        it { expect(Syamei.with_end?('XXX(シホウ', 1)).to eq false }
      end

      context '\(ゼイXXX の場合' do
        it { expect(Syamei.with_end?('(ゼイXXX', 1)).to eq false }
      end

      context 'XXX\(ゼイ の場合' do
        it { expect(Syamei.with_end?('XXX(ゼイ', 1)).to eq false }
      end

      context '\(ダイXXX の場合' do
        it { expect(Syamei.with_end?('(ダイXXX', 1)).to eq false }
      end

      context 'XXX\(ダイ の場合' do
        it { expect(Syamei.with_end?('XXX(ダイ', 1)).to eq false }
      end

      context '\(ノウXXX の場合' do
        it { expect(Syamei.with_end?('(ノウXXX', 1)).to eq false }
      end

      context 'XXX\(ノウ の場合' do
        it { expect(Syamei.with_end?('XXX(ノウ', 1)).to eq false }
      end

      context '\(カンリXXX の場合' do
        it { expect(Syamei.with_end?('(カンリXXX', 1)).to eq false }
      end

      context 'XXX\(カンリ の場合' do
        it { expect(Syamei.with_end?('XXX(カンリ', 1)).to eq false }
      end

      context '\(ロウムXXX の場合' do
        it { expect(Syamei.with_end?('(ロウムXXX', 1)).to eq false }
      end

      context 'XXX\(ロウム の場合' do
        it { expect(Syamei.with_end?('XXX(ロウム', 1)).to eq false }
      end

      context '\(エイXXX の場合' do
        it { expect(Syamei.with_end?('(エイXXX', 1)).to eq false }
      end

      context 'XXX\(エイ の場合' do
        it { expect(Syamei.with_end?('XXX(エイ', 1)).to eq false }
      end

      context '\(シユツXXX の場合' do
        it { expect(Syamei.with_end?('(シユツXXX', 1)).to eq false }
      end

      context 'XXX\(シユツ の場合' do
        it { expect(Syamei.with_end?('XXX(シユツ', 1)).to eq false }
      end
    end
    context 'type: 2' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_end?('株式会社XXX', 2)).to eq false }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_end?('XXX株式会社', 2)).to eq false }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_end?('有限会社XXX', 2)).to eq false }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_end?('XXX有限会社', 2)).to eq false }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_end?('合名会社XXX', 2)).to eq false }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_end?('XXX合名会社', 2)).to eq false }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_end?('合資会社XXX', 2)).to eq false }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_end?('XXX合資会社', 2)).to eq false }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_end?('合同会社XXX', 2)).to eq false }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_end?('XXX合同会社', 2)).to eq false }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_end?('医療法人社団XXX', 2)).to eq false }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人社団', 2)).to eq false }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_end?('医療法人財団XXX', 2)).to eq false }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人財団', 2)).to eq false }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_end?('医療法人XXX', 2)).to eq false }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_end?('XXX医療法人', 2)).to eq false }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_end?('社会医療法人XXX', 2)).to eq false }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会医療法人', 2)).to eq false }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_end?('財団法人XXX', 2)).to eq false }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX財団法人', 2)).to eq false }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_end?('一般財団法人XXX', 2)).to eq false }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX一般財団法人', 2)).to eq false }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_end?('公益財団法人XXX', 2)).to eq false }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_end?('XXX公益財団法人', 2)).to eq false }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_end?('社団法人XXX', 2)).to eq false }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX社団法人', 2)).to eq false }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_end?('一般社団法人XXX', 2)).to eq false }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX一般社団法人', 2)).to eq false }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_end?('公益社団法人XXX', 2)).to eq false }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_end?('XXX公益社団法人', 2)).to eq false }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_end?('宗教法人XXX', 2)).to eq false }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_end?('XXX宗教法人', 2)).to eq false }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_end?('学校法人XXX', 2)).to eq false }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_end?('XXX学校法人', 2)).to eq false }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_end?('社会福祉法人XXX', 2)).to eq false }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会福祉法人', 2)).to eq false }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_end?('更生保護法人XXX', 2)).to eq false }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_end?('XXX更生保護法人', 2)).to eq false }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_end?('相互会社XXX', 2)).to eq false }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_end?('XXX相互会社', 2)).to eq false }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_end?('特定非営利活動法人XXX', 2)).to eq false }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_end?('XXX特定非営利活動法人', 2)).to eq false }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_end?('独立行政法人XXX', 2)).to eq false }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_end?('XXX独立行政法人', 2)).to eq false }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_end?('地方独立行政法人XXX', 2)).to eq false }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_end?('XXX地方独立行政法人', 2)).to eq false }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_end?('弁護士法人XXX', 2)).to eq false }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_end?('XXX弁護士法人', 2)).to eq false }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end?('有限責任中間法人XXX', 2)).to eq false }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_end?('XXX有限責任中間法人', 2)).to eq false }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end?('無限責任中間法人XXX', 2)).to eq false }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_end?('XXX無限責任中間法人', 2)).to eq false }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_end?('行政書士法人XXX', 2)).to eq false }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_end?('XXX行政書士法人', 2)).to eq false }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_end?('司法書士法人XXX', 2)).to eq false }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_end?('XXX司法書士法人', 2)).to eq false }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_end?('税理士法人XXX', 2)).to eq false }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_end?('XXX税理士法人', 2)).to eq false }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_end?('国立大学法人XXX', 2)).to eq false }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_end?('XXX国立大学法人', 2)).to eq false }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_end?('公立大学法人XXX', 2)).to eq false }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_end?('XXX公立大学法人', 2)).to eq false }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_end?('農事組合法人XXX', 2)).to eq false }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_end?('XXX農事組合法人', 2)).to eq false }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_end?('管理組合法人XXX', 2)).to eq false }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_end?('XXX管理組合法人', 2)).to eq false }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_end?('社会保険労務士法人XXX', 2)).to eq false }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_end?('XXX社会保険労務士法人', 2)).to eq false }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_end?('営業所XXX', 2)).to eq false }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_end?('XXX営業所', 2)).to eq false }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_end?('出張所XXX', 2)).to eq false }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_end?('XXX出張所', 2)).to eq false }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_end?('㈱XXX', 2)).to eq false }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_end?('XXX㈱', 2)).to eq true }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_end?('㈲XXX', 2)).to eq false }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_end?('XXX㈲', 2)).to eq true }
      end

      context 'カ\)XXX の場合' do
        it { expect(Syamei.with_end?('カ)XXX', 2)).to eq false }
      end

      context 'XXXカ\) の場合' do
        it { expect(Syamei.with_end?('XXXカ)', 2)).to eq false }
      end

      context 'ユ\)XXX の場合' do
        it { expect(Syamei.with_end?('ユ)XXX', 2)).to eq false }
      end

      context 'XXXユ\) の場合' do
        it { expect(Syamei.with_end?('XXXユ)', 2)).to eq false }
      end

      context 'メ\)XXX の場合' do
        it { expect(Syamei.with_end?('メ)XXX', 2)).to eq false }
      end

      context 'XXXメ\) の場合' do
        it { expect(Syamei.with_end?('XXXメ)', 2)).to eq false }
      end

      context 'シ\)XXX の場合' do
        it { expect(Syamei.with_end?('シ)XXX', 2)).to eq false }
      end

      context 'XXXシ\) の場合' do
        it { expect(Syamei.with_end?('XXXシ)', 2)).to eq false }
      end

      context 'ド\)XXX の場合' do
        it { expect(Syamei.with_end?('ド)XXX', 2)).to eq false }
      end

      context 'XXXド\) の場合' do
        it { expect(Syamei.with_end?('XXXド)', 2)).to eq false }
      end

      context 'イ\)XXX の場合' do
        it { expect(Syamei.with_end?('イ)XXX', 2)).to eq false }
      end

      context 'XXXイ\) の場合' do
        it { expect(Syamei.with_end?('XXXイ)', 2)).to eq false }
      end

      context 'ザイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ザイ)XXX', 2)).to eq false }
      end

      context 'XXXザイ\) の場合' do
        it { expect(Syamei.with_end?('XXXザイ)', 2)).to eq false }
      end

      context 'シヤ\)XXX の場合' do
        it { expect(Syamei.with_end?('シヤ)XXX', 2)).to eq false }
      end

      context 'XXXシヤ\) の場合' do
        it { expect(Syamei.with_end?('XXXシヤ)', 2)).to eq false }
      end

      context 'ガク\)XXX の場合' do
        it { expect(Syamei.with_end?('ガク)XXX', 2)).to eq false }
      end

      context 'XXXガク\) の場合' do
        it { expect(Syamei.with_end?('XXXガク)', 2)).to eq false }
      end

      context 'フク\)XXX の場合' do
        it { expect(Syamei.with_end?('フク)XXX', 2)).to eq false }
      end

      context 'XXXフク\) の場合' do
        it { expect(Syamei.with_end?('XXXフク)', 2)).to eq false }
      end

      context 'ホゴ\)XXX の場合' do
        it { expect(Syamei.with_end?('ホゴ)XXX', 2)).to eq false }
      end

      context 'XXXホゴ\) の場合' do
        it { expect(Syamei.with_end?('XXXホゴ)', 2)).to eq false }
      end

      context 'ソ\)XXX の場合' do
        it { expect(Syamei.with_end?('ソ)XXX', 2)).to eq false }
      end

      context 'XXXソ\) の場合' do
        it { expect(Syamei.with_end?('XXXソ)', 2)).to eq false }
      end

      context 'トクヒ\)XXX の場合' do
        it { expect(Syamei.with_end?('トクヒ)XXX', 2)).to eq false }
      end

      context 'XXXトクヒ\) の場合' do
        it { expect(Syamei.with_end?('XXXトクヒ)', 2)).to eq false }
      end

      context 'ドク\)XXX の場合' do
        it { expect(Syamei.with_end?('ドク)XXX', 2)).to eq false }
      end

      context 'XXXドク\) の場合' do
        it { expect(Syamei.with_end?('XXXドク)', 2)).to eq false }
      end

      context 'チドク\)XXX の場合' do
        it { expect(Syamei.with_end?('チドク)XXX', 2)).to eq false }
      end

      context 'XXXチドク\) の場合' do
        it { expect(Syamei.with_end?('XXXチドク)', 2)).to eq false }
      end

      context 'ベン\)XXX の場合' do
        it { expect(Syamei.with_end?('ベン)XXX', 2)).to eq false }
      end

      context 'XXXベン\) の場合' do
        it { expect(Syamei.with_end?('XXXベン)', 2)).to eq false }
      end

      context 'チユウ\)XXX の場合' do
        it { expect(Syamei.with_end?('チユウ)XXX', 2)).to eq false }
      end

      context 'XXXチユウ\) の場合' do
        it { expect(Syamei.with_end?('XXXチユウ)', 2)).to eq false }
      end

      context 'ギヨ\)XXX の場合' do
        it { expect(Syamei.with_end?('ギヨ)XXX', 2)).to eq false }
      end

      context 'XXXギヨ\) の場合' do
        it { expect(Syamei.with_end?('XXXギヨ)', 2)).to eq false }
      end

      context 'シホウ\)XXX の場合' do
        it { expect(Syamei.with_end?('シホウ)XXX', 2)).to eq false }
      end

      context 'XXXシホウ\) の場合' do
        it { expect(Syamei.with_end?('XXXシホウ)', 2)).to eq false }
      end

      context 'ゼイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ゼイ)XXX', 2)).to eq false }
      end

      context 'XXXゼイ\) の場合' do
        it { expect(Syamei.with_end?('XXXゼイ)', 2)).to eq false }
      end

      context 'ダイ\)XXX の場合' do
        it { expect(Syamei.with_end?('ダイ)XXX', 2)).to eq false }
      end

      context 'XXXダイ\) の場合' do
        it { expect(Syamei.with_end?('XXXダイ)', 2)).to eq false }
      end

      context 'ノウ\)XXX の場合' do
        it { expect(Syamei.with_end?('ノウ)XXX', 2)).to eq false }
      end

      context 'XXXノウ\) の場合' do
        it { expect(Syamei.with_end?('XXXノウ)', 2)).to eq false }
      end

      context 'カンリ\)XXX の場合' do
        it { expect(Syamei.with_end?('カンリ)XXX', 2)).to eq false }
      end

      context 'XXXカンリ\) の場合' do
        it { expect(Syamei.with_end?('XXXカンリ)', 2)).to eq false }
      end

      context 'ロウム\)XXX の場合' do
        it { expect(Syamei.with_end?('ロウム)XXX', 2)).to eq false }
      end

      context 'XXXロウム\) の場合' do
        it { expect(Syamei.with_end?('XXXロウム)', 2)).to eq false }
      end

      context 'エイ\)XXX の場合' do
        it { expect(Syamei.with_end?('エイ)XXX', 2)).to eq false }
      end

      context 'XXXエイ\) の場合' do
        it { expect(Syamei.with_end?('XXXエイ)', 2)).to eq false }
      end

      context 'シユツ\)XXX の場合' do
        it { expect(Syamei.with_end?('シユツ)XXX', 2)).to eq false }
      end

      context 'XXXシユツ\) の場合' do
        it { expect(Syamei.with_end?('XXXシユツ)', 2)).to eq false }
      end

      context '\(カXXX の場合' do
        it { expect(Syamei.with_end?('(カXXX', 2)).to eq false }
      end

      context 'XXX\(カ の場合' do
        it { expect(Syamei.with_end?('XXX(カ', 2)).to eq false }
      end

      context '\(ユXXX の場合' do
        it { expect(Syamei.with_end?('(ユXXX', 2)).to eq false }
      end

      context 'XXX\(ユ の場合' do
        it { expect(Syamei.with_end?('XXX(ユ', 2)).to eq false }
      end

      context '\(メXXX の場合' do
        it { expect(Syamei.with_end?('(メXXX', 2)).to eq false }
      end

      context 'XXX\(メ の場合' do
        it { expect(Syamei.with_end?('XXX(メ', 2)).to eq false }
      end

      context '\(シXXX の場合' do
        it { expect(Syamei.with_end?('(シXXX', 2)).to eq false }
      end

      context 'XXX\(シ の場合' do
        it { expect(Syamei.with_end?('XXX(シ', 2)).to eq false }
      end

      context '\(ドXXX の場合' do
        it { expect(Syamei.with_end?('(ドXXX', 2)).to eq false }
      end

      context 'XXX\(ド の場合' do
        it { expect(Syamei.with_end?('XXX(ド', 2)).to eq false }
      end

      context '\(イXXX の場合' do
        it { expect(Syamei.with_end?('(イXXX', 2)).to eq false }
      end

      context 'XXX\(イ の場合' do
        it { expect(Syamei.with_end?('XXX(イ', 2)).to eq false }
      end

      context '\(ホゴXXX の場合' do
        it { expect(Syamei.with_end?('(ホゴXXX', 2)).to eq false }
      end

      context 'XXX\(ホゴ の場合' do
        it { expect(Syamei.with_end?('XXX(ホゴ', 2)).to eq false }
      end

      context '\(ソXXX の場合' do
        it { expect(Syamei.with_end?('(ソXXX', 2)).to eq false }
      end

      context 'XXX\(ソ の場合' do
        it { expect(Syamei.with_end?('XXX(ソ', 2)).to eq false }
      end

      context '\(トクヒXXX の場合' do
        it { expect(Syamei.with_end?('(トクヒXXX', 2)).to eq false }
      end

      context 'XXX\(トクヒ の場合' do
        it { expect(Syamei.with_end?('XXX(トクヒ', 2)).to eq false }
      end

      context '\(ドクXXX の場合' do
        it { expect(Syamei.with_end?('(ドクXXX', 2)).to eq false }
      end

      context 'XXX\(ドク の場合' do
        it { expect(Syamei.with_end?('XXX(ドク', 2)).to eq false }
      end

      context '\(チドクXXX の場合' do
        it { expect(Syamei.with_end?('(チドクXXX', 2)).to eq false }
      end

      context 'XXX\(チドク の場合' do
        it { expect(Syamei.with_end?('XXX(チドク', 2)).to eq false }
      end

      context '\(ベンXXX の場合' do
        it { expect(Syamei.with_end?('(ベンXXX', 2)).to eq false }
      end

      context 'XXX\(ベン の場合' do
        it { expect(Syamei.with_end?('XXX(ベン', 2)).to eq false }
      end

      context '\(チユウXXX の場合' do
        it { expect(Syamei.with_end?('(チユウXXX', 2)).to eq false }
      end

      context 'XXX\(チユウ の場合' do
        it { expect(Syamei.with_end?('XXX(チユウ', 2)).to eq false }
      end

      context '\(ギヨXXX の場合' do
        it { expect(Syamei.with_end?('(ギヨXXX', 2)).to eq false }
      end

      context 'XXX\(ギヨ の場合' do
        it { expect(Syamei.with_end?('XXX(ギヨ', 2)).to eq false }
      end

      context '\(シホウXXX の場合' do
        it { expect(Syamei.with_end?('(シホウXXX', 2)).to eq false }
      end

      context 'XXX\(シホウ の場合' do
        it { expect(Syamei.with_end?('XXX(シホウ', 2)).to eq false }
      end

      context '\(ゼイXXX の場合' do
        it { expect(Syamei.with_end?('(ゼイXXX', 2)).to eq false }
      end

      context 'XXX\(ゼイ の場合' do
        it { expect(Syamei.with_end?('XXX(ゼイ', 2)).to eq false }
      end

      context '\(ダイXXX の場合' do
        it { expect(Syamei.with_end?('(ダイXXX', 2)).to eq false }
      end

      context 'XXX\(ダイ の場合' do
        it { expect(Syamei.with_end?('XXX(ダイ', 2)).to eq false }
      end

      context '\(ノウXXX の場合' do
        it { expect(Syamei.with_end?('(ノウXXX', 2)).to eq false }
      end

      context 'XXX\(ノウ の場合' do
        it { expect(Syamei.with_end?('XXX(ノウ', 2)).to eq false }
      end

      context '\(カンリXXX の場合' do
        it { expect(Syamei.with_end?('(カンリXXX', 2)).to eq false }
      end

      context 'XXX\(カンリ の場合' do
        it { expect(Syamei.with_end?('XXX(カンリ', 2)).to eq false }
      end

      context '\(ロウムXXX の場合' do
        it { expect(Syamei.with_end?('(ロウムXXX', 2)).to eq false }
      end

      context 'XXX\(ロウム の場合' do
        it { expect(Syamei.with_end?('XXX(ロウム', 2)).to eq false }
      end

      context '\(エイXXX の場合' do
        it { expect(Syamei.with_end?('(エイXXX', 2)).to eq false }
      end

      context 'XXX\(エイ の場合' do
        it { expect(Syamei.with_end?('XXX(エイ', 2)).to eq false }
      end

      context '\(シユツXXX の場合' do
        it { expect(Syamei.with_end?('(シユツXXX', 2)).to eq false }
      end

      context 'XXX\(シユツ の場合' do
        it { expect(Syamei.with_end?('XXX(シユツ', 2)).to eq false }
      end
    end
  end
  describe '.with_beginning?' do
    context 'name is nil' do
      it { expect(Syamei.with_beginning?(nil, 0)).to eq false }
    end
    context 'name is empty' do
      it { expect(Syamei.with_beginning?('', 0)).to eq false }
    end
    context 'type: 0' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_beginning?('株式会社XXX', 0)).to eq true }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX株式会社', 0)).to eq false }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_beginning?('有限会社XXX', 0)).to eq true }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX有限会社', 0)).to eq false }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合名会社XXX', 0)).to eq true }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合名会社', 0)).to eq false }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合資会社XXX', 0)).to eq true }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合資会社', 0)).to eq false }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合同会社XXX', 0)).to eq true }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合同会社', 0)).to eq false }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人社団XXX', 0)).to eq true }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人社団', 0)).to eq false }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人財団XXX', 0)).to eq true }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人財団', 0)).to eq false }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人XXX', 0)).to eq true }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人', 0)).to eq false }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会医療法人XXX', 0)).to eq true }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会医療法人', 0)).to eq false }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('財団法人XXX', 0)).to eq true }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX財団法人', 0)).to eq false }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('一般財団法人XXX', 0)).to eq true }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX一般財団法人', 0)).to eq false }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公益財団法人XXX', 0)).to eq true }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公益財団法人', 0)).to eq false }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社団法人XXX', 0)).to eq true }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社団法人', 0)).to eq false }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('一般社団法人XXX', 0)).to eq true }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX一般社団法人', 0)).to eq false }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公益社団法人XXX', 0)).to eq true }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公益社団法人', 0)).to eq false }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_beginning?('宗教法人XXX', 0)).to eq true }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX宗教法人', 0)).to eq false }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_beginning?('学校法人XXX', 0)).to eq true }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX学校法人', 0)).to eq false }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会福祉法人XXX', 0)).to eq true }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会福祉法人', 0)).to eq false }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_beginning?('更生保護法人XXX', 0)).to eq true }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX更生保護法人', 0)).to eq false }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_beginning?('相互会社XXX', 0)).to eq true }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX相互会社', 0)).to eq false }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_beginning?('特定非営利活動法人XXX', 0)).to eq true }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX特定非営利活動法人', 0)).to eq false }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning?('独立行政法人XXX', 0)).to eq true }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX独立行政法人', 0)).to eq false }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning?('地方独立行政法人XXX', 0)).to eq true }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX地方独立行政法人', 0)).to eq false }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('弁護士法人XXX', 0)).to eq true }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX弁護士法人', 0)).to eq false }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning?('有限責任中間法人XXX', 0)).to eq true }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX有限責任中間法人', 0)).to eq false }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning?('無限責任中間法人XXX', 0)).to eq true }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX無限責任中間法人', 0)).to eq false }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('行政書士法人XXX', 0)).to eq true }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX行政書士法人', 0)).to eq false }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('司法書士法人XXX', 0)).to eq true }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX司法書士法人', 0)).to eq false }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('税理士法人XXX', 0)).to eq true }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX税理士法人', 0)).to eq false }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning?('国立大学法人XXX', 0)).to eq true }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX国立大学法人', 0)).to eq false }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公立大学法人XXX', 0)).to eq true }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公立大学法人', 0)).to eq false }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_beginning?('農事組合法人XXX', 0)).to eq true }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX農事組合法人', 0)).to eq false }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_beginning?('管理組合法人XXX', 0)).to eq true }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX管理組合法人', 0)).to eq false }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会保険労務士法人XXX', 0)).to eq true }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会保険労務士法人', 0)).to eq false }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_beginning?('営業所XXX', 0)).to eq true }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_beginning?('XXX営業所', 0)).to eq false }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_beginning?('出張所XXX', 0)).to eq true }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_beginning?('XXX出張所', 0)).to eq false }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_beginning?('㈱XXX', 0)).to eq true }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_beginning?('XXX㈱', 0)).to eq false }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_beginning?('㈲XXX', 0)).to eq true }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_beginning?('XXX㈲', 0)).to eq false }
      end

      context 'カ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('カ)XXX', 0)).to eq true }
      end

      context 'XXXカ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXカ)', 0)).to eq false }
      end

      context 'ユ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ユ)XXX', 0)).to eq true }
      end

      context 'XXXユ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXユ)', 0)).to eq false }
      end

      context 'メ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('メ)XXX', 0)).to eq true }
      end

      context 'XXXメ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXメ)', 0)).to eq false }
      end

      context 'シ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シ)XXX', 0)).to eq true }
      end

      context 'XXXシ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシ)', 0)).to eq false }
      end

      context 'ド\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ド)XXX', 0)).to eq true }
      end

      context 'XXXド\) の場合' do
        it { expect(Syamei.with_beginning?('XXXド)', 0)).to eq false }
      end

      context 'イ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('イ)XXX', 0)).to eq true }
      end

      context 'XXXイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXイ)', 0)).to eq false }
      end

      context 'ザイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ザイ)XXX', 0)).to eq true }
      end

      context 'XXXザイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXザイ)', 0)).to eq false }
      end

      context 'シヤ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シヤ)XXX', 0)).to eq true }
      end

      context 'XXXシヤ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシヤ)', 0)).to eq false }
      end

      context 'ガク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ガク)XXX', 0)).to eq true }
      end

      context 'XXXガク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXガク)', 0)).to eq false }
      end

      context 'フク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('フク)XXX', 0)).to eq true }
      end

      context 'XXXフク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXフク)', 0)).to eq false }
      end

      context 'ホゴ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ホゴ)XXX', 0)).to eq true }
      end

      context 'XXXホゴ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXホゴ)', 0)).to eq false }
      end

      context 'ソ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ソ)XXX', 0)).to eq true }
      end

      context 'XXXソ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXソ)', 0)).to eq false }
      end

      context 'トクヒ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('トクヒ)XXX', 0)).to eq true }
      end

      context 'XXXトクヒ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXトクヒ)', 0)).to eq false }
      end

      context 'ドク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ドク)XXX', 0)).to eq true }
      end

      context 'XXXドク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXドク)', 0)).to eq false }
      end

      context 'チドク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('チドク)XXX', 0)).to eq true }
      end

      context 'XXXチドク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXチドク)', 0)).to eq false }
      end

      context 'ベン\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ベン)XXX', 0)).to eq true }
      end

      context 'XXXベン\) の場合' do
        it { expect(Syamei.with_beginning?('XXXベン)', 0)).to eq false }
      end

      context 'チユウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('チユウ)XXX', 0)).to eq true }
      end

      context 'XXXチユウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXチユウ)', 0)).to eq false }
      end

      context 'ギヨ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ギヨ)XXX', 0)).to eq true }
      end

      context 'XXXギヨ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXギヨ)', 0)).to eq false }
      end

      context 'シホウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シホウ)XXX', 0)).to eq true }
      end

      context 'XXXシホウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシホウ)', 0)).to eq false }
      end

      context 'ゼイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ゼイ)XXX', 0)).to eq true }
      end

      context 'XXXゼイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXゼイ)', 0)).to eq false }
      end

      context 'ダイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ダイ)XXX', 0)).to eq true }
      end

      context 'XXXダイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXダイ)', 0)).to eq false }
      end

      context 'ノウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ノウ)XXX', 0)).to eq true }
      end

      context 'XXXノウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXノウ)', 0)).to eq false }
      end

      context 'カンリ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('カンリ)XXX', 0)).to eq true }
      end

      context 'XXXカンリ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXカンリ)', 0)).to eq false }
      end

      context 'ロウム\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ロウム)XXX', 0)).to eq true }
      end

      context 'XXXロウム\) の場合' do
        it { expect(Syamei.with_beginning?('XXXロウム)', 0)).to eq false }
      end

      context 'エイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('エイ)XXX', 0)).to eq true }
      end

      context 'XXXエイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXエイ)', 0)).to eq false }
      end

      context 'シユツ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シユツ)XXX', 0)).to eq true }
      end

      context 'XXXシユツ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシユツ)', 0)).to eq false }
      end

      context '\(カXXX の場合' do
        it { expect(Syamei.with_beginning?('(カXXX', 0)).to eq false }
      end

      context 'XXX\(カ の場合' do
        it { expect(Syamei.with_beginning?('XXX(カ', 0)).to eq false }
      end

      context '\(ユXXX の場合' do
        it { expect(Syamei.with_beginning?('(ユXXX', 0)).to eq false }
      end

      context 'XXX\(ユ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ユ', 0)).to eq false }
      end

      context '\(メXXX の場合' do
        it { expect(Syamei.with_beginning?('(メXXX', 0)).to eq false }
      end

      context 'XXX\(メ の場合' do
        it { expect(Syamei.with_beginning?('XXX(メ', 0)).to eq false }
      end

      context '\(シXXX の場合' do
        it { expect(Syamei.with_beginning?('(シXXX', 0)).to eq false }
      end

      context 'XXX\(シ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シ', 0)).to eq false }
      end

      context '\(ドXXX の場合' do
        it { expect(Syamei.with_beginning?('(ドXXX', 0)).to eq false }
      end

      context 'XXX\(ド の場合' do
        it { expect(Syamei.with_beginning?('XXX(ド', 0)).to eq false }
      end

      context '\(イXXX の場合' do
        it { expect(Syamei.with_beginning?('(イXXX', 0)).to eq false }
      end

      context 'XXX\(イ の場合' do
        it { expect(Syamei.with_beginning?('XXX(イ', 0)).to eq false }
      end

      context '\(ホゴXXX の場合' do
        it { expect(Syamei.with_beginning?('(ホゴXXX', 0)).to eq false }
      end

      context 'XXX\(ホゴ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ', 0)).to eq false }
      end

      context '\(ソXXX の場合' do
        it { expect(Syamei.with_beginning?('(ソXXX', 0)).to eq false }
      end

      context 'XXX\(ソ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ソ', 0)).to eq false }
      end

      context '\(トクヒXXX の場合' do
        it { expect(Syamei.with_beginning?('(トクヒXXX', 0)).to eq false }
      end

      context 'XXX\(トクヒ の場合' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ', 0)).to eq false }
      end

      context '\(ドクXXX の場合' do
        it { expect(Syamei.with_beginning?('(ドクXXX', 0)).to eq false }
      end

      context 'XXX\(ドク の場合' do
        it { expect(Syamei.with_beginning?('XXX(ドク', 0)).to eq false }
      end

      context '\(チドクXXX の場合' do
        it { expect(Syamei.with_beginning?('(チドクXXX', 0)).to eq false }
      end

      context 'XXX\(チドク の場合' do
        it { expect(Syamei.with_beginning?('XXX(チドク', 0)).to eq false }
      end

      context '\(ベンXXX の場合' do
        it { expect(Syamei.with_beginning?('(ベンXXX', 0)).to eq false }
      end

      context 'XXX\(ベン の場合' do
        it { expect(Syamei.with_beginning?('XXX(ベン', 0)).to eq false }
      end

      context '\(チユウXXX の場合' do
        it { expect(Syamei.with_beginning?('(チユウXXX', 0)).to eq false }
      end

      context 'XXX\(チユウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(チユウ', 0)).to eq false }
      end

      context '\(ギヨXXX の場合' do
        it { expect(Syamei.with_beginning?('(ギヨXXX', 0)).to eq false }
      end

      context 'XXX\(ギヨ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ', 0)).to eq false }
      end

      context '\(シホウXXX の場合' do
        it { expect(Syamei.with_beginning?('(シホウXXX', 0)).to eq false }
      end

      context 'XXX\(シホウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シホウ', 0)).to eq false }
      end

      context '\(ゼイXXX の場合' do
        it { expect(Syamei.with_beginning?('(ゼイXXX', 0)).to eq false }
      end

      context 'XXX\(ゼイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ', 0)).to eq false }
      end

      context '\(ダイXXX の場合' do
        it { expect(Syamei.with_beginning?('(ダイXXX', 0)).to eq false }
      end

      context 'XXX\(ダイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ダイ', 0)).to eq false }
      end

      context '\(ノウXXX の場合' do
        it { expect(Syamei.with_beginning?('(ノウXXX', 0)).to eq false }
      end

      context 'XXX\(ノウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ノウ', 0)).to eq false }
      end

      context '\(カンリXXX の場合' do
        it { expect(Syamei.with_beginning?('(カンリXXX', 0)).to eq false }
      end

      context 'XXX\(カンリ の場合' do
        it { expect(Syamei.with_beginning?('XXX(カンリ', 0)).to eq false }
      end

      context '\(ロウムXXX の場合' do
        it { expect(Syamei.with_beginning?('(ロウムXXX', 0)).to eq false }
      end

      context 'XXX\(ロウム の場合' do
        it { expect(Syamei.with_beginning?('XXX(ロウム', 0)).to eq false }
      end

      context '\(エイXXX の場合' do
        it { expect(Syamei.with_beginning?('(エイXXX', 0)).to eq false }
      end

      context 'XXX\(エイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(エイ', 0)).to eq false }
      end

      context '\(シユツXXX の場合' do
        it { expect(Syamei.with_beginning?('(シユツXXX', 0)).to eq false }
      end

      context 'XXX\(シユツ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シユツ', 0)).to eq false }
      end
    end

    context 'type: 1' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_beginning?('株式会社XXX', 1)).to eq true }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX株式会社', 1)).to eq false }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_beginning?('有限会社XXX', 1)).to eq true }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX有限会社', 1)).to eq false }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合名会社XXX', 1)).to eq true }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合名会社', 1)).to eq false }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合資会社XXX', 1)).to eq true }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合資会社', 1)).to eq false }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合同会社XXX', 1)).to eq true }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合同会社', 1)).to eq false }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人社団XXX', 1)).to eq true }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人社団', 1)).to eq false }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人財団XXX', 1)).to eq true }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人財団', 1)).to eq false }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人XXX', 1)).to eq true }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人', 1)).to eq false }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会医療法人XXX', 1)).to eq true }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会医療法人', 1)).to eq false }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('財団法人XXX', 1)).to eq true }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX財団法人', 1)).to eq false }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('一般財団法人XXX', 1)).to eq true }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX一般財団法人', 1)).to eq false }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公益財団法人XXX', 1)).to eq true }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公益財団法人', 1)).to eq false }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社団法人XXX', 1)).to eq true }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社団法人', 1)).to eq false }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('一般社団法人XXX', 1)).to eq true }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX一般社団法人', 1)).to eq false }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公益社団法人XXX', 1)).to eq true }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公益社団法人', 1)).to eq false }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_beginning?('宗教法人XXX', 1)).to eq true }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX宗教法人', 1)).to eq false }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_beginning?('学校法人XXX', 1)).to eq true }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX学校法人', 1)).to eq false }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会福祉法人XXX', 1)).to eq true }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会福祉法人', 1)).to eq false }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_beginning?('更生保護法人XXX', 1)).to eq true }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX更生保護法人', 1)).to eq false }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_beginning?('相互会社XXX', 1)).to eq true }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX相互会社', 1)).to eq false }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_beginning?('特定非営利活動法人XXX', 1)).to eq true }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX特定非営利活動法人', 1)).to eq false }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning?('独立行政法人XXX', 1)).to eq true }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX独立行政法人', 1)).to eq false }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning?('地方独立行政法人XXX', 1)).to eq true }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX地方独立行政法人', 1)).to eq false }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('弁護士法人XXX', 1)).to eq true }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX弁護士法人', 1)).to eq false }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning?('有限責任中間法人XXX', 1)).to eq true }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX有限責任中間法人', 1)).to eq false }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning?('無限責任中間法人XXX', 1)).to eq true }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX無限責任中間法人', 1)).to eq false }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('行政書士法人XXX', 1)).to eq true }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX行政書士法人', 1)).to eq false }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('司法書士法人XXX', 1)).to eq true }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX司法書士法人', 1)).to eq false }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('税理士法人XXX', 1)).to eq true }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX税理士法人', 1)).to eq false }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning?('国立大学法人XXX', 1)).to eq true }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX国立大学法人', 1)).to eq false }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公立大学法人XXX', 1)).to eq true }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公立大学法人', 1)).to eq false }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_beginning?('農事組合法人XXX', 1)).to eq true }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX農事組合法人', 1)).to eq false }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_beginning?('管理組合法人XXX', 1)).to eq true }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX管理組合法人', 1)).to eq false }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会保険労務士法人XXX', 1)).to eq true }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会保険労務士法人', 1)).to eq false }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_beginning?('営業所XXX', 1)).to eq true }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_beginning?('XXX営業所', 1)).to eq false }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_beginning?('出張所XXX', 1)).to eq true }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_beginning?('XXX出張所', 1)).to eq false }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_beginning?('㈱XXX', 1)).to eq false }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_beginning?('XXX㈱', 1)).to eq false }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_beginning?('㈲XXX', 1)).to eq false }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_beginning?('XXX㈲', 1)).to eq false }
      end

      context 'カ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('カ)XXX', 1)).to eq false }
      end

      context 'XXXカ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXカ)', 1)).to eq false }
      end

      context 'ユ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ユ)XXX', 1)).to eq false }
      end

      context 'XXXユ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXユ)', 1)).to eq false }
      end

      context 'メ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('メ)XXX', 1)).to eq false }
      end

      context 'XXXメ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXメ)', 1)).to eq false }
      end

      context 'シ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シ)XXX', 1)).to eq false }
      end

      context 'XXXシ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシ)', 1)).to eq false }
      end

      context 'ド\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ド)XXX', 1)).to eq false }
      end

      context 'XXXド\) の場合' do
        it { expect(Syamei.with_beginning?('XXXド)', 1)).to eq false }
      end

      context 'イ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('イ)XXX', 1)).to eq false }
      end

      context 'XXXイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXイ)', 1)).to eq false }
      end

      context 'ザイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ザイ)XXX', 1)).to eq false }
      end

      context 'XXXザイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXザイ)', 1)).to eq false }
      end

      context 'シヤ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シヤ)XXX', 1)).to eq false }
      end

      context 'XXXシヤ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシヤ)', 1)).to eq false }
      end

      context 'ガク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ガク)XXX', 1)).to eq false }
      end

      context 'XXXガク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXガク)', 1)).to eq false }
      end

      context 'フク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('フク)XXX', 1)).to eq false }
      end

      context 'XXXフク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXフク)', 1)).to eq false }
      end

      context 'ホゴ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ホゴ)XXX', 1)).to eq false }
      end

      context 'XXXホゴ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXホゴ)', 1)).to eq false }
      end

      context 'ソ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ソ)XXX', 1)).to eq false }
      end

      context 'XXXソ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXソ)', 1)).to eq false }
      end

      context 'トクヒ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('トクヒ)XXX', 1)).to eq false }
      end

      context 'XXXトクヒ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXトクヒ)', 1)).to eq false }
      end

      context 'ドク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ドク)XXX', 1)).to eq false }
      end

      context 'XXXドク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXドク)', 1)).to eq false }
      end

      context 'チドク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('チドク)XXX', 1)).to eq false }
      end

      context 'XXXチドク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXチドク)', 1)).to eq false }
      end

      context 'ベン\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ベン)XXX', 1)).to eq false }
      end

      context 'XXXベン\) の場合' do
        it { expect(Syamei.with_beginning?('XXXベン)', 1)).to eq false }
      end

      context 'チユウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('チユウ)XXX', 1)).to eq false }
      end

      context 'XXXチユウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXチユウ)', 1)).to eq false }
      end

      context 'ギヨ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ギヨ)XXX', 1)).to eq false }
      end

      context 'XXXギヨ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXギヨ)', 1)).to eq false }
      end

      context 'シホウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シホウ)XXX', 1)).to eq false }
      end

      context 'XXXシホウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシホウ)', 1)).to eq false }
      end

      context 'ゼイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ゼイ)XXX', 1)).to eq false }
      end

      context 'XXXゼイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXゼイ)', 1)).to eq false }
      end

      context 'ダイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ダイ)XXX', 1)).to eq false }
      end

      context 'XXXダイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXダイ)', 1)).to eq false }
      end

      context 'ノウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ノウ)XXX', 1)).to eq false }
      end

      context 'XXXノウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXノウ)', 1)).to eq false }
      end

      context 'カンリ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('カンリ)XXX', 1)).to eq false }
      end

      context 'XXXカンリ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXカンリ)', 1)).to eq false }
      end

      context 'ロウム\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ロウム)XXX', 1)).to eq false }
      end

      context 'XXXロウム\) の場合' do
        it { expect(Syamei.with_beginning?('XXXロウム)', 1)).to eq false }
      end

      context 'エイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('エイ)XXX', 1)).to eq false }
      end

      context 'XXXエイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXエイ)', 1)).to eq false }
      end

      context 'シユツ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シユツ)XXX', 1)).to eq false }
      end

      context 'XXXシユツ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシユツ)', 1)).to eq false }
      end

      context '\(カXXX の場合' do
        it { expect(Syamei.with_beginning?('(カXXX', 1)).to eq false }
      end

      context 'XXX\(カ の場合' do
        it { expect(Syamei.with_beginning?('XXX(カ', 1)).to eq false }
      end

      context '\(ユXXX の場合' do
        it { expect(Syamei.with_beginning?('(ユXXX', 1)).to eq false }
      end

      context 'XXX\(ユ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ユ', 1)).to eq false }
      end

      context '\(メXXX の場合' do
        it { expect(Syamei.with_beginning?('(メXXX', 1)).to eq false }
      end

      context 'XXX\(メ の場合' do
        it { expect(Syamei.with_beginning?('XXX(メ', 1)).to eq false }
      end

      context '\(シXXX の場合' do
        it { expect(Syamei.with_beginning?('(シXXX', 1)).to eq false }
      end

      context 'XXX\(シ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シ', 1)).to eq false }
      end

      context '\(ドXXX の場合' do
        it { expect(Syamei.with_beginning?('(ドXXX', 1)).to eq false }
      end

      context 'XXX\(ド の場合' do
        it { expect(Syamei.with_beginning?('XXX(ド', 1)).to eq false }
      end

      context '\(イXXX の場合' do
        it { expect(Syamei.with_beginning?('(イXXX', 1)).to eq false }
      end

      context 'XXX\(イ の場合' do
        it { expect(Syamei.with_beginning?('XXX(イ', 1)).to eq false }
      end

      context '\(ホゴXXX の場合' do
        it { expect(Syamei.with_beginning?('(ホゴXXX', 1)).to eq false }
      end

      context 'XXX\(ホゴ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ', 1)).to eq false }
      end

      context '\(ソXXX の場合' do
        it { expect(Syamei.with_beginning?('(ソXXX', 1)).to eq false }
      end

      context 'XXX\(ソ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ソ', 1)).to eq false }
      end

      context '\(トクヒXXX の場合' do
        it { expect(Syamei.with_beginning?('(トクヒXXX', 1)).to eq false }
      end

      context 'XXX\(トクヒ の場合' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ', 1)).to eq false }
      end

      context '\(ドクXXX の場合' do
        it { expect(Syamei.with_beginning?('(ドクXXX', 1)).to eq false }
      end

      context 'XXX\(ドク の場合' do
        it { expect(Syamei.with_beginning?('XXX(ドク', 1)).to eq false }
      end

      context '\(チドクXXX の場合' do
        it { expect(Syamei.with_beginning?('(チドクXXX', 1)).to eq false }
      end

      context 'XXX\(チドク の場合' do
        it { expect(Syamei.with_beginning?('XXX(チドク', 1)).to eq false }
      end

      context '\(ベンXXX の場合' do
        it { expect(Syamei.with_beginning?('(ベンXXX', 1)).to eq false }
      end

      context 'XXX\(ベン の場合' do
        it { expect(Syamei.with_beginning?('XXX(ベン', 1)).to eq false }
      end

      context '\(チユウXXX の場合' do
        it { expect(Syamei.with_beginning?('(チユウXXX', 1)).to eq false }
      end

      context 'XXX\(チユウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(チユウ', 1)).to eq false }
      end

      context '\(ギヨXXX の場合' do
        it { expect(Syamei.with_beginning?('(ギヨXXX', 1)).to eq false }
      end

      context 'XXX\(ギヨ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ', 1)).to eq false }
      end

      context '\(シホウXXX の場合' do
        it { expect(Syamei.with_beginning?('(シホウXXX', 1)).to eq false }
      end

      context 'XXX\(シホウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シホウ', 1)).to eq false }
      end

      context '\(ゼイXXX の場合' do
        it { expect(Syamei.with_beginning?('(ゼイXXX', 1)).to eq false }
      end

      context 'XXX\(ゼイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ', 1)).to eq false }
      end

      context '\(ダイXXX の場合' do
        it { expect(Syamei.with_beginning?('(ダイXXX', 1)).to eq false }
      end

      context 'XXX\(ダイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ダイ', 1)).to eq false }
      end

      context '\(ノウXXX の場合' do
        it { expect(Syamei.with_beginning?('(ノウXXX', 1)).to eq false }
      end

      context 'XXX\(ノウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ノウ', 1)).to eq false }
      end

      context '\(カンリXXX の場合' do
        it { expect(Syamei.with_beginning?('(カンリXXX', 1)).to eq false }
      end

      context 'XXX\(カンリ の場合' do
        it { expect(Syamei.with_beginning?('XXX(カンリ', 1)).to eq false }
      end

      context '\(ロウムXXX の場合' do
        it { expect(Syamei.with_beginning?('(ロウムXXX', 1)).to eq false }
      end

      context 'XXX\(ロウム の場合' do
        it { expect(Syamei.with_beginning?('XXX(ロウム', 1)).to eq false }
      end

      context '\(エイXXX の場合' do
        it { expect(Syamei.with_beginning?('(エイXXX', 1)).to eq false }
      end

      context 'XXX\(エイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(エイ', 1)).to eq false }
      end

      context '\(シユツXXX の場合' do
        it { expect(Syamei.with_beginning?('(シユツXXX', 1)).to eq false }
      end

      context 'XXX\(シユツ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シユツ', 1)).to eq false }
      end
    end
    context 'type: 2' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_beginning?('株式会社XXX', 2)).to eq false }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX株式会社', 2)).to eq false }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_beginning?('有限会社XXX', 2)).to eq false }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX有限会社', 2)).to eq false }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合名会社XXX', 2)).to eq false }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合名会社', 2)).to eq false }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合資会社XXX', 2)).to eq false }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合資会社', 2)).to eq false }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_beginning?('合同会社XXX', 2)).to eq false }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX合同会社', 2)).to eq false }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人社団XXX', 2)).to eq false }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人社団', 2)).to eq false }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人財団XXX', 2)).to eq false }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人財団', 2)).to eq false }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_beginning?('医療法人XXX', 2)).to eq false }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX医療法人', 2)).to eq false }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会医療法人XXX', 2)).to eq false }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会医療法人', 2)).to eq false }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('財団法人XXX', 2)).to eq false }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX財団法人', 2)).to eq false }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('一般財団法人XXX', 2)).to eq false }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX一般財団法人', 2)).to eq false }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公益財団法人XXX', 2)).to eq false }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公益財団法人', 2)).to eq false }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社団法人XXX', 2)).to eq false }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社団法人', 2)).to eq false }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('一般社団法人XXX', 2)).to eq false }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX一般社団法人', 2)).to eq false }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公益社団法人XXX', 2)).to eq false }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公益社団法人', 2)).to eq false }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_beginning?('宗教法人XXX', 2)).to eq false }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX宗教法人', 2)).to eq false }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_beginning?('学校法人XXX', 2)).to eq false }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX学校法人', 2)).to eq false }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会福祉法人XXX', 2)).to eq false }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会福祉法人', 2)).to eq false }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_beginning?('更生保護法人XXX', 2)).to eq false }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX更生保護法人', 2)).to eq false }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_beginning?('相互会社XXX', 2)).to eq false }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_beginning?('XXX相互会社', 2)).to eq false }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_beginning?('特定非営利活動法人XXX', 2)).to eq false }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX特定非営利活動法人', 2)).to eq false }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning?('独立行政法人XXX', 2)).to eq false }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX独立行政法人', 2)).to eq false }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning?('地方独立行政法人XXX', 2)).to eq false }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX地方独立行政法人', 2)).to eq false }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('弁護士法人XXX', 2)).to eq false }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX弁護士法人', 2)).to eq false }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning?('有限責任中間法人XXX', 2)).to eq false }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX有限責任中間法人', 2)).to eq false }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning?('無限責任中間法人XXX', 2)).to eq false }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX無限責任中間法人', 2)).to eq false }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('行政書士法人XXX', 2)).to eq false }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX行政書士法人', 2)).to eq false }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('司法書士法人XXX', 2)).to eq false }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX司法書士法人', 2)).to eq false }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('税理士法人XXX', 2)).to eq false }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX税理士法人', 2)).to eq false }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning?('国立大学法人XXX', 2)).to eq false }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX国立大学法人', 2)).to eq false }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning?('公立大学法人XXX', 2)).to eq false }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX公立大学法人', 2)).to eq false }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_beginning?('農事組合法人XXX', 2)).to eq false }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX農事組合法人', 2)).to eq false }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_beginning?('管理組合法人XXX', 2)).to eq false }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX管理組合法人', 2)).to eq false }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_beginning?('社会保険労務士法人XXX', 2)).to eq false }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_beginning?('XXX社会保険労務士法人', 2)).to eq false }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_beginning?('営業所XXX', 2)).to eq false }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_beginning?('XXX営業所', 2)).to eq false }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_beginning?('出張所XXX', 2)).to eq false }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_beginning?('XXX出張所', 2)).to eq false }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_beginning?('㈱XXX', 2)).to eq true }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_beginning?('XXX㈱', 2)).to eq false }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_beginning?('㈲XXX', 2)).to eq true }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_beginning?('XXX㈲', 2)).to eq false }
      end

      context 'カ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('カ)XXX', 2)).to eq false }
      end

      context 'XXXカ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXカ)', 2)).to eq false }
      end

      context 'ユ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ユ)XXX', 2)).to eq false }
      end

      context 'XXXユ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXユ)', 2)).to eq false }
      end

      context 'メ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('メ)XXX', 2)).to eq false }
      end

      context 'XXXメ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXメ)', 2)).to eq false }
      end

      context 'シ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シ)XXX', 2)).to eq false }
      end

      context 'XXXシ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシ)', 2)).to eq false }
      end

      context 'ド\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ド)XXX', 2)).to eq false }
      end

      context 'XXXド\) の場合' do
        it { expect(Syamei.with_beginning?('XXXド)', 2)).to eq false }
      end

      context 'イ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('イ)XXX', 2)).to eq false }
      end

      context 'XXXイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXイ)', 2)).to eq false }
      end

      context 'ザイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ザイ)XXX', 2)).to eq false }
      end

      context 'XXXザイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXザイ)', 2)).to eq false }
      end

      context 'シヤ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シヤ)XXX', 2)).to eq false }
      end

      context 'XXXシヤ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシヤ)', 2)).to eq false }
      end

      context 'ガク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ガク)XXX', 2)).to eq false }
      end

      context 'XXXガク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXガク)', 2)).to eq false }
      end

      context 'フク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('フク)XXX', 2)).to eq false }
      end

      context 'XXXフク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXフク)', 2)).to eq false }
      end

      context 'ホゴ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ホゴ)XXX', 2)).to eq false }
      end

      context 'XXXホゴ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXホゴ)', 2)).to eq false }
      end

      context 'ソ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ソ)XXX', 2)).to eq false }
      end

      context 'XXXソ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXソ)', 2)).to eq false }
      end

      context 'トクヒ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('トクヒ)XXX', 2)).to eq false }
      end

      context 'XXXトクヒ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXトクヒ)', 2)).to eq false }
      end

      context 'ドク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ドク)XXX', 2)).to eq false }
      end

      context 'XXXドク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXドク)', 2)).to eq false }
      end

      context 'チドク\)XXX の場合' do
        it { expect(Syamei.with_beginning?('チドク)XXX', 2)).to eq false }
      end

      context 'XXXチドク\) の場合' do
        it { expect(Syamei.with_beginning?('XXXチドク)', 2)).to eq false }
      end

      context 'ベン\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ベン)XXX', 2)).to eq false }
      end

      context 'XXXベン\) の場合' do
        it { expect(Syamei.with_beginning?('XXXベン)', 2)).to eq false }
      end

      context 'チユウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('チユウ)XXX', 2)).to eq false }
      end

      context 'XXXチユウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXチユウ)', 2)).to eq false }
      end

      context 'ギヨ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ギヨ)XXX', 2)).to eq false }
      end

      context 'XXXギヨ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXギヨ)', 2)).to eq false }
      end

      context 'シホウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シホウ)XXX', 2)).to eq false }
      end

      context 'XXXシホウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシホウ)', 2)).to eq false }
      end

      context 'ゼイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ゼイ)XXX', 2)).to eq false }
      end

      context 'XXXゼイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXゼイ)', 2)).to eq false }
      end

      context 'ダイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ダイ)XXX', 2)).to eq false }
      end

      context 'XXXダイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXダイ)', 2)).to eq false }
      end

      context 'ノウ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ノウ)XXX', 2)).to eq false }
      end

      context 'XXXノウ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXノウ)', 2)).to eq false }
      end

      context 'カンリ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('カンリ)XXX', 2)).to eq false }
      end

      context 'XXXカンリ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXカンリ)', 2)).to eq false }
      end

      context 'ロウム\)XXX の場合' do
        it { expect(Syamei.with_beginning?('ロウム)XXX', 2)).to eq false }
      end

      context 'XXXロウム\) の場合' do
        it { expect(Syamei.with_beginning?('XXXロウム)', 2)).to eq false }
      end

      context 'エイ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('エイ)XXX', 2)).to eq false }
      end

      context 'XXXエイ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXエイ)', 2)).to eq false }
      end

      context 'シユツ\)XXX の場合' do
        it { expect(Syamei.with_beginning?('シユツ)XXX', 2)).to eq false }
      end

      context 'XXXシユツ\) の場合' do
        it { expect(Syamei.with_beginning?('XXXシユツ)', 2)).to eq false }
      end

      context '\(カXXX の場合' do
        it { expect(Syamei.with_beginning?('(カXXX', 2)).to eq false }
      end

      context 'XXX\(カ の場合' do
        it { expect(Syamei.with_beginning?('XXX(カ', 2)).to eq false }
      end

      context '\(ユXXX の場合' do
        it { expect(Syamei.with_beginning?('(ユXXX', 2)).to eq false }
      end

      context 'XXX\(ユ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ユ', 2)).to eq false }
      end

      context '\(メXXX の場合' do
        it { expect(Syamei.with_beginning?('(メXXX', 2)).to eq false }
      end

      context 'XXX\(メ の場合' do
        it { expect(Syamei.with_beginning?('XXX(メ', 2)).to eq false }
      end

      context '\(シXXX の場合' do
        it { expect(Syamei.with_beginning?('(シXXX', 2)).to eq false }
      end

      context 'XXX\(シ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シ', 2)).to eq false }
      end

      context '\(ドXXX の場合' do
        it { expect(Syamei.with_beginning?('(ドXXX', 2)).to eq false }
      end

      context 'XXX\(ド の場合' do
        it { expect(Syamei.with_beginning?('XXX(ド', 2)).to eq false }
      end

      context '\(イXXX の場合' do
        it { expect(Syamei.with_beginning?('(イXXX', 2)).to eq false }
      end

      context 'XXX\(イ の場合' do
        it { expect(Syamei.with_beginning?('XXX(イ', 2)).to eq false }
      end

      context '\(ホゴXXX の場合' do
        it { expect(Syamei.with_beginning?('(ホゴXXX', 2)).to eq false }
      end

      context 'XXX\(ホゴ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ', 2)).to eq false }
      end

      context '\(ソXXX の場合' do
        it { expect(Syamei.with_beginning?('(ソXXX', 2)).to eq false }
      end

      context 'XXX\(ソ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ソ', 2)).to eq false }
      end

      context '\(トクヒXXX の場合' do
        it { expect(Syamei.with_beginning?('(トクヒXXX', 2)).to eq false }
      end

      context 'XXX\(トクヒ の場合' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ', 2)).to eq false }
      end

      context '\(ドクXXX の場合' do
        it { expect(Syamei.with_beginning?('(ドクXXX', 2)).to eq false }
      end

      context 'XXX\(ドク の場合' do
        it { expect(Syamei.with_beginning?('XXX(ドク', 2)).to eq false }
      end

      context '\(チドクXXX の場合' do
        it { expect(Syamei.with_beginning?('(チドクXXX', 2)).to eq false }
      end

      context 'XXX\(チドク の場合' do
        it { expect(Syamei.with_beginning?('XXX(チドク', 2)).to eq false }
      end

      context '\(ベンXXX の場合' do
        it { expect(Syamei.with_beginning?('(ベンXXX', 2)).to eq false }
      end

      context 'XXX\(ベン の場合' do
        it { expect(Syamei.with_beginning?('XXX(ベン', 2)).to eq false }
      end

      context '\(チユウXXX の場合' do
        it { expect(Syamei.with_beginning?('(チユウXXX', 2)).to eq false }
      end

      context 'XXX\(チユウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(チユウ', 2)).to eq false }
      end

      context '\(ギヨXXX の場合' do
        it { expect(Syamei.with_beginning?('(ギヨXXX', 2)).to eq false }
      end

      context 'XXX\(ギヨ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ', 2)).to eq false }
      end

      context '\(シホウXXX の場合' do
        it { expect(Syamei.with_beginning?('(シホウXXX', 2)).to eq false }
      end

      context 'XXX\(シホウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シホウ', 2)).to eq false }
      end

      context '\(ゼイXXX の場合' do
        it { expect(Syamei.with_beginning?('(ゼイXXX', 2)).to eq false }
      end

      context 'XXX\(ゼイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ', 2)).to eq false }
      end

      context '\(ダイXXX の場合' do
        it { expect(Syamei.with_beginning?('(ダイXXX', 2)).to eq false }
      end

      context 'XXX\(ダイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ダイ', 2)).to eq false }
      end

      context '\(ノウXXX の場合' do
        it { expect(Syamei.with_beginning?('(ノウXXX', 2)).to eq false }
      end

      context 'XXX\(ノウ の場合' do
        it { expect(Syamei.with_beginning?('XXX(ノウ', 2)).to eq false }
      end

      context '\(カンリXXX の場合' do
        it { expect(Syamei.with_beginning?('(カンリXXX', 2)).to eq false }
      end

      context 'XXX\(カンリ の場合' do
        it { expect(Syamei.with_beginning?('XXX(カンリ', 2)).to eq false }
      end

      context '\(ロウムXXX の場合' do
        it { expect(Syamei.with_beginning?('(ロウムXXX', 2)).to eq false }
      end

      context 'XXX\(ロウム の場合' do
        it { expect(Syamei.with_beginning?('XXX(ロウム', 2)).to eq false }
      end

      context '\(エイXXX の場合' do
        it { expect(Syamei.with_beginning?('(エイXXX', 2)).to eq false }
      end

      context 'XXX\(エイ の場合' do
        it { expect(Syamei.with_beginning?('XXX(エイ', 2)).to eq false }
      end

      context '\(シユツXXX の場合' do
        it { expect(Syamei.with_beginning?('(シユツXXX', 2)).to eq false }
      end

      context 'XXX\(シユツ の場合' do
        it { expect(Syamei.with_beginning?('XXX(シユツ', 2)).to eq false }
      end
    end
  end
  describe '.with?' do
    context 'name is nil' do
      it { expect(Syamei.with?(nil, 0)).to eq false }
    end

    context 'name is empty' do
      it { expect(Syamei.with?('', 0)).to eq false }
    end

    context '.with_beginning? is true && with_end? is true' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(true)
        allow(Syamei).to receive(:with_end?).and_return(true)
      end

      it { expect(Syamei.with?('hoge', 0)).to eq true }
    end

    context '.with_beginning? is true && with_end? is false' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(true)
        allow(Syamei).to receive(:with_end?).and_return(false)
      end

      it { expect(Syamei.with?('hoge', 0)).to eq true }
    end

    context '.with_beginning? is false && with_end? is true' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(false)
        allow(Syamei).to receive(:with_end?).and_return(true)
      end

      it { expect(Syamei.with?('hoge', 0)).to eq true }
    end

    context '.with_beginning? is false && with_end? is false' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(false)
        allow(Syamei).to receive(:with_end?).and_return(false)
      end

      it { expect(Syamei.with?('hoge', 0)).to eq false }
    end
  end
  describe '.with_end' do
    context 'type: 0' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_end('株式会社XXX', 0)).to eq 'XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_end('XXX株式会社', 0)).to eq 'XXX株式会社' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_end('有限会社XXX', 0)).to eq 'XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_end('XXX有限会社', 0)).to eq 'XXX有限会社' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_end('合名会社XXX', 0)).to eq 'XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_end('XXX合名会社', 0)).to eq 'XXX合名会社' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_end('合資会社XXX', 0)).to eq 'XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_end('XXX合資会社', 0)).to eq 'XXX合資会社' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_end('合同会社XXX', 0)).to eq 'XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_end('XXX合同会社', 0)).to eq 'XXX合同会社' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_end('医療法人社団XXX', 0)).to eq 'XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人社団', 0)).to eq 'XXX医療法人社団' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_end('医療法人財団XXX', 0)).to eq 'XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人財団', 0)).to eq 'XXX医療法人財団' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_end('医療法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_end('XXX医療法人', 0)).to eq 'XXX医療法人' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_end('社会医療法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_end('XXX社会医療法人', 0)).to eq 'XXX社会医療法人' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_end('財団法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_end('XXX財団法人', 0)).to eq 'XXX財団法人' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_end('一般財団法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般財団法人', 0)).to eq 'XXX一般財団法人' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_end('公益財団法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益財団法人', 0)).to eq 'XXX公益財団法人' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_end('社団法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_end('XXX社団法人', 0)).to eq 'XXX社団法人' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_end('一般社団法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般社団法人', 0)).to eq 'XXX一般社団法人' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_end('公益社団法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益社団法人', 0)).to eq 'XXX公益社団法人' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_end('宗教法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_end('XXX宗教法人', 0)).to eq 'XXX宗教法人' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_end('学校法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_end('XXX学校法人', 0)).to eq 'XXX学校法人' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_end('社会福祉法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_end('XXX社会福祉法人', 0)).to eq 'XXX社会福祉法人' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_end('更生保護法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_end('XXX更生保護法人', 0)).to eq 'XXX更生保護法人' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_end('相互会社XXX', 0)).to eq 'XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_end('XXX相互会社', 0)).to eq 'XXX相互会社' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_end('特定非営利活動法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_end('XXX特定非営利活動法人', 0)).to eq 'XXX特定非営利活動法人' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('独立行政法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX独立行政法人', 0)).to eq 'XXX独立行政法人' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('地方独立行政法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX地方独立行政法人', 0)).to eq 'XXX地方独立行政法人' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_end('弁護士法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_end('XXX弁護士法人', 0)).to eq 'XXX弁護士法人' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('有限責任中間法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX有限責任中間法人', 0)).to eq 'XXX有限責任中間法人' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('無限責任中間法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX無限責任中間法人', 0)).to eq 'XXX無限責任中間法人' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_end('行政書士法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_end('XXX行政書士法人', 0)).to eq 'XXX行政書士法人' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_end('司法書士法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_end('XXX司法書士法人', 0)).to eq 'XXX司法書士法人' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_end('税理士法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_end('XXX税理士法人', 0)).to eq 'XXX税理士法人' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_end('国立大学法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX国立大学法人', 0)).to eq 'XXX国立大学法人' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_end('公立大学法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX公立大学法人', 0)).to eq 'XXX公立大学法人' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_end('農事組合法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_end('XXX農事組合法人', 0)).to eq 'XXX農事組合法人' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_end('管理組合法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_end('XXX管理組合法人', 0)).to eq 'XXX管理組合法人' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_end('社会保険労務士法人XXX', 0)).to eq 'XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_end('XXX社会保険労務士法人', 0)).to eq 'XXX社会保険労務士法人' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_end('営業所XXX', 0)).to eq 'XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_end('XXX営業所', 0)).to eq 'XXX営業所' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_end('出張所XXX', 0)).to eq 'XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_end('XXX出張所', 0)).to eq 'XXX出張所' }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.with_end('カ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.with_end('XXXカ)', 0)).to eq 'XXXカ)' }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.with_end('ユ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.with_end('XXXユ)', 0)).to eq 'XXXユ)' }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.with_end('メ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.with_end('XXXメ)', 0)).to eq 'XXXメ)' }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.with_end('シ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.with_end('XXXシ)', 0)).to eq 'XXXシ)' }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.with_end('ド)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.with_end('XXXド)', 0)).to eq 'XXXド)' }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.with_end('イ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.with_end('XXXイ)', 0)).to eq 'XXXイ)' }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.with_end('ザイ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.with_end('XXXザイ)', 0)).to eq 'XXXザイ)' }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.with_end('シヤ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.with_end('XXXシヤ)', 0)).to eq 'XXXシヤ)' }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.with_end('ガク)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.with_end('XXXガク)', 0)).to eq 'XXXガク)' }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.with_end('フク)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.with_end('XXXフク)', 0)).to eq 'XXXフク)' }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.with_end('ホゴ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.with_end('XXXホゴ)', 0)).to eq 'XXXホゴ)' }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.with_end('ソ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.with_end('XXXソ)', 0)).to eq 'XXXソ)' }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.with_end('トクヒ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.with_end('XXXトクヒ)', 0)).to eq 'XXXトクヒ)' }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.with_end('ドク)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.with_end('XXXドク)', 0)).to eq 'XXXドク)' }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.with_end('チドク)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.with_end('XXXチドク)', 0)).to eq 'XXXチドク)' }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.with_end('ベン)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.with_end('XXXベン)', 0)).to eq 'XXXベン)' }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.with_end('チユウ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.with_end('XXXチユウ)', 0)).to eq 'XXXチユウ)' }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.with_end('ギヨ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.with_end('XXXギヨ)', 0)).to eq 'XXXギヨ)' }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.with_end('シホウ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.with_end('XXXシホウ)', 0)).to eq 'XXXシホウ)' }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.with_end('ゼイ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.with_end('XXXゼイ)', 0)).to eq 'XXXゼイ)' }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.with_end('ダイ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.with_end('XXXダイ)', 0)).to eq 'XXXダイ)' }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.with_end('ノウ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.with_end('XXXノウ)', 0)).to eq 'XXXノウ)' }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.with_end('カンリ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.with_end('XXXカンリ)', 0)).to eq 'XXXカンリ)' }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.with_end('ロウム)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.with_end('XXXロウム)', 0)).to eq 'XXXロウム)' }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.with_end('エイ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.with_end('XXXエイ)', 0)).to eq 'XXXエイ)' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.with_end('シユツ)XXX', 0)).to eq 'XXX' }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.with_end('XXXシユツ)', 0)).to eq 'XXXシユツ)' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.with_end('(カXXX', 0)).to eq '(カXXX' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.with_end('XXX(カ', 0)).to eq 'XXX(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.with_end('(ユXXX', 0)).to eq '(ユXXX' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.with_end('XXX(ユ', 0)).to eq 'XXX(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.with_end('(メXXX', 0)).to eq '(メXXX' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.with_end('XXX(メ', 0)).to eq 'XXX(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.with_end('(シXXX', 0)).to eq '(シXXX' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.with_end('XXX(シ', 0)).to eq 'XXX(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.with_end('(ドXXX', 0)).to eq '(ドXXX' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.with_end('XXX(ド', 0)).to eq 'XXX(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.with_end('(イXXX', 0)).to eq '(イXXX' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.with_end('XXX(イ', 0)).to eq 'XXX(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.with_end('(ホゴXXX', 0)).to eq '(ホゴXXX' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.with_end('XXX(ホゴ', 0)).to eq 'XXX(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.with_end('(ソXXX', 0)).to eq '(ソXXX' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.with_end('XXX(ソ', 0)).to eq 'XXX(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.with_end('(トクヒXXX', 0)).to eq '(トクヒXXX' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.with_end('XXX(トクヒ', 0)).to eq 'XXX(トクヒ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.with_end('(ドクXXX', 0)).to eq '(ドクXXX' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.with_end('XXX(ドク', 0)).to eq 'XXX(ドク' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.with_end('(チドクXXX', 0)).to eq '(チドクXXX' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.with_end('XXX(チドク', 0)).to eq 'XXX(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.with_end('(ベンXXX', 0)).to eq '(ベンXXX' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.with_end('XXX(ベン', 0)).to eq 'XXX(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.with_end('(チユウXXX', 0)).to eq '(チユウXXX' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.with_end('XXX(チユウ', 0)).to eq 'XXX(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.with_end('(ギヨXXX', 0)).to eq '(ギヨXXX' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.with_end('XXX(ギヨ', 0)).to eq 'XXX(ギヨ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.with_end('(シホウXXX', 0)).to eq '(シホウXXX' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.with_end('XXX(シホウ', 0)).to eq 'XXX(シホウ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.with_end('(ゼイXXX', 0)).to eq '(ゼイXXX' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.with_end('XXX(ゼイ', 0)).to eq 'XXX(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.with_end('(ダイXXX', 0)).to eq '(ダイXXX' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.with_end('XXX(ダイ', 0)).to eq 'XXX(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.with_end('(ノウXXX', 0)).to eq '(ノウXXX' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.with_end('XXX(ノウ', 0)).to eq 'XXX(ノウ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.with_end('(カンリXXX', 0)).to eq '(カンリXXX' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.with_end('XXX(カンリ', 0)).to eq 'XXX(カンリ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.with_end('(ロウムXXX', 0)).to eq '(ロウムXXX' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.with_end('XXX(ロウム', 0)).to eq 'XXX(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.with_end('(エイXXX', 0)).to eq '(エイXXX' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.with_end('XXX(エイ', 0)).to eq 'XXX(エイ' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.with_end('(シユツXXX', 0)).to eq '(シユツXXX' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.with_end('XXX(シユツ', 0)).to eq 'XXX(シユツ' }
      end
    end
    context 'type: 1' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_end('株式会社XXX', 1)).to eq 'XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_end('XXX株式会社', 1)).to eq 'XXX株式会社' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_end('有限会社XXX', 1)).to eq 'XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_end('XXX有限会社', 1)).to eq 'XXX有限会社' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_end('合名会社XXX', 1)).to eq 'XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_end('XXX合名会社', 1)).to eq 'XXX合名会社' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_end('合資会社XXX', 1)).to eq 'XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_end('XXX合資会社', 1)).to eq 'XXX合資会社' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_end('合同会社XXX', 1)).to eq 'XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_end('XXX合同会社', 1)).to eq 'XXX合同会社' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_end('医療法人社団XXX', 1)).to eq 'XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人社団', 1)).to eq 'XXX医療法人社団' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_end('医療法人財団XXX', 1)).to eq 'XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人財団', 1)).to eq 'XXX医療法人財団' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_end('医療法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_end('XXX医療法人', 1)).to eq 'XXX医療法人' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_end('社会医療法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_end('XXX社会医療法人', 1)).to eq 'XXX社会医療法人' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_end('財団法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_end('XXX財団法人', 1)).to eq 'XXX財団法人' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_end('一般財団法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般財団法人', 1)).to eq 'XXX一般財団法人' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_end('公益財団法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益財団法人', 1)).to eq 'XXX公益財団法人' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_end('社団法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_end('XXX社団法人', 1)).to eq 'XXX社団法人' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_end('一般社団法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般社団法人', 1)).to eq 'XXX一般社団法人' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_end('公益社団法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益社団法人', 1)).to eq 'XXX公益社団法人' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_end('宗教法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_end('XXX宗教法人', 1)).to eq 'XXX宗教法人' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_end('学校法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_end('XXX学校法人', 1)).to eq 'XXX学校法人' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_end('社会福祉法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_end('XXX社会福祉法人', 1)).to eq 'XXX社会福祉法人' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_end('更生保護法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_end('XXX更生保護法人', 1)).to eq 'XXX更生保護法人' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_end('相互会社XXX', 1)).to eq 'XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_end('XXX相互会社', 1)).to eq 'XXX相互会社' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_end('特定非営利活動法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_end('XXX特定非営利活動法人', 1)).to eq 'XXX特定非営利活動法人' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('独立行政法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX独立行政法人', 1)).to eq 'XXX独立行政法人' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('地方独立行政法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX地方独立行政法人', 1)).to eq 'XXX地方独立行政法人' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_end('弁護士法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_end('XXX弁護士法人', 1)).to eq 'XXX弁護士法人' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('有限責任中間法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX有限責任中間法人', 1)).to eq 'XXX有限責任中間法人' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('無限責任中間法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX無限責任中間法人', 1)).to eq 'XXX無限責任中間法人' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_end('行政書士法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_end('XXX行政書士法人', 1)).to eq 'XXX行政書士法人' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_end('司法書士法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_end('XXX司法書士法人', 1)).to eq 'XXX司法書士法人' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_end('税理士法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_end('XXX税理士法人', 1)).to eq 'XXX税理士法人' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_end('国立大学法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX国立大学法人', 1)).to eq 'XXX国立大学法人' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_end('公立大学法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX公立大学法人', 1)).to eq 'XXX公立大学法人' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_end('農事組合法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_end('XXX農事組合法人', 1)).to eq 'XXX農事組合法人' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_end('管理組合法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_end('XXX管理組合法人', 1)).to eq 'XXX管理組合法人' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_end('社会保険労務士法人XXX', 1)).to eq 'XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_end('XXX社会保険労務士法人', 1)).to eq 'XXX社会保険労務士法人' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_end('営業所XXX', 1)).to eq 'XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_end('XXX営業所', 1)).to eq 'XXX営業所' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_end('出張所XXX', 1)).to eq 'XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_end('XXX出張所', 1)).to eq 'XXX出張所' }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_end('㈱XXX', 1)).to eq '㈱XXX' }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_end('XXX㈱', 1)).to eq 'XXX㈱' }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_end('㈲XXX', 1)).to eq '㈲XXX' }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_end('XXX㈲', 1)).to eq 'XXX㈲' }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.with_end('カ)XXX', 1)).to eq 'カ)XXX' }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.with_end('XXXカ)', 1)).to eq 'XXXカ)' }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.with_end('ユ)XXX', 1)).to eq 'ユ)XXX' }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.with_end('XXXユ)', 1)).to eq 'XXXユ)' }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.with_end('メ)XXX', 1)).to eq 'メ)XXX' }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.with_end('XXXメ)', 1)).to eq 'XXXメ)' }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.with_end('シ)XXX', 1)).to eq 'シ)XXX' }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.with_end('XXXシ)', 1)).to eq 'XXXシ)' }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.with_end('ド)XXX', 1)).to eq 'ド)XXX' }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.with_end('XXXド)', 1)).to eq 'XXXド)' }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.with_end('イ)XXX', 1)).to eq 'イ)XXX' }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.with_end('XXXイ)', 1)).to eq 'XXXイ)' }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.with_end('ザイ)XXX', 1)).to eq 'ザイ)XXX' }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.with_end('XXXザイ)', 1)).to eq 'XXXザイ)' }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.with_end('シヤ)XXX', 1)).to eq 'シヤ)XXX' }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.with_end('XXXシヤ)', 1)).to eq 'XXXシヤ)' }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.with_end('ガク)XXX', 1)).to eq 'ガク)XXX' }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.with_end('XXXガク)', 1)).to eq 'XXXガク)' }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.with_end('フク)XXX', 1)).to eq 'フク)XXX' }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.with_end('XXXフク)', 1)).to eq 'XXXフク)' }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.with_end('ホゴ)XXX', 1)).to eq 'ホゴ)XXX' }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.with_end('XXXホゴ)', 1)).to eq 'XXXホゴ)' }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.with_end('ソ)XXX', 1)).to eq 'ソ)XXX' }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.with_end('XXXソ)', 1)).to eq 'XXXソ)' }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.with_end('トクヒ)XXX', 1)).to eq 'トクヒ)XXX' }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.with_end('XXXトクヒ)', 1)).to eq 'XXXトクヒ)' }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.with_end('ドク)XXX', 1)).to eq 'ドク)XXX' }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.with_end('XXXドク)', 1)).to eq 'XXXドク)' }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.with_end('チドク)XXX', 1)).to eq 'チドク)XXX' }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.with_end('XXXチドク)', 1)).to eq 'XXXチドク)' }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.with_end('ベン)XXX', 1)).to eq 'ベン)XXX' }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.with_end('XXXベン)', 1)).to eq 'XXXベン)' }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.with_end('チユウ)XXX', 1)).to eq 'チユウ)XXX' }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.with_end('XXXチユウ)', 1)).to eq 'XXXチユウ)' }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.with_end('ギヨ)XXX', 1)).to eq 'ギヨ)XXX' }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.with_end('XXXギヨ)', 1)).to eq 'XXXギヨ)' }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.with_end('シホウ)XXX', 1)).to eq 'シホウ)XXX' }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.with_end('XXXシホウ)', 1)).to eq 'XXXシホウ)' }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.with_end('ゼイ)XXX', 1)).to eq 'ゼイ)XXX' }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.with_end('XXXゼイ)', 1)).to eq 'XXXゼイ)' }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.with_end('ダイ)XXX', 1)).to eq 'ダイ)XXX' }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.with_end('XXXダイ)', 1)).to eq 'XXXダイ)' }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.with_end('ノウ)XXX', 1)).to eq 'ノウ)XXX' }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.with_end('XXXノウ)', 1)).to eq 'XXXノウ)' }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.with_end('カンリ)XXX', 1)).to eq 'カンリ)XXX' }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.with_end('XXXカンリ)', 1)).to eq 'XXXカンリ)' }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.with_end('ロウム)XXX', 1)).to eq 'ロウム)XXX' }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.with_end('XXXロウム)', 1)).to eq 'XXXロウム)' }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.with_end('エイ)XXX', 1)).to eq 'エイ)XXX' }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.with_end('XXXエイ)', 1)).to eq 'XXXエイ)' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.with_end('シユツ)XXX', 1)).to eq 'シユツ)XXX' }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.with_end('XXXシユツ)', 1)).to eq 'XXXシユツ)' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.with_end('(カXXX', 1)).to eq '(カXXX' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.with_end('XXX(カ', 1)).to eq 'XXX(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.with_end('(ユXXX', 1)).to eq '(ユXXX' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.with_end('XXX(ユ', 1)).to eq 'XXX(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.with_end('(メXXX', 1)).to eq '(メXXX' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.with_end('XXX(メ', 1)).to eq 'XXX(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.with_end('(シXXX', 1)).to eq '(シXXX' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.with_end('XXX(シ', 1)).to eq 'XXX(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.with_end('(ドXXX', 1)).to eq '(ドXXX' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.with_end('XXX(ド', 1)).to eq 'XXX(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.with_end('(イXXX', 1)).to eq '(イXXX' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.with_end('XXX(イ', 1)).to eq 'XXX(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.with_end('(ホゴXXX', 1)).to eq '(ホゴXXX' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.with_end('XXX(ホゴ', 1)).to eq 'XXX(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.with_end('(ソXXX', 1)).to eq '(ソXXX' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.with_end('XXX(ソ', 1)).to eq 'XXX(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.with_end('(トクヒXXX', 1)).to eq '(トクヒXXX' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.with_end('XXX(トクヒ', 1)).to eq 'XXX(トクヒ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.with_end('(ドクXXX', 1)).to eq '(ドクXXX' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.with_end('XXX(ドク', 1)).to eq 'XXX(ドク' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.with_end('(チドクXXX', 1)).to eq '(チドクXXX' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.with_end('XXX(チドク', 1)).to eq 'XXX(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.with_end('(ベンXXX', 1)).to eq '(ベンXXX' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.with_end('XXX(ベン', 1)).to eq 'XXX(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.with_end('(チユウXXX', 1)).to eq '(チユウXXX' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.with_end('XXX(チユウ', 1)).to eq 'XXX(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.with_end('(ギヨXXX', 1)).to eq '(ギヨXXX' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.with_end('XXX(ギヨ', 1)).to eq 'XXX(ギヨ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.with_end('(シホウXXX', 1)).to eq '(シホウXXX' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.with_end('XXX(シホウ', 1)).to eq 'XXX(シホウ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.with_end('(ゼイXXX', 1)).to eq '(ゼイXXX' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.with_end('XXX(ゼイ', 1)).to eq 'XXX(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.with_end('(ダイXXX', 1)).to eq '(ダイXXX' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.with_end('XXX(ダイ', 1)).to eq 'XXX(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.with_end('(ノウXXX', 1)).to eq '(ノウXXX' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.with_end('XXX(ノウ', 1)).to eq 'XXX(ノウ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.with_end('(カンリXXX', 1)).to eq '(カンリXXX' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.with_end('XXX(カンリ', 1)).to eq 'XXX(カンリ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.with_end('(ロウムXXX', 1)).to eq '(ロウムXXX' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.with_end('XXX(ロウム', 1)).to eq 'XXX(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.with_end('(エイXXX', 1)).to eq '(エイXXX' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.with_end('XXX(エイ', 1)).to eq 'XXX(エイ' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.with_end('(シユツXXX', 1)).to eq '(シユツXXX' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.with_end('XXX(シユツ', 1)).to eq 'XXX(シユツ' }
      end
    end
    context 'type: 2' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_end('株式会社XXX', 2)).to eq '株式会社XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_end('XXX株式会社', 2)).to eq 'XXX株式会社' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_end('有限会社XXX', 2)).to eq '有限会社XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_end('XXX有限会社', 2)).to eq 'XXX有限会社' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_end('合名会社XXX', 2)).to eq '合名会社XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_end('XXX合名会社', 2)).to eq 'XXX合名会社' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_end('合資会社XXX', 2)).to eq '合資会社XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_end('XXX合資会社', 2)).to eq 'XXX合資会社' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_end('合同会社XXX', 2)).to eq '合同会社XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_end('XXX合同会社', 2)).to eq 'XXX合同会社' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_end('医療法人社団XXX', 2)).to eq '医療法人社団XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人社団', 2)).to eq 'XXX医療法人社団' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_end('医療法人財団XXX', 2)).to eq '医療法人財団XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人財団', 2)).to eq 'XXX医療法人財団' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_end('医療法人XXX', 2)).to eq '医療法人XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_end('XXX医療法人', 2)).to eq 'XXX医療法人' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_end('社会医療法人XXX', 2)).to eq '社会医療法人XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_end('XXX社会医療法人', 2)).to eq 'XXX社会医療法人' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_end('財団法人XXX', 2)).to eq '財団法人XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_end('XXX財団法人', 2)).to eq 'XXX財団法人' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_end('一般財団法人XXX', 2)).to eq '一般財団法人XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般財団法人', 2)).to eq 'XXX一般財団法人' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_end('公益財団法人XXX', 2)).to eq '公益財団法人XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益財団法人', 2)).to eq 'XXX公益財団法人' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_end('社団法人XXX', 2)).to eq '社団法人XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_end('XXX社団法人', 2)).to eq 'XXX社団法人' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_end('一般社団法人XXX', 2)).to eq '一般社団法人XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般社団法人', 2)).to eq 'XXX一般社団法人' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_end('公益社団法人XXX', 2)).to eq '公益社団法人XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益社団法人', 2)).to eq 'XXX公益社団法人' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_end('宗教法人XXX', 2)).to eq '宗教法人XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_end('XXX宗教法人', 2)).to eq 'XXX宗教法人' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_end('学校法人XXX', 2)).to eq '学校法人XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_end('XXX学校法人', 2)).to eq 'XXX学校法人' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_end('社会福祉法人XXX', 2)).to eq '社会福祉法人XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_end('XXX社会福祉法人', 2)).to eq 'XXX社会福祉法人' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_end('更生保護法人XXX', 2)).to eq '更生保護法人XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_end('XXX更生保護法人', 2)).to eq 'XXX更生保護法人' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_end('相互会社XXX', 2)).to eq '相互会社XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_end('XXX相互会社', 2)).to eq 'XXX相互会社' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_end('特定非営利活動法人XXX', 2)).to eq '特定非営利活動法人XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_end('XXX特定非営利活動法人', 2)).to eq 'XXX特定非営利活動法人' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('独立行政法人XXX', 2)).to eq '独立行政法人XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX独立行政法人', 2)).to eq 'XXX独立行政法人' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('地方独立行政法人XXX', 2)).to eq '地方独立行政法人XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX地方独立行政法人', 2)).to eq 'XXX地方独立行政法人' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_end('弁護士法人XXX', 2)).to eq '弁護士法人XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_end('XXX弁護士法人', 2)).to eq 'XXX弁護士法人' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('有限責任中間法人XXX', 2)).to eq '有限責任中間法人XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX有限責任中間法人', 2)).to eq 'XXX有限責任中間法人' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('無限責任中間法人XXX', 2)).to eq '無限責任中間法人XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX無限責任中間法人', 2)).to eq 'XXX無限責任中間法人' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_end('行政書士法人XXX', 2)).to eq '行政書士法人XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_end('XXX行政書士法人', 2)).to eq 'XXX行政書士法人' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_end('司法書士法人XXX', 2)).to eq '司法書士法人XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_end('XXX司法書士法人', 2)).to eq 'XXX司法書士法人' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_end('税理士法人XXX', 2)).to eq '税理士法人XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_end('XXX税理士法人', 2)).to eq 'XXX税理士法人' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_end('国立大学法人XXX', 2)).to eq '国立大学法人XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX国立大学法人', 2)).to eq 'XXX国立大学法人' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_end('公立大学法人XXX', 2)).to eq '公立大学法人XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX公立大学法人', 2)).to eq 'XXX公立大学法人' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_end('農事組合法人XXX', 2)).to eq '農事組合法人XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_end('XXX農事組合法人', 2)).to eq 'XXX農事組合法人' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_end('管理組合法人XXX', 2)).to eq '管理組合法人XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_end('XXX管理組合法人', 2)).to eq 'XXX管理組合法人' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_end('社会保険労務士法人XXX', 2)).to eq '社会保険労務士法人XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_end('XXX社会保険労務士法人', 2)).to eq 'XXX社会保険労務士法人' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_end('営業所XXX', 2)).to eq '営業所XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_end('XXX営業所', 2)).to eq 'XXX営業所' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_end('出張所XXX', 2)).to eq '出張所XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_end('XXX出張所', 2)).to eq 'XXX出張所' }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_end('㈱XXX', 2)).to eq 'XXX' }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_end('XXX㈱', 2)).to eq 'XXX㈱' }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_end('㈲XXX', 2)).to eq 'XXX' }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_end('XXX㈲', 2)).to eq 'XXX㈲' }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.with_end('カ)XXX', 2)).to eq 'カ)XXX' }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.with_end('XXXカ)', 2)).to eq 'XXXカ)' }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.with_end('ユ)XXX', 2)).to eq 'ユ)XXX' }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.with_end('XXXユ)', 2)).to eq 'XXXユ)' }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.with_end('メ)XXX', 2)).to eq 'メ)XXX' }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.with_end('XXXメ)', 2)).to eq 'XXXメ)' }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.with_end('シ)XXX', 2)).to eq 'シ)XXX' }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.with_end('XXXシ)', 2)).to eq 'XXXシ)' }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.with_end('ド)XXX', 2)).to eq 'ド)XXX' }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.with_end('XXXド)', 2)).to eq 'XXXド)' }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.with_end('イ)XXX', 2)).to eq 'イ)XXX' }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.with_end('XXXイ)', 2)).to eq 'XXXイ)' }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.with_end('ザイ)XXX', 2)).to eq 'ザイ)XXX' }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.with_end('XXXザイ)', 2)).to eq 'XXXザイ)' }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.with_end('シヤ)XXX', 2)).to eq 'シヤ)XXX' }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.with_end('XXXシヤ)', 2)).to eq 'XXXシヤ)' }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.with_end('ガク)XXX', 2)).to eq 'ガク)XXX' }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.with_end('XXXガク)', 2)).to eq 'XXXガク)' }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.with_end('フク)XXX', 2)).to eq 'フク)XXX' }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.with_end('XXXフク)', 2)).to eq 'XXXフク)' }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.with_end('ホゴ)XXX', 2)).to eq 'ホゴ)XXX' }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.with_end('XXXホゴ)', 2)).to eq 'XXXホゴ)' }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.with_end('ソ)XXX', 2)).to eq 'ソ)XXX' }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.with_end('XXXソ)', 2)).to eq 'XXXソ)' }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.with_end('トクヒ)XXX', 2)).to eq 'トクヒ)XXX' }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.with_end('XXXトクヒ)', 2)).to eq 'XXXトクヒ)' }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.with_end('ドク)XXX', 2)).to eq 'ドク)XXX' }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.with_end('XXXドク)', 2)).to eq 'XXXドク)' }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.with_end('チドク)XXX', 2)).to eq 'チドク)XXX' }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.with_end('XXXチドク)', 2)).to eq 'XXXチドク)' }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.with_end('ベン)XXX', 2)).to eq 'ベン)XXX' }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.with_end('XXXベン)', 2)).to eq 'XXXベン)' }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.with_end('チユウ)XXX', 2)).to eq 'チユウ)XXX' }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.with_end('XXXチユウ)', 2)).to eq 'XXXチユウ)' }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.with_end('ギヨ)XXX', 2)).to eq 'ギヨ)XXX' }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.with_end('XXXギヨ)', 2)).to eq 'XXXギヨ)' }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.with_end('シホウ)XXX', 2)).to eq 'シホウ)XXX' }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.with_end('XXXシホウ)', 2)).to eq 'XXXシホウ)' }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.with_end('ゼイ)XXX', 2)).to eq 'ゼイ)XXX' }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.with_end('XXXゼイ)', 2)).to eq 'XXXゼイ)' }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.with_end('ダイ)XXX', 2)).to eq 'ダイ)XXX' }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.with_end('XXXダイ)', 2)).to eq 'XXXダイ)' }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.with_end('ノウ)XXX', 2)).to eq 'ノウ)XXX' }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.with_end('XXXノウ)', 2)).to eq 'XXXノウ)' }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.with_end('カンリ)XXX', 2)).to eq 'カンリ)XXX' }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.with_end('XXXカンリ)', 2)).to eq 'XXXカンリ)' }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.with_end('ロウム)XXX', 2)).to eq 'ロウム)XXX' }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.with_end('XXXロウム)', 2)).to eq 'XXXロウム)' }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.with_end('エイ)XXX', 2)).to eq 'エイ)XXX' }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.with_end('XXXエイ)', 2)).to eq 'XXXエイ)' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.with_end('シユツ)XXX', 2)).to eq 'シユツ)XXX' }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.with_end('XXXシユツ)', 2)).to eq 'XXXシユツ)' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.with_end('(カXXX', 2)).to eq '(カXXX' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.with_end('XXX(カ', 2)).to eq 'XXX(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.with_end('(ユXXX', 2)).to eq '(ユXXX' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.with_end('XXX(ユ', 2)).to eq 'XXX(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.with_end('(メXXX', 2)).to eq '(メXXX' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.with_end('XXX(メ', 2)).to eq 'XXX(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.with_end('(シXXX', 2)).to eq '(シXXX' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.with_end('XXX(シ', 2)).to eq 'XXX(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.with_end('(ドXXX', 2)).to eq '(ドXXX' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.with_end('XXX(ド', 2)).to eq 'XXX(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.with_end('(イXXX', 2)).to eq '(イXXX' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.with_end('XXX(イ', 2)).to eq 'XXX(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.with_end('(ホゴXXX', 2)).to eq '(ホゴXXX' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.with_end('XXX(ホゴ', 2)).to eq 'XXX(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.with_end('(ソXXX', 2)).to eq '(ソXXX' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.with_end('XXX(ソ', 2)).to eq 'XXX(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.with_end('(トクヒXXX', 2)).to eq '(トクヒXXX' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.with_end('XXX(トクヒ', 2)).to eq 'XXX(トクヒ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.with_end('(ドクXXX', 2)).to eq '(ドクXXX' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.with_end('XXX(ドク', 2)).to eq 'XXX(ドク' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.with_end('(チドクXXX', 2)).to eq '(チドクXXX' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.with_end('XXX(チドク', 2)).to eq 'XXX(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.with_end('(ベンXXX', 2)).to eq '(ベンXXX' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.with_end('XXX(ベン', 2)).to eq 'XXX(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.with_end('(チユウXXX', 2)).to eq '(チユウXXX' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.with_end('XXX(チユウ', 2)).to eq 'XXX(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.with_end('(ギヨXXX', 2)).to eq '(ギヨXXX' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.with_end('XXX(ギヨ', 2)).to eq 'XXX(ギヨ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.with_end('(シホウXXX', 2)).to eq '(シホウXXX' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.with_end('XXX(シホウ', 2)).to eq 'XXX(シホウ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.with_end('(ゼイXXX', 2)).to eq '(ゼイXXX' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.with_end('XXX(ゼイ', 2)).to eq 'XXX(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.with_end('(ダイXXX', 2)).to eq '(ダイXXX' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.with_end('XXX(ダイ', 2)).to eq 'XXX(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.with_end('(ノウXXX', 2)).to eq '(ノウXXX' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.with_end('XXX(ノウ', 2)).to eq 'XXX(ノウ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.with_end('(カンリXXX', 2)).to eq '(カンリXXX' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.with_end('XXX(カンリ', 2)).to eq 'XXX(カンリ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.with_end('(ロウムXXX', 2)).to eq '(ロウムXXX' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.with_end('XXX(ロウム', 2)).to eq 'XXX(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.with_end('(エイXXX', 2)).to eq '(エイXXX' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.with_end('XXX(エイ', 2)).to eq 'XXX(エイ' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.with_end('(シユツXXX', 2)).to eq '(シユツXXX' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.with_end('XXX(シユツ', 2)).to eq 'XXX(シユツ' }
      end
    end

    context 'type: 3' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_end('株式会社XXX', 3)).to eq '株式会社XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_end('XXX株式会社', 3)).to eq 'XXX株式会社' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_end('有限会社XXX', 3)).to eq '有限会社XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_end('XXX有限会社', 3)).to eq 'XXX有限会社' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_end('合名会社XXX', 3)).to eq '合名会社XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_end('XXX合名会社', 3)).to eq 'XXX合名会社' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_end('合資会社XXX', 3)).to eq '合資会社XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_end('XXX合資会社', 3)).to eq 'XXX合資会社' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_end('合同会社XXX', 3)).to eq '合同会社XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_end('XXX合同会社', 3)).to eq 'XXX合同会社' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_end('医療法人社団XXX', 3)).to eq '医療法人社団XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人社団', 3)).to eq 'XXX医療法人社団' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_end('医療法人財団XXX', 3)).to eq '医療法人財団XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_end('XXX医療法人財団', 3)).to eq 'XXX医療法人財団' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_end('医療法人XXX', 3)).to eq '医療法人XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_end('XXX医療法人', 3)).to eq 'XXX医療法人' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_end('社会医療法人XXX', 3)).to eq '社会医療法人XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_end('XXX社会医療法人', 3)).to eq 'XXX社会医療法人' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_end('財団法人XXX', 3)).to eq '財団法人XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_end('XXX財団法人', 3)).to eq 'XXX財団法人' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_end('一般財団法人XXX', 3)).to eq '一般財団法人XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般財団法人', 3)).to eq 'XXX一般財団法人' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_end('公益財団法人XXX', 3)).to eq '公益財団法人XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益財団法人', 3)).to eq 'XXX公益財団法人' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_end('社団法人XXX', 3)).to eq '社団法人XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_end('XXX社団法人', 3)).to eq 'XXX社団法人' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_end('一般社団法人XXX', 3)).to eq '一般社団法人XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_end('XXX一般社団法人', 3)).to eq 'XXX一般社団法人' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_end('公益社団法人XXX', 3)).to eq '公益社団法人XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_end('XXX公益社団法人', 3)).to eq 'XXX公益社団法人' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_end('宗教法人XXX', 3)).to eq '宗教法人XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_end('XXX宗教法人', 3)).to eq 'XXX宗教法人' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_end('学校法人XXX', 3)).to eq '学校法人XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_end('XXX学校法人', 3)).to eq 'XXX学校法人' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_end('社会福祉法人XXX', 3)).to eq '社会福祉法人XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_end('XXX社会福祉法人', 3)).to eq 'XXX社会福祉法人' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_end('更生保護法人XXX', 3)).to eq '更生保護法人XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_end('XXX更生保護法人', 3)).to eq 'XXX更生保護法人' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_end('相互会社XXX', 3)).to eq '相互会社XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_end('XXX相互会社', 3)).to eq 'XXX相互会社' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_end('特定非営利活動法人XXX', 3)).to eq '特定非営利活動法人XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_end('XXX特定非営利活動法人', 3)).to eq 'XXX特定非営利活動法人' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('独立行政法人XXX', 3)).to eq '独立行政法人XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX独立行政法人', 3)).to eq 'XXX独立行政法人' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_end('地方独立行政法人XXX', 3)).to eq '地方独立行政法人XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_end('XXX地方独立行政法人', 3)).to eq 'XXX地方独立行政法人' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_end('弁護士法人XXX', 3)).to eq '弁護士法人XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_end('XXX弁護士法人', 3)).to eq 'XXX弁護士法人' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('有限責任中間法人XXX', 3)).to eq '有限責任中間法人XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX有限責任中間法人', 3)).to eq 'XXX有限責任中間法人' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_end('無限責任中間法人XXX', 3)).to eq '無限責任中間法人XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_end('XXX無限責任中間法人', 3)).to eq 'XXX無限責任中間法人' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_end('行政書士法人XXX', 3)).to eq '行政書士法人XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_end('XXX行政書士法人', 3)).to eq 'XXX行政書士法人' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_end('司法書士法人XXX', 3)).to eq '司法書士法人XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_end('XXX司法書士法人', 3)).to eq 'XXX司法書士法人' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_end('税理士法人XXX', 3)).to eq '税理士法人XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_end('XXX税理士法人', 3)).to eq 'XXX税理士法人' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_end('国立大学法人XXX', 3)).to eq '国立大学法人XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX国立大学法人', 3)).to eq 'XXX国立大学法人' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_end('公立大学法人XXX', 3)).to eq '公立大学法人XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_end('XXX公立大学法人', 3)).to eq 'XXX公立大学法人' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_end('農事組合法人XXX', 3)).to eq '農事組合法人XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_end('XXX農事組合法人', 3)).to eq 'XXX農事組合法人' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_end('管理組合法人XXX', 3)).to eq '管理組合法人XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_end('XXX管理組合法人', 3)).to eq 'XXX管理組合法人' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_end('社会保険労務士法人XXX', 3)).to eq '社会保険労務士法人XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_end('XXX社会保険労務士法人', 3)).to eq 'XXX社会保険労務士法人' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_end('営業所XXX', 3)).to eq '営業所XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_end('XXX営業所', 3)).to eq 'XXX営業所' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_end('出張所XXX', 3)).to eq '出張所XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_end('XXX出張所', 3)).to eq 'XXX出張所' }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.with_end('カ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.with_end('XXXカ)', 3)).to eq 'XXXカ)' }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.with_end('ユ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.with_end('XXXユ)', 3)).to eq 'XXXユ)' }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.with_end('メ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.with_end('XXXメ)', 3)).to eq 'XXXメ)' }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.with_end('シ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.with_end('XXXシ)', 3)).to eq 'XXXシ)' }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.with_end('ド)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.with_end('XXXド)', 3)).to eq 'XXXド)' }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.with_end('イ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.with_end('XXXイ)', 3)).to eq 'XXXイ)' }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.with_end('ザイ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.with_end('XXXザイ)', 3)).to eq 'XXXザイ)' }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.with_end('シヤ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.with_end('XXXシヤ)', 3)).to eq 'XXXシヤ)' }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.with_end('ガク)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.with_end('XXXガク)', 3)).to eq 'XXXガク)' }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.with_end('フク)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.with_end('XXXフク)', 3)).to eq 'XXXフク)' }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.with_end('ホゴ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.with_end('XXXホゴ)', 3)).to eq 'XXXホゴ)' }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.with_end('ソ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.with_end('XXXソ)', 3)).to eq 'XXXソ)' }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.with_end('トクヒ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.with_end('XXXトクヒ)', 3)).to eq 'XXXトクヒ)' }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.with_end('ドク)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.with_end('XXXドク)', 3)).to eq 'XXXドク)' }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.with_end('チドク)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.with_end('XXXチドク)', 3)).to eq 'XXXチドク)' }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.with_end('ベン)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.with_end('XXXベン)', 3)).to eq 'XXXベン)' }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.with_end('チユウ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.with_end('XXXチユウ)', 3)).to eq 'XXXチユウ)' }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.with_end('ギヨ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.with_end('XXXギヨ)', 3)).to eq 'XXXギヨ)' }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.with_end('シホウ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.with_end('XXXシホウ)', 3)).to eq 'XXXシホウ)' }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.with_end('ゼイ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.with_end('XXXゼイ)', 3)).to eq 'XXXゼイ)' }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.with_end('ダイ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.with_end('XXXダイ)', 3)).to eq 'XXXダイ)' }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.with_end('ノウ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.with_end('XXXノウ)', 3)).to eq 'XXXノウ)' }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.with_end('カンリ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.with_end('XXXカンリ)', 3)).to eq 'XXXカンリ)' }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.with_end('ロウム)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.with_end('XXXロウム)', 3)).to eq 'XXXロウム)' }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.with_end('エイ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.with_end('XXXエイ)', 3)).to eq 'XXXエイ)' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.with_end('シユツ)XXX', 3)).to eq 'XXX' }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.with_end('XXXシユツ)', 3)).to eq 'XXXシユツ)' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.with_end('(カXXX', 3)).to eq '(カXXX' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.with_end('XXX(カ', 3)).to eq 'XXX(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.with_end('(ユXXX', 3)).to eq '(ユXXX' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.with_end('XXX(ユ', 3)).to eq 'XXX(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.with_end('(メXXX', 3)).to eq '(メXXX' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.with_end('XXX(メ', 3)).to eq 'XXX(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.with_end('(シXXX', 3)).to eq '(シXXX' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.with_end('XXX(シ', 3)).to eq 'XXX(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.with_end('(ドXXX', 3)).to eq '(ドXXX' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.with_end('XXX(ド', 3)).to eq 'XXX(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.with_end('(イXXX', 3)).to eq '(イXXX' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.with_end('XXX(イ', 3)).to eq 'XXX(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.with_end('(ホゴXXX', 3)).to eq '(ホゴXXX' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.with_end('XXX(ホゴ', 3)).to eq 'XXX(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.with_end('(ソXXX', 3)).to eq '(ソXXX' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.with_end('XXX(ソ', 3)).to eq 'XXX(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.with_end('(トクヒXXX', 3)).to eq '(トクヒXXX' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.with_end('XXX(トクヒ', 3)).to eq 'XXX(トクヒ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.with_end('(ドクXXX', 3)).to eq '(ドクXXX' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.with_end('XXX(ドク', 3)).to eq 'XXX(ドク' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.with_end('(チドクXXX', 3)).to eq '(チドクXXX' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.with_end('XXX(チドク', 3)).to eq 'XXX(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.with_end('(ベンXXX', 3)).to eq '(ベンXXX' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.with_end('XXX(ベン', 3)).to eq 'XXX(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.with_end('(チユウXXX', 3)).to eq '(チユウXXX' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.with_end('XXX(チユウ', 3)).to eq 'XXX(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.with_end('(ギヨXXX', 3)).to eq '(ギヨXXX' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.with_end('XXX(ギヨ', 3)).to eq 'XXX(ギヨ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.with_end('(シホウXXX', 3)).to eq '(シホウXXX' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.with_end('XXX(シホウ', 3)).to eq 'XXX(シホウ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.with_end('(ゼイXXX', 3)).to eq '(ゼイXXX' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.with_end('XXX(ゼイ', 3)).to eq 'XXX(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.with_end('(ダイXXX', 3)).to eq '(ダイXXX' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.with_end('XXX(ダイ', 3)).to eq 'XXX(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.with_end('(ノウXXX', 3)).to eq '(ノウXXX' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.with_end('XXX(ノウ', 3)).to eq 'XXX(ノウ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.with_end('(カンリXXX', 3)).to eq '(カンリXXX' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.with_end('XXX(カンリ', 3)).to eq 'XXX(カンリ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.with_end('(ロウムXXX', 3)).to eq '(ロウムXXX' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.with_end('XXX(ロウム', 3)).to eq 'XXX(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.with_end('(エイXXX', 3)).to eq '(エイXXX' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.with_end('XXX(エイ', 3)).to eq 'XXX(エイ' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.with_end('(シユツXXX', 3)).to eq '(シユツXXX' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.with_end('XXX(シユツ', 3)).to eq 'XXX(シユツ' }
      end
    end
  end
  describe '.with_beginning' do
    context 'type: 0' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_beginning('株式会社XXX', 0)).to eq '株式会社XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_beginning('XXX株式会社', 0)).to eq 'XXX' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_beginning('有限会社XXX', 0)).to eq '有限会社XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_beginning('XXX有限会社', 0)).to eq 'XXX' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_beginning('合名会社XXX', 0)).to eq '合名会社XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合名会社', 0)).to eq 'XXX' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_beginning('合資会社XXX', 0)).to eq '合資会社XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合資会社', 0)).to eq 'XXX' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_beginning('合同会社XXX', 0)).to eq '合同会社XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合同会社', 0)).to eq 'XXX' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人社団XXX', 0)).to eq '医療法人社団XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人社団', 0)).to eq 'XXX' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人財団XXX', 0)).to eq '医療法人財団XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人財団', 0)).to eq 'XXX' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人XXX', 0)).to eq '医療法人XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人', 0)).to eq 'XXX' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会医療法人XXX', 0)).to eq '社会医療法人XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会医療法人', 0)).to eq 'XXX' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('財団法人XXX', 0)).to eq '財団法人XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX財団法人', 0)).to eq 'XXX' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般財団法人XXX', 0)).to eq '一般財団法人XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般財団法人', 0)).to eq 'XXX' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益財団法人XXX', 0)).to eq '公益財団法人XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益財団法人', 0)).to eq 'XXX' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('社団法人XXX', 0)).to eq '社団法人XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社団法人', 0)).to eq 'XXX' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般社団法人XXX', 0)).to eq '一般社団法人XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般社団法人', 0)).to eq 'XXX' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益社団法人XXX', 0)).to eq '公益社団法人XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益社団法人', 0)).to eq 'XXX' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_beginning('宗教法人XXX', 0)).to eq '宗教法人XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_beginning('XXX宗教法人', 0)).to eq 'XXX' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_beginning('学校法人XXX', 0)).to eq '学校法人XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_beginning('XXX学校法人', 0)).to eq 'XXX' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会福祉法人XXX', 0)).to eq '社会福祉法人XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会福祉法人', 0)).to eq 'XXX' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_beginning('更生保護法人XXX', 0)).to eq '更生保護法人XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_beginning('XXX更生保護法人', 0)).to eq 'XXX' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_beginning('相互会社XXX', 0)).to eq '相互会社XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_beginning('XXX相互会社', 0)).to eq 'XXX' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_beginning('特定非営利活動法人XXX', 0)).to eq '特定非営利活動法人XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_beginning('XXX特定非営利活動法人', 0)).to eq 'XXX' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('独立行政法人XXX', 0)).to eq '独立行政法人XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX独立行政法人', 0)).to eq 'XXX' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('地方独立行政法人XXX', 0)).to eq '地方独立行政法人XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX地方独立行政法人', 0)).to eq 'XXX' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_beginning('弁護士法人XXX', 0)).to eq '弁護士法人XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX弁護士法人', 0)).to eq 'XXX' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('有限責任中間法人XXX', 0)).to eq '有限責任中間法人XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX有限責任中間法人', 0)).to eq 'XXX' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('無限責任中間法人XXX', 0)).to eq '無限責任中間法人XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX無限責任中間法人', 0)).to eq 'XXX' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('行政書士法人XXX', 0)).to eq '行政書士法人XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX行政書士法人', 0)).to eq 'XXX' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('司法書士法人XXX', 0)).to eq '司法書士法人XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX司法書士法人', 0)).to eq 'XXX' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_beginning('税理士法人XXX', 0)).to eq '税理士法人XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX税理士法人', 0)).to eq 'XXX' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('国立大学法人XXX', 0)).to eq '国立大学法人XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX国立大学法人', 0)).to eq 'XXX' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('公立大学法人XXX', 0)).to eq '公立大学法人XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公立大学法人', 0)).to eq 'XXX' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('農事組合法人XXX', 0)).to eq '農事組合法人XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX農事組合法人', 0)).to eq 'XXX' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('管理組合法人XXX', 0)).to eq '管理組合法人XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX管理組合法人', 0)).to eq 'XXX' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会保険労務士法人XXX', 0)).to eq '社会保険労務士法人XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会保険労務士法人', 0)).to eq 'XXX' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_beginning('営業所XXX', 0)).to eq '営業所XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_beginning('XXX営業所', 0)).to eq 'XXX' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_beginning('出張所XXX', 0)).to eq '出張所XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_beginning('XXX出張所', 0)).to eq 'XXX' }
      end
    end
    context 'type: 1' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_beginning('株式会社XXX', 1)).to eq '株式会社XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_beginning('XXX株式会社', 1)).to eq 'XXX' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_beginning('有限会社XXX', 1)).to eq '有限会社XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_beginning('XXX有限会社', 1)).to eq 'XXX' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_beginning('合名会社XXX', 1)).to eq '合名会社XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合名会社', 1)).to eq 'XXX' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_beginning('合資会社XXX', 1)).to eq '合資会社XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合資会社', 1)).to eq 'XXX' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_beginning('合同会社XXX', 1)).to eq '合同会社XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合同会社', 1)).to eq 'XXX' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人社団XXX', 1)).to eq '医療法人社団XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人社団', 1)).to eq 'XXX' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人財団XXX', 1)).to eq '医療法人財団XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人財団', 1)).to eq 'XXX' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人XXX', 1)).to eq '医療法人XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人', 1)).to eq 'XXX' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会医療法人XXX', 1)).to eq '社会医療法人XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会医療法人', 1)).to eq 'XXX' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('財団法人XXX', 1)).to eq '財団法人XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX財団法人', 1)).to eq 'XXX' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般財団法人XXX', 1)).to eq '一般財団法人XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般財団法人', 1)).to eq 'XXX' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益財団法人XXX', 1)).to eq '公益財団法人XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益財団法人', 1)).to eq 'XXX' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('社団法人XXX', 1)).to eq '社団法人XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社団法人', 1)).to eq 'XXX' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般社団法人XXX', 1)).to eq '一般社団法人XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般社団法人', 1)).to eq 'XXX' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益社団法人XXX', 1)).to eq '公益社団法人XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益社団法人', 1)).to eq 'XXX' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_beginning('宗教法人XXX', 1)).to eq '宗教法人XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_beginning('XXX宗教法人', 1)).to eq 'XXX' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_beginning('学校法人XXX', 1)).to eq '学校法人XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_beginning('XXX学校法人', 1)).to eq 'XXX' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会福祉法人XXX', 1)).to eq '社会福祉法人XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会福祉法人', 1)).to eq 'XXX' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_beginning('更生保護法人XXX', 1)).to eq '更生保護法人XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_beginning('XXX更生保護法人', 1)).to eq 'XXX' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_beginning('相互会社XXX', 1)).to eq '相互会社XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_beginning('XXX相互会社', 1)).to eq 'XXX' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_beginning('特定非営利活動法人XXX', 1)).to eq '特定非営利活動法人XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_beginning('XXX特定非営利活動法人', 1)).to eq 'XXX' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('独立行政法人XXX', 1)).to eq '独立行政法人XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX独立行政法人', 1)).to eq 'XXX' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('地方独立行政法人XXX', 1)).to eq '地方独立行政法人XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX地方独立行政法人', 1)).to eq 'XXX' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_beginning('弁護士法人XXX', 1)).to eq '弁護士法人XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX弁護士法人', 1)).to eq 'XXX' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('有限責任中間法人XXX', 1)).to eq '有限責任中間法人XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX有限責任中間法人', 1)).to eq 'XXX' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('無限責任中間法人XXX', 1)).to eq '無限責任中間法人XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX無限責任中間法人', 1)).to eq 'XXX' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('行政書士法人XXX', 1)).to eq '行政書士法人XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX行政書士法人', 1)).to eq 'XXX' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('司法書士法人XXX', 1)).to eq '司法書士法人XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX司法書士法人', 1)).to eq 'XXX' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_beginning('税理士法人XXX', 1)).to eq '税理士法人XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX税理士法人', 1)).to eq 'XXX' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('国立大学法人XXX', 1)).to eq '国立大学法人XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX国立大学法人', 1)).to eq 'XXX' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('公立大学法人XXX', 1)).to eq '公立大学法人XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公立大学法人', 1)).to eq 'XXX' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('農事組合法人XXX', 1)).to eq '農事組合法人XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX農事組合法人', 1)).to eq 'XXX' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('管理組合法人XXX', 1)).to eq '管理組合法人XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX管理組合法人', 1)).to eq 'XXX' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会保険労務士法人XXX', 1)).to eq '社会保険労務士法人XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会保険労務士法人', 1)).to eq 'XXX' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_beginning('営業所XXX', 1)).to eq '営業所XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_beginning('XXX営業所', 1)).to eq 'XXX' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_beginning('出張所XXX', 1)).to eq '出張所XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_beginning('XXX出張所', 1)).to eq 'XXX' }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_beginning('㈱XXX', 1)).to eq '㈱XXX' }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_beginning('XXX㈱', 1)).to eq 'XXX㈱' }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_beginning('㈲XXX', 1)).to eq '㈲XXX' }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_beginning('XXX㈲', 1)).to eq 'XXX㈲' }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.with_beginning('カ)XXX', 1)).to eq 'カ)XXX' }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.with_beginning('XXXカ)', 1)).to eq 'XXXカ)' }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.with_beginning('ユ)XXX', 1)).to eq 'ユ)XXX' }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.with_beginning('XXXユ)', 1)).to eq 'XXXユ)' }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.with_beginning('メ)XXX', 1)).to eq 'メ)XXX' }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.with_beginning('XXXメ)', 1)).to eq 'XXXメ)' }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.with_beginning('シ)XXX', 1)).to eq 'シ)XXX' }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.with_beginning('XXXシ)', 1)).to eq 'XXXシ)' }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.with_beginning('ド)XXX', 1)).to eq 'ド)XXX' }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.with_beginning('XXXド)', 1)).to eq 'XXXド)' }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.with_beginning('イ)XXX', 1)).to eq 'イ)XXX' }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.with_beginning('XXXイ)', 1)).to eq 'XXXイ)' }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.with_beginning('ザイ)XXX', 1)).to eq 'ザイ)XXX' }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.with_beginning('XXXザイ)', 1)).to eq 'XXXザイ)' }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.with_beginning('シヤ)XXX', 1)).to eq 'シヤ)XXX' }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.with_beginning('XXXシヤ)', 1)).to eq 'XXXシヤ)' }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.with_beginning('ガク)XXX', 1)).to eq 'ガク)XXX' }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.with_beginning('XXXガク)', 1)).to eq 'XXXガク)' }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.with_beginning('フク)XXX', 1)).to eq 'フク)XXX' }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.with_beginning('XXXフク)', 1)).to eq 'XXXフク)' }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.with_beginning('ホゴ)XXX', 1)).to eq 'ホゴ)XXX' }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.with_beginning('XXXホゴ)', 1)).to eq 'XXXホゴ)' }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.with_beginning('ソ)XXX', 1)).to eq 'ソ)XXX' }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.with_beginning('XXXソ)', 1)).to eq 'XXXソ)' }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.with_beginning('トクヒ)XXX', 1)).to eq 'トクヒ)XXX' }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.with_beginning('XXXトクヒ)', 1)).to eq 'XXXトクヒ)' }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.with_beginning('ドク)XXX', 1)).to eq 'ドク)XXX' }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.with_beginning('XXXドク)', 1)).to eq 'XXXドク)' }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.with_beginning('チドク)XXX', 1)).to eq 'チドク)XXX' }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.with_beginning('XXXチドク)', 1)).to eq 'XXXチドク)' }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.with_beginning('ベン)XXX', 1)).to eq 'ベン)XXX' }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.with_beginning('XXXベン)', 1)).to eq 'XXXベン)' }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.with_beginning('チユウ)XXX', 1)).to eq 'チユウ)XXX' }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.with_beginning('XXXチユウ)', 1)).to eq 'XXXチユウ)' }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.with_beginning('ギヨ)XXX', 1)).to eq 'ギヨ)XXX' }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.with_beginning('XXXギヨ)', 1)).to eq 'XXXギヨ)' }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.with_beginning('シホウ)XXX', 1)).to eq 'シホウ)XXX' }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.with_beginning('XXXシホウ)', 1)).to eq 'XXXシホウ)' }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.with_beginning('ゼイ)XXX', 1)).to eq 'ゼイ)XXX' }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.with_beginning('XXXゼイ)', 1)).to eq 'XXXゼイ)' }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.with_beginning('ダイ)XXX', 1)).to eq 'ダイ)XXX' }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.with_beginning('XXXダイ)', 1)).to eq 'XXXダイ)' }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.with_beginning('ノウ)XXX', 1)).to eq 'ノウ)XXX' }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.with_beginning('XXXノウ)', 1)).to eq 'XXXノウ)' }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.with_beginning('カンリ)XXX', 1)).to eq 'カンリ)XXX' }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.with_beginning('XXXカンリ)', 1)).to eq 'XXXカンリ)' }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.with_beginning('ロウム)XXX', 1)).to eq 'ロウム)XXX' }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.with_beginning('XXXロウム)', 1)).to eq 'XXXロウム)' }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.with_beginning('エイ)XXX', 1)).to eq 'エイ)XXX' }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.with_beginning('XXXエイ)', 1)).to eq 'XXXエイ)' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.with_beginning('シユツ)XXX', 1)).to eq 'シユツ)XXX' }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.with_beginning('XXXシユツ)', 1)).to eq 'XXXシユツ)' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.with_beginning('(カXXX', 1)).to eq '(カXXX' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.with_beginning('XXX(カ', 1)).to eq 'XXX(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.with_beginning('(ユXXX', 1)).to eq '(ユXXX' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.with_beginning('XXX(ユ', 1)).to eq 'XXX(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.with_beginning('(メXXX', 1)).to eq '(メXXX' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.with_beginning('XXX(メ', 1)).to eq 'XXX(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.with_beginning('(シXXX', 1)).to eq '(シXXX' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.with_beginning('XXX(シ', 1)).to eq 'XXX(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.with_beginning('(ドXXX', 1)).to eq '(ドXXX' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.with_beginning('XXX(ド', 1)).to eq 'XXX(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.with_beginning('(イXXX', 1)).to eq '(イXXX' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.with_beginning('XXX(イ', 1)).to eq 'XXX(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.with_beginning('(ホゴXXX', 1)).to eq '(ホゴXXX' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.with_beginning('XXX(ホゴ', 1)).to eq 'XXX(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.with_beginning('(ソXXX', 1)).to eq '(ソXXX' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.with_beginning('XXX(ソ', 1)).to eq 'XXX(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.with_beginning('(トクヒXXX', 1)).to eq '(トクヒXXX' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.with_beginning('XXX(トクヒ', 1)).to eq 'XXX(トクヒ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.with_beginning('(ドクXXX', 1)).to eq '(ドクXXX' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.with_beginning('XXX(ドク', 1)).to eq 'XXX(ドク' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.with_beginning('(チドクXXX', 1)).to eq '(チドクXXX' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.with_beginning('XXX(チドク', 1)).to eq 'XXX(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.with_beginning('(ベンXXX', 1)).to eq '(ベンXXX' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.with_beginning('XXX(ベン', 1)).to eq 'XXX(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.with_beginning('(チユウXXX', 1)).to eq '(チユウXXX' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.with_beginning('XXX(チユウ', 1)).to eq 'XXX(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.with_beginning('(ギヨXXX', 1)).to eq '(ギヨXXX' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.with_beginning('XXX(ギヨ', 1)).to eq 'XXX(ギヨ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.with_beginning('(シホウXXX', 1)).to eq '(シホウXXX' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.with_beginning('XXX(シホウ', 1)).to eq 'XXX(シホウ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.with_beginning('(ゼイXXX', 1)).to eq '(ゼイXXX' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.with_beginning('XXX(ゼイ', 1)).to eq 'XXX(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.with_beginning('(ダイXXX', 1)).to eq '(ダイXXX' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.with_beginning('XXX(ダイ', 1)).to eq 'XXX(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.with_beginning('(ノウXXX', 1)).to eq '(ノウXXX' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.with_beginning('XXX(ノウ', 1)).to eq 'XXX(ノウ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.with_beginning('(カンリXXX', 1)).to eq '(カンリXXX' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.with_beginning('XXX(カンリ', 1)).to eq 'XXX(カンリ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.with_beginning('(ロウムXXX', 1)).to eq '(ロウムXXX' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.with_beginning('XXX(ロウム', 1)).to eq 'XXX(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.with_beginning('(エイXXX', 1)).to eq '(エイXXX' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.with_beginning('XXX(エイ', 1)).to eq 'XXX(エイ' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.with_beginning('(シユツXXX', 1)).to eq '(シユツXXX' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.with_beginning('XXX(シユツ', 1)).to eq 'XXX(シユツ' }
      end
    end
    context 'type: 2' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_beginning('株式会社XXX', 2)).to eq '株式会社XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_beginning('XXX株式会社', 2)).to eq 'XXX株式会社' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_beginning('有限会社XXX', 2)).to eq '有限会社XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_beginning('XXX有限会社', 2)).to eq 'XXX有限会社' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_beginning('合名会社XXX', 2)).to eq '合名会社XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合名会社', 2)).to eq 'XXX合名会社' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_beginning('合資会社XXX', 2)).to eq '合資会社XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合資会社', 2)).to eq 'XXX合資会社' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_beginning('合同会社XXX', 2)).to eq '合同会社XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合同会社', 2)).to eq 'XXX合同会社' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人社団XXX', 2)).to eq '医療法人社団XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人社団', 2)).to eq 'XXX医療法人社団' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人財団XXX', 2)).to eq '医療法人財団XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人財団', 2)).to eq 'XXX医療法人財団' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人XXX', 2)).to eq '医療法人XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人', 2)).to eq 'XXX医療法人' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会医療法人XXX', 2)).to eq '社会医療法人XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会医療法人', 2)).to eq 'XXX社会医療法人' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('財団法人XXX', 2)).to eq '財団法人XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX財団法人', 2)).to eq 'XXX財団法人' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般財団法人XXX', 2)).to eq '一般財団法人XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般財団法人', 2)).to eq 'XXX一般財団法人' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益財団法人XXX', 2)).to eq '公益財団法人XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益財団法人', 2)).to eq 'XXX公益財団法人' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('社団法人XXX', 2)).to eq '社団法人XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社団法人', 2)).to eq 'XXX社団法人' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般社団法人XXX', 2)).to eq '一般社団法人XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般社団法人', 2)).to eq 'XXX一般社団法人' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益社団法人XXX', 2)).to eq '公益社団法人XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益社団法人', 2)).to eq 'XXX公益社団法人' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_beginning('宗教法人XXX', 2)).to eq '宗教法人XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_beginning('XXX宗教法人', 2)).to eq 'XXX宗教法人' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_beginning('学校法人XXX', 2)).to eq '学校法人XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_beginning('XXX学校法人', 2)).to eq 'XXX学校法人' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会福祉法人XXX', 2)).to eq '社会福祉法人XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会福祉法人', 2)).to eq 'XXX社会福祉法人' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_beginning('更生保護法人XXX', 2)).to eq '更生保護法人XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_beginning('XXX更生保護法人', 2)).to eq 'XXX更生保護法人' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_beginning('相互会社XXX', 2)).to eq '相互会社XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_beginning('XXX相互会社', 2)).to eq 'XXX相互会社' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_beginning('特定非営利活動法人XXX', 2)).to eq '特定非営利活動法人XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_beginning('XXX特定非営利活動法人', 2)).to eq 'XXX特定非営利活動法人' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('独立行政法人XXX', 2)).to eq '独立行政法人XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX独立行政法人', 2)).to eq 'XXX独立行政法人' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('地方独立行政法人XXX', 2)).to eq '地方独立行政法人XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX地方独立行政法人', 2)).to eq 'XXX地方独立行政法人' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_beginning('弁護士法人XXX', 2)).to eq '弁護士法人XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX弁護士法人', 2)).to eq 'XXX弁護士法人' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('有限責任中間法人XXX', 2)).to eq '有限責任中間法人XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX有限責任中間法人', 2)).to eq 'XXX有限責任中間法人' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('無限責任中間法人XXX', 2)).to eq '無限責任中間法人XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX無限責任中間法人', 2)).to eq 'XXX無限責任中間法人' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('行政書士法人XXX', 2)).to eq '行政書士法人XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX行政書士法人', 2)).to eq 'XXX行政書士法人' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('司法書士法人XXX', 2)).to eq '司法書士法人XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX司法書士法人', 2)).to eq 'XXX司法書士法人' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_beginning('税理士法人XXX', 2)).to eq '税理士法人XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX税理士法人', 2)).to eq 'XXX税理士法人' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('国立大学法人XXX', 2)).to eq '国立大学法人XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX国立大学法人', 2)).to eq 'XXX国立大学法人' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('公立大学法人XXX', 2)).to eq '公立大学法人XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公立大学法人', 2)).to eq 'XXX公立大学法人' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('農事組合法人XXX', 2)).to eq '農事組合法人XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX農事組合法人', 2)).to eq 'XXX農事組合法人' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('管理組合法人XXX', 2)).to eq '管理組合法人XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX管理組合法人', 2)).to eq 'XXX管理組合法人' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会保険労務士法人XXX', 2)).to eq '社会保険労務士法人XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会保険労務士法人', 2)).to eq 'XXX社会保険労務士法人' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_beginning('営業所XXX', 2)).to eq '営業所XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_beginning('XXX営業所', 2)).to eq 'XXX営業所' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_beginning('出張所XXX', 2)).to eq '出張所XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_beginning('XXX出張所', 2)).to eq 'XXX出張所' }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_beginning('㈱XXX', 2)).to eq '㈱XXX' }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_beginning('XXX㈱', 2)).to eq 'XXX' }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_beginning('㈲XXX', 2)).to eq '㈲XXX' }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_beginning('XXX㈲', 2)).to eq 'XXX' }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.with_beginning('カ)XXX', 2)).to eq 'カ)XXX' }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.with_beginning('XXXカ)', 2)).to eq 'XXXカ)' }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.with_beginning('ユ)XXX', 2)).to eq 'ユ)XXX' }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.with_beginning('XXXユ)', 2)).to eq 'XXXユ)' }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.with_beginning('メ)XXX', 2)).to eq 'メ)XXX' }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.with_beginning('XXXメ)', 2)).to eq 'XXXメ)' }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.with_beginning('シ)XXX', 2)).to eq 'シ)XXX' }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.with_beginning('XXXシ)', 2)).to eq 'XXXシ)' }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.with_beginning('ド)XXX', 2)).to eq 'ド)XXX' }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.with_beginning('XXXド)', 2)).to eq 'XXXド)' }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.with_beginning('イ)XXX', 2)).to eq 'イ)XXX' }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.with_beginning('XXXイ)', 2)).to eq 'XXXイ)' }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.with_beginning('ザイ)XXX', 2)).to eq 'ザイ)XXX' }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.with_beginning('XXXザイ)', 2)).to eq 'XXXザイ)' }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.with_beginning('シヤ)XXX', 2)).to eq 'シヤ)XXX' }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.with_beginning('XXXシヤ)', 2)).to eq 'XXXシヤ)' }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.with_beginning('ガク)XXX', 2)).to eq 'ガク)XXX' }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.with_beginning('XXXガク)', 2)).to eq 'XXXガク)' }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.with_beginning('フク)XXX', 2)).to eq 'フク)XXX' }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.with_beginning('XXXフク)', 2)).to eq 'XXXフク)' }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.with_beginning('ホゴ)XXX', 2)).to eq 'ホゴ)XXX' }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.with_beginning('XXXホゴ)', 2)).to eq 'XXXホゴ)' }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.with_beginning('ソ)XXX', 2)).to eq 'ソ)XXX' }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.with_beginning('XXXソ)', 2)).to eq 'XXXソ)' }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.with_beginning('トクヒ)XXX', 2)).to eq 'トクヒ)XXX' }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.with_beginning('XXXトクヒ)', 2)).to eq 'XXXトクヒ)' }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.with_beginning('ドク)XXX', 2)).to eq 'ドク)XXX' }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.with_beginning('XXXドク)', 2)).to eq 'XXXドク)' }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.with_beginning('チドク)XXX', 2)).to eq 'チドク)XXX' }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.with_beginning('XXXチドク)', 2)).to eq 'XXXチドク)' }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.with_beginning('ベン)XXX', 2)).to eq 'ベン)XXX' }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.with_beginning('XXXベン)', 2)).to eq 'XXXベン)' }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.with_beginning('チユウ)XXX', 2)).to eq 'チユウ)XXX' }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.with_beginning('XXXチユウ)', 2)).to eq 'XXXチユウ)' }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.with_beginning('ギヨ)XXX', 2)).to eq 'ギヨ)XXX' }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.with_beginning('XXXギヨ)', 2)).to eq 'XXXギヨ)' }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.with_beginning('シホウ)XXX', 2)).to eq 'シホウ)XXX' }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.with_beginning('XXXシホウ)', 2)).to eq 'XXXシホウ)' }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.with_beginning('ゼイ)XXX', 2)).to eq 'ゼイ)XXX' }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.with_beginning('XXXゼイ)', 2)).to eq 'XXXゼイ)' }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.with_beginning('ダイ)XXX', 2)).to eq 'ダイ)XXX' }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.with_beginning('XXXダイ)', 2)).to eq 'XXXダイ)' }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.with_beginning('ノウ)XXX', 2)).to eq 'ノウ)XXX' }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.with_beginning('XXXノウ)', 2)).to eq 'XXXノウ)' }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.with_beginning('カンリ)XXX', 2)).to eq 'カンリ)XXX' }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.with_beginning('XXXカンリ)', 2)).to eq 'XXXカンリ)' }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.with_beginning('ロウム)XXX', 2)).to eq 'ロウム)XXX' }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.with_beginning('XXXロウム)', 2)).to eq 'XXXロウム)' }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.with_beginning('エイ)XXX', 2)).to eq 'エイ)XXX' }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.with_beginning('XXXエイ)', 2)).to eq 'XXXエイ)' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.with_beginning('シユツ)XXX', 2)).to eq 'シユツ)XXX' }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.with_beginning('XXXシユツ)', 2)).to eq 'XXXシユツ)' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.with_beginning('(カXXX', 2)).to eq '(カXXX' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.with_beginning('XXX(カ', 2)).to eq 'XXX(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.with_beginning('(ユXXX', 2)).to eq '(ユXXX' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.with_beginning('XXX(ユ', 2)).to eq 'XXX(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.with_beginning('(メXXX', 2)).to eq '(メXXX' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.with_beginning('XXX(メ', 2)).to eq 'XXX(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.with_beginning('(シXXX', 2)).to eq '(シXXX' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.with_beginning('XXX(シ', 2)).to eq 'XXX(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.with_beginning('(ドXXX', 2)).to eq '(ドXXX' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.with_beginning('XXX(ド', 2)).to eq 'XXX(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.with_beginning('(イXXX', 2)).to eq '(イXXX' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.with_beginning('XXX(イ', 2)).to eq 'XXX(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.with_beginning('(ホゴXXX', 2)).to eq '(ホゴXXX' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.with_beginning('XXX(ホゴ', 2)).to eq 'XXX(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.with_beginning('(ソXXX', 2)).to eq '(ソXXX' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.with_beginning('XXX(ソ', 2)).to eq 'XXX(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.with_beginning('(トクヒXXX', 2)).to eq '(トクヒXXX' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.with_beginning('XXX(トクヒ', 2)).to eq 'XXX(トクヒ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.with_beginning('(ドクXXX', 2)).to eq '(ドクXXX' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.with_beginning('XXX(ドク', 2)).to eq 'XXX(ドク' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.with_beginning('(チドクXXX', 2)).to eq '(チドクXXX' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.with_beginning('XXX(チドク', 2)).to eq 'XXX(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.with_beginning('(ベンXXX', 2)).to eq '(ベンXXX' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.with_beginning('XXX(ベン', 2)).to eq 'XXX(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.with_beginning('(チユウXXX', 2)).to eq '(チユウXXX' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.with_beginning('XXX(チユウ', 2)).to eq 'XXX(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.with_beginning('(ギヨXXX', 2)).to eq '(ギヨXXX' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.with_beginning('XXX(ギヨ', 2)).to eq 'XXX(ギヨ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.with_beginning('(シホウXXX', 2)).to eq '(シホウXXX' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.with_beginning('XXX(シホウ', 2)).to eq 'XXX(シホウ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.with_beginning('(ゼイXXX', 2)).to eq '(ゼイXXX' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.with_beginning('XXX(ゼイ', 2)).to eq 'XXX(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.with_beginning('(ダイXXX', 2)).to eq '(ダイXXX' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.with_beginning('XXX(ダイ', 2)).to eq 'XXX(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.with_beginning('(ノウXXX', 2)).to eq '(ノウXXX' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.with_beginning('XXX(ノウ', 2)).to eq 'XXX(ノウ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.with_beginning('(カンリXXX', 2)).to eq '(カンリXXX' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.with_beginning('XXX(カンリ', 2)).to eq 'XXX(カンリ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.with_beginning('(ロウムXXX', 2)).to eq '(ロウムXXX' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.with_beginning('XXX(ロウム', 2)).to eq 'XXX(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.with_beginning('(エイXXX', 2)).to eq '(エイXXX' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.with_beginning('XXX(エイ', 2)).to eq 'XXX(エイ' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.with_beginning('(シユツXXX', 2)).to eq '(シユツXXX' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.with_beginning('XXX(シユツ', 2)).to eq 'XXX(シユツ' }
      end
    end
    context 'type: 3' do
      context '株式会社XXX の場合' do
        it { expect(Syamei.with_beginning('株式会社XXX', 3)).to eq '株式会社XXX' }
      end

      context 'XXX株式会社 の場合' do
        it { expect(Syamei.with_beginning('XXX株式会社', 3)).to eq 'XXX株式会社' }
      end

      context '有限会社XXX の場合' do
        it { expect(Syamei.with_beginning('有限会社XXX', 3)).to eq '有限会社XXX' }
      end

      context 'XXX有限会社 の場合' do
        it { expect(Syamei.with_beginning('XXX有限会社', 3)).to eq 'XXX有限会社' }
      end

      context '合名会社XXX の場合' do
        it { expect(Syamei.with_beginning('合名会社XXX', 3)).to eq '合名会社XXX' }
      end

      context 'XXX合名会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合名会社', 3)).to eq 'XXX合名会社' }
      end

      context '合資会社XXX の場合' do
        it { expect(Syamei.with_beginning('合資会社XXX', 3)).to eq '合資会社XXX' }
      end

      context 'XXX合資会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合資会社', 3)).to eq 'XXX合資会社' }
      end

      context '合同会社XXX の場合' do
        it { expect(Syamei.with_beginning('合同会社XXX', 3)).to eq '合同会社XXX' }
      end

      context 'XXX合同会社 の場合' do
        it { expect(Syamei.with_beginning('XXX合同会社', 3)).to eq 'XXX合同会社' }
      end

      context '医療法人社団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人社団XXX', 3)).to eq '医療法人社団XXX' }
      end

      context 'XXX医療法人社団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人社団', 3)).to eq 'XXX医療法人社団' }
      end

      context '医療法人財団XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人財団XXX', 3)).to eq '医療法人財団XXX' }
      end

      context 'XXX医療法人財団 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人財団', 3)).to eq 'XXX医療法人財団' }
      end

      context '医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('医療法人XXX', 3)).to eq '医療法人XXX' }
      end

      context 'XXX医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX医療法人', 3)).to eq 'XXX医療法人' }
      end

      context '社会医療法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会医療法人XXX', 3)).to eq '社会医療法人XXX' }
      end

      context 'XXX社会医療法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会医療法人', 3)).to eq 'XXX社会医療法人' }
      end

      context '財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('財団法人XXX', 3)).to eq '財団法人XXX' }
      end

      context 'XXX財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX財団法人', 3)).to eq 'XXX財団法人' }
      end

      context '一般財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般財団法人XXX', 3)).to eq '一般財団法人XXX' }
      end

      context 'XXX一般財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般財団法人', 3)).to eq 'XXX一般財団法人' }
      end

      context '公益財団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益財団法人XXX', 3)).to eq '公益財団法人XXX' }
      end

      context 'XXX公益財団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益財団法人', 3)).to eq 'XXX公益財団法人' }
      end

      context '社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('社団法人XXX', 3)).to eq '社団法人XXX' }
      end

      context 'XXX社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社団法人', 3)).to eq 'XXX社団法人' }
      end

      context '一般社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('一般社団法人XXX', 3)).to eq '一般社団法人XXX' }
      end

      context 'XXX一般社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX一般社団法人', 3)).to eq 'XXX一般社団法人' }
      end

      context '公益社団法人XXX の場合' do
        it { expect(Syamei.with_beginning('公益社団法人XXX', 3)).to eq '公益社団法人XXX' }
      end

      context 'XXX公益社団法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公益社団法人', 3)).to eq 'XXX公益社団法人' }
      end

      context '宗教法人XXX の場合' do
        it { expect(Syamei.with_beginning('宗教法人XXX', 3)).to eq '宗教法人XXX' }
      end

      context 'XXX宗教法人 の場合' do
        it { expect(Syamei.with_beginning('XXX宗教法人', 3)).to eq 'XXX宗教法人' }
      end

      context '学校法人XXX の場合' do
        it { expect(Syamei.with_beginning('学校法人XXX', 3)).to eq '学校法人XXX' }
      end

      context 'XXX学校法人 の場合' do
        it { expect(Syamei.with_beginning('XXX学校法人', 3)).to eq 'XXX学校法人' }
      end

      context '社会福祉法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会福祉法人XXX', 3)).to eq '社会福祉法人XXX' }
      end

      context 'XXX社会福祉法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会福祉法人', 3)).to eq 'XXX社会福祉法人' }
      end

      context '更生保護法人XXX の場合' do
        it { expect(Syamei.with_beginning('更生保護法人XXX', 3)).to eq '更生保護法人XXX' }
      end

      context 'XXX更生保護法人 の場合' do
        it { expect(Syamei.with_beginning('XXX更生保護法人', 3)).to eq 'XXX更生保護法人' }
      end

      context '相互会社XXX の場合' do
        it { expect(Syamei.with_beginning('相互会社XXX', 3)).to eq '相互会社XXX' }
      end

      context 'XXX相互会社 の場合' do
        it { expect(Syamei.with_beginning('XXX相互会社', 3)).to eq 'XXX相互会社' }
      end

      context '特定非営利活動法人XXX の場合' do
        it { expect(Syamei.with_beginning('特定非営利活動法人XXX', 3)).to eq '特定非営利活動法人XXX' }
      end

      context 'XXX特定非営利活動法人 の場合' do
        it { expect(Syamei.with_beginning('XXX特定非営利活動法人', 3)).to eq 'XXX特定非営利活動法人' }
      end

      context '独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('独立行政法人XXX', 3)).to eq '独立行政法人XXX' }
      end

      context 'XXX独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX独立行政法人', 3)).to eq 'XXX独立行政法人' }
      end

      context '地方独立行政法人XXX の場合' do
        it { expect(Syamei.with_beginning('地方独立行政法人XXX', 3)).to eq '地方独立行政法人XXX' }
      end

      context 'XXX地方独立行政法人 の場合' do
        it { expect(Syamei.with_beginning('XXX地方独立行政法人', 3)).to eq 'XXX地方独立行政法人' }
      end

      context '弁護士法人XXX の場合' do
        it { expect(Syamei.with_beginning('弁護士法人XXX', 3)).to eq '弁護士法人XXX' }
      end

      context 'XXX弁護士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX弁護士法人', 3)).to eq 'XXX弁護士法人' }
      end

      context '有限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('有限責任中間法人XXX', 3)).to eq '有限責任中間法人XXX' }
      end

      context 'XXX有限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX有限責任中間法人', 3)).to eq 'XXX有限責任中間法人' }
      end

      context '無限責任中間法人XXX の場合' do
        it { expect(Syamei.with_beginning('無限責任中間法人XXX', 3)).to eq '無限責任中間法人XXX' }
      end

      context 'XXX無限責任中間法人 の場合' do
        it { expect(Syamei.with_beginning('XXX無限責任中間法人', 3)).to eq 'XXX無限責任中間法人' }
      end

      context '行政書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('行政書士法人XXX', 3)).to eq '行政書士法人XXX' }
      end

      context 'XXX行政書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX行政書士法人', 3)).to eq 'XXX行政書士法人' }
      end

      context '司法書士法人XXX の場合' do
        it { expect(Syamei.with_beginning('司法書士法人XXX', 3)).to eq '司法書士法人XXX' }
      end

      context 'XXX司法書士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX司法書士法人', 3)).to eq 'XXX司法書士法人' }
      end

      context '税理士法人XXX の場合' do
        it { expect(Syamei.with_beginning('税理士法人XXX', 3)).to eq '税理士法人XXX' }
      end

      context 'XXX税理士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX税理士法人', 3)).to eq 'XXX税理士法人' }
      end

      context '国立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('国立大学法人XXX', 3)).to eq '国立大学法人XXX' }
      end

      context 'XXX国立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX国立大学法人', 3)).to eq 'XXX国立大学法人' }
      end

      context '公立大学法人XXX の場合' do
        it { expect(Syamei.with_beginning('公立大学法人XXX', 3)).to eq '公立大学法人XXX' }
      end

      context 'XXX公立大学法人 の場合' do
        it { expect(Syamei.with_beginning('XXX公立大学法人', 3)).to eq 'XXX公立大学法人' }
      end

      context '農事組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('農事組合法人XXX', 3)).to eq '農事組合法人XXX' }
      end

      context 'XXX農事組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX農事組合法人', 3)).to eq 'XXX農事組合法人' }
      end

      context '管理組合法人XXX の場合' do
        it { expect(Syamei.with_beginning('管理組合法人XXX', 3)).to eq '管理組合法人XXX' }
      end

      context 'XXX管理組合法人 の場合' do
        it { expect(Syamei.with_beginning('XXX管理組合法人', 3)).to eq 'XXX管理組合法人' }
      end

      context '社会保険労務士法人XXX の場合' do
        it { expect(Syamei.with_beginning('社会保険労務士法人XXX', 3)).to eq '社会保険労務士法人XXX' }
      end

      context 'XXX社会保険労務士法人 の場合' do
        it { expect(Syamei.with_beginning('XXX社会保険労務士法人', 3)).to eq 'XXX社会保険労務士法人' }
      end

      context '営業所XXX の場合' do
        it { expect(Syamei.with_beginning('営業所XXX', 3)).to eq '営業所XXX' }
      end

      context 'XXX営業所 の場合' do
        it { expect(Syamei.with_beginning('XXX営業所', 3)).to eq 'XXX営業所' }
      end

      context '出張所XXX の場合' do
        it { expect(Syamei.with_beginning('出張所XXX', 3)).to eq '出張所XXX' }
      end

      context 'XXX出張所 の場合' do
        it { expect(Syamei.with_beginning('XXX出張所', 3)).to eq 'XXX出張所' }
      end

      context '㈱XXX の場合' do
        it { expect(Syamei.with_beginning('㈱XXX', 3)).to eq '㈱XXX' }
      end

      context 'XXX㈱ の場合' do
        it { expect(Syamei.with_beginning('XXX㈱', 3)).to eq 'XXX㈱' }
      end

      context '㈲XXX の場合' do
        it { expect(Syamei.with_beginning('㈲XXX', 3)).to eq '㈲XXX' }
      end

      context 'XXX㈲ の場合' do
        it { expect(Syamei.with_beginning('XXX㈲', 3)).to eq 'XXX㈲' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.with_beginning('(カXXX', 3)).to eq '(カXXX' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.with_beginning('XXX(カ', 3)).to eq 'XXX' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.with_beginning('(ユXXX', 3)).to eq '(ユXXX' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.with_beginning('XXX(ユ', 3)).to eq 'XXX' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.with_beginning('(メXXX', 3)).to eq '(メXXX' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.with_beginning('XXX(メ', 3)).to eq 'XXX' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.with_beginning('(シXXX', 3)).to eq '(シXXX' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.with_beginning('XXX(シ', 3)).to eq 'XXX' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.with_beginning('(ドXXX', 3)).to eq '(ドXXX' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.with_beginning('XXX(ド', 3)).to eq 'XXX' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.with_beginning('(イXXX', 3)).to eq '(イXXX' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.with_beginning('XXX(イ', 3)).to eq 'XXX' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.with_beginning('(ホゴXXX', 3)).to eq '(ホゴXXX' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.with_beginning('XXX(ホゴ', 3)).to eq 'XXX' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.with_beginning('(ソXXX', 3)).to eq '(ソXXX' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.with_beginning('XXX(ソ', 3)).to eq 'XXX' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.with_beginning('(トクヒXXX', 3)).to eq '(トクヒXXX' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.with_beginning('XXX(トクヒ', 3)).to eq 'XXX' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.with_beginning('(ドクXXX', 3)).to eq '(ドクXXX' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.with_beginning('XXX(ドク', 3)).to eq 'XXX' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.with_beginning('(チドクXXX', 3)).to eq '(チドクXXX' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.with_beginning('XXX(チドク', 3)).to eq 'XXX' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.with_beginning('(ベンXXX', 3)).to eq '(ベンXXX' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.with_beginning('XXX(ベン', 3)).to eq 'XXX' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.with_beginning('(チユウXXX', 3)).to eq '(チユウXXX' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.with_beginning('XXX(チユウ', 3)).to eq 'XXX' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.with_beginning('(ギヨXXX', 3)).to eq '(ギヨXXX' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.with_beginning('XXX(ギヨ', 3)).to eq 'XXX' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.with_beginning('(シホウXXX', 3)).to eq '(シホウXXX' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.with_beginning('XXX(シホウ', 3)).to eq 'XXX' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.with_beginning('(ゼイXXX', 3)).to eq '(ゼイXXX' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.with_beginning('XXX(ゼイ', 3)).to eq 'XXX' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.with_beginning('(ダイXXX', 3)).to eq '(ダイXXX' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.with_beginning('XXX(ダイ', 3)).to eq 'XXX' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.with_beginning('(ノウXXX', 3)).to eq '(ノウXXX' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.with_beginning('XXX(ノウ', 3)).to eq 'XXX' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.with_beginning('(カンリXXX', 3)).to eq '(カンリXXX' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.with_beginning('XXX(カンリ', 3)).to eq 'XXX' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.with_beginning('(ロウムXXX', 3)).to eq '(ロウムXXX' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.with_beginning('XXX(ロウム', 3)).to eq 'XXX' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.with_beginning('(エイXXX', 3)).to eq '(エイXXX' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.with_beginning('XXX(エイ', 3)).to eq 'XXX' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.with_beginning('(シユツXXX', 3)).to eq '(シユツXXX' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.with_beginning('XXX(シユツ', 3)).to eq 'XXX' }
      end
    end
  end
  describe '.only' do
    context 'name is nil' do
      it { expect(Syamei.only(nil, 0)).to eq nil }
    end
    context 'name is empty' do
      it { expect(Syamei.only('', 0)).to eq nil }
    end
    context '先頭に法人格がある場合' do
      it { expect(Syamei.only('株式会社xxx', 0)).to eq 'xxx' }
    end
    context '末尾に法人格がある場合' do
      it { expect(Syamei.only('xxx株式会社', 0)).to eq 'xxx' }
    end
    context '先頭・末尾に法人格がない場合' do
      it { expect(Syamei.only('xxx', 0)).to eq 'xxx' }
    end
  end
  describe '.notation' do
    context 'type: 0' do
      context '株式会社XXX' do
        it { expect(Syamei.notation('XXX株式会社', 0)).to eq '株式会社' }
      end
      context 'XXX株式会社' do
        it { expect(Syamei.notation('株式会社XXX', 0)).to eq '株式会社' }
      end
      context '有限会社XXX' do
        it { expect(Syamei.notation('XXX有限会社', 0)).to eq '有限会社' }
      end
      context 'XXX有限会社' do
        it { expect(Syamei.notation('有限会社XXX', 0)).to eq '有限会社' }
      end
      context '合名会社XXX' do
        it { expect(Syamei.notation('XXX合名会社', 0)).to eq '合名会社' }
      end
      context 'XXX合名会社' do
        it { expect(Syamei.notation('合名会社XXX', 0)).to eq '合名会社' }
      end
      context '合資会社XXX' do
        it { expect(Syamei.notation('XXX合資会社', 0)).to eq '合資会社' }
      end
      context 'XXX合資会社' do
        it { expect(Syamei.notation('合資会社XXX', 0)).to eq '合資会社' }
      end
      context '合同会社XXX' do
        it { expect(Syamei.notation('XXX合同会社', 0)).to eq '合同会社' }
      end
      context 'XXX合同会社' do
        it { expect(Syamei.notation('合同会社XXX', 0)).to eq '合同会社' }
      end
      context '医療法人社団XXX' do
        it { expect(Syamei.notation('XXX医療法人社団', 0)).to eq '医療法人社団' }
      end
      context 'XXX医療法人社団' do
        it { expect(Syamei.notation('医療法人社団XXX', 0)).to eq '医療法人社団' }
      end
      context '医療法人財団XXX' do
        it { expect(Syamei.notation('XXX医療法人財団', 0)).to eq '医療法人財団' }
      end
      context 'XXX医療法人財団' do
        it { expect(Syamei.notation('医療法人財団XXX', 0)).to eq '医療法人財団' }
      end
      context '医療法人XXX' do
        it { expect(Syamei.notation('XXX医療法人', 0)).to eq '医療法人' }
      end
      context 'XXX医療法人' do
        it { expect(Syamei.notation('医療法人XXX', 0)).to eq '医療法人' }
      end
      context '社会医療法人XXX' do
        it { expect(Syamei.notation('XXX社会医療法人', 0)).to eq '社会医療法人' }
      end
      context 'XXX社会医療法人' do
        it { expect(Syamei.notation('社会医療法人XXX', 0)).to eq '社会医療法人' }
      end
      context '財団法人XXX' do
        it { expect(Syamei.notation('XXX財団法人', 0)).to eq '財団法人' }
      end
      context 'XXX財団法人' do
        it { expect(Syamei.notation('財団法人XXX', 0)).to eq '財団法人' }
      end
      context '一般財団法人XXX' do
        it { expect(Syamei.notation('XXX一般財団法人', 0)).to eq '一般財団法人' }
      end
      context 'XXX一般財団法人' do
        it { expect(Syamei.notation('一般財団法人XXX', 0)).to eq '一般財団法人' }
      end
      context '公益財団法人XXX' do
        it { expect(Syamei.notation('XXX公益財団法人', 0)).to eq '公益財団法人' }
      end
      context 'XXX公益財団法人' do
        it { expect(Syamei.notation('公益財団法人XXX', 0)).to eq '公益財団法人' }
      end
      context '社団法人XXX' do
        it { expect(Syamei.notation('XXX社団法人', 0)).to eq '社団法人' }
      end
      context 'XXX社団法人' do
        it { expect(Syamei.notation('社団法人XXX', 0)).to eq '社団法人' }
      end
      context '一般社団法人XXX' do
        it { expect(Syamei.notation('XXX一般社団法人', 0)).to eq '一般社団法人' }
      end
      context 'XXX一般社団法人' do
        it { expect(Syamei.notation('一般社団法人XXX', 0)).to eq '一般社団法人' }
      end
      context '公益社団法人XXX' do
        it { expect(Syamei.notation('XXX公益社団法人', 0)).to eq '公益社団法人' }
      end
      context 'XXX公益社団法人' do
        it { expect(Syamei.notation('公益社団法人XXX', 0)).to eq '公益社団法人' }
      end
      context '宗教法人XXX' do
        it { expect(Syamei.notation('XXX宗教法人', 0)).to eq '宗教法人' }
      end
      context 'XXX宗教法人' do
        it { expect(Syamei.notation('宗教法人XXX', 0)).to eq '宗教法人' }
      end
      context '学校法人XXX' do
        it { expect(Syamei.notation('XXX学校法人', 0)).to eq '学校法人' }
      end
      context 'XXX学校法人' do
        it { expect(Syamei.notation('学校法人XXX', 0)).to eq '学校法人' }
      end
      context '社会福祉法人XXX' do
        it { expect(Syamei.notation('XXX社会福祉法人', 0)).to eq '社会福祉法人' }
      end
      context 'XXX社会福祉法人' do
        it { expect(Syamei.notation('社会福祉法人XXX', 0)).to eq '社会福祉法人' }
      end
      context '更生保護法人XXX' do
        it { expect(Syamei.notation('XXX更生保護法人', 0)).to eq '更生保護法人' }
      end
      context 'XXX更生保護法人' do
        it { expect(Syamei.notation('更生保護法人XXX', 0)).to eq '更生保護法人' }
      end
      context '相互会社XXX' do
        it { expect(Syamei.notation('XXX相互会社', 0)).to eq '相互会社' }
      end
      context 'XXX相互会社' do
        it { expect(Syamei.notation('相互会社XXX', 0)).to eq '相互会社' }
      end
      context '特定非営利活動法人XXX' do
        it { expect(Syamei.notation('XXX特定非営利活動法人', 0)).to eq '特定非営利活動法人' }
      end
      context 'XXX特定非営利活動法人' do
        it { expect(Syamei.notation('特定非営利活動法人XXX', 0)).to eq '特定非営利活動法人' }
      end
      context '独立行政法人XXX' do
        it { expect(Syamei.notation('XXX独立行政法人', 0)).to eq '独立行政法人' }
      end
      context 'XXX独立行政法人' do
        it { expect(Syamei.notation('独立行政法人XXX', 0)).to eq '独立行政法人' }
      end
      context '地方独立行政法人XXX' do
        it { expect(Syamei.notation('XXX地方独立行政法人', 0)).to eq '地方独立行政法人' }
      end
      context 'XXX地方独立行政法人' do
        it { expect(Syamei.notation('地方独立行政法人XXX', 0)).to eq '地方独立行政法人' }
      end
      context '弁護士法人XXX' do
        it { expect(Syamei.notation('XXX弁護士法人', 0)).to eq '弁護士法人' }
      end
      context 'XXX弁護士法人' do
        it { expect(Syamei.notation('弁護士法人XXX', 0)).to eq '弁護士法人' }
      end
      context '有限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX有限責任中間法人', 0)).to eq '有限責任中間法人' }
      end
      context 'XXX有限責任中間法人' do
        it { expect(Syamei.notation('有限責任中間法人XXX', 0)).to eq '有限責任中間法人' }
      end
      context '無限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX無限責任中間法人', 0)).to eq '無限責任中間法人' }
      end
      context 'XXX無限責任中間法人' do
        it { expect(Syamei.notation('無限責任中間法人XXX', 0)).to eq '無限責任中間法人' }
      end
      context '行政書士法人XXX' do
        it { expect(Syamei.notation('XXX行政書士法人', 0)).to eq '行政書士法人' }
      end
      context 'XXX行政書士法人' do
        it { expect(Syamei.notation('行政書士法人XXX', 0)).to eq '行政書士法人' }
      end
      context '司法書士法人XXX' do
        it { expect(Syamei.notation('XXX司法書士法人', 0)).to eq '司法書士法人' }
      end
      context 'XXX司法書士法人' do
        it { expect(Syamei.notation('司法書士法人XXX', 0)).to eq '司法書士法人' }
      end
      context '税理士法人XXX' do
        it { expect(Syamei.notation('XXX税理士法人', 0)).to eq '税理士法人' }
      end
      context 'XXX税理士法人' do
        it { expect(Syamei.notation('税理士法人XXX', 0)).to eq '税理士法人' }
      end
      context '国立大学法人XXX' do
        it { expect(Syamei.notation('XXX国立大学法人', 0)).to eq '国立大学法人' }
      end
      context 'XXX国立大学法人' do
        it { expect(Syamei.notation('国立大学法人XXX', 0)).to eq '国立大学法人' }
      end
      context '公立大学法人XXX' do
        it { expect(Syamei.notation('XXX公立大学法人', 0)).to eq '公立大学法人' }
      end
      context 'XXX公立大学法人' do
        it { expect(Syamei.notation('公立大学法人XXX', 0)).to eq '公立大学法人' }
      end
      context '農事組合法人XXX' do
        it { expect(Syamei.notation('XXX農事組合法人', 0)).to eq '農事組合法人' }
      end
      context 'XXX農事組合法人' do
        it { expect(Syamei.notation('農事組合法人XXX', 0)).to eq '農事組合法人' }
      end
      context '管理組合法人XXX' do
        it { expect(Syamei.notation('XXX管理組合法人', 0)).to eq '管理組合法人' }
      end
      context 'XXX管理組合法人' do
        it { expect(Syamei.notation('管理組合法人XXX', 0)).to eq '管理組合法人' }
      end
      context '社会保険労務士法人XXX' do
        it { expect(Syamei.notation('XXX社会保険労務士法人', 0)).to eq '社会保険労務士法人' }
      end
      context 'XXX社会保険労務士法人' do
        it { expect(Syamei.notation('社会保険労務士法人XXX', 0)).to eq '社会保険労務士法人' }
      end
      context '営業所XXX' do
        it { expect(Syamei.notation('XXX営業所', 0)).to eq '営業所' }
      end
      context 'XXX営業所' do
        it { expect(Syamei.notation('営業所XXX', 0)).to eq '営業所' }
      end
      context '出張所XXX' do
        it { expect(Syamei.notation('XXX出張所', 0)).to eq '出張所' }
      end
      context 'XXX出張所' do
        it { expect(Syamei.notation('出張所XXX', 0)).to eq '出張所' }
      end

      context '㈱XXX' do
        it { expect(Syamei.notation('XXX㈱', 0)).to eq '㈱' }
      end
      context 'XXX㈱' do
        it { expect(Syamei.notation('㈱XXX', 0)).to eq '㈱' }
      end
      context '㈲XXX' do
        it { expect(Syamei.notation('XXX㈲', 0)).to eq '㈲' }
      end
      context 'XXX㈲' do
        it { expect(Syamei.notation('㈲XXX', 0)).to eq '㈲' }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.notation('カ)XXX', 0)).to eq 'カ)' }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.notation('XXXカ)', 0)).to eq 'カ)' }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.notation('ユ)XXX', 0)).to eq 'ユ)' }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.notation('XXXユ)', 0)).to eq 'ユ)' }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.notation('メ)XXX', 0)).to eq 'メ)' }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.notation('XXXメ)', 0)).to eq 'メ)' }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.notation('シ)XXX', 0)).to eq 'シ)' }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.notation('XXXシ)', 0)).to eq 'シ)' }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.notation('ド)XXX', 0)).to eq 'ド)' }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.notation('XXXド)', 0)).to eq 'ド)' }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.notation('イ)XXX', 0)).to eq 'イ)' }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.notation('XXXイ)', 0)).to eq 'イ)' }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.notation('ザイ)XXX', 0)).to eq 'ザイ)' }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.notation('XXXザイ)', 0)).to eq 'ザイ)' }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.notation('シヤ)XXX', 0)).to eq 'シヤ)' }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.notation('XXXシヤ)', 0)).to eq 'シヤ)' }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.notation('ガク)XXX', 0)).to eq 'ガク)' }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.notation('XXXガク)', 0)).to eq 'ガク)' }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.notation('フク)XXX', 0)).to eq 'フク)' }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.notation('XXXフク)', 0)).to eq 'フク)' }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.notation('ホゴ)XXX', 0)).to eq 'ホゴ)' }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.notation('XXXホゴ)', 0)).to eq 'ホゴ)' }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.notation('ソ)XXX', 0)).to eq 'ソ)' }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.notation('XXXソ)', 0)).to eq 'ソ)' }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.notation('トクヒ)XXX', 0)).to eq 'トクヒ)' }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.notation('XXXトクヒ)', 0)).to eq 'トクヒ)' }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.notation('ドク)XXX', 0)).to eq 'ドク)' }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.notation('XXXドク)', 0)).to eq 'ドク)' }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.notation('チドク)XXX', 0)).to eq 'チドク)' }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.notation('XXXチドク)', 0)).to eq 'チドク)' }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.notation('ベン)XXX', 0)).to eq 'ベン)' }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.notation('XXXベン)', 0)).to eq 'ベン)' }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.notation('チユウ)XXX', 0)).to eq 'チユウ)' }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.notation('XXXチユウ)', 0)).to eq 'チユウ)' }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.notation('ギヨ)XXX', 0)).to eq 'ギヨ)' }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.notation('XXXギヨ)', 0)).to eq 'ギヨ)' }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.notation('シホウ)XXX', 0)).to eq 'シホウ)' }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.notation('XXXシホウ)', 0)).to eq 'シホウ)' }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.notation('ゼイ)XXX', 0)).to eq 'ゼイ)' }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.notation('XXXゼイ)', 0)).to eq 'ゼイ)' }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.notation('ダイ)XXX', 0)).to eq 'ダイ)' }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.notation('XXXダイ)', 0)).to eq 'ダイ)' }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.notation('ノウ)XXX', 0)).to eq 'ノウ)' }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.notation('XXXノウ)', 0)).to eq 'ノウ)' }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.notation('カンリ)XXX', 0)).to eq 'カンリ)' }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.notation('XXXカンリ)', 0)).to eq 'カンリ)' }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.notation('ロウム)XXX', 0)).to eq 'ロウム)' }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.notation('XXXロウム)', 0)).to eq 'ロウム)' }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.notation('エイ)XXX', 0)).to eq 'エイ)' }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.notation('XXXエイ)', 0)).to eq 'エイ)' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.notation('シユツ)XXX', 0)).to eq 'シユツ)' }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.notation('XXXシユツ)', 0)).to eq 'シユツ)' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.notation('(カXXX', 0)).to eq '(カ' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.notation('XXX(カ', 0)).to eq '(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.notation('(ユXXX', 0)).to eq '(ユ' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.notation('XXX(ユ', 0)).to eq '(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.notation('(メXXX', 0)).to eq '(メ' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.notation('XXX(メ', 0)).to eq '(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.notation('(シXXX', 0)).to eq '(シ' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.notation('XXX(シ', 0)).to eq '(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.notation('(ドXXX', 0)).to eq '(ド' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.notation('XXX(ド', 0)).to eq '(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.notation('(イXXX', 0)).to eq '(イ' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.notation('XXX(イ', 0)).to eq '(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.notation('(ホゴXXX', 0)).to eq '(ホゴ' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.notation('XXX(ホゴ', 0)).to eq '(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.notation('(ソXXX', 0)).to eq '(ソ' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.notation('XXX(ソ', 0)).to eq '(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.notation('(トクヒXXX', 0)).to eq '(トクヒ' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.notation('XXX(トクヒ', 0)).to eq '(トクヒ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.notation('(ドクXXX', 0)).to eq '(ドク' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.notation('XXX(ドク', 0)).to eq '(ドク' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.notation('(チドクXXX', 0)).to eq '(チドク' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.notation('XXX(チドク', 0)).to eq '(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.notation('(ベンXXX', 0)).to eq '(ベン' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.notation('XXX(ベン', 0)).to eq '(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.notation('(チユウXXX', 0)).to eq '(チユウ' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.notation('XXX(チユウ', 0)).to eq '(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.notation('(ギヨXXX', 0)).to eq '(ギヨ' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.notation('XXX(ギヨ', 0)).to eq '(ギヨ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.notation('(シホウXXX', 0)).to eq '(シホウ' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.notation('XXX(シホウ', 0)).to eq '(シホウ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.notation('(ゼイXXX', 0)).to eq '(ゼイ' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.notation('XXX(ゼイ', 0)).to eq '(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.notation('(ダイXXX', 0)).to eq '(ダイ' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.notation('XXX(ダイ', 0)).to eq '(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.notation('(ノウXXX', 0)).to eq '(ノウ' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.notation('XXX(ノウ', 0)).to eq '(ノウ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.notation('(カンリXXX', 0)).to eq '(カンリ' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.notation('XXX(カンリ', 0)).to eq '(カンリ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.notation('(ロウムXXX', 0)).to eq '(ロウム' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.notation('XXX(ロウム', 0)).to eq '(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.notation('(エイXXX', 0)).to eq '(エイ' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.notation('XXX(エイ', 0)).to eq '(エイ' }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.notation('(シユツXXX', 0)).to eq '(シユツ' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.notation('XXX(シユツ', 0)).to eq '(シユツ' }
      end
    end
    context 'type: 1' do
      context '出張所XXX' do
        it { expect(Syamei.notation('XXX出張所', 1)).to eq '出張所' }
      end
      context 'XXX出張所' do
        it { expect(Syamei.notation('出張所XXX', 1)).to eq '出張所' }
      end
      context '管理組合法人XXX' do
        it { expect(Syamei.notation('XXX管理組合法人', 1)).to eq '管理組合法人' }
      end
      context 'XXX管理組合法人' do
        it { expect(Syamei.notation('管理組合法人XXX', 1)).to eq '管理組合法人' }
      end
      context '司法書士法人XXX' do
        it { expect(Syamei.notation('XXX司法書士法人', 1)).to eq '司法書士法人' }
      end
      context 'XXX司法書士法人' do
        it { expect(Syamei.notation('司法書士法人XXX', 1)).to eq '司法書士法人' }
      end
      context '独立行政法人XXX' do
        it { expect(Syamei.notation('XXX独立行政法人', 1)).to eq '独立行政法人' }
      end
      context 'XXX独立行政法人' do
        it { expect(Syamei.notation('独立行政法人XXX', 1)).to eq '独立行政法人' }
      end
      context '株式会社XXX' do
        it { expect(Syamei.notation('XXX株式会社', 1)).to eq '株式会社' }
      end
      context 'XXX株式会社' do
        it { expect(Syamei.notation('株式会社XXX', 1)).to eq '株式会社' }
      end
      context '有限会社XXX' do
        it { expect(Syamei.notation('XXX有限会社', 1)).to eq '有限会社' }
      end
      context 'XXX有限会社' do
        it { expect(Syamei.notation('有限会社XXX', 1)).to eq '有限会社' }
      end
      context '合名会社XXX' do
        it { expect(Syamei.notation('XXX合名会社', 1)).to eq '合名会社' }
      end
      context 'XXX合名会社' do
        it { expect(Syamei.notation('合名会社XXX', 1)).to eq '合名会社' }
      end
      context '合資会社XXX' do
        it { expect(Syamei.notation('XXX合資会社', 1)).to eq '合資会社' }
      end
      context 'XXX合資会社' do
        it { expect(Syamei.notation('合資会社XXX', 1)).to eq '合資会社' }
      end
      context '合同会社XXX' do
        it { expect(Syamei.notation('XXX合同会社', 1)).to eq '合同会社' }
      end
      context 'XXX合同会社' do
        it { expect(Syamei.notation('合同会社XXX', 1)).to eq '合同会社' }
      end
      context '医療法人社団XXX' do
        it { expect(Syamei.notation('XXX医療法人社団', 1)).to eq '医療法人社団' }
      end
      context 'XXX医療法人社団' do
        it { expect(Syamei.notation('医療法人社団XXX', 1)).to eq '医療法人社団' }
      end
      context '医療法人財団XXX' do
        it { expect(Syamei.notation('XXX医療法人財団', 1)).to eq '医療法人財団' }
      end
      context 'XXX医療法人財団' do
        it { expect(Syamei.notation('医療法人財団XXX', 1)).to eq '医療法人財団' }
      end
      context '医療法人XXX' do
        it { expect(Syamei.notation('XXX医療法人', 1)).to eq '医療法人' }
      end
      context 'XXX医療法人' do
        it { expect(Syamei.notation('医療法人XXX', 1)).to eq '医療法人' }
      end
      context '社会医療法人XXX' do
        it { expect(Syamei.notation('XXX社会医療法人', 1)).to eq '社会医療法人' }
      end
      context 'XXX社会医療法人' do
        it { expect(Syamei.notation('社会医療法人XXX', 1)).to eq '社会医療法人' }
      end
      context '財団法人XXX' do
        it { expect(Syamei.notation('XXX財団法人', 1)).to eq '財団法人' }
      end
      context 'XXX財団法人' do
        it { expect(Syamei.notation('財団法人XXX', 1)).to eq '財団法人' }
      end
      context '一般財団法人XXX' do
        it { expect(Syamei.notation('XXX一般財団法人', 1)).to eq '一般財団法人' }
      end
      context 'XXX一般財団法人' do
        it { expect(Syamei.notation('一般財団法人XXX', 1)).to eq '一般財団法人' }
      end
      context '公益財団法人XXX' do
        it { expect(Syamei.notation('XXX公益財団法人', 1)).to eq '公益財団法人' }
      end
      context 'XXX公益財団法人' do
        it { expect(Syamei.notation('公益財団法人XXX', 1)).to eq '公益財団法人' }
      end
      context '社団法人XXX' do
        it { expect(Syamei.notation('XXX社団法人', 1)).to eq '社団法人' }
      end
      context 'XXX社団法人' do
        it { expect(Syamei.notation('社団法人XXX', 1)).to eq '社団法人' }
      end
      context '一般社団法人XXX' do
        it { expect(Syamei.notation('XXX一般社団法人', 1)).to eq '一般社団法人' }
      end
      context 'XXX一般社団法人' do
        it { expect(Syamei.notation('一般社団法人XXX', 1)).to eq '一般社団法人' }
      end
      context '公益社団法人XXX' do
        it { expect(Syamei.notation('XXX公益社団法人', 1)).to eq '公益社団法人' }
      end
      context 'XXX公益社団法人' do
        it { expect(Syamei.notation('公益社団法人XXX', 1)).to eq '公益社団法人' }
      end
      context '宗教法人XXX' do
        it { expect(Syamei.notation('XXX宗教法人', 1)).to eq '宗教法人' }
      end
      context 'XXX宗教法人' do
        it { expect(Syamei.notation('宗教法人XXX', 1)).to eq '宗教法人' }
      end
      context '学校法人XXX' do
        it { expect(Syamei.notation('XXX学校法人', 1)).to eq '学校法人' }
      end
      context 'XXX学校法人' do
        it { expect(Syamei.notation('学校法人XXX', 1)).to eq '学校法人' }
      end
      context '社会福祉法人XXX' do
        it { expect(Syamei.notation('XXX社会福祉法人', 1)).to eq '社会福祉法人' }
      end
      context 'XXX社会福祉法人' do
        it { expect(Syamei.notation('社会福祉法人XXX', 1)).to eq '社会福祉法人' }
      end
      context '更生保護法人XXX' do
        it { expect(Syamei.notation('XXX更生保護法人', 1)).to eq '更生保護法人' }
      end
      context 'XXX更生保護法人' do
        it { expect(Syamei.notation('更生保護法人XXX', 1)).to eq '更生保護法人' }
      end
      context '相互会社XXX' do
        it { expect(Syamei.notation('XXX相互会社', 1)).to eq '相互会社' }
      end
      context 'XXX相互会社' do
        it { expect(Syamei.notation('相互会社XXX', 1)).to eq '相互会社' }
      end
      context '特定非営利活動法人XXX' do
        it { expect(Syamei.notation('XXX特定非営利活動法人', 1)).to eq '特定非営利活動法人' }
      end
      context 'XXX特定非営利活動法人' do
        it { expect(Syamei.notation('特定非営利活動法人XXX', 1)).to eq '特定非営利活動法人' }
      end
      context '地方独立行政法人XXX' do
        it { expect(Syamei.notation('XXX地方独立行政法人', 1)).to eq '地方独立行政法人' }
      end
      context 'XXX地方独立行政法人' do
        it { expect(Syamei.notation('地方独立行政法人XXX', 1)).to eq '地方独立行政法人' }
      end
      context '弁護士法人XXX' do
        it { expect(Syamei.notation('XXX弁護士法人', 1)).to eq '弁護士法人' }
      end
      context 'XXX弁護士法人' do
        it { expect(Syamei.notation('弁護士法人XXX', 1)).to eq '弁護士法人' }
      end
      context '有限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX有限責任中間法人', 1)).to eq '有限責任中間法人' }
      end
      context 'XXX有限責任中間法人' do
        it { expect(Syamei.notation('有限責任中間法人XXX', 1)).to eq '有限責任中間法人' }
      end
      context '無限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX無限責任中間法人', 1)).to eq '無限責任中間法人' }
      end
      context 'XXX無限責任中間法人' do
        it { expect(Syamei.notation('無限責任中間法人XXX', 1)).to eq '無限責任中間法人' }
      end
      context '行政書士法人XXX' do
        it { expect(Syamei.notation('XXX行政書士法人', 1)).to eq '行政書士法人' }
      end
      context 'XXX行政書士法人' do
        it { expect(Syamei.notation('行政書士法人XXX', 1)).to eq '行政書士法人' }
      end
      context '税理士法人XXX' do
        it { expect(Syamei.notation('XXX税理士法人', 1)).to eq '税理士法人' }
      end
      context 'XXX税理士法人' do
        it { expect(Syamei.notation('税理士法人XXX', 1)).to eq '税理士法人' }
      end
      context '国立大学法人XXX' do
        it { expect(Syamei.notation('XXX国立大学法人', 1)).to eq '国立大学法人' }
      end
      context 'XXX国立大学法人' do
        it { expect(Syamei.notation('国立大学法人XXX', 1)).to eq '国立大学法人' }
      end
      context '公立大学法人XXX' do
        it { expect(Syamei.notation('XXX公立大学法人', 1)).to eq '公立大学法人' }
      end
      context 'XXX公立大学法人' do
        it { expect(Syamei.notation('公立大学法人XXX', 1)).to eq '公立大学法人' }
      end
      context '農事組合法人XXX' do
        it { expect(Syamei.notation('XXX農事組合法人', 1)).to eq '農事組合法人' }
      end
      context 'XXX農事組合法人' do
        it { expect(Syamei.notation('農事組合法人XXX', 1)).to eq '農事組合法人' }
      end
      context '社会保険労務士法人XXX' do
        it { expect(Syamei.notation('XXX社会保険労務士法人', 1)).to eq '社会保険労務士法人' }
      end
      context 'XXX社会保険労務士法人' do
        it { expect(Syamei.notation('社会保険労務士法人XXX', 1)).to eq '社会保険労務士法人' }
      end
      context '営業所XXX' do
        it { expect(Syamei.notation('XXX営業所', 1)).to eq '営業所' }
      end
      context 'XXX営業所' do
        it { expect(Syamei.notation('営業所XXX', 1)).to eq '営業所' }
      end

      context '㈱XXX' do
        it { expect(Syamei.notation('XXX㈱', 1)).to eq nil }
      end
      context 'XXX㈱' do
        it { expect(Syamei.notation('㈱XXX', 1)).to eq nil }
      end
      context '㈲XXX' do
        it { expect(Syamei.notation('XXX㈲', 1)).to eq nil }
      end
      context 'XXX㈲' do
        it { expect(Syamei.notation('㈲XXX', 1)).to eq nil }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.notation('シユツ)XXX', 1)).to eq nil }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.notation('XXXシユツ)', 1)).to eq nil }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.notation('カンリ)XXX', 1)).to eq nil }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.notation('XXXカンリ)', 1)).to eq nil }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.notation('シホウ)XXX', 1)).to eq nil }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.notation('XXXシホウ)', 1)).to eq nil }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.notation('ドク)XXX', 1)).to eq nil }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.notation('XXXドク)', 1)).to eq nil }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.notation('カ)XXX', 1)).to eq nil }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.notation('XXXカ)', 1)).to eq nil }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.notation('ユ)XXX', 1)).to eq nil }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.notation('XXXユ)', 1)).to eq nil }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.notation('メ)XXX', 1)).to eq nil }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.notation('XXXメ)', 1)).to eq nil }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.notation('シ)XXX', 1)).to eq nil }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.notation('XXXシ)', 1)).to eq nil }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.notation('ド)XXX', 1)).to eq nil }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.notation('XXXド)', 1)).to eq nil }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.notation('イ)XXX', 1)).to eq nil }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.notation('XXXイ)', 1)).to eq nil }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.notation('ザイ)XXX', 1)).to eq nil }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.notation('XXXザイ)', 1)).to eq nil }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.notation('シヤ)XXX', 1)).to eq nil }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.notation('XXXシヤ)', 1)).to eq nil }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.notation('ガク)XXX', 1)).to eq nil }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.notation('XXXガク)', 1)).to eq nil }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.notation('フク)XXX', 1)).to eq nil }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.notation('XXXフク)', 1)).to eq nil }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.notation('ホゴ)XXX', 1)).to eq nil }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.notation('XXXホゴ)', 1)).to eq nil }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.notation('ソ)XXX', 1)).to eq nil }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.notation('XXXソ)', 1)).to eq nil }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.notation('トクヒ)XXX', 1)).to eq nil }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.notation('XXXトクヒ)', 1)).to eq nil }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.notation('チドク)XXX', 1)).to eq nil }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.notation('XXXチドク)', 1)).to eq nil }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.notation('ベン)XXX', 1)).to eq nil }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.notation('XXXベン)', 1)).to eq nil }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.notation('チユウ)XXX', 1)).to eq nil }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.notation('XXXチユウ)', 1)).to eq nil }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.notation('ギヨ)XXX', 1)).to eq nil }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.notation('XXXギヨ)', 1)).to eq nil }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.notation('ゼイ)XXX', 1)).to eq nil }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.notation('XXXゼイ)', 1)).to eq nil }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.notation('ダイ)XXX', 1)).to eq nil }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.notation('XXXダイ)', 1)).to eq nil }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.notation('ノウ)XXX', 1)).to eq nil }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.notation('XXXノウ)', 1)).to eq nil }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.notation('ロウム)XXX', 1)).to eq nil }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.notation('XXXロウム)', 1)).to eq nil }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.notation('エイ)XXX', 1)).to eq nil }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.notation('XXXエイ)', 1)).to eq nil }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.notation('(シユツXXX', 1)).to eq nil }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.notation('XXX(シユツ', 1)).to eq nil }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.notation('(カンリXXX', 1)).to eq nil }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.notation('XXX(カンリ', 1)).to eq nil }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.notation('(シホウXXX', 1)).to eq nil }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.notation('XXX(シホウ', 1)).to eq nil }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.notation('(ドクXXX', 1)).to eq nil }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.notation('XXX(ドク', 1)).to eq nil }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.notation('(カXXX', 1)).to eq nil }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.notation('XXX(カ', 1)).to eq nil }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.notation('(ユXXX', 1)).to eq nil }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.notation('XXX(ユ', 1)).to eq nil }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.notation('(メXXX', 1)).to eq nil }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.notation('XXX(メ', 1)).to eq nil }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.notation('(シXXX', 1)).to eq nil }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.notation('XXX(シ', 1)).to eq nil }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.notation('(ドXXX', 1)).to eq nil }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.notation('XXX(ド', 1)).to eq nil }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.notation('(イXXX', 1)).to eq nil }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.notation('XXX(イ', 1)).to eq nil }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.notation('(ホゴXXX', 1)).to eq nil }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.notation('XXX(ホゴ', 1)).to eq nil }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.notation('(ソXXX', 1)).to eq nil }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.notation('XXX(ソ', 1)).to eq nil }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.notation('(トクヒXXX', 1)).to eq nil }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.notation('XXX(トクヒ', 1)).to eq nil }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.notation('(チドクXXX', 1)).to eq nil }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.notation('XXX(チドク', 1)).to eq nil }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.notation('(ベンXXX', 1)).to eq nil }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.notation('XXX(ベン', 1)).to eq nil }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.notation('(チユウXXX', 1)).to eq nil }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.notation('XXX(チユウ', 1)).to eq nil }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.notation('(ギヨXXX', 1)).to eq nil }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.notation('XXX(ギヨ', 1)).to eq nil }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.notation('(ゼイXXX', 1)).to eq nil }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.notation('XXX(ゼイ', 1)).to eq nil }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.notation('(ダイXXX', 1)).to eq nil }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.notation('XXX(ダイ', 1)).to eq nil }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.notation('(ノウXXX', 1)).to eq nil }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.notation('XXX(ノウ', 1)).to eq nil }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.notation('(ロウムXXX', 1)).to eq nil }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.notation('XXX(ロウム', 1)).to eq nil }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.notation('(エイXXX', 1)).to eq nil }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.notation('XXX(エイ', 1)).to eq nil }
      end
    end
    context 'type: 2' do
      context '出張所XXX' do
        it { expect(Syamei.notation('XXX出張所', 2)).to eq nil }
      end
      context 'XXX出張所' do
        it { expect(Syamei.notation('出張所XXX', 2)).to eq nil }
      end
      context '管理組合法人XXX' do
        it { expect(Syamei.notation('XXX管理組合法人', 2)).to eq nil }
      end
      context 'XXX管理組合法人' do
        it { expect(Syamei.notation('管理組合法人XXX', 2)).to eq nil }
      end
      context '司法書士法人XXX' do
        it { expect(Syamei.notation('XXX司法書士法人', 2)).to eq nil }
      end
      context 'XXX司法書士法人' do
        it { expect(Syamei.notation('司法書士法人XXX', 2)).to eq nil }
      end
      context '独立行政法人XXX' do
        it { expect(Syamei.notation('XXX独立行政法人', 2)).to eq nil }
      end
      context 'XXX独立行政法人' do
        it { expect(Syamei.notation('独立行政法人XXX', 2)).to eq nil }
      end
      context '株式会社XXX' do
        it { expect(Syamei.notation('XXX株式会社', 2)).to eq nil }
      end
      context 'XXX株式会社' do
        it { expect(Syamei.notation('株式会社XXX', 2)).to eq nil }
      end
      context '有限会社XXX' do
        it { expect(Syamei.notation('XXX有限会社', 2)).to eq nil }
      end
      context 'XXX有限会社' do
        it { expect(Syamei.notation('有限会社XXX', 2)).to eq nil }
      end
      context '合名会社XXX' do
        it { expect(Syamei.notation('XXX合名会社', 2)).to eq nil }
      end
      context 'XXX合名会社' do
        it { expect(Syamei.notation('合名会社XXX', 2)).to eq nil }
      end
      context '合資会社XXX' do
        it { expect(Syamei.notation('XXX合資会社', 2)).to eq nil }
      end
      context 'XXX合資会社' do
        it { expect(Syamei.notation('合資会社XXX', 2)).to eq nil }
      end
      context '合同会社XXX' do
        it { expect(Syamei.notation('XXX合同会社', 2)).to eq nil }
      end
      context 'XXX合同会社' do
        it { expect(Syamei.notation('合同会社XXX', 2)).to eq nil }
      end
      context '医療法人社団XXX' do
        it { expect(Syamei.notation('XXX医療法人社団', 2)).to eq nil }
      end
      context 'XXX医療法人社団' do
        it { expect(Syamei.notation('医療法人社団XXX', 2)).to eq nil }
      end
      context '医療法人財団XXX' do
        it { expect(Syamei.notation('XXX医療法人財団', 2)).to eq nil }
      end
      context 'XXX医療法人財団' do
        it { expect(Syamei.notation('医療法人財団XXX', 2)).to eq nil }
      end
      context '医療法人XXX' do
        it { expect(Syamei.notation('XXX医療法人', 2)).to eq nil }
      end
      context 'XXX医療法人' do
        it { expect(Syamei.notation('医療法人XXX', 2)).to eq nil }
      end
      context '社会医療法人XXX' do
        it { expect(Syamei.notation('XXX社会医療法人', 2)).to eq nil }
      end
      context 'XXX社会医療法人' do
        it { expect(Syamei.notation('社会医療法人XXX', 2)).to eq nil }
      end
      context '財団法人XXX' do
        it { expect(Syamei.notation('XXX財団法人', 2)).to eq nil }
      end
      context 'XXX財団法人' do
        it { expect(Syamei.notation('財団法人XXX', 2)).to eq nil }
      end
      context '一般財団法人XXX' do
        it { expect(Syamei.notation('XXX一般財団法人', 2)).to eq nil }
      end
      context 'XXX一般財団法人' do
        it { expect(Syamei.notation('一般財団法人XXX', 2)).to eq nil }
      end
      context '公益財団法人XXX' do
        it { expect(Syamei.notation('XXX公益財団法人', 2)).to eq nil }
      end
      context 'XXX公益財団法人' do
        it { expect(Syamei.notation('公益財団法人XXX', 2)).to eq nil }
      end
      context '社団法人XXX' do
        it { expect(Syamei.notation('XXX社団法人', 2)).to eq nil }
      end
      context 'XXX社団法人' do
        it { expect(Syamei.notation('社団法人XXX', 2)).to eq nil }
      end
      context '一般社団法人XXX' do
        it { expect(Syamei.notation('XXX一般社団法人', 2)).to eq nil }
      end
      context 'XXX一般社団法人' do
        it { expect(Syamei.notation('一般社団法人XXX', 2)).to eq nil }
      end
      context '公益社団法人XXX' do
        it { expect(Syamei.notation('XXX公益社団法人', 2)).to eq nil }
      end
      context 'XXX公益社団法人' do
        it { expect(Syamei.notation('公益社団法人XXX', 2)).to eq nil }
      end
      context '宗教法人XXX' do
        it { expect(Syamei.notation('XXX宗教法人', 2)).to eq nil }
      end
      context 'XXX宗教法人' do
        it { expect(Syamei.notation('宗教法人XXX', 2)).to eq nil }
      end
      context '学校法人XXX' do
        it { expect(Syamei.notation('XXX学校法人', 2)).to eq nil }
      end
      context 'XXX学校法人' do
        it { expect(Syamei.notation('学校法人XXX', 2)).to eq nil }
      end
      context '社会福祉法人XXX' do
        it { expect(Syamei.notation('XXX社会福祉法人', 2)).to eq nil }
      end
      context 'XXX社会福祉法人' do
        it { expect(Syamei.notation('社会福祉法人XXX', 2)).to eq nil }
      end
      context '更生保護法人XXX' do
        it { expect(Syamei.notation('XXX更生保護法人', 2)).to eq nil }
      end
      context 'XXX更生保護法人' do
        it { expect(Syamei.notation('更生保護法人XXX', 2)).to eq nil }
      end
      context '相互会社XXX' do
        it { expect(Syamei.notation('XXX相互会社', 2)).to eq nil }
      end
      context 'XXX相互会社' do
        it { expect(Syamei.notation('相互会社XXX', 2)).to eq nil }
      end
      context '特定非営利活動法人XXX' do
        it { expect(Syamei.notation('XXX特定非営利活動法人', 2)).to eq nil }
      end
      context 'XXX特定非営利活動法人' do
        it { expect(Syamei.notation('特定非営利活動法人XXX', 2)).to eq nil }
      end
      context '地方独立行政法人XXX' do
        it { expect(Syamei.notation('XXX地方独立行政法人', 2)).to eq nil }
      end
      context 'XXX地方独立行政法人' do
        it { expect(Syamei.notation('地方独立行政法人XXX', 2)).to eq nil }
      end
      context '弁護士法人XXX' do
        it { expect(Syamei.notation('XXX弁護士法人', 2)).to eq nil }
      end
      context 'XXX弁護士法人' do
        it { expect(Syamei.notation('弁護士法人XXX', 2)).to eq nil }
      end
      context '有限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX有限責任中間法人', 2)).to eq nil }
      end
      context 'XXX有限責任中間法人' do
        it { expect(Syamei.notation('有限責任中間法人XXX', 2)).to eq nil }
      end
      context '無限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX無限責任中間法人', 2)).to eq nil }
      end
      context 'XXX無限責任中間法人' do
        it { expect(Syamei.notation('無限責任中間法人XXX', 2)).to eq nil }
      end
      context '行政書士法人XXX' do
        it { expect(Syamei.notation('XXX行政書士法人', 2)).to eq nil }
      end
      context 'XXX行政書士法人' do
        it { expect(Syamei.notation('行政書士法人XXX', 2)).to eq nil }
      end
      context '税理士法人XXX' do
        it { expect(Syamei.notation('XXX税理士法人', 2)).to eq nil }
      end
      context 'XXX税理士法人' do
        it { expect(Syamei.notation('税理士法人XXX', 2)).to eq nil }
      end
      context '国立大学法人XXX' do
        it { expect(Syamei.notation('XXX国立大学法人', 2)).to eq nil }
      end
      context 'XXX国立大学法人' do
        it { expect(Syamei.notation('国立大学法人XXX', 2)).to eq nil }
      end
      context '公立大学法人XXX' do
        it { expect(Syamei.notation('XXX公立大学法人', 2)).to eq nil }
      end
      context 'XXX公立大学法人' do
        it { expect(Syamei.notation('公立大学法人XXX', 2)).to eq nil }
      end
      context '農事組合法人XXX' do
        it { expect(Syamei.notation('XXX農事組合法人', 2)).to eq nil }
      end
      context 'XXX農事組合法人' do
        it { expect(Syamei.notation('農事組合法人XXX', 2)).to eq nil }
      end
      context '社会保険労務士法人XXX' do
        it { expect(Syamei.notation('XXX社会保険労務士法人', 2)).to eq nil }
      end
      context 'XXX社会保険労務士法人' do
        it { expect(Syamei.notation('社会保険労務士法人XXX', 2)).to eq nil }
      end
      context '営業所XXX' do
        it { expect(Syamei.notation('XXX営業所', 2)).to eq nil }
      end
      context 'XXX営業所' do
        it { expect(Syamei.notation('営業所XXX', 2)).to eq nil }
      end

      context '㈱XXX' do
        it { expect(Syamei.notation('XXX㈱', 2)).to eq '㈱' }
      end
      context 'XXX㈱' do
        it { expect(Syamei.notation('㈱XXX', 2)).to eq '㈱' }
      end
      context '㈲XXX' do
        it { expect(Syamei.notation('XXX㈲', 2)).to eq '㈲' }
      end
      context 'XXX㈲' do
        it { expect(Syamei.notation('㈲XXX', 2)).to eq '㈲' }
      end

      context 'シユツ)XXX の場合' do
        it { expect(Syamei.notation('シユツ)XXX', 2)).to eq nil }
      end

      context 'XXXシユツ) の場合' do
        it { expect(Syamei.notation('XXXシユツ)', 2)).to eq nil }
      end

      context 'カンリ)XXX の場合' do
        it { expect(Syamei.notation('カンリ)XXX', 2)).to eq nil }
      end

      context 'XXXカンリ) の場合' do
        it { expect(Syamei.notation('XXXカンリ)', 2)).to eq nil }
      end

      context 'シホウ)XXX の場合' do
        it { expect(Syamei.notation('シホウ)XXX', 2)).to eq nil }
      end

      context 'XXXシホウ) の場合' do
        it { expect(Syamei.notation('XXXシホウ)', 2)).to eq nil }
      end

      context 'ドク)XXX の場合' do
        it { expect(Syamei.notation('ドク)XXX', 2)).to eq nil }
      end

      context 'XXXドク) の場合' do
        it { expect(Syamei.notation('XXXドク)', 2)).to eq nil }
      end

      context 'カ)XXX の場合' do
        it { expect(Syamei.notation('カ)XXX', 2)).to eq nil }
      end

      context 'XXXカ) の場合' do
        it { expect(Syamei.notation('XXXカ)', 2)).to eq nil }
      end

      context 'ユ)XXX の場合' do
        it { expect(Syamei.notation('ユ)XXX', 2)).to eq nil }
      end

      context 'XXXユ) の場合' do
        it { expect(Syamei.notation('XXXユ)', 2)).to eq nil }
      end

      context 'メ)XXX の場合' do
        it { expect(Syamei.notation('メ)XXX', 2)).to eq nil }
      end

      context 'XXXメ) の場合' do
        it { expect(Syamei.notation('XXXメ)', 2)).to eq nil }
      end

      context 'シ)XXX の場合' do
        it { expect(Syamei.notation('シ)XXX', 2)).to eq nil }
      end

      context 'XXXシ) の場合' do
        it { expect(Syamei.notation('XXXシ)', 2)).to eq nil }
      end

      context 'ド)XXX の場合' do
        it { expect(Syamei.notation('ド)XXX', 2)).to eq nil }
      end

      context 'XXXド) の場合' do
        it { expect(Syamei.notation('XXXド)', 2)).to eq nil }
      end

      context 'イ)XXX の場合' do
        it { expect(Syamei.notation('イ)XXX', 2)).to eq nil }
      end

      context 'XXXイ) の場合' do
        it { expect(Syamei.notation('XXXイ)', 2)).to eq nil }
      end

      context 'ザイ)XXX の場合' do
        it { expect(Syamei.notation('ザイ)XXX', 2)).to eq nil }
      end

      context 'XXXザイ) の場合' do
        it { expect(Syamei.notation('XXXザイ)', 2)).to eq nil }
      end

      context 'シヤ)XXX の場合' do
        it { expect(Syamei.notation('シヤ)XXX', 2)).to eq nil }
      end

      context 'XXXシヤ) の場合' do
        it { expect(Syamei.notation('XXXシヤ)', 2)).to eq nil }
      end

      context 'ガク)XXX の場合' do
        it { expect(Syamei.notation('ガク)XXX', 2)).to eq nil }
      end

      context 'XXXガク) の場合' do
        it { expect(Syamei.notation('XXXガク)', 2)).to eq nil }
      end

      context 'フク)XXX の場合' do
        it { expect(Syamei.notation('フク)XXX', 2)).to eq nil }
      end

      context 'XXXフク) の場合' do
        it { expect(Syamei.notation('XXXフク)', 2)).to eq nil }
      end

      context 'ホゴ)XXX の場合' do
        it { expect(Syamei.notation('ホゴ)XXX', 2)).to eq nil }
      end

      context 'XXXホゴ) の場合' do
        it { expect(Syamei.notation('XXXホゴ)', 2)).to eq nil }
      end

      context 'ソ)XXX の場合' do
        it { expect(Syamei.notation('ソ)XXX', 2)).to eq nil }
      end

      context 'XXXソ) の場合' do
        it { expect(Syamei.notation('XXXソ)', 2)).to eq nil }
      end

      context 'トクヒ)XXX の場合' do
        it { expect(Syamei.notation('トクヒ)XXX', 2)).to eq nil }
      end

      context 'XXXトクヒ) の場合' do
        it { expect(Syamei.notation('XXXトクヒ)', 2)).to eq nil }
      end

      context 'チドク)XXX の場合' do
        it { expect(Syamei.notation('チドク)XXX', 2)).to eq nil }
      end

      context 'XXXチドク) の場合' do
        it { expect(Syamei.notation('XXXチドク)', 2)).to eq nil }
      end

      context 'ベン)XXX の場合' do
        it { expect(Syamei.notation('ベン)XXX', 2)).to eq nil }
      end

      context 'XXXベン) の場合' do
        it { expect(Syamei.notation('XXXベン)', 2)).to eq nil }
      end

      context 'チユウ)XXX の場合' do
        it { expect(Syamei.notation('チユウ)XXX', 2)).to eq nil }
      end

      context 'XXXチユウ) の場合' do
        it { expect(Syamei.notation('XXXチユウ)', 2)).to eq nil }
      end

      context 'ギヨ)XXX の場合' do
        it { expect(Syamei.notation('ギヨ)XXX', 2)).to eq nil }
      end

      context 'XXXギヨ) の場合' do
        it { expect(Syamei.notation('XXXギヨ)', 2)).to eq nil }
      end

      context 'ゼイ)XXX の場合' do
        it { expect(Syamei.notation('ゼイ)XXX', 2)).to eq nil }
      end

      context 'XXXゼイ) の場合' do
        it { expect(Syamei.notation('XXXゼイ)', 2)).to eq nil }
      end

      context 'ダイ)XXX の場合' do
        it { expect(Syamei.notation('ダイ)XXX', 2)).to eq nil }
      end

      context 'XXXダイ) の場合' do
        it { expect(Syamei.notation('XXXダイ)', 2)).to eq nil }
      end

      context 'ノウ)XXX の場合' do
        it { expect(Syamei.notation('ノウ)XXX', 2)).to eq nil }
      end

      context 'XXXノウ) の場合' do
        it { expect(Syamei.notation('XXXノウ)', 2)).to eq nil }
      end

      context 'ロウム)XXX の場合' do
        it { expect(Syamei.notation('ロウム)XXX', 2)).to eq nil }
      end

      context 'XXXロウム) の場合' do
        it { expect(Syamei.notation('XXXロウム)', 2)).to eq nil }
      end

      context 'エイ)XXX の場合' do
        it { expect(Syamei.notation('エイ)XXX', 2)).to eq nil }
      end

      context 'XXXエイ) の場合' do
        it { expect(Syamei.notation('XXXエイ)', 2)).to eq nil }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.notation('(シユツXXX', 2)).to eq nil }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.notation('XXX(シユツ', 2)).to eq nil }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.notation('(カンリXXX', 2)).to eq nil }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.notation('XXX(カンリ', 2)).to eq nil }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.notation('(シホウXXX', 2)).to eq nil }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.notation('XXX(シホウ', 2)).to eq nil }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.notation('(ドクXXX', 2)).to eq nil }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.notation('XXX(ドク', 2)).to eq nil }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.notation('(カXXX', 2)).to eq nil }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.notation('XXX(カ', 2)).to eq nil }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.notation('(ユXXX', 2)).to eq nil }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.notation('XXX(ユ', 2)).to eq nil }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.notation('(メXXX', 2)).to eq nil }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.notation('XXX(メ', 2)).to eq nil }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.notation('(シXXX', 2)).to eq nil }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.notation('XXX(シ', 2)).to eq nil }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.notation('(ドXXX', 2)).to eq nil }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.notation('XXX(ド', 2)).to eq nil }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.notation('(イXXX', 2)).to eq nil }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.notation('XXX(イ', 2)).to eq nil }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.notation('(ホゴXXX', 2)).to eq nil }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.notation('XXX(ホゴ', 2)).to eq nil }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.notation('(ソXXX', 2)).to eq nil }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.notation('XXX(ソ', 2)).to eq nil }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.notation('(トクヒXXX', 2)).to eq nil }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.notation('XXX(トクヒ', 2)).to eq nil }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.notation('(チドクXXX', 2)).to eq nil }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.notation('XXX(チドク', 2)).to eq nil }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.notation('(ベンXXX', 2)).to eq nil }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.notation('XXX(ベン', 2)).to eq nil }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.notation('(チユウXXX', 2)).to eq nil }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.notation('XXX(チユウ', 2)).to eq nil }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.notation('(ギヨXXX', 2)).to eq nil }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.notation('XXX(ギヨ', 2)).to eq nil }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.notation('(ゼイXXX', 2)).to eq nil }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.notation('XXX(ゼイ', 2)).to eq nil }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.notation('(ダイXXX', 2)).to eq nil }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.notation('XXX(ダイ', 2)).to eq nil }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.notation('(ノウXXX', 2)).to eq nil }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.notation('XXX(ノウ', 2)).to eq nil }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.notation('(ロウムXXX', 2)).to eq nil }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.notation('XXX(ロウム', 2)).to eq nil }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.notation('(エイXXX', 2)).to eq nil }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.notation('XXX(エイ', 2)).to eq nil }
      end
    end
    context 'type: 3' do
      context '出張所XXX' do
        it { expect(Syamei.notation('XXX出張所', 3)).to eq nil }
      end
      context 'XXX出張所' do
        it { expect(Syamei.notation('出張所XXX', 3)).to eq nil }
      end
      context '管理組合法人XXX' do
        it { expect(Syamei.notation('XXX管理組合法人', 3)).to eq nil }
      end
      context 'XXX管理組合法人' do
        it { expect(Syamei.notation('管理組合法人XXX', 3)).to eq nil }
      end
      context '司法書士法人XXX' do
        it { expect(Syamei.notation('XXX司法書士法人', 3)).to eq nil }
      end
      context 'XXX司法書士法人' do
        it { expect(Syamei.notation('司法書士法人XXX', 3)).to eq nil }
      end
      context '独立行政法人XXX' do
        it { expect(Syamei.notation('XXX独立行政法人', 3)).to eq nil }
      end
      context 'XXX独立行政法人' do
        it { expect(Syamei.notation('独立行政法人XXX', 3)).to eq nil }
      end
      context '株式会社XXX' do
        it { expect(Syamei.notation('XXX株式会社', 3)).to eq nil }
      end
      context 'XXX株式会社' do
        it { expect(Syamei.notation('株式会社XXX', 3)).to eq nil }
      end
      context '有限会社XXX' do
        it { expect(Syamei.notation('XXX有限会社', 3)).to eq nil }
      end
      context 'XXX有限会社' do
        it { expect(Syamei.notation('有限会社XXX', 3)).to eq nil }
      end
      context '合名会社XXX' do
        it { expect(Syamei.notation('XXX合名会社', 3)).to eq nil }
      end
      context 'XXX合名会社' do
        it { expect(Syamei.notation('合名会社XXX', 3)).to eq nil }
      end
      context '合資会社XXX' do
        it { expect(Syamei.notation('XXX合資会社', 3)).to eq nil }
      end
      context 'XXX合資会社' do
        it { expect(Syamei.notation('合資会社XXX', 3)).to eq nil }
      end
      context '合同会社XXX' do
        it { expect(Syamei.notation('XXX合同会社', 3)).to eq nil }
      end
      context 'XXX合同会社' do
        it { expect(Syamei.notation('合同会社XXX', 3)).to eq nil }
      end
      context '医療法人社団XXX' do
        it { expect(Syamei.notation('XXX医療法人社団', 3)).to eq nil }
      end
      context 'XXX医療法人社団' do
        it { expect(Syamei.notation('医療法人社団XXX', 3)).to eq nil }
      end
      context '医療法人財団XXX' do
        it { expect(Syamei.notation('XXX医療法人財団', 3)).to eq nil }
      end
      context 'XXX医療法人財団' do
        it { expect(Syamei.notation('医療法人財団XXX', 3)).to eq nil }
      end
      context '医療法人XXX' do
        it { expect(Syamei.notation('XXX医療法人', 3)).to eq nil }
      end
      context 'XXX医療法人' do
        it { expect(Syamei.notation('医療法人XXX', 3)).to eq nil }
      end
      context '社会医療法人XXX' do
        it { expect(Syamei.notation('XXX社会医療法人', 3)).to eq nil }
      end
      context 'XXX社会医療法人' do
        it { expect(Syamei.notation('社会医療法人XXX', 3)).to eq nil }
      end
      context '財団法人XXX' do
        it { expect(Syamei.notation('XXX財団法人', 3)).to eq nil }
      end
      context 'XXX財団法人' do
        it { expect(Syamei.notation('財団法人XXX', 3)).to eq nil }
      end
      context '一般財団法人XXX' do
        it { expect(Syamei.notation('XXX一般財団法人', 3)).to eq nil }
      end
      context 'XXX一般財団法人' do
        it { expect(Syamei.notation('一般財団法人XXX', 3)).to eq nil }
      end
      context '公益財団法人XXX' do
        it { expect(Syamei.notation('XXX公益財団法人', 3)).to eq nil }
      end
      context 'XXX公益財団法人' do
        it { expect(Syamei.notation('公益財団法人XXX', 3)).to eq nil }
      end
      context '社団法人XXX' do
        it { expect(Syamei.notation('XXX社団法人', 3)).to eq nil }
      end
      context 'XXX社団法人' do
        it { expect(Syamei.notation('社団法人XXX', 3)).to eq nil }
      end
      context '一般社団法人XXX' do
        it { expect(Syamei.notation('XXX一般社団法人', 3)).to eq nil }
      end
      context 'XXX一般社団法人' do
        it { expect(Syamei.notation('一般社団法人XXX', 3)).to eq nil }
      end
      context '公益社団法人XXX' do
        it { expect(Syamei.notation('XXX公益社団法人', 3)).to eq nil }
      end
      context 'XXX公益社団法人' do
        it { expect(Syamei.notation('公益社団法人XXX', 3)).to eq nil }
      end
      context '宗教法人XXX' do
        it { expect(Syamei.notation('XXX宗教法人', 3)).to eq nil }
      end
      context 'XXX宗教法人' do
        it { expect(Syamei.notation('宗教法人XXX', 3)).to eq nil }
      end
      context '学校法人XXX' do
        it { expect(Syamei.notation('XXX学校法人', 3)).to eq nil }
      end
      context 'XXX学校法人' do
        it { expect(Syamei.notation('学校法人XXX', 3)).to eq nil }
      end
      context '社会福祉法人XXX' do
        it { expect(Syamei.notation('XXX社会福祉法人', 3)).to eq nil }
      end
      context 'XXX社会福祉法人' do
        it { expect(Syamei.notation('社会福祉法人XXX', 3)).to eq nil }
      end
      context '更生保護法人XXX' do
        it { expect(Syamei.notation('XXX更生保護法人', 3)).to eq nil }
      end
      context 'XXX更生保護法人' do
        it { expect(Syamei.notation('更生保護法人XXX', 3)).to eq nil }
      end
      context '相互会社XXX' do
        it { expect(Syamei.notation('XXX相互会社', 3)).to eq nil }
      end
      context 'XXX相互会社' do
        it { expect(Syamei.notation('相互会社XXX', 3)).to eq nil }
      end
      context '特定非営利活動法人XXX' do
        it { expect(Syamei.notation('XXX特定非営利活動法人', 3)).to eq nil }
      end
      context 'XXX特定非営利活動法人' do
        it { expect(Syamei.notation('特定非営利活動法人XXX', 3)).to eq nil }
      end
      context '地方独立行政法人XXX' do
        it { expect(Syamei.notation('XXX地方独立行政法人', 3)).to eq nil }
      end
      context 'XXX地方独立行政法人' do
        it { expect(Syamei.notation('地方独立行政法人XXX', 3)).to eq nil }
      end
      context '弁護士法人XXX' do
        it { expect(Syamei.notation('XXX弁護士法人', 3)).to eq nil }
      end
      context 'XXX弁護士法人' do
        it { expect(Syamei.notation('弁護士法人XXX', 3)).to eq nil }
      end
      context '有限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX有限責任中間法人', 3)).to eq nil }
      end
      context 'XXX有限責任中間法人' do
        it { expect(Syamei.notation('有限責任中間法人XXX', 3)).to eq nil }
      end
      context '無限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX無限責任中間法人', 3)).to eq nil }
      end
      context 'XXX無限責任中間法人' do
        it { expect(Syamei.notation('無限責任中間法人XXX', 3)).to eq nil }
      end
      context '行政書士法人XXX' do
        it { expect(Syamei.notation('XXX行政書士法人', 3)).to eq nil }
      end
      context 'XXX行政書士法人' do
        it { expect(Syamei.notation('行政書士法人XXX', 3)).to eq nil }
      end
      context '税理士法人XXX' do
        it { expect(Syamei.notation('XXX税理士法人', 3)).to eq nil }
      end
      context 'XXX税理士法人' do
        it { expect(Syamei.notation('税理士法人XXX', 3)).to eq nil }
      end
      context '国立大学法人XXX' do
        it { expect(Syamei.notation('XXX国立大学法人', 3)).to eq nil }
      end
      context 'XXX国立大学法人' do
        it { expect(Syamei.notation('国立大学法人XXX', 3)).to eq nil }
      end
      context '公立大学法人XXX' do
        it { expect(Syamei.notation('XXX公立大学法人', 3)).to eq nil }
      end
      context 'XXX公立大学法人' do
        it { expect(Syamei.notation('公立大学法人XXX', 3)).to eq nil }
      end
      context '農事組合法人XXX' do
        it { expect(Syamei.notation('XXX農事組合法人', 3)).to eq nil }
      end
      context 'XXX農事組合法人' do
        it { expect(Syamei.notation('農事組合法人XXX', 3)).to eq nil }
      end
      context '社会保険労務士法人XXX' do
        it { expect(Syamei.notation('XXX社会保険労務士法人', 3)).to eq nil }
      end
      context 'XXX社会保険労務士法人' do
        it { expect(Syamei.notation('社会保険労務士法人XXX', 3)).to eq nil }
      end
      context '営業所XXX' do
        it { expect(Syamei.notation('XXX営業所', 3)).to eq nil }
      end
      context 'XXX営業所' do
        it { expect(Syamei.notation('営業所XXX', 3)).to eq nil }
      end

      context '㈱XXX' do
        it { expect(Syamei.notation('XXX㈱', 3)).to eq nil }
      end
      context 'XXX㈱' do
        it { expect(Syamei.notation('㈱XXX', 3)).to eq nil }
      end
      context '㈲XXX' do
        it { expect(Syamei.notation('XXX㈲', 3)).to eq nil }
      end
      context 'XXX㈲' do
        it { expect(Syamei.notation('㈲XXX', 3)).to eq nil }
      end

      context '(シユツXXX の場合' do
        it { expect(Syamei.notation('(シユツXXX', 3)).to eq '(シユツ' }
      end

      context 'XXX(シユツ の場合' do
        it { expect(Syamei.notation('XXX(シユツ', 3)).to eq '(シユツ' }
      end

      context '(カンリXXX の場合' do
        it { expect(Syamei.notation('(カンリXXX', 3)).to eq '(カンリ' }
      end

      context 'XXX(カンリ の場合' do
        it { expect(Syamei.notation('XXX(カンリ', 3)).to eq '(カンリ' }
      end

      context '(シホウXXX の場合' do
        it { expect(Syamei.notation('(シホウXXX', 3)).to eq '(シホウ' }
      end

      context 'XXX(シホウ の場合' do
        it { expect(Syamei.notation('XXX(シホウ', 3)).to eq '(シホウ' }
      end

      context '(ドクXXX の場合' do
        it { expect(Syamei.notation('(ドクXXX', 3)).to eq '(ドク' }
      end

      context 'XXX(ドク の場合' do
        it { expect(Syamei.notation('XXX(ドク', 3)).to eq '(ドク' }
      end

      context '(カXXX の場合' do
        it { expect(Syamei.notation('(カXXX', 3)).to eq '(カ' }
      end

      context 'XXX(カ の場合' do
        it { expect(Syamei.notation('XXX(カ', 3)).to eq '(カ' }
      end

      context '(ユXXX の場合' do
        it { expect(Syamei.notation('(ユXXX', 3)).to eq '(ユ' }
      end

      context 'XXX(ユ の場合' do
        it { expect(Syamei.notation('XXX(ユ', 3)).to eq '(ユ' }
      end

      context '(メXXX の場合' do
        it { expect(Syamei.notation('(メXXX', 3)).to eq '(メ' }
      end

      context 'XXX(メ の場合' do
        it { expect(Syamei.notation('XXX(メ', 3)).to eq '(メ' }
      end

      context '(シXXX の場合' do
        it { expect(Syamei.notation('(シXXX', 3)).to eq '(シ' }
      end

      context 'XXX(シ の場合' do
        it { expect(Syamei.notation('XXX(シ', 3)).to eq '(シ' }
      end

      context '(ドXXX の場合' do
        it { expect(Syamei.notation('(ドXXX', 3)).to eq '(ド' }
      end

      context 'XXX(ド の場合' do
        it { expect(Syamei.notation('XXX(ド', 3)).to eq '(ド' }
      end

      context '(イXXX の場合' do
        it { expect(Syamei.notation('(イXXX', 3)).to eq '(イ' }
      end

      context 'XXX(イ の場合' do
        it { expect(Syamei.notation('XXX(イ', 3)).to eq '(イ' }
      end

      context '(ホゴXXX の場合' do
        it { expect(Syamei.notation('(ホゴXXX', 3)).to eq '(ホゴ' }
      end

      context 'XXX(ホゴ の場合' do
        it { expect(Syamei.notation('XXX(ホゴ', 3)).to eq '(ホゴ' }
      end

      context '(ソXXX の場合' do
        it { expect(Syamei.notation('(ソXXX', 3)).to eq '(ソ' }
      end

      context 'XXX(ソ の場合' do
        it { expect(Syamei.notation('XXX(ソ', 3)).to eq '(ソ' }
      end

      context '(トクヒXXX の場合' do
        it { expect(Syamei.notation('(トクヒXXX', 3)).to eq '(トクヒ' }
      end

      context 'XXX(トクヒ の場合' do
        it { expect(Syamei.notation('XXX(トクヒ', 3)).to eq '(トクヒ' }
      end

      context '(チドクXXX の場合' do
        it { expect(Syamei.notation('(チドクXXX', 3)).to eq '(チドク' }
      end

      context 'XXX(チドク の場合' do
        it { expect(Syamei.notation('XXX(チドク', 3)).to eq '(チドク' }
      end

      context '(ベンXXX の場合' do
        it { expect(Syamei.notation('(ベンXXX', 3)).to eq '(ベン' }
      end

      context 'XXX(ベン の場合' do
        it { expect(Syamei.notation('XXX(ベン', 3)).to eq '(ベン' }
      end

      context '(チユウXXX の場合' do
        it { expect(Syamei.notation('(チユウXXX', 3)).to eq '(チユウ' }
      end

      context 'XXX(チユウ の場合' do
        it { expect(Syamei.notation('XXX(チユウ', 3)).to eq '(チユウ' }
      end

      context '(ギヨXXX の場合' do
        it { expect(Syamei.notation('(ギヨXXX', 3)).to eq '(ギヨ' }
      end

      context 'XXX(ギヨ の場合' do
        it { expect(Syamei.notation('XXX(ギヨ', 3)).to eq '(ギヨ' }
      end

      context '(ゼイXXX の場合' do
        it { expect(Syamei.notation('(ゼイXXX', 3)).to eq '(ゼイ' }
      end

      context 'XXX(ゼイ の場合' do
        it { expect(Syamei.notation('XXX(ゼイ', 3)).to eq '(ゼイ' }
      end

      context '(ダイXXX の場合' do
        it { expect(Syamei.notation('(ダイXXX', 3)).to eq '(ダイ' }
      end

      context 'XXX(ダイ の場合' do
        it { expect(Syamei.notation('XXX(ダイ', 3)).to eq '(ダイ' }
      end

      context '(ノウXXX の場合' do
        it { expect(Syamei.notation('(ノウXXX', 3)).to eq '(ノウ' }
      end

      context 'XXX(ノウ の場合' do
        it { expect(Syamei.notation('XXX(ノウ', 3)).to eq '(ノウ' }
      end

      context '(ロウムXXX の場合' do
        it { expect(Syamei.notation('(ロウムXXX', 3)).to eq '(ロウム' }
      end

      context 'XXX(ロウム の場合' do
        it { expect(Syamei.notation('XXX(ロウム', 3)).to eq '(ロウム' }
      end

      context '(エイXXX の場合' do
        it { expect(Syamei.notation('(エイXXX', 3)).to eq '(エイ' }
      end

      context 'XXX(エイ の場合' do
        it { expect(Syamei.notation('XXX(エイ', 3)).to eq '(エイ' }
      end
    end
  end
end
