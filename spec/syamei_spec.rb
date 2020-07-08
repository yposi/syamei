RSpec.describe Syamei do
  describe '.with_beginning?' do
    context 'name is nil' do
      it { expect(Syamei.with_beginning?(nil, 0)).to be_falsey }
    end
    context 'name is empty' do
      it { expect(Syamei.with_beginning?('', 0)).to be_falsey }
    end
    context 'type: 0' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_beginning?('株式会社XXX', 0)).to be_truthy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_beginning?('XXX株式会社', 0)).to be_falsy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_beginning?('有限会社XXX', 0)).to be_truthy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_beginning?('XXX有限会社', 0)).to be_falsy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_beginning?('合名会社XXX', 0)).to be_truthy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_beginning?('XXX合名会社', 0)).to be_falsy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_beginning?('合資会社XXX', 0)).to be_truthy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_beginning?('XXX合資会社', 0)).to be_falsy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_beginning?('合同会社XXX', 0)).to be_truthy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_beginning?('XXX合同会社', 0)).to be_falsy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_beginning?('医療法人XXX', 0)).to be_truthy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_beginning?('XXX医療法人', 0)).to be_falsy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_beginning?('医療法人社団XXX', 0)).to be_truthy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_beginning?('XXX医療法人社団', 0)).to be_falsy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_beginning?('医療法人財団XXX', 0)).to be_truthy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_beginning?('XXX医療法人財団', 0)).to be_falsy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_beginning?('社会医療法人XXX', 0)).to be_truthy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_beginning?('XXX社会医療法人', 0)).to be_falsy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_beginning?('財団法人XXX', 0)).to be_truthy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_beginning?('XXX財団法人', 0)).to be_falsy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_beginning?('一般財団法人XXX', 0)).to be_truthy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_beginning?('XXX一般財団法人', 0)).to be_falsy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_beginning?('公益財団法人XXX', 0)).to be_truthy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_beginning?('XXX公益財団法人', 0)).to be_falsy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_beginning?('社団法人XXX', 0)).to be_truthy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_beginning?('XXX社団法人', 0)).to be_falsy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_beginning?('一般社団法人XXX', 0)).to be_truthy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_beginning?('XXX一般社団法人', 0)).to be_falsy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_beginning?('公益社団法人XXX', 0)).to be_truthy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_beginning?('XXX公益社団法人', 0)).to be_falsy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_beginning?('宗教法人XXX', 0)).to be_truthy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_beginning?('XXX宗教法人', 0)).to be_falsy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_beginning?('㈱XXX', 0)).to be_truthy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_beginning?('XXX㈱', 0)).to be_falsy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_beginning?('(株)XXX', 0)).to be_truthy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_beginning?('XXX(株)', 0)).to be_falsy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_beginning?('㈲XXX', 0)).to be_truthy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_beginning?('XXX㈲', 0)).to be_falsy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_beginning?('(有)XXX', 0)).to be_truthy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_beginning?('XXX(有)', 0)).to be_falsy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_beginning?('(名)XXX', 0)).to be_truthy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_beginning?('XXX(名)', 0)).to be_falsy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_beginning?('(資)XXX', 0)).to be_truthy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_beginning?('XXX(資)', 0)).to be_falsy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_beginning?('(同)XXX', 0)).to be_truthy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_beginning?('XXX(同)', 0)).to be_falsy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_beginning?('(医)XXX', 0)).to be_truthy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_beginning?('XXX(医)', 0)).to be_falsy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_beginning?('(財)XXX', 0)).to be_truthy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_beginning?('XXX(財)', 0)).to be_falsy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_beginning?('(一財)XXX', 0)).to be_truthy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_beginning?('XXX(一財)', 0)).to be_falsy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_beginning?('(公財)XXX', 0)).to be_truthy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_beginning?('XXX(公財)', 0)).to be_falsy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_beginning?('(社)XXX', 0)).to be_truthy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_beginning?('XXX(社)', 0)).to be_falsy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_beginning?('(一社)XXX', 0)).to be_truthy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_beginning?('XXX(一社)', 0)).to be_falsy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_beginning?('(公社)XXX', 0)).to be_truthy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_beginning?('XXX(公社)', 0)).to be_falsy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_beginning?('(宗)XXX', 0)).to be_truthy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_beginning?('XXX(宗)', 0)).to be_falsy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_beginning?('(学)XXX', 0)).to be_truthy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_beginning?('XXX(学)', 0)).to be_falsy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_beginning?('(福)XXX', 0)).to be_truthy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_beginning?('XXX(福)', 0)).to be_falsy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_beginning?('(相)XXX', 0)).to be_truthy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_beginning?('XXX(相)', 0)).to be_falsy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_beginning?('(特非)XXX', 0)).to be_truthy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_beginning?('XXX(特非)', 0)).to be_falsy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_beginning?('(独)XXX', 0)).to be_truthy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_beginning?('XXX(独)', 0)).to be_falsy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_beginning?('(地独)XXX', 0)).to be_truthy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_beginning?('XXX(地独)', 0)).to be_falsy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_beginning?('(弁)XXX', 0)).to be_truthy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_beginning?('XXX(弁)', 0)).to be_falsy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_beginning?('(行)XXX', 0)).to be_truthy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_beginning?('XXX(行)', 0)).to be_falsy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_beginning?('(司)XXX', 0)).to be_truthy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_beginning?('XXX(司)', 0)).to be_falsy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_beginning?('(税)XXX', 0)).to be_truthy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_beginning?('XXX(税)', 0)).to be_falsy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_beginning?('(中)XXX', 0)).to be_truthy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_beginning?('XXX(中)', 0)).to be_falsy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_beginning?('(大)XXX', 0)).to be_truthy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_beginning?('XXX(大)', 0)).to be_falsy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_beginning?('(営)XXX', 0)).to be_truthy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_beginning?('XXX(営)', 0)).to be_falsy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_beginning?('(出)XXX', 0)).to be_truthy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_beginning?('XXX(出)', 0)).to be_falsy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_beginning?('カ)XXX', 0)).to be_truthy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_beginning?('XXXカ)', 0)).to be_falsy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_beginning?('(カ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_beginning?('XXX(カ)', 0)).to be_falsy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_beginning?('(カXXX', 0)).to be_truthy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_beginning?('XXX(カ', 0)).to be_falsy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_beginning?('ユ)XXX', 0)).to be_truthy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_beginning?('XXXユ)', 0)).to be_falsy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_beginning?('(ユ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_beginning?('XXX(ユ)', 0)).to be_falsy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_beginning?('(ユXXX', 0)).to be_truthy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_beginning?('XXX(ユ', 0)).to be_falsy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_beginning?('メ)XXX', 0)).to be_truthy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_beginning?('XXXメ)', 0)).to be_falsy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_beginning?('(メ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_beginning?('XXX(メ)', 0)).to be_falsy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_beginning?('(メXXX', 0)).to be_truthy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_beginning?('XXX(メ', 0)).to be_falsy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_beginning?('シ)XXX', 0)).to be_truthy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_beginning?('XXXシ)', 0)).to be_falsy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_beginning?('(シ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_beginning?('XXX(シ)', 0)).to be_falsy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_beginning?('(シXXX', 0)).to be_truthy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_beginning?('XXX(シ', 0)).to be_falsy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_beginning?('ド)XXX', 0)).to be_truthy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_beginning?('XXXド)', 0)).to be_falsy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_beginning?('(ド)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_beginning?('XXX(ド)', 0)).to be_falsy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_beginning?('(ドXXX', 0)).to be_truthy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_beginning?('XXX(ド', 0)).to be_falsy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_beginning?('シユウ)XXX', 0)).to be_truthy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_beginning?('XXXシユウ)', 0)).to be_falsy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_beginning?('ガク)XXX', 0)).to be_truthy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_beginning?('XXXガク)', 0)).to be_falsy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_beginning?('フク)XXX', 0)).to be_truthy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_beginning?('XXXフク)', 0)).to be_falsy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_beginning?('ホゴ)XXX', 0)).to be_truthy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXXホゴ)', 0)).to be_falsy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('(ホゴ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ)', 0)).to be_falsy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_beginning?('(ホゴXXX', 0)).to be_truthy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ', 0)).to be_falsy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_beginning?('ソ)XXX', 0)).to be_truthy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_beginning?('XXXソ)', 0)).to be_falsy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_beginning?('(ソ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_beginning?('XXX(ソ)', 0)).to be_falsy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_beginning?('(ソXXX', 0)).to be_truthy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_beginning?('XXX(ソ', 0)).to be_falsy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_beginning?('トクヒ)XXX', 0)).to be_truthy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXXトクヒ)', 0)).to be_falsy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('(トクヒ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ)', 0)).to be_falsy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_beginning?('(トクヒXXX', 0)).to be_truthy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ', 0)).to be_falsy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_beginning?('ドク)XXX', 0)).to be_truthy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_beginning?('XXXドク)', 0)).to be_falsy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_beginning?('(ドク)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_beginning?('XXX(ドク)', 0)).to be_falsy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_beginning?('(ドクXXX', 0)).to be_truthy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_beginning?('XXX(ドク', 0)).to be_falsy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_beginning?('チドク)XXX', 0)).to be_truthy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_beginning?('XXXチドク)', 0)).to be_falsy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_beginning?('(チドク)XXX', 0)).to be_truthy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_beginning?('XXX(チドク)', 0)).to be_falsy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_beginning?('(チドクXXX', 0)).to be_truthy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_beginning?('XXX(チドク', 0)).to be_falsy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_beginning?('ベン)XXX', 0)).to be_truthy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_beginning?('XXXベン)', 0)).to be_falsy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_beginning?('(ベン)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_beginning?('XXX(ベン)', 0)).to be_falsy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_beginning?('(ベンXXX', 0)).to be_truthy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_beginning?('XXX(ベン', 0)).to be_falsy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_beginning?('ギヨ)XXX', 0)).to be_truthy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXXギヨ)', 0)).to be_falsy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('(ギヨ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ)', 0)).to be_falsy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_beginning?('(ギヨXXX', 0)).to be_truthy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ', 0)).to be_falsy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_beginning?('シホウ)XXX', 0)).to be_truthy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_beginning?('XXXシホウ)', 0)).to be_falsy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('(シホウ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('XXX(シホウ)', 0)).to be_falsy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_beginning?('(シホウXXX', 0)).to be_truthy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_beginning?('XXX(シホウ', 0)).to be_falsy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_beginning?('ゼイ)XXX', 0)).to be_truthy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXXゼイ)', 0)).to be_falsy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('(ゼイ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ)', 0)).to be_falsy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_beginning?('(ゼイXXX', 0)).to be_truthy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ', 0)).to be_falsy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_beginning?('ノウ)XXX', 0)).to be_truthy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_beginning?('XXXノウ)', 0)).to be_falsy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('(ノウ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('XXX(ノウ)', 0)).to be_falsy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_beginning?('(ノウXXX', 0)).to be_truthy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_beginning?('XXX(ノウ', 0)).to be_falsy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_beginning?('カンリ)XXX', 0)).to be_truthy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_beginning?('XXXカンリ)', 0)).to be_falsy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('(カンリ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('XXX(カンリ)', 0)).to be_falsy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_beginning?('(カンリXXX', 0)).to be_truthy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_beginning?('XXX(カンリ', 0)).to be_falsy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_beginning?('ロウム)XXX', 0)).to be_truthy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_beginning?('XXXロウム)', 0)).to be_falsy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('(ロウム)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('XXX(ロウム)', 0)).to be_falsy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_beginning?('(ロウムXXX', 0)).to be_truthy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_beginning?('XXX(ロウム', 0)).to be_falsy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('(ダイ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ダイ)', 0)).to be_falsy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_beginning?('(ダイXXX', 0)).to be_truthy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_beginning?('XXX(ダイ', 0)).to be_falsy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_beginning?('エイ)XXX', 0)).to be_truthy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_beginning?('XXXエイ)', 0)).to be_falsy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_beginning?('(エイ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_beginning?('XXX(エイ)', 0)).to be_falsy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_beginning?('(エイXXX', 0)).to be_truthy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_beginning?('XXX(エイ', 0)).to be_falsy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_beginning?('シユツ)XXX', 0)).to be_truthy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_beginning?('XXXシユツ)', 0)).to be_falsy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('(シユツ)XXX', 0)).to be_truthy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('XXX(シユツ)', 0)).to be_falsy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_beginning?('(シユツXXX', 0)).to be_truthy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_beginning?('XXX(シユツ', 0)).to be_falsy }
      end
    end
    context 'type: 1' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_beginning?('株式会社XXX', 1)).to be_truthy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_beginning?('XXX株式会社', 1)).to be_falsy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_beginning?('有限会社XXX', 1)).to be_truthy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_beginning?('XXX有限会社', 1)).to be_falsy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_beginning?('合名会社XXX', 1)).to be_truthy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_beginning?('XXX合名会社', 1)).to be_falsy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_beginning?('合資会社XXX', 1)).to be_truthy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_beginning?('XXX合資会社', 1)).to be_falsy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_beginning?('合同会社XXX', 1)).to be_truthy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_beginning?('XXX合同会社', 1)).to be_falsy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_beginning?('医療法人XXX', 1)).to be_truthy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_beginning?('XXX医療法人', 1)).to be_falsy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_beginning?('医療法人社団XXX', 1)).to be_truthy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_beginning?('XXX医療法人社団', 1)).to be_falsy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_beginning?('医療法人財団XXX', 1)).to be_truthy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_beginning?('XXX医療法人財団', 1)).to be_falsy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_beginning?('社会医療法人XXX', 1)).to be_truthy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_beginning?('XXX社会医療法人', 1)).to be_falsy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_beginning?('財団法人XXX', 1)).to be_truthy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_beginning?('XXX財団法人', 1)).to be_falsy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_beginning?('一般財団法人XXX', 1)).to be_truthy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_beginning?('XXX一般財団法人', 1)).to be_falsy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_beginning?('公益財団法人XXX', 1)).to be_truthy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_beginning?('XXX公益財団法人', 1)).to be_falsy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_beginning?('社団法人XXX', 1)).to be_truthy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_beginning?('XXX社団法人', 1)).to be_falsy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_beginning?('一般社団法人XXX', 1)).to be_truthy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_beginning?('XXX一般社団法人', 1)).to be_falsy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_beginning?('公益社団法人XXX', 1)).to be_truthy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_beginning?('XXX公益社団法人', 1)).to be_falsy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_beginning?('宗教法人XXX', 1)).to be_truthy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_beginning?('XXX宗教法人', 1)).to be_falsy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_beginning?('㈱XXX', 1)).to be_falsy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_beginning?('XXX㈱', 1)).to be_falsy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_beginning?('(株)XXX', 1)).to be_falsy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_beginning?('XXX(株)', 1)).to be_falsy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_beginning?('㈲XXX', 1)).to be_falsy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_beginning?('XXX㈲', 1)).to be_falsy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_beginning?('(有)XXX', 1)).to be_falsy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_beginning?('XXX(有)', 1)).to be_falsy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_beginning?('(名)XXX', 1)).to be_falsy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_beginning?('XXX(名)', 1)).to be_falsy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_beginning?('(資)XXX', 1)).to be_falsy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_beginning?('XXX(資)', 1)).to be_falsy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_beginning?('(同)XXX', 1)).to be_falsy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_beginning?('XXX(同)', 1)).to be_falsy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_beginning?('(医)XXX', 1)).to be_falsy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_beginning?('XXX(医)', 1)).to be_falsy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_beginning?('(財)XXX', 1)).to be_falsy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_beginning?('XXX(財)', 1)).to be_falsy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_beginning?('(一財)XXX', 1)).to be_falsy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_beginning?('XXX(一財)', 1)).to be_falsy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_beginning?('(公財)XXX', 1)).to be_falsy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_beginning?('XXX(公財)', 1)).to be_falsy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_beginning?('(社)XXX', 1)).to be_falsy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_beginning?('XXX(社)', 1)).to be_falsy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_beginning?('(一社)XXX', 1)).to be_falsy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_beginning?('XXX(一社)', 1)).to be_falsy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_beginning?('(公社)XXX', 1)).to be_falsy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_beginning?('XXX(公社)', 1)).to be_falsy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_beginning?('(宗)XXX', 1)).to be_falsy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_beginning?('XXX(宗)', 1)).to be_falsy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_beginning?('(学)XXX', 1)).to be_falsy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_beginning?('XXX(学)', 1)).to be_falsy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_beginning?('(福)XXX', 1)).to be_falsy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_beginning?('XXX(福)', 1)).to be_falsy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_beginning?('(相)XXX', 1)).to be_falsy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_beginning?('XXX(相)', 1)).to be_falsy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_beginning?('(特非)XXX', 1)).to be_falsy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_beginning?('XXX(特非)', 1)).to be_falsy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_beginning?('(独)XXX', 1)).to be_falsy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_beginning?('XXX(独)', 1)).to be_falsy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_beginning?('(地独)XXX', 1)).to be_falsy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_beginning?('XXX(地独)', 1)).to be_falsy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_beginning?('(弁)XXX', 1)).to be_falsy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_beginning?('XXX(弁)', 1)).to be_falsy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_beginning?('(行)XXX', 1)).to be_falsy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_beginning?('XXX(行)', 1)).to be_falsy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_beginning?('(司)XXX', 1)).to be_falsy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_beginning?('XXX(司)', 1)).to be_falsy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_beginning?('(税)XXX', 1)).to be_falsy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_beginning?('XXX(税)', 1)).to be_falsy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_beginning?('(中)XXX', 1)).to be_falsy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_beginning?('XXX(中)', 1)).to be_falsy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_beginning?('(大)XXX', 1)).to be_falsy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_beginning?('XXX(大)', 1)).to be_falsy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_beginning?('(営)XXX', 1)).to be_falsy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_beginning?('XXX(営)', 1)).to be_falsy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_beginning?('(出)XXX', 1)).to be_falsy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_beginning?('XXX(出)', 1)).to be_falsy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_beginning?('カ)XXX', 1)).to be_falsy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_beginning?('XXXカ)', 1)).to be_falsy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_beginning?('(カ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_beginning?('XXX(カ)', 1)).to be_falsy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_beginning?('(カXXX', 1)).to be_falsy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_beginning?('XXX(カ', 1)).to be_falsy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_beginning?('ユ)XXX', 1)).to be_falsy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_beginning?('XXXユ)', 1)).to be_falsy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_beginning?('(ユ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_beginning?('XXX(ユ)', 1)).to be_falsy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_beginning?('(ユXXX', 1)).to be_falsy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_beginning?('XXX(ユ', 1)).to be_falsy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_beginning?('メ)XXX', 1)).to be_falsy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_beginning?('XXXメ)', 1)).to be_falsy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_beginning?('(メ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_beginning?('XXX(メ)', 1)).to be_falsy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_beginning?('(メXXX', 1)).to be_falsy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_beginning?('XXX(メ', 1)).to be_falsy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_beginning?('シ)XXX', 1)).to be_falsy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_beginning?('XXXシ)', 1)).to be_falsy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_beginning?('(シ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_beginning?('XXX(シ)', 1)).to be_falsy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_beginning?('(シXXX', 1)).to be_falsy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_beginning?('XXX(シ', 1)).to be_falsy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_beginning?('ド)XXX', 1)).to be_falsy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_beginning?('XXXド)', 1)).to be_falsy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_beginning?('(ド)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_beginning?('XXX(ド)', 1)).to be_falsy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_beginning?('(ドXXX', 1)).to be_falsy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_beginning?('XXX(ド', 1)).to be_falsy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_beginning?('シユウ)XXX', 1)).to be_falsy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_beginning?('XXXシユウ)', 1)).to be_falsy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_beginning?('ガク)XXX', 1)).to be_falsy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_beginning?('XXXガク)', 1)).to be_falsy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_beginning?('フク)XXX', 1)).to be_falsy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_beginning?('XXXフク)', 1)).to be_falsy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_beginning?('ホゴ)XXX', 1)).to be_falsy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXXホゴ)', 1)).to be_falsy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('(ホゴ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ)', 1)).to be_falsy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_beginning?('(ホゴXXX', 1)).to be_falsy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ', 1)).to be_falsy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_beginning?('ソ)XXX', 1)).to be_falsy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_beginning?('XXXソ)', 1)).to be_falsy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_beginning?('(ソ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_beginning?('XXX(ソ)', 1)).to be_falsy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_beginning?('(ソXXX', 1)).to be_falsy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_beginning?('XXX(ソ', 1)).to be_falsy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_beginning?('トクヒ)XXX', 1)).to be_falsy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXXトクヒ)', 1)).to be_falsy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('(トクヒ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ)', 1)).to be_falsy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_beginning?('(トクヒXXX', 1)).to be_falsy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ', 1)).to be_falsy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_beginning?('ドク)XXX', 1)).to be_falsy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_beginning?('XXXドク)', 1)).to be_falsy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_beginning?('(ドク)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_beginning?('XXX(ドク)', 1)).to be_falsy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_beginning?('(ドクXXX', 1)).to be_falsy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_beginning?('XXX(ドク', 1)).to be_falsy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_beginning?('チドク)XXX', 1)).to be_falsy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_beginning?('XXXチドク)', 1)).to be_falsy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_beginning?('(チドク)XXX', 1)).to be_falsy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_beginning?('XXX(チドク)', 1)).to be_falsy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_beginning?('(チドクXXX', 1)).to be_falsy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_beginning?('XXX(チドク', 1)).to be_falsy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_beginning?('ベン)XXX', 1)).to be_falsy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_beginning?('XXXベン)', 1)).to be_falsy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_beginning?('(ベン)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_beginning?('XXX(ベン)', 1)).to be_falsy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_beginning?('(ベンXXX', 1)).to be_falsy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_beginning?('XXX(ベン', 1)).to be_falsy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_beginning?('ギヨ)XXX', 1)).to be_falsy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXXギヨ)', 1)).to be_falsy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('(ギヨ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ)', 1)).to be_falsy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_beginning?('(ギヨXXX', 1)).to be_falsy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ', 1)).to be_falsy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_beginning?('シホウ)XXX', 1)).to be_falsy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_beginning?('XXXシホウ)', 1)).to be_falsy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('(シホウ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('XXX(シホウ)', 1)).to be_falsy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_beginning?('(シホウXXX', 1)).to be_falsy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_beginning?('XXX(シホウ', 1)).to be_falsy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_beginning?('ゼイ)XXX', 1)).to be_falsy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXXゼイ)', 1)).to be_falsy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('(ゼイ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ)', 1)).to be_falsy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_beginning?('(ゼイXXX', 1)).to be_falsy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ', 1)).to be_falsy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_beginning?('ノウ)XXX', 1)).to be_falsy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_beginning?('XXXノウ)', 1)).to be_falsy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('(ノウ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('XXX(ノウ)', 1)).to be_falsy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_beginning?('(ノウXXX', 1)).to be_falsy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_beginning?('XXX(ノウ', 1)).to be_falsy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_beginning?('カンリ)XXX', 1)).to be_falsy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_beginning?('XXXカンリ)', 1)).to be_falsy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('(カンリ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('XXX(カンリ)', 1)).to be_falsy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_beginning?('(カンリXXX', 1)).to be_falsy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_beginning?('XXX(カンリ', 1)).to be_falsy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_beginning?('ロウム)XXX', 1)).to be_falsy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_beginning?('XXXロウム)', 1)).to be_falsy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('(ロウム)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('XXX(ロウム)', 1)).to be_falsy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_beginning?('(ロウムXXX', 1)).to be_falsy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_beginning?('XXX(ロウム', 1)).to be_falsy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('(ダイ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ダイ)', 1)).to be_falsy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_beginning?('(ダイXXX', 1)).to be_falsy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_beginning?('XXX(ダイ', 1)).to be_falsy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_beginning?('エイ)XXX', 1)).to be_falsy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_beginning?('XXXエイ)', 1)).to be_falsy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_beginning?('(エイ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_beginning?('XXX(エイ)', 1)).to be_falsy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_beginning?('(エイXXX', 1)).to be_falsy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_beginning?('XXX(エイ', 1)).to be_falsy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_beginning?('シユツ)XXX', 1)).to be_falsy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_beginning?('XXXシユツ)', 1)).to be_falsy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('(シユツ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('XXX(シユツ)', 1)).to be_falsy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_beginning?('(シユツXXX', 1)).to be_falsy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_beginning?('XXX(シユツ', 1)).to be_falsy }
      end
    end
    context 'type: 2' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_beginning?('株式会社XXX', 2)).to be_falsy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_beginning?('XXX株式会社', 2)).to be_falsy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_beginning?('有限会社XXX', 2)).to be_falsy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_beginning?('XXX有限会社', 2)).to be_falsy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_beginning?('合名会社XXX', 2)).to be_falsy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_beginning?('XXX合名会社', 2)).to be_falsy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_beginning?('合資会社XXX', 2)).to be_falsy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_beginning?('XXX合資会社', 2)).to be_falsy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_beginning?('合同会社XXX', 2)).to be_falsy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_beginning?('XXX合同会社', 2)).to be_falsy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_beginning?('医療法人XXX', 2)).to be_falsy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_beginning?('XXX医療法人', 2)).to be_falsy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_beginning?('医療法人社団XXX', 2)).to be_falsy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_beginning?('XXX医療法人社団', 2)).to be_falsy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_beginning?('医療法人財団XXX', 2)).to be_falsy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_beginning?('XXX医療法人財団', 2)).to be_falsy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_beginning?('社会医療法人XXX', 2)).to be_falsy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_beginning?('XXX社会医療法人', 2)).to be_falsy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_beginning?('財団法人XXX', 2)).to be_falsy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_beginning?('XXX財団法人', 2)).to be_falsy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_beginning?('一般財団法人XXX', 2)).to be_falsy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_beginning?('XXX一般財団法人', 2)).to be_falsy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_beginning?('公益財団法人XXX', 2)).to be_falsy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_beginning?('XXX公益財団法人', 2)).to be_falsy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_beginning?('社団法人XXX', 2)).to be_falsy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_beginning?('XXX社団法人', 2)).to be_falsy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_beginning?('一般社団法人XXX', 2)).to be_falsy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_beginning?('XXX一般社団法人', 2)).to be_falsy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_beginning?('公益社団法人XXX', 2)).to be_falsy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_beginning?('XXX公益社団法人', 2)).to be_falsy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_beginning?('宗教法人XXX', 2)).to be_falsy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_beginning?('XXX宗教法人', 2)).to be_falsy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_beginning?('㈱XXX', 2)).to be_truthy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_beginning?('XXX㈱', 2)).to be_falsy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_beginning?('(株)XXX', 2)).to be_truthy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_beginning?('XXX(株)', 2)).to be_falsy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_beginning?('㈲XXX', 2)).to be_truthy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_beginning?('XXX㈲', 2)).to be_falsy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_beginning?('(有)XXX', 2)).to be_truthy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_beginning?('XXX(有)', 2)).to be_falsy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_beginning?('(名)XXX', 2)).to be_truthy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_beginning?('XXX(名)', 2)).to be_falsy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_beginning?('(資)XXX', 2)).to be_truthy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_beginning?('XXX(資)', 2)).to be_falsy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_beginning?('(同)XXX', 2)).to be_truthy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_beginning?('XXX(同)', 2)).to be_falsy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_beginning?('(医)XXX', 2)).to be_truthy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_beginning?('XXX(医)', 2)).to be_falsy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_beginning?('(財)XXX', 2)).to be_truthy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_beginning?('XXX(財)', 2)).to be_falsy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_beginning?('(一財)XXX', 2)).to be_truthy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_beginning?('XXX(一財)', 2)).to be_falsy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_beginning?('(公財)XXX', 2)).to be_truthy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_beginning?('XXX(公財)', 2)).to be_falsy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_beginning?('(社)XXX', 2)).to be_truthy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_beginning?('XXX(社)', 2)).to be_falsy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_beginning?('(一社)XXX', 2)).to be_truthy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_beginning?('XXX(一社)', 2)).to be_falsy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_beginning?('(公社)XXX', 2)).to be_truthy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_beginning?('XXX(公社)', 2)).to be_falsy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_beginning?('(宗)XXX', 2)).to be_truthy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_beginning?('XXX(宗)', 2)).to be_falsy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_beginning?('(学)XXX', 2)).to be_truthy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_beginning?('XXX(学)', 2)).to be_falsy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_beginning?('(福)XXX', 2)).to be_truthy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_beginning?('XXX(福)', 2)).to be_falsy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_beginning?('(相)XXX', 2)).to be_truthy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_beginning?('XXX(相)', 2)).to be_falsy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_beginning?('(特非)XXX', 2)).to be_truthy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_beginning?('XXX(特非)', 2)).to be_falsy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_beginning?('(独)XXX', 2)).to be_truthy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_beginning?('XXX(独)', 2)).to be_falsy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_beginning?('(地独)XXX', 2)).to be_truthy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_beginning?('XXX(地独)', 2)).to be_falsy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_beginning?('(弁)XXX', 2)).to be_truthy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_beginning?('XXX(弁)', 2)).to be_falsy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_beginning?('(行)XXX', 2)).to be_truthy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_beginning?('XXX(行)', 2)).to be_falsy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_beginning?('(司)XXX', 2)).to be_truthy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_beginning?('XXX(司)', 2)).to be_falsy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_beginning?('(税)XXX', 2)).to be_truthy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_beginning?('XXX(税)', 2)).to be_falsy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_beginning?('(中)XXX', 2)).to be_truthy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_beginning?('XXX(中)', 2)).to be_falsy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_beginning?('(大)XXX', 2)).to be_truthy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_beginning?('XXX(大)', 2)).to be_falsy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_beginning?('(営)XXX', 2)).to be_truthy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_beginning?('XXX(営)', 2)).to be_falsy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_beginning?('(出)XXX', 2)).to be_truthy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_beginning?('XXX(出)', 2)).to be_falsy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_beginning?('カ)XXX', 2)).to be_falsy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_beginning?('XXXカ)', 2)).to be_falsy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_beginning?('(カ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_beginning?('XXX(カ)', 2)).to be_falsy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_beginning?('(カXXX', 2)).to be_falsy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_beginning?('XXX(カ', 2)).to be_falsy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_beginning?('ユ)XXX', 2)).to be_falsy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_beginning?('XXXユ)', 2)).to be_falsy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_beginning?('(ユ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_beginning?('XXX(ユ)', 2)).to be_falsy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_beginning?('(ユXXX', 2)).to be_falsy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_beginning?('XXX(ユ', 2)).to be_falsy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_beginning?('メ)XXX', 2)).to be_falsy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_beginning?('XXXメ)', 2)).to be_falsy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_beginning?('(メ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_beginning?('XXX(メ)', 2)).to be_falsy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_beginning?('(メXXX', 2)).to be_falsy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_beginning?('XXX(メ', 2)).to be_falsy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_beginning?('シ)XXX', 2)).to be_falsy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_beginning?('XXXシ)', 2)).to be_falsy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_beginning?('(シ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_beginning?('XXX(シ)', 2)).to be_falsy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_beginning?('(シXXX', 2)).to be_falsy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_beginning?('XXX(シ', 2)).to be_falsy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_beginning?('ド)XXX', 2)).to be_falsy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_beginning?('XXXド)', 2)).to be_falsy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_beginning?('(ド)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_beginning?('XXX(ド)', 2)).to be_falsy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_beginning?('(ドXXX', 2)).to be_falsy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_beginning?('XXX(ド', 2)).to be_falsy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_beginning?('シユウ)XXX', 2)).to be_falsy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_beginning?('XXXシユウ)', 2)).to be_falsy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_beginning?('ガク)XXX', 2)).to be_falsy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_beginning?('XXXガク)', 2)).to be_falsy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_beginning?('フク)XXX', 2)).to be_falsy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_beginning?('XXXフク)', 2)).to be_falsy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_beginning?('ホゴ)XXX', 2)).to be_falsy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXXホゴ)', 2)).to be_falsy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('(ホゴ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ)', 2)).to be_falsy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_beginning?('(ホゴXXX', 2)).to be_falsy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ', 2)).to be_falsy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_beginning?('ソ)XXX', 2)).to be_falsy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_beginning?('XXXソ)', 2)).to be_falsy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_beginning?('(ソ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_beginning?('XXX(ソ)', 2)).to be_falsy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_beginning?('(ソXXX', 2)).to be_falsy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_beginning?('XXX(ソ', 2)).to be_falsy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_beginning?('トクヒ)XXX', 2)).to be_falsy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXXトクヒ)', 2)).to be_falsy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('(トクヒ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ)', 2)).to be_falsy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_beginning?('(トクヒXXX', 2)).to be_falsy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ', 2)).to be_falsy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_beginning?('ドク)XXX', 2)).to be_falsy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_beginning?('XXXドク)', 2)).to be_falsy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_beginning?('(ドク)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_beginning?('XXX(ドク)', 2)).to be_falsy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_beginning?('(ドクXXX', 2)).to be_falsy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_beginning?('XXX(ドク', 2)).to be_falsy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_beginning?('チドク)XXX', 2)).to be_falsy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_beginning?('XXXチドク)', 2)).to be_falsy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_beginning?('(チドク)XXX', 2)).to be_falsy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_beginning?('XXX(チドク)', 2)).to be_falsy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_beginning?('(チドクXXX', 2)).to be_falsy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_beginning?('XXX(チドク', 2)).to be_falsy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_beginning?('ベン)XXX', 2)).to be_falsy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_beginning?('XXXベン)', 2)).to be_falsy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_beginning?('(ベン)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_beginning?('XXX(ベン)', 2)).to be_falsy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_beginning?('(ベンXXX', 2)).to be_falsy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_beginning?('XXX(ベン', 2)).to be_falsy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_beginning?('ギヨ)XXX', 2)).to be_falsy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXXギヨ)', 2)).to be_falsy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('(ギヨ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ)', 2)).to be_falsy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_beginning?('(ギヨXXX', 2)).to be_falsy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ', 2)).to be_falsy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_beginning?('シホウ)XXX', 2)).to be_falsy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_beginning?('XXXシホウ)', 2)).to be_falsy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('(シホウ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('XXX(シホウ)', 2)).to be_falsy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_beginning?('(シホウXXX', 2)).to be_falsy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_beginning?('XXX(シホウ', 2)).to be_falsy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_beginning?('ゼイ)XXX', 2)).to be_falsy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXXゼイ)', 2)).to be_falsy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('(ゼイ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ)', 2)).to be_falsy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_beginning?('(ゼイXXX', 2)).to be_falsy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ', 2)).to be_falsy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_beginning?('ノウ)XXX', 2)).to be_falsy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_beginning?('XXXノウ)', 2)).to be_falsy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('(ノウ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('XXX(ノウ)', 2)).to be_falsy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_beginning?('(ノウXXX', 2)).to be_falsy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_beginning?('XXX(ノウ', 2)).to be_falsy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_beginning?('カンリ)XXX', 2)).to be_falsy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_beginning?('XXXカンリ)', 2)).to be_falsy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('(カンリ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('XXX(カンリ)', 2)).to be_falsy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_beginning?('(カンリXXX', 2)).to be_falsy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_beginning?('XXX(カンリ', 2)).to be_falsy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_beginning?('ロウム)XXX', 2)).to be_falsy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_beginning?('XXXロウム)', 2)).to be_falsy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('(ロウム)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('XXX(ロウム)', 2)).to be_falsy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_beginning?('(ロウムXXX', 2)).to be_falsy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_beginning?('XXX(ロウム', 2)).to be_falsy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('(ダイ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ダイ)', 2)).to be_falsy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_beginning?('(ダイXXX', 2)).to be_falsy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_beginning?('XXX(ダイ', 2)).to be_falsy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_beginning?('エイ)XXX', 2)).to be_falsy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_beginning?('XXXエイ)', 2)).to be_falsy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_beginning?('(エイ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_beginning?('XXX(エイ)', 2)).to be_falsy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_beginning?('(エイXXX', 2)).to be_falsy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_beginning?('XXX(エイ', 2)).to be_falsy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_beginning?('シユツ)XXX', 2)).to be_falsy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_beginning?('XXXシユツ)', 2)).to be_falsy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('(シユツ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('XXX(シユツ)', 2)).to be_falsy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_beginning?('(シユツXXX', 2)).to be_falsy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_beginning?('XXX(シユツ', 2)).to be_falsy }
      end
    end
    context 'type: 3' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_beginning?('株式会社XXX', 3)).to be_falsy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_beginning?('XXX株式会社', 3)).to be_falsy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_beginning?('有限会社XXX', 3)).to be_falsy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_beginning?('XXX有限会社', 3)).to be_falsy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_beginning?('合名会社XXX', 3)).to be_falsy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_beginning?('XXX合名会社', 3)).to be_falsy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_beginning?('合資会社XXX', 3)).to be_falsy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_beginning?('XXX合資会社', 3)).to be_falsy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_beginning?('合同会社XXX', 3)).to be_falsy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_beginning?('XXX合同会社', 3)).to be_falsy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_beginning?('医療法人XXX', 3)).to be_falsy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_beginning?('XXX医療法人', 3)).to be_falsy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_beginning?('医療法人社団XXX', 3)).to be_falsy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_beginning?('XXX医療法人社団', 3)).to be_falsy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_beginning?('医療法人財団XXX', 3)).to be_falsy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_beginning?('XXX医療法人財団', 3)).to be_falsy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_beginning?('社会医療法人XXX', 3)).to be_falsy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_beginning?('XXX社会医療法人', 3)).to be_falsy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_beginning?('財団法人XXX', 3)).to be_falsy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_beginning?('XXX財団法人', 3)).to be_falsy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_beginning?('一般財団法人XXX', 3)).to be_falsy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_beginning?('XXX一般財団法人', 3)).to be_falsy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_beginning?('公益財団法人XXX', 3)).to be_falsy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_beginning?('XXX公益財団法人', 3)).to be_falsy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_beginning?('社団法人XXX', 3)).to be_falsy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_beginning?('XXX社団法人', 3)).to be_falsy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_beginning?('一般社団法人XXX', 3)).to be_falsy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_beginning?('XXX一般社団法人', 3)).to be_falsy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_beginning?('公益社団法人XXX', 3)).to be_falsy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_beginning?('XXX公益社団法人', 3)).to be_falsy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_beginning?('宗教法人XXX', 3)).to be_falsy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_beginning?('XXX宗教法人', 3)).to be_falsy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_beginning?('㈱XXX', 3)).to be_falsy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_beginning?('XXX㈱', 3)).to be_falsy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_beginning?('(株)XXX', 3)).to be_falsy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_beginning?('XXX(株)', 3)).to be_falsy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_beginning?('㈲XXX', 3)).to be_falsy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_beginning?('XXX㈲', 3)).to be_falsy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_beginning?('(有)XXX', 3)).to be_falsy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_beginning?('XXX(有)', 3)).to be_falsy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_beginning?('(名)XXX', 3)).to be_falsy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_beginning?('XXX(名)', 3)).to be_falsy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_beginning?('(資)XXX', 3)).to be_falsy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_beginning?('XXX(資)', 3)).to be_falsy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_beginning?('(同)XXX', 3)).to be_falsy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_beginning?('XXX(同)', 3)).to be_falsy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_beginning?('(医)XXX', 3)).to be_falsy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_beginning?('XXX(医)', 3)).to be_falsy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_beginning?('(財)XXX', 3)).to be_falsy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_beginning?('XXX(財)', 3)).to be_falsy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_beginning?('(一財)XXX', 3)).to be_falsy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_beginning?('XXX(一財)', 3)).to be_falsy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_beginning?('(公財)XXX', 3)).to be_falsy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_beginning?('XXX(公財)', 3)).to be_falsy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_beginning?('(社)XXX', 3)).to be_falsy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_beginning?('XXX(社)', 3)).to be_falsy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_beginning?('(一社)XXX', 3)).to be_falsy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_beginning?('XXX(一社)', 3)).to be_falsy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_beginning?('(公社)XXX', 3)).to be_falsy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_beginning?('XXX(公社)', 3)).to be_falsy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_beginning?('(宗)XXX', 3)).to be_falsy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_beginning?('XXX(宗)', 3)).to be_falsy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_beginning?('(学)XXX', 3)).to be_falsy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_beginning?('XXX(学)', 3)).to be_falsy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_beginning?('(福)XXX', 3)).to be_falsy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_beginning?('XXX(福)', 3)).to be_falsy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_beginning?('(相)XXX', 3)).to be_falsy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_beginning?('XXX(相)', 3)).to be_falsy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_beginning?('(特非)XXX', 3)).to be_falsy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_beginning?('XXX(特非)', 3)).to be_falsy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_beginning?('(独)XXX', 3)).to be_falsy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_beginning?('XXX(独)', 3)).to be_falsy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_beginning?('(地独)XXX', 3)).to be_falsy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_beginning?('XXX(地独)', 3)).to be_falsy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_beginning?('(弁)XXX', 3)).to be_falsy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_beginning?('XXX(弁)', 3)).to be_falsy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_beginning?('(行)XXX', 3)).to be_falsy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_beginning?('XXX(行)', 3)).to be_falsy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_beginning?('(司)XXX', 3)).to be_falsy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_beginning?('XXX(司)', 3)).to be_falsy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_beginning?('(税)XXX', 3)).to be_falsy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_beginning?('XXX(税)', 3)).to be_falsy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_beginning?('(中)XXX', 3)).to be_falsy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_beginning?('XXX(中)', 3)).to be_falsy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_beginning?('(大)XXX', 3)).to be_falsy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_beginning?('XXX(大)', 3)).to be_falsy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_beginning?('(営)XXX', 3)).to be_falsy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_beginning?('XXX(営)', 3)).to be_falsy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_beginning?('(出)XXX', 3)).to be_falsy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_beginning?('XXX(出)', 3)).to be_falsy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_beginning?('カ)XXX', 3)).to be_truthy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_beginning?('XXXカ)', 3)).to be_falsy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_beginning?('(カ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_beginning?('XXX(カ)', 3)).to be_falsy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_beginning?('(カXXX', 3)).to be_truthy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_beginning?('XXX(カ', 3)).to be_falsy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_beginning?('ユ)XXX', 3)).to be_truthy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_beginning?('XXXユ)', 3)).to be_falsy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_beginning?('(ユ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_beginning?('XXX(ユ)', 3)).to be_falsy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_beginning?('(ユXXX', 3)).to be_truthy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_beginning?('XXX(ユ', 3)).to be_falsy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_beginning?('メ)XXX', 3)).to be_truthy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_beginning?('XXXメ)', 3)).to be_falsy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_beginning?('(メ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_beginning?('XXX(メ)', 3)).to be_falsy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_beginning?('(メXXX', 3)).to be_truthy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_beginning?('XXX(メ', 3)).to be_falsy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_beginning?('シ)XXX', 3)).to be_truthy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_beginning?('XXXシ)', 3)).to be_falsy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_beginning?('(シ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_beginning?('XXX(シ)', 3)).to be_falsy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_beginning?('(シXXX', 3)).to be_truthy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_beginning?('XXX(シ', 3)).to be_falsy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_beginning?('ド)XXX', 3)).to be_truthy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_beginning?('XXXド)', 3)).to be_falsy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_beginning?('(ド)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_beginning?('XXX(ド)', 3)).to be_falsy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_beginning?('(ドXXX', 3)).to be_truthy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_beginning?('XXX(ド', 3)).to be_falsy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_beginning?('シユウ)XXX', 3)).to be_truthy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_beginning?('XXXシユウ)', 3)).to be_falsy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_beginning?('ガク)XXX', 3)).to be_truthy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_beginning?('XXXガク)', 3)).to be_falsy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_beginning?('フク)XXX', 3)).to be_truthy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_beginning?('XXXフク)', 3)).to be_falsy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_beginning?('ホゴ)XXX', 3)).to be_truthy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXXホゴ)', 3)).to be_falsy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('(ホゴ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ)', 3)).to be_falsy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_beginning?('(ホゴXXX', 3)).to be_truthy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_beginning?('XXX(ホゴ', 3)).to be_falsy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_beginning?('ソ)XXX', 3)).to be_truthy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_beginning?('XXXソ)', 3)).to be_falsy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_beginning?('(ソ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_beginning?('XXX(ソ)', 3)).to be_falsy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_beginning?('(ソXXX', 3)).to be_truthy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_beginning?('XXX(ソ', 3)).to be_falsy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_beginning?('トクヒ)XXX', 3)).to be_truthy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXXトクヒ)', 3)).to be_falsy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('(トクヒ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ)', 3)).to be_falsy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_beginning?('(トクヒXXX', 3)).to be_truthy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_beginning?('XXX(トクヒ', 3)).to be_falsy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_beginning?('ドク)XXX', 3)).to be_truthy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_beginning?('XXXドク)', 3)).to be_falsy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_beginning?('(ドク)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_beginning?('XXX(ドク)', 3)).to be_falsy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_beginning?('(ドクXXX', 3)).to be_truthy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_beginning?('XXX(ドク', 3)).to be_falsy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_beginning?('チドク)XXX', 3)).to be_truthy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_beginning?('XXXチドク)', 3)).to be_falsy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_beginning?('(チドク)XXX', 3)).to be_truthy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_beginning?('XXX(チドク)', 3)).to be_falsy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_beginning?('(チドクXXX', 3)).to be_truthy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_beginning?('XXX(チドク', 3)).to be_falsy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_beginning?('ベン)XXX', 3)).to be_truthy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_beginning?('XXXベン)', 3)).to be_falsy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_beginning?('(ベン)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_beginning?('XXX(ベン)', 3)).to be_falsy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_beginning?('(ベンXXX', 3)).to be_truthy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_beginning?('XXX(ベン', 3)).to be_falsy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_beginning?('ギヨ)XXX', 3)).to be_truthy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXXギヨ)', 3)).to be_falsy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('(ギヨ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ)', 3)).to be_falsy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_beginning?('(ギヨXXX', 3)).to be_truthy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_beginning?('XXX(ギヨ', 3)).to be_falsy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_beginning?('シホウ)XXX', 3)).to be_truthy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_beginning?('XXXシホウ)', 3)).to be_falsy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('(シホウ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_beginning?('XXX(シホウ)', 3)).to be_falsy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_beginning?('(シホウXXX', 3)).to be_truthy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_beginning?('XXX(シホウ', 3)).to be_falsy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_beginning?('ゼイ)XXX', 3)).to be_truthy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXXゼイ)', 3)).to be_falsy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('(ゼイ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ)', 3)).to be_falsy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_beginning?('(ゼイXXX', 3)).to be_truthy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_beginning?('XXX(ゼイ', 3)).to be_falsy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_beginning?('ノウ)XXX', 3)).to be_truthy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_beginning?('XXXノウ)', 3)).to be_falsy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('(ノウ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_beginning?('XXX(ノウ)', 3)).to be_falsy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_beginning?('(ノウXXX', 3)).to be_truthy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_beginning?('XXX(ノウ', 3)).to be_falsy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_beginning?('カンリ)XXX', 3)).to be_truthy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_beginning?('XXXカンリ)', 3)).to be_falsy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('(カンリ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_beginning?('XXX(カンリ)', 3)).to be_falsy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_beginning?('(カンリXXX', 3)).to be_truthy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_beginning?('XXX(カンリ', 3)).to be_falsy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_beginning?('ロウム)XXX', 3)).to be_truthy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_beginning?('XXXロウム)', 3)).to be_falsy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('(ロウム)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_beginning?('XXX(ロウム)', 3)).to be_falsy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_beginning?('(ロウムXXX', 3)).to be_truthy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_beginning?('XXX(ロウム', 3)).to be_falsy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('(ダイ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_beginning?('XXX(ダイ)', 3)).to be_falsy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_beginning?('(ダイXXX', 3)).to be_truthy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_beginning?('XXX(ダイ', 3)).to be_falsy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_beginning?('エイ)XXX', 3)).to be_truthy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_beginning?('XXXエイ)', 3)).to be_falsy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_beginning?('(エイ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_beginning?('XXX(エイ)', 3)).to be_falsy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_beginning?('(エイXXX', 3)).to be_truthy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_beginning?('XXX(エイ', 3)).to be_falsy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_beginning?('シユツ)XXX', 3)).to be_truthy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_beginning?('XXXシユツ)', 3)).to be_falsy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('(シユツ)XXX', 3)).to be_truthy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_beginning?('XXX(シユツ)', 3)).to be_falsy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_beginning?('(シユツXXX', 3)).to be_truthy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_beginning?('XXX(シユツ', 3)).to be_falsy }
      end
    end
  end

  describe '.with_end?' do
    context 'name is nil' do
      it { expect(Syamei.with_end?(nil, 0)).to be_falsey }
    end
    context 'name is empty' do
      it { expect(Syamei.with_end?('', 0)).to be_falsey }
    end
    context 'type: 0' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_end?('株式会社XXX', 0)).to be_falsy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_end?('XXX株式会社', 0)).to be_truthy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_end?('有限会社XXX', 0)).to be_falsy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_end?('XXX有限会社', 0)).to be_truthy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_end?('合名会社XXX', 0)).to be_falsy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_end?('XXX合名会社', 0)).to be_truthy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_end?('合資会社XXX', 0)).to be_falsy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_end?('XXX合資会社', 0)).to be_truthy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_end?('合同会社XXX', 0)).to be_falsy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_end?('XXX合同会社', 0)).to be_truthy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_end?('医療法人XXX', 0)).to be_falsy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_end?('XXX医療法人', 0)).to be_truthy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_end?('医療法人社団XXX', 0)).to be_falsy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_end?('XXX医療法人社団', 0)).to be_truthy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_end?('医療法人財団XXX', 0)).to be_falsy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_end?('XXX医療法人財団', 0)).to be_truthy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_end?('社会医療法人XXX', 0)).to be_falsy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_end?('XXX社会医療法人', 0)).to be_truthy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_end?('財団法人XXX', 0)).to be_falsy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_end?('XXX財団法人', 0)).to be_truthy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_end?('一般財団法人XXX', 0)).to be_falsy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_end?('XXX一般財団法人', 0)).to be_truthy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_end?('公益財団法人XXX', 0)).to be_falsy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_end?('XXX公益財団法人', 0)).to be_truthy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_end?('社団法人XXX', 0)).to be_falsy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_end?('XXX社団法人', 0)).to be_truthy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_end?('一般社団法人XXX', 0)).to be_falsy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_end?('XXX一般社団法人', 0)).to be_truthy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_end?('公益社団法人XXX', 0)).to be_falsy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_end?('XXX公益社団法人', 0)).to be_truthy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_end?('宗教法人XXX', 0)).to be_falsy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_end?('XXX宗教法人', 0)).to be_truthy }
      end

      context '先頭 学校法人' do
        it { expect(Syamei.with_end?('学校法人XXX', 0)).to be_falsy }
      end

      context '末尾 学校法人' do
        it { expect(Syamei.with_end?('XXX学校法人', 0)).to be_truthy }
      end

      context '先頭 社会福祉法人' do
        it { expect(Syamei.with_end?('社会福祉法人XXX', 0)).to be_falsy }
      end

      context '末尾 社会福祉法人' do
        it { expect(Syamei.with_end?('XXX社会福祉法人', 0)).to be_truthy }
      end

      context '先頭 更生保護法人' do
        it { expect(Syamei.with_end?('更生保護法人XXX', 0)).to be_falsy }
      end

      context '末尾 更生保護法人' do
        it { expect(Syamei.with_end?('XXX更生保護法人', 0)).to be_truthy }
      end

      context '先頭 相互会社' do
        it { expect(Syamei.with_end?('相互会社XXX', 0)).to be_falsy }
      end

      context '末尾 相互会社' do
        it { expect(Syamei.with_end?('XXX相互会社', 0)).to be_truthy }
      end

      context '先頭 特定非営利活動法人' do
        it { expect(Syamei.with_end?('特定非営利活動法人XXX', 0)).to be_falsy }
      end

      context '末尾 特定非営利活動法人' do
        it { expect(Syamei.with_end?('XXX特定非営利活動法人', 0)).to be_truthy }
      end

      context '先頭 独立行政法人' do
        it { expect(Syamei.with_end?('独立行政法人XXX', 0)).to be_falsy }
      end

      context '末尾 独立行政法人' do
        it { expect(Syamei.with_end?('XXX独立行政法人', 0)).to be_truthy }
      end

      context '先頭 地方独立行政法人' do
        it { expect(Syamei.with_end?('地方独立行政法人XXX', 0)).to be_falsy }
      end

      context '末尾 地方独立行政法人' do
        it { expect(Syamei.with_end?('XXX地方独立行政法人', 0)).to be_truthy }
      end

      context '先頭 弁護士法人' do
        it { expect(Syamei.with_end?('弁護士法人XXX', 0)).to be_falsy }
      end

      context '末尾 弁護士法人' do
        it { expect(Syamei.with_end?('XXX弁護士法人', 0)).to be_truthy }
      end

      context '先頭 有限責任中間法人' do
        it { expect(Syamei.with_end?('有限責任中間法人XXX', 0)).to be_falsy }
      end

      context '末尾 有限責任中間法人' do
        it { expect(Syamei.with_end?('XXX有限責任中間法人', 0)).to be_truthy }
      end

      context '先頭 無限責任中間法人' do
        it { expect(Syamei.with_end?('無限責任中間法人XXX', 0)).to be_falsy }
      end

      context '末尾 無限責任中間法人' do
        it { expect(Syamei.with_end?('XXX無限責任中間法人', 0)).to be_truthy }
      end

      context '先頭 行政書士法人' do
        it { expect(Syamei.with_end?('行政書士法人XXX', 0)).to be_falsy }
      end

      context '末尾 行政書士法人' do
        it { expect(Syamei.with_end?('XXX行政書士法人', 0)).to be_truthy }
      end

      context '先頭 司法書士法人' do
        it { expect(Syamei.with_end?('司法書士法人XXX', 0)).to be_falsy }
      end

      context '末尾 司法書士法人' do
        it { expect(Syamei.with_end?('XXX司法書士法人', 0)).to be_truthy }
      end

      context '先頭 税理士法人' do
        it { expect(Syamei.with_end?('税理士法人XXX', 0)).to be_falsy }
      end

      context '末尾 税理士法人' do
        it { expect(Syamei.with_end?('XXX税理士法人', 0)).to be_truthy }
      end

      context '先頭 国立大学法人' do
        it { expect(Syamei.with_end?('国立大学法人XXX', 0)).to be_falsy }
      end

      context '末尾 国立大学法人' do
        it { expect(Syamei.with_end?('XXX国立大学法人', 0)).to be_truthy }
      end

      context '先頭 公立大学法人' do
        it { expect(Syamei.with_end?('公立大学法人XXX', 0)).to be_falsy }
      end

      context '末尾 公立大学法人' do
        it { expect(Syamei.with_end?('XXX公立大学法人', 0)).to be_truthy }
      end

      context '先頭 農事組合法人' do
        it { expect(Syamei.with_end?('農事組合法人XXX', 0)).to be_falsy }
      end

      context '末尾 農事組合法人' do
        it { expect(Syamei.with_end?('XXX農事組合法人', 0)).to be_truthy }
      end

      context '先頭 管理組合法人' do
        it { expect(Syamei.with_end?('管理組合法人XXX', 0)).to be_falsy }
      end

      context '末尾 管理組合法人' do
        it { expect(Syamei.with_end?('XXX管理組合法人', 0)).to be_truthy }
      end

      context '先頭 社会保険労務士法人' do
        it { expect(Syamei.with_end?('社会保険労務士法人XXX', 0)).to be_falsy }
      end

      context '末尾 社会保険労務士法人' do
        it { expect(Syamei.with_end?('XXX社会保険労務士法人', 0)).to be_truthy }
      end

      context '先頭 営業所' do
        it { expect(Syamei.with_end?('営業所XXX', 0)).to be_falsy }
      end

      context '末尾 営業所' do
        it { expect(Syamei.with_end?('XXX営業所', 0)).to be_truthy }
      end

      context '先頭 出張所' do
        it { expect(Syamei.with_end?('出張所XXX', 0)).to be_falsy }
      end

      context '末尾 出張所' do
        it { expect(Syamei.with_end?('XXX出張所', 0)).to be_truthy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_end?('㈱XXX', 0)).to be_falsy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_end?('XXX㈱', 0)).to be_truthy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_end?('(株)XXX', 0)).to be_falsy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_end?('XXX(株)', 0)).to be_truthy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_end?('㈲XXX', 0)).to be_falsy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_end?('XXX㈲', 0)).to be_truthy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_end?('(有)XXX', 0)).to be_falsy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_end?('XXX(有)', 0)).to be_truthy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_end?('(名)XXX', 0)).to be_falsy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_end?('XXX(名)', 0)).to be_truthy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_end?('(資)XXX', 0)).to be_falsy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_end?('XXX(資)', 0)).to be_truthy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_end?('(同)XXX', 0)).to be_falsy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_end?('XXX(同)', 0)).to be_truthy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_end?('(医)XXX', 0)).to be_falsy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_end?('XXX(医)', 0)).to be_truthy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_end?('(財)XXX', 0)).to be_falsy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_end?('XXX(財)', 0)).to be_truthy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_end?('(一財)XXX', 0)).to be_falsy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_end?('XXX(一財)', 0)).to be_truthy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_end?('(公財)XXX', 0)).to be_falsy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_end?('XXX(公財)', 0)).to be_truthy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_end?('(社)XXX', 0)).to be_falsy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_end?('XXX(社)', 0)).to be_truthy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_end?('(一社)XXX', 0)).to be_falsy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_end?('XXX(一社)', 0)).to be_truthy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_end?('(公社)XXX', 0)).to be_falsy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_end?('XXX(公社)', 0)).to be_truthy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_end?('(宗)XXX', 0)).to be_falsy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_end?('XXX(宗)', 0)).to be_truthy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_end?('(学)XXX', 0)).to be_falsy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_end?('XXX(学)', 0)).to be_truthy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_end?('(福)XXX', 0)).to be_falsy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_end?('XXX(福)', 0)).to be_truthy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_end?('(相)XXX', 0)).to be_falsy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_end?('XXX(相)', 0)).to be_truthy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_end?('(特非)XXX', 0)).to be_falsy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_end?('XXX(特非)', 0)).to be_truthy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_end?('(独)XXX', 0)).to be_falsy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_end?('XXX(独)', 0)).to be_truthy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_end?('(地独)XXX', 0)).to be_falsy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_end?('XXX(地独)', 0)).to be_truthy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_end?('(弁)XXX', 0)).to be_falsy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_end?('XXX(弁)', 0)).to be_truthy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_end?('(行)XXX', 0)).to be_falsy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_end?('XXX(行)', 0)).to be_truthy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_end?('(司)XXX', 0)).to be_falsy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_end?('XXX(司)', 0)).to be_truthy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_end?('(税)XXX', 0)).to be_falsy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_end?('XXX(税)', 0)).to be_truthy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_end?('(中)XXX', 0)).to be_falsy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_end?('XXX(中)', 0)).to be_truthy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_end?('(大)XXX', 0)).to be_falsy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_end?('XXX(大)', 0)).to be_truthy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_end?('(営)XXX', 0)).to be_falsy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_end?('XXX(営)', 0)).to be_truthy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_end?('(出)XXX', 0)).to be_falsy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_end?('XXX(出)', 0)).to be_truthy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_end?('カ)XXX', 0)).to be_falsy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_end?('XXXカ)', 0)).to be_truthy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_end?('(カ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_end?('XXX(カ)', 0)).to be_truthy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_end?('(カXXX', 0)).to be_falsy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_end?('XXX(カ', 0)).to be_truthy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_end?('ユ)XXX', 0)).to be_falsy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_end?('XXXユ)', 0)).to be_truthy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_end?('(ユ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_end?('XXX(ユ)', 0)).to be_truthy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_end?('(ユXXX', 0)).to be_falsy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_end?('XXX(ユ', 0)).to be_truthy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_end?('メ)XXX', 0)).to be_falsy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_end?('XXXメ)', 0)).to be_truthy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_end?('(メ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_end?('XXX(メ)', 0)).to be_truthy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_end?('(メXXX', 0)).to be_falsy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_end?('XXX(メ', 0)).to be_truthy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_end?('シ)XXX', 0)).to be_falsy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_end?('XXXシ)', 0)).to be_truthy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_end?('(シ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_end?('XXX(シ)', 0)).to be_truthy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_end?('(シXXX', 0)).to be_falsy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_end?('XXX(シ', 0)).to be_truthy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_end?('ド)XXX', 0)).to be_falsy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_end?('XXXド)', 0)).to be_truthy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_end?('(ド)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_end?('XXX(ド)', 0)).to be_truthy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_end?('(ドXXX', 0)).to be_falsy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_end?('XXX(ド', 0)).to be_truthy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_end?('シユウ)XXX', 0)).to be_falsy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_end?('XXXシユウ)', 0)).to be_truthy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_end?('ガク)XXX', 0)).to be_falsy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_end?('XXXガク)', 0)).to be_truthy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_end?('フク)XXX', 0)).to be_falsy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_end?('XXXフク)', 0)).to be_truthy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_end?('ホゴ)XXX', 0)).to be_falsy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_end?('XXXホゴ)', 0)).to be_truthy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_end?('(ホゴ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_end?('XXX(ホゴ)', 0)).to be_truthy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_end?('(ホゴXXX', 0)).to be_falsy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_end?('XXX(ホゴ', 0)).to be_truthy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_end?('ソ)XXX', 0)).to be_falsy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_end?('XXXソ)', 0)).to be_truthy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_end?('(ソ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_end?('XXX(ソ)', 0)).to be_truthy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_end?('(ソXXX', 0)).to be_falsy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_end?('XXX(ソ', 0)).to be_truthy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_end?('トクヒ)XXX', 0)).to be_falsy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_end?('XXXトクヒ)', 0)).to be_truthy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_end?('(トクヒ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_end?('XXX(トクヒ)', 0)).to be_truthy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_end?('(トクヒXXX', 0)).to be_falsy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_end?('XXX(トクヒ', 0)).to be_truthy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_end?('ドク)XXX', 0)).to be_falsy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_end?('XXXドク)', 0)).to be_truthy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_end?('(ドク)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_end?('XXX(ドク)', 0)).to be_truthy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_end?('(ドクXXX', 0)).to be_falsy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_end?('XXX(ドク', 0)).to be_truthy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_end?('チドク)XXX', 0)).to be_falsy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_end?('XXXチドク)', 0)).to be_truthy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_end?('(チドク)XXX', 0)).to be_falsy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_end?('XXX(チドク)', 0)).to be_truthy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_end?('(チドクXXX', 0)).to be_falsy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_end?('XXX(チドク', 0)).to be_truthy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_end?('ベン)XXX', 0)).to be_falsy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_end?('XXXベン)', 0)).to be_truthy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_end?('(ベン)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_end?('XXX(ベン)', 0)).to be_truthy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_end?('(ベンXXX', 0)).to be_falsy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_end?('XXX(ベン', 0)).to be_truthy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_end?('ギヨ)XXX', 0)).to be_falsy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_end?('XXXギヨ)', 0)).to be_truthy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_end?('(ギヨ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_end?('XXX(ギヨ)', 0)).to be_truthy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_end?('(ギヨXXX', 0)).to be_falsy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_end?('XXX(ギヨ', 0)).to be_truthy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_end?('シホウ)XXX', 0)).to be_falsy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_end?('XXXシホウ)', 0)).to be_truthy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_end?('(シホウ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_end?('XXX(シホウ)', 0)).to be_truthy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_end?('(シホウXXX', 0)).to be_falsy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_end?('XXX(シホウ', 0)).to be_truthy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_end?('ゼイ)XXX', 0)).to be_falsy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_end?('XXXゼイ)', 0)).to be_truthy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_end?('(ゼイ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_end?('XXX(ゼイ)', 0)).to be_truthy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_end?('(ゼイXXX', 0)).to be_falsy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_end?('XXX(ゼイ', 0)).to be_truthy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_end?('ノウ)XXX', 0)).to be_falsy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_end?('XXXノウ)', 0)).to be_truthy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_end?('(ノウ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_end?('XXX(ノウ)', 0)).to be_truthy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_end?('(ノウXXX', 0)).to be_falsy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_end?('XXX(ノウ', 0)).to be_truthy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_end?('カンリ)XXX', 0)).to be_falsy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_end?('XXXカンリ)', 0)).to be_truthy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_end?('(カンリ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_end?('XXX(カンリ)', 0)).to be_truthy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_end?('(カンリXXX', 0)).to be_falsy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_end?('XXX(カンリ', 0)).to be_truthy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_end?('ロウム)XXX', 0)).to be_falsy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_end?('XXXロウム)', 0)).to be_truthy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_end?('(ロウム)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_end?('XXX(ロウム)', 0)).to be_truthy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_end?('(ロウムXXX', 0)).to be_falsy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_end?('XXX(ロウム', 0)).to be_truthy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_end?('(ダイ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_end?('XXX(ダイ)', 0)).to be_truthy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_end?('(ダイXXX', 0)).to be_falsy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_end?('XXX(ダイ', 0)).to be_truthy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_end?('エイ)XXX', 0)).to be_falsy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_end?('XXXエイ)', 0)).to be_truthy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_end?('(エイ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_end?('XXX(エイ)', 0)).to be_truthy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_end?('(エイXXX', 0)).to be_falsy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_end?('XXX(エイ', 0)).to be_truthy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_end?('シユツ)XXX', 0)).to be_falsy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_end?('XXXシユツ)', 0)).to be_truthy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_end?('(シユツ)XXX', 0)).to be_falsy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_end?('XXX(シユツ)', 0)).to be_truthy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_end?('(シユツXXX', 0)).to be_falsy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_end?('XXX(シユツ', 0)).to be_truthy }
      end
    end
    context 'type: 1' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_end?('株式会社XXX', 1)).to be_falsy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_end?('XXX株式会社', 1)).to be_truthy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_end?('有限会社XXX', 1)).to be_falsy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_end?('XXX有限会社', 1)).to be_truthy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_end?('合名会社XXX', 1)).to be_falsy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_end?('XXX合名会社', 1)).to be_truthy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_end?('合資会社XXX', 1)).to be_falsy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_end?('XXX合資会社', 1)).to be_truthy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_end?('合同会社XXX', 1)).to be_falsy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_end?('XXX合同会社', 1)).to be_truthy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_end?('医療法人XXX', 1)).to be_falsy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_end?('XXX医療法人', 1)).to be_truthy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_end?('医療法人社団XXX', 1)).to be_falsy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_end?('XXX医療法人社団', 1)).to be_truthy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_end?('医療法人財団XXX', 1)).to be_falsy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_end?('XXX医療法人財団', 1)).to be_truthy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_end?('社会医療法人XXX', 1)).to be_falsy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_end?('XXX社会医療法人', 1)).to be_truthy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_end?('財団法人XXX', 1)).to be_falsy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_end?('XXX財団法人', 1)).to be_truthy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_end?('一般財団法人XXX', 1)).to be_falsy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_end?('XXX一般財団法人', 1)).to be_truthy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_end?('公益財団法人XXX', 1)).to be_falsy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_end?('XXX公益財団法人', 1)).to be_truthy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_end?('社団法人XXX', 1)).to be_falsy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_end?('XXX社団法人', 1)).to be_truthy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_end?('一般社団法人XXX', 1)).to be_falsy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_end?('XXX一般社団法人', 1)).to be_truthy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_end?('公益社団法人XXX', 1)).to be_falsy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_end?('XXX公益社団法人', 1)).to be_truthy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_end?('宗教法人XXX', 1)).to be_falsy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_end?('XXX宗教法人', 1)).to be_truthy }
      end

      context '先頭 学校法人' do
        it { expect(Syamei.with_end?('学校法人XXX', 1)).to be_falsy }
      end

      context '末尾 学校法人' do
        it { expect(Syamei.with_end?('XXX学校法人', 1)).to be_truthy }
      end

      context '先頭 社会福祉法人' do
        it { expect(Syamei.with_end?('社会福祉法人XXX', 1)).to be_falsy }
      end

      context '末尾 社会福祉法人' do
        it { expect(Syamei.with_end?('XXX社会福祉法人', 1)).to be_truthy }
      end

      context '先頭 更生保護法人' do
        it { expect(Syamei.with_end?('更生保護法人XXX', 1)).to be_falsy }
      end

      context '末尾 更生保護法人' do
        it { expect(Syamei.with_end?('XXX更生保護法人', 1)).to be_truthy }
      end

      context '先頭 相互会社' do
        it { expect(Syamei.with_end?('相互会社XXX', 1)).to be_falsy }
      end

      context '末尾 相互会社' do
        it { expect(Syamei.with_end?('XXX相互会社', 1)).to be_truthy }
      end

      context '先頭 特定非営利活動法人' do
        it { expect(Syamei.with_end?('特定非営利活動法人XXX', 1)).to be_falsy }
      end

      context '末尾 特定非営利活動法人' do
        it { expect(Syamei.with_end?('XXX特定非営利活動法人', 1)).to be_truthy }
      end

      context '先頭 独立行政法人' do
        it { expect(Syamei.with_end?('独立行政法人XXX', 1)).to be_falsy }
      end

      context '末尾 独立行政法人' do
        it { expect(Syamei.with_end?('XXX独立行政法人', 1)).to be_truthy }
      end

      context '先頭 地方独立行政法人' do
        it { expect(Syamei.with_end?('地方独立行政法人XXX', 1)).to be_falsy }
      end

      context '末尾 地方独立行政法人' do
        it { expect(Syamei.with_end?('XXX地方独立行政法人', 1)).to be_truthy }
      end

      context '先頭 弁護士法人' do
        it { expect(Syamei.with_end?('弁護士法人XXX', 1)).to be_falsy }
      end

      context '末尾 弁護士法人' do
        it { expect(Syamei.with_end?('XXX弁護士法人', 1)).to be_truthy }
      end

      context '先頭 有限責任中間法人' do
        it { expect(Syamei.with_end?('有限責任中間法人XXX', 1)).to be_falsy }
      end

      context '末尾 有限責任中間法人' do
        it { expect(Syamei.with_end?('XXX有限責任中間法人', 1)).to be_truthy }
      end

      context '先頭 無限責任中間法人' do
        it { expect(Syamei.with_end?('無限責任中間法人XXX', 1)).to be_falsy }
      end

      context '末尾 無限責任中間法人' do
        it { expect(Syamei.with_end?('XXX無限責任中間法人', 1)).to be_truthy }
      end

      context '先頭 行政書士法人' do
        it { expect(Syamei.with_end?('行政書士法人XXX', 1)).to be_falsy }
      end

      context '末尾 行政書士法人' do
        it { expect(Syamei.with_end?('XXX行政書士法人', 1)).to be_truthy }
      end

      context '先頭 司法書士法人' do
        it { expect(Syamei.with_end?('司法書士法人XXX', 1)).to be_falsy }
      end

      context '末尾 司法書士法人' do
        it { expect(Syamei.with_end?('XXX司法書士法人', 1)).to be_truthy }
      end

      context '先頭 税理士法人' do
        it { expect(Syamei.with_end?('税理士法人XXX', 1)).to be_falsy }
      end

      context '末尾 税理士法人' do
        it { expect(Syamei.with_end?('XXX税理士法人', 1)).to be_truthy }
      end

      context '先頭 国立大学法人' do
        it { expect(Syamei.with_end?('国立大学法人XXX', 1)).to be_falsy }
      end

      context '末尾 国立大学法人' do
        it { expect(Syamei.with_end?('XXX国立大学法人', 1)).to be_truthy }
      end

      context '先頭 公立大学法人' do
        it { expect(Syamei.with_end?('公立大学法人XXX', 1)).to be_falsy }
      end

      context '末尾 公立大学法人' do
        it { expect(Syamei.with_end?('XXX公立大学法人', 1)).to be_truthy }
      end

      context '先頭 農事組合法人' do
        it { expect(Syamei.with_end?('農事組合法人XXX', 1)).to be_falsy }
      end

      context '末尾 農事組合法人' do
        it { expect(Syamei.with_end?('XXX農事組合法人', 1)).to be_truthy }
      end

      context '先頭 管理組合法人' do
        it { expect(Syamei.with_end?('管理組合法人XXX', 1)).to be_falsy }
      end

      context '末尾 管理組合法人' do
        it { expect(Syamei.with_end?('XXX管理組合法人', 1)).to be_truthy }
      end

      context '先頭 社会保険労務士法人' do
        it { expect(Syamei.with_end?('社会保険労務士法人XXX', 1)).to be_falsy }
      end

      context '末尾 社会保険労務士法人' do
        it { expect(Syamei.with_end?('XXX社会保険労務士法人', 1)).to be_truthy }
      end

      context '先頭 営業所' do
        it { expect(Syamei.with_end?('営業所XXX', 1)).to be_falsy }
      end

      context '末尾 営業所' do
        it { expect(Syamei.with_end?('XXX営業所', 1)).to be_truthy }
      end

      context '先頭 出張所' do
        it { expect(Syamei.with_end?('出張所XXX', 1)).to be_falsy }
      end

      context '末尾 出張所' do
        it { expect(Syamei.with_end?('XXX出張所', 1)).to be_truthy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_end?('㈱XXX', 1)).to be_falsy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_end?('XXX㈱', 1)).to be_falsy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_end?('(株)XXX', 1)).to be_falsy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_end?('XXX(株)', 1)).to be_falsy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_end?('㈲XXX', 1)).to be_falsy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_end?('XXX㈲', 1)).to be_falsy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_end?('(有)XXX', 1)).to be_falsy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_end?('XXX(有)', 1)).to be_falsy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_end?('(名)XXX', 1)).to be_falsy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_end?('XXX(名)', 1)).to be_falsy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_end?('(資)XXX', 1)).to be_falsy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_end?('XXX(資)', 1)).to be_falsy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_end?('(同)XXX', 1)).to be_falsy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_end?('XXX(同)', 1)).to be_falsy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_end?('(医)XXX', 1)).to be_falsy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_end?('XXX(医)', 1)).to be_falsy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_end?('(財)XXX', 1)).to be_falsy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_end?('XXX(財)', 1)).to be_falsy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_end?('(一財)XXX', 1)).to be_falsy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_end?('XXX(一財)', 1)).to be_falsy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_end?('(公財)XXX', 1)).to be_falsy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_end?('XXX(公財)', 1)).to be_falsy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_end?('(社)XXX', 1)).to be_falsy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_end?('XXX(社)', 1)).to be_falsy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_end?('(一社)XXX', 1)).to be_falsy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_end?('XXX(一社)', 1)).to be_falsy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_end?('(公社)XXX', 1)).to be_falsy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_end?('XXX(公社)', 1)).to be_falsy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_end?('(宗)XXX', 1)).to be_falsy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_end?('XXX(宗)', 1)).to be_falsy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_end?('(学)XXX', 1)).to be_falsy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_end?('XXX(学)', 1)).to be_falsy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_end?('(福)XXX', 1)).to be_falsy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_end?('XXX(福)', 1)).to be_falsy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_end?('(相)XXX', 1)).to be_falsy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_end?('XXX(相)', 1)).to be_falsy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_end?('(特非)XXX', 1)).to be_falsy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_end?('XXX(特非)', 1)).to be_falsy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_end?('(独)XXX', 1)).to be_falsy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_end?('XXX(独)', 1)).to be_falsy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_end?('(地独)XXX', 1)).to be_falsy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_end?('XXX(地独)', 1)).to be_falsy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_end?('(弁)XXX', 1)).to be_falsy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_end?('XXX(弁)', 1)).to be_falsy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_end?('(行)XXX', 1)).to be_falsy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_end?('XXX(行)', 1)).to be_falsy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_end?('(司)XXX', 1)).to be_falsy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_end?('XXX(司)', 1)).to be_falsy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_end?('(税)XXX', 1)).to be_falsy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_end?('XXX(税)', 1)).to be_falsy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_end?('(中)XXX', 1)).to be_falsy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_end?('XXX(中)', 1)).to be_falsy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_end?('(大)XXX', 1)).to be_falsy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_end?('XXX(大)', 1)).to be_falsy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_end?('(営)XXX', 1)).to be_falsy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_end?('XXX(営)', 1)).to be_falsy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_end?('(出)XXX', 1)).to be_falsy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_end?('XXX(出)', 1)).to be_falsy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_end?('カ)XXX', 1)).to be_falsy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_end?('XXXカ)', 1)).to be_falsy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_end?('(カ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_end?('XXX(カ)', 1)).to be_falsy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_end?('(カXXX', 1)).to be_falsy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_end?('XXX(カ', 1)).to be_falsy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_end?('ユ)XXX', 1)).to be_falsy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_end?('XXXユ)', 1)).to be_falsy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_end?('(ユ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_end?('XXX(ユ)', 1)).to be_falsy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_end?('(ユXXX', 1)).to be_falsy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_end?('XXX(ユ', 1)).to be_falsy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_end?('メ)XXX', 1)).to be_falsy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_end?('XXXメ)', 1)).to be_falsy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_end?('(メ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_end?('XXX(メ)', 1)).to be_falsy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_end?('(メXXX', 1)).to be_falsy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_end?('XXX(メ', 1)).to be_falsy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_end?('シ)XXX', 1)).to be_falsy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_end?('XXXシ)', 1)).to be_falsy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_end?('(シ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_end?('XXX(シ)', 1)).to be_falsy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_end?('(シXXX', 1)).to be_falsy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_end?('XXX(シ', 1)).to be_falsy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_end?('ド)XXX', 1)).to be_falsy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_end?('XXXド)', 1)).to be_falsy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_end?('(ド)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_end?('XXX(ド)', 1)).to be_falsy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_end?('(ドXXX', 1)).to be_falsy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_end?('XXX(ド', 1)).to be_falsy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_end?('シユウ)XXX', 1)).to be_falsy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_end?('XXXシユウ)', 1)).to be_falsy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_end?('ガク)XXX', 1)).to be_falsy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_end?('XXXガク)', 1)).to be_falsy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_end?('フク)XXX', 1)).to be_falsy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_end?('XXXフク)', 1)).to be_falsy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_end?('ホゴ)XXX', 1)).to be_falsy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_end?('XXXホゴ)', 1)).to be_falsy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_end?('(ホゴ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_end?('XXX(ホゴ)', 1)).to be_falsy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_end?('(ホゴXXX', 1)).to be_falsy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_end?('XXX(ホゴ', 1)).to be_falsy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_end?('ソ)XXX', 1)).to be_falsy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_end?('XXXソ)', 1)).to be_falsy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_end?('(ソ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_end?('XXX(ソ)', 1)).to be_falsy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_end?('(ソXXX', 1)).to be_falsy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_end?('XXX(ソ', 1)).to be_falsy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_end?('トクヒ)XXX', 1)).to be_falsy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_end?('XXXトクヒ)', 1)).to be_falsy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_end?('(トクヒ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_end?('XXX(トクヒ)', 1)).to be_falsy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_end?('(トクヒXXX', 1)).to be_falsy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_end?('XXX(トクヒ', 1)).to be_falsy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_end?('ドク)XXX', 1)).to be_falsy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_end?('XXXドク)', 1)).to be_falsy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_end?('(ドク)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_end?('XXX(ドク)', 1)).to be_falsy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_end?('(ドクXXX', 1)).to be_falsy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_end?('XXX(ドク', 1)).to be_falsy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_end?('チドク)XXX', 1)).to be_falsy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_end?('XXXチドク)', 1)).to be_falsy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_end?('(チドク)XXX', 1)).to be_falsy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_end?('XXX(チドク)', 1)).to be_falsy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_end?('(チドクXXX', 1)).to be_falsy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_end?('XXX(チドク', 1)).to be_falsy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_end?('ベン)XXX', 1)).to be_falsy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_end?('XXXベン)', 1)).to be_falsy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_end?('(ベン)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_end?('XXX(ベン)', 1)).to be_falsy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_end?('(ベンXXX', 1)).to be_falsy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_end?('XXX(ベン', 1)).to be_falsy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_end?('ギヨ)XXX', 1)).to be_falsy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_end?('XXXギヨ)', 1)).to be_falsy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_end?('(ギヨ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_end?('XXX(ギヨ)', 1)).to be_falsy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_end?('(ギヨXXX', 1)).to be_falsy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_end?('XXX(ギヨ', 1)).to be_falsy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_end?('シホウ)XXX', 1)).to be_falsy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_end?('XXXシホウ)', 1)).to be_falsy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_end?('(シホウ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_end?('XXX(シホウ)', 1)).to be_falsy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_end?('(シホウXXX', 1)).to be_falsy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_end?('XXX(シホウ', 1)).to be_falsy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_end?('ゼイ)XXX', 1)).to be_falsy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_end?('XXXゼイ)', 1)).to be_falsy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_end?('(ゼイ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_end?('XXX(ゼイ)', 1)).to be_falsy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_end?('(ゼイXXX', 1)).to be_falsy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_end?('XXX(ゼイ', 1)).to be_falsy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_end?('ノウ)XXX', 1)).to be_falsy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_end?('XXXノウ)', 1)).to be_falsy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_end?('(ノウ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_end?('XXX(ノウ)', 1)).to be_falsy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_end?('(ノウXXX', 1)).to be_falsy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_end?('XXX(ノウ', 1)).to be_falsy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_end?('カンリ)XXX', 1)).to be_falsy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_end?('XXXカンリ)', 1)).to be_falsy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_end?('(カンリ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_end?('XXX(カンリ)', 1)).to be_falsy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_end?('(カンリXXX', 1)).to be_falsy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_end?('XXX(カンリ', 1)).to be_falsy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_end?('ロウム)XXX', 1)).to be_falsy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_end?('XXXロウム)', 1)).to be_falsy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_end?('(ロウム)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_end?('XXX(ロウム)', 1)).to be_falsy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_end?('(ロウムXXX', 1)).to be_falsy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_end?('XXX(ロウム', 1)).to be_falsy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_end?('(ダイ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_end?('XXX(ダイ)', 1)).to be_falsy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_end?('(ダイXXX', 1)).to be_falsy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_end?('XXX(ダイ', 1)).to be_falsy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_end?('エイ)XXX', 1)).to be_falsy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_end?('XXXエイ)', 1)).to be_falsy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_end?('(エイ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_end?('XXX(エイ)', 1)).to be_falsy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_end?('(エイXXX', 1)).to be_falsy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_end?('XXX(エイ', 1)).to be_falsy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_end?('シユツ)XXX', 1)).to be_falsy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_end?('XXXシユツ)', 1)).to be_falsy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_end?('(シユツ)XXX', 1)).to be_falsy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_end?('XXX(シユツ)', 1)).to be_falsy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_end?('(シユツXXX', 1)).to be_falsy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_end?('XXX(シユツ', 1)).to be_falsy }
      end
    end
    context 'type: 2' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_end?('株式会社XXX', 2)).to be_falsy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_end?('XXX株式会社', 2)).to be_falsy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_end?('有限会社XXX', 2)).to be_falsy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_end?('XXX有限会社', 2)).to be_falsy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_end?('合名会社XXX', 2)).to be_falsy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_end?('XXX合名会社', 2)).to be_falsy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_end?('合資会社XXX', 2)).to be_falsy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_end?('XXX合資会社', 2)).to be_falsy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_end?('合同会社XXX', 2)).to be_falsy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_end?('XXX合同会社', 2)).to be_falsy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_end?('医療法人XXX', 2)).to be_falsy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_end?('XXX医療法人', 2)).to be_falsy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_end?('医療法人社団XXX', 2)).to be_falsy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_end?('XXX医療法人社団', 2)).to be_falsy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_end?('医療法人財団XXX', 2)).to be_falsy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_end?('XXX医療法人財団', 2)).to be_falsy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_end?('社会医療法人XXX', 2)).to be_falsy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_end?('XXX社会医療法人', 2)).to be_falsy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_end?('財団法人XXX', 2)).to be_falsy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_end?('XXX財団法人', 2)).to be_falsy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_end?('一般財団法人XXX', 2)).to be_falsy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_end?('XXX一般財団法人', 2)).to be_falsy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_end?('公益財団法人XXX', 2)).to be_falsy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_end?('XXX公益財団法人', 2)).to be_falsy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_end?('社団法人XXX', 2)).to be_falsy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_end?('XXX社団法人', 2)).to be_falsy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_end?('一般社団法人XXX', 2)).to be_falsy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_end?('XXX一般社団法人', 2)).to be_falsy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_end?('公益社団法人XXX', 2)).to be_falsy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_end?('XXX公益社団法人', 2)).to be_falsy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_end?('宗教法人XXX', 2)).to be_falsy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_end?('XXX宗教法人', 2)).to be_falsy }
      end

      context '先頭 学校法人' do
        it { expect(Syamei.with_end?('学校法人XXX', 2)).to be_falsy }
      end

      context '末尾 学校法人' do
        it { expect(Syamei.with_end?('XXX学校法人', 2)).to be_falsy }
      end

      context '先頭 社会福祉法人' do
        it { expect(Syamei.with_end?('社会福祉法人XXX', 2)).to be_falsy }
      end

      context '末尾 社会福祉法人' do
        it { expect(Syamei.with_end?('XXX社会福祉法人', 2)).to be_falsy }
      end

      context '先頭 更生保護法人' do
        it { expect(Syamei.with_end?('更生保護法人XXX', 2)).to be_falsy }
      end

      context '末尾 更生保護法人' do
        it { expect(Syamei.with_end?('XXX更生保護法人', 2)).to be_falsy }
      end

      context '先頭 相互会社' do
        it { expect(Syamei.with_end?('相互会社XXX', 2)).to be_falsy }
      end

      context '末尾 相互会社' do
        it { expect(Syamei.with_end?('XXX相互会社', 2)).to be_falsy }
      end

      context '先頭 特定非営利活動法人' do
        it { expect(Syamei.with_end?('特定非営利活動法人XXX', 2)).to be_falsy }
      end

      context '末尾 特定非営利活動法人' do
        it { expect(Syamei.with_end?('XXX特定非営利活動法人', 2)).to be_falsy }
      end

      context '先頭 独立行政法人' do
        it { expect(Syamei.with_end?('独立行政法人XXX', 2)).to be_falsy }
      end

      context '末尾 独立行政法人' do
        it { expect(Syamei.with_end?('XXX独立行政法人', 2)).to be_falsy }
      end

      context '先頭 地方独立行政法人' do
        it { expect(Syamei.with_end?('地方独立行政法人XXX', 2)).to be_falsy }
      end

      context '末尾 地方独立行政法人' do
        it { expect(Syamei.with_end?('XXX地方独立行政法人', 2)).to be_falsy }
      end

      context '先頭 弁護士法人' do
        it { expect(Syamei.with_end?('弁護士法人XXX', 2)).to be_falsy }
      end

      context '末尾 弁護士法人' do
        it { expect(Syamei.with_end?('XXX弁護士法人', 2)).to be_falsy }
      end

      context '先頭 有限責任中間法人' do
        it { expect(Syamei.with_end?('有限責任中間法人XXX', 2)).to be_falsy }
      end

      context '末尾 有限責任中間法人' do
        it { expect(Syamei.with_end?('XXX有限責任中間法人', 2)).to be_falsy }
      end

      context '先頭 無限責任中間法人' do
        it { expect(Syamei.with_end?('無限責任中間法人XXX', 2)).to be_falsy }
      end

      context '末尾 無限責任中間法人' do
        it { expect(Syamei.with_end?('XXX無限責任中間法人', 2)).to be_falsy }
      end

      context '先頭 行政書士法人' do
        it { expect(Syamei.with_end?('行政書士法人XXX', 2)).to be_falsy }
      end

      context '末尾 行政書士法人' do
        it { expect(Syamei.with_end?('XXX行政書士法人', 2)).to be_falsy }
      end

      context '先頭 司法書士法人' do
        it { expect(Syamei.with_end?('司法書士法人XXX', 2)).to be_falsy }
      end

      context '末尾 司法書士法人' do
        it { expect(Syamei.with_end?('XXX司法書士法人', 2)).to be_falsy }
      end

      context '先頭 税理士法人' do
        it { expect(Syamei.with_end?('税理士法人XXX', 2)).to be_falsy }
      end

      context '末尾 税理士法人' do
        it { expect(Syamei.with_end?('XXX税理士法人', 2)).to be_falsy }
      end

      context '先頭 国立大学法人' do
        it { expect(Syamei.with_end?('国立大学法人XXX', 2)).to be_falsy }
      end

      context '末尾 国立大学法人' do
        it { expect(Syamei.with_end?('XXX国立大学法人', 2)).to be_falsy }
      end

      context '先頭 公立大学法人' do
        it { expect(Syamei.with_end?('公立大学法人XXX', 2)).to be_falsy }
      end

      context '末尾 公立大学法人' do
        it { expect(Syamei.with_end?('XXX公立大学法人', 2)).to be_falsy }
      end

      context '先頭 農事組合法人' do
        it { expect(Syamei.with_end?('農事組合法人XXX', 2)).to be_falsy }
      end

      context '末尾 農事組合法人' do
        it { expect(Syamei.with_end?('XXX農事組合法人', 2)).to be_falsy }
      end

      context '先頭 管理組合法人' do
        it { expect(Syamei.with_end?('管理組合法人XXX', 2)).to be_falsy }
      end

      context '末尾 管理組合法人' do
        it { expect(Syamei.with_end?('XXX管理組合法人', 2)).to be_falsy }
      end

      context '先頭 社会保険労務士法人' do
        it { expect(Syamei.with_end?('社会保険労務士法人XXX', 2)).to be_falsy }
      end

      context '末尾 社会保険労務士法人' do
        it { expect(Syamei.with_end?('XXX社会保険労務士法人', 2)).to be_falsy }
      end

      context '先頭 営業所' do
        it { expect(Syamei.with_end?('営業所XXX', 2)).to be_falsy }
      end

      context '末尾 営業所' do
        it { expect(Syamei.with_end?('XXX営業所', 2)).to be_falsy }
      end

      context '先頭 出張所' do
        it { expect(Syamei.with_end?('出張所XXX', 2)).to be_falsy }
      end

      context '末尾 出張所' do
        it { expect(Syamei.with_end?('XXX出張所', 2)).to be_falsy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_end?('㈱XXX', 2)).to be_falsy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_end?('XXX㈱', 2)).to be_truthy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_end?('(株)XXX', 2)).to be_falsy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_end?('XXX(株)', 2)).to be_truthy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_end?('㈲XXX', 2)).to be_falsy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_end?('XXX㈲', 2)).to be_truthy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_end?('(有)XXX', 2)).to be_falsy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_end?('XXX(有)', 2)).to be_truthy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_end?('(名)XXX', 2)).to be_falsy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_end?('XXX(名)', 2)).to be_truthy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_end?('(資)XXX', 2)).to be_falsy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_end?('XXX(資)', 2)).to be_truthy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_end?('(同)XXX', 2)).to be_falsy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_end?('XXX(同)', 2)).to be_truthy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_end?('(医)XXX', 2)).to be_falsy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_end?('XXX(医)', 2)).to be_truthy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_end?('(財)XXX', 2)).to be_falsy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_end?('XXX(財)', 2)).to be_truthy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_end?('(一財)XXX', 2)).to be_falsy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_end?('XXX(一財)', 2)).to be_truthy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_end?('(公財)XXX', 2)).to be_falsy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_end?('XXX(公財)', 2)).to be_truthy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_end?('(社)XXX', 2)).to be_falsy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_end?('XXX(社)', 2)).to be_truthy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_end?('(一社)XXX', 2)).to be_falsy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_end?('XXX(一社)', 2)).to be_truthy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_end?('(公社)XXX', 2)).to be_falsy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_end?('XXX(公社)', 2)).to be_truthy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_end?('(宗)XXX', 2)).to be_falsy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_end?('XXX(宗)', 2)).to be_truthy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_end?('(学)XXX', 2)).to be_falsy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_end?('XXX(学)', 2)).to be_truthy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_end?('(福)XXX', 2)).to be_falsy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_end?('XXX(福)', 2)).to be_truthy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_end?('(相)XXX', 2)).to be_falsy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_end?('XXX(相)', 2)).to be_truthy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_end?('(特非)XXX', 2)).to be_falsy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_end?('XXX(特非)', 2)).to be_truthy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_end?('(独)XXX', 2)).to be_falsy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_end?('XXX(独)', 2)).to be_truthy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_end?('(地独)XXX', 2)).to be_falsy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_end?('XXX(地独)', 2)).to be_truthy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_end?('(弁)XXX', 2)).to be_falsy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_end?('XXX(弁)', 2)).to be_truthy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_end?('(行)XXX', 2)).to be_falsy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_end?('XXX(行)', 2)).to be_truthy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_end?('(司)XXX', 2)).to be_falsy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_end?('XXX(司)', 2)).to be_truthy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_end?('(税)XXX', 2)).to be_falsy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_end?('XXX(税)', 2)).to be_truthy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_end?('(中)XXX', 2)).to be_falsy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_end?('XXX(中)', 2)).to be_truthy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_end?('(大)XXX', 2)).to be_falsy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_end?('XXX(大)', 2)).to be_truthy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_end?('(営)XXX', 2)).to be_falsy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_end?('XXX(営)', 2)).to be_truthy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_end?('(出)XXX', 2)).to be_falsy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_end?('XXX(出)', 2)).to be_truthy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_end?('カ)XXX', 2)).to be_falsy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_end?('XXXカ)', 2)).to be_falsy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_end?('(カ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_end?('XXX(カ)', 2)).to be_falsy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_end?('(カXXX', 2)).to be_falsy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_end?('XXX(カ', 2)).to be_falsy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_end?('ユ)XXX', 2)).to be_falsy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_end?('XXXユ)', 2)).to be_falsy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_end?('(ユ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_end?('XXX(ユ)', 2)).to be_falsy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_end?('(ユXXX', 2)).to be_falsy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_end?('XXX(ユ', 2)).to be_falsy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_end?('メ)XXX', 2)).to be_falsy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_end?('XXXメ)', 2)).to be_falsy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_end?('(メ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_end?('XXX(メ)', 2)).to be_falsy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_end?('(メXXX', 2)).to be_falsy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_end?('XXX(メ', 2)).to be_falsy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_end?('シ)XXX', 2)).to be_falsy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_end?('XXXシ)', 2)).to be_falsy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_end?('(シ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_end?('XXX(シ)', 2)).to be_falsy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_end?('(シXXX', 2)).to be_falsy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_end?('XXX(シ', 2)).to be_falsy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_end?('ド)XXX', 2)).to be_falsy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_end?('XXXド)', 2)).to be_falsy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_end?('(ド)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_end?('XXX(ド)', 2)).to be_falsy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_end?('(ドXXX', 2)).to be_falsy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_end?('XXX(ド', 2)).to be_falsy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_end?('シユウ)XXX', 2)).to be_falsy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_end?('XXXシユウ)', 2)).to be_falsy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_end?('ガク)XXX', 2)).to be_falsy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_end?('XXXガク)', 2)).to be_falsy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_end?('フク)XXX', 2)).to be_falsy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_end?('XXXフク)', 2)).to be_falsy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_end?('ホゴ)XXX', 2)).to be_falsy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_end?('XXXホゴ)', 2)).to be_falsy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_end?('(ホゴ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_end?('XXX(ホゴ)', 2)).to be_falsy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_end?('(ホゴXXX', 2)).to be_falsy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_end?('XXX(ホゴ', 2)).to be_falsy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_end?('ソ)XXX', 2)).to be_falsy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_end?('XXXソ)', 2)).to be_falsy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_end?('(ソ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_end?('XXX(ソ)', 2)).to be_falsy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_end?('(ソXXX', 2)).to be_falsy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_end?('XXX(ソ', 2)).to be_falsy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_end?('トクヒ)XXX', 2)).to be_falsy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_end?('XXXトクヒ)', 2)).to be_falsy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_end?('(トクヒ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_end?('XXX(トクヒ)', 2)).to be_falsy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_end?('(トクヒXXX', 2)).to be_falsy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_end?('XXX(トクヒ', 2)).to be_falsy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_end?('ドク)XXX', 2)).to be_falsy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_end?('XXXドク)', 2)).to be_falsy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_end?('(ドク)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_end?('XXX(ドク)', 2)).to be_falsy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_end?('(ドクXXX', 2)).to be_falsy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_end?('XXX(ドク', 2)).to be_falsy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_end?('チドク)XXX', 2)).to be_falsy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_end?('XXXチドク)', 2)).to be_falsy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_end?('(チドク)XXX', 2)).to be_falsy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_end?('XXX(チドク)', 2)).to be_falsy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_end?('(チドクXXX', 2)).to be_falsy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_end?('XXX(チドク', 2)).to be_falsy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_end?('ベン)XXX', 2)).to be_falsy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_end?('XXXベン)', 2)).to be_falsy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_end?('(ベン)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_end?('XXX(ベン)', 2)).to be_falsy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_end?('(ベンXXX', 2)).to be_falsy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_end?('XXX(ベン', 2)).to be_falsy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_end?('ギヨ)XXX', 2)).to be_falsy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_end?('XXXギヨ)', 2)).to be_falsy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_end?('(ギヨ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_end?('XXX(ギヨ)', 2)).to be_falsy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_end?('(ギヨXXX', 2)).to be_falsy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_end?('XXX(ギヨ', 2)).to be_falsy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_end?('シホウ)XXX', 2)).to be_falsy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_end?('XXXシホウ)', 2)).to be_falsy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_end?('(シホウ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_end?('XXX(シホウ)', 2)).to be_falsy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_end?('(シホウXXX', 2)).to be_falsy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_end?('XXX(シホウ', 2)).to be_falsy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_end?('ゼイ)XXX', 2)).to be_falsy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_end?('XXXゼイ)', 2)).to be_falsy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_end?('(ゼイ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_end?('XXX(ゼイ)', 2)).to be_falsy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_end?('(ゼイXXX', 2)).to be_falsy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_end?('XXX(ゼイ', 2)).to be_falsy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_end?('ノウ)XXX', 2)).to be_falsy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_end?('XXXノウ)', 2)).to be_falsy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_end?('(ノウ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_end?('XXX(ノウ)', 2)).to be_falsy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_end?('(ノウXXX', 2)).to be_falsy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_end?('XXX(ノウ', 2)).to be_falsy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_end?('カンリ)XXX', 2)).to be_falsy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_end?('XXXカンリ)', 2)).to be_falsy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_end?('(カンリ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_end?('XXX(カンリ)', 2)).to be_falsy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_end?('(カンリXXX', 2)).to be_falsy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_end?('XXX(カンリ', 2)).to be_falsy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_end?('ロウム)XXX', 2)).to be_falsy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_end?('XXXロウム)', 2)).to be_falsy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_end?('(ロウム)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_end?('XXX(ロウム)', 2)).to be_falsy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_end?('(ロウムXXX', 2)).to be_falsy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_end?('XXX(ロウム', 2)).to be_falsy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_end?('(ダイ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_end?('XXX(ダイ)', 2)).to be_falsy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_end?('(ダイXXX', 2)).to be_falsy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_end?('XXX(ダイ', 2)).to be_falsy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_end?('エイ)XXX', 2)).to be_falsy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_end?('XXXエイ)', 2)).to be_falsy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_end?('(エイ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_end?('XXX(エイ)', 2)).to be_falsy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_end?('(エイXXX', 2)).to be_falsy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_end?('XXX(エイ', 2)).to be_falsy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_end?('シユツ)XXX', 2)).to be_falsy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_end?('XXXシユツ)', 2)).to be_falsy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_end?('(シユツ)XXX', 2)).to be_falsy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_end?('XXX(シユツ)', 2)).to be_falsy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_end?('(シユツXXX', 2)).to be_falsy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_end?('XXX(シユツ', 2)).to be_falsy }
      end
    end
    context 'type: 3' do
      context '先頭 株式会社' do
        it { expect(Syamei.with_end?('株式会社XXX', 3)).to be_falsy }
      end

      context '末尾 株式会社' do
        it { expect(Syamei.with_end?('XXX株式会社', 3)).to be_falsy }
      end

      context '先頭 有限会社' do
        it { expect(Syamei.with_end?('有限会社XXX', 3)).to be_falsy }
      end

      context '末尾 有限会社' do
        it { expect(Syamei.with_end?('XXX有限会社', 3)).to be_falsy }
      end

      context '先頭 合名会社' do
        it { expect(Syamei.with_end?('合名会社XXX', 3)).to be_falsy }
      end

      context '末尾 合名会社' do
        it { expect(Syamei.with_end?('XXX合名会社', 3)).to be_falsy }
      end

      context '先頭 合資会社' do
        it { expect(Syamei.with_end?('合資会社XXX', 3)).to be_falsy }
      end

      context '末尾 合資会社' do
        it { expect(Syamei.with_end?('XXX合資会社', 3)).to be_falsy }
      end

      context '先頭 合同会社' do
        it { expect(Syamei.with_end?('合同会社XXX', 3)).to be_falsy }
      end

      context '末尾 合同会社' do
        it { expect(Syamei.with_end?('XXX合同会社', 3)).to be_falsy }
      end

      context '先頭 医療法人' do
        it { expect(Syamei.with_end?('医療法人XXX', 3)).to be_falsy }
      end

      context '末尾 医療法人' do
        it { expect(Syamei.with_end?('XXX医療法人', 3)).to be_falsy }
      end

      context '先頭 医療法人社団' do
        it { expect(Syamei.with_end?('医療法人社団XXX', 3)).to be_falsy }
      end

      context '末尾 医療法人社団' do
        it { expect(Syamei.with_end?('XXX医療法人社団', 3)).to be_falsy }
      end

      context '先頭 医療法人財団' do
        it { expect(Syamei.with_end?('医療法人財団XXX', 3)).to be_falsy }
      end

      context '末尾 医療法人財団' do
        it { expect(Syamei.with_end?('XXX医療法人財団', 3)).to be_falsy }
      end

      context '先頭 社会医療法人' do
        it { expect(Syamei.with_end?('社会医療法人XXX', 3)).to be_falsy }
      end

      context '末尾 社会医療法人' do
        it { expect(Syamei.with_end?('XXX社会医療法人', 3)).to be_falsy }
      end

      context '先頭 財団法人' do
        it { expect(Syamei.with_end?('財団法人XXX', 3)).to be_falsy }
      end

      context '末尾 財団法人' do
        it { expect(Syamei.with_end?('XXX財団法人', 3)).to be_falsy }
      end

      context '先頭 一般財団法人' do
        it { expect(Syamei.with_end?('一般財団法人XXX', 3)).to be_falsy }
      end

      context '末尾 一般財団法人' do
        it { expect(Syamei.with_end?('XXX一般財団法人', 3)).to be_falsy }
      end

      context '先頭 公益財団法人' do
        it { expect(Syamei.with_end?('公益財団法人XXX', 3)).to be_falsy }
      end

      context '末尾 公益財団法人' do
        it { expect(Syamei.with_end?('XXX公益財団法人', 3)).to be_falsy }
      end

      context '先頭 社団法人' do
        it { expect(Syamei.with_end?('社団法人XXX', 3)).to be_falsy }
      end

      context '末尾 社団法人' do
        it { expect(Syamei.with_end?('XXX社団法人', 3)).to be_falsy }
      end

      context '先頭 一般社団法人' do
        it { expect(Syamei.with_end?('一般社団法人XXX', 3)).to be_falsy }
      end

      context '末尾 一般社団法人' do
        it { expect(Syamei.with_end?('XXX一般社団法人', 3)).to be_falsy }
      end

      context '先頭 公益社団法人' do
        it { expect(Syamei.with_end?('公益社団法人XXX', 3)).to be_falsy }
      end

      context '末尾 公益社団法人' do
        it { expect(Syamei.with_end?('XXX公益社団法人', 3)).to be_falsy }
      end

      context '先頭 宗教法人' do
        it { expect(Syamei.with_end?('宗教法人XXX', 3)).to be_falsy }
      end

      context '末尾 宗教法人' do
        it { expect(Syamei.with_end?('XXX宗教法人', 3)).to be_falsy }
      end

      context '先頭 学校法人' do
        it { expect(Syamei.with_end?('学校法人XXX', 3)).to be_falsy }
      end

      context '末尾 学校法人' do
        it { expect(Syamei.with_end?('XXX学校法人', 3)).to be_falsy }
      end

      context '先頭 社会福祉法人' do
        it { expect(Syamei.with_end?('社会福祉法人XXX', 3)).to be_falsy }
      end

      context '末尾 社会福祉法人' do
        it { expect(Syamei.with_end?('XXX社会福祉法人', 3)).to be_falsy }
      end

      context '先頭 更生保護法人' do
        it { expect(Syamei.with_end?('更生保護法人XXX', 3)).to be_falsy }
      end

      context '末尾 更生保護法人' do
        it { expect(Syamei.with_end?('XXX更生保護法人', 3)).to be_falsy }
      end

      context '先頭 相互会社' do
        it { expect(Syamei.with_end?('相互会社XXX', 3)).to be_falsy }
      end

      context '末尾 相互会社' do
        it { expect(Syamei.with_end?('XXX相互会社', 3)).to be_falsy }
      end

      context '先頭 特定非営利活動法人' do
        it { expect(Syamei.with_end?('特定非営利活動法人XXX', 3)).to be_falsy }
      end

      context '末尾 特定非営利活動法人' do
        it { expect(Syamei.with_end?('XXX特定非営利活動法人', 3)).to be_falsy }
      end

      context '先頭 独立行政法人' do
        it { expect(Syamei.with_end?('独立行政法人XXX', 3)).to be_falsy }
      end

      context '末尾 独立行政法人' do
        it { expect(Syamei.with_end?('XXX独立行政法人', 3)).to be_falsy }
      end

      context '先頭 地方独立行政法人' do
        it { expect(Syamei.with_end?('地方独立行政法人XXX', 3)).to be_falsy }
      end

      context '末尾 地方独立行政法人' do
        it { expect(Syamei.with_end?('XXX地方独立行政法人', 3)).to be_falsy }
      end

      context '先頭 弁護士法人' do
        it { expect(Syamei.with_end?('弁護士法人XXX', 3)).to be_falsy }
      end

      context '末尾 弁護士法人' do
        it { expect(Syamei.with_end?('XXX弁護士法人', 3)).to be_falsy }
      end

      context '先頭 有限責任中間法人' do
        it { expect(Syamei.with_end?('有限責任中間法人XXX', 3)).to be_falsy }
      end

      context '末尾 有限責任中間法人' do
        it { expect(Syamei.with_end?('XXX有限責任中間法人', 3)).to be_falsy }
      end

      context '先頭 無限責任中間法人' do
        it { expect(Syamei.with_end?('無限責任中間法人XXX', 3)).to be_falsy }
      end

      context '末尾 無限責任中間法人' do
        it { expect(Syamei.with_end?('XXX無限責任中間法人', 3)).to be_falsy }
      end

      context '先頭 行政書士法人' do
        it { expect(Syamei.with_end?('行政書士法人XXX', 3)).to be_falsy }
      end

      context '末尾 行政書士法人' do
        it { expect(Syamei.with_end?('XXX行政書士法人', 3)).to be_falsy }
      end

      context '先頭 司法書士法人' do
        it { expect(Syamei.with_end?('司法書士法人XXX', 3)).to be_falsy }
      end

      context '末尾 司法書士法人' do
        it { expect(Syamei.with_end?('XXX司法書士法人', 3)).to be_falsy }
      end

      context '先頭 税理士法人' do
        it { expect(Syamei.with_end?('税理士法人XXX', 3)).to be_falsy }
      end

      context '末尾 税理士法人' do
        it { expect(Syamei.with_end?('XXX税理士法人', 3)).to be_falsy }
      end

      context '先頭 国立大学法人' do
        it { expect(Syamei.with_end?('国立大学法人XXX', 3)).to be_falsy }
      end

      context '末尾 国立大学法人' do
        it { expect(Syamei.with_end?('XXX国立大学法人', 3)).to be_falsy }
      end

      context '先頭 公立大学法人' do
        it { expect(Syamei.with_end?('公立大学法人XXX', 3)).to be_falsy }
      end

      context '末尾 公立大学法人' do
        it { expect(Syamei.with_end?('XXX公立大学法人', 3)).to be_falsy }
      end

      context '先頭 農事組合法人' do
        it { expect(Syamei.with_end?('農事組合法人XXX', 3)).to be_falsy }
      end

      context '末尾 農事組合法人' do
        it { expect(Syamei.with_end?('XXX農事組合法人', 3)).to be_falsy }
      end

      context '先頭 管理組合法人' do
        it { expect(Syamei.with_end?('管理組合法人XXX', 3)).to be_falsy }
      end

      context '末尾 管理組合法人' do
        it { expect(Syamei.with_end?('XXX管理組合法人', 3)).to be_falsy }
      end

      context '先頭 社会保険労務士法人' do
        it { expect(Syamei.with_end?('社会保険労務士法人XXX', 3)).to be_falsy }
      end

      context '末尾 社会保険労務士法人' do
        it { expect(Syamei.with_end?('XXX社会保険労務士法人', 3)).to be_falsy }
      end

      context '先頭 営業所' do
        it { expect(Syamei.with_end?('営業所XXX', 3)).to be_falsy }
      end

      context '末尾 営業所' do
        it { expect(Syamei.with_end?('XXX営業所', 3)).to be_falsy }
      end

      context '先頭 出張所' do
        it { expect(Syamei.with_end?('出張所XXX', 3)).to be_falsy }
      end

      context '末尾 出張所' do
        it { expect(Syamei.with_end?('XXX出張所', 3)).to be_falsy }
      end

      context '先頭 ㈱' do
        it { expect(Syamei.with_end?('㈱XXX', 3)).to be_falsy }
      end

      context '末尾 ㈱' do
        it { expect(Syamei.with_end?('XXX㈱', 3)).to be_falsy }
      end

      context '先頭 \(株\)' do
        it { expect(Syamei.with_end?('(株)XXX', 3)).to be_falsy }
      end

      context '末尾 \(株\)' do
        it { expect(Syamei.with_end?('XXX(株)', 3)).to be_falsy }
      end

      context '先頭 ㈲' do
        it { expect(Syamei.with_end?('㈲XXX', 3)).to be_falsy }
      end

      context '末尾 ㈲' do
        it { expect(Syamei.with_end?('XXX㈲', 3)).to be_falsy }
      end

      context '先頭 \(有\)' do
        it { expect(Syamei.with_end?('(有)XXX', 3)).to be_falsy }
      end

      context '末尾 \(有\)' do
        it { expect(Syamei.with_end?('XXX(有)', 3)).to be_falsy }
      end

      context '先頭 \(名\)' do
        it { expect(Syamei.with_end?('(名)XXX', 3)).to be_falsy }
      end

      context '末尾 \(名\)' do
        it { expect(Syamei.with_end?('XXX(名)', 3)).to be_falsy }
      end

      context '先頭 \(資\)' do
        it { expect(Syamei.with_end?('(資)XXX', 3)).to be_falsy }
      end

      context '末尾 \(資\)' do
        it { expect(Syamei.with_end?('XXX(資)', 3)).to be_falsy }
      end

      context '先頭 \(同\)' do
        it { expect(Syamei.with_end?('(同)XXX', 3)).to be_falsy }
      end

      context '末尾 \(同\)' do
        it { expect(Syamei.with_end?('XXX(同)', 3)).to be_falsy }
      end

      context '先頭 \(医\)' do
        it { expect(Syamei.with_end?('(医)XXX', 3)).to be_falsy }
      end

      context '末尾 \(医\)' do
        it { expect(Syamei.with_end?('XXX(医)', 3)).to be_falsy }
      end

      context '先頭 \(財\)' do
        it { expect(Syamei.with_end?('(財)XXX', 3)).to be_falsy }
      end

      context '末尾 \(財\)' do
        it { expect(Syamei.with_end?('XXX(財)', 3)).to be_falsy }
      end

      context '先頭 \(一財\)' do
        it { expect(Syamei.with_end?('(一財)XXX', 3)).to be_falsy }
      end

      context '末尾 \(一財\)' do
        it { expect(Syamei.with_end?('XXX(一財)', 3)).to be_falsy }
      end

      context '先頭 \(公財\)' do
        it { expect(Syamei.with_end?('(公財)XXX', 3)).to be_falsy }
      end

      context '末尾 \(公財\)' do
        it { expect(Syamei.with_end?('XXX(公財)', 3)).to be_falsy }
      end

      context '先頭 \(社\)' do
        it { expect(Syamei.with_end?('(社)XXX', 3)).to be_falsy }
      end

      context '末尾 \(社\)' do
        it { expect(Syamei.with_end?('XXX(社)', 3)).to be_falsy }
      end

      context '先頭 \(一社\)' do
        it { expect(Syamei.with_end?('(一社)XXX', 3)).to be_falsy }
      end

      context '末尾 \(一社\)' do
        it { expect(Syamei.with_end?('XXX(一社)', 3)).to be_falsy }
      end

      context '先頭 \(公社\)' do
        it { expect(Syamei.with_end?('(公社)XXX', 3)).to be_falsy }
      end

      context '末尾 \(公社\)' do
        it { expect(Syamei.with_end?('XXX(公社)', 3)).to be_falsy }
      end

      context '先頭 \(宗\)' do
        it { expect(Syamei.with_end?('(宗)XXX', 3)).to be_falsy }
      end

      context '末尾 \(宗\)' do
        it { expect(Syamei.with_end?('XXX(宗)', 3)).to be_falsy }
      end

      context '先頭 \(学\)' do
        it { expect(Syamei.with_end?('(学)XXX', 3)).to be_falsy }
      end

      context '末尾 \(学\)' do
        it { expect(Syamei.with_end?('XXX(学)', 3)).to be_falsy }
      end

      context '先頭 \(福\)' do
        it { expect(Syamei.with_end?('(福)XXX', 3)).to be_falsy }
      end

      context '末尾 \(福\)' do
        it { expect(Syamei.with_end?('XXX(福)', 3)).to be_falsy }
      end

      context '先頭 \(相\)' do
        it { expect(Syamei.with_end?('(相)XXX', 3)).to be_falsy }
      end

      context '末尾 \(相\)' do
        it { expect(Syamei.with_end?('XXX(相)', 3)).to be_falsy }
      end

      context '先頭 \(特非\)' do
        it { expect(Syamei.with_end?('(特非)XXX', 3)).to be_falsy }
      end

      context '末尾 \(特非\)' do
        it { expect(Syamei.with_end?('XXX(特非)', 3)).to be_falsy }
      end

      context '先頭 \(独\)' do
        it { expect(Syamei.with_end?('(独)XXX', 3)).to be_falsy }
      end

      context '末尾 \(独\)' do
        it { expect(Syamei.with_end?('XXX(独)', 3)).to be_falsy }
      end

      context '先頭 \(地独\)' do
        it { expect(Syamei.with_end?('(地独)XXX', 3)).to be_falsy }
      end

      context '末尾 \(地独\)' do
        it { expect(Syamei.with_end?('XXX(地独)', 3)).to be_falsy }
      end

      context '先頭 \(弁\)' do
        it { expect(Syamei.with_end?('(弁)XXX', 3)).to be_falsy }
      end

      context '末尾 \(弁\)' do
        it { expect(Syamei.with_end?('XXX(弁)', 3)).to be_falsy }
      end

      context '先頭 \(行\)' do
        it { expect(Syamei.with_end?('(行)XXX', 3)).to be_falsy }
      end

      context '末尾 \(行\)' do
        it { expect(Syamei.with_end?('XXX(行)', 3)).to be_falsy }
      end

      context '先頭 \(司\)' do
        it { expect(Syamei.with_end?('(司)XXX', 3)).to be_falsy }
      end

      context '末尾 \(司\)' do
        it { expect(Syamei.with_end?('XXX(司)', 3)).to be_falsy }
      end

      context '先頭 \(税\)' do
        it { expect(Syamei.with_end?('(税)XXX', 3)).to be_falsy }
      end

      context '末尾 \(税\)' do
        it { expect(Syamei.with_end?('XXX(税)', 3)).to be_falsy }
      end

      context '先頭 \(中\)' do
        it { expect(Syamei.with_end?('(中)XXX', 3)).to be_falsy }
      end

      context '末尾 \(中\)' do
        it { expect(Syamei.with_end?('XXX(中)', 3)).to be_falsy }
      end

      context '先頭 \(大\)' do
        it { expect(Syamei.with_end?('(大)XXX', 3)).to be_falsy }
      end

      context '末尾 \(大\)' do
        it { expect(Syamei.with_end?('XXX(大)', 3)).to be_falsy }
      end

      context '先頭 \(営\)' do
        it { expect(Syamei.with_end?('(営)XXX', 3)).to be_falsy }
      end

      context '末尾 \(営\)' do
        it { expect(Syamei.with_end?('XXX(営)', 3)).to be_falsy }
      end

      context '先頭 \(出\)' do
        it { expect(Syamei.with_end?('(出)XXX', 3)).to be_falsy }
      end

      context '末尾 \(出\)' do
        it { expect(Syamei.with_end?('XXX(出)', 3)).to be_falsy }
      end

      context '先頭 カ\)' do
        it { expect(Syamei.with_end?('カ)XXX', 3)).to be_falsy }
      end

      context '末尾 カ\)' do
        it { expect(Syamei.with_end?('XXXカ)', 3)).to be_truthy }
      end

      context '先頭 \(カ\)' do
        it { expect(Syamei.with_end?('(カ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(カ\)' do
        it { expect(Syamei.with_end?('XXX(カ)', 3)).to be_truthy }
      end

      context '先頭 \(カ' do
        it { expect(Syamei.with_end?('(カXXX', 3)).to be_falsy }
      end

      context '末尾 \(カ' do
        it { expect(Syamei.with_end?('XXX(カ', 3)).to be_truthy }
      end

      context '先頭 ユ\)' do
        it { expect(Syamei.with_end?('ユ)XXX', 3)).to be_falsy }
      end

      context '末尾 ユ\)' do
        it { expect(Syamei.with_end?('XXXユ)', 3)).to be_truthy }
      end

      context '先頭 \(ユ\)' do
        it { expect(Syamei.with_end?('(ユ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ユ\)' do
        it { expect(Syamei.with_end?('XXX(ユ)', 3)).to be_truthy }
      end

      context '先頭 \(ユ' do
        it { expect(Syamei.with_end?('(ユXXX', 3)).to be_falsy }
      end

      context '末尾 \(ユ' do
        it { expect(Syamei.with_end?('XXX(ユ', 3)).to be_truthy }
      end

      context '先頭 メ\)' do
        it { expect(Syamei.with_end?('メ)XXX', 3)).to be_falsy }
      end

      context '末尾 メ\)' do
        it { expect(Syamei.with_end?('XXXメ)', 3)).to be_truthy }
      end

      context '先頭 \(メ\)' do
        it { expect(Syamei.with_end?('(メ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(メ\)' do
        it { expect(Syamei.with_end?('XXX(メ)', 3)).to be_truthy }
      end

      context '先頭 \(メ' do
        it { expect(Syamei.with_end?('(メXXX', 3)).to be_falsy }
      end

      context '末尾 \(メ' do
        it { expect(Syamei.with_end?('XXX(メ', 3)).to be_truthy }
      end

      context '先頭 シ\)' do
        it { expect(Syamei.with_end?('シ)XXX', 3)).to be_falsy }
      end

      context '末尾 シ\)' do
        it { expect(Syamei.with_end?('XXXシ)', 3)).to be_truthy }
      end

      context '先頭 \(シ\)' do
        it { expect(Syamei.with_end?('(シ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(シ\)' do
        it { expect(Syamei.with_end?('XXX(シ)', 3)).to be_truthy }
      end

      context '先頭 \(シ' do
        it { expect(Syamei.with_end?('(シXXX', 3)).to be_falsy }
      end

      context '末尾 \(シ' do
        it { expect(Syamei.with_end?('XXX(シ', 3)).to be_truthy }
      end

      context '先頭 ド\)' do
        it { expect(Syamei.with_end?('ド)XXX', 3)).to be_falsy }
      end

      context '末尾 ド\)' do
        it { expect(Syamei.with_end?('XXXド)', 3)).to be_truthy }
      end

      context '先頭 \(ド\)' do
        it { expect(Syamei.with_end?('(ド)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ド\)' do
        it { expect(Syamei.with_end?('XXX(ド)', 3)).to be_truthy }
      end

      context '先頭 \(ド' do
        it { expect(Syamei.with_end?('(ドXXX', 3)).to be_falsy }
      end

      context '末尾 \(ド' do
        it { expect(Syamei.with_end?('XXX(ド', 3)).to be_truthy }
      end

      context '先頭 シユウ\)' do
        it { expect(Syamei.with_end?('シユウ)XXX', 3)).to be_falsy }
      end

      context '末尾 シユウ\)' do
        it { expect(Syamei.with_end?('XXXシユウ)', 3)).to be_truthy }
      end

      context '先頭 ガク\)' do
        it { expect(Syamei.with_end?('ガク)XXX', 3)).to be_falsy }
      end

      context '末尾 ガク\)' do
        it { expect(Syamei.with_end?('XXXガク)', 3)).to be_truthy }
      end

      context '先頭 フク\)' do
        it { expect(Syamei.with_end?('フク)XXX', 3)).to be_falsy }
      end

      context '末尾 フク\)' do
        it { expect(Syamei.with_end?('XXXフク)', 3)).to be_truthy }
      end

      context '先頭 ホゴ\)' do
        it { expect(Syamei.with_end?('ホゴ)XXX', 3)).to be_falsy }
      end

      context '末尾 ホゴ\)' do
        it { expect(Syamei.with_end?('XXXホゴ)', 3)).to be_truthy }
      end

      context '先頭 \(ホゴ\)' do
        it { expect(Syamei.with_end?('(ホゴ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ホゴ\)' do
        it { expect(Syamei.with_end?('XXX(ホゴ)', 3)).to be_truthy }
      end

      context '先頭 \(ホゴ' do
        it { expect(Syamei.with_end?('(ホゴXXX', 3)).to be_falsy }
      end

      context '末尾 \(ホゴ' do
        it { expect(Syamei.with_end?('XXX(ホゴ', 3)).to be_truthy }
      end

      context '先頭 ソ\)' do
        it { expect(Syamei.with_end?('ソ)XXX', 3)).to be_falsy }
      end

      context '末尾 ソ\)' do
        it { expect(Syamei.with_end?('XXXソ)', 3)).to be_truthy }
      end

      context '先頭 \(ソ\)' do
        it { expect(Syamei.with_end?('(ソ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ソ\)' do
        it { expect(Syamei.with_end?('XXX(ソ)', 3)).to be_truthy }
      end

      context '先頭 \(ソ' do
        it { expect(Syamei.with_end?('(ソXXX', 3)).to be_falsy }
      end

      context '末尾 \(ソ' do
        it { expect(Syamei.with_end?('XXX(ソ', 3)).to be_truthy }
      end

      context '先頭 トクヒ\)' do
        it { expect(Syamei.with_end?('トクヒ)XXX', 3)).to be_falsy }
      end

      context '末尾 トクヒ\)' do
        it { expect(Syamei.with_end?('XXXトクヒ)', 3)).to be_truthy }
      end

      context '先頭 \(トクヒ\)' do
        it { expect(Syamei.with_end?('(トクヒ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(トクヒ\)' do
        it { expect(Syamei.with_end?('XXX(トクヒ)', 3)).to be_truthy }
      end

      context '先頭 \(トクヒ' do
        it { expect(Syamei.with_end?('(トクヒXXX', 3)).to be_falsy }
      end

      context '末尾 \(トクヒ' do
        it { expect(Syamei.with_end?('XXX(トクヒ', 3)).to be_truthy }
      end

      context '先頭 ドク\)' do
        it { expect(Syamei.with_end?('ドク)XXX', 3)).to be_falsy }
      end

      context '末尾 ドク\)' do
        it { expect(Syamei.with_end?('XXXドク)', 3)).to be_truthy }
      end

      context '先頭 \(ドク\)' do
        it { expect(Syamei.with_end?('(ドク)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ドク\)' do
        it { expect(Syamei.with_end?('XXX(ドク)', 3)).to be_truthy }
      end

      context '先頭 \(ドク' do
        it { expect(Syamei.with_end?('(ドクXXX', 3)).to be_falsy }
      end

      context '末尾 \(ドク' do
        it { expect(Syamei.with_end?('XXX(ドク', 3)).to be_truthy }
      end

      context '先頭 チドク\)' do
        it { expect(Syamei.with_end?('チドク)XXX', 3)).to be_falsy }
      end

      context '末尾 チドク\)' do
        it { expect(Syamei.with_end?('XXXチドク)', 3)).to be_truthy }
      end

      context '先頭 \(チドク\)' do
        it { expect(Syamei.with_end?('(チドク)XXX', 3)).to be_falsy }
      end

      context '末尾 \(チドク\)' do
        it { expect(Syamei.with_end?('XXX(チドク)', 3)).to be_truthy }
      end

      context '先頭 \(チドク' do
        it { expect(Syamei.with_end?('(チドクXXX', 3)).to be_falsy }
      end

      context '末尾 \(チドク' do
        it { expect(Syamei.with_end?('XXX(チドク', 3)).to be_truthy }
      end

      context '先頭 ベン\)' do
        it { expect(Syamei.with_end?('ベン)XXX', 3)).to be_falsy }
      end

      context '末尾 ベン\)' do
        it { expect(Syamei.with_end?('XXXベン)', 3)).to be_truthy }
      end

      context '先頭 \(ベン\)' do
        it { expect(Syamei.with_end?('(ベン)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ベン\)' do
        it { expect(Syamei.with_end?('XXX(ベン)', 3)).to be_truthy }
      end

      context '先頭 \(ベン' do
        it { expect(Syamei.with_end?('(ベンXXX', 3)).to be_falsy }
      end

      context '末尾 \(ベン' do
        it { expect(Syamei.with_end?('XXX(ベン', 3)).to be_truthy }
      end

      context '先頭 ギヨ\)' do
        it { expect(Syamei.with_end?('ギヨ)XXX', 3)).to be_falsy }
      end

      context '末尾 ギヨ\)' do
        it { expect(Syamei.with_end?('XXXギヨ)', 3)).to be_truthy }
      end

      context '先頭 \(ギヨ\)' do
        it { expect(Syamei.with_end?('(ギヨ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ギヨ\)' do
        it { expect(Syamei.with_end?('XXX(ギヨ)', 3)).to be_truthy }
      end

      context '先頭 \(ギヨ' do
        it { expect(Syamei.with_end?('(ギヨXXX', 3)).to be_falsy }
      end

      context '末尾 \(ギヨ' do
        it { expect(Syamei.with_end?('XXX(ギヨ', 3)).to be_truthy }
      end

      context '先頭 シホウ\)' do
        it { expect(Syamei.with_end?('シホウ)XXX', 3)).to be_falsy }
      end

      context '末尾 シホウ\)' do
        it { expect(Syamei.with_end?('XXXシホウ)', 3)).to be_truthy }
      end

      context '先頭 \(シホウ\)' do
        it { expect(Syamei.with_end?('(シホウ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(シホウ\)' do
        it { expect(Syamei.with_end?('XXX(シホウ)', 3)).to be_truthy }
      end

      context '先頭 \(シホウ' do
        it { expect(Syamei.with_end?('(シホウXXX', 3)).to be_falsy }
      end

      context '末尾 \(シホウ' do
        it { expect(Syamei.with_end?('XXX(シホウ', 3)).to be_truthy }
      end

      context '先頭 ゼイ\)' do
        it { expect(Syamei.with_end?('ゼイ)XXX', 3)).to be_falsy }
      end

      context '末尾 ゼイ\)' do
        it { expect(Syamei.with_end?('XXXゼイ)', 3)).to be_truthy }
      end

      context '先頭 \(ゼイ\)' do
        it { expect(Syamei.with_end?('(ゼイ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ゼイ\)' do
        it { expect(Syamei.with_end?('XXX(ゼイ)', 3)).to be_truthy }
      end

      context '先頭 \(ゼイ' do
        it { expect(Syamei.with_end?('(ゼイXXX', 3)).to be_falsy }
      end

      context '末尾 \(ゼイ' do
        it { expect(Syamei.with_end?('XXX(ゼイ', 3)).to be_truthy }
      end

      context '先頭 ノウ\)' do
        it { expect(Syamei.with_end?('ノウ)XXX', 3)).to be_falsy }
      end

      context '末尾 ノウ\)' do
        it { expect(Syamei.with_end?('XXXノウ)', 3)).to be_truthy }
      end

      context '先頭 \(ノウ\)' do
        it { expect(Syamei.with_end?('(ノウ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ノウ\)' do
        it { expect(Syamei.with_end?('XXX(ノウ)', 3)).to be_truthy }
      end

      context '先頭 \(ノウ' do
        it { expect(Syamei.with_end?('(ノウXXX', 3)).to be_falsy }
      end

      context '末尾 \(ノウ' do
        it { expect(Syamei.with_end?('XXX(ノウ', 3)).to be_truthy }
      end

      context '先頭 カンリ\)' do
        it { expect(Syamei.with_end?('カンリ)XXX', 3)).to be_falsy }
      end

      context '末尾 カンリ\)' do
        it { expect(Syamei.with_end?('XXXカンリ)', 3)).to be_truthy }
      end

      context '先頭 \(カンリ\)' do
        it { expect(Syamei.with_end?('(カンリ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(カンリ\)' do
        it { expect(Syamei.with_end?('XXX(カンリ)', 3)).to be_truthy }
      end

      context '先頭 \(カンリ' do
        it { expect(Syamei.with_end?('(カンリXXX', 3)).to be_falsy }
      end

      context '末尾 \(カンリ' do
        it { expect(Syamei.with_end?('XXX(カンリ', 3)).to be_truthy }
      end

      context '先頭 ロウム\)' do
        it { expect(Syamei.with_end?('ロウム)XXX', 3)).to be_falsy }
      end

      context '末尾 ロウム\)' do
        it { expect(Syamei.with_end?('XXXロウム)', 3)).to be_truthy }
      end

      context '先頭 \(ロウム\)' do
        it { expect(Syamei.with_end?('(ロウム)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ロウム\)' do
        it { expect(Syamei.with_end?('XXX(ロウム)', 3)).to be_truthy }
      end

      context '先頭 \(ロウム' do
        it { expect(Syamei.with_end?('(ロウムXXX', 3)).to be_falsy }
      end

      context '末尾 \(ロウム' do
        it { expect(Syamei.with_end?('XXX(ロウム', 3)).to be_truthy }
      end

      context '先頭 \(ダイ\)' do
        it { expect(Syamei.with_end?('(ダイ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(ダイ\)' do
        it { expect(Syamei.with_end?('XXX(ダイ)', 3)).to be_truthy }
      end

      context '先頭 \(ダイ' do
        it { expect(Syamei.with_end?('(ダイXXX', 3)).to be_falsy }
      end

      context '末尾 \(ダイ' do
        it { expect(Syamei.with_end?('XXX(ダイ', 3)).to be_truthy }
      end

      context '先頭 エイ\)' do
        it { expect(Syamei.with_end?('エイ)XXX', 3)).to be_falsy }
      end

      context '末尾 エイ\)' do
        it { expect(Syamei.with_end?('XXXエイ)', 3)).to be_truthy }
      end

      context '先頭 \(エイ\)' do
        it { expect(Syamei.with_end?('(エイ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(エイ\)' do
        it { expect(Syamei.with_end?('XXX(エイ)', 3)).to be_truthy }
      end

      context '先頭 \(エイ' do
        it { expect(Syamei.with_end?('(エイXXX', 3)).to be_falsy }
      end

      context '末尾 \(エイ' do
        it { expect(Syamei.with_end?('XXX(エイ', 3)).to be_truthy }
      end

      context '先頭 シユツ\)' do
        it { expect(Syamei.with_end?('シユツ)XXX', 3)).to be_falsy }
      end

      context '末尾 シユツ\)' do
        it { expect(Syamei.with_end?('XXXシユツ)', 3)).to be_truthy }
      end

      context '先頭 \(シユツ\)' do
        it { expect(Syamei.with_end?('(シユツ)XXX', 3)).to be_falsy }
      end

      context '末尾 \(シユツ\)' do
        it { expect(Syamei.with_end?('XXX(シユツ)', 3)).to be_truthy }
      end

      context '先頭 \(シユツ' do
        it { expect(Syamei.with_end?('(シユツXXX', 3)).to be_falsy }
      end

      context '末尾 \(シユツ' do
        it { expect(Syamei.with_end?('XXX(シユツ', 3)).to be_truthy }
      end
    end
  end

  describe '.with?' do
    context '.with_beginning? is true && with_end? is true' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(true)
        allow(Syamei).to receive(:with_end?).and_return(true)
      end

      it { expect(Syamei.with?('hoge', 0)).to be_truthy }
    end

    context '.with_beginning? is true && with_end? is false' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(true)
        allow(Syamei).to receive(:with_end?).and_return(false)
      end

      it { expect(Syamei.with?('hoge', 0)).to be_truthy }
    end

    context '.with_beginning? is false && with_end? is true' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(false)
        allow(Syamei).to receive(:with_end?).and_return(true)
      end

      it { expect(Syamei.with?('hoge', 0)).to be_truthy }
    end

    context '.with_beginning? is false && with_end? is false' do
      before do
        allow(Syamei).to receive(:with_beginning?).and_return(false)
        allow(Syamei).to receive(:with_end?).and_return(false)
      end

      it { expect(Syamei.with?('hoge', 0)).to be_falsey }
    end

    context 'name is nil' do
      it { expect(Syamei.with?(nil, 0)).to be_falsey }
    end

    context 'name is empty' do
      it { expect(Syamei.with?('', 0)).to be_falsey }
    end
  end

  describe '.with_end' do
    context 'name is nil' do
      it { expect(Syamei.with_end(nil, 0)).to eq nil }
    end
    context 'name is empty' do
      it { expect(Syamei.with_end('', 0)).to eq nil }
    end
    context 'type: 0' do
      it '先頭 株式会社' do
        expect(Syamei.with_end('株式会社XXX', 0)).to eq 'XXX'
      end

      it '末尾 株式会社' do
        expect(Syamei.with_end('XXX株式会社', 0)).to eq 'XXX株式会社'
      end

      it '先頭 有限会社' do
        expect(Syamei.with_end('有限会社XXX', 0)).to eq 'XXX'
      end

      it '末尾 有限会社' do
        expect(Syamei.with_end('XXX有限会社', 0)).to eq 'XXX有限会社'
      end

      it '先頭 合名会社' do
        expect(Syamei.with_end('合名会社XXX', 0)).to eq 'XXX'
      end

      it '末尾 合名会社' do
        expect(Syamei.with_end('XXX合名会社', 0)).to eq 'XXX合名会社'
      end

      it '先頭 合資会社' do
        expect(Syamei.with_end('合資会社XXX', 0)).to eq 'XXX'
      end

      it '末尾 合資会社' do
        expect(Syamei.with_end('XXX合資会社', 0)).to eq 'XXX合資会社'
      end

      it '先頭 合同会社' do
        expect(Syamei.with_end('合同会社XXX', 0)).to eq 'XXX'
      end

      it '末尾 合同会社' do
        expect(Syamei.with_end('XXX合同会社', 0)).to eq 'XXX合同会社'
      end

      it '先頭 医療法人' do
        expect(Syamei.with_end('医療法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 医療法人' do
        expect(Syamei.with_end('XXX医療法人', 0)).to eq 'XXX医療法人'
      end

      it '先頭 医療法人社団' do
        expect(Syamei.with_end('医療法人社団XXX', 0)).to eq 'XXX'
      end

      it '末尾 医療法人社団' do
        expect(Syamei.with_end('XXX医療法人社団', 0)).to eq 'XXX医療法人社団'
      end

      it '先頭 医療法人財団' do
        expect(Syamei.with_end('医療法人財団XXX', 0)).to eq 'XXX'
      end

      it '末尾 医療法人財団' do
        expect(Syamei.with_end('XXX医療法人財団', 0)).to eq 'XXX医療法人財団'
      end

      it '先頭 社会医療法人' do
        expect(Syamei.with_end('社会医療法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 社会医療法人' do
        expect(Syamei.with_end('XXX社会医療法人', 0)).to eq 'XXX社会医療法人'
      end

      it '先頭 財団法人' do
        expect(Syamei.with_end('財団法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 財団法人' do
        expect(Syamei.with_end('XXX財団法人', 0)).to eq 'XXX財団法人'
      end

      it '先頭 一般財団法人' do
        expect(Syamei.with_end('一般財団法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 一般財団法人' do
        expect(Syamei.with_end('XXX一般財団法人', 0)).to eq 'XXX一般財団法人'
      end

      it '先頭 公益財団法人' do
        expect(Syamei.with_end('公益財団法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 公益財団法人' do
        expect(Syamei.with_end('XXX公益財団法人', 0)).to eq 'XXX公益財団法人'
      end

      it '先頭 社団法人' do
        expect(Syamei.with_end('社団法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 社団法人' do
        expect(Syamei.with_end('XXX社団法人', 0)).to eq 'XXX社団法人'
      end

      it '先頭 一般社団法人' do
        expect(Syamei.with_end('一般社団法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 一般社団法人' do
        expect(Syamei.with_end('XXX一般社団法人', 0)).to eq 'XXX一般社団法人'
      end

      it '先頭 公益社団法人' do
        expect(Syamei.with_end('公益社団法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 公益社団法人' do
        expect(Syamei.with_end('XXX公益社団法人', 0)).to eq 'XXX公益社団法人'
      end

      it '先頭 宗教法人' do
        expect(Syamei.with_end('宗教法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 宗教法人' do
        expect(Syamei.with_end('XXX宗教法人', 0)).to eq 'XXX宗教法人'
      end

      it '先頭 学校法人' do
        expect(Syamei.with_end('学校法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 学校法人' do
        expect(Syamei.with_end('XXX学校法人', 0)).to eq 'XXX学校法人'
      end

      it '先頭 社会福祉法人' do
        expect(Syamei.with_end('社会福祉法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 社会福祉法人' do
        expect(Syamei.with_end('XXX社会福祉法人', 0)).to eq 'XXX社会福祉法人'
      end

      it '先頭 更生保護法人' do
        expect(Syamei.with_end('更生保護法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 更生保護法人' do
        expect(Syamei.with_end('XXX更生保護法人', 0)).to eq 'XXX更生保護法人'
      end

      it '先頭 相互会社' do
        expect(Syamei.with_end('相互会社XXX', 0)).to eq 'XXX'
      end

      it '末尾 相互会社' do
        expect(Syamei.with_end('XXX相互会社', 0)).to eq 'XXX相互会社'
      end

      it '先頭 特定非営利活動法人' do
        expect(Syamei.with_end('特定非営利活動法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 特定非営利活動法人' do
        expect(Syamei.with_end('XXX特定非営利活動法人', 0)).to eq 'XXX特定非営利活動法人'
      end

      it '先頭 独立行政法人' do
        expect(Syamei.with_end('独立行政法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 独立行政法人' do
        expect(Syamei.with_end('XXX独立行政法人', 0)).to eq 'XXX独立行政法人'
      end

      it '先頭 地方独立行政法人' do
        expect(Syamei.with_end('地方独立行政法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 地方独立行政法人' do
        expect(Syamei.with_end('XXX地方独立行政法人', 0)).to eq 'XXX地方独立行政法人'
      end

      it '先頭 弁護士法人' do
        expect(Syamei.with_end('弁護士法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 弁護士法人' do
        expect(Syamei.with_end('XXX弁護士法人', 0)).to eq 'XXX弁護士法人'
      end

      it '先頭 有限責任中間法人' do
        expect(Syamei.with_end('有限責任中間法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 有限責任中間法人' do
        expect(Syamei.with_end('XXX有限責任中間法人', 0)).to eq 'XXX有限責任中間法人'
      end

      it '先頭 無限責任中間法人' do
        expect(Syamei.with_end('無限責任中間法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 無限責任中間法人' do
        expect(Syamei.with_end('XXX無限責任中間法人', 0)).to eq 'XXX無限責任中間法人'
      end

      it '先頭 行政書士法人' do
        expect(Syamei.with_end('行政書士法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 行政書士法人' do
        expect(Syamei.with_end('XXX行政書士法人', 0)).to eq 'XXX行政書士法人'
      end

      it '先頭 司法書士法人' do
        expect(Syamei.with_end('司法書士法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 司法書士法人' do
        expect(Syamei.with_end('XXX司法書士法人', 0)).to eq 'XXX司法書士法人'
      end

      it '先頭 税理士法人' do
        expect(Syamei.with_end('税理士法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 税理士法人' do
        expect(Syamei.with_end('XXX税理士法人', 0)).to eq 'XXX税理士法人'
      end

      it '先頭 国立大学法人' do
        expect(Syamei.with_end('国立大学法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 国立大学法人' do
        expect(Syamei.with_end('XXX国立大学法人', 0)).to eq 'XXX国立大学法人'
      end

      it '先頭 公立大学法人' do
        expect(Syamei.with_end('公立大学法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 公立大学法人' do
        expect(Syamei.with_end('XXX公立大学法人', 0)).to eq 'XXX公立大学法人'
      end

      it '先頭 農事組合法人' do
        expect(Syamei.with_end('農事組合法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 農事組合法人' do
        expect(Syamei.with_end('XXX農事組合法人', 0)).to eq 'XXX農事組合法人'
      end

      it '先頭 管理組合法人' do
        expect(Syamei.with_end('管理組合法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 管理組合法人' do
        expect(Syamei.with_end('XXX管理組合法人', 0)).to eq 'XXX管理組合法人'
      end

      it '先頭 社会保険労務士法人' do
        expect(Syamei.with_end('社会保険労務士法人XXX', 0)).to eq 'XXX'
      end

      it '末尾 社会保険労務士法人' do
        expect(Syamei.with_end('XXX社会保険労務士法人', 0)).to eq 'XXX社会保険労務士法人'
      end

      it '先頭 営業所' do
        expect(Syamei.with_end('営業所XXX', 0)).to eq 'XXX'
      end

      it '末尾 営業所' do
        expect(Syamei.with_end('XXX営業所', 0)).to eq 'XXX営業所'
      end

      it '先頭 出張所' do
        expect(Syamei.with_end('出張所XXX', 0)).to eq 'XXX'
      end

      it '末尾 出張所' do
        expect(Syamei.with_end('XXX出張所', 0)).to eq 'XXX出張所'
      end

      it '先頭 ㈱' do
        expect(Syamei.with_end('㈱XXX', 0)).to eq 'XXX'
      end

      it '末尾 ㈱' do
        expect(Syamei.with_end('XXX㈱', 0)).to eq 'XXX㈱'
      end

      it '先頭 \(株\)' do
        expect(Syamei.with_end('(株)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(株\)' do
        expect(Syamei.with_end('XXX(株)', 0)).to eq 'XXX(株)'
      end

      it '先頭 ㈲' do
        expect(Syamei.with_end('㈲XXX', 0)).to eq 'XXX'
      end

      it '末尾 ㈲' do
        expect(Syamei.with_end('XXX㈲', 0)).to eq 'XXX㈲'
      end

      it '先頭 \(有\)' do
        expect(Syamei.with_end('(有)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(有\)' do
        expect(Syamei.with_end('XXX(有)', 0)).to eq 'XXX(有)'
      end

      it '先頭 \(名\)' do
        expect(Syamei.with_end('(名)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(名\)' do
        expect(Syamei.with_end('XXX(名)', 0)).to eq 'XXX(名)'
      end

      it '先頭 \(資\)' do
        expect(Syamei.with_end('(資)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(資\)' do
        expect(Syamei.with_end('XXX(資)', 0)).to eq 'XXX(資)'
      end

      it '先頭 \(同\)' do
        expect(Syamei.with_end('(同)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(同\)' do
        expect(Syamei.with_end('XXX(同)', 0)).to eq 'XXX(同)'
      end

      it '先頭 \(医\)' do
        expect(Syamei.with_end('(医)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(医\)' do
        expect(Syamei.with_end('XXX(医)', 0)).to eq 'XXX(医)'
      end

      it '先頭 \(財\)' do
        expect(Syamei.with_end('(財)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(財\)' do
        expect(Syamei.with_end('XXX(財)', 0)).to eq 'XXX(財)'
      end

      it '先頭 \(一財\)' do
        expect(Syamei.with_end('(一財)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(一財\)' do
        expect(Syamei.with_end('XXX(一財)', 0)).to eq 'XXX(一財)'
      end

      it '先頭 \(公財\)' do
        expect(Syamei.with_end('(公財)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(公財\)' do
        expect(Syamei.with_end('XXX(公財)', 0)).to eq 'XXX(公財)'
      end

      it '先頭 \(社\)' do
        expect(Syamei.with_end('(社)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(社\)' do
        expect(Syamei.with_end('XXX(社)', 0)).to eq 'XXX(社)'
      end

      it '先頭 \(一社\)' do
        expect(Syamei.with_end('(一社)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(一社\)' do
        expect(Syamei.with_end('XXX(一社)', 0)).to eq 'XXX(一社)'
      end

      it '先頭 \(公社\)' do
        expect(Syamei.with_end('(公社)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(公社\)' do
        expect(Syamei.with_end('XXX(公社)', 0)).to eq 'XXX(公社)'
      end

      it '先頭 \(宗\)' do
        expect(Syamei.with_end('(宗)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(宗\)' do
        expect(Syamei.with_end('XXX(宗)', 0)).to eq 'XXX(宗)'
      end

      it '先頭 \(学\)' do
        expect(Syamei.with_end('(学)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(学\)' do
        expect(Syamei.with_end('XXX(学)', 0)).to eq 'XXX(学)'
      end

      it '先頭 \(福\)' do
        expect(Syamei.with_end('(福)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(福\)' do
        expect(Syamei.with_end('XXX(福)', 0)).to eq 'XXX(福)'
      end

      it '先頭 \(相\)' do
        expect(Syamei.with_end('(相)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(相\)' do
        expect(Syamei.with_end('XXX(相)', 0)).to eq 'XXX(相)'
      end

      it '先頭 \(特非\)' do
        expect(Syamei.with_end('(特非)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(特非\)' do
        expect(Syamei.with_end('XXX(特非)', 0)).to eq 'XXX(特非)'
      end

      it '先頭 \(独\)' do
        expect(Syamei.with_end('(独)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(独\)' do
        expect(Syamei.with_end('XXX(独)', 0)).to eq 'XXX(独)'
      end

      it '先頭 \(地独\)' do
        expect(Syamei.with_end('(地独)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(地独\)' do
        expect(Syamei.with_end('XXX(地独)', 0)).to eq 'XXX(地独)'
      end

      it '先頭 \(弁\)' do
        expect(Syamei.with_end('(弁)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(弁\)' do
        expect(Syamei.with_end('XXX(弁)', 0)).to eq 'XXX(弁)'
      end

      it '先頭 \(行\)' do
        expect(Syamei.with_end('(行)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(行\)' do
        expect(Syamei.with_end('XXX(行)', 0)).to eq 'XXX(行)'
      end

      it '先頭 \(司\)' do
        expect(Syamei.with_end('(司)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(司\)' do
        expect(Syamei.with_end('XXX(司)', 0)).to eq 'XXX(司)'
      end

      it '先頭 \(税\)' do
        expect(Syamei.with_end('(税)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(税\)' do
        expect(Syamei.with_end('XXX(税)', 0)).to eq 'XXX(税)'
      end

      it '先頭 \(中\)' do
        expect(Syamei.with_end('(中)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(中\)' do
        expect(Syamei.with_end('XXX(中)', 0)).to eq 'XXX(中)'
      end

      it '先頭 \(大\)' do
        expect(Syamei.with_end('(大)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(大\)' do
        expect(Syamei.with_end('XXX(大)', 0)).to eq 'XXX(大)'
      end

      it '先頭 \(営\)' do
        expect(Syamei.with_end('(営)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(営\)' do
        expect(Syamei.with_end('XXX(営)', 0)).to eq 'XXX(営)'
      end

      it '先頭 \(出\)' do
        expect(Syamei.with_end('(出)XXX', 0)).to eq 'XXX'
      end

      it '末尾 \(出\)' do
        expect(Syamei.with_end('XXX(出)', 0)).to eq 'XXX(出)'
      end

      # TODO: カナを先頭・中間・末尾にわける
    end
    context 'type: 1' do
      it '先頭 株式会社' do
        expect(Syamei.with_end('株式会社XXX', 1)).to eq 'XXX'
      end

      it '末尾 株式会社' do
        expect(Syamei.with_end('XXX株式会社', 1)).to eq 'XXX株式会社'
      end

      it '先頭 有限会社' do
        expect(Syamei.with_end('有限会社XXX', 1)).to eq 'XXX'
      end

      it '末尾 有限会社' do
        expect(Syamei.with_end('XXX有限会社', 1)).to eq 'XXX有限会社'
      end

      it '先頭 合名会社' do
        expect(Syamei.with_end('合名会社XXX', 1)).to eq 'XXX'
      end

      it '末尾 合名会社' do
        expect(Syamei.with_end('XXX合名会社', 1)).to eq 'XXX合名会社'
      end

      it '先頭 合資会社' do
        expect(Syamei.with_end('合資会社XXX', 1)).to eq 'XXX'
      end

      it '末尾 合資会社' do
        expect(Syamei.with_end('XXX合資会社', 1)).to eq 'XXX合資会社'
      end

      it '先頭 合同会社' do
        expect(Syamei.with_end('合同会社XXX', 1)).to eq 'XXX'
      end

      it '末尾 合同会社' do
        expect(Syamei.with_end('XXX合同会社', 1)).to eq 'XXX合同会社'
      end

      it '先頭 医療法人社団' do
        expect(Syamei.with_end('医療法人社団XXX', 1)).to eq 'XXX'
      end

      it '末尾 医療法人社団' do
        expect(Syamei.with_end('XXX医療法人社団', 1)).to eq 'XXX医療法人社団'
      end

      it '先頭 医療法人財団' do
        expect(Syamei.with_end('医療法人財団XXX', 1)).to eq 'XXX'
      end

      it '末尾 医療法人財団' do
        expect(Syamei.with_end('XXX医療法人財団', 1)).to eq 'XXX医療法人財団'
      end

      it '先頭 医療法人' do
        expect(Syamei.with_end('医療法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 医療法人' do
        expect(Syamei.with_end('XXX医療法人', 1)).to eq 'XXX医療法人'
      end

      it '先頭 社会医療法人' do
        expect(Syamei.with_end('社会医療法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 社会医療法人' do
        expect(Syamei.with_end('XXX社会医療法人', 1)).to eq 'XXX社会医療法人'
      end

      it '先頭 財団法人' do
        expect(Syamei.with_end('財団法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 財団法人' do
        expect(Syamei.with_end('XXX財団法人', 1)).to eq 'XXX財団法人'
      end

      it '先頭 一般財団法人' do
        expect(Syamei.with_end('一般財団法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 一般財団法人' do
        expect(Syamei.with_end('XXX一般財団法人', 1)).to eq 'XXX一般財団法人'
      end

      it '先頭 公益財団法人' do
        expect(Syamei.with_end('公益財団法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 公益財団法人' do
        expect(Syamei.with_end('XXX公益財団法人', 1)).to eq 'XXX公益財団法人'
      end

      it '先頭 社団法人' do
        expect(Syamei.with_end('社団法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 社団法人' do
        expect(Syamei.with_end('XXX社団法人', 1)).to eq 'XXX社団法人'
      end

      it '先頭 一般社団法人' do
        expect(Syamei.with_end('一般社団法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 一般社団法人' do
        expect(Syamei.with_end('XXX一般社団法人', 1)).to eq 'XXX一般社団法人'
      end

      it '先頭 公益社団法人' do
        expect(Syamei.with_end('公益社団法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 公益社団法人' do
        expect(Syamei.with_end('XXX公益社団法人', 1)).to eq 'XXX公益社団法人'
      end

      it '先頭 宗教法人' do
        expect(Syamei.with_end('宗教法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 宗教法人' do
        expect(Syamei.with_end('XXX宗教法人', 1)).to eq 'XXX宗教法人'
      end

      it '先頭 学校法人' do
        expect(Syamei.with_end('学校法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 学校法人' do
        expect(Syamei.with_end('XXX学校法人', 1)).to eq 'XXX学校法人'
      end

      it '先頭 社会福祉法人' do
        expect(Syamei.with_end('社会福祉法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 社会福祉法人' do
        expect(Syamei.with_end('XXX社会福祉法人', 1)).to eq 'XXX社会福祉法人'
      end

      it '先頭 更生保護法人' do
        expect(Syamei.with_end('更生保護法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 更生保護法人' do
        expect(Syamei.with_end('XXX更生保護法人', 1)).to eq 'XXX更生保護法人'
      end

      it '先頭 相互会社' do
        expect(Syamei.with_end('相互会社XXX', 1)).to eq 'XXX'
      end

      it '末尾 相互会社' do
        expect(Syamei.with_end('XXX相互会社', 1)).to eq 'XXX相互会社'
      end

      it '先頭 特定非営利活動法人' do
        expect(Syamei.with_end('特定非営利活動法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 特定非営利活動法人' do
        expect(Syamei.with_end('XXX特定非営利活動法人', 1)).to eq 'XXX特定非営利活動法人'
      end

      it '先頭 独立行政法人' do
        expect(Syamei.with_end('独立行政法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 独立行政法人' do
        expect(Syamei.with_end('XXX独立行政法人', 1)).to eq 'XXX独立行政法人'
      end

      it '先頭 地方独立行政法人' do
        expect(Syamei.with_end('地方独立行政法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 地方独立行政法人' do
        expect(Syamei.with_end('XXX地方独立行政法人', 1)).to eq 'XXX地方独立行政法人'
      end

      it '先頭 弁護士法人' do
        expect(Syamei.with_end('弁護士法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 弁護士法人' do
        expect(Syamei.with_end('XXX弁護士法人', 1)).to eq 'XXX弁護士法人'
      end

      it '先頭 有限責任中間法人' do
        expect(Syamei.with_end('有限責任中間法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 有限責任中間法人' do
        expect(Syamei.with_end('XXX有限責任中間法人', 1)).to eq 'XXX有限責任中間法人'
      end

      it '先頭 無限責任中間法人' do
        expect(Syamei.with_end('無限責任中間法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 無限責任中間法人' do
        expect(Syamei.with_end('XXX無限責任中間法人', 1)).to eq 'XXX無限責任中間法人'
      end

      it '先頭 行政書士法人' do
        expect(Syamei.with_end('行政書士法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 行政書士法人' do
        expect(Syamei.with_end('XXX行政書士法人', 1)).to eq 'XXX行政書士法人'
      end

      it '先頭 司法書士法人' do
        expect(Syamei.with_end('司法書士法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 司法書士法人' do
        expect(Syamei.with_end('XXX司法書士法人', 1)).to eq 'XXX司法書士法人'
      end

      it '先頭 税理士法人' do
        expect(Syamei.with_end('税理士法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 税理士法人' do
        expect(Syamei.with_end('XXX税理士法人', 1)).to eq 'XXX税理士法人'
      end

      it '先頭 国立大学法人' do
        expect(Syamei.with_end('国立大学法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 国立大学法人' do
        expect(Syamei.with_end('XXX国立大学法人', 1)).to eq 'XXX国立大学法人'
      end

      it '先頭 公立大学法人' do
        expect(Syamei.with_end('公立大学法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 公立大学法人' do
        expect(Syamei.with_end('XXX公立大学法人', 1)).to eq 'XXX公立大学法人'
      end

      it '先頭 農事組合法人' do
        expect(Syamei.with_end('農事組合法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 農事組合法人' do
        expect(Syamei.with_end('XXX農事組合法人', 1)).to eq 'XXX農事組合法人'
      end

      it '先頭 管理組合法人' do
        expect(Syamei.with_end('管理組合法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 管理組合法人' do
        expect(Syamei.with_end('XXX管理組合法人', 1)).to eq 'XXX管理組合法人'
      end

      it '先頭 社会保険労務士法人' do
        expect(Syamei.with_end('社会保険労務士法人XXX', 1)).to eq 'XXX'
      end

      it '末尾 社会保険労務士法人' do
        expect(Syamei.with_end('XXX社会保険労務士法人', 1)).to eq 'XXX社会保険労務士法人'
      end

      it '先頭 営業所' do
        expect(Syamei.with_end('営業所XXX', 1)).to eq 'XXX'
      end

      it '末尾 営業所' do
        expect(Syamei.with_end('XXX営業所', 1)).to eq 'XXX営業所'
      end

      it '先頭 出張所' do
        expect(Syamei.with_end('出張所XXX', 1)).to eq 'XXX'
      end

      it '末尾 出張所' do
        expect(Syamei.with_end('XXX出張所', 1)).to eq 'XXX出張所'
      end

      it '先頭 ㈱' do
        expect(Syamei.with_end('㈱XXX', 1)).to eq '㈱XXX'
      end

      it '末尾 ㈱' do
        expect(Syamei.with_end('XXX㈱', 1)).to eq 'XXX㈱'
      end

      it '先頭 \(株\)' do
        expect(Syamei.with_end('(株)XXX', 1)).to eq '(株)XXX'
      end

      it '末尾 \(株\)' do
        expect(Syamei.with_end('XXX(株)', 1)).to eq 'XXX(株)'
      end

      it '先頭 ㈲' do
        expect(Syamei.with_end('㈲XXX', 1)).to eq '㈲XXX'
      end

      it '末尾 ㈲' do
        expect(Syamei.with_end('XXX㈲', 1)).to eq 'XXX㈲'
      end

      it '先頭 \(有\)' do
        expect(Syamei.with_end('(有)XXX', 1)).to eq '(有)XXX'
      end

      it '末尾 \(有\)' do
        expect(Syamei.with_end('XXX(有)', 1)).to eq 'XXX(有)'
      end

      it '先頭 \(名\)' do
        expect(Syamei.with_end('(名)XXX', 1)).to eq '(名)XXX'
      end

      it '末尾 \(名\)' do
        expect(Syamei.with_end('XXX(名)', 1)).to eq 'XXX(名)'
      end

      it '先頭 \(資\)' do
        expect(Syamei.with_end('(資)XXX', 1)).to eq '(資)XXX'
      end

      it '末尾 \(資\)' do
        expect(Syamei.with_end('XXX(資)', 1)).to eq 'XXX(資)'
      end

      it '先頭 \(同\)' do
        expect(Syamei.with_end('(同)XXX', 1)).to eq '(同)XXX'
      end

      it '末尾 \(同\)' do
        expect(Syamei.with_end('XXX(同)', 1)).to eq 'XXX(同)'
      end

      it '先頭 \(医\)' do
        expect(Syamei.with_end('(医)XXX', 1)).to eq '(医)XXX'
      end

      it '末尾 \(医\)' do
        expect(Syamei.with_end('XXX(医)', 1)).to eq 'XXX(医)'
      end

      it '先頭 \(財\)' do
        expect(Syamei.with_end('(財)XXX', 1)).to eq '(財)XXX'
      end

      it '末尾 \(財\)' do
        expect(Syamei.with_end('XXX(財)', 1)).to eq 'XXX(財)'
      end

      it '先頭 \(一財\)' do
        expect(Syamei.with_end('(一財)XXX', 1)).to eq '(一財)XXX'
      end

      it '末尾 \(一財\)' do
        expect(Syamei.with_end('XXX(一財)', 1)).to eq 'XXX(一財)'
      end

      it '先頭 \(公財\)' do
        expect(Syamei.with_end('(公財)XXX', 1)).to eq '(公財)XXX'
      end

      it '末尾 \(公財\)' do
        expect(Syamei.with_end('XXX(公財)', 1)).to eq 'XXX(公財)'
      end

      it '先頭 \(社\)' do
        expect(Syamei.with_end('(社)XXX', 1)).to eq '(社)XXX'
      end

      it '末尾 \(社\)' do
        expect(Syamei.with_end('XXX(社)', 1)).to eq 'XXX(社)'
      end

      it '先頭 \(一社\)' do
        expect(Syamei.with_end('(一社)XXX', 1)).to eq '(一社)XXX'
      end

      it '末尾 \(一社\)' do
        expect(Syamei.with_end('XXX(一社)', 1)).to eq 'XXX(一社)'
      end

      it '先頭 \(公社\)' do
        expect(Syamei.with_end('(公社)XXX', 1)).to eq '(公社)XXX'
      end

      it '末尾 \(公社\)' do
        expect(Syamei.with_end('XXX(公社)', 1)).to eq 'XXX(公社)'
      end

      it '先頭 \(宗\)' do
        expect(Syamei.with_end('(宗)XXX', 1)).to eq '(宗)XXX'
      end

      it '末尾 \(宗\)' do
        expect(Syamei.with_end('XXX(宗)', 1)).to eq 'XXX(宗)'
      end

      it '先頭 \(学\)' do
        expect(Syamei.with_end('(学)XXX', 1)).to eq '(学)XXX'
      end

      it '末尾 \(学\)' do
        expect(Syamei.with_end('XXX(学)', 1)).to eq 'XXX(学)'
      end

      it '先頭 \(福\)' do
        expect(Syamei.with_end('(福)XXX', 1)).to eq '(福)XXX'
      end

      it '末尾 \(福\)' do
        expect(Syamei.with_end('XXX(福)', 1)).to eq 'XXX(福)'
      end

      it '先頭 \(相\)' do
        expect(Syamei.with_end('(相)XXX', 1)).to eq '(相)XXX'
      end

      it '末尾 \(相\)' do
        expect(Syamei.with_end('XXX(相)', 1)).to eq 'XXX(相)'
      end

      it '先頭 \(特非\)' do
        expect(Syamei.with_end('(特非)XXX', 1)).to eq '(特非)XXX'
      end

      it '末尾 \(特非\)' do
        expect(Syamei.with_end('XXX(特非)', 1)).to eq 'XXX(特非)'
      end

      it '先頭 \(独\)' do
        expect(Syamei.with_end('(独)XXX', 1)).to eq '(独)XXX'
      end

      it '末尾 \(独\)' do
        expect(Syamei.with_end('XXX(独)', 1)).to eq 'XXX(独)'
      end

      it '先頭 \(地独\)' do
        expect(Syamei.with_end('(地独)XXX', 1)).to eq '(地独)XXX'
      end

      it '末尾 \(地独\)' do
        expect(Syamei.with_end('XXX(地独)', 1)).to eq 'XXX(地独)'
      end

      it '先頭 \(弁\)' do
        expect(Syamei.with_end('(弁)XXX', 1)).to eq '(弁)XXX'
      end

      it '末尾 \(弁\)' do
        expect(Syamei.with_end('XXX(弁)', 1)).to eq 'XXX(弁)'
      end

      it '先頭 \(行\)' do
        expect(Syamei.with_end('(行)XXX', 1)).to eq '(行)XXX'
      end

      it '末尾 \(行\)' do
        expect(Syamei.with_end('XXX(行)', 1)).to eq 'XXX(行)'
      end

      it '先頭 \(司\)' do
        expect(Syamei.with_end('(司)XXX', 1)).to eq '(司)XXX'
      end

      it '末尾 \(司\)' do
        expect(Syamei.with_end('XXX(司)', 1)).to eq 'XXX(司)'
      end

      it '先頭 \(税\)' do
        expect(Syamei.with_end('(税)XXX', 1)).to eq '(税)XXX'
      end

      it '末尾 \(税\)' do
        expect(Syamei.with_end('XXX(税)', 1)).to eq 'XXX(税)'
      end

      it '先頭 \(中\)' do
        expect(Syamei.with_end('(中)XXX', 1)).to eq '(中)XXX'
      end

      it '末尾 \(中\)' do
        expect(Syamei.with_end('XXX(中)', 1)).to eq 'XXX(中)'
      end

      it '先頭 \(大\)' do
        expect(Syamei.with_end('(大)XXX', 1)).to eq '(大)XXX'
      end

      it '末尾 \(大\)' do
        expect(Syamei.with_end('XXX(大)', 1)).to eq 'XXX(大)'
      end

      it '先頭 \(営\)' do
        expect(Syamei.with_end('(営)XXX', 1)).to eq '(営)XXX'
      end

      it '末尾 \(営\)' do
        expect(Syamei.with_end('XXX(営)', 1)).to eq 'XXX(営)'
      end

      it '先頭 \(出\)' do
        expect(Syamei.with_end('(出)XXX', 1)).to eq '(出)XXX'
      end

      it '末尾 \(出\)' do
        expect(Syamei.with_end('XXX(出)', 1)).to eq 'XXX(出)'
      end

      # TODO: カナを先頭・中間・末尾にわける
    end
    context 'type: 2' do
      it '先頭 株式会社' do
        expect(Syamei.with_end('株式会社XXX', 2)).to eq '株式会社XXX'
      end

      it '末尾 株式会社' do
        expect(Syamei.with_end('XXX株式会社', 2)).to eq 'XXX株式会社'
      end

      it '先頭 有限会社' do
        expect(Syamei.with_end('有限会社XXX', 2)).to eq '有限会社XXX'
      end

      it '末尾 有限会社' do
        expect(Syamei.with_end('XXX有限会社', 2)).to eq 'XXX有限会社'
      end

      it '先頭 合名会社' do
        expect(Syamei.with_end('合名会社XXX', 2)).to eq '合名会社XXX'
      end

      it '末尾 合名会社' do
        expect(Syamei.with_end('XXX合名会社', 2)).to eq 'XXX合名会社'
      end

      it '先頭 合資会社' do
        expect(Syamei.with_end('合資会社XXX', 2)).to eq '合資会社XXX'
      end

      it '末尾 合資会社' do
        expect(Syamei.with_end('XXX合資会社', 2)).to eq 'XXX合資会社'
      end

      it '先頭 合同会社' do
        expect(Syamei.with_end('合同会社XXX', 2)).to eq '合同会社XXX'
      end

      it '末尾 合同会社' do
        expect(Syamei.with_end('XXX合同会社', 2)).to eq 'XXX合同会社'
      end

      it '先頭 医療法人社団' do
        expect(Syamei.with_end('医療法人社団XXX', 2)).to eq '医療法人社団XXX'
      end

      it '末尾 医療法人社団' do
        expect(Syamei.with_end('XXX医療法人社団', 2)).to eq 'XXX医療法人社団'
      end

      it '先頭 医療法人財団' do
        expect(Syamei.with_end('医療法人財団XXX', 2)).to eq '医療法人財団XXX'
      end

      it '末尾 医療法人財団' do
        expect(Syamei.with_end('XXX医療法人財団', 2)).to eq 'XXX医療法人財団'
      end

      it '先頭 医療法人' do
        expect(Syamei.with_end('医療法人XXX', 2)).to eq '医療法人XXX'
      end

      it '末尾 医療法人' do
        expect(Syamei.with_end('XXX医療法人', 2)).to eq 'XXX医療法人'
      end

      it '先頭 社会医療法人' do
        expect(Syamei.with_end('社会医療法人XXX', 2)).to eq '社会医療法人XXX'
      end

      it '末尾 社会医療法人' do
        expect(Syamei.with_end('XXX社会医療法人', 2)).to eq 'XXX社会医療法人'
      end

      it '先頭 財団法人' do
        expect(Syamei.with_end('財団法人XXX', 2)).to eq '財団法人XXX'
      end

      it '末尾 財団法人' do
        expect(Syamei.with_end('XXX財団法人', 2)).to eq 'XXX財団法人'
      end

      it '先頭 一般財団法人' do
        expect(Syamei.with_end('一般財団法人XXX', 2)).to eq '一般財団法人XXX'
      end

      it '末尾 一般財団法人' do
        expect(Syamei.with_end('XXX一般財団法人', 2)).to eq 'XXX一般財団法人'
      end

      it '先頭 公益財団法人' do
        expect(Syamei.with_end('公益財団法人XXX', 2)).to eq '公益財団法人XXX'
      end

      it '末尾 公益財団法人' do
        expect(Syamei.with_end('XXX公益財団法人', 2)).to eq 'XXX公益財団法人'
      end

      it '先頭 社団法人' do
        expect(Syamei.with_end('社団法人XXX', 2)).to eq '社団法人XXX'
      end

      it '末尾 社団法人' do
        expect(Syamei.with_end('XXX社団法人', 2)).to eq 'XXX社団法人'
      end

      it '先頭 一般社団法人' do
        expect(Syamei.with_end('一般社団法人XXX', 2)).to eq '一般社団法人XXX'
      end

      it '末尾 一般社団法人' do
        expect(Syamei.with_end('XXX一般社団法人', 2)).to eq 'XXX一般社団法人'
      end

      it '先頭 公益社団法人' do
        expect(Syamei.with_end('公益社団法人XXX', 2)).to eq '公益社団法人XXX'
      end

      it '末尾 公益社団法人' do
        expect(Syamei.with_end('XXX公益社団法人', 2)).to eq 'XXX公益社団法人'
      end

      it '先頭 宗教法人' do
        expect(Syamei.with_end('宗教法人XXX', 2)).to eq '宗教法人XXX'
      end

      it '末尾 宗教法人' do
        expect(Syamei.with_end('XXX宗教法人', 2)).to eq 'XXX宗教法人'
      end

      it '先頭 学校法人' do
        expect(Syamei.with_end('学校法人XXX', 2)).to eq '学校法人XXX'
      end

      it '末尾 学校法人' do
        expect(Syamei.with_end('XXX学校法人', 2)).to eq 'XXX学校法人'
      end

      it '先頭 社会福祉法人' do
        expect(Syamei.with_end('社会福祉法人XXX', 2)).to eq '社会福祉法人XXX'
      end

      it '末尾 社会福祉法人' do
        expect(Syamei.with_end('XXX社会福祉法人', 2)).to eq 'XXX社会福祉法人'
      end

      it '先頭 更生保護法人' do
        expect(Syamei.with_end('更生保護法人XXX', 2)).to eq '更生保護法人XXX'
      end

      it '末尾 更生保護法人' do
        expect(Syamei.with_end('XXX更生保護法人', 2)).to eq 'XXX更生保護法人'
      end

      it '先頭 相互会社' do
        expect(Syamei.with_end('相互会社XXX', 2)).to eq '相互会社XXX'
      end

      it '末尾 相互会社' do
        expect(Syamei.with_end('XXX相互会社', 2)).to eq 'XXX相互会社'
      end

      it '先頭 特定非営利活動法人' do
        expect(Syamei.with_end('特定非営利活動法人XXX', 2)).to eq '特定非営利活動法人XXX'
      end

      it '末尾 特定非営利活動法人' do
        expect(Syamei.with_end('XXX特定非営利活動法人', 2)).to eq 'XXX特定非営利活動法人'
      end

      it '先頭 独立行政法人' do
        expect(Syamei.with_end('独立行政法人XXX', 2)).to eq '独立行政法人XXX'
      end

      it '末尾 独立行政法人' do
        expect(Syamei.with_end('XXX独立行政法人', 2)).to eq 'XXX独立行政法人'
      end

      it '先頭 地方独立行政法人' do
        expect(Syamei.with_end('地方独立行政法人XXX', 2)).to eq '地方独立行政法人XXX'
      end

      it '末尾 地方独立行政法人' do
        expect(Syamei.with_end('XXX地方独立行政法人', 2)).to eq 'XXX地方独立行政法人'
      end

      it '先頭 弁護士法人' do
        expect(Syamei.with_end('弁護士法人XXX', 2)).to eq '弁護士法人XXX'
      end

      it '末尾 弁護士法人' do
        expect(Syamei.with_end('XXX弁護士法人', 2)).to eq 'XXX弁護士法人'
      end

      it '先頭 有限責任中間法人' do
        expect(Syamei.with_end('有限責任中間法人XXX', 2)).to eq '有限責任中間法人XXX'
      end

      it '末尾 有限責任中間法人' do
        expect(Syamei.with_end('XXX有限責任中間法人', 2)).to eq 'XXX有限責任中間法人'
      end

      it '先頭 無限責任中間法人' do
        expect(Syamei.with_end('無限責任中間法人XXX', 2)).to eq '無限責任中間法人XXX'
      end

      it '末尾 無限責任中間法人' do
        expect(Syamei.with_end('XXX無限責任中間法人', 2)).to eq 'XXX無限責任中間法人'
      end

      it '先頭 行政書士法人' do
        expect(Syamei.with_end('行政書士法人XXX', 2)).to eq '行政書士法人XXX'
      end

      it '末尾 行政書士法人' do
        expect(Syamei.with_end('XXX行政書士法人', 2)).to eq 'XXX行政書士法人'
      end

      it '先頭 司法書士法人' do
        expect(Syamei.with_end('司法書士法人XXX', 2)).to eq '司法書士法人XXX'
      end

      it '末尾 司法書士法人' do
        expect(Syamei.with_end('XXX司法書士法人', 2)).to eq 'XXX司法書士法人'
      end

      it '先頭 税理士法人' do
        expect(Syamei.with_end('税理士法人XXX', 2)).to eq '税理士法人XXX'
      end

      it '末尾 税理士法人' do
        expect(Syamei.with_end('XXX税理士法人', 2)).to eq 'XXX税理士法人'
      end

      it '先頭 国立大学法人' do
        expect(Syamei.with_end('国立大学法人XXX', 2)).to eq '国立大学法人XXX'
      end

      it '末尾 国立大学法人' do
        expect(Syamei.with_end('XXX国立大学法人', 2)).to eq 'XXX国立大学法人'
      end

      it '先頭 公立大学法人' do
        expect(Syamei.with_end('公立大学法人XXX', 2)).to eq '公立大学法人XXX'
      end

      it '末尾 公立大学法人' do
        expect(Syamei.with_end('XXX公立大学法人', 2)).to eq 'XXX公立大学法人'
      end

      it '先頭 農事組合法人' do
        expect(Syamei.with_end('農事組合法人XXX', 2)).to eq '農事組合法人XXX'
      end

      it '末尾 農事組合法人' do
        expect(Syamei.with_end('XXX農事組合法人', 2)).to eq 'XXX農事組合法人'
      end

      it '先頭 管理組合法人' do
        expect(Syamei.with_end('管理組合法人XXX', 2)).to eq '管理組合法人XXX'
      end

      it '末尾 管理組合法人' do
        expect(Syamei.with_end('XXX管理組合法人', 2)).to eq 'XXX管理組合法人'
      end

      it '先頭 社会保険労務士法人' do
        expect(Syamei.with_end('社会保険労務士法人XXX', 2)).to eq '社会保険労務士法人XXX'
      end

      it '末尾 社会保険労務士法人' do
        expect(Syamei.with_end('XXX社会保険労務士法人', 2)).to eq 'XXX社会保険労務士法人'
      end

      it '先頭 営業所' do
        expect(Syamei.with_end('営業所XXX', 2)).to eq '営業所XXX'
      end

      it '末尾 営業所' do
        expect(Syamei.with_end('XXX営業所', 2)).to eq 'XXX営業所'
      end

      it '先頭 出張所' do
        expect(Syamei.with_end('出張所XXX', 2)).to eq '出張所XXX'
      end

      it '末尾 出張所' do
        expect(Syamei.with_end('XXX出張所', 2)).to eq 'XXX出張所'
      end

      it '先頭 ㈱' do
        expect(Syamei.with_end('㈱XXX', 2)).to eq 'XXX'
      end

      it '末尾 ㈱' do
        expect(Syamei.with_end('XXX㈱', 2)).to eq 'XXX㈱'
      end

      it '先頭 \(株\)' do
        expect(Syamei.with_end('(株)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(株\)' do
        expect(Syamei.with_end('XXX(株)', 2)).to eq 'XXX(株)'
      end

      it '先頭 ㈲' do
        expect(Syamei.with_end('㈲XXX', 2)).to eq 'XXX'
      end

      it '末尾 ㈲' do
        expect(Syamei.with_end('XXX㈲', 2)).to eq 'XXX㈲'
      end

      it '先頭 \(有\)' do
        expect(Syamei.with_end('(有)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(有\)' do
        expect(Syamei.with_end('XXX(有)', 2)).to eq 'XXX(有)'
      end

      it '先頭 \(名\)' do
        expect(Syamei.with_end('(名)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(名\)' do
        expect(Syamei.with_end('XXX(名)', 2)).to eq 'XXX(名)'
      end

      it '先頭 \(資\)' do
        expect(Syamei.with_end('(資)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(資\)' do
        expect(Syamei.with_end('XXX(資)', 2)).to eq 'XXX(資)'
      end

      it '先頭 \(同\)' do
        expect(Syamei.with_end('(同)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(同\)' do
        expect(Syamei.with_end('XXX(同)', 2)).to eq 'XXX(同)'
      end

      it '先頭 \(医\)' do
        expect(Syamei.with_end('(医)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(医\)' do
        expect(Syamei.with_end('XXX(医)', 2)).to eq 'XXX(医)'
      end

      it '先頭 \(財\)' do
        expect(Syamei.with_end('(財)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(財\)' do
        expect(Syamei.with_end('XXX(財)', 2)).to eq 'XXX(財)'
      end

      it '先頭 \(一財\)' do
        expect(Syamei.with_end('(一財)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(一財\)' do
        expect(Syamei.with_end('XXX(一財)', 2)).to eq 'XXX(一財)'
      end

      it '先頭 \(公財\)' do
        expect(Syamei.with_end('(公財)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(公財\)' do
        expect(Syamei.with_end('XXX(公財)', 2)).to eq 'XXX(公財)'
      end

      it '先頭 \(社\)' do
        expect(Syamei.with_end('(社)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(社\)' do
        expect(Syamei.with_end('XXX(社)', 2)).to eq 'XXX(社)'
      end

      it '先頭 \(一社\)' do
        expect(Syamei.with_end('(一社)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(一社\)' do
        expect(Syamei.with_end('XXX(一社)', 2)).to eq 'XXX(一社)'
      end

      it '先頭 \(公社\)' do
        expect(Syamei.with_end('(公社)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(公社\)' do
        expect(Syamei.with_end('XXX(公社)', 2)).to eq 'XXX(公社)'
      end

      it '先頭 \(宗\)' do
        expect(Syamei.with_end('(宗)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(宗\)' do
        expect(Syamei.with_end('XXX(宗)', 2)).to eq 'XXX(宗)'
      end

      it '先頭 \(学\)' do
        expect(Syamei.with_end('(学)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(学\)' do
        expect(Syamei.with_end('XXX(学)', 2)).to eq 'XXX(学)'
      end

      it '先頭 \(福\)' do
        expect(Syamei.with_end('(福)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(福\)' do
        expect(Syamei.with_end('XXX(福)', 2)).to eq 'XXX(福)'
      end

      it '先頭 \(相\)' do
        expect(Syamei.with_end('(相)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(相\)' do
        expect(Syamei.with_end('XXX(相)', 2)).to eq 'XXX(相)'
      end

      it '先頭 \(特非\)' do
        expect(Syamei.with_end('(特非)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(特非\)' do
        expect(Syamei.with_end('XXX(特非)', 2)).to eq 'XXX(特非)'
      end

      it '先頭 \(独\)' do
        expect(Syamei.with_end('(独)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(独\)' do
        expect(Syamei.with_end('XXX(独)', 2)).to eq 'XXX(独)'
      end

      it '先頭 \(地独\)' do
        expect(Syamei.with_end('(地独)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(地独\)' do
        expect(Syamei.with_end('XXX(地独)', 2)).to eq 'XXX(地独)'
      end

      it '先頭 \(弁\)' do
        expect(Syamei.with_end('(弁)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(弁\)' do
        expect(Syamei.with_end('XXX(弁)', 2)).to eq 'XXX(弁)'
      end

      it '先頭 \(行\)' do
        expect(Syamei.with_end('(行)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(行\)' do
        expect(Syamei.with_end('XXX(行)', 2)).to eq 'XXX(行)'
      end

      it '先頭 \(司\)' do
        expect(Syamei.with_end('(司)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(司\)' do
        expect(Syamei.with_end('XXX(司)', 2)).to eq 'XXX(司)'
      end

      it '先頭 \(税\)' do
        expect(Syamei.with_end('(税)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(税\)' do
        expect(Syamei.with_end('XXX(税)', 2)).to eq 'XXX(税)'
      end

      it '先頭 \(中\)' do
        expect(Syamei.with_end('(中)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(中\)' do
        expect(Syamei.with_end('XXX(中)', 2)).to eq 'XXX(中)'
      end

      it '先頭 \(大\)' do
        expect(Syamei.with_end('(大)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(大\)' do
        expect(Syamei.with_end('XXX(大)', 2)).to eq 'XXX(大)'
      end

      it '先頭 \(営\)' do
        expect(Syamei.with_end('(営)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(営\)' do
        expect(Syamei.with_end('XXX(営)', 2)).to eq 'XXX(営)'
      end

      it '先頭 \(出\)' do
        expect(Syamei.with_end('(出)XXX', 2)).to eq 'XXX'
      end

      it '末尾 \(出\)' do
        expect(Syamei.with_end('XXX(出)', 2)).to eq 'XXX(出)'
      end

      # TODO: カナを先頭・中間・末尾にわける
    end
    context 'type: 3' do # TODO: カナを先頭・中間・末尾にわける
    end
  end
  describe '.with_beginning' do
    context 'name is nil' do
      it { expect(Syamei.with_beginning(nil, 0)).to eq nil }
    end
    context 'name is empty' do
      it { expect(Syamei.with_beginning('', 0)).to eq nil }
    end
    context 'type: 0' do
      it '先頭 株式会社' do
        expect(Syamei.with_beginning('株式会社XXX', 0)).to eq '株式会社XXX'
      end

      it '末尾 株式会社' do
        expect(Syamei.with_beginning('XXX株式会社', 0)).to eq 'XXX'
      end

      it '先頭 有限会社' do
        expect(Syamei.with_beginning('有限会社XXX', 0)).to eq '有限会社XXX'
      end

      it '末尾 有限会社' do
        expect(Syamei.with_beginning('XXX有限会社', 0)).to eq 'XXX'
      end

      it '先頭 合名会社' do
        expect(Syamei.with_beginning('合名会社XXX', 0)).to eq '合名会社XXX'
      end

      it '末尾 合名会社' do
        expect(Syamei.with_beginning('XXX合名会社', 0)).to eq 'XXX'
      end

      it '先頭 合資会社' do
        expect(Syamei.with_beginning('合資会社XXX', 0)).to eq '合資会社XXX'
      end

      it '末尾 合資会社' do
        expect(Syamei.with_beginning('XXX合資会社', 0)).to eq 'XXX'
      end

      it '先頭 合同会社' do
        expect(Syamei.with_beginning('合同会社XXX', 0)).to eq '合同会社XXX'
      end

      it '末尾 合同会社' do
        expect(Syamei.with_beginning('XXX合同会社', 0)).to eq 'XXX'
      end

      it '先頭 医療法人社団' do
        expect(Syamei.with_beginning('医療法人社団XXX', 0)).to eq '医療法人社団XXX'
      end

      it '末尾 医療法人社団' do
        expect(Syamei.with_beginning('XXX医療法人社団', 0)).to eq 'XXX'
      end

      it '先頭 医療法人財団' do
        expect(Syamei.with_beginning('医療法人財団XXX', 0)).to eq '医療法人財団XXX'
      end

      it '末尾 医療法人財団' do
        expect(Syamei.with_beginning('XXX医療法人財団', 0)).to eq 'XXX'
      end

      it '先頭 医療法人' do
        expect(Syamei.with_beginning('医療法人XXX', 0)).to eq '医療法人XXX'
      end

      it '末尾 医療法人' do
        expect(Syamei.with_beginning('XXX医療法人', 0)).to eq 'XXX'
      end

      it '先頭 社会医療法人' do
        expect(Syamei.with_beginning('社会医療法人XXX', 0)).to eq '社会医療法人XXX'
      end

      it '末尾 社会医療法人' do
        expect(Syamei.with_beginning('XXX社会医療法人', 0)).to eq 'XXX'
      end

      it '先頭 財団法人' do
        expect(Syamei.with_beginning('財団法人XXX', 0)).to eq '財団法人XXX'
      end

      it '末尾 財団法人' do
        expect(Syamei.with_beginning('XXX財団法人', 0)).to eq 'XXX'
      end

      it '先頭 一般財団法人' do
        expect(Syamei.with_beginning('一般財団法人XXX', 0)).to eq '一般財団法人XXX'
      end

      it '末尾 一般財団法人' do
        expect(Syamei.with_beginning('XXX一般財団法人', 0)).to eq 'XXX'
      end

      it '先頭 公益財団法人' do
        expect(Syamei.with_beginning('公益財団法人XXX', 0)).to eq '公益財団法人XXX'
      end

      it '末尾 公益財団法人' do
        expect(Syamei.with_beginning('XXX公益財団法人', 0)).to eq 'XXX'
      end

      it '先頭 社団法人' do
        expect(Syamei.with_beginning('社団法人XXX', 0)).to eq '社団法人XXX'
      end

      it '末尾 社団法人' do
        expect(Syamei.with_beginning('XXX社団法人', 0)).to eq 'XXX'
      end

      it '先頭 一般社団法人' do
        expect(Syamei.with_beginning('一般社団法人XXX', 0)).to eq '一般社団法人XXX'
      end

      it '末尾 一般社団法人' do
        expect(Syamei.with_beginning('XXX一般社団法人', 0)).to eq 'XXX'
      end

      it '先頭 公益社団法人' do
        expect(Syamei.with_beginning('公益社団法人XXX', 0)).to eq '公益社団法人XXX'
      end

      it '末尾 公益社団法人' do
        expect(Syamei.with_beginning('XXX公益社団法人', 0)).to eq 'XXX'
      end

      it '先頭 宗教法人' do
        expect(Syamei.with_beginning('宗教法人XXX', 0)).to eq '宗教法人XXX'
      end

      it '末尾 宗教法人' do
        expect(Syamei.with_beginning('XXX宗教法人', 0)).to eq 'XXX'
      end

      it '先頭 学校法人' do
        expect(Syamei.with_beginning('学校法人XXX', 0)).to eq '学校法人XXX'
      end

      it '末尾 学校法人' do
        expect(Syamei.with_beginning('XXX学校法人', 0)).to eq 'XXX'
      end

      it '先頭 社会福祉法人' do
        expect(Syamei.with_beginning('社会福祉法人XXX', 0)).to eq '社会福祉法人XXX'
      end

      it '末尾 社会福祉法人' do
        expect(Syamei.with_beginning('XXX社会福祉法人', 0)).to eq 'XXX'
      end

      it '先頭 更生保護法人' do
        expect(Syamei.with_beginning('更生保護法人XXX', 0)).to eq '更生保護法人XXX'
      end

      it '末尾 更生保護法人' do
        expect(Syamei.with_beginning('XXX更生保護法人', 0)).to eq 'XXX'
      end

      it '先頭 相互会社' do
        expect(Syamei.with_beginning('相互会社XXX', 0)).to eq '相互会社XXX'
      end

      it '末尾 相互会社' do
        expect(Syamei.with_beginning('XXX相互会社', 0)).to eq 'XXX'
      end

      it '先頭 特定非営利活動法人' do
        expect(Syamei.with_beginning('特定非営利活動法人XXX', 0)).to eq '特定非営利活動法人XXX'
      end

      it '末尾 特定非営利活動法人' do
        expect(Syamei.with_beginning('XXX特定非営利活動法人', 0)).to eq 'XXX'
      end

      it '先頭 独立行政法人' do
        expect(Syamei.with_beginning('独立行政法人XXX', 0)).to eq '独立行政法人XXX'
      end

      it '末尾 独立行政法人' do
        expect(Syamei.with_beginning('XXX独立行政法人', 0)).to eq 'XXX'
      end

      it '先頭 地方独立行政法人' do
        expect(Syamei.with_beginning('地方独立行政法人XXX', 0)).to eq '地方独立行政法人XXX'
      end

      it '末尾 地方独立行政法人' do
        expect(Syamei.with_beginning('XXX地方独立行政法人', 0)).to eq 'XXX'
      end

      it '先頭 弁護士法人' do
        expect(Syamei.with_beginning('弁護士法人XXX', 0)).to eq '弁護士法人XXX'
      end

      it '末尾 弁護士法人' do
        expect(Syamei.with_beginning('XXX弁護士法人', 0)).to eq 'XXX'
      end

      it '先頭 有限責任中間法人' do
        expect(Syamei.with_beginning('有限責任中間法人XXX', 0)).to eq '有限責任中間法人XXX'
      end

      it '末尾 有限責任中間法人' do
        expect(Syamei.with_beginning('XXX有限責任中間法人', 0)).to eq 'XXX'
      end

      it '先頭 無限責任中間法人' do
        expect(Syamei.with_beginning('無限責任中間法人XXX', 0)).to eq '無限責任中間法人XXX'
      end

      it '末尾 無限責任中間法人' do
        expect(Syamei.with_beginning('XXX無限責任中間法人', 0)).to eq 'XXX'
      end

      it '先頭 行政書士法人' do
        expect(Syamei.with_beginning('行政書士法人XXX', 0)).to eq '行政書士法人XXX'
      end

      it '末尾 行政書士法人' do
        expect(Syamei.with_beginning('XXX行政書士法人', 0)).to eq 'XXX'
      end

      it '先頭 司法書士法人' do
        expect(Syamei.with_beginning('司法書士法人XXX', 0)).to eq '司法書士法人XXX'
      end

      it '末尾 司法書士法人' do
        expect(Syamei.with_beginning('XXX司法書士法人', 0)).to eq 'XXX'
      end

      it '先頭 税理士法人' do
        expect(Syamei.with_beginning('税理士法人XXX', 0)).to eq '税理士法人XXX'
      end

      it '末尾 税理士法人' do
        expect(Syamei.with_beginning('XXX税理士法人', 0)).to eq 'XXX'
      end

      it '先頭 国立大学法人' do
        expect(Syamei.with_beginning('国立大学法人XXX', 0)).to eq '国立大学法人XXX'
      end

      it '末尾 国立大学法人' do
        expect(Syamei.with_beginning('XXX国立大学法人', 0)).to eq 'XXX'
      end

      it '先頭 公立大学法人' do
        expect(Syamei.with_beginning('公立大学法人XXX', 0)).to eq '公立大学法人XXX'
      end

      it '末尾 公立大学法人' do
        expect(Syamei.with_beginning('XXX公立大学法人', 0)).to eq 'XXX'
      end

      it '先頭 農事組合法人' do
        expect(Syamei.with_beginning('農事組合法人XXX', 0)).to eq '農事組合法人XXX'
      end

      it '末尾 農事組合法人' do
        expect(Syamei.with_beginning('XXX農事組合法人', 0)).to eq 'XXX'
      end

      it '先頭 管理組合法人' do
        expect(Syamei.with_beginning('管理組合法人XXX', 0)).to eq '管理組合法人XXX'
      end

      it '末尾 管理組合法人' do
        expect(Syamei.with_beginning('XXX管理組合法人', 0)).to eq 'XXX'
      end

      it '先頭 社会保険労務士法人' do
        expect(Syamei.with_beginning('社会保険労務士法人XXX', 0)).to eq '社会保険労務士法人XXX'
      end

      it '末尾 社会保険労務士法人' do
        expect(Syamei.with_beginning('XXX社会保険労務士法人', 0)).to eq 'XXX'
      end

      it '先頭 営業所' do
        expect(Syamei.with_beginning('営業所XXX', 0)).to eq '営業所XXX'
      end

      it '末尾 営業所' do
        expect(Syamei.with_beginning('XXX営業所', 0)).to eq 'XXX'
      end

      it '先頭 出張所' do
        expect(Syamei.with_beginning('出張所XXX', 0)).to eq '出張所XXX'
      end

      it '末尾 出張所' do
        expect(Syamei.with_beginning('XXX出張所', 0)).to eq 'XXX'
      end

      it '先頭 ㈱' do
        expect(Syamei.with_beginning('㈱XXX', 0)).to eq '㈱XXX'
      end

      it '末尾 ㈱' do
        expect(Syamei.with_beginning('XXX㈱', 0)).to eq 'XXX'
      end

      it '先頭 \(株\)' do
        expect(Syamei.with_beginning('(株)XXX', 0)).to eq '(株)XXX'
      end

      it '末尾 \(株\)' do
        expect(Syamei.with_beginning('XXX(株)', 0)).to eq 'XXX'
      end

      it '先頭 ㈲' do
        expect(Syamei.with_beginning('㈲XXX', 0)).to eq '㈲XXX'
      end

      it '末尾 ㈲' do
        expect(Syamei.with_beginning('XXX㈲', 0)).to eq 'XXX'
      end

      it '先頭 \(有\)' do
        expect(Syamei.with_beginning('(有)XXX', 0)).to eq '(有)XXX'
      end

      it '末尾 \(有\)' do
        expect(Syamei.with_beginning('XXX(有)', 0)).to eq 'XXX'
      end

      it '先頭 \(名\)' do
        expect(Syamei.with_beginning('(名)XXX', 0)).to eq '(名)XXX'
      end

      it '末尾 \(名\)' do
        expect(Syamei.with_beginning('XXX(名)', 0)).to eq 'XXX'
      end

      it '先頭 \(資\)' do
        expect(Syamei.with_beginning('(資)XXX', 0)).to eq '(資)XXX'
      end

      it '末尾 \(資\)' do
        expect(Syamei.with_beginning('XXX(資)', 0)).to eq 'XXX'
      end

      it '先頭 \(同\)' do
        expect(Syamei.with_beginning('(同)XXX', 0)).to eq '(同)XXX'
      end

      it '末尾 \(同\)' do
        expect(Syamei.with_beginning('XXX(同)', 0)).to eq 'XXX'
      end

      it '先頭 \(医\)' do
        expect(Syamei.with_beginning('(医)XXX', 0)).to eq '(医)XXX'
      end

      it '末尾 \(医\)' do
        expect(Syamei.with_beginning('XXX(医)', 0)).to eq 'XXX'
      end

      it '先頭 \(財\)' do
        expect(Syamei.with_beginning('(財)XXX', 0)).to eq '(財)XXX'
      end

      it '末尾 \(財\)' do
        expect(Syamei.with_beginning('XXX(財)', 0)).to eq 'XXX'
      end

      it '先頭 \(一財\)' do
        expect(Syamei.with_beginning('(一財)XXX', 0)).to eq '(一財)XXX'
      end

      it '末尾 \(一財\)' do
        expect(Syamei.with_beginning('XXX(一財)', 0)).to eq 'XXX'
      end

      it '先頭 \(公財\)' do
        expect(Syamei.with_beginning('(公財)XXX', 0)).to eq '(公財)XXX'
      end

      it '末尾 \(公財\)' do
        expect(Syamei.with_beginning('XXX(公財)', 0)).to eq 'XXX'
      end

      it '先頭 \(社\)' do
        expect(Syamei.with_beginning('(社)XXX', 0)).to eq '(社)XXX'
      end

      it '末尾 \(社\)' do
        expect(Syamei.with_beginning('XXX(社)', 0)).to eq 'XXX'
      end

      it '先頭 \(一社\)' do
        expect(Syamei.with_beginning('(一社)XXX', 0)).to eq '(一社)XXX'
      end

      it '末尾 \(一社\)' do
        expect(Syamei.with_beginning('XXX(一社)', 0)).to eq 'XXX'
      end

      it '先頭 \(公社\)' do
        expect(Syamei.with_beginning('(公社)XXX', 0)).to eq '(公社)XXX'
      end

      it '末尾 \(公社\)' do
        expect(Syamei.with_beginning('XXX(公社)', 0)).to eq 'XXX'
      end

      it '先頭 \(宗\)' do
        expect(Syamei.with_beginning('(宗)XXX', 0)).to eq '(宗)XXX'
      end

      it '末尾 \(宗\)' do
        expect(Syamei.with_beginning('XXX(宗)', 0)).to eq 'XXX'
      end

      it '先頭 \(学\)' do
        expect(Syamei.with_beginning('(学)XXX', 0)).to eq '(学)XXX'
      end

      it '末尾 \(学\)' do
        expect(Syamei.with_beginning('XXX(学)', 0)).to eq 'XXX'
      end

      it '先頭 \(福\)' do
        expect(Syamei.with_beginning('(福)XXX', 0)).to eq '(福)XXX'
      end

      it '末尾 \(福\)' do
        expect(Syamei.with_beginning('XXX(福)', 0)).to eq 'XXX'
      end

      it '先頭 \(相\)' do
        expect(Syamei.with_beginning('(相)XXX', 0)).to eq '(相)XXX'
      end

      it '末尾 \(相\)' do
        expect(Syamei.with_beginning('XXX(相)', 0)).to eq 'XXX'
      end

      it '先頭 \(特非\)' do
        expect(Syamei.with_beginning('(特非)XXX', 0)).to eq '(特非)XXX'
      end

      it '末尾 \(特非\)' do
        expect(Syamei.with_beginning('XXX(特非)', 0)).to eq 'XXX'
      end

      it '先頭 \(独\)' do
        expect(Syamei.with_beginning('(独)XXX', 0)).to eq '(独)XXX'
      end

      it '末尾 \(独\)' do
        expect(Syamei.with_beginning('XXX(独)', 0)).to eq 'XXX'
      end

      it '先頭 \(地独\)' do
        expect(Syamei.with_beginning('(地独)XXX', 0)).to eq '(地独)XXX'
      end

      it '末尾 \(地独\)' do
        expect(Syamei.with_beginning('XXX(地独)', 0)).to eq 'XXX'
      end

      it '先頭 \(弁\)' do
        expect(Syamei.with_beginning('(弁)XXX', 0)).to eq '(弁)XXX'
      end

      it '末尾 \(弁\)' do
        expect(Syamei.with_beginning('XXX(弁)', 0)).to eq 'XXX'
      end

      it '先頭 \(行\)' do
        expect(Syamei.with_beginning('(行)XXX', 0)).to eq '(行)XXX'
      end

      it '末尾 \(行\)' do
        expect(Syamei.with_beginning('XXX(行)', 0)).to eq 'XXX'
      end

      it '先頭 \(司\)' do
        expect(Syamei.with_beginning('(司)XXX', 0)).to eq '(司)XXX'
      end

      it '末尾 \(司\)' do
        expect(Syamei.with_beginning('XXX(司)', 0)).to eq 'XXX'
      end

      it '先頭 \(税\)' do
        expect(Syamei.with_beginning('(税)XXX', 0)).to eq '(税)XXX'
      end

      it '末尾 \(税\)' do
        expect(Syamei.with_beginning('XXX(税)', 0)).to eq 'XXX'
      end

      it '先頭 \(中\)' do
        expect(Syamei.with_beginning('(中)XXX', 0)).to eq '(中)XXX'
      end

      it '末尾 \(中\)' do
        expect(Syamei.with_beginning('XXX(中)', 0)).to eq 'XXX'
      end

      it '先頭 \(大\)' do
        expect(Syamei.with_beginning('(大)XXX', 0)).to eq '(大)XXX'
      end

      it '末尾 \(大\)' do
        expect(Syamei.with_beginning('XXX(大)', 0)).to eq 'XXX'
      end

      it '先頭 \(営\)' do
        expect(Syamei.with_beginning('(営)XXX', 0)).to eq '(営)XXX'
      end

      it '末尾 \(営\)' do
        expect(Syamei.with_beginning('XXX(営)', 0)).to eq 'XXX'
      end

      it '先頭 \(出\)' do
        expect(Syamei.with_beginning('(出)XXX', 0)).to eq '(出)XXX'
      end

      it '末尾 \(出\)' do
        expect(Syamei.with_beginning('XXX(出)', 0)).to eq 'XXX'
      end
    end
    context 'type: 1' do
      it '先頭 株式会社' do
        expect(Syamei.with_beginning('株式会社XXX', 1)).to eq '株式会社XXX'
      end

      it '末尾 株式会社' do
        expect(Syamei.with_beginning('XXX株式会社', 1)).to eq 'XXX'
      end

      it '先頭 有限会社' do
        expect(Syamei.with_beginning('有限会社XXX', 1)).to eq '有限会社XXX'
      end

      it '末尾 有限会社' do
        expect(Syamei.with_beginning('XXX有限会社', 1)).to eq 'XXX'
      end

      it '先頭 合名会社' do
        expect(Syamei.with_beginning('合名会社XXX', 1)).to eq '合名会社XXX'
      end

      it '末尾 合名会社' do
        expect(Syamei.with_beginning('XXX合名会社', 1)).to eq 'XXX'
      end

      it '先頭 合資会社' do
        expect(Syamei.with_beginning('合資会社XXX', 1)).to eq '合資会社XXX'
      end

      it '末尾 合資会社' do
        expect(Syamei.with_beginning('XXX合資会社', 1)).to eq 'XXX'
      end

      it '先頭 合同会社' do
        expect(Syamei.with_beginning('合同会社XXX', 1)).to eq '合同会社XXX'
      end

      it '末尾 合同会社' do
        expect(Syamei.with_beginning('XXX合同会社', 1)).to eq 'XXX'
      end

      it '先頭 医療法人社団' do
        expect(Syamei.with_beginning('医療法人社団XXX', 1)).to eq '医療法人社団XXX'
      end

      it '末尾 医療法人社団' do
        expect(Syamei.with_beginning('XXX医療法人社団', 1)).to eq 'XXX'
      end

      it '先頭 医療法人財団' do
        expect(Syamei.with_beginning('医療法人財団XXX', 1)).to eq '医療法人財団XXX'
      end

      it '末尾 医療法人財団' do
        expect(Syamei.with_beginning('XXX医療法人財団', 1)).to eq 'XXX'
      end

      it '先頭 医療法人' do
        expect(Syamei.with_beginning('医療法人XXX', 1)).to eq '医療法人XXX'
      end

      it '末尾 医療法人' do
        expect(Syamei.with_beginning('XXX医療法人', 1)).to eq 'XXX'
      end

      it '先頭 社会医療法人' do
        expect(Syamei.with_beginning('社会医療法人XXX', 1)).to eq '社会医療法人XXX'
      end

      it '末尾 社会医療法人' do
        expect(Syamei.with_beginning('XXX社会医療法人', 1)).to eq 'XXX'
      end

      it '先頭 財団法人' do
        expect(Syamei.with_beginning('財団法人XXX', 1)).to eq '財団法人XXX'
      end

      it '末尾 財団法人' do
        expect(Syamei.with_beginning('XXX財団法人', 1)).to eq 'XXX'
      end

      it '先頭 一般財団法人' do
        expect(Syamei.with_beginning('一般財団法人XXX', 1)).to eq '一般財団法人XXX'
      end

      it '末尾 一般財団法人' do
        expect(Syamei.with_beginning('XXX一般財団法人', 1)).to eq 'XXX'
      end

      it '先頭 公益財団法人' do
        expect(Syamei.with_beginning('公益財団法人XXX', 1)).to eq '公益財団法人XXX'
      end

      it '末尾 公益財団法人' do
        expect(Syamei.with_beginning('XXX公益財団法人', 1)).to eq 'XXX'
      end

      it '先頭 社団法人' do
        expect(Syamei.with_beginning('社団法人XXX', 1)).to eq '社団法人XXX'
      end

      it '末尾 社団法人' do
        expect(Syamei.with_beginning('XXX社団法人', 1)).to eq 'XXX'
      end

      it '先頭 一般社団法人' do
        expect(Syamei.with_beginning('一般社団法人XXX', 1)).to eq '一般社団法人XXX'
      end

      it '末尾 一般社団法人' do
        expect(Syamei.with_beginning('XXX一般社団法人', 1)).to eq 'XXX'
      end

      it '先頭 公益社団法人' do
        expect(Syamei.with_beginning('公益社団法人XXX', 1)).to eq '公益社団法人XXX'
      end

      it '末尾 公益社団法人' do
        expect(Syamei.with_beginning('XXX公益社団法人', 1)).to eq 'XXX'
      end

      it '先頭 宗教法人' do
        expect(Syamei.with_beginning('宗教法人XXX', 1)).to eq '宗教法人XXX'
      end

      it '末尾 宗教法人' do
        expect(Syamei.with_beginning('XXX宗教法人', 1)).to eq 'XXX'
      end

      it '先頭 学校法人' do
        expect(Syamei.with_beginning('学校法人XXX', 1)).to eq '学校法人XXX'
      end

      it '末尾 学校法人' do
        expect(Syamei.with_beginning('XXX学校法人', 1)).to eq 'XXX'
      end

      it '先頭 社会福祉法人' do
        expect(Syamei.with_beginning('社会福祉法人XXX', 1)).to eq '社会福祉法人XXX'
      end

      it '末尾 社会福祉法人' do
        expect(Syamei.with_beginning('XXX社会福祉法人', 1)).to eq 'XXX'
      end

      it '先頭 更生保護法人' do
        expect(Syamei.with_beginning('更生保護法人XXX', 1)).to eq '更生保護法人XXX'
      end

      it '末尾 更生保護法人' do
        expect(Syamei.with_beginning('XXX更生保護法人', 1)).to eq 'XXX'
      end

      it '先頭 相互会社' do
        expect(Syamei.with_beginning('相互会社XXX', 1)).to eq '相互会社XXX'
      end

      it '末尾 相互会社' do
        expect(Syamei.with_beginning('XXX相互会社', 1)).to eq 'XXX'
      end

      it '先頭 特定非営利活動法人' do
        expect(Syamei.with_beginning('特定非営利活動法人XXX', 1)).to eq '特定非営利活動法人XXX'
      end

      it '末尾 特定非営利活動法人' do
        expect(Syamei.with_beginning('XXX特定非営利活動法人', 1)).to eq 'XXX'
      end

      it '先頭 独立行政法人' do
        expect(Syamei.with_beginning('独立行政法人XXX', 1)).to eq '独立行政法人XXX'
      end

      it '末尾 独立行政法人' do
        expect(Syamei.with_beginning('XXX独立行政法人', 1)).to eq 'XXX'
      end

      it '先頭 地方独立行政法人' do
        expect(Syamei.with_beginning('地方独立行政法人XXX', 1)).to eq '地方独立行政法人XXX'
      end

      it '末尾 地方独立行政法人' do
        expect(Syamei.with_beginning('XXX地方独立行政法人', 1)).to eq 'XXX'
      end

      it '先頭 弁護士法人' do
        expect(Syamei.with_beginning('弁護士法人XXX', 1)).to eq '弁護士法人XXX'
      end

      it '末尾 弁護士法人' do
        expect(Syamei.with_beginning('XXX弁護士法人', 1)).to eq 'XXX'
      end

      it '先頭 有限責任中間法人' do
        expect(Syamei.with_beginning('有限責任中間法人XXX', 1)).to eq '有限責任中間法人XXX'
      end

      it '末尾 有限責任中間法人' do
        expect(Syamei.with_beginning('XXX有限責任中間法人', 1)).to eq 'XXX'
      end

      it '先頭 無限責任中間法人' do
        expect(Syamei.with_beginning('無限責任中間法人XXX', 1)).to eq '無限責任中間法人XXX'
      end

      it '末尾 無限責任中間法人' do
        expect(Syamei.with_beginning('XXX無限責任中間法人', 1)).to eq 'XXX'
      end

      it '先頭 行政書士法人' do
        expect(Syamei.with_beginning('行政書士法人XXX', 1)).to eq '行政書士法人XXX'
      end

      it '末尾 行政書士法人' do
        expect(Syamei.with_beginning('XXX行政書士法人', 1)).to eq 'XXX'
      end

      it '先頭 司法書士法人' do
        expect(Syamei.with_beginning('司法書士法人XXX', 1)).to eq '司法書士法人XXX'
      end

      it '末尾 司法書士法人' do
        expect(Syamei.with_beginning('XXX司法書士法人', 1)).to eq 'XXX'
      end

      it '先頭 税理士法人' do
        expect(Syamei.with_beginning('税理士法人XXX', 1)).to eq '税理士法人XXX'
      end

      it '末尾 税理士法人' do
        expect(Syamei.with_beginning('XXX税理士法人', 1)).to eq 'XXX'
      end

      it '先頭 国立大学法人' do
        expect(Syamei.with_beginning('国立大学法人XXX', 1)).to eq '国立大学法人XXX'
      end

      it '末尾 国立大学法人' do
        expect(Syamei.with_beginning('XXX国立大学法人', 1)).to eq 'XXX'
      end

      it '先頭 公立大学法人' do
        expect(Syamei.with_beginning('公立大学法人XXX', 1)).to eq '公立大学法人XXX'
      end

      it '末尾 公立大学法人' do
        expect(Syamei.with_beginning('XXX公立大学法人', 1)).to eq 'XXX'
      end

      it '先頭 農事組合法人' do
        expect(Syamei.with_beginning('農事組合法人XXX', 1)).to eq '農事組合法人XXX'
      end

      it '末尾 農事組合法人' do
        expect(Syamei.with_beginning('XXX農事組合法人', 1)).to eq 'XXX'
      end

      it '先頭 管理組合法人' do
        expect(Syamei.with_beginning('管理組合法人XXX', 1)).to eq '管理組合法人XXX'
      end

      it '末尾 管理組合法人' do
        expect(Syamei.with_beginning('XXX管理組合法人', 1)).to eq 'XXX'
      end

      it '先頭 社会保険労務士法人' do
        expect(Syamei.with_beginning('社会保険労務士法人XXX', 1)).to eq '社会保険労務士法人XXX'
      end

      it '末尾 社会保険労務士法人' do
        expect(Syamei.with_beginning('XXX社会保険労務士法人', 1)).to eq 'XXX'
      end

      it '先頭 営業所' do
        expect(Syamei.with_beginning('営業所XXX', 1)).to eq '営業所XXX'
      end

      it '末尾 営業所' do
        expect(Syamei.with_beginning('XXX営業所', 1)).to eq 'XXX'
      end

      it '先頭 出張所' do
        expect(Syamei.with_beginning('出張所XXX', 1)).to eq '出張所XXX'
      end

      it '末尾 出張所' do
        expect(Syamei.with_beginning('XXX出張所', 1)).to eq 'XXX'
      end

      it '先頭 ㈱' do
        expect(Syamei.with_beginning('㈱XXX', 1)).to eq '㈱XXX'
      end

      it '末尾 ㈱' do
        expect(Syamei.with_beginning('XXX㈱', 1)).to eq 'XXX㈱'
      end

      it '先頭 \(株\)' do
        expect(Syamei.with_beginning('(株)XXX', 1)).to eq '(株)XXX'
      end

      it '末尾 \(株\)' do
        expect(Syamei.with_beginning('XXX(株)', 1)).to eq 'XXX(株)'
      end

      it '先頭 ㈲' do
        expect(Syamei.with_beginning('㈲XXX', 1)).to eq '㈲XXX'
      end

      it '末尾 ㈲' do
        expect(Syamei.with_beginning('XXX㈲', 1)).to eq 'XXX㈲'
      end

      it '先頭 \(有\)' do
        expect(Syamei.with_beginning('(有)XXX', 1)).to eq '(有)XXX'
      end

      it '末尾 \(有\)' do
        expect(Syamei.with_beginning('XXX(有)', 1)).to eq 'XXX(有)'
      end

      it '先頭 \(名\)' do
        expect(Syamei.with_beginning('(名)XXX', 1)).to eq '(名)XXX'
      end

      it '末尾 \(名\)' do
        expect(Syamei.with_beginning('XXX(名)', 1)).to eq 'XXX(名)'
      end

      it '先頭 \(資\)' do
        expect(Syamei.with_beginning('(資)XXX', 1)).to eq '(資)XXX'
      end

      it '末尾 \(資\)' do
        expect(Syamei.with_beginning('XXX(資)', 1)).to eq 'XXX(資)'
      end

      it '先頭 \(同\)' do
        expect(Syamei.with_beginning('(同)XXX', 1)).to eq '(同)XXX'
      end

      it '末尾 \(同\)' do
        expect(Syamei.with_beginning('XXX(同)', 1)).to eq 'XXX(同)'
      end

      it '先頭 \(医\)' do
        expect(Syamei.with_beginning('(医)XXX', 1)).to eq '(医)XXX'
      end

      it '末尾 \(医\)' do
        expect(Syamei.with_beginning('XXX(医)', 1)).to eq 'XXX(医)'
      end

      it '先頭 \(財\)' do
        expect(Syamei.with_beginning('(財)XXX', 1)).to eq '(財)XXX'
      end

      it '末尾 \(財\)' do
        expect(Syamei.with_beginning('XXX(財)', 1)).to eq 'XXX(財)'
      end

      it '先頭 \(一財\)' do
        expect(Syamei.with_beginning('(一財)XXX', 1)).to eq '(一財)XXX'
      end

      it '末尾 \(一財\)' do
        expect(Syamei.with_beginning('XXX(一財)', 1)).to eq 'XXX(一財)'
      end

      it '先頭 \(公財\)' do
        expect(Syamei.with_beginning('(公財)XXX', 1)).to eq '(公財)XXX'
      end

      it '末尾 \(公財\)' do
        expect(Syamei.with_beginning('XXX(公財)', 1)).to eq 'XXX(公財)'
      end

      it '先頭 \(社\)' do
        expect(Syamei.with_beginning('(社)XXX', 1)).to eq '(社)XXX'
      end

      it '末尾 \(社\)' do
        expect(Syamei.with_beginning('XXX(社)', 1)).to eq 'XXX(社)'
      end

      it '先頭 \(一社\)' do
        expect(Syamei.with_beginning('(一社)XXX', 1)).to eq '(一社)XXX'
      end

      it '末尾 \(一社\)' do
        expect(Syamei.with_beginning('XXX(一社)', 1)).to eq 'XXX(一社)'
      end

      it '先頭 \(公社\)' do
        expect(Syamei.with_beginning('(公社)XXX', 1)).to eq '(公社)XXX'
      end

      it '末尾 \(公社\)' do
        expect(Syamei.with_beginning('XXX(公社)', 1)).to eq 'XXX(公社)'
      end

      it '先頭 \(宗\)' do
        expect(Syamei.with_beginning('(宗)XXX', 1)).to eq '(宗)XXX'
      end

      it '末尾 \(宗\)' do
        expect(Syamei.with_beginning('XXX(宗)', 1)).to eq 'XXX(宗)'
      end

      it '先頭 \(学\)' do
        expect(Syamei.with_beginning('(学)XXX', 1)).to eq '(学)XXX'
      end

      it '末尾 \(学\)' do
        expect(Syamei.with_beginning('XXX(学)', 1)).to eq 'XXX(学)'
      end

      it '先頭 \(福\)' do
        expect(Syamei.with_beginning('(福)XXX', 1)).to eq '(福)XXX'
      end

      it '末尾 \(福\)' do
        expect(Syamei.with_beginning('XXX(福)', 1)).to eq 'XXX(福)'
      end

      it '先頭 \(相\)' do
        expect(Syamei.with_beginning('(相)XXX', 1)).to eq '(相)XXX'
      end

      it '末尾 \(相\)' do
        expect(Syamei.with_beginning('XXX(相)', 1)).to eq 'XXX(相)'
      end

      it '先頭 \(特非\)' do
        expect(Syamei.with_beginning('(特非)XXX', 1)).to eq '(特非)XXX'
      end

      it '末尾 \(特非\)' do
        expect(Syamei.with_beginning('XXX(特非)', 1)).to eq 'XXX(特非)'
      end

      it '先頭 \(独\)' do
        expect(Syamei.with_beginning('(独)XXX', 1)).to eq '(独)XXX'
      end

      it '末尾 \(独\)' do
        expect(Syamei.with_beginning('XXX(独)', 1)).to eq 'XXX(独)'
      end

      it '先頭 \(地独\)' do
        expect(Syamei.with_beginning('(地独)XXX', 1)).to eq '(地独)XXX'
      end

      it '末尾 \(地独\)' do
        expect(Syamei.with_beginning('XXX(地独)', 1)).to eq 'XXX(地独)'
      end

      it '先頭 \(弁\)' do
        expect(Syamei.with_beginning('(弁)XXX', 1)).to eq '(弁)XXX'
      end

      it '末尾 \(弁\)' do
        expect(Syamei.with_beginning('XXX(弁)', 1)).to eq 'XXX(弁)'
      end

      it '先頭 \(行\)' do
        expect(Syamei.with_beginning('(行)XXX', 1)).to eq '(行)XXX'
      end

      it '末尾 \(行\)' do
        expect(Syamei.with_beginning('XXX(行)', 1)).to eq 'XXX(行)'
      end

      it '先頭 \(司\)' do
        expect(Syamei.with_beginning('(司)XXX', 1)).to eq '(司)XXX'
      end

      it '末尾 \(司\)' do
        expect(Syamei.with_beginning('XXX(司)', 1)).to eq 'XXX(司)'
      end

      it '先頭 \(税\)' do
        expect(Syamei.with_beginning('(税)XXX', 1)).to eq '(税)XXX'
      end

      it '末尾 \(税\)' do
        expect(Syamei.with_beginning('XXX(税)', 1)).to eq 'XXX(税)'
      end

      it '先頭 \(中\)' do
        expect(Syamei.with_beginning('(中)XXX', 1)).to eq '(中)XXX'
      end

      it '末尾 \(中\)' do
        expect(Syamei.with_beginning('XXX(中)', 1)).to eq 'XXX(中)'
      end

      it '先頭 \(大\)' do
        expect(Syamei.with_beginning('(大)XXX', 1)).to eq '(大)XXX'
      end

      it '末尾 \(大\)' do
        expect(Syamei.with_beginning('XXX(大)', 1)).to eq 'XXX(大)'
      end

      it '先頭 \(営\)' do
        expect(Syamei.with_beginning('(営)XXX', 1)).to eq '(営)XXX'
      end

      it '末尾 \(営\)' do
        expect(Syamei.with_beginning('XXX(営)', 1)).to eq 'XXX(営)'
      end

      it '先頭 \(出\)' do
        expect(Syamei.with_beginning('(出)XXX', 1)).to eq '(出)XXX'
      end

      it '末尾 \(出\)' do
        expect(Syamei.with_beginning('XXX(出)', 1)).to eq 'XXX(出)'
      end
    end
    context 'type: 2' do
      it '先頭 株式会社' do
        expect(Syamei.with_beginning('株式会社XXX', 2)).to eq '株式会社XXX'
      end

      it '末尾 株式会社' do
        expect(Syamei.with_beginning('XXX株式会社', 2)).to eq 'XXX株式会社'
      end

      it '先頭 有限会社' do
        expect(Syamei.with_beginning('有限会社XXX', 2)).to eq '有限会社XXX'
      end

      it '末尾 有限会社' do
        expect(Syamei.with_beginning('XXX有限会社', 2)).to eq 'XXX有限会社'
      end

      it '先頭 合名会社' do
        expect(Syamei.with_beginning('合名会社XXX', 2)).to eq '合名会社XXX'
      end

      it '末尾 合名会社' do
        expect(Syamei.with_beginning('XXX合名会社', 2)).to eq 'XXX合名会社'
      end

      it '先頭 合資会社' do
        expect(Syamei.with_beginning('合資会社XXX', 2)).to eq '合資会社XXX'
      end

      it '末尾 合資会社' do
        expect(Syamei.with_beginning('XXX合資会社', 2)).to eq 'XXX合資会社'
      end

      it '先頭 合同会社' do
        expect(Syamei.with_beginning('合同会社XXX', 2)).to eq '合同会社XXX'
      end

      it '末尾 合同会社' do
        expect(Syamei.with_beginning('XXX合同会社', 2)).to eq 'XXX合同会社'
      end

      it '先頭 医療法人社団' do
        expect(Syamei.with_beginning('医療法人社団XXX', 2)).to eq '医療法人社団XXX'
      end

      it '末尾 医療法人社団' do
        expect(Syamei.with_beginning('XXX医療法人社団', 2)).to eq 'XXX医療法人社団'
      end

      it '先頭 医療法人財団' do
        expect(Syamei.with_beginning('医療法人財団XXX', 2)).to eq '医療法人財団XXX'
      end

      it '末尾 医療法人財団' do
        expect(Syamei.with_beginning('XXX医療法人財団', 2)).to eq 'XXX医療法人財団'
      end

      it '先頭 医療法人' do
        expect(Syamei.with_beginning('医療法人XXX', 2)).to eq '医療法人XXX'
      end

      it '末尾 医療法人' do
        expect(Syamei.with_beginning('XXX医療法人', 2)).to eq 'XXX医療法人'
      end

      it '先頭 社会医療法人' do
        expect(Syamei.with_beginning('社会医療法人XXX', 2)).to eq '社会医療法人XXX'
      end

      it '末尾 社会医療法人' do
        expect(Syamei.with_beginning('XXX社会医療法人', 2)).to eq 'XXX社会医療法人'
      end

      it '先頭 財団法人' do
        expect(Syamei.with_beginning('財団法人XXX', 2)).to eq '財団法人XXX'
      end

      it '末尾 財団法人' do
        expect(Syamei.with_beginning('XXX財団法人', 2)).to eq 'XXX財団法人'
      end

      it '先頭 一般財団法人' do
        expect(Syamei.with_beginning('一般財団法人XXX', 2)).to eq '一般財団法人XXX'
      end

      it '末尾 一般財団法人' do
        expect(Syamei.with_beginning('XXX一般財団法人', 2)).to eq 'XXX一般財団法人'
      end

      it '先頭 公益財団法人' do
        expect(Syamei.with_beginning('公益財団法人XXX', 2)).to eq '公益財団法人XXX'
      end

      it '末尾 公益財団法人' do
        expect(Syamei.with_beginning('XXX公益財団法人', 2)).to eq 'XXX公益財団法人'
      end

      it '先頭 社団法人' do
        expect(Syamei.with_beginning('社団法人XXX', 2)).to eq '社団法人XXX'
      end

      it '末尾 社団法人' do
        expect(Syamei.with_beginning('XXX社団法人', 2)).to eq 'XXX社団法人'
      end

      it '先頭 一般社団法人' do
        expect(Syamei.with_beginning('一般社団法人XXX', 2)).to eq '一般社団法人XXX'
      end

      it '末尾 一般社団法人' do
        expect(Syamei.with_beginning('XXX一般社団法人', 2)).to eq 'XXX一般社団法人'
      end

      it '先頭 公益社団法人' do
        expect(Syamei.with_beginning('公益社団法人XXX', 2)).to eq '公益社団法人XXX'
      end

      it '末尾 公益社団法人' do
        expect(Syamei.with_beginning('XXX公益社団法人', 2)).to eq 'XXX公益社団法人'
      end

      it '先頭 宗教法人' do
        expect(Syamei.with_beginning('宗教法人XXX', 2)).to eq '宗教法人XXX'
      end

      it '末尾 宗教法人' do
        expect(Syamei.with_beginning('XXX宗教法人', 2)).to eq 'XXX宗教法人'
      end

      it '先頭 学校法人' do
        expect(Syamei.with_beginning('学校法人XXX', 2)).to eq '学校法人XXX'
      end

      it '末尾 学校法人' do
        expect(Syamei.with_beginning('XXX学校法人', 2)).to eq 'XXX学校法人'
      end

      it '先頭 社会福祉法人' do
        expect(Syamei.with_beginning('社会福祉法人XXX', 2)).to eq '社会福祉法人XXX'
      end

      it '末尾 社会福祉法人' do
        expect(Syamei.with_beginning('XXX社会福祉法人', 2)).to eq 'XXX社会福祉法人'
      end

      it '先頭 更生保護法人' do
        expect(Syamei.with_beginning('更生保護法人XXX', 2)).to eq '更生保護法人XXX'
      end

      it '末尾 更生保護法人' do
        expect(Syamei.with_beginning('XXX更生保護法人', 2)).to eq 'XXX更生保護法人'
      end

      it '先頭 相互会社' do
        expect(Syamei.with_beginning('相互会社XXX', 2)).to eq '相互会社XXX'
      end

      it '末尾 相互会社' do
        expect(Syamei.with_beginning('XXX相互会社', 2)).to eq 'XXX相互会社'
      end

      it '先頭 特定非営利活動法人' do
        expect(Syamei.with_beginning('特定非営利活動法人XXX', 2)).to eq '特定非営利活動法人XXX'
      end

      it '末尾 特定非営利活動法人' do
        expect(Syamei.with_beginning('XXX特定非営利活動法人', 2)).to eq 'XXX特定非営利活動法人'
      end

      it '先頭 独立行政法人' do
        expect(Syamei.with_beginning('独立行政法人XXX', 2)).to eq '独立行政法人XXX'
      end

      it '末尾 独立行政法人' do
        expect(Syamei.with_beginning('XXX独立行政法人', 2)).to eq 'XXX独立行政法人'
      end

      it '先頭 地方独立行政法人' do
        expect(Syamei.with_beginning('地方独立行政法人XXX', 2)).to eq '地方独立行政法人XXX'
      end

      it '末尾 地方独立行政法人' do
        expect(Syamei.with_beginning('XXX地方独立行政法人', 2)).to eq 'XXX地方独立行政法人'
      end

      it '先頭 弁護士法人' do
        expect(Syamei.with_beginning('弁護士法人XXX', 2)).to eq '弁護士法人XXX'
      end

      it '末尾 弁護士法人' do
        expect(Syamei.with_beginning('XXX弁護士法人', 2)).to eq 'XXX弁護士法人'
      end

      it '先頭 有限責任中間法人' do
        expect(Syamei.with_beginning('有限責任中間法人XXX', 2)).to eq '有限責任中間法人XXX'
      end

      it '末尾 有限責任中間法人' do
        expect(Syamei.with_beginning('XXX有限責任中間法人', 2)).to eq 'XXX有限責任中間法人'
      end

      it '先頭 無限責任中間法人' do
        expect(Syamei.with_beginning('無限責任中間法人XXX', 2)).to eq '無限責任中間法人XXX'
      end

      it '末尾 無限責任中間法人' do
        expect(Syamei.with_beginning('XXX無限責任中間法人', 2)).to eq 'XXX無限責任中間法人'
      end

      it '先頭 行政書士法人' do
        expect(Syamei.with_beginning('行政書士法人XXX', 2)).to eq '行政書士法人XXX'
      end

      it '末尾 行政書士法人' do
        expect(Syamei.with_beginning('XXX行政書士法人', 2)).to eq 'XXX行政書士法人'
      end

      it '先頭 司法書士法人' do
        expect(Syamei.with_beginning('司法書士法人XXX', 2)).to eq '司法書士法人XXX'
      end

      it '末尾 司法書士法人' do
        expect(Syamei.with_beginning('XXX司法書士法人', 2)).to eq 'XXX司法書士法人'
      end

      it '先頭 税理士法人' do
        expect(Syamei.with_beginning('税理士法人XXX', 2)).to eq '税理士法人XXX'
      end

      it '末尾 税理士法人' do
        expect(Syamei.with_beginning('XXX税理士法人', 2)).to eq 'XXX税理士法人'
      end

      it '先頭 国立大学法人' do
        expect(Syamei.with_beginning('国立大学法人XXX', 2)).to eq '国立大学法人XXX'
      end

      it '末尾 国立大学法人' do
        expect(Syamei.with_beginning('XXX国立大学法人', 2)).to eq 'XXX国立大学法人'
      end

      it '先頭 公立大学法人' do
        expect(Syamei.with_beginning('公立大学法人XXX', 2)).to eq '公立大学法人XXX'
      end

      it '末尾 公立大学法人' do
        expect(Syamei.with_beginning('XXX公立大学法人', 2)).to eq 'XXX公立大学法人'
      end

      it '先頭 農事組合法人' do
        expect(Syamei.with_beginning('農事組合法人XXX', 2)).to eq '農事組合法人XXX'
      end

      it '末尾 農事組合法人' do
        expect(Syamei.with_beginning('XXX農事組合法人', 2)).to eq 'XXX農事組合法人'
      end

      it '先頭 管理組合法人' do
        expect(Syamei.with_beginning('管理組合法人XXX', 2)).to eq '管理組合法人XXX'
      end

      it '末尾 管理組合法人' do
        expect(Syamei.with_beginning('XXX管理組合法人', 2)).to eq 'XXX管理組合法人'
      end

      it '先頭 社会保険労務士法人' do
        expect(Syamei.with_beginning('社会保険労務士法人XXX', 2)).to eq '社会保険労務士法人XXX'
      end

      it '末尾 社会保険労務士法人' do
        expect(Syamei.with_beginning('XXX社会保険労務士法人', 2)).to eq 'XXX社会保険労務士法人'
      end

      it '先頭 営業所' do
        expect(Syamei.with_beginning('営業所XXX', 2)).to eq '営業所XXX'
      end

      it '末尾 営業所' do
        expect(Syamei.with_beginning('XXX営業所', 2)).to eq 'XXX営業所'
      end

      it '先頭 出張所' do
        expect(Syamei.with_beginning('出張所XXX', 2)).to eq '出張所XXX'
      end

      it '末尾 出張所' do
        expect(Syamei.with_beginning('XXX出張所', 2)).to eq 'XXX出張所'
      end

      it '先頭 ㈱' do
        expect(Syamei.with_beginning('㈱XXX', 2)).to eq '㈱XXX'
      end

      it '末尾 ㈱' do
        expect(Syamei.with_beginning('XXX㈱', 2)).to eq 'XXX'
      end

      it '先頭 \(株\)' do
        expect(Syamei.with_beginning('(株)XXX', 2)).to eq '(株)XXX'
      end

      it '末尾 \(株\)' do
        expect(Syamei.with_beginning('XXX(株)', 2)).to eq 'XXX'
      end

      it '先頭 ㈲' do
        expect(Syamei.with_beginning('㈲XXX', 2)).to eq '㈲XXX'
      end

      it '末尾 ㈲' do
        expect(Syamei.with_beginning('XXX㈲', 2)).to eq 'XXX'
      end

      it '先頭 \(有\)' do
        expect(Syamei.with_beginning('(有)XXX', 2)).to eq '(有)XXX'
      end

      it '末尾 \(有\)' do
        expect(Syamei.with_beginning('XXX(有)', 2)).to eq 'XXX'
      end

      it '先頭 \(名\)' do
        expect(Syamei.with_beginning('(名)XXX', 2)).to eq '(名)XXX'
      end

      it '末尾 \(名\)' do
        expect(Syamei.with_beginning('XXX(名)', 2)).to eq 'XXX'
      end

      it '先頭 \(資\)' do
        expect(Syamei.with_beginning('(資)XXX', 2)).to eq '(資)XXX'
      end

      it '末尾 \(資\)' do
        expect(Syamei.with_beginning('XXX(資)', 2)).to eq 'XXX'
      end

      it '先頭 \(同\)' do
        expect(Syamei.with_beginning('(同)XXX', 2)).to eq '(同)XXX'
      end

      it '末尾 \(同\)' do
        expect(Syamei.with_beginning('XXX(同)', 2)).to eq 'XXX'
      end

      it '先頭 \(医\)' do
        expect(Syamei.with_beginning('(医)XXX', 2)).to eq '(医)XXX'
      end

      it '末尾 \(医\)' do
        expect(Syamei.with_beginning('XXX(医)', 2)).to eq 'XXX'
      end

      it '先頭 \(財\)' do
        expect(Syamei.with_beginning('(財)XXX', 2)).to eq '(財)XXX'
      end

      it '末尾 \(財\)' do
        expect(Syamei.with_beginning('XXX(財)', 2)).to eq 'XXX'
      end

      it '先頭 \(一財\)' do
        expect(Syamei.with_beginning('(一財)XXX', 2)).to eq '(一財)XXX'
      end

      it '末尾 \(一財\)' do
        expect(Syamei.with_beginning('XXX(一財)', 2)).to eq 'XXX'
      end

      it '先頭 \(公財\)' do
        expect(Syamei.with_beginning('(公財)XXX', 2)).to eq '(公財)XXX'
      end

      it '末尾 \(公財\)' do
        expect(Syamei.with_beginning('XXX(公財)', 2)).to eq 'XXX'
      end

      it '先頭 \(社\)' do
        expect(Syamei.with_beginning('(社)XXX', 2)).to eq '(社)XXX'
      end

      it '末尾 \(社\)' do
        expect(Syamei.with_beginning('XXX(社)', 2)).to eq 'XXX'
      end

      it '先頭 \(一社\)' do
        expect(Syamei.with_beginning('(一社)XXX', 2)).to eq '(一社)XXX'
      end

      it '末尾 \(一社\)' do
        expect(Syamei.with_beginning('XXX(一社)', 2)).to eq 'XXX'
      end

      it '先頭 \(公社\)' do
        expect(Syamei.with_beginning('(公社)XXX', 2)).to eq '(公社)XXX'
      end

      it '末尾 \(公社\)' do
        expect(Syamei.with_beginning('XXX(公社)', 2)).to eq 'XXX'
      end

      it '先頭 \(宗\)' do
        expect(Syamei.with_beginning('(宗)XXX', 2)).to eq '(宗)XXX'
      end

      it '末尾 \(宗\)' do
        expect(Syamei.with_beginning('XXX(宗)', 2)).to eq 'XXX'
      end

      it '先頭 \(学\)' do
        expect(Syamei.with_beginning('(学)XXX', 2)).to eq '(学)XXX'
      end

      it '末尾 \(学\)' do
        expect(Syamei.with_beginning('XXX(学)', 2)).to eq 'XXX'
      end

      it '先頭 \(福\)' do
        expect(Syamei.with_beginning('(福)XXX', 2)).to eq '(福)XXX'
      end

      it '末尾 \(福\)' do
        expect(Syamei.with_beginning('XXX(福)', 2)).to eq 'XXX'
      end

      it '先頭 \(相\)' do
        expect(Syamei.with_beginning('(相)XXX', 2)).to eq '(相)XXX'
      end

      it '末尾 \(相\)' do
        expect(Syamei.with_beginning('XXX(相)', 2)).to eq 'XXX'
      end

      it '先頭 \(特非\)' do
        expect(Syamei.with_beginning('(特非)XXX', 2)).to eq '(特非)XXX'
      end

      it '末尾 \(特非\)' do
        expect(Syamei.with_beginning('XXX(特非)', 2)).to eq 'XXX'
      end

      it '先頭 \(独\)' do
        expect(Syamei.with_beginning('(独)XXX', 2)).to eq '(独)XXX'
      end

      it '末尾 \(独\)' do
        expect(Syamei.with_beginning('XXX(独)', 2)).to eq 'XXX'
      end

      it '先頭 \(地独\)' do
        expect(Syamei.with_beginning('(地独)XXX', 2)).to eq '(地独)XXX'
      end

      it '末尾 \(地独\)' do
        expect(Syamei.with_beginning('XXX(地独)', 2)).to eq 'XXX'
      end

      it '先頭 \(弁\)' do
        expect(Syamei.with_beginning('(弁)XXX', 2)).to eq '(弁)XXX'
      end

      it '末尾 \(弁\)' do
        expect(Syamei.with_beginning('XXX(弁)', 2)).to eq 'XXX'
      end

      it '先頭 \(行\)' do
        expect(Syamei.with_beginning('(行)XXX', 2)).to eq '(行)XXX'
      end

      it '末尾 \(行\)' do
        expect(Syamei.with_beginning('XXX(行)', 2)).to eq 'XXX'
      end

      it '先頭 \(司\)' do
        expect(Syamei.with_beginning('(司)XXX', 2)).to eq '(司)XXX'
      end

      it '末尾 \(司\)' do
        expect(Syamei.with_beginning('XXX(司)', 2)).to eq 'XXX'
      end

      it '先頭 \(税\)' do
        expect(Syamei.with_beginning('(税)XXX', 2)).to eq '(税)XXX'
      end

      it '末尾 \(税\)' do
        expect(Syamei.with_beginning('XXX(税)', 2)).to eq 'XXX'
      end

      it '先頭 \(中\)' do
        expect(Syamei.with_beginning('(中)XXX', 2)).to eq '(中)XXX'
      end

      it '末尾 \(中\)' do
        expect(Syamei.with_beginning('XXX(中)', 2)).to eq 'XXX'
      end

      it '先頭 \(大\)' do
        expect(Syamei.with_beginning('(大)XXX', 2)).to eq '(大)XXX'
      end

      it '末尾 \(大\)' do
        expect(Syamei.with_beginning('XXX(大)', 2)).to eq 'XXX'
      end

      it '先頭 \(営\)' do
        expect(Syamei.with_beginning('(営)XXX', 2)).to eq '(営)XXX'
      end

      it '末尾 \(営\)' do
        expect(Syamei.with_beginning('XXX(営)', 2)).to eq 'XXX'
      end

      it '先頭 \(出\)' do
        expect(Syamei.with_beginning('(出)XXX', 2)).to eq '(出)XXX'
      end

      it '末尾 \(出\)' do
        expect(Syamei.with_beginning('XXX(出)', 2)).to eq 'XXX'
      end
    end
    context 'type: 3' do # TODO: カナを先頭・中間・末尾にわける
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
    context 'name is nil' do
      it { expect(Syamei.notation(nil, 0)).to eq nil }
    end
    context 'name is empty' do
      it { expect(Syamei.notation('', 0)).to eq nil }
    end
    context 'type: 0' do
      context '株式会社XXX' do
        it { expect(Syamei.notation('XXX株式会社', 0)).to eq '株式会社' }
      end
      context '有限会社XXX' do
        it { expect(Syamei.notation('XXX有限会社', 0)).to eq '有限会社' }
      end
      context '合名会社XXX' do
        it { expect(Syamei.notation('XXX合名会社', 0)).to eq '合名会社' }
      end
      context '合資会社XXX' do
        it { expect(Syamei.notation('XXX合資会社', 0)).to eq '合資会社' }
      end
      context '合同会社XXX' do
        it { expect(Syamei.notation('XXX合同会社', 0)).to eq '合同会社' }
      end
      context '医療法人社団XXX' do
        it { expect(Syamei.notation('XXX医療法人社団', 0)).to eq '医療法人社団' }
      end
      context '医療法人財団XXX' do
        it { expect(Syamei.notation('XXX医療法人財団', 0)).to eq '医療法人財団' }
      end
      context '医療法人XXX' do
        it { expect(Syamei.notation('XXX医療法人', 0)).to eq '医療法人' }
      end
      context '社会医療法人XXX' do
        it { expect(Syamei.notation('XXX社会医療法人', 0)).to eq '社会医療法人' }
      end
      context '財団法人XXX' do
        it { expect(Syamei.notation('XXX財団法人', 0)).to eq '財団法人' }
      end
      context '一般財団法人XXX' do
        it { expect(Syamei.notation('XXX一般財団法人', 0)).to eq '一般財団法人' }
      end
      context '公益財団法人XXX' do
        it { expect(Syamei.notation('XXX公益財団法人', 0)).to eq '公益財団法人' }
      end
      context '社団法人XXX' do
        it { expect(Syamei.notation('XXX社団法人', 0)).to eq '社団法人' }
      end
      context '一般社団法人XXX' do
        it { expect(Syamei.notation('XXX一般社団法人', 0)).to eq '一般社団法人' }
      end
      context '公益社団法人XXX' do
        it { expect(Syamei.notation('XXX公益社団法人', 0)).to eq '公益社団法人' }
      end
      context '宗教法人XXX' do
        it { expect(Syamei.notation('XXX宗教法人', 0)).to eq '宗教法人' }
      end
      context '学校法人XXX' do
        it { expect(Syamei.notation('XXX学校法人', 0)).to eq '学校法人' }
      end
      context '社会福祉法人XXX' do
        it { expect(Syamei.notation('XXX社会福祉法人', 0)).to eq '社会福祉法人' }
      end
      context '更生保護法人XXX' do
        it { expect(Syamei.notation('XXX更生保護法人', 0)).to eq '更生保護法人' }
      end
      context '相互会社XXX' do
        it { expect(Syamei.notation('XXX相互会社', 0)).to eq '相互会社' }
      end
      context '特定非営利活動法人XXX' do
        it { expect(Syamei.notation('XXX特定非営利活動法人', 0)).to eq '特定非営利活動法人' }
      end
      context '独立行政法人XXX' do
        it { expect(Syamei.notation('XXX独立行政法人', 0)).to eq '独立行政法人' }
      end
      context '地方独立行政法人XXX' do
        it { expect(Syamei.notation('XXX地方独立行政法人', 0)).to eq '地方独立行政法人' }
      end
      context '弁護士法人XXX' do
        it { expect(Syamei.notation('XXX弁護士法人', 0)).to eq '弁護士法人' }
      end
      context '有限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX有限責任中間法人', 0)).to eq '有限責任中間法人' }
      end
      context '無限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX無限責任中間法人', 0)).to eq '無限責任中間法人' }
      end
      context '行政書士法人XXX' do
        it { expect(Syamei.notation('XXX行政書士法人', 0)).to eq '行政書士法人' }
      end
      context '司法書士法人XXX' do
        it { expect(Syamei.notation('XXX司法書士法人', 0)).to eq '司法書士法人' }
      end
      context '税理士法人XXX' do
        it { expect(Syamei.notation('XXX税理士法人', 0)).to eq '税理士法人' }
      end
      context '国立大学法人XXX' do
        it { expect(Syamei.notation('XXX国立大学法人', 0)).to eq '国立大学法人' }
      end
      context '公立大学法人XXX' do
        it { expect(Syamei.notation('XXX公立大学法人', 0)).to eq '公立大学法人' }
      end
      context '農事組合法人XXX' do
        it { expect(Syamei.notation('XXX農事組合法人', 0)).to eq '農事組合法人' }
      end
      context '管理組合法人XXX' do
        it { expect(Syamei.notation('XXX管理組合法人', 0)).to eq '管理組合法人' }
      end
      context '社会保険労務士法人XXX' do
        it { expect(Syamei.notation('XXX社会保険労務士法人', 0)).to eq '社会保険労務士法人' }
      end
      context '営業所XXX' do
        it { expect(Syamei.notation('XXX営業所', 0)).to eq '営業所' }
      end
      context '出張所XXX' do
        it { expect(Syamei.notation('XXX出張所', 0)).to eq '出張所' }
      end
    end
    context 'type: 1' do
      context '株式会社XXX' do
        it { expect(Syamei.notation('XXX株式会社', 1)).to eq '株式会社' }
      end
      context '有限会社XXX' do
        it { expect(Syamei.notation('XXX有限会社', 1)).to eq '有限会社' }
      end
      context '合名会社XXX' do
        it { expect(Syamei.notation('XXX合名会社', 1)).to eq '合名会社' }
      end
      context '合資会社XXX' do
        it { expect(Syamei.notation('XXX合資会社', 1)).to eq '合資会社' }
      end
      context '合同会社XXX' do
        it { expect(Syamei.notation('XXX合同会社', 1)).to eq '合同会社' }
      end
      context '医療法人社団XXX' do
        it { expect(Syamei.notation('XXX医療法人社団', 1)).to eq '医療法人社団' }
      end
      context '医療法人財団XXX' do
        it { expect(Syamei.notation('XXX医療法人財団', 1)).to eq '医療法人財団' }
      end
      context '医療法人XXX' do
        it { expect(Syamei.notation('XXX医療法人', 1)).to eq '医療法人' }
      end
      context '社会医療法人XXX' do
        it { expect(Syamei.notation('XXX社会医療法人', 1)).to eq '社会医療法人' }
      end
      context '財団法人XXX' do
        it { expect(Syamei.notation('XXX財団法人', 1)).to eq '財団法人' }
      end
      context '一般財団法人XXX' do
        it { expect(Syamei.notation('XXX一般財団法人', 1)).to eq '一般財団法人' }
      end
      context '公益財団法人XXX' do
        it { expect(Syamei.notation('XXX公益財団法人', 1)).to eq '公益財団法人' }
      end
      context '社団法人XXX' do
        it { expect(Syamei.notation('XXX社団法人', 1)).to eq '社団法人' }
      end
      context '一般社団法人XXX' do
        it { expect(Syamei.notation('XXX一般社団法人', 1)).to eq '一般社団法人' }
      end
      context '公益社団法人XXX' do
        it { expect(Syamei.notation('XXX公益社団法人', 1)).to eq '公益社団法人' }
      end
      context '宗教法人XXX' do
        it { expect(Syamei.notation('XXX宗教法人', 1)).to eq '宗教法人' }
      end
      context '学校法人XXX' do
        it { expect(Syamei.notation('XXX学校法人', 1)).to eq '学校法人' }
      end
      context '社会福祉法人XXX' do
        it { expect(Syamei.notation('XXX社会福祉法人', 1)).to eq '社会福祉法人' }
      end
      context '更生保護法人XXX' do
        it { expect(Syamei.notation('XXX更生保護法人', 1)).to eq '更生保護法人' }
      end
      context '相互会社XXX' do
        it { expect(Syamei.notation('XXX相互会社', 1)).to eq '相互会社' }
      end
      context '特定非営利活動法人XXX' do
        it { expect(Syamei.notation('XXX特定非営利活動法人', 1)).to eq '特定非営利活動法人' }
      end
      context '独立行政法人XXX' do
        it { expect(Syamei.notation('XXX独立行政法人', 1)).to eq '独立行政法人' }
      end
      context '地方独立行政法人XXX' do
        it { expect(Syamei.notation('XXX地方独立行政法人', 1)).to eq '地方独立行政法人' }
      end
      context '弁護士法人XXX' do
        it { expect(Syamei.notation('XXX弁護士法人', 1)).to eq '弁護士法人' }
      end
      context '有限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX有限責任中間法人', 1)).to eq '有限責任中間法人' }
      end
      context '無限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX無限責任中間法人', 1)).to eq '無限責任中間法人' }
      end
      context '行政書士法人XXX' do
        it { expect(Syamei.notation('XXX行政書士法人', 1)).to eq '行政書士法人' }
      end
      context '司法書士法人XXX' do
        it { expect(Syamei.notation('XXX司法書士法人', 1)).to eq '司法書士法人' }
      end
      context '税理士法人XXX' do
        it { expect(Syamei.notation('XXX税理士法人', 1)).to eq '税理士法人' }
      end
      context '国立大学法人XXX' do
        it { expect(Syamei.notation('XXX国立大学法人', 1)).to eq '国立大学法人' }
      end
      context '公立大学法人XXX' do
        it { expect(Syamei.notation('XXX公立大学法人', 1)).to eq '公立大学法人' }
      end
      context '農事組合法人XXX' do
        it { expect(Syamei.notation('XXX農事組合法人', 1)).to eq '農事組合法人' }
      end
      context '管理組合法人XXX' do
        it { expect(Syamei.notation('XXX管理組合法人', 1)).to eq '管理組合法人' }
      end
      context '社会保険労務士法人XXX' do
        it { expect(Syamei.notation('XXX社会保険労務士法人', 1)).to eq '社会保険労務士法人' }
      end
      context '営業所XXX' do
        it { expect(Syamei.notation('XXX営業所', 1)).to eq '営業所' }
      end
      context '出張所XXX' do
        it { expect(Syamei.notation('XXX出張所', 1)).to eq '出張所' }
      end
      context '㈱XXX' do
        it { expect(Syamei.notation('XXX㈱', 1)).to eq nil }
      end
      context '\(株\)XXX' do
        it { expect(Syamei.notation('XXX(株)', 1)).to eq nil }
      end
      context '㈲XXX' do
        it { expect(Syamei.notation('XXX㈲', 1)).to eq nil }
      end
      context '\(有\)XXX' do
        it { expect(Syamei.notation('XXX(有)', 1)).to eq nil }
      end
      context '\(名\)XXX' do
        it { expect(Syamei.notation('XXX(名)', 1)).to eq nil }
      end
      context '\(資\)XXX' do
        it { expect(Syamei.notation('XXX(資)', 1)).to eq nil }
      end
      context '\(同\)XXX' do
        it { expect(Syamei.notation('XXX(同)', 1)).to eq nil }
      end
      context '\(医\)XXX' do
        it { expect(Syamei.notation('XXX(医)', 1)).to eq nil }
      end
      context '\(財\)XXX' do
        it { expect(Syamei.notation('XXX(財)', 1)).to eq nil }
      end
      context '\(一財\)XXX' do
        it { expect(Syamei.notation('XXX(一財)', 1)).to eq nil }
      end
      context '\(公財\)XXX' do
        it { expect(Syamei.notation('XXX(公財)', 1)).to eq nil }
      end
      context '\(社\)XXX' do
        it { expect(Syamei.notation('XXX(社)', 1)).to eq nil }
      end
      context '\(一社\)XXX' do
        it { expect(Syamei.notation('XXX(一社)', 1)).to eq nil }
      end
      context '\(公社\)XXX' do
        it { expect(Syamei.notation('XXX(公社)', 1)).to eq nil }
      end
      context '\(宗\)XXX' do
        it { expect(Syamei.notation('XXX(宗)', 1)).to eq nil }
      end
      context '\(学\)XXX' do
        it { expect(Syamei.notation('XXX(学)', 1)).to eq nil }
      end
      context '\(福\)XXX' do
        it { expect(Syamei.notation('XXX(福)', 1)).to eq nil }
      end
      context '\(相\)XXX' do
        it { expect(Syamei.notation('XXX(相)', 1)).to eq nil }
      end
      context '\(特非\)XXX' do
        it { expect(Syamei.notation('XXX(特非)', 1)).to eq nil }
      end
      context '\(独\)XXX' do
        it { expect(Syamei.notation('XXX(独)', 1)).to eq nil }
      end
      context '\(地独\)XXX' do
        it { expect(Syamei.notation('XXX(地独)', 1)).to eq nil }
      end
      context '\(弁\)XXX' do
        it { expect(Syamei.notation('XXX(弁)', 1)).to eq nil }
      end
      context '\(行\)XXX' do
        it { expect(Syamei.notation('XXX(行)', 1)).to eq nil }
      end
      context '\(司\)XXX' do
        it { expect(Syamei.notation('XXX(司)', 1)).to eq nil }
      end
      context '\(税\)XXX' do
        it { expect(Syamei.notation('XXX(税)', 1)).to eq nil }
      end
      context '\(中\)XXX' do
        it { expect(Syamei.notation('XXX(中)', 1)).to eq nil }
      end
      context '\(大\)XXX' do
        it { expect(Syamei.notation('XXX(大)', 1)).to eq nil }
      end
      context '\(営\)XXX' do
        it { expect(Syamei.notation('XXX(営)', 1)).to eq nil }
      end
      context '\(出\)XXX' do
        it { expect(Syamei.notation('XXX(出)', 1)).to eq nil }
      end
      context 'カ\)XXX' do
        it { expect(Syamei.notation('XXXカ)', 1)).to eq nil }
      end
      context '\(カ\)XXX' do
        it { expect(Syamei.notation('XXX(カ)', 1)).to eq nil }
      end
      context '\(カXXX' do
        it { expect(Syamei.notation('XXX(カ', 1)).to eq nil }
      end
      context 'ユ\)XXX' do
        it { expect(Syamei.notation('XXXユ)', 1)).to eq nil }
      end
      context '\(ユ\)XXX' do
        it { expect(Syamei.notation('XXX(ユ)', 1)).to eq nil }
      end
      context '\(ユXXX' do
        it { expect(Syamei.notation('XXX(ユ', 1)).to eq nil }
      end
      context 'メ\)XXX' do
        it { expect(Syamei.notation('XXXメ)', 1)).to eq nil }
      end
      context '\(メ\)XXX' do
        it { expect(Syamei.notation('XXX(メ)', 1)).to eq nil }
      end
      context '\(メXXX' do
        it { expect(Syamei.notation('XXX(メ', 1)).to eq nil }
      end
      context 'シ\)XXX' do
        it { expect(Syamei.notation('XXXシ)', 1)).to eq nil }
      end
      context '\(シ\)XXX' do
        it { expect(Syamei.notation('XXX(シ)', 1)).to eq nil }
      end
      context '\(シXXX' do
        it { expect(Syamei.notation('XXX(シ', 1)).to eq nil }
      end
      context 'ド\)XXX' do
        it { expect(Syamei.notation('XXXド)', 1)).to eq nil }
      end
      context '\(ド\)XXX' do
        it { expect(Syamei.notation('XXX(ド)', 1)).to eq nil }
      end
      context '\(ドXXX' do
        it { expect(Syamei.notation('XXX(ド', 1)).to eq nil }
      end
      context 'シユウ\)XXX' do
        it { expect(Syamei.notation('XXXシユウ)', 1)).to eq nil }
      end
      context 'ガク\)XXX' do
        it { expect(Syamei.notation('XXXガク)', 1)).to eq nil }
      end
      context 'フク\)XXX' do
        it { expect(Syamei.notation('XXXフク)', 1)).to eq nil }
      end
      context 'ホゴ\)XXX' do
        it { expect(Syamei.notation('XXXホゴ)', 1)).to eq nil }
      end
      context '\(ホゴ\)XXX' do
        it { expect(Syamei.notation('XXX(ホゴ)', 1)).to eq nil }
      end
      context '\(ホゴXXX' do
        it { expect(Syamei.notation('XXX(ホゴ', 1)).to eq nil }
      end
      context 'ソ\)XXX' do
        it { expect(Syamei.notation('XXXソ)', 1)).to eq nil }
      end
      context '\(ソ\)XXX' do
        it { expect(Syamei.notation('XXX(ソ)', 1)).to eq nil }
      end
      context '\(ソXXX' do
        it { expect(Syamei.notation('XXX(ソ', 1)).to eq nil }
      end
      context 'トクヒ\)XXX' do
        it { expect(Syamei.notation('XXXトクヒ)', 1)).to eq nil }
      end
      context '\(トクヒ\)XXX' do
        it { expect(Syamei.notation('XXX(トクヒ)', 1)).to eq nil }
      end
      context '\(トクヒXXX' do
        it { expect(Syamei.notation('XXX(トクヒ', 1)).to eq nil }
      end
      context 'ドク\)XXX' do
        it { expect(Syamei.notation('XXXドク)', 1)).to eq nil }
      end
      context '\(ドク\)XXX' do
        it { expect(Syamei.notation('XXX(ドク)', 1)).to eq nil }
      end
      context '\(ドクXXX' do
        it { expect(Syamei.notation('XXX(ドク', 1)).to eq nil }
      end
      context 'チドク\)XXX' do
        it { expect(Syamei.notation('XXXチドク)', 1)).to eq nil }
      end
      context '\(チドク\)XXX' do
        it { expect(Syamei.notation('XXX(チドク)', 1)).to eq nil }
      end
      context '\(チドクXXX' do
        it { expect(Syamei.notation('XXX(チドク', 1)).to eq nil }
      end
      context 'ベン\)XXX' do
        it { expect(Syamei.notation('XXXベン)', 1)).to eq nil }
      end
      context '\(ベン\)XXX' do
        it { expect(Syamei.notation('XXX(ベン)', 1)).to eq nil }
      end
      context '\(ベンXXX' do
        it { expect(Syamei.notation('XXX(ベン', 1)).to eq nil }
      end
      context 'ギヨ\)XXX' do
        it { expect(Syamei.notation('XXXギヨ)', 1)).to eq nil }
      end
      context '\(ギヨ\)XXX' do
        it { expect(Syamei.notation('XXX(ギヨ)', 1)).to eq nil }
      end
      context '\(ギヨXXX' do
        it { expect(Syamei.notation('XXX(ギヨ', 1)).to eq nil }
      end
      context 'シホウ\)XXX' do
        it { expect(Syamei.notation('XXXシホウ)', 1)).to eq nil }
      end
      context '\(シホウ\)XXX' do
        it { expect(Syamei.notation('XXX(シホウ)', 1)).to eq nil }
      end
      context '\(シホウXXX' do
        it { expect(Syamei.notation('XXX(シホウ', 1)).to eq nil }
      end
      context 'ゼイ\)XXX' do
        it { expect(Syamei.notation('XXXゼイ)', 1)).to eq nil }
      end
      context '\(ゼイ\)XXX' do
        it { expect(Syamei.notation('XXX(ゼイ)', 1)).to eq nil }
      end
      context '\(ゼイXXX' do
        it { expect(Syamei.notation('XXX(ゼイ', 1)).to eq nil }
      end
      context 'ノウ\)XXX' do
        it { expect(Syamei.notation('XXXノウ)', 1)).to eq nil }
      end
      context '\(ノウ\)XXX' do
        it { expect(Syamei.notation('XXX(ノウ)', 1)).to eq nil }
      end
      context '\(ノウXXX' do
        it { expect(Syamei.notation('XXX(ノウ', 1)).to eq nil }
      end
      context 'カンリ\)XXX' do
        it { expect(Syamei.notation('XXXカンリ)', 1)).to eq nil }
      end
      context '\(カンリ\)XXX' do
        it { expect(Syamei.notation('XXX(カンリ)', 1)).to eq nil }
      end
      context '\(カンリXXX' do
        it { expect(Syamei.notation('XXX(カンリ', 1)).to eq nil }
      end
      context 'ロウム\)XXX' do
        it { expect(Syamei.notation('XXXロウム)', 1)).to eq nil }
      end
      context '\(ロウム\)XXX' do
        it { expect(Syamei.notation('XXX(ロウム)', 1)).to eq nil }
      end
      context '\(ロウムXXX' do
        it { expect(Syamei.notation('XXX(ロウム', 1)).to eq nil }
      end
      context '\(ダイ\)XXX' do
        it { expect(Syamei.notation('XXX(ダイ)', 1)).to eq nil }
      end
      context '\(ダイXXX' do
        it { expect(Syamei.notation('XXX(ダイ', 1)).to eq nil }
      end
      context 'エイ\)XXX' do
        it { expect(Syamei.notation('XXXエイ)', 1)).to eq nil }
      end
      context '\(エイ\)XXX' do
        it { expect(Syamei.notation('XXX(エイ)', 1)).to eq nil }
      end
      context '\(エイXXX' do
        it { expect(Syamei.notation('XXX(エイ', 1)).to eq nil }
      end
      context 'シユツ\)XXX' do
        it { expect(Syamei.notation('XXXシユツ)', 1)).to eq nil }
      end
      context '\(シユツ\)XXX' do
        it { expect(Syamei.notation('XXX(シユツ)', 1)).to eq nil }
      end
      context '\(シユツXXX' do
        it { expect(Syamei.notation('XXX(シユツ', 1)).to eq nil }
      end
    end
    context 'type: 2' do
      context '株式会社XXX' do
        it { expect(Syamei.notation('XXX株式会社', 2)).to eq nil }
      end
      context '有限会社XXX' do
        it { expect(Syamei.notation('XXX有限会社', 2)).to eq nil }
      end
      context '合名会社XXX' do
        it { expect(Syamei.notation('XXX合名会社', 2)).to eq nil }
      end
      context '合資会社XXX' do
        it { expect(Syamei.notation('XXX合資会社', 2)).to eq nil }
      end
      context '合同会社XXX' do
        it { expect(Syamei.notation('XXX合同会社', 2)).to eq nil }
      end
      context '医療法人社団XXX' do
        it { expect(Syamei.notation('XXX医療法人社団', 2)).to eq nil }
      end
      context '医療法人財団XXX' do
        it { expect(Syamei.notation('XXX医療法人財団', 2)).to eq nil }
      end
      context '医療法人XXX' do
        it { expect(Syamei.notation('XXX医療法人', 2)).to eq nil }
      end
      context '社会医療法人XXX' do
        it { expect(Syamei.notation('XXX社会医療法人', 2)).to eq nil }
      end
      context '財団法人XXX' do
        it { expect(Syamei.notation('XXX財団法人', 2)).to eq nil }
      end
      context '一般財団法人XXX' do
        it { expect(Syamei.notation('XXX一般財団法人', 2)).to eq nil }
      end
      context '公益財団法人XXX' do
        it { expect(Syamei.notation('XXX公益財団法人', 2)).to eq nil }
      end
      context '社団法人XXX' do
        it { expect(Syamei.notation('XXX社団法人', 2)).to eq nil }
      end
      context '一般社団法人XXX' do
        it { expect(Syamei.notation('XXX一般社団法人', 2)).to eq nil }
      end
      context '公益社団法人XXX' do
        it { expect(Syamei.notation('XXX公益社団法人', 2)).to eq nil }
      end
      context '宗教法人XXX' do
        it { expect(Syamei.notation('XXX宗教法人', 2)).to eq nil }
      end
      context '学校法人XXX' do
        it { expect(Syamei.notation('XXX学校法人', 2)).to eq nil }
      end
      context '社会福祉法人XXX' do
        it { expect(Syamei.notation('XXX社会福祉法人', 2)).to eq nil }
      end
      context '更生保護法人XXX' do
        it { expect(Syamei.notation('XXX更生保護法人', 2)).to eq nil }
      end
      context '相互会社XXX' do
        it { expect(Syamei.notation('XXX相互会社', 2)).to eq nil }
      end
      context '特定非営利活動法人XXX' do
        it { expect(Syamei.notation('XXX特定非営利活動法人', 2)).to eq nil }
      end
      context '独立行政法人XXX' do
        it { expect(Syamei.notation('XXX独立行政法人', 2)).to eq nil }
      end
      context '地方独立行政法人XXX' do
        it { expect(Syamei.notation('XXX地方独立行政法人', 2)).to eq nil }
      end
      context '弁護士法人XXX' do
        it { expect(Syamei.notation('XXX弁護士法人', 2)).to eq nil }
      end
      context '有限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX有限責任中間法人', 2)).to eq nil }
      end
      context '無限責任中間法人XXX' do
        it { expect(Syamei.notation('XXX無限責任中間法人', 2)).to eq nil }
      end
      context '行政書士法人XXX' do
        it { expect(Syamei.notation('XXX行政書士法人', 2)).to eq nil }
      end
      context '司法書士法人XXX' do
        it { expect(Syamei.notation('XXX司法書士法人', 2)).to eq nil }
      end
      context '税理士法人XXX' do
        it { expect(Syamei.notation('XXX税理士法人', 2)).to eq nil }
      end
      context '国立大学法人XXX' do
        it { expect(Syamei.notation('XXX国立大学法人', 2)).to eq nil }
      end
      context '公立大学法人XXX' do
        it { expect(Syamei.notation('XXX公立大学法人', 2)).to eq nil }
      end
      context '農事組合法人XXX' do
        it { expect(Syamei.notation('XXX農事組合法人', 2)).to eq nil }
      end
      context '管理組合法人XXX' do
        it { expect(Syamei.notation('XXX管理組合法人', 2)).to eq nil }
      end
      context '社会保険労務士法人XXX' do
        it { expect(Syamei.notation('XXX社会保険労務士法人', 2)).to eq nil }
      end
      context '営業所XXX' do
        it { expect(Syamei.notation('XXX営業所', 2)).to eq nil }
      end
      context '出張所XXX' do
        it { expect(Syamei.notation('XXX出張所', 2)).to eq nil }
      end
      context '㈱XXX' do
        it { expect(Syamei.notation('XXX㈱', 2)).to eq '㈱' }
      end
      context '\(株\)XXX' do
        it { expect(Syamei.notation('XXX(株)', 2)).to eq '(株)' }
      end
      context '㈲XXX' do
        it { expect(Syamei.notation('XXX㈲', 2)).to eq '㈲' }
      end
      context '\(有\)XXX' do
        it { expect(Syamei.notation('XXX(有)', 2)).to eq '(有)' }
      end
      context '\(名\)XXX' do
        it { expect(Syamei.notation('XXX(名)', 2)).to eq '(名)' }
      end
      context '\(資\)XXX' do
        it { expect(Syamei.notation('XXX(資)', 2)).to eq '(資)' }
      end
      context '\(同\)XXX' do
        it { expect(Syamei.notation('XXX(同)', 2)).to eq '(同)' }
      end
      context '\(医\)XXX' do
        it { expect(Syamei.notation('XXX(医)', 2)).to eq '(医)' }
      end
      context '\(財\)XXX' do
        it { expect(Syamei.notation('XXX(財)', 2)).to eq '(財)' }
      end
      context '\(一財\)XXX' do
        it { expect(Syamei.notation('XXX(一財)', 2)).to eq '(一財)' }
      end
      context '\(公財\)XXX' do
        it { expect(Syamei.notation('XXX(公財)', 2)).to eq '(公財)' }
      end
      context '\(社\)XXX' do
        it { expect(Syamei.notation('XXX(社)', 2)).to eq '(社)' }
      end
      context '\(一社\)XXX' do
        it { expect(Syamei.notation('XXX(一社)', 2)).to eq '(一社)' }
      end
      context '\(公社\)XXX' do
        it { expect(Syamei.notation('XXX(公社)', 2)).to eq '(公社)' }
      end
      context '\(宗\)XXX' do
        it { expect(Syamei.notation('XXX(宗)', 2)).to eq '(宗)' }
      end
      context '\(学\)XXX' do
        it { expect(Syamei.notation('XXX(学)', 2)).to eq '(学)' }
      end
      context '\(福\)XXX' do
        it { expect(Syamei.notation('XXX(福)', 2)).to eq '(福)' }
      end
      context '\(相\)XXX' do
        it { expect(Syamei.notation('XXX(相)', 2)).to eq '(相)' }
      end
      context '\(特非\)XXX' do
        it { expect(Syamei.notation('XXX(特非)', 2)).to eq '(特非)' }
      end
      context '\(独\)XXX' do
        it { expect(Syamei.notation('XXX(独)', 2)).to eq '(独)' }
      end
      context '\(地独\)XXX' do
        it { expect(Syamei.notation('XXX(地独)', 2)).to eq '(地独)' }
      end
      context '\(弁\)XXX' do
        it { expect(Syamei.notation('XXX(弁)', 2)).to eq '(弁)' }
      end
      context '\(行\)XXX' do
        it { expect(Syamei.notation('XXX(行)', 2)).to eq '(行)' }
      end
      context '\(司\)XXX' do
        it { expect(Syamei.notation('XXX(司)', 2)).to eq '(司)' }
      end
      context '\(税\)XXX' do
        it { expect(Syamei.notation('XXX(税)', 2)).to eq '(税)' }
      end
      context '\(中\)XXX' do
        it { expect(Syamei.notation('XXX(中)', 2)).to eq '(中)' }
      end
      context '\(大\)XXX' do
        it { expect(Syamei.notation('XXX(大)', 2)).to eq '(大)' }
      end
      context '\(営\)XXX' do
        it { expect(Syamei.notation('XXX(営)', 2)).to eq '(営)' }
      end
      context '\(出\)XXX' do
        it { expect(Syamei.notation('XXX(出)', 2)).to eq '(出)' }
      end
      context 'カ\)XXX' do
        it { expect(Syamei.notation('XXXカ)', 2)).to eq nil }
      end
      context '\(カ\)XXX' do
        it { expect(Syamei.notation('XXX(カ)', 2)).to eq nil }
      end
      context '\(カXXX' do
        it { expect(Syamei.notation('XXX(カ', 2)).to eq nil }
      end
      context 'ユ\)XXX' do
        it { expect(Syamei.notation('XXXユ)', 2)).to eq nil }
      end
      context '\(ユ\)XXX' do
        it { expect(Syamei.notation('XXX(ユ)', 2)).to eq nil }
      end
      context '\(ユXXX' do
        it { expect(Syamei.notation('XXX(ユ', 2)).to eq nil }
      end
      context 'メ\)XXX' do
        it { expect(Syamei.notation('XXXメ)', 2)).to eq nil }
      end
      context '\(メ\)XXX' do
        it { expect(Syamei.notation('XXX(メ)', 2)).to eq nil }
      end
      context '\(メXXX' do
        it { expect(Syamei.notation('XXX(メ', 2)).to eq nil }
      end
      context 'シ\)XXX' do
        it { expect(Syamei.notation('XXXシ)', 2)).to eq nil }
      end
      context '\(シ\)XXX' do
        it { expect(Syamei.notation('XXX(シ)', 2)).to eq nil }
      end
      context '\(シXXX' do
        it { expect(Syamei.notation('XXX(シ', 2)).to eq nil }
      end
      context 'ド\)XXX' do
        it { expect(Syamei.notation('XXXド)', 2)).to eq nil }
      end
      context '\(ド\)XXX' do
        it { expect(Syamei.notation('XXX(ド)', 2)).to eq nil }
      end
      context '\(ドXXX' do
        it { expect(Syamei.notation('XXX(ド', 2)).to eq nil }
      end
      context 'シユウ\)XXX' do
        it { expect(Syamei.notation('XXXシユウ)', 2)).to eq nil }
      end
      context 'ガク\)XXX' do
        it { expect(Syamei.notation('XXXガク)', 2)).to eq nil }
      end
      context 'フク\)XXX' do
        it { expect(Syamei.notation('XXXフク)', 2)).to eq nil }
      end
      context 'ホゴ\)XXX' do
        it { expect(Syamei.notation('XXXホゴ)', 2)).to eq nil }
      end
      context '\(ホゴ\)XXX' do
        it { expect(Syamei.notation('XXX(ホゴ)', 2)).to eq nil }
      end
      context '\(ホゴXXX' do
        it { expect(Syamei.notation('XXX(ホゴ', 2)).to eq nil }
      end
      context 'ソ\)XXX' do
        it { expect(Syamei.notation('XXXソ)', 2)).to eq nil }
      end
      context '\(ソ\)XXX' do
        it { expect(Syamei.notation('XXX(ソ)', 2)).to eq nil }
      end
      context '\(ソXXX' do
        it { expect(Syamei.notation('XXX(ソ', 2)).to eq nil }
      end
      context 'トクヒ\)XXX' do
        it { expect(Syamei.notation('XXXトクヒ)', 2)).to eq nil }
      end
      context '\(トクヒ\)XXX' do
        it { expect(Syamei.notation('XXX(トクヒ)', 2)).to eq nil }
      end
      context '\(トクヒXXX' do
        it { expect(Syamei.notation('XXX(トクヒ', 2)).to eq nil }
      end
      context 'ドク\)XXX' do
        it { expect(Syamei.notation('XXXドク)', 2)).to eq nil }
      end
      context '\(ドク\)XXX' do
        it { expect(Syamei.notation('XXX(ドク)', 2)).to eq nil }
      end
      context '\(ドクXXX' do
        it { expect(Syamei.notation('XXX(ドク', 2)).to eq nil }
      end
      context 'チドク\)XXX' do
        it { expect(Syamei.notation('XXXチドク)', 2)).to eq nil }
      end
      context '\(チドク\)XXX' do
        it { expect(Syamei.notation('XXX(チドク)', 2)).to eq nil }
      end
      context '\(チドクXXX' do
        it { expect(Syamei.notation('XXX(チドク', 2)).to eq nil }
      end
      context 'ベン\)XXX' do
        it { expect(Syamei.notation('XXXベン)', 2)).to eq nil }
      end
      context '\(ベン\)XXX' do
        it { expect(Syamei.notation('XXX(ベン)', 2)).to eq nil }
      end
      context '\(ベンXXX' do
        it { expect(Syamei.notation('XXX(ベン', 2)).to eq nil }
      end
      context 'ギヨ\)XXX' do
        it { expect(Syamei.notation('XXXギヨ)', 2)).to eq nil }
      end
      context '\(ギヨ\)XXX' do
        it { expect(Syamei.notation('XXX(ギヨ)', 2)).to eq nil }
      end
      context '\(ギヨXXX' do
        it { expect(Syamei.notation('XXX(ギヨ', 2)).to eq nil }
      end
      context 'シホウ\)XXX' do
        it { expect(Syamei.notation('XXXシホウ)', 2)).to eq nil }
      end
      context '\(シホウ\)XXX' do
        it { expect(Syamei.notation('XXX(シホウ)', 2)).to eq nil }
      end
      context '\(シホウXXX' do
        it { expect(Syamei.notation('XXX(シホウ', 2)).to eq nil }
      end
      context 'ゼイ\)XXX' do
        it { expect(Syamei.notation('XXXゼイ)', 2)).to eq nil }
      end
      context '\(ゼイ\)XXX' do
        it { expect(Syamei.notation('XXX(ゼイ)', 2)).to eq nil }
      end
      context '\(ゼイXXX' do
        it { expect(Syamei.notation('XXX(ゼイ', 2)).to eq nil }
      end
      context 'ノウ\)XXX' do
        it { expect(Syamei.notation('XXXノウ)', 2)).to eq nil }
      end
      context '\(ノウ\)XXX' do
        it { expect(Syamei.notation('XXX(ノウ)', 2)).to eq nil }
      end
      context '\(ノウXXX' do
        it { expect(Syamei.notation('XXX(ノウ', 2)).to eq nil }
      end
      context 'カンリ\)XXX' do
        it { expect(Syamei.notation('XXXカンリ)', 2)).to eq nil }
      end
      context '\(カンリ\)XXX' do
        it { expect(Syamei.notation('XXX(カンリ)', 2)).to eq nil }
      end
      context '\(カンリXXX' do
        it { expect(Syamei.notation('XXX(カンリ', 2)).to eq nil }
      end
      context 'ロウム\)XXX' do
        it { expect(Syamei.notation('XXXロウム)', 2)).to eq nil }
      end
      context '\(ロウム\)XXX' do
        it { expect(Syamei.notation('XXX(ロウム)', 2)).to eq nil }
      end
      context '\(ロウムXXX' do
        it { expect(Syamei.notation('XXX(ロウム', 2)).to eq nil }
      end
      context '\(ダイ\)XXX' do
        it { expect(Syamei.notation('XXX(ダイ)', 2)).to eq nil }
      end
      context '\(ダイXXX' do
        it { expect(Syamei.notation('XXX(ダイ', 2)).to eq nil }
      end
      context 'エイ\)XXX' do
        it { expect(Syamei.notation('XXXエイ)', 2)).to eq nil }
      end
      context '\(エイ\)XXX' do
        it { expect(Syamei.notation('XXX(エイ)', 2)).to eq nil }
      end
      context '\(エイXXX' do
        it { expect(Syamei.notation('XXX(エイ', 2)).to eq nil }
      end
      context 'シユツ\)XXX' do
        it { expect(Syamei.notation('XXXシユツ)', 2)).to eq nil }
      end
      context '\(シユツ\)XXX' do
        it { expect(Syamei.notation('XXX(シユツ)', 2)).to eq nil }
      end
      context '\(シユツXXX' do
        it { expect(Syamei.notation('XXX(シユツ', 2)).to eq nil }
      end
    end
    context 'type: 3' do # TODO: カナを先頭・中間・末尾にわける
    end
  end
end
