require 'rails_helper'

describe 'nav' do
  it 'should link to appropriate page' do

    visit root_path
    click_link "books"
    expect(current_path).to eq(books_path)

    click_link "home"
    expect(current_path).to eq(root_path)

    visit books_path
    click_link "Add New Book"
    expect(current_path).to eq(new_book_path)

    # click_link "Create Review"
    # expect(current_path).to eq(new_user_path)
  end
end
