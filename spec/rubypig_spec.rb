RSpec.describe 'RubyPig' do
  it "has a version number" do
    expect(RubyPig::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(RubyPig::Daemon.new).not_to be_nil
  end

end
