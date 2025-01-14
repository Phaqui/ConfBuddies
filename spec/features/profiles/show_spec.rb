# frozen_string_literal: true

require 'rails_helper'

describe 'Profile#show' do
  let(:profile) { create(:profile) }
  include_examples 'unauthenticated user does not have access' do
    let(:path) { "/profiles/#{profile.id}".dup }
  end

  context 'logged in user' do
    let(:user) { create :user }
    before(:each) do
      sign_in user
      visit "/profiles/#{profile.id}".dup
    end

    it 'shows the PROFILE' do
      expect(page).to have_content 'ChaelCodes'
    end
  end
end
