class AddColumnPlanInfo1ToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :plan_info1, :text
  end
end
