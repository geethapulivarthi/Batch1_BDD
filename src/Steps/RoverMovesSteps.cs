using FluentAssertions;
using System;
using TechTalk.SpecFlow;

namespace MarsRovers.Steps
{
    [Binding]
    public class RoverMovesSteps
    {
        private readonly ScenarioContext _scenarioContext;
        private Rover rover;
        string exceptionMsg = "";

        public RoverMovesSteps(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        [Given(@"Rover is in plateau at \((.*),(.*)\) co-ordinates and facing the (.*)")]
        public void GivenRoverIsInPlateauAtCo_OrdinatesAndFacingThe(string x, string y, string direction)
        {
            rover = new Rover();
            Point point = new Point(Convert.ToInt32(x), Convert.ToInt32(y));
            rover.Position = point;
            rover.Direction = direction;
        }
        
        [When(@"the rover moves \((.*),(.*)\) co-ordinates and facing (.*)")]
        public void WhenTheRoverMovesCo_OrdinatesAndFacing(string x, string y, string direction)
        {
            try
            {
                rover.Move(Convert.ToInt32(x), Convert.ToInt32(y), direction);
            }
            catch (Exception ex)
            {
                exceptionMsg = ex.Message;
            }
        }
        
        [Then(@"the rover reaches new position \((.*),(.*)\) in the same (.*)")]
        public void ThenTheRoverReachesNewPositionInTheSame(string x, string y, string newDirection)
        {
            rover.Direction.Should().Be(newDirection);
            rover.Position.Should().Be(new Point(Convert.ToInt32(x), Convert.ToInt32(y)));
        }
        
        [Then(@"the rover falls out of the plateau")]
        public void ThenTheRoverFallsOutOfThePlateau()
        {
            if (!String.IsNullOrEmpty(exceptionMsg))
            {
                Console.WriteLine(exceptionMsg);
            }
            else
            {
                Console.WriteLine("Success.");
            }
        }
    }
}
