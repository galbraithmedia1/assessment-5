log_file = open("um-server-01.txt")


def sales_reports(log_file): #This line creates a function using def named sales_report and is passing in log_file
    for line in log_file: # this is a for loop that loops through log_file and assigns the loop name to line
        line = line.rstrip() #line.rstrip() will take out all any trailing characters
        day = line[0:3] #assigns line index0 to index 3 to the varible day
        if day == "Mon": #this line will only pull data where the day is assigned to Tue. 
            print(line)#This like prints the loop assigned to line


sales_reports(log_file)#calls the function and passes in log_file


def order(log_file):
    
    for line in log_file:
        mellons = line.split()
        if int(mellons[2]) > 10:
            print(mellons)

       

order(log_file)