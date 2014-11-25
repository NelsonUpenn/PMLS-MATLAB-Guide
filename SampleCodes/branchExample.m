% S Spade, 6/2014:  branchExample.m  MATLAB R2014a: Illustrate branching
for trial = 1:5,
    userNumber = input('Pick a number: ');
    if userNumber < 0,
        disp('Square root is not real')
    else
        sqrt(userNumber)
    end
    userAgain = input('Another [y/n]?','s');
    if userAgain ~= 'y',
        break;
    end
end
if trial == 5,
    disp('Sorry, only 5 per customer')
elseif userAgain == 'n'
    disp('Bye!')
else
    disp('Sorry, I did not understand that.')
end
