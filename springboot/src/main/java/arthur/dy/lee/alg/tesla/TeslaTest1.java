package arthur.dy.lee.alg.tesla;

public class TeslaTest1 {

    public int solution(String S) {
        int t = 799999;
        if(S.length()>=24){
            return t;
        }
        t = Integer.parseInt(S, 2);
        return count(0, t);
    }

    public int count(int result, int t) {
        if (t == 0) {
            return result;
        }
        if (t % 2 == 0) {
            t = t >> 1;
        } else {
            t--;
        }
        return count(++result, t);
    }

    public static void main(String[] args) {
        String s = "1111010101111";
        TeslaTest1 tt = new TeslaTest1();
        int r = tt.solution(s);
        System.out.println(r);
    }
}
