require 'spec_helper'

describe "Static pages ->" do
  subject {page}
	describe "Home page ->" do
	  before { visit root_path }
#		it "should have the h1 ''Welcome to the Sample App'!!!" do
#			visit root_path
		it {should have_selector('h1', text: "Welcome to the Sample App")}
#		end
#		it "should have the base title" do
#			visit root_path
		it	{should have_title(full_title(''))}
#		end
#		it "should not have the custom page title '| Home'" do
#     	visit root_path
    	it {should_not have_title("| Home")}
#   	end
	end
	describe "Help page ->" do
		before { visit help_path }
#   it "should have the h1 'Help'!!!" do
#			visit help_path
		it {should have_selector('h1', text: "Help")}
#		end
#		it "should have the title 'Help'" do
#			visit help_path
		it {should have_title(full_title('Help'))}
#		end
	end
	describe "About page ->" do
    before { visit about_path }
#		it "should have the h1 'About Us'!!!" do
#			visit about_path
		it {should have_selector('h1', text: "About Us")}
#		end
#		it "should have the title 'About Us'" do
#			visit about_path
		it {should have_title(full_title('About Us'))}
#		end
	end
	describe "Contact ->" do
    before { visit contact_path }
#		it "should have the h1 'Contact'!!!" do
#			visit contact_path
		it {should have_selector('h1', text: "Contact")}
#		end
#		it "should have the title 'Contact'" do
#			visit contact_path
		it {should have_title(full_title('Contact'))}
#		end
	end
end