require 'syamei/version'
require 'yaml'

module Syamei
  class Error < StandardError; end

  NOTATION = YAML.load_file(File.expand_path(File.join('..', 'data', 'notations.yml'), __FILE__))["notations"]["full"].join('|')
  ABBREVIATION = YAML.load_file(File.expand_path(File.join('..', 'data', 'notations.yml'), __FILE__))["notations"]["abbreviation"].join('|')
  KANA = YAML.load_file(File.expand_path(File.join('..', 'data', 'notations.yml'), __FILE__))["notations"]["kana"].join('|')

  COMPLEX_TYPE = {
    0 => [NOTATION, ABBREVIATION, KANA].join('|'),
    1 => NOTATION,
    2 => ABBREVIATION,
    3 => KANA
  }

  # 前株の存在チェック
  def self.with_beginning?(name, type=0)
    return false if name.nil? || name.empty?
    name.match?(/^(#{COMPLEX_TYPE[type]}).*$/)
  end

  # 後株の存在チェック
  def self.with_end?(name, type=0)
    return false if name.nil? || name.empty?
    name.match?(/.*(#{COMPLEX_TYPE[type]})$/)
  end

  # 前株・後株の存在チェック
  def self.with?(name, type=0)
    return false if name.nil? || name.empty?
    with_beginning?(name, type) || with_end?(name, type)
  end

  # 末尾の法人格を削除
  def self.with_beginning(name, type=0)
    return nil if name.nil? || name.empty?
    name.gsub(/(#{COMPLEX_TYPE[type]})$/, '').strip
  end

  # 先頭の法人格を削除
  def self.with_end(name, type=0)
    return nil if name.nil? || name.empty?
    name.gsub(/^(#{COMPLEX_TYPE[type]})/, '').strip
  end

  # 先頭・末尾の法人格を削除
  def self.only(name, type=0)
    return nil if name.nil? || name.empty?
    name = with_beginning(name, type)
    name = with_end(name, type)
    name
  end

  # 前株と後株の置換
  def self.replace_begin_to_end(name, type=0)
    # notation
    # 前株消す
    # 後株に付与
  end

  # 後株と前株の置換
  def self.replace_end_to_begin(name, type=0)
    # notation
    # 後株消す
    # 前株に付与
  end

  def self.notation(name, type=0)
    name[/(#{COMPLEX_TYPE[type]})/, 1]
  end

  def self.list
    COMPLEX_TYPE[0].gsub('|', '  ').gsub('\\', '')
  end
end
