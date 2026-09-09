package com.harbor;

public final class SourceSmokeTest {
    private SourceSmokeTest() {}

    public static void main(String[] args) {
        if (App.class.getName().isBlank()) {
            throw new AssertionError("应用入口不可用");
        }
    }
}

