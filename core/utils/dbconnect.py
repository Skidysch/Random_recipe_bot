import asyncpg
import random


class Request:
    def __init__(self, connector: asyncpg.pool.Pool):
        self.connector = connector

    async def add_recipe(self, name, picture, description, link):

        query = f"INSERT INTO recipes (recipe_name, recipe_picture, recipe_description, recipe_link) " \
                f"VALUES ('{name}', '{picture}', '{description}', '{link}')"

        await self.connector.execute(query)

    async def get_random_recipe(self):
        # Obtain total amount or rows in db, then we choose a random row
        db_rows = await self.connector.fetchval('SELECT COUNT(recipe_id) FROM recipes')
        random_row_id = random.randint(1, db_rows)

        # Get SELECT query with a given random row
        data_query = f"SELECT recipe_name, recipe_picture, recipe_description, recipe_link FROM recipes WHERE recipe_id = {random_row_id}"
        result = await self.connector.fetchrow(data_query)

        # Extracting data
        recipe_name = result.get('recipe_name')
        recipe_picture = result.get('recipe_picture')
        recipe_description = result.get('recipe_description')
        recipe_link = result.get('recipe_link')

        recipe = {'recipe_name': recipe_name,
                  'recipe_picture': recipe_picture,
                  'recipe_description': recipe_description,
                  'recipe_link': recipe_link
                  }
        return recipe
