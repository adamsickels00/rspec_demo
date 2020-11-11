require_relative '../professor'
describe('A professor') do
    p = Professor.new("Sivilotti",'CSE',9.9)
    it 'can teach' do
        expect(p.teach).to eq('Here is some knowledge')
    end
    it 'has a subject'do
        expect(p.subject).not_to be(nil)
    end
    it 'teaches CSE' do
        expect(p.subject).to eq("CSE")
    end
    it 'has perfect rating' do
        p.rating = 1000000
        expect(p.rating).to be > 10
    end
end