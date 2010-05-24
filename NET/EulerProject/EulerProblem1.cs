using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EulerProblem1
{
    class Program
    {
        static void Main(string[] args)
        {
            List<double> mainList = PopulateList();
            List<double> numbersToAdd = AllNumbersToAdd(mainList);
            double total = AddAllNumbers(numbersToAdd);

            Console.WriteLine(total);
        }

        private static double AddAllNumbers(List<double> numbersToAdd)
        {
            double final = 0.0;

            foreach (var n in numbersToAdd)
            {
                final += n;
            }

            return final;
        }

        private static List<double> AllNumbersToAdd(List<double> mainList)
        {
            List<double> numbersToAdd = new List<double>();

            foreach (var n in mainList)
            {
                if ((n % 3) == 0 || (n % 5) == 0)
                {
                    numbersToAdd.Add(n);
                }
            }

            return numbersToAdd;
        }

        private static List<double> PopulateList()
        {
            List<double> mainList = new List<double>();

            for (double i = 1.0; i < 1000.0; i++)
            {
                mainList.Add(i);
            }

            return mainList;
        }
    }
}
