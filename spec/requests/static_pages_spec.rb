require 'spec_helper'

describe "StaticPages" do
	let(:base_title) {"Inventory System |"}
	describe "Home page" do
		before { visit '/static_pages/home'}
		it "should have the h1 'Inventory System'" do
			page.should have_selector('h1', :text => 'Inventory System')
		end
		it "should have the right title" do
			page.should have_selector('title', :text => "#{base_title} Home")
		end
	end
	describe "Help Page" do
		before { visit '/static_pages/help'}
		it "should have the h1 'Help'" do
			page.should have_selector('h1',:text => 'Help')
		end
		it "should have the right title" do
			page.should have_selector('title', :text => "#{base_title} Help")
		end
	end
	describe "About Page" do
		before { visit '/static_pages/about'}
		it "should have the h1 'About'" do
			page.should have_selector('h1',:text => 'About')
		end
		it "should have the right title" do
			page.should have_selector('title', :text => "#{base_title} About")
		end
	end
end
