class Riddle
  def initialize (ans1, ans2, ans3)
    @ans1 = ans1
    @ans2 = ans2
    @ans3 = ans3
  end
    def result
      result = "incorrect Question: "
      if (@ans1 == "correct" && @ans2 == "correct" && @ans3 == "correct")
        return "Welcome to the city !!"
      else
          if (@ans1 == "incorrect")
            result =  result + "Question 1"
          end
          if (@ans2 == "incorrect")
            result = result + "Question 2"
          end
          if (@ans3 = "incorrect")
          result = result + "Question 3"
          end
          return result
      end
    end
end
