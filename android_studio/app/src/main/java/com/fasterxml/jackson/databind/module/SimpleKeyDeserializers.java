package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.b;
import com.fasterxml.jackson.databind.deser.j;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SimpleKeyDeserializers implements j, Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15502b = 1;

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<ClassKey, h> f15503a = null;

    public SimpleKeyDeserializers addDeserializer(Class<?> cls, h hVar) {
        if (this.f15503a == null) {
            this.f15503a = new HashMap<>();
        }
        this.f15503a.put(new ClassKey(cls), hVar);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.deser.j
    public h findKeyDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, b bVar) {
        HashMap<ClassKey, h> hashMap = this.f15503a;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(new ClassKey(javaType.getRawClass()));
    }
}
