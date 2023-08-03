package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.a0;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum JsonFormatTypes {
    STRING,
    NUMBER,
    INTEGER,
    BOOLEAN,
    OBJECT,
    ARRAY,
    NULL,
    ANY;
    

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, JsonFormatTypes> f15381a = new HashMap();

    static {
        JsonFormatTypes[] values;
        for (JsonFormatTypes jsonFormatTypes : values()) {
            f15381a.put(jsonFormatTypes.name().toLowerCase(), jsonFormatTypes);
        }
    }

    @JsonCreator
    public static JsonFormatTypes forValue(String str) {
        return f15381a.get(str);
    }

    @a0
    public String value() {
        return name().toLowerCase();
    }
}
