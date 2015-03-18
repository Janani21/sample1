require 'spec_helper'

describe PagesController, :type => :controller do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        text: "Ruby on Rails Tutorial Sample App | Home", visible: false)
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                        text: "Ruby on Rails Tutorial Sample App | Contact", visible: false)
    end
  end

  describe "Get 'about'" do
    it "should be successful" do
      get 'about'
        response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                        text: "Ruby on Rails Tutorial Sample App | About", visible: false)
    end
  end
end
