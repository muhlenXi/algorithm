import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class Hello {
    public void test() {

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
}




