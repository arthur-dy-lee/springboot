package arthur.dy.lee.alg.common;

public class ListNodeTool {
    public static String getListNodeString(ListNode listNode) {
        if (listNode == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder(16);
        sb.append(listNode.val).append(" ");
        while (listNode.next != null) {
            listNode = listNode.next;
            sb.append(listNode.val).append(" ");
        }
        System.out.println(sb);
        return sb.toString();
    }
}
