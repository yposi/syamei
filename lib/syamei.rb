require 'syamei/version'
require 'yaml'

module Syamei
  class Error < StandardError; end

  DATA = YAML.load_file(File.expand_path(File.join('..', 'data', 'notations.yml'), __FILE__))['notations']
  NOTATION = DATA.map { |n| n[0] }.compact.reject(&:empty?).flatten.uniq
  SPECIAL = DATA.map { |n| n[1] }.compact.reject(&:empty?).flatten.uniq
  ABBREVIATION = DATA.map { |n| n[2] }.compact.reject(&:empty?).flatten.uniq
  KANA_HEAD = DATA.map { |n| n[3] }.compact.reject(&:empty?).flatten.uniq
  KANA_MIDDLE = DATA.map { |n| n[4] }.compact.reject(&:empty?).flatten.uniq
  KANA_TAIL = DATA.map { |n| n[5] }.compact.reject(&:empty?).flatten.uniq

  COMPLEX_TYPE = {
    0 => {
      all: [NOTATION, SPECIAL, ABBREVIATION, KANA_HEAD, KANA_TAIL].join('|'),
      head: [NOTATION, SPECIAL, ABBREVIATION, KANA_HEAD].join('|'),
      tail: [NOTATION, SPECIAL, ABBREVIATION, KANA_TAIL].join('|')
    },
    1 => NOTATION.join('|'),
    2 => SPECIAL.join('|'),
    3 => ABBREVIATION.join('|'),
    4 => {
      all: [KANA_HEAD, KANA_TAIL].join('|'),
      head: KANA_HEAD.join('|'),
      tail: KANA_TAIL.join('|')
    }
  }.freeze

  # 前株の存在チェック
  def self.with_beginning?(name, type = 0)
    return false if name.nil? || name.empty?

    return name.match?(/^(#{COMPLEX_TYPE[type][:head]}).*$/) if type.zero? || type == 4

    name.match?(/^(#{COMPLEX_TYPE[type]}).*$/)
  end

  # 後株の存在チェック
  def self.with_end?(name, type = 0)
    return false if name.nil? || name.empty?

    return name.match?(/.*(#{COMPLEX_TYPE[type][:tail]})$/) if type.zero? || type == 4

    name.match?(/.*(#{COMPLEX_TYPE[type]})$/)
  end

  # 前株・後株の存在チェック
  def self.with?(name, type = 0)
    return false if name.nil? || name.empty?

    with_beginning?(name, type) || with_end?(name, type)
  end

  # 末尾の法人格を削除
  def self.with_beginning(name, type = 0)
    return nil if name.nil? || name.empty?

    return name.gsub(/(#{COMPLEX_TYPE[type][:tail]})$/, '').strip if type.zero? || type == 4

    name.gsub(/(#{COMPLEX_TYPE[type]})$/, '').strip
  end

  # 先頭の法人格を削除
  def self.with_end(name, type = 0)
    return nil if name.nil? || name.empty?

    return name.gsub(/^(#{COMPLEX_TYPE[type][:head]})/, '').strip if type.zero? || type == 4

    name.gsub(/^(#{COMPLEX_TYPE[type]})/, '').strip
  end

  # 先頭・末尾の法人格を削除
  def self.only(name, type = 0)
    return nil if name.nil? || name.empty?

    name = with_beginning(name, type)
    with_end(name, type)
  end

  def self.notation(name, type = 0)
    return nil if name.nil? || name.empty?

    return name[/(#{COMPLEX_TYPE[type][:all]})/, 1] if type.zero? || type == 4

    name[/(#{COMPLEX_TYPE[type]})/, 1]
  end

  def self.list
    COMPLEX_TYPE[0][:all].gsub('|', '  ').gsub('\\', '')
  end
end
