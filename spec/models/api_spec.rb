require 'rails_helper'

describe 'Api' do

  describe 'Filters' do

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

  describe 'Cases' do

    let(:first_case){ Api::Cases.all[0] }
    let(:first_case_labels){ first_case['labels'] }
    it "assigns labels to a case" do
      puts first_case_labels
    end

  end
  
  describe 'Labels' do

    let(:labels_all){ Api::Labels.all }
    let!(:labels_count_original){ labels_all.length }
    let(:label_new_name){ "_new_test_label_#{labels_count_original}_" }
    let(:label_first){ labels_all[0] }
    let(:label_newest){ Api::Labels.all.find{|x| x['name'] == label_new_name} }

    it 'returns the list of labels' do
      expect(labels_all.length).to be >= 1
      expect(label_first['id']).to be >= 1
    end

    it 'creates a new label' do
      Api::Labels.create(label_new_name)
      expect(Api::Labels.all.length).to eql 1 + labels_count_original
      # this does not work in an "after" statement
      ACCESS_TOKEN.delete "#{API}/labels/#{label_newest['id']}"
    end

  end
  
end 
