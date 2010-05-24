using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EulerProblem2
{
    class Program
    {
        static void Main(string[] args)
        {

            int i1 = 0;
            int i2 = 1;
            int total = 0;
            int total2 = 0;

            List<int> numbers = new List<int>();

            for (int i = 0; total < 3524578; i++)
            {
                total = i1 + i2;
                i1 = i2;
                i2 = total;

                DeterminEven(numbers, total);

                Console.WriteLine(total);
            }

            Console.WriteLine(numbers.Count);
            CountThemAll(numbers);
        }

        private static void CountThemAll(List<int> numbers)
        {
            int total = 0;

            foreach (int n in numbers)
            {
                //Console.WriteLine(n);
                total += n;
            }

            Console.WriteLine(total);

        }

        private static void DeterminEven(List<int> numbers, int total)
        {
            if ((total % 2) == 0)
                numbers.Add(total);
        }
    }
}
