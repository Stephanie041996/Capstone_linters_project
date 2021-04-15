require_relative "../lib/linter.rb"
require_relative '../lib/style_linter'

# describe 'comment check' do
#     style = Stylint.new('../bin/style.css')
# it 'returns an error  if code has error' do
#     expect(style.check).to eq ['All checks succefully passed the linter check! No errors detected. ']
# end
# end

# require_relative '../lib/linter'
# require_relative '../lib/stylinters'
describe Stylint do
  let(:linter) { Stylint.new('../spec/style.css') }
  
  describe '#comment check' do
  describe '#there is no comment ' do
    it 'checks if there are no comments in that line' do
      r = linter.send(:comment_check, '/*', 2)
      expect(r).not_to eq(["comments have been detected on the line number 5 please remove all comments"])
    end 
end
describe '#there is comment' do
    it 'checks if there are comments in that line' do
      r = linter.send(:comment_check, '/*', 5)
      expect(r).to eq(["comments have been detected on the line number 5 please remove all comments"])
    end 
end
end
  
  
end