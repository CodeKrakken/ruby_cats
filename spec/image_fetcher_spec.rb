require 'image_fetcher'

describe ImageFetcher do

  subject = ImageFetcher.new("0a6f645d-f9d6-471e-ae37-8191c3061914")

  it 'has an API key' do
    expect(subject.key).to eq("0a6f645d-f9d6-471e-ae37-8191c3061914")
  end

  it 'responds to fetch' do
    expect(subject).to respond_to(:fetch)
  end

  describe '#fetch' do
    
    it 'returns an array' do
      expect(subject.fetch).to be_an(Array)
    end

    it 'stores the array' do
      expect(subject.info_array).to be_an(Array)
    end

  end

  describe '#convert_info' do

    it 'extracts the hash from the array' do
      expect(subject.convert_info).to be_a(Hash)
    end

    it 'stores the hash' do
      expect(subject.info_hash).to be_a(Hash)
    end      

  end

end
