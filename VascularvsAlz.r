###HERE WE START LOOKING AT VASCULAR DEMENTIA - Getting some markers

#Renaming the alzheimer to the other dementia
data@meta.data$DISEASE[data@meta.data$orig.ident == 'D5' & data@meta.data$DISEASE == "Non-symptomatic"] <- 'Vascular'



#Astrocytes
AstroA_V<-FindMarkers(data, ident.1= 'Astro A Vascular', ident.2= "Astro A Alzheimer's")
AstroB_V<-FindMarkers(data, ident.1= 'Astro B Vascular', ident.2= "Astro B Alzheimer's")


head(AstroA_V) #Checking the genes overexpressed
head(AstroB_V) #Checking the genes overexpressed

#Plotting it
FeaturePlot(data, features = c('WARS', 'IFI44L', 'ISG15'), split.by='DISEASE', min.cutoff = 'q10' )
FeaturePlot(data, features = c('MX1', 'IFI44L', 'PARP14'), split.by='DISEASE', min.cutoff = 'q10' )


#Oligo
Oligo_V<-FindMarkers(data, ident.1= 'Oligo Vascular', ident.2= "Oligo Alzheimer's")
head(Oligo) #Checking the genes overexpressed

FeaturePlot(data, features = c('ARL17B', 'GRID2', 'NEAT1'), split.by='DISEASE', min.cutoff = 'q10' )


##Asymptomatic
#Astrocytes
AstroA_VA<-FindMarkers(data, ident.1= 'Astro A Vascular', ident.2= "Astro A Non-symptomatic")
AstroB_VA<-FindMarkers(data, ident.1= 'Astro B Vascular', ident.2= "Astro B Non-symptomatic")


head(AstroA_VA) #Checking the genes overexpressed
head(AstroB_VA) #Checking the genes overexpressed

#Plotting it
FeaturePlot(data, features = c('IFI44L', 'ISG15', 'WARS'), split.by='DISEASE', min.cutoff = 'q10' )
FeaturePlot(data, features = c('MX1', 'PARP14', 'WARS'), split.by='DISEASE', min.cutoff = 'q10' )


#Oligo
Oligo_VA<-FindMarkers(data, ident.1= 'Oligo Vascular', ident.2= "Oligo Non-symptomatic")
head(Oligo_VA) #Checking the genes overexpressed

FeaturePlot(data, features = c('PARP14', 'XIST', 'IFI6'), split.by='DISEASE', min.cutoff = 'q10' )
