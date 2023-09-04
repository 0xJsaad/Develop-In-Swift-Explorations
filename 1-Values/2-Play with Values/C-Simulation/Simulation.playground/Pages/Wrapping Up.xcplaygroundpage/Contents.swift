/*:
## Wrapping Up
 
 In this playground, you learned how to change the parameters of a simulation of ant foraging to affect how it models real-world ant colonies. Even though you didn't explore its code, you gained a valuable perspective about how modeling and simulation work.
 
 Here are some questions to help you reflect on your experience.
 
- Can you describe the rules for an ant's behavior based on your observations? How and when does an ant decide to follow which pheromones?
- What combinations of parameters did you find that produced successful foraging behavior? What combinations did not produce successful foraging behavior?
- Were there any parameters that seemed especially likely to have a large impact on the simulation with a small change in their values?
- How are the parameters interrelated? For instance, if you decrease the number of ants, can you keep the foraging behavior intact by modifying another parameter?
- What are some hypotheses you can make about the foraging behavior of ant colonies based on your observations of this simulation? For instance, is there a critical number of ants required to produce foraging behavior?
- What would you do if you wanted to compare this model with the real-world behavior of ants? What kinds of enhancements would you make to the simulation?
- What other questions do you want to answer about ant colony behavior?
 
 
[Previous](@previous)  |  page 6 of 6
 */
//  Question 1 (Answer): Ants will always go after pheromones and the closest to the nest the better. Once an ant finds a good and promising source it will stick to it and go back and forth between the pheromone and the nest to grow their habitat.
// Question 2 (Answer):  The less ants the more chance they had to find more pheromones in the simulation, the issue when having a wild amount of ants is that once stream of food has the most traffic, the other ants will follow the big stream instead of lookinf for new ones, and the ones that go and try most likely get lost.
// Question 3 (Answer): Like in question 3 I beileve the less amount of ants spawned with a small change lets say from 50 to 10 we will see how more food streams are created and less ants go missing in the search.
// Question 4 (Answer): No mowt likely if we don't keep balance at some point in the simulation is to have everything balanced and do small changes to keep it as real as possible to analyze the data. We don't want to increase the Pheromones and Foraging by a 100 when having decreased the ants amount from 100 to 10, this will create unastable results.
// Question 5 (Answer): the less the merrier, once we go up in a lot number of ants, we will see how the foraging behavior changes drastically.
// Question 6 (Answer): I would make the ants we aware that once they travel a certaing amount they should turn back and return to the rest of the colony. There is a huge issue of ants dissapearing when increasing the amount of ants spawn. Making it harder to analyze a bigger environment. For this reason while increasing the amount of ants and keeping them aware of their surroundings when going to far will make a good environment to compare it to the real world since usually there is hundreds of ants in a colony.
// Leaving Question 7 as optional since I don't have any questions to answer.
/*:
  _Copyright © 2021 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 14 of 14
 */
