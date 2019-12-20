library(dplyr)

#12-17-2019
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

argentina <- read.csv('../data/spotify-ranking-12-17-2019/regional-ar-daily-latest.csv')
argentina <- mutate(argentina, country="Argentina")

austria <- read.csv('../data/spotify-ranking-12-17-2019/regional-at-daily-latest.csv')
austria <- mutate(austria, country="Austria")

australia <- read.csv('../data/spotify-ranking-12-17-2019/regional-au-daily-latest.csv')
australia <- mutate(australia, country="Australia")

Belgium <- read.csv('../data/spotify-ranking-12-17-2019/regional-be-daily-latest.csv')
Belgium <- mutate(Belgium, country="Belgium")

bulgaria <- read.csv('../data/spotify-ranking-12-17-2019/regional-bg-daily-latest.csv')
bulgaria <- mutate(bulgaria, country="Bulgaria")

bolivia <- read.csv('../data/spotify-ranking-12-17-2019/regional-bo-daily-latest.csv')
bolivia <- mutate(bolivia, country="Bolivia")

brazil <- read.csv('../data/spotify-ranking-12-17-2019/regional-br-daily-latest.csv')
brazil <- mutate(brazil, country="Brazil")

canada <- read.csv('../data/spotify-ranking-12-17-2019/regional-ca-daily-latest.csv')
canada <- mutate(canada, country="Canada")

switzerland <- read.csv('../data/spotify-ranking-12-17-2019/regional-ch-daily-latest.csv')
switzerland <- mutate(switzerland, country="Switzerland")

chile <- read.csv('../data/spotify-ranking-12-17-2019/regional-cl-daily-latest.csv')
chile <- mutate(chile, country="Chile")

colombia <- read.csv('../data/spotify-ranking-12-17-2019/regional-co-daily-latest.csv')
colombia <- mutate(colombia, country="Colombia")

Costa_Rica<- read.csv('../data/spotify-ranking-12-17-2019/regional-cr-daily-latest.csv')
Costa_Rica <- mutate(Costa_Rica, country="Costa Rica")

Czech_Republic <- read.csv('../data/spotify-ranking-12-17-2019/regional-cz-daily-latest.csv')
Czech_Republic <- mutate(Czech_Republic, country="Czech Republic")

germany <- read.csv('../data/spotify-ranking-12-17-2019/regional-de-daily-latest.csv')
germany <- mutate(germany, country="Germany")

denmark <- read.csv('../data/spotify-ranking-12-17-2019/regional-dk-daily-latest.csv')
denmark <- mutate(denmark, country="Denmark")

dominican_republic <- read.csv('../data/spotify-ranking-12-17-2019/regional-do-daily-latest.csv')
dominican_republic <- mutate(dominican_republic, country="Dominican Republic")

ecuador <- read.csv('../data/spotify-ranking-12-17-2019/regional-ec-daily-latest.csv')
ecuador <- mutate(ecuador, country="Ecuador")

estonia <- read.csv('../data/spotify-ranking-12-17-2019/regional-ee-daily-latest.csv')
estonia <- mutate(estonia, country="Estonia")

spain<- read.csv('../data/spotify-ranking-12-17-2019/regional-es-daily-latest.csv')
spain <- mutate(spain, country="Spain")

finland <- read.csv('../data/spotify-ranking-12-17-2019/regional-fi-daily-latest.csv')
finland <- mutate(finland, country="Finland")

france <- read.csv('../data/spotify-ranking-12-17-2019/regional-fr-daily-latest.csv')
france <- mutate(france, country="France")

UK <- read.csv('../data/spotify-ranking-12-17-2019/regional-gb-daily-latest.csv')
UK <- mutate(UK, country="UK")

greece <- read.csv('../data/spotify-ranking-12-17-2019/regional-gr-daily-latest.csv')
greece <- mutate(greece, country="Greece")

guatemala <- read.csv('../data/spotify-ranking-12-17-2019/regional-gt-daily-latest.csv')
guatemala <- mutate(guatemala, country="Guatemala")

honduras <- read.csv('../data/spotify-ranking-12-17-2019/regional-hn-daily-latest.csv')
honduras <- mutate(honduras, country="Honduras")

hungary <- read.csv('../data/spotify-ranking-12-17-2019/regional-hu-daily-latest.csv')
hungary <- mutate(hungary, country="Hungary")

indonesia <- read.csv('../data/spotify-ranking-12-17-2019/regional-id-daily-latest.csv')
indonesia <- mutate(indonesia, country="Indonesia")

ireland<- read.csv('../data/spotify-ranking-12-17-2019/regional-ie-daily-latest.csv')
ireland <- mutate(ireland, country="Ireland")

israel <- read.csv('../data/spotify-ranking-12-17-2019/regional-il-daily-latest.csv')
israel <- mutate(israel, country="Israel")

india <- read.csv('../data/spotify-ranking-12-17-2019/regional-in-daily-latest.csv')
india <- mutate(india, country="India")

iceland <- read.csv('../data/spotify-ranking-12-17-2019/regional-is-daily-latest.csv')
iceland <- mutate(iceland, country="Iceland")

italy <- read.csv('../data/spotify-ranking-12-17-2019/regional-it-daily-latest.csv')
italy <- mutate(italy, country="Italy")

japan <- read.csv('../data/spotify-ranking-12-17-2019/regional-jp-daily-latest.csv')
japan <- mutate(japan, country="Japan")

lithuania <- read.csv('../data/spotify-ranking-12-17-2019/regional-lt-daily-latest.csv')
lithuania <- mutate(lithuania, country="Lithuania")

luxembourg <- read.csv('../data/spotify-ranking-12-17-2019/regional-lu-daily-latest.csv')
luxembourg <- mutate(luxembourg, country="Luxembourg")

latvia <- read.csv('../data/spotify-ranking-12-17-2019/regional-lv-daily-latest.csv')
latvia <- mutate(latvia, country="Latvia")

malta <- read.csv('../data/spotify-ranking-12-17-2019/regional-mt-daily-latest.csv')
malta <- mutate(malta, country="Malta")

mexico <- read.csv('../data/spotify-ranking-12-17-2019/regional-mx-daily-latest.csv')
mexico <- mutate(mexico, country="Mexico")

malaysia <- read.csv('../data/spotify-ranking-12-17-2019/regional-my-daily-latest.csv')
malaysia <- mutate(malaysia, country="Malaysia")

nicaragua <- read.csv('../data/spotify-ranking-12-17-2019/regional-ni-daily-latest.csv')
nicaragua <- mutate(nicaragua, country="Nicaragua")

netherlands<- read.csv('../data/spotify-ranking-12-17-2019/regional-nl-daily-latest.csv')
netherlands <- mutate(netherlands, country="Netherlands")

norway <- read.csv('../data/spotify-ranking-12-17-2019/regional-no-daily-latest.csv')
norway <- mutate(norway, country="Norway")

new_zealand<- read.csv('../data/spotify-ranking-12-17-2019/regional-nz-daily-latest.csv')
new_zealand <- mutate(new_zealand, country="New Zealand")

Panama<- read.csv('../data/spotify-ranking-12-17-2019/regional-pa-daily-latest.csv')
Panama <- mutate(Panama, country="Panama")

Peru<- read.csv('../data/spotify-ranking-12-17-2019/regional-pe-daily-latest.csv')
Peru <- mutate(Peru, country="Peru")

Philippines<- read.csv('../data/spotify-ranking-12-17-2019/regional-ph-daily-latest.csv')
Philippines <- mutate(Philippines, country="Philippines")

Poland<- read.csv('../data/spotify-ranking-12-17-2019/regional-pl-daily-latest.csv')
Poland <- mutate(Poland, country="Poland")

Portugal<- read.csv('../data/spotify-ranking-12-17-2019/regional-pt-daily-latest.csv')
Portugal <- mutate(Portugal, country="Portugal")

Paraguay<- read.csv('../data/spotify-ranking-12-17-2019/regional-py-daily-latest.csv')
Paraguay <- mutate(Paraguay, country="Paraguay")

Romania<- read.csv('../data/spotify-ranking-12-17-2019/regional-ro-daily-latest.csv')
Romania <- mutate(Romania, country="Romania")

Sweden<- read.csv('../data/spotify-ranking-12-17-2019/regional-se-daily-latest.csv')
Sweden <- mutate(Sweden, country="Sweden")

Singapore<- read.csv('../data/spotify-ranking-12-17-2019/regional-sg-daily-latest.csv')
Singapore <- mutate(Singapore, country="Singapore")

El_Salvador<- read.csv('../data/spotify-ranking-12-17-2019/regional-sv-daily-latest.csv')
El_Salvador <- mutate(El_Salvador, country="El Salvador")

Thailand<- read.csv('../data/spotify-ranking-12-17-2019/regional-th-daily-latest.csv')
Thailand <- mutate(Thailand, country="Thailand")

Turkey<- read.csv('../data/spotify-ranking-12-17-2019/regional-tr-daily-latest.csv')
Turkey <- mutate(Turkey, country="Turkey")

Taiwan<- read.csv('../data/spotify-ranking-12-17-2019/regional-tw-daily-latest.csv')
Taiwan <- mutate(Taiwan, country="Taiwan")

Uruguay<- read.csv('../data/spotify-ranking-12-17-2019/regional-uy-daily-latest.csv')
Uruguay <- mutate(Uruguay, country="Uruguay")

Vietnam<- read.csv('../data/spotify-ranking-12-17-2019/regional-vn-daily-latest.csv')
Vietnam <- mutate(Vietnam, country="Vietnam")

South_Africa<- read.csv('../data/spotify-ranking-12-17-2019/regional-za-daily-latest.csv')
South_Africa <- mutate(South_Africa, country="South Africa")

US <- read.csv('../data/spotify-ranking-12-17-2019/regional-us-daily-latest.csv')
US <- mutate(US, country="USA")

list_ <- list(argentina,austria,australia,Belgium,bulgaria,bolivia,brazil,canada,switzerland,chile,colombia,Costa_Rica,Czech_Republic,germany,denmark,dominican_republic,ecuador,estonia,spain,finland,france,UK,greece,guatemala,honduras,hungary,indonesia,ireland,israel,india,iceland,italy,japan,lithuania,luxembourg,latvia,malta,mexico,malaysia,nicaragua,netherlands,norway,new_zealand,Panama,Peru,Philippines,Poland,Portugal,Paraguay,Romania,Sweden,Singapore,El_Salvador,Thailand,Turkey,Taiwan,Uruguay,Vietnam,South_Africa,US) 
# merge all the dataframes in one call data that will be reused in music_in_the_world.R
data <- do.call("rbind", list_)

