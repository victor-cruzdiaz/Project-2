# Change "density1", all __2_s, and edit tiles below:
tabItem(tabName = "Density",
        tabsetPanel( 
          tabPanel("Plots"),# To create a tab panel - see https://shiny.rstudio.com/reference/shiny/latest/tabPanel.html
          tabPanel("Data", 
             dataTableOutput('table__2_'),
             downloadButton('download__2_',"Download the data")),
          tabPanel("Plot Size", 
             numericInput("plotWidth__2_", "Plot Width (Required)", 1000),
             numericInput("plotHeight__2_", "Plot Height (Required)", NA)),
          tabPanel("Plot Title",
             textInput("title__2_", "Title 1", "Region Shipping Costs"),
             numericInput("titleFont__2_", "Title Font", 10)), 
          tabPanel("Plot Legend",
             textInput("legendTitle__2_", "Legend Title", "Regions"),
             numericInput("legendTitleSize__2_", "Legend Title Size", 10),
             numericInput("legendItemSize__2_", "Legend Item Size", 10),
             numericInput("legendKeySize__2_", "Legend Key Size", 5)), 
          tabPanel("Axis Labels",
             textInput("xLabel__2_", "x-Axis Label", "Shipping Costs"),
             textInput("yLabel__2_", "y-Axis Label 1", "Shipping Costs Count"),
             numericInput("textFont__2_", "textFont", 10))),
        plotlyOutput("Density__2_", height=800)
)
