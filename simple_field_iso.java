class Field {
    int some;
    public static void main(String[] args) {
        Field x = new Field();
        x.some = x.some + 1;
        System.out.println(x.some);
    }
}