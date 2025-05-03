Assignment
================
Todsapol Techo
2025-05-03

\#Assigment \##Preparation 1. Download plant_growth_data.csv from AJ
Todsapol Github into your computer 2. Copy plant_growth_data.csv to r
working directory (Directory that you create R PROJECT) 3. Use following
code to import plant_growth_data.csv into Rstudio 4. Check the dataframe
by head() function

\#การบ้าน \##การเตรียมตัว 1. ดาวน์โหลดไฟล์ plant_growth_data.csv จาก Github
ของ AJ Todsapol ลงในคอมพิวเตอร์ของคุณ 2. คัดลอกไฟล์ plant_growth_data.csv
ไปยัง working directory ของ R (ไดเรกทอรีที่คุณสร้าง R PROJECT) 3.
ใช้โค้ดต่อไปนี้เพื่อนำเข้าไฟล์ plant_growth_data.csv เข้าสู่ RStudio 4. ตรวจสอบ
dataframe โดยใช้ฟังก์ชัน head()

``` r
plant_growth_data <- read.csv("plant_growth_data.csv")
```

``` r
head(plant_growth_data)
```

    ##   Plant_ID Species  Treatment Height_cm Leaf_Count Flower_Count Soil_pH
    ## 1        1    Rosa    Control      43.3         29            5     6.7
    ## 2        2    Rosa    Control      44.3         33            5     6.2
    ## 3        3    Rosa    Control      49.7         37            4     6.6
    ## 4        4    Rosa Fertilizer      53.2         46            6     7.2
    ## 5        5    Rosa Fertilizer      53.4         42            9     6.5
    ## 6        6    Rosa Fertilizer      58.1         48            6     6.9
    ##   Chlorophyll_Content Stem_Diameter Days_to_Flowering
    ## 1                36.8           6.6                64
    ## 2                43.8           5.9                65
    ## 3                39.0           6.7                63
    ## 4                42.4           8.9                48
    ## 5                44.3           7.0                59
    ## 6                44.4          10.7                53

เปิดใช้งานแพ็คเกจ dplyr

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(ggplot2)
```

################# 

### Questions

################# 

1.  Find the mean of Height_cm, Leaf_Count, Flower_Count, Soil_pH,
    Chlorophyll_Content, Stem_Diameter, and Days_to_Flowering for each
    Species and Treatment.
2.  Create a new data frame containing Species, Treatment, and the means
    of each parameter. Use head() to display your new data frame
3.  Plot a bar graph of Height_cm, Leaf_Count, Flower_Count, Soil_pH,
    Chlorophyll_Content, Stem_Diameter, and Days_to_Flowering for
    Rosa/Control (Use the mean of each measurement).
4.  Compare the mean of Height_cm between Species in the control group
    using bar graphs.
5.  Compare the mean of Chlorophyll_Content between Species in the
    fertilizer group using bar graphs.
6.  Compare the mean of Days_to_Flowering for all Species and Treatments
    using bar graphs.

############# 

### คำถาม

############# 

1.  หาค่าเฉลี่ยของ Height_cm, Leaf_Count, Flower_Count, Soil_pH,
    Chlorophyll_Content, Stem_Diameter และ Days_to_Flowering สำหรับแต่ละ
    Species และ Treatment
2.  สร้าง data frame ใหม่ที่ประกอบด้วย Species, Treatment
    และค่าเฉลี่ยของพารามิเตอร์แต่ละตัว ใช้ head() เพื่อแสดง data frame ใหม่ของคุณ
3.  พล็อตกราฟแท่งของ Height_cm, Leaf_Count, Flower_Count, Soil_pH,
    Chlorophyll_Content, Stem_Diameter และ Days_to_Flowering ใน
    Rosa/Control (ใช้ค่าเฉลี่ยของแต่ละการวัด)
4.  เปรียบเทียบค่าเฉลี่ยของ Height_cm ระหว่าง Species ในกลุ่ม control
    โดยใช้กราฟแท่ง
5.  เปรียบเทียบค่าเฉลี่ยของ Chlorophyll_Content ระหว่าง Species ในกลุ่ม
    fertilizer โดยใช้กราฟแท่ง
6.  เปรียบเทียบค่าเฉลี่ยของ Days_to_Flowering ของทุก Species และ Treatment
    โดยใช้กราฟแท่ง

################## 

################## 

################## 

# ตัวอย่างการตอบคำถาม

## ตัวอย่างคำถาม

1.  Find the median of Soil_pH of each treatment in Salvia
2.  หาค่ามัธยฐาน (median) ของ Soil_pH ของแต่ละการทดลอง (treatment) ใน
    Salvia \## คำตอบข้อที่ 1

``` r
# เลือกข้อมูลเฉพาะ Salvia และสร้าง data frame ใหม่ชื่อ df
df <- filter(plant_growth_data, Species == "Salvia")

# เลือกข้อมูลในคอร์ลัม Treatment เฉพาะ Control
control.df <- filter(df, Treatment == "Control")
mean.control.df<-median(control.df$Soil_pH)
mean.control.df
```

    ## [1] 6.4

``` r
# เลือกข้อมูลในคอร์ลัม Treatment เฉพาะ Fertilizer
fertilizer.df <- filter(df, Treatment == "Fertilizer")
mean.fertilizer.df<-median(fertilizer.df$Soil_pH)
mean.fertilizer.df
```

    ## [1] 6.9

``` r
# เลือกข้อมูลในคอร์ลัม Treatment เฉพาะ Drought
drought.df <- filter(df, Treatment == "Drought")
mean.drought.df<-median(drought.df$Soil_pH)
mean.drought.df
```

    ## [1] 6.3

## คำตอบข้อที่ 2

## คำตอบข้อที่ 3
