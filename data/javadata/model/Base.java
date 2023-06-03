package model;

import java.io.Serializable;

public class Base implements Serializable {
    private String ID;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    @Override
    public String toString() {
        return "Base{" +
                "ID='" + ID + '\'' +
                '}';
    }
}
