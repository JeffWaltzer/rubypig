describe 'RubyPig' do
  it "has a version number" do
    expect(RubyPig::VERSION).not_to be nil
  end

  describe 'Daemon' do
    describe 'initialize' do
      it "can be created with no arguments" do
        expect(File).to receive(:open).with('/dev/pigpio', 'w')
        RubyPig::Daemon.new()
      end
      it 'uses an IO object if initialized with one' do
        expect(File).not_to receive(:open).with('/dev/pigpio', 'w')
        RubyPig::Daemon.new(pipe: StringIO.new)
      end

      it 'sets pipe sync to true'

    end

    describe '#pin' do
      it '' do
        fake_pipe = StringIO.new
        pigpio = RubyPig::Daemon.new(pipe: fake_pipe)
        pigpio.pin[22]=100

        expect(fake_pipe.string).to eq("p 22 100\n")
      end
    end

  end
end