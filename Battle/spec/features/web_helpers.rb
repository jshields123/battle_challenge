def sign_in_and_play
  visit('/')
    fill_in :name_1, with: "Tom"
    fill_in :name_2, with: "Dan"
    click_button "Create players"
end