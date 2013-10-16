require 'spec_helper'

describe "logins/new" do
  before(:each) do
    assign(:login, stub_model(Login,
      :username => "MyString",
      :email => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new login form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logins_path, "post" do
      assert_select "input#login_username[name=?]", "login[username]"
      assert_select "input#login_email[name=?]", "login[email]"
      assert_select "input#login_password[name=?]", "login[password]"
    end
  end
end
