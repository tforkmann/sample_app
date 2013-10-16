require 'spec_helper'

describe "logins/show" do
  before(:each) do
    @login = assign(:login, stub_model(Login,
      :username => "Username",
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Email/)
    rendered.should match(/Password/)
  end
end
