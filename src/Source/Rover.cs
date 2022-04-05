using System;

namespace MarsRovers
{
  class Rover
  {
    public string Direction { get; internal set; }
    public Point Position { get; internal set; }

    internal void Turn(string turnDirection)
    {
      if (turnDirection == "L")
      {

        if (Direction == "N")
        {
          Direction = "W";
        }

        else if (Direction == "E")
        {
          Direction = "N";
        }

        else if (Direction == "W")
        {
          Direction = "S";
        }

        else if (Direction == "S")
        {
          Direction = "E";
        }
      }

      if (turnDirection == "R")
      {

        if (Direction == "N")
        {
          Direction = "E";
        }

        else if (Direction == "E")
        {
          Direction = "S";
        }

        else if (Direction == "W")
        {
          Direction = "N";
        }

        else if (Direction == "S")
        {
          Direction = "W";
        }
      }
    }
       
        internal void Move(int x, int y, string direction)
        {
            Console.WriteLine("Rover Moves one step ahead.");
            if (direction == "N")
            {
                Position = new Point(x, y + 1);
            }
            else if (direction == "S")
            {
                Position = new Point(x, y - 1);
                if (y - 1 < 0)
                {
                    throw new Exception("Rover falls out of the plateau");
                }
            }
            else if (direction == "E")
            {
                Position = new Point(x + 1, y);
            }
            else if (direction == "W")
            {
                Position = new Point(x - 1, y);
                if (y - 1 < 0)
                {
                    throw new Exception("Rover falls out of the plateau");
                }
            }
        }
    }
}