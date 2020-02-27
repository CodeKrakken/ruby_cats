require 'image'

describe Image do

  subject = Image.new("0a6f645d-f9d6-471e-ae37-8191c3061914")

  it 'has an API key' do
    expect(subject.key).to eq("0a6f645d-f9d6-471e-ae37-8191c3061914")
  end

  it 'responds to fetch' do
    expect(subject).to respond_to(:fetch)
  end

end