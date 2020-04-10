describe Fastlane::Actions::PetarAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The petar plugin is working!")

      Fastlane::Actions::PetarAction.run(nil)
    end
  end
end
