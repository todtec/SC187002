# Assignment
# Preparation
#   1. Download plant_growth_data.csv from AJ Todsapol Github into your computer
#   2. Copy plant_growth_data.csv to r working directory (Directory that you create R PROJECT)
#   3. Use following code to import plant_growth_data.csv into Rstudio
#   4. Check the dataframe by head() function
# การบ้าน
# การเตรียมตัว
#   1. ดาวน์โหลดไฟล์ plant_growth_data.csv จาก Github ของ AJ Todsapol ลงในคอมพิวเตอร์ของคุณ
#   2. คัดลอกไฟล์ plant_growth_data.csv ไปยัง working directory ของ R (ไดเรกทอรีที่คุณสร้าง R PROJECT)
#   3. ใช้โค้ดต่อไปนี้เพื่อนำเข้าไฟล์ plant_growth_data.csv 
#   4. ตรวจสอบ dataframe โดยใช้ฟังก์ชัน head()

# Load file to R
plant_growth_data <- read.csv("plant_growth_data.csv")
head(plant_growth_data)

#เปิดใช้งานแพ็คเกจ dplyr
library(dplyr)
library(ggplot2)

#################
### Questions ###
#################
#1. Find the mean of Height_cm, Leaf_Count, Flower_Count, Soil_pH, Chlorophyll_Content, Stem_Diameter, and Days_to_Flowering for each Species and Treatment.
#2. Create a new data frame containing Species, Treatment, and the means of each parameter.
#Use head() to display your new data frame
#3. Plot a bar graph of Height_cm, Leaf_Count, Flower_Count, Soil_pH, Chlorophyll_Content, Stem_Diameter, and Days_to_Flowering for Rosa/Control (Use the mean of each measurement).
#4. Compare the mean of Height_cm between Species in the control group using bar graphs.
#5. Compare the mean of Chlorophyll_Content between Species in the fertilizer group using bar graphs.
#6. Compare the mean of Days_to_Flowering for all Species and Treatments using bar graphs.

### คำถาม ###
#1. หาค่าเฉลี่ยของ Height_cm, Leaf_Count, Flower_Count, Soil_pH, Chlorophyll_Content, Stem_Diameter และ Days_to_Flowering สำหรับแต่ละ Species และ Treatment
#2. สร้าง data frame ใหม่ที่ประกอบด้วย Species, Treatment และค่าเฉลี่ยของพารามิเตอร์แต่ละตัว ใช้ head() เพื่อแสดง data frame ใหม่ของคุณ
#3. พล็อตกราฟแท่งของ Height_cm, Leaf_Count, Flower_Count, Soil_pH, Chlorophyll_Content, Stem_Diameter และ Days_to_Flowering ใน Rosa/Control (ใช้ค่าเฉลี่ยของแต่ละการวัด)
#4. เปรียบเทียบค่าเฉลี่ยของ Height_cm ระหว่าง Species ในกลุ่ม control โดยใช้กราฟแท่ง
#5. เปรียบเทียบค่าเฉลี่ยของ Chlorophyll_Content ระหว่าง Species ในกลุ่ม fertilizer โดยใช้กราฟแท่ง
#6. เปรียบเทียบค่าเฉลี่ยของ Days_to_Flowering ของทุก Species และ Treatment โดย

##################
##################
##################

# ตัวอย่างการตอบคำถาม
## ตัวอย่างคำถาม
#1. Find the median of Soil_pH of each treatment in Salvia
#1. หาค่ามัธยฐาน (median) ของ Soil_pH ของแต่ละการทดลอง (treatment) ใน Salvia

## คำตอบข้อที่ 1
# เลือกข้อมูลเฉพาะ Salvia และสร้าง data frame ใหม่ชื่อ df
df <- filter(plant_growth_data, Species == "Salvia")

# เลือกข้อมูลในคอร์ลัม Treatment เฉพาะ Control
control.df <- filter(df, Treatment == "Control")
mean.control.df<-median(control.df$Soil_pH)
mean.control.df
# เลือกข้อมูลในคอร์ลัม Treatment เฉพาะ Fertilizer
fertilizer.df <- filter(df, Treatment == "Fertilizer")
mean.fertilizer.df<-median(fertilizer.df$Soil_pH)
mean.fertilizer.df
# เลือกข้อมูลในคอร์ลัม Treatment เฉพาะ Drought
drought.df <- filter(df, Treatment == "Drought")
mean.drought.df<-median(drought.df$Soil_pH)
mean.drought.df

## คำตอบข้อที่ 2
# Code for question 2
## คำตอบข้อที่ 3
# Code for question 3
