package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;

/* loaded from: classes.dex */
public class PropertyBasedObjectIdGenerator extends ObjectIdGenerators.PropertyGenerator {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15664d = 1;

    /* renamed from: c  reason: collision with root package name */
    protected final BeanPropertyWriter f15665c;

    public PropertyBasedObjectIdGenerator(p pVar, BeanPropertyWriter beanPropertyWriter) {
        this(pVar.f(), beanPropertyWriter);
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.PropertyGenerator, com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
    public boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator) {
        if (objectIdGenerator.getClass() == getClass()) {
            PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator = (PropertyBasedObjectIdGenerator) objectIdGenerator;
            return propertyBasedObjectIdGenerator.getScope() == this.f13655a && propertyBasedObjectIdGenerator.f15665c == this.f15665c;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
    public ObjectIdGenerator<Object> forScope(Class<?> cls) {
        return cls == this.f13655a ? this : new PropertyBasedObjectIdGenerator(cls, this.f15665c);
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.a, com.fasterxml.jackson.annotation.ObjectIdGenerator
    public Object generateId(Object obj) {
        try {
            return this.f15665c.get(obj);
        } catch (RuntimeException e4) {
            throw e4;
        } catch (Exception e10) {
            throw new IllegalStateException("Problem accessing property '" + this.f15665c.getName() + "': " + e10.getMessage(), e10);
        }
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

    protected PropertyBasedObjectIdGenerator(Class<?> cls, BeanPropertyWriter beanPropertyWriter) {
        super(cls);
        this.f15665c = beanPropertyWriter;
    }
}
