ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  order_by(:gold_stars) do |order_clause|
    ['COUNT(gold_stars.id)', order_clause.to_sql].join(' ')
  end

  index do
    selectable_column
    id_column
    column :email
    column :gold_stars, sortable: true do |admin_user|
      admin_user.gold_stars.count
    end
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
