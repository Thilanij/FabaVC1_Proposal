library("ganttrify")
library("MetBrewer")
library("readxl")
#read 
project <- readxl::read_excel("gantt.xlsx")
#make project table
ganttrify(project = project, project_start_date = "2023-09",
font_family = "Roboto Condensed",
line_end_wp = "round", # alternative values: "butt" or "square"
line_end_activity = "round", 
month_breaks = 3,
size_text_relative = 1.2, 
mark_quarters = TRUE,
hide_wp = TRUE,
colour_palette =  MetBrewer::met.brewer("Thomas"))+
ggplot2::labs(title = "Research Activity Timeline",
              subtitle = "September 2023-August 2026",
              caption = "")
