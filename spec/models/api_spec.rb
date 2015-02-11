require 'rails_helper'

describe Api::Filters do

  let(:filters_all){ Api::Filters.all }
  let(:filter_first){ filters_all[0] }
  let(:filter_AllCases){ filters_all.find{|x| x['name'] == 'All Cases' } }
  let(:filter_AllCases_cases){ Api::Filters.cases(filter_AllCases['id'])}

  it 'returns the list of filters' do
    expect(filters_all.length).to be >= 1
    expect(filter_first['id']).to be >= 1
  end

  it "returns a filter's cases" do
    expect(filter_AllCases_cases.length).to be >= 1
  end

end 
