RSpec.describe 'RubyPig' do
  it "has a version number" do
    expect(RubyPig::VERSION).not_to be nil
  end

  it "does something useful" do
    io_stream= StringIO.new
    expect(RubyPig::Daemon.new(io_stream)).not_to be_nil
  end
end
