package arthur.dy.lee.design.state;

public class ApplicationStatDemo {
    public static void main(String[] args) {
        MarioStateMachine mario = new MarioStateMachine();
        mario.obtainMushRoom();
        int score = mario.getScore();
        State state = mario.getCurrentStateName();
        System.out.println("mario score: " + score + "; state: " + state);

    }
}
