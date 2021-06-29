	
snippet newscript
	`r paste("
	# Description -------------------------------------------------------------
	
	${1:description}
	
	
	# Prepare Workspace -------------------------------------------------------
	
	${2:load_packages}
	
	
	# Read in Data ------------------------------------------------------------
	
	${3:read_data}")`
	
snippet get_gill
	`r paste('library(showtext)
	
	showtext_auto()
	
	if(Sys.info()[["sysname"]] == "Windows") {
		font_add("GillSans", "GIL_____.TTF")
	} else if(Sys.info()[["sysname"]] == "Darwin") {
		font_add("GillSans", "GillSans.ttc")
	}')`
	
snippet get_tufte
	`r paste('theme_tufte <- function(font_size = 30) {
		theme(
			panel.grid = element_blank(),
			panel.background = element_rect(fill = "#FFFFF8", color = "#CCCCCC"),
			plot.background = element_rect(fill = "#FFFFF8"),
			strip.background = element_rect(fill = "#BBBBB0"),
			legend.background = element_rect(fill = "#FFFFF8"), 
			legend.position = "top",
			legend.key = element_blank(),
			text = element_text(family = "GillSans", size = font_size)
		)
	}')`
