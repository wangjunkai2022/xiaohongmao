package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.deser.impl.j;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;

/* loaded from: classes.dex */
public class SettableAnyProperty implements Serializable {

    /* renamed from: h  reason: collision with root package name */
    private static final long f14630h = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final BeanProperty f14631a;

    /* renamed from: b  reason: collision with root package name */
    protected final AnnotatedMember f14632b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f14633c;

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f14634d;

    /* renamed from: e  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f14635e;

    /* renamed from: f  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14636f;

    /* renamed from: g  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.h f14637g;

    /* loaded from: classes.dex */
    private static class a extends j.a {

        /* renamed from: c  reason: collision with root package name */
        private final SettableAnyProperty f14638c;

        /* renamed from: d  reason: collision with root package name */
        private final Object f14639d;

        /* renamed from: e  reason: collision with root package name */
        private final String f14640e;

        public a(SettableAnyProperty settableAnyProperty, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls, Object obj, String str) {
            super(unresolvedForwardReference, cls);
            this.f14638c = settableAnyProperty;
            this.f14639d = obj;
            this.f14640e = str;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.j.a
        public void c(Object obj, Object obj2) throws IOException {
            if (d(obj)) {
                this.f14638c.set(this.f14639d, this.f14640e, obj2);
                return;
            }
            throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj.toString() + "] that wasn't previously registered.");
        }
    }

    public SettableAnyProperty(BeanProperty beanProperty, AnnotatedMember annotatedMember, JavaType javaType, com.fasterxml.jackson.databind.h hVar, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar) {
        this.f14631a = beanProperty;
        this.f14632b = annotatedMember;
        this.f14634d = javaType;
        this.f14635e = dVar;
        this.f14636f = bVar;
        this.f14637g = hVar;
        this.f14633c = annotatedMember instanceof AnnotatedField;
    }

    private String b() {
        return this.f14632b.getDeclaringClass().getName();
    }

    protected void a(Exception exc, Object obj, Object obj2) throws IOException {
        if (exc instanceof IllegalArgumentException) {
            String j4 = com.fasterxml.jackson.databind.util.g.j(obj2);
            StringBuilder sb = new StringBuilder("Problem deserializing \"any\" property '");
            sb.append(obj);
            sb.append("' of class " + b() + " (expected type: ");
            sb.append(this.f14634d);
            sb.append("; actual type: ");
            sb.append(j4);
            sb.append(")");
            String q9 = com.fasterxml.jackson.databind.util.g.q(exc);
            if (q9 != null) {
                sb.append(", problem: ");
                sb.append(q9);
            } else {
                sb.append(" (no error message provided)");
            }
            throw new JsonMappingException((Closeable) null, sb.toString(), exc);
        }
        com.fasterxml.jackson.databind.util.g.u0(exc);
        com.fasterxml.jackson.databind.util.g.v0(exc);
        Throwable O = com.fasterxml.jackson.databind.util.g.O(exc);
        throw new JsonMappingException((Closeable) null, com.fasterxml.jackson.databind.util.g.q(O), O);
    }

    Object c() {
        AnnotatedMember annotatedMember = this.f14632b;
        if (annotatedMember == null || annotatedMember.getAnnotated() == null) {
            throw new IllegalArgumentException("Missing method (broken JDK (de)serialization?)");
        }
        return this;
    }

    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            return this.f14635e.getNullValue(deserializationContext);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14636f;
        if (bVar != null) {
            return this.f14635e.deserializeWithType(jsonParser, deserializationContext, bVar);
        }
        return this.f14635e.deserialize(jsonParser, deserializationContext);
    }

    public final void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        try {
            com.fasterxml.jackson.databind.h hVar = this.f14637g;
            set(obj, hVar == null ? str : hVar.deserializeKey(str, deserializationContext), deserialize(jsonParser, deserializationContext));
        } catch (UnresolvedForwardReference e4) {
            if (this.f14635e.getObjectIdReader() != null) {
                e4.getRoid().a(new a(this, e4, this.f14634d.getRawClass(), obj, str));
                return;
            }
            throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info.", e4);
        }
    }

    public void fixAccess(DeserializationConfig deserializationConfig) {
        this.f14632b.fixAccess(deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    public BeanProperty getProperty() {
        return this.f14631a;
    }

    public JavaType getType() {
        return this.f14634d;
    }

    public boolean hasValueDeserializer() {
        return this.f14635e != null;
    }

    public void set(Object obj, Object obj2, Object obj3) throws IOException {
        try {
            if (this.f14633c) {
                Map map = (Map) ((AnnotatedField) this.f14632b).getValue(obj);
                if (map != null) {
                    map.put(obj2, obj3);
                }
            } else {
                ((AnnotatedMethod) this.f14632b).callOnWith(obj, obj2, obj3);
            }
        } catch (Exception e4) {
            a(e4, obj2, obj3);
        }
    }

    public String toString() {
        return "[any property on class " + b() + "]";
    }

    public SettableAnyProperty withValueDeserializer(com.fasterxml.jackson.databind.d<Object> dVar) {
        return new SettableAnyProperty(this.f14631a, this.f14632b, this.f14634d, this.f14637g, dVar, this.f14636f);
    }

    @Deprecated
    public SettableAnyProperty(BeanProperty beanProperty, AnnotatedMember annotatedMember, JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar) {
        this(beanProperty, annotatedMember, javaType, null, dVar, bVar);
    }
}
