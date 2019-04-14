class A {
    public static void main(String[] args) {
        int[] x = new int[10];
        x[2] = 99;
        x[1] = 2;
        x[3] = x[2] + x[1];
        x[2] = x[1];
        System.out.println(x[1] + x[2] + x[3]);
    }
}