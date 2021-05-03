package arthur.dy.lee.alg.linkedlist;


public class TreeToDoublyList {
    public Node pre, head;

    public Node treeToDoublyList(Node root) {
        if (root == null) {
            return null;
        }
        dfs(root);
        head.left = pre;
        pre.right = head;
        return head;
    }

    void dfs(Node cur) {

        if (cur == null) {
            return;
        }
        dfs(cur.left);
        if (pre != null) {
            pre.right = cur;
        } else {
            head = cur;
        }
        cur.left = pre;
        pre = cur;
        dfs(cur.right);
    }

    public static void main(String[] args) {
        Node root = new Node(4);
        Node n1 = new Node(1);
        Node n2 = new Node(2);
        Node n3 = new Node(3);
        Node n5 = new Node(5);
        root.left = n2;
        root.right = n5;
        n2.left = n1;
        n2.right = n3;

        TreeToDoublyList tree = new TreeToDoublyList();
        Node res = tree.treeToDoublyList(root);

        for (int i = 0; i < 10; i++) {
            System.out.println(res.val);
            res = res.right;
            i++;
        }
    }

    static class Node {
        public int val;
        public Node left;
        public Node right;

        public Node() {
        }

        public Node(int _val) {
            val = _val;
        }

        public Node(int _val, Node _left, Node _right) {
            val = _val;
            left = _left;
            right = _right;
        }

    }


}
