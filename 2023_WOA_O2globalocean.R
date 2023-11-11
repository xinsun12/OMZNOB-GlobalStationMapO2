### Plot stations from which metagenomes were collected and oxygen concentrations
### Xin Sun, July 2, 2023

# load packages
library(oceanexplorer)
library(ggplot2)
library(cmocean)

# get data from WOA
WOA_O2 <- get_NOAA("oxygen", 1, "annual")

# add station locations
stations <- filter_NOAA(WOA_O2, 1, 
                        list(lon = c(64, -104.4, -110.7, -104.99978, -102.35008, -112.99998, 73.9067, 43.2965, -17.9099, -49.5017, -129.3947, -159.046, -49.8233, -37.1526, -70.65966, -156, -104.5), 
                             lat = c(15.15, 18.7, 17.2, 15.76668, 17.68332, 10.00006, 5.9998, -15.3424, -8.7789, -61.9689, -23.2811, 31.5168, 34.0771, 35.8427, -20.76942, 8, 18.9)))

#Variable averaged over a time span ranging from 1955 to 2017.

# Plot the map with O2 at 200 m and station locations
plot_NOAA(WOA_O2, depth = 200, points = stations) +
  theme(legend.title = element_text(size = 16),
        legend.text = element_text(size = 14),
        axis.text.x = element_text(size = 14, face = "bold"),
        axis.text.y = element_text(size = 14, face = "bold")) 
