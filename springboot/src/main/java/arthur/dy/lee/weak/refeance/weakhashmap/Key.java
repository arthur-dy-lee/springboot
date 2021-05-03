package arthur.dy.lee.weak.refeance.weakhashmap;

/**
 * Created by arthur.dy.lee on 2018/3/30.
 */
public class Key {
    private static int keyFinalizeCount;

    public static int getKeyFinalizeCount() {
        return keyFinalizeCount;
    }

    @Override
    protected void finalize() throws Throwable {
        keyFinalizeCount++;
    }
}
