public class ArrayStack {

    private int index;
    private String[] stack;

    public ArrayStack(int capacity) {
        stack = new String[capacity];
        index = -1;
    }

    public boolean push(String value){
        if(index+1 >= stack.length) {
            return false;
        }
        index += 1;
        stack[index] = value;
        return true;
    }

    public String pop(){
        if(index < 0) {
            return null;
        }
        String value = stack[index];
        index -= 1;
        return value;
    }

    public static void main(String[] args) {
        ArrayStack stack = new ArrayStack(3);

        stack.push("2");
        stack.push("3");
        stack.push("4");

        System.out.println(stack.pop());
        System.out.println(stack.pop());
        System.out.println(stack.pop());
    }
}