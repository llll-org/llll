module.exports = function(eleventyConfig) {
	// eleventyConfig.setTemplateFormats(["md", "html"]);
	eleventyConfig.addPassthroughCopy({
		"public": "."
	});
	return {
		dir: {
			input: 'content',
			output: 'dist'
		}
	}	
};