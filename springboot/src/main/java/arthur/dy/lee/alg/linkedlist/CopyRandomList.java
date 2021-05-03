package arthur.dy.lee.alg.linkedlist;

import java.util.HashMap;


/**
 * 第一步仍然是将原始链表上的每个节点 N复制为N',然后把这些创建出来的节点N’连接起来。
 * 同时我们把<N,N'>的配对信息放到一个HashMap<Node,Node> map中;
 * 第二步设置每个节点的random指针:如果在原始链表中节点 N的random指针指向节点 S,那么在复制链表中,对应的 N'节点应该指向 S'。
 */
public class CopyRandomList {
    public Node copyRandomList(Node head) {
        HashMap<Node, Node> map = new HashMap<>(); //创建HashMap集合
        Node cur = head;
        //复制结点值
        while (cur != null) {
            //存储put:<key,value1>
            map.put(cur, new Node(cur.val)); //顺序遍历，存储老结点和新结点(先存储新创建的结点值)
            cur = cur.next;
        }
        //复制结点指向
        cur = head;
        while (cur != null) {
            //得到get:<key>.value2,3
            map.get(cur).next = map.get(cur.next); //新结点next指向同旧结点的next指向
            map.get(cur).random = map.get(cur.random); //新结点random指向同旧结点的random指向
            cur = cur.next;
        }

        //返回复制的链表
        return map.get(head);


    }

    public static void main(String[] args) {
        Node head = new Node(1);
        Node h2 = new Node(2);
        Node h3 = new Node(3);
        Node h4 = new Node(4);
        head.next = h2;
        head.random = h4;
        h2.next = h3;
        h2.random = head;
        h3.next = h4;
        h3.random = h2;

        CopyRandomList copy = new CopyRandomList();
        Node tmp = copy.copyRandomList(head);
        System.out.println(tmp);
    }

    static class Node {
        int val;
        Node next;
        Node random;

        public Node(int val) {
            this.val = val;
            this.next = null;
            this.random = null;
        }

    }
}



