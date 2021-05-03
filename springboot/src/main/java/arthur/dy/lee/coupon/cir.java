package arthur.dy.lee.coupon;

public class cir {

    public static boolean checkCir(Node node) {

        if (node == null || node.val == null || node.val.equals("")) {
            return false;
        }
        Node fastNode = node;
        while (node.nextNode != null) {
            node = node.nextNode;
            if (fastNode.nextNode == null || fastNode.nextNode.nextNode == null) {
                return false;
            }
            fastNode = fastNode.nextNode.nextNode;
            if ((fastNode.val == node.val)) {
                return true;
            }
        }

        return false;
    }

    public static void main(String[] args) {
        Node a = new Node("a");
        Node b = new Node("b");
        Node c = new Node("c");
        Node d = new Node("d");
        Node e = new Node("e");
        Node f = new Node("f");
        Node g = new Node("g");
        Node h = new Node("h");
        Node i = new Node("i");
        Node j = new Node("j");
        Node k = new Node("k");
        Node l = new Node("l");

        a.nextNode = b;
        b.nextNode = c;
        c.nextNode = d;
        d.nextNode = e;
        e.nextNode = f;
        f.nextNode = g;
        g.nextNode = h;
        h.nextNode = i;
        i.nextNode = j;
        j.nextNode = k;
        k.nextNode = l;
        l.nextNode = f;

        System.out.println(cir.checkCir(a));
    }
}
