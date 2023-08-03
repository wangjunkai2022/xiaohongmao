package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
public final class ManagedReferenceProperty extends SettableBeanProperty.Delegating {

    /* renamed from: t  reason: collision with root package name */
    private static final long f14707t = 1;

    /* renamed from: q  reason: collision with root package name */
    protected final String f14708q;

    /* renamed from: r  reason: collision with root package name */
    protected final boolean f14709r;

    /* renamed from: s  reason: collision with root package name */
    protected final SettableBeanProperty f14710s;

    public ManagedReferenceProperty(SettableBeanProperty settableBeanProperty, String str, SettableBeanProperty settableBeanProperty2, boolean z9) {
        super(settableBeanProperty);
        this.f14708q = str;
        this.f14710s = settableBeanProperty2;
        this.f14709r = z9;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        set(obj, this.f14653p.deserialize(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        this.f14653p.fixAccess(deserializationConfig);
        this.f14710s.fixAccess(deserializationConfig);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating
    protected SettableBeanProperty i(SettableBeanProperty settableBeanProperty) {
        throw new IllegalStateException("Should never try to reset delegate");
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        setAndReturn(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        Object[] objArr;
        if (obj2 != null) {
            if (this.f14709r) {
                if (obj2 instanceof Object[]) {
                    for (Object obj3 : (Object[]) obj2) {
                        if (obj3 != null) {
                            this.f14710s.set(obj3, obj);
                        }
                    }
                } else if (obj2 instanceof Collection) {
                    for (Object obj4 : (Collection) obj2) {
                        if (obj4 != null) {
                            this.f14710s.set(obj4, obj);
                        }
                    }
                } else if (obj2 instanceof Map) {
                    for (Object obj5 : ((Map) obj2).values()) {
                        if (obj5 != null) {
                            this.f14710s.set(obj5, obj);
                        }
                    }
                } else {
                    throw new IllegalStateException("Unsupported container type (" + obj2.getClass().getName() + ") when resolving reference '" + this.f14708q + "'");
                }
            } else {
                this.f14710s.set(obj2, obj);
            }
        }
        return this.f14653p.setAndReturn(obj, obj2);
    }
}
