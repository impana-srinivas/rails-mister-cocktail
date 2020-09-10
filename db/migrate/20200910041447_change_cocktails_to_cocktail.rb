class ChangeCocktailsToCocktail < ActiveRecord::Migration[6.0]
  def change
    remove_reference :doses, :cocktails, index: true, foreign_key: true
    remove_reference :doses, :ingredients, index: true, foreign_key: true
    add_reference :doses, :cocktail, index: true, foreign_key: true
    add_reference :doses, :ingredient, index: true, foreign_key: true
  end
end
