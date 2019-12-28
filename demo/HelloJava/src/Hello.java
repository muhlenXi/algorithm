import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class Hello {
    public void test() {
        Node n1 = new Node(1);
        Node n2 = new Node(2);
        Node n3 = new Node(3);
        Node n4 = new Node(4);
        Node n5 = new Node(5);
        Node n6 = new Node(6);

        n3.children = Arrays.asList(n5, n6);
        n1.children = Arrays.asList(n3, n2, n4);

        System.out.println(n3.children);
        //System.out.println(preorder(n1));
    }


    public List<Integer> preorder(Node root) {
        List<Integer> list = new ArrayList<Integer>();
        list.add(root.val);

        if (root.children == null) {
            return list;
        }
        for (int i = 0; i < root.children.size(); i++) {
            list.addAll(list.size()-1, preorder(root.children.get(i)));
        }

        return  list;
    }
}


class Node {
    public int val;
    public List<Node> children;

    public Node() {}

    public Node(int _val) {
        val = _val;
    }

    public Node(int _val, List<Node> _children) {
        val = _val;
        children = _children;
    }
};


