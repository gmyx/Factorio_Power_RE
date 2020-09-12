data:extend({
{
	type = "recipe",
	name = "electric-boiler-mk1",
	enabled = "false",
	ingredients = {
		{"boiler", 5},
		{"electronic-circuit", 5},
		{"iron-plate", 50},
		{"copper-plate", 100}},
	result = "electric-boiler-mk1"
	},

	{
		type = "recipe",
		name = "electric-boiler-mk2",
		enabled = "false",
		ingredients = {
			{"boiler", 5},
			{"electric-boiler-mk1", 2},
			{"electronic-circuit", 50},
			{"iron-plate", 100},
			{"copper-plate", 200}},
		result = "electric-boiler-mk2"
	},
	{
		type = "recipe",
		name = "electric-boiler-mk3",
		enabled = "false",
		ingredients = {
			{"boiler", 5},
			{"electric-boiler-mk2", 2},
			{"advanced-circuit", 100},
			{"iron-plate", 150},
			{"copper-plate", 500},
			{"steel-plate", 350}},
		result = "electric-boiler-mk3"
	},
	{
		type = "recipe",
		name = "electric-boiler-mk4",
		enabled = "false",
		ingredients = {
			{"boiler", 5},
			{"electric-boiler-mk3", 4},
			{"processing-unit", 100},
			{"iron-plate", 350},
			{"copper-plate", 600},
			{"steel-plate", 550}},
		result = "electric-boiler-mk4"
	}
})
