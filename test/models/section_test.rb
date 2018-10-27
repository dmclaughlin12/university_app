require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  def test_name_with_number
    sectionA = Section.new :name => "SomeName", :number => 12
    assert_equal sectionA.name_with_number, "SomeName 12"
  end
  
  def test_search
    oneSection = Section.new :name => "SomeName", :number => 12

    assert_equal  Section.where("name LIKE ?", "%#{oneSection}%"), oneSection
  end
end
