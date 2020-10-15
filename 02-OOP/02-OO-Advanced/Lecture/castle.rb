require_relative 'building'

class Castle < Building
  attr_accessor :butler

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 300
  end

  def self.categories
    ['Medieval', 'Norman', 'Ancient']
  end
end

