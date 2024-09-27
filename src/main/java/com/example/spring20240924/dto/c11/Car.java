package com.example.spring20240924.dto.c11;

public class Car {
    private String modelName;
    private Integer price;
    private boolean expired;

    public Car(String modelName, Integer price, boolean expired) {
        this.modelName = modelName;
        this.price = price;
        this.expired = expired;
    }

    public String getModelName() {
        return modelName;
    }

    public Integer getPrice() {
        return price;
    }

    public boolean getExpired() {
        return expired;
    }
}
