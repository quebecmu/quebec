package app;

import model.Base;

public class App {
    public static void main(String[] args) {
        Base base = new Base();
        base.setID("1234567890");

        System.out.println("hello world!");
        System.out.println(base);
    }
}
