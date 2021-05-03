package arthur.dy.lee.weak.refeance.weakhashmap;

import java.util.WeakHashMap;

/**
 * Created by arthur.dy.lee on 2018/3/30.
 */
public class WeakHashMapExample1 {
    public static void main(String[] args) throws InterruptedException {
        WeakHashMap<Key, MyObject> map = new WeakHashMap<>();
        int size = 10000;
        for (int i = 0; i < size; i++) {
            Key key = new Key();
            MyObject value = new MyObject();
            map.put(key, value);
        }

        System.gc();
        Thread.sleep(1000);
        System.out.println("keys gced: " + Key.getKeyFinalizeCount());
        System.out.println("values gced: " + MyObject.getValueFinalizeCount());

        System.out.println("Map initial size: " + size);
        System.out.println("Map current size: " + map.size());


    }
}
/**
 Output
 keys gced: 8001
 values gced: 3384
 Map initial size: 10000
 Map current size: 1999
 **/