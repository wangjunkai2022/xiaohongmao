package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.b;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.o;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SimpleValueInstantiators extends o.a implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15524b = -8929386427526115130L;

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<ClassKey, ValueInstantiator> f15525a = new HashMap<>();

    public SimpleValueInstantiators addValueInstantiator(Class<?> cls, ValueInstantiator valueInstantiator) {
        this.f15525a.put(new ClassKey(cls), valueInstantiator);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.deser.o.a, com.fasterxml.jackson.databind.deser.o
    public ValueInstantiator findValueInstantiator(DeserializationConfig deserializationConfig, b bVar, ValueInstantiator valueInstantiator) {
        ValueInstantiator valueInstantiator2 = this.f15525a.get(new ClassKey(bVar.y()));
        return valueInstantiator2 == null ? valueInstantiator : valueInstantiator2;
    }
}
