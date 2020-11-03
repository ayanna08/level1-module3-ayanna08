package _05_netflix;

public class Ayanna_Netflix_Queue {
public static void main(String[] args) {
	
	 Movie ToyStory = new Movie("Toy Story",3);
	 Movie ToyStory2 = new Movie("Toy Story 2",2);
	 Movie ToyStory3 = new Movie("Toy Story 3",5);
	 Movie ToyStory4 = new Movie("Toy Story 4",4);
	 Movie MonstersInc = new Movie("Monsters INC",1);
	 
	 System.out.println(ToyStory.getTicketPrice());
	 System.out.println(ToyStory2.getTicketPrice());
	 System.out.println( ToyStory3.getTicketPrice());
	 System.out.println(ToyStory4.getTicketPrice());
	 System.out.println(MonstersInc.getTicketPrice());
	 
	 NetflixQueue queue = new NetflixQueue();
	 
	 queue.addMovie(ToyStory);
	 queue.addMovie(ToyStory2);
	 queue.addMovie(ToyStory3);
	 queue.addMovie(ToyStory4);
	 queue.addMovie(MonstersInc);
	 
	 queue.printMovies();
	 
	 System.out.println(queue.getBestMovie());
	 System.out.println(queue.getMovie(1));
}
}
