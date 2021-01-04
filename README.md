# Spirits - Minecraft Data pack

## Introduction

_Spirits_ introduces, you guessed it, spirits, into your Minecraft world. No, I don't mean ghosts, I mean bitter ales, sweet berry mead, and other delicious beverages.

## Development

### Add a new ingredient

1. Add a `mcfunction` file (named after the ingredient you want to add), inside the folder `data/spirits/ingredients/`.
2. The function should:
  - Remove the item entity thrown into the cauldron
  - Add an ingredient tag to `@s`
  - Trigger the `spirits:cauldron/events/ingredient_added` callback function

Edit the item ID and tag accordingly:

```
kill @e[type=item,nbt={Item:{id:"minecraft:yourItemId"}},limit=1,distance=..1]
tag @s add spirits.YourIngredientTag
function spirits:cauldron/events/ingredient_added
```

3. Edit `data/spirits/cauldron/detect_ingredients.mcfunction` to add a call to your ingredient function whenever your ingredient item is detected inside the cauldron.

```
execute if entity @e[type=item,nbt={Item:{id:"minecraft:yourItemId"}},distance=..1] unless entity @s[tag=spirits.YourIngredientTag] run function spirits:ingredients/yourIngredientFunction
```

### Add a recipe

1. Create the necessary ingredients (cf above)
2. Add a `mcfunction` file (named after your recipe), inside the folder `data/spirits/process/`
3. The function is called whenever all ingredients have been added to the cauldron. It should:
  - (Ideally) Log the recipe name for debug purposes
  - Tag the cauldron entity with your recipe
  - Start its custom processing logic. The following example sets the fermentation time, and starts the fermentation.

```
tellraw @a[tag=spirits.Debug] "Identified YourRecipeName ingredients"

tag @s add spirits.Recipe.YourRecipeName
scoreboard players set @s spirits.FermTime 24000
function spirits:cauldron/events/fermentation_started
```

4. Add a `mcfunction` file (named after your end product), inside the folder `data/spirits/products/`
5. The function is called when the end product is collected. Its responsability is to spawn the product. It should:
  - (Ideally) Log the product name for debug purposes
  - Summon the item for the player to pick up
  - Tag the cauldron entity as `spirits.Collected` so the clearing callback is triggered.

```
tellraw @a[tag=spirits.Debug] "Identified fermented cyser"

summon item ~ ~1 ~ {Tags:["spirits.Cyser"],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Cyser","color":"red","italic":true}'},Cyser:1b,CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:600},{Id:5b,Amplifier:1b,Duration:600},{Id:9b,Amplifier:1b,Duration:600,ShowParticles:1b}],CustomPotionColor:13377812}}}

tag @s add spirits.Collected
```

6. Edit the `data/spirits/functions/cauldron/check_ingredients` function, and add a line for your product. The line should call your `process` function created above, if the cauldron entity matches all the ingredient tags required by your recipe:

```
execute if entity @s[tag=spirits.Ingredient1,tag=spirits.Ingredient2] run function spirits:process/your_ingredient_function
```

7. Edit either the `data/spirits/functions/cauldron/collect_with_bottle` or `collect_with_bowl`, depending on how you want your product to be collected (note that, ideally, the collection item should match the item collected by the player), and add a line for your product, to trigger your `product` function if the recipe tag of the cauldron entity matches your recipe tag.

```
execute if entity @s[tag=spirits.Recipe.YourRecipeTag] run function spirits:products/your_product_function
```
