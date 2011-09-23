require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FlashFilesController do

  # This should return the minimal set of attributes required to create a valid
  # FlashFile. As you add validations to FlashFile, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all flash_files as @flash_files" do
      flash_file = FlashFile.create! valid_attributes
      get :index
      assigns(:flash_files).should eq([flash_file])
    end
  end

  describe "GET show" do
    it "assigns the requested flash_file as @flash_file" do
      flash_file = FlashFile.create! valid_attributes
      get :show, :id => flash_file.id.to_s
      assigns(:flash_file).should eq(flash_file)
    end
  end

  describe "GET new" do
    it "assigns a new flash_file as @flash_file" do
      get :new
      assigns(:flash_file).should be_a_new(FlashFile)
    end
  end

  describe "GET edit" do
    it "assigns the requested flash_file as @flash_file" do
      flash_file = FlashFile.create! valid_attributes
      get :edit, :id => flash_file.id.to_s
      assigns(:flash_file).should eq(flash_file)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FlashFile" do
        expect {
          post :create, :flash_file => valid_attributes
        }.to change(FlashFile, :count).by(1)
      end

      it "assigns a newly created flash_file as @flash_file" do
        post :create, :flash_file => valid_attributes
        assigns(:flash_file).should be_a(FlashFile)
        assigns(:flash_file).should be_persisted
      end

      it "redirects to the created flash_file" do
        post :create, :flash_file => valid_attributes
        response.should redirect_to(FlashFile.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved flash_file as @flash_file" do
        # Trigger the behavior that occurs when invalid params are submitted
        FlashFile.any_instance.stub(:save).and_return(false)
        post :create, :flash_file => {}
        assigns(:flash_file).should be_a_new(FlashFile)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FlashFile.any_instance.stub(:save).and_return(false)
        post :create, :flash_file => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested flash_file" do
        flash_file = FlashFile.create! valid_attributes
        # Assuming there are no other flash_files in the database, this
        # specifies that the FlashFile created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FlashFile.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => flash_file.id, :flash_file => {'these' => 'params'}
      end

      it "assigns the requested flash_file as @flash_file" do
        flash_file = FlashFile.create! valid_attributes
        put :update, :id => flash_file.id, :flash_file => valid_attributes
        assigns(:flash_file).should eq(flash_file)
      end

      it "redirects to the flash_file" do
        flash_file = FlashFile.create! valid_attributes
        put :update, :id => flash_file.id, :flash_file => valid_attributes
        response.should redirect_to(flash_file)
      end
    end

    describe "with invalid params" do
      it "assigns the flash_file as @flash_file" do
        flash_file = FlashFile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FlashFile.any_instance.stub(:save).and_return(false)
        put :update, :id => flash_file.id.to_s, :flash_file => {}
        assigns(:flash_file).should eq(flash_file)
      end

      it "re-renders the 'edit' template" do
        flash_file = FlashFile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FlashFile.any_instance.stub(:save).and_return(false)
        put :update, :id => flash_file.id.to_s, :flash_file => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested flash_file" do
      flash_file = FlashFile.create! valid_attributes
      expect {
        delete :destroy, :id => flash_file.id.to_s
      }.to change(FlashFile, :count).by(-1)
    end

    it "redirects to the flash_files list" do
      flash_file = FlashFile.create! valid_attributes
      delete :destroy, :id => flash_file.id.to_s
      response.should redirect_to(flash_files_url)
    end
  end

end
