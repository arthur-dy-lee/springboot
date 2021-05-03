package arthur.dy.lee.weak.refeance.weakhashmap;

import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/**
 * Created by arthur.dy.lee on 2018/3/30.
 */
public class WeakHashMapExample2 {
    public static void main(String[] args) throws InterruptedException {
        WeakHashMap<Key, MyObject> map = new WeakHashMap<>();
        List<Key> keys = new ArrayList<>();
        int size = 10000;
        for (int i = 0; i < size; i++) {
            Key key = new Key();
            MyObject value = new MyObject();
            map.put(key, value);
            keys.add(key);
        }

        System.gc();
        System.out.println("keys gced: " + Key.getKeyFinalizeCount());
        System.out.println("values gced: " + MyObject.getValueFinalizeCount());

        System.out.println("Map initial size: " + size);
        System.out.println("Map current size: " + map.size());
    }
}
/**
 * Output
 keys gced: 0
 values gced: 0
 Map initial size: 10000
 Map current size: 10000
 */
