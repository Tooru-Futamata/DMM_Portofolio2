require 'rails_helper'

# RSpec.describe "BeforeLogins", type: :system do
#   before do
#     driven_by(:rack_test)
#   end

#   pending "add some scenarios (or delete) #{__FILE__}"
# end
describe 'ログイン前のテスト' do
  describe 'トップ画面のテスト' do
    before do
      visit root_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq root_path
      end
    end

    context 'ログイン前: ヘッダーの表示内容' do
      it 'Sign upのリンクが表示される' do
        expect(page).to have_link "", href: new_user_registration_path
      end
      it 'Log inのリンクが表示される' do
        expect(page).to have_link "", href: new_user_session_path
      end
      # it 'ゲストログインのリンクが表示される' do
      #   expect(page).to have_link "", href: members_guest_sign_in_path
      # end
      it 'Coursesのリンクが表示される' do
        expect(page).to have_link "", href: public_public_golfcourses_path
      end
      it 'Rankingのリンクが表示される' do
        expect(page).to have_link "", href: public_ranking_path
      end
 expect(page).to have_link "", href: public_users_path
    end
  end

  describe '新規登録のテスト' do
    before do
      visit new_user_registration_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq new_user_registration_path
      end
      it '新規登録と表示される' do
        expect(page).to have_content '新規登録'
      end
      it '名前フォームが表示される' do
        expect(page).to have_field '名前'
      end
      it 'ユーザーIDフォームが表示される' do
        expect(page).to have_field 'ユーザーID'
      end
      it 'メールアドレスフォームが表示される' do
        expect(page).to have_field 'Email'
      end
      it 'パスワードフォームが表示される' do
        expect(page).to have_field 'member[password]'
      end
      it 'パスワード確認用フォームが表示される' do
        expect(page).to have_field 'member[password_confirmation]'
      end
      it '新規登録するボタンが表示される' do
        expect(page).to have_button 'Sign up'
      end
    end
  end
end

#     context '新規登録成功のテスト' do
#       before do
#         fill_in 'member[name]', with: Faker::Lorem.characters(number: 5)
#         fill_in 'member[email]', with: Faker::Internet.email
#         fill_in 'member[password]', with: 'password'
#         fill_in 'member[password_confirmation]', with: 'password'
#       end

#       it '新規登録が成功する' do
#         expect { click_button '新規登録する' }.to change(Member.all, :count).by(1)
#       end
#       it '新規登録後のリダイレクト先が、新規登録できた会員の会員詳細画面になっている' do
#         click_button '新規登録する'
#         expect(current_path).to eq('/members/' + Member.last.id.to_s)
#       end
#     end

#     context '新規登録失敗後のテスト' do
#       before do
#         fill_in 'member[name]', with: ""
#         fill_in 'member[email]', with: ""
#         fill_in 'member[password]', with: ""
#         fill_in 'member[password_confirmation]', with: ''
#       end
#     end
#   end
# end

# describe 'ログインのテスト' do
#   let(:member) { create(:member) }

#   before do
#     visit new_member_session_path
#   end

#   context '表示内容の確認' do
#     it 'URLが正しい' do
#       expect(current_path).to eq new_member_session_path
#     end
#     it 'ログインと表示される' do
#       expect(page).to have_content 'ログイン'
#     end
#     it 'お名前フォームが表示される' do
#       expect(page).to have_field 'member[name]'
#     end
#     it 'メールアドレスのフォームが表示される' do
#       expect(page).to have_field 'member[email]'
#     end
#     it 'パスワードフォームが表示される' do
#       expect(page).to have_field 'member[email]'
#     end
#     it 'ログインボタンが表示される' do
#       expect(page).to have_button 'ログイン'
#     end
#   end

#   describe 'ログイン後のテスト' do
#     context 'ログイン成功後のテスト' do
#       before do
#         fill_in 'member[name]', with: member.name
#         fill_in 'member[email]', with: member.email
#         fill_in 'member[password]', with: member.password
#       end

#       it 'ログイン後のリダイレクト先が、ログインできた会員の会員詳細画面になっている' do
#         click_button 'ログイン'
#         expect(current_path).to eq member_path(member)
#       end
#     end

#     context 'ログイン失敗後のテスト' do
#       before do
#         fill_in 'member[name]', with: ""
#         fill_in 'member[email]', with: ""
#         fill_in 'member[password]', with: ""
#       end

#       it 'ログイン失敗後のリダイレクト先が、ログイン画面である' do
#         click_button 'ログイン'
#         expect(current_path).to eq new_member_session_path
#       end
#     end
#   end