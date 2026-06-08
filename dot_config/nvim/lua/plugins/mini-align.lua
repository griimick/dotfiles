return {
	'nvim-mini/mini.align',
	version = '*',
	opts = {
		modifiers = {
			c = function(steps)
				steps.pre_split = { require('mini.align').gen_step.trim() }
				steps.split     = require('mini.align').gen_step.by_pattern('%s*:%s*')
			end,
		},
	},
}
