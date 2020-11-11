require 'rails_helper'

describe 'The application' do
    it 'is running' do
        get('/students')
        expect(response.status).to eq(200)
        expect(response).to render_template('students/index')
    end

    it 'can add students' do
        get('/students/new')
        expect(response).to render_template(:new)

        post "/students", :params => { :student => {:name => "Paul"} }

        expect(response).to redirect_to(assigns(:student))
        follow_redirect!

        expect(response).to render_template(:show)
        expect(response.body).to include("Student was successfully created.")
        expect(Student.all.length).to eq(1)
    end

    it 'can return all the students' do
        get('/students')
        expect(assigns(:students)).to eq(Student.all)
    end
end