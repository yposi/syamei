RSpec.describe Syamei do
  describe '.only' do
    context 'フル' do
      it { expect(Syamei.only('株式会社xxx')).to eq 'xxx' }
      it { expect(Syamei.only('株式会社xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.only('株式会社xxx', 1)).to eq 'xxx' }
      it { expect(Syamei.only('株式会社xxx', 2)).to eq '株式会社xxx' }
      it { expect(Syamei.only('株式会社xxx', 3)).to eq '株式会社xxx' }
      it { expect(Syamei.only('株式会社xxx', 4)).to eq '株式会社xxx' }
    end

    context '特殊文字' do
      it { expect(Syamei.only('㈱xxx')).to eq 'xxx' }
      it { expect(Syamei.only('㈱xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.only('㈱xxx', 1)).to eq '㈱xxx' }
      it { expect(Syamei.only('㈱xxx', 2)).to eq 'xxx' }
      it { expect(Syamei.only('㈱xxx', 3)).to eq '㈱xxx' }
      it { expect(Syamei.only('㈱xxx', 4)).to eq '㈱xxx' }
    end

    context '省略文字' do
      it { expect(Syamei.only('(株)xxx')).to eq 'xxx' }
      it { expect(Syamei.only('(株)xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.only('(株)xxx', 1)).to eq '(株)xxx' }
      it { expect(Syamei.only('(株)xxx', 2)).to eq '(株)xxx' }
      it { expect(Syamei.only('(株)xxx', 3)).to eq 'xxx' }
      it { expect(Syamei.only('(株)xxx', 4)).to eq '(株)xxx' }
    end

    context '前カナ' do
      it { expect(Syamei.only('カ)xxx')).to eq 'xxx' }
      it { expect(Syamei.only('カ)xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.only('カ)xxx', 1)).to eq 'カ)xxx' }
      it { expect(Syamei.only('カ)xxx', 2)).to eq 'カ)xxx' }
      it { expect(Syamei.only('カ)xxx', 3)).to eq 'カ)xxx' }
      it { expect(Syamei.only('カ)xxx', 4)).to eq 'xxx' }
    end

    context '後カナ' do
      it { expect(Syamei.only('xxx(カ')).to eq 'xxx' }
      it { expect(Syamei.only('xxx(カ', 0)).to eq 'xxx' }
      it { expect(Syamei.only('xxx(カ', 1)).to eq 'xxx(カ' }
      it { expect(Syamei.only('xxx(カ', 2)).to eq 'xxx(カ' }
      it { expect(Syamei.only('xxx(カ', 3)).to eq 'xxx(カ' }
      it { expect(Syamei.only('xxx(カ', 4)).to eq 'xxx' }
    end
  end

  describe '.with_beginning' do
    context 'フル' do
      it { expect(Syamei.with_beginning('株式会社xxx')).to eq '株式会社xxx' }
      it { expect(Syamei.with_beginning('株式会社xxx', 0)).to eq '株式会社xxx' }
      it { expect(Syamei.with_beginning('株式会社xxx', 1)).to eq '株式会社xxx' }
      it { expect(Syamei.with_beginning('株式会社xxx', 2)).to eq '株式会社xxx' }
      it { expect(Syamei.with_beginning('株式会社xxx', 3)).to eq '株式会社xxx' }
      it { expect(Syamei.with_beginning('株式会社xxx', 4)).to eq '株式会社xxx' }
    end

    context '特殊文字' do
      it { expect(Syamei.with_beginning('㈱xxx')).to eq '㈱xxx' }
      it { expect(Syamei.with_beginning('㈱xxx', 0)).to eq '㈱xxx' }
      it { expect(Syamei.with_beginning('㈱xxx', 1)).to eq '㈱xxx' }
      it { expect(Syamei.with_beginning('㈱xxx', 2)).to eq '㈱xxx' }
      it { expect(Syamei.with_beginning('㈱xxx', 3)).to eq '㈱xxx' }
      it { expect(Syamei.with_beginning('㈱xxx', 4)).to eq '㈱xxx' }
    end

    context '省略文字' do
      it { expect(Syamei.with_beginning('(株)xxx')).to eq '(株)xxx' }
      it { expect(Syamei.with_beginning('(株)xxx', 0)).to eq '(株)xxx' }
      it { expect(Syamei.with_beginning('(株)xxx', 1)).to eq '(株)xxx' }
      it { expect(Syamei.with_beginning('(株)xxx', 2)).to eq '(株)xxx' }
      it { expect(Syamei.with_beginning('(株)xxx', 3)).to eq '(株)xxx' }
      it { expect(Syamei.with_beginning('(株)xxx', 4)).to eq '(株)xxx' }
    end

    context '前カナ' do
      it { expect(Syamei.with_beginning('カ)xxx')).to eq 'カ)xxx' }
      it { expect(Syamei.with_beginning('カ)xxx', 0)).to eq 'カ)xxx' }
      it { expect(Syamei.with_beginning('カ)xxx', 1)).to eq 'カ)xxx' }
      it { expect(Syamei.with_beginning('カ)xxx', 2)).to eq 'カ)xxx' }
      it { expect(Syamei.with_beginning('カ)xxx', 3)).to eq 'カ)xxx' }
      it { expect(Syamei.with_beginning('カ)xxx', 4)).to eq 'カ)xxx' }
    end

    context '後カナ' do
      it { expect(Syamei.with_beginning('xxx(カ')).to eq 'xxx' }
      it { expect(Syamei.with_beginning('xxx(カ', 0)).to eq 'xxx' }
      it { expect(Syamei.with_beginning('xxx(カ', 1)).to eq 'xxx(カ' }
      it { expect(Syamei.with_beginning('xxx(カ', 2)).to eq 'xxx(カ' }
      it { expect(Syamei.with_beginning('xxx(カ', 3)).to eq 'xxx(カ' }
      it { expect(Syamei.with_beginning('xxx(カ', 4)).to eq 'xxx' }
    end
  end

  describe '.with_end' do
    context 'フル' do
      it { expect(Syamei.with_end('株式会社xxx')).to eq 'xxx' }
      it { expect(Syamei.with_end('株式会社xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.with_end('株式会社xxx', 1)).to eq 'xxx' }
      it { expect(Syamei.with_end('株式会社xxx', 2)).to eq '株式会社xxx' }
      it { expect(Syamei.with_end('株式会社xxx', 3)).to eq '株式会社xxx' }
      it { expect(Syamei.with_end('株式会社xxx', 4)).to eq '株式会社xxx' }
    end

    context '特殊文字' do
      it { expect(Syamei.with_end('㈱xxx')).to eq 'xxx' }
      it { expect(Syamei.with_end('㈱xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.with_end('㈱xxx', 1)).to eq '㈱xxx' }
      it { expect(Syamei.with_end('㈱xxx', 2)).to eq 'xxx' }
      it { expect(Syamei.with_end('㈱xxx', 3)).to eq '㈱xxx' }
      it { expect(Syamei.with_end('㈱xxx', 4)).to eq '㈱xxx' }
    end

    context '省略文字' do
      it { expect(Syamei.with_end('(株)xxx')).to eq 'xxx' }
      it { expect(Syamei.with_end('(株)xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.with_end('(株)xxx', 1)).to eq '(株)xxx' }
      it { expect(Syamei.with_end('(株)xxx', 2)).to eq '(株)xxx' }
      it { expect(Syamei.with_end('(株)xxx', 3)).to eq 'xxx' }
      it { expect(Syamei.with_end('(株)xxx', 4)).to eq '(株)xxx' }
    end

    context '前カナ' do
      it { expect(Syamei.with_end('カ)xxx')).to eq 'xxx' }
      it { expect(Syamei.with_end('カ)xxx', 0)).to eq 'xxx' }
      it { expect(Syamei.with_end('カ)xxx', 1)).to eq 'カ)xxx' }
      it { expect(Syamei.with_end('カ)xxx', 2)).to eq 'カ)xxx' }
      it { expect(Syamei.with_end('カ)xxx', 3)).to eq 'カ)xxx' }
      it { expect(Syamei.with_end('カ)xxx', 4)).to eq 'xxx' }
    end

    context '後カナ' do
      it { expect(Syamei.with_end('xxx(カ')).to eq 'xxx(カ' }
      it { expect(Syamei.with_end('xxx(カ', 0)).to eq 'xxx(カ' }
      it { expect(Syamei.with_end('xxx(カ', 1)).to eq 'xxx(カ' }
      it { expect(Syamei.with_end('xxx(カ', 2)).to eq 'xxx(カ' }
      it { expect(Syamei.with_end('xxx(カ', 3)).to eq 'xxx(カ' }
      it { expect(Syamei.with_end('xxx(カ', 4)).to eq 'xxx(カ' }
    end
  end

  describe '.with?' do
    context 'フル' do
      it { expect(Syamei.with?('株式会社xxx')).to eq true }
      it { expect(Syamei.with?('株式会社xxx', 0)).to eq true }
      it { expect(Syamei.with?('株式会社xxx', 1)).to eq true }
      it { expect(Syamei.with?('株式会社xxx', 2)).to eq false }
      it { expect(Syamei.with?('株式会社xxx', 3)).to eq false }
      it { expect(Syamei.with?('株式会社xxx', 4)).to eq false }
    end

    context '特殊文字' do
      it { expect(Syamei.with?('㈱xxx')).to eq true }
      it { expect(Syamei.with?('㈱xxx', 0)).to eq true }
      it { expect(Syamei.with?('㈱xxx', 1)).to eq false }
      it { expect(Syamei.with?('㈱xxx', 2)).to eq true }
      it { expect(Syamei.with?('㈱xxx', 3)).to eq false }
      it { expect(Syamei.with?('㈱xxx', 4)).to eq false }
    end

    context '省略文字' do
      it { expect(Syamei.with?('(株)xxx')).to eq true }
      it { expect(Syamei.with?('(株)xxx', 0)).to eq true }
      it { expect(Syamei.with?('(株)xxx', 1)).to eq false }
      it { expect(Syamei.with?('(株)xxx', 2)).to eq false }
      it { expect(Syamei.with?('(株)xxx', 3)).to eq true }
      it { expect(Syamei.with?('(株)xxx', 4)).to eq false }
    end

    context '前カナ' do
      it { expect(Syamei.with?('カ)xxx')).to eq true }
      it { expect(Syamei.with?('カ)xxx', 0)).to eq true }
      it { expect(Syamei.with?('カ)xxx', 1)).to eq false }
      it { expect(Syamei.with?('カ)xxx', 2)).to eq false }
      it { expect(Syamei.with?('カ)xxx', 3)).to eq false }
      it { expect(Syamei.with?('カ)xxx', 4)).to eq true }
    end

    context '後カナ' do
      it { expect(Syamei.with?('xxx(カ')).to eq true }
      it { expect(Syamei.with?('xxx(カ', 0)).to eq true }
      it { expect(Syamei.with?('xxx(カ', 1)).to eq false }
      it { expect(Syamei.with?('xxx(カ', 2)).to eq false }
      it { expect(Syamei.with?('xxx(カ', 3)).to eq false }
      it { expect(Syamei.with?('xxx(カ', 4)).to eq true }
    end
  end

  describe '.with_beginning?' do
    context 'フル' do
      it { expect(Syamei.with_beginning?('株式会社xxx')).to eq true }
      it { expect(Syamei.with_beginning?('株式会社xxx', 0)).to eq true }
      it { expect(Syamei.with_beginning?('株式会社xxx', 1)).to eq true }
      it { expect(Syamei.with_beginning?('株式会社xxx', 2)).to eq false }
      it { expect(Syamei.with_beginning?('株式会社xxx', 3)).to eq false }
      it { expect(Syamei.with_beginning?('株式会社xxx', 4)).to eq false }
    end

    context '特殊文字' do
      it { expect(Syamei.with_beginning?('㈱xxx')).to eq true }
      it { expect(Syamei.with_beginning?('㈱xxx', 0)).to eq true }
      it { expect(Syamei.with_beginning?('㈱xxx', 1)).to eq false }
      it { expect(Syamei.with_beginning?('㈱xxx', 2)).to eq true }
      it { expect(Syamei.with_beginning?('㈱xxx', 3)).to eq false }
      it { expect(Syamei.with_beginning?('㈱xxx', 4)).to eq false }
    end

    context '省略文字' do
      it { expect(Syamei.with_beginning?('(株)xxx')).to eq true }
      it { expect(Syamei.with_beginning?('(株)xxx', 0)).to eq true }
      it { expect(Syamei.with_beginning?('(株)xxx', 1)).to eq false }
      it { expect(Syamei.with_beginning?('(株)xxx', 2)).to eq false }
      it { expect(Syamei.with_beginning?('(株)xxx', 3)).to eq true }
      it { expect(Syamei.with_beginning?('(株)xxx', 4)).to eq false }
    end

    context '前カナ' do
      it { expect(Syamei.with_beginning?('カ)xxx')).to eq true }
      it { expect(Syamei.with_beginning?('カ)xxx', 0)).to eq true }
      it { expect(Syamei.with_beginning?('カ)xxx', 1)).to eq false }
      it { expect(Syamei.with_beginning?('カ)xxx', 2)).to eq false }
      it { expect(Syamei.with_beginning?('カ)xxx', 3)).to eq false }
      it { expect(Syamei.with_beginning?('カ)xxx', 4)).to eq true }
    end

    context '後カナ' do
      it { expect(Syamei.with_beginning?('xxx(カ')).to eq false }
      it { expect(Syamei.with_beginning?('xxx(カ', 0)).to eq false }
      it { expect(Syamei.with_beginning?('xxx(カ', 1)).to eq false }
      it { expect(Syamei.with_beginning?('xxx(カ', 2)).to eq false }
      it { expect(Syamei.with_beginning?('xxx(カ', 3)).to eq false }
      it { expect(Syamei.with_beginning?('xxx(カ', 4)).to eq false }
    end
  end

  describe '.with_end?' do
    context 'フル' do
      it { expect(Syamei.with_end?('株式会社xxx')).to eq false }
      it { expect(Syamei.with_end?('株式会社xxx', 0)).to eq false }
      it { expect(Syamei.with_end?('株式会社xxx', 1)).to eq false }
      it { expect(Syamei.with_end?('株式会社xxx', 2)).to eq false }
      it { expect(Syamei.with_end?('株式会社xxx', 3)).to eq false }
      it { expect(Syamei.with_end?('株式会社xxx', 4)).to eq false }
    end

    context '特殊文字' do
      it { expect(Syamei.with_end?('㈱xxx')).to eq false }
      it { expect(Syamei.with_end?('㈱xxx', 0)).to eq false }
      it { expect(Syamei.with_end?('㈱xxx', 1)).to eq false }
      it { expect(Syamei.with_end?('㈱xxx', 2)).to eq false }
      it { expect(Syamei.with_end?('㈱xxx', 3)).to eq false }
      it { expect(Syamei.with_end?('㈱xxx', 4)).to eq false }
    end

    context '省略文字' do
      it { expect(Syamei.with_end?('(株)xxx')).to eq false }
      it { expect(Syamei.with_end?('(株)xxx', 0)).to eq false }
      it { expect(Syamei.with_end?('(株)xxx', 1)).to eq false }
      it { expect(Syamei.with_end?('(株)xxx', 2)).to eq false }
      it { expect(Syamei.with_end?('(株)xxx', 3)).to eq false }
      it { expect(Syamei.with_end?('(株)xxx', 4)).to eq false }
    end

    context '前カナ' do
      it { expect(Syamei.with_end?('カ)xxx')).to eq false }
      it { expect(Syamei.with_end?('カ)xxx', 0)).to eq false }
      it { expect(Syamei.with_end?('カ)xxx', 1)).to eq false }
      it { expect(Syamei.with_end?('カ)xxx', 2)).to eq false }
      it { expect(Syamei.with_end?('カ)xxx', 3)).to eq false }
      it { expect(Syamei.with_end?('カ)xxx', 4)).to eq false }
    end

    context '後カナ' do
      it { expect(Syamei.with_end?('xxx(カ')).to eq true }
      it { expect(Syamei.with_end?('xxx(カ', 0)).to eq true }
      it { expect(Syamei.with_end?('xxx(カ', 1)).to eq false }
      it { expect(Syamei.with_end?('xxx(カ', 2)).to eq false }
      it { expect(Syamei.with_end?('xxx(カ', 3)).to eq false }
      it { expect(Syamei.with_end?('xxx(カ', 4)).to eq true }
    end
  end

  describe '.notation' do
    context 'フル' do
      it { expect(Syamei.notation('株式会社xxx')).to eq '株式会社' }
    end

    context '特殊文字' do
      it { expect(Syamei.notation('㈱xxx')).to eq '㈱' }
    end

    context '省略文字' do
      it { expect(Syamei.notation('(株)xxx')).to eq '(株)' }
    end

    context '前カナ' do
      it { expect(Syamei.notation('カ)xxx')).to eq 'カ)' }
    end

    context '後カナ' do
      it { expect(Syamei.notation('xxx(カ')).to eq '(カ' }
    end
  end
end
