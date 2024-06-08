import 'dart:io';

void main()
{
  for(int i=1; i <= number.length; i++)
  {
    for(int j=1; j <= number.length; j++)
    {
      if(winner == true)
      {
        break;
      }
      else
      {
        genratebox();
        start();
        genratebox();
        winnercheck();

      }
    }
  }
}

void genratebox() {
  print('   |   |   ');
  print(' ${number[0]} | ${number[1]} | ${number[2]}');
  print('___|___|___');
  print('   |   |   ');
  print(' ${number[3]} | ${number[4]} | ${number[5]}');
  print('___|___|___');
  print('   |   |   ');
  print(' ${number[6]} | ${number[7]} | ${number[8]}');
  print('   |   |   ');
  print('');
}

void winnercheck()
{
  for(int i=1; i <= number.length; i++ )
  {
    for(int j=1; j <= number.length; j++)
    {
      if(number[0] == number[1]  && number[1] == number[2])
      {
        winner = true;
      }
      else if(number[3]  == number[4] && number[4] == number[5])
      {
        winner = true;
      }
      else if(number[6] == number[7] && number[7] == number[8])
      {
        winner = true;
      }
      else if(number[0] == number[4] && number[4] == number[8])
      {
        winner = true;
      }
      else if(number[0] == number[3] && number[3] == number[6])
      {
        winner = true;
      }
      else if(number[1] == number[4] && number[4] == number[7])
      {
        winner =  true;
      }
      else if(number[2] == number[5] && number[5] == number[8])
      {
        winner = true;
      }
      else if(number[2] == number[4] && number[4] == number[6])
      {
        winner = true;
      }
    }
  }
}


int? index;
List number = [1,2,3,4,5,6,7,8,9];
bool isturn = true;
int? move;
bool? winner = false;

void start()
{
  stdout.write('Enter index number');
  index = int.parse(stdin.readLineSync()!);

  if(isturn)
  {
    number.removeAt(index! -1);
    number.insert(index! -1, 'x');
    isturn = false;
  }
  else
  {
    number.removeAt(index! -1);
    number.insert(index! -1,'o');
    isturn = true;
  }
}
