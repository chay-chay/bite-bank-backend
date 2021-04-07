class RecipesController < ApplicationController

    # GET /recipes
    def index
        recipes = Recipe.all
        render json: recipes
    end

     # GET /recipes/1
     def show
        recipe = Recipe.find(params[:id])
        render json: recipe
    end

    # POST /recipes
    def create
        recipe = Recipe.create(recipe_params)   
        

        if recipe.save
            render json: recipe
          else
            render json: recipe.errors.full_messages, status: :unprocessable_entity
          end
    end

     # PATCH/PUT /recipes/1
    def update
        recipe = Recipe.find(params[:id])
        recipe.update(recipe_params)
        render json: recipe     
    end

    # DELETE /recipes/1
    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        render json: recipe
    end


    private

      def recipe_params
        params.require(:recipe).permit(:name, :category, :area, :image_url, :youtube_url )
      end
      



end
