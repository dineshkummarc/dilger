require File.dirname(__FILE__) + '/../../spec_helper'

describe Admin::SettingsController do
  scenario :users
  
  before(:each) do
    @parts = mock_model(Radiant::Config)
    @parts.stub!(:key).and_return('defaults.page.parts')
    @parts.stub!(:value).and_return('body, extended')
    
    @title = mock_model(Radiant::Config)
    @title.stub!(:key).and_return('admin.title')
    @title.stub!(:value).and_return('Radiant CMS')
    
    login_as :existing
  end
  
  describe 'GET /admin/settings' do
    before do
      @tree = {
        'admin' => {
          'title' => @title
        },
        'defaults' => {
          'page' => {
            'parts' => @parts
          }
        }
      }
    end
    
    it "should fetch all settings" do
      Radiant::Config.should_receive(:find_all_as_tree).and_return(@tree)
      get 'index'
      assigns[:settings].should_not be_nil
      response.should be_success
    end
  end
  
  describe "GET /admin/settings/:id/edit" do
    it "should fetch the desired setting" do
      Radiant::Config.should_receive(:find).with('123').and_return(@parts)
      get 'edit', :id => '123'
      assigns[:setting].should == @parts
      response.should be_success
    end
  end
  
  describe "PUT /admin/settings/:id" do
    it "should update an existing setting" do
      Radiant::Config.should_receive(:find).with('123').and_return(@parts)
      @parts.should_receive(:update_attribute).with(:value, 'body, sidebar')
      
      put 'update', :id => '123', :setting => { :value => 'body, sidebar' }
      response.should redirect_to(admin_settings_path)
    end
  end
  
end
