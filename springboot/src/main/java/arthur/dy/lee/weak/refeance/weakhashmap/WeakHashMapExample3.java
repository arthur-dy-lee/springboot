package arthur.dy.lee.weak.refeance.weakhashmap;

import org.apache.commons.collections.map.LRUMap;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * https://www.logicbig.com/tutorials/core-java-tutorial/java-collections/weak-hash-map.html
 *
 * Created by arthur.dy.lee on 2018/3/30.
 */
public class WeakHashMapExample3 {
    public static void main(String[] args) throws InterruptedException {
        WeakHashMap<Key, MyObject> map = new WeakHashMap<>();
        List<MyObject> values = new ArrayList<>();
        int size = 10000;

        for (int i = 0; i < size; i++) {
            Key key = new Key();
            MyObject value = new MyObject();
            map.put(key, value);
            values.add(value);
        }

        System.gc();
        Thread.sleep(2000);
        System.out.println("keys gced: " + Key.getKeyFinalizeCount());
        System.out.println("values gced: " + MyObject.getValueFinalizeCount());

        System.out.println("Map initial size: " + size);
        System.out.println("Map current size: " + map.size());

        Map lruMap = new LRUMap();

    }
}
/**
 *Output
 keys gced: 6648
 values gced: 0
 Map initial size: 10000
 Map current size: 3381

 Conclusion
 A map entry is eligible for removal if no references of corresponding key are used externally,
 regardless of if corresponding values are externally referenced or not
 */

/** http://www.topjavatutorial.com/java/weakhashmap-in-java/
 Where can we use a WeakHashMap ?

 We can use WeakHashMap to implement caching mechanism for data without explicitly removing items from the cache to ensure that your application doesn’t run out of memory.

 Instead, items will be removed automatically when they’re garbage collected. (Reference: Pro Java 8 programming)
 **/