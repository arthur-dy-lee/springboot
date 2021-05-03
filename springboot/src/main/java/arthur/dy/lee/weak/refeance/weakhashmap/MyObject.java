package arthur.dy.lee.weak.refeance.weakhashmap;

/**
 * Created by arthur.dy.lee on 2018/3/30.
 */
public class MyObject {
    private static int valueFinalizeCount;
    private int[] bigArray = new int[10000];

    public static int getValueFinalizeCount() {
        return valueFinalizeCount;
    }

    @Override
    protected void finalize() throws Throwable {
        valueFinalizeCount++;
    }
}

