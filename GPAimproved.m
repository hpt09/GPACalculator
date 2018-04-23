HowMany = input('How many courses you want to calculate your GPA from? ', 's');
HowMany = str2double(HowMany);
while isnan(HowMany)
    disp('Enter a number you dipshit');
    HowMany = input('How many courses you want to calculate your GPA from? ', 's');
    HowMany = str2double(HowMany);
end
GradesIgot = cell(1, HowMany);
for i = 1 : HowMany
    if i == 1
        GradesIgot{i} = input('What grade did you get for your first course? ', 's');
    else
        GradesIgot{i} = input('What a noob! And for your next course? ', 's');
    end
end
Grades = {'A+','A', 'A-', 'B+','B','B-','C+','C', 'C-'};
PointsOfGrades = {9, 8, 7, 6, 5, 4, 3, 2, 1};
MyPointsOfGrades = 0;
for j = 1:length(GradesIgot)
    i = 1;
    
    while i <= 9 && strcmpi(GradesIgot{j}, Grades{i}) == 0
        
        i = i + 1;
        
    end
    if i ~= 10
        MyPointsOfGrades = MyPointsOfGrades + PointsOfGrades{i};
    end
end

GPA = MyPointsOfGrades/length(GradesIgot);
disp(['Your GPA is ' num2str(GPA)])
