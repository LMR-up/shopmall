package com.dfrz.util;

import java.util.Locale;
import java.util.UUID;

public class Uuid {
    public static String uuid() {
        String uuidstr = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase(Locale.ROOT);
        return uuidstr;
    }
}
