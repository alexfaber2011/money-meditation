class CategoriesRetriever
  @@ynab_api = YNAB::API.new(ENV['YNAB_API_KEY'])

  def self.retrieve
    budget_id = self.retrieve_budget_id
    @@ynab_api.categories.get_categories(budget_id)
  end
  

  def self.retrieve_budget_id
    budget_response = @@ynab_api.budgets.get_budgets
    # TODO - make this a lot less brittle, and handle sad case
    budget_response.data.budgets.first.id
  end

  private_class_method :retrieve_budget_id
end
