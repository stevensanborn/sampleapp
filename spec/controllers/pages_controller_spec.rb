require 'spec_helper'


describe PagesController  do

render_views

  describe "GET 'home'" do

    it "returns http success" do
     visit 'pages/home'
      expect(response).to be_success
     end

    it "It should have the right title" do
        visit 'pages/home'
       expect(page).to have_title('Rails Home Page')
    end

  end

  
  describe "GET 'contact'" do
    it "returns http success" do
      visit 'pages/contact'
      expect(response).to be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
  end


end
