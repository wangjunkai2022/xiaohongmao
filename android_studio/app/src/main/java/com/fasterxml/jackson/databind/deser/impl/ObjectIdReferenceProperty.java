package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.impl.j;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.p;
import java.io.IOException;
import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public class ObjectIdReferenceProperty extends SettableBeanProperty {

    /* renamed from: q  reason: collision with root package name */
    private static final long f14730q = 1;

    /* renamed from: p  reason: collision with root package name */
    private final SettableBeanProperty f14731p;

    /* loaded from: classes.dex */
    public static final class a extends j.a {

        /* renamed from: c  reason: collision with root package name */
        private final ObjectIdReferenceProperty f14732c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f14733d;

        public a(ObjectIdReferenceProperty objectIdReferenceProperty, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls, Object obj) {
            super(unresolvedForwardReference, cls);
            this.f14732c = objectIdReferenceProperty;
            this.f14733d = obj;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.j.a
        public void c(Object obj, Object obj2) throws IOException {
            if (d(obj)) {
                this.f14732c.set(this.f14733d, obj2);
                return;
            }
            throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj + "] that wasn't previously seen as unresolved.");
        }
    }

    public ObjectIdReferenceProperty(SettableBeanProperty settableBeanProperty, p pVar) {
        super(settableBeanProperty);
        this.f14731p = settableBeanProperty;
        this.f14650l = pVar;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        deserializeSetAndReturn(jsonParser, deserializationContext, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        try {
            return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
        } catch (UnresolvedForwardReference e4) {
            if ((this.f14650l == null && this.f14646h.getObjectIdReader() == null) ? false : true) {
                e4.getRoid().a(new a(this, e4, this.f14643e.getRawClass(), obj));
                return null;
            }
            throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info", e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        SettableBeanProperty settableBeanProperty = this.f14731p;
        if (settableBeanProperty != null) {
            settableBeanProperty.fixAccess(deserializationConfig);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f14731p.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public int getCreatorIndex() {
        return this.f14731p.getCreatorIndex();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this.f14731p.getMember();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void set(Object obj, Object obj2) throws IOException {
        this.f14731p.set(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        return this.f14731p.setAndReturn(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withName(PropertyName propertyName) {
        return new ObjectIdReferenceProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withNullProvider(l lVar) {
        return new ObjectIdReferenceProperty(this, this.f14646h, lVar);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withValueDeserializer(com.fasterxml.jackson.databind.d<?> dVar) {
        com.fasterxml.jackson.databind.d<?> dVar2 = this.f14646h;
        if (dVar2 == dVar) {
            return this;
        }
        l lVar = this.f14648j;
        if (dVar2 == lVar) {
            lVar = dVar;
        }
        return new ObjectIdReferenceProperty(this, dVar, lVar);
    }

    public ObjectIdReferenceProperty(ObjectIdReferenceProperty objectIdReferenceProperty, com.fasterxml.jackson.databind.d<?> dVar, l lVar) {
        super(objectIdReferenceProperty, dVar, lVar);
        this.f14731p = objectIdReferenceProperty.f14731p;
        this.f14650l = objectIdReferenceProperty.f14650l;
    }

    public ObjectIdReferenceProperty(ObjectIdReferenceProperty objectIdReferenceProperty, PropertyName propertyName) {
        super(objectIdReferenceProperty, propertyName);
        this.f14731p = objectIdReferenceProperty.f14731p;
        this.f14650l = objectIdReferenceProperty.f14650l;
    }
}
