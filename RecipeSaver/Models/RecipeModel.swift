//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Seungchul Ha on 3/7/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Thai Green Curry Potato and Pea Breakfast Hash",
            image: "https://www.forksoverknives.com/wp-content/uploads/Thai-Green-Curry-Potato-and-Pea-Breakfast-Hash-wordpress.jpg",
            description: "Tired of your standard oatmeal-and-fruit morning routine? This warming and hearty breakfast hash is the perfect dish to incorporate bold flavors into the first meal of your day. The bright flavors of Thai green curry, lemongrass, and ginger are soaked up by a medley of tender veggies and enhanced with the mouth-puckering tang of fresh lime juice. If you like a little spice, add sliced Thai chile to clear out the sinuses and get your brain ready to tackle your to-do list. Enjoy as is or add some brown rice to get an extra serving of healthy whole grains.",
            ingredients: "1 cup chopped onion\n 1 cup chopped red bell pepper\n 4 cloves garlic, minced/n 4 teaspoons chopped fresh ginger\n 4 teaspoons chopped fresh lemongrass\n 3 lb. Yukon gold potatoes, scrubbed and cut into ¾-inch pieces (8 cups)\n 2 cups unsweetened coconut milk beverage\n 2 tablespoons Thai green curry paste\n 3 cups chopped fresh or frozen cauliflower\n 2 cups frozen peas and carrots\n ¼ cup chopped fresh cilantro\n ¼ cup sliced scallions\n 1 thinly sliced fresh Thai chile (optional)\n Lime wedges",
            directions: "In an extra-large skillet cook the first five ingredients (through lemongrass) over medium 3 to 4 minutes, stirring occasionally and adding water, 1 to 2 tablespoons at a time, as needed to prevent sticking. Add potatoes, coconut milk, and curry paste. Bring to boiling; reduce heat. Cover and simmer 10 minutes or until potatoes are almost tender. Stir in cauliflower and peas and carrots; cook 5 minutes or until tender.\n Sprinkle with cilantro, scallions, and Thai chile (if using). Serve with lime wedges.",
            category: "Breakfast",
            datePublished: "2022-02-25",
            url: "https://www.forksoverknives.com/recipes/vegan-breakfast/thai-green-curry-potato-pea-breakfast-hash/"
        ),
        Recipe(
            name: "Chopped Winter Salad with Meyer Lemon Vinaigrette",
            image: "https://www.forksoverknives.com/wp-content/uploads/Chopped-Winter-Salad-with-Meyer-Lemon-Vinaigrette-wordpress.jpg",
            description: "This crunchy and refreshing winter salad is all about balance. The sweetness of juicy clementines and pears counteracts the slight bitterness of the radicchio base. Chopped fennel adds a tangy licorice flavor, while sunflower seeds add a sprinkling of nuttiness to round everything out. The Meyer lemon vinaigrette comes together in a flash and features notes of aromatic ginger that perfectly complement the fresh produce. Serve this colorful salad alongside a hearty sandwich or wrap for a meal that will stick to your stomach and keep you energized during a long day.",
            ingredients: "¼ cup Meyer lemon juice\n 1 tablespoon chopped shallot\n 1 tablespoon pure maple syrup\n ½ teaspoon dry mustard\n ¼ teaspoon garlic powder\n ¼ teaspoon ground ginger\n 2 medium pears and/or red apples, cored and chopped (2½ cups)\n 1 head radicchio, chopped (2¼ cups)\n 3 heads Belgian endive, chopped (1¾ cups)\n 1 medium fennel bulb, chopped (1⅓ cups)\n 2 clementines, peeled and chopped\n 1 cup thinly sliced celery\n Sea salt, to taste\n Freshly ground black pepper, to taste\n 2 tablespoons sunflower kernels, toasted",
            directions: "For Meyer Lemon Vinaigrette, whisk together Meyer lemon juice, shallot, maple syrup, dry mustard, garlic powder, and ginger. Refrigerate until ready to serve.\n In a large bowl combine the next six ingredients (through celery). Drizzle with Meyer Lemon Vinaigrette. Season with salt and pepper. Sprinkle with sunflower kernels.",
            category: "Salad",
            datePublished: "2022-02-28",
            url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/chopped-winter-salad-meyer-lemon-vinaigrette/"
        ),
        Recipe(
            name: "Fall Fruit Trifle with Pumpkin Gingerbread",
            image: "https://www.forksoverknives.com/wp-content/uploads/Fall-Fruit-Trifle-with-Pumpkin-Gingerbread-wordpress.jpg",
            description: "This is the ultimate showpiece dessert for your holiday table. Decadent layers of spicy homemade gingerbread, sweet roasted fruit, and silky vanilla cream bring together all the best warming flavors for the chilly winter months. Assemble it in a glass dish to see each beautiful layer before serving—it’s as much a feast for your eyes as it is for your belly!",
            ingredients: "4 Medjool dates, pitted/n 1 15-oz. can pumpkin/n ¾ cup unsweetened, unflavored plant-based milk/n ¼ cup blackstrap molasses/n 2 tablespoons flaxseed meal/n 2 cups white whole wheat flour/n 2 teaspoons pumpkin pie spice/n 2 teaspoons regular or sodium-free baking powder/n 1¼ teaspoons sea salt/n 3 pears or quince, cored and sliced/n 3 apples or persimmons, cored and sliced/n 3 oranges, peeled and sliced/n 6 fresh or dried figs, quartered/n ¼ cup apple cider/n ¼ cup pure maple syrup/n 1 teaspoon grated fresh ginger/n ½ teaspoon ground cinnamon/n 2 star anise/n ½ cup pomegranate seeds/n ½ cup aquafaba (liquid from canned no-salt-added chickpeas)/n 2 tablespoons pure cane sugar/n 2 teaspoons pure vanilla extract/n ⅓ cup vanilla-flavored vegan yogurt/n ¼ cup chopped toasted pecans",
            directions: "For gingerbread, preheat oven to 350°F. Line an 8-inch square baking pan with parchment paper or use a silicone baking pan. Place dates in a small bowl. Add boiling water to cover; let stand 10 minutes. Drain well./n In a food processor or blender combine soaked dates and the next four ingredients (through flaxseed meal). Process until smooth. Let rest 5 minutes./n In a large bowl combine the white whole wheat flour, pumpkin pie spice, baking powder, and 1 teaspoon sea salt. Add pumpkin mixture to flour mixture and stir just until moistened. Pour into the prepared pan, spreading evenly./n Bake 30 to 40 minutes or until a toothpick inserted in center comes out clean. Cool completely in pan on a wire rack. Cut gingerbread into 1-inch cubes. Transfer to an airtight container; let stand overnight./n For Roasted Fall Fruit, preheat oven to 400°F. Line two 15x10-inch baking pans with parchment paper or silicone baking mats. In a large bowl combine pears or quince, apples or persimmons, oranges, and figs. In a small bowl stir together apple cider, pure maple syrup, grated fresh ginger, ground cinnamon, star anise, and ¼ teaspoon sea salt. Add to fruit; toss to coat. Divide fruit between prepared pans. Roast 30 minutes or until fruit is just tender and lightly browned at edges. Let cool; remove star anise. Fruit can be made 24 hours ahead and refrigerated until ready to eat./n For Vanilla Yogurt Cream, combine aquafaba, pure cane sugar, and pure vanilla extract in a large bowl. Beat with a mixer on medium to high until foamy. Beat on high until stiff peaks form (tips stand straight). Gently fold in vanilla-flavor vegan yogurt. Chill up to 3 hours or until ready to use. Yogurt cream can hold up to 6 hours, but you will need to beat again to form soft peaks (tips curl) before serving./n To assemble trifle, place one-third of the Roasted Fall Fruit and pomegranate seeds in a large trifle dish or glass bowl. Top with half of the gingerbread cubes and half of the Vanilla Yogurt Cream. Repeat layers; end with the remaining fruit and pomegranate seeds. Sprinkle with pecans. Serve within 30 minutes of assembly.",
            category: "Dessert",
            datePublished: "2021-10-13",
            url: "https://www.forksoverknives.com/recipes/vegan-desserts/fall-fruit-trifle-pumpkin-gingerbread/"
        ),
        Recipe(
            name: "Pumpkin Ice Cream",
            image: "https://www.forksoverknives.com/wp-content/uploads/Pumpkin-Ice-Cream-wordpress.jpg",
            description: "Enjoy your favorite fall flavors with this simple and refreshing pumpkin ice cream that’s totally vegan. Even though tofu might not be the first thing that comes to mind when you think of ice cream, it makes this recipe lusciously creamy and perfectly scoopable. Top a bowl of this frozen dessert with some Aquafaba Whipped Cream, crushed walnuts, and an extra drizzle of maple syrup.",
            ingredients: "¼ cup pure maple syrup/n 2 tablespoons finely chopped pitted whole dates/n 1 15-oz. can pumpkin/n 1 14-oz. package firm, light silken-style tofu/n 1 teaspoon pure vanilla extract/n ½ teaspoon ground cinnamon",
            directions: "In a small saucepan bring maple syrup and dates just to boiling. Remove from heat. Cover and let stand for 20 minutes.\n In a blender or food processor combine date mixture and the remaining ingredients. Cover and blend or process until smooth. Transfer to a bowl; cover and refrigerate 4 to 24 hours.\n Freeze chilled mixture in a 1½- or 2-quart ice cream maker according to the manufacturer’s directions. Serve immediately for a soft-serve ice cream or freeze at least 2 hours for a scoopable ice cream.",
            category: "Dessert",
            datePublished: "2021-10-06",
            url: "https://www.forksoverknives.com/recipes/vegan-desserts/pumpkin-ice-cream/"
        ),
        Recipe(
            name: "Rip’s Pasta Primavera",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/22744/Pasta-Primavera-300kb1-360x270-c.jpg",
            description: "This pasta dish has no bouillon, or any other meat, in it. It’s colorful, hearty, tasty, and a great way to get greens into your evening meal. It also makes for wonderful leftovers. At the firehouse we usually make a tub full and polish it off before going home the next day at noon.",
            ingredients: "1 red onion, chopped\n 1 clove garlic, minced\n 1 can corn, rinsed and drained\n 1 jalapeno pepper, minced (remove seeds to reduce heat)\n 1 green or red bell pepper, seeded and chopped\n 1 bunch fresh kale, rinsed and chopped\n 1 can diced tomatoes\n 1 large jar pasta sauce\n 16 ounces whole-grain spaghetti, cooked\n ½ cup raw cashews, finely ground",
            directions: "Sauté the onion, garlic, and corn in a large skillet on medium heat for 5 minutes. Add the jalapeno, bell pepper, and kale to the skillet and cook for 3 minutes. Add the diced tomatoes and pasta sauce to the vegetables. Ladle the sauce over the pasta and top with the cashews.",
            category: "Main",
            datePublished: "2014-08-07",
            url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/pasta-primavera-by-rip/"
        ),
    ]
}
