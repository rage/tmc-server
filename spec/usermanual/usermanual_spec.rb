require 'spec_helper'

describe "User manual", type: :request, usermanual: true, integration: true do
  def make_page(name)
    doc = DocGen.new(name, self)
    doc.render_template(File.join(File.dirname(__FILE__), "#{name}.html.erb"))
  end

  it "has a page for instructors" do
    make_page 'instructors'
  end
end

