require_relative '../lib/linter'
require_relative '../lib/style_linter'

describe Stylint do
  let(:linter) { Stylint.new('../assets/style.css') }

  describe '#comment check' do
    describe '#there is comment' do
      it 'checks if there are comments in that line' do
        r = linter.send(:comment_check, '/*', 5)
        expect(r).not_to eq(['  comments have been detected on the line number 5 please remove all comments'])
      end
    end
  end

  describe '#space check' do
    describe 'there is two spaces before code ' do
      it 'checks if there are two spaces before main content lines' do
        r = linter.send(:space_check, ' ', 9)
        expect(r).not_to eq(['two empty space need on the line number 9 '])
      end
    end
  end

  describe 'there is px  ' do
    it 'checks if there are px used in code' do
      r = linter.send(:px_check, 'px', 2)
      expect(r).not_to eq(['  Use REM or EM for measurement units instead of px on the line number 2'])
    end
  end

  describe '#start_space_check' do
    describe 'there is no spaces before code ' do
      it 'checks if there are no spaces before a class declaration or end curly bracket ' do
        r = linter.send(:start_space_check, '.', 7)
        expect(r).not_to eq(['remove empty space at start of line number 7 '])
      end
    end
    describe 'there is no spaces before code ' do
      it 'checks if there are no spaces before an end curly bracket ' do
        r = linter.send(:start_space_check, '}', 10)
        expect(r).not_to eq(['remove empty space at start of line number 10 '])
      end
    end
  end

  describe 'there is no space after :  ' do
    it 'checks there are is no space after :' do
      r = linter.send(:colon_space_check, ': ', 2)
      expect(r).not_to eql(['Space must be after the colon on the line number 2 '])
    end
  end

  describe '#bracket check' do
    describe 'there is two spaces before code ' do
      it 'checks if there are two spaces before main content lines' do
        r = linter.send(:bracket_check, '{', 7)
        expect(r).not_to eq(['line number 7 should end with {'])
      end
    end
  end

  describe '#end bracket check' do
    describe 'there is no text after end bracket ' do
      it 'checks if there is no text or space after end bracket lines' do
        r = linter.send(:bracket_check_end, '}', 7)
        expect(r).not_to eq(['line number 7 should end and start with }'])
      end
    end
  end

  describe '#tail_space_check' do
    it 'checks  there are tail spacing  on the same line' do
      r = linter.send(:empty_space_check, ' ', 1)
      expect(r).not_to eql([' Tailing spaces have been detected on the line number 1 '])
    end
  end
end
