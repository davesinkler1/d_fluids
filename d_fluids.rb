#a program to calculate everything fluid dynamics

puts "what are you looking for?"
decision = gets.chomp

puts "1.Pressure\n2.Hydrostatic pressure\n3.Total pressure\n"

def Pressure()
  puts "are you looking for P or F?"
  decision_two = gets.chomp
  
  if decision_two = "P"
     puts "insert F"
        F = gets
	 puts "insert A"
        A = gets
	P = F / A
	puts P
 elsif decision_two = "F"
   puts "insert P"
     P_F2 = gets
   puts "insert A"
     A_F2 = gets
   F_F2 = P_F2 * A_F2
   puts F_F2
     end
  end

def Hydro_P()
  puts "insert rho"
    p_rho = gets
  puts "insert gravity"
    grav = gets
  puts "insert height"
    h = gets
	
  hydro_p1 = p_rho * grav
  hydro_p2 = hydro_p1 * h
  puts hydro_p2
end

def Athmo_P()
  insert "insert outside pressure"
  out_p = gets
  
  ath_p = out_p/76 * 1.01
  puts ath_p
end

def Total_P()
  Athmo_P()
  Hydro_P()
  
  sum_of_p = hydro_p2 + ath_p
  puts sum_of_p
end
  
case decision
  when "Pressure"
    Pressure()
  when "Hydrostatic pressure"
    Hydro_P()
  when "Total Pressure"
    Total_P()
end
     