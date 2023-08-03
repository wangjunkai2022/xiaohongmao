package com.fasterxml.jackson.databind.ser.std;

import c2.a;

@a
/* loaded from: classes2.dex */
public class ToStringSerializer extends ToStringSerializerBase {
    public static final ToStringSerializer instance = new ToStringSerializer();

    public ToStringSerializer() {
        super(Object.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ToStringSerializerBase
    public final String valueToString(Object obj) {
        return obj.toString();
    }

    public ToStringSerializer(Class<?> cls) {
        super(cls);
    }
}
