require 'spec_helper'

describe "logins/edit" do
  before(:each) do
    @login = assign(:login, stub_model(Login,
      :username => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit login form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", login_path(@login), "post" do
      assert_select "input#login_username[name=?]", "login[username]"
      assert_select "input#login_email[name=?]", "login[email]"
      assert_select "input#login_password[name=?]", "login[password]"
    end
  end
end
