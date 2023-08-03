package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

/* loaded from: classes.dex */
public class PropertyBasedObjectIdGenerator extends ObjectIdGenerators.PropertyGenerator {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14736c = 1;

    public PropertyBasedObjectIdGenerator(Class<?> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
    public ObjectIdGenerator<Object> forScope(Class<?> cls) {
        return cls == this.f13655a ? this : new PropertyBasedObjectIdGenerator(cls);
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
    public Object generateId(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
    public ObjectIdGenerator.IdKey key(Object obj) {
        if (obj == null) {
            return null;
        }
        return new ObjectIdGenerator.IdKey(getClass(), this.f13655a, obj);
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
    public ObjectIdGenerator<Object> newForSerialization(Object obj) {
        return this;
    }
}
