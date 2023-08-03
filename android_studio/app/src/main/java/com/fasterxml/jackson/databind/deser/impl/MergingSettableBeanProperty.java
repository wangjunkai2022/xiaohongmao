package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.IOException;

/* loaded from: classes.dex */
public class MergingSettableBeanProperty extends SettableBeanProperty.Delegating {

    /* renamed from: r  reason: collision with root package name */
    private static final long f14711r = 1;

    /* renamed from: q  reason: collision with root package name */
    protected final AnnotatedMember f14712q;

    protected MergingSettableBeanProperty(SettableBeanProperty settableBeanProperty, AnnotatedMember annotatedMember) {
        super(settableBeanProperty);
        this.f14712q = annotatedMember;
    }

    public static MergingSettableBeanProperty construct(SettableBeanProperty settableBeanProperty, AnnotatedMember annotatedMember) {
        return new MergingSettableBeanProperty(settableBeanProperty, annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserializeWith;
        Object value = this.f14712q.getValue(obj);
        if (value == null) {
            deserializeWith = this.f14653p.deserialize(jsonParser, deserializationContext);
        } else {
            deserializeWith = this.f14653p.deserializeWith(jsonParser, deserializationContext, value);
        }
        if (deserializeWith != value) {
            this.f14653p.set(obj, deserializeWith);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserializeWith;
        Object value = this.f14712q.getValue(obj);
        if (value == null) {
            deserializeWith = this.f14653p.deserialize(jsonParser, deserializationContext);
        } else {
            deserializeWith = this.f14653p.deserializeWith(jsonParser, deserializationContext, value);
        }
        return (deserializeWith == value || deserializeWith == null) ? obj : this.f14653p.setAndReturn(obj, deserializeWith);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating
    protected SettableBeanProperty i(SettableBeanProperty settableBeanProperty) {
        return new MergingSettableBeanProperty(settableBeanProperty, this.f14712q);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void set(Object obj, Object obj2) throws IOException {
        if (obj2 != null) {
            this.f14653p.set(obj, obj2);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        return obj2 != null ? this.f14653p.setAndReturn(obj, obj2) : obj;
    }

    protected MergingSettableBeanProperty(MergingSettableBeanProperty mergingSettableBeanProperty, SettableBeanProperty settableBeanProperty) {
        super(settableBeanProperty);
        this.f14712q = mergingSettableBeanProperty.f14712q;
    }
}
