#!/usr/bin/env python
# coding: utf-8

# In[200]:


class Diagnosis:
    def __init__(self, clp_name):
        get_ipython().system('pip install clipspy')
        from clips import Environment
        import os
        
        self.path = os.path.join(os.getcwd(), clp_name)
        self.env = Environment()
        self.env.load(self.path)
    
    def Reset(self):
        self.env.reset()
        
    def Add(self, symptom):
        self.env.eval(f"(assert (has_symptom {symptom}))")
        
    def Run(self):
        _ = self.env.run()
        
    def GetDisease(self):
        diseases = []
        for fact in self.env.facts():
            fact = str(fact)
            if "disease_is" in fact:
                temp_disease = fact[1:-1].split(" ")[1]
                temp_disease = temp_disease.replace("_", " ")
                temp_disease = temp_disease.title()
                diseases.append(temp_disease)
                
        return diseases
        
    def GetDiseaseDesc(self, disease_name):
        import csv
        
        file = open("respiratory-disease-desc.csv")
        csvreader = csv.reader(file)
        header = next(csvreader)

        rows = []
        data = {}

        for row in csvreader:
            row[0] = row[0].lower().strip().replace(" ","-")
            data[row[0]]= row[1] = ",".join(row[1:])
            row[2:] = ""
            rows.append(row)
        return data[disease_name]
    
    def GetDiseaseInfo(self):
        your_disease = []
        your_disease = self.GetDisease()
        
        if(your_disease != []):
            print(f'Kamu mungkin mempunyai penyakit: {", ".join(your_disease)}')
            print('\nPenjelasan:\n')
            for name in your_disease:
                your_disease_desc = self.GetDiseaseDesc(name.lower())
                print(your_disease_desc)
                print("\n")
        else:
            print('Selamat kamu sehat')
        #print(your_disease_desc)

