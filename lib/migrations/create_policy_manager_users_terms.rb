class CreatePolicyManagerUsersTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :policy_manager_users_terms do |t|
      t.integer :term_id, index: true
      t.references :owner, polymorphic: true, index: {name: 'index_p_m_terms_users_on_owner_type_and_owner_id'}
      t.datetime :signed_at
      t.timestamps
    end
  end
end
