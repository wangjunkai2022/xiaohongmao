package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.RuntimeJsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.d;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import d2.c;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;

@c2.a
/* loaded from: classes2.dex */
public class JsonValueSerializer extends StdSerializer<Object> implements e, d, c {

    /* renamed from: d  reason: collision with root package name */
    protected final AnnotatedMember f15762d;

    /* renamed from: e  reason: collision with root package name */
    protected final f f15763e;

    /* renamed from: f  reason: collision with root package name */
    protected final g<Object> f15764f;

    /* renamed from: g  reason: collision with root package name */
    protected final BeanProperty f15765g;

    /* renamed from: h  reason: collision with root package name */
    protected final JavaType f15766h;

    /* renamed from: i  reason: collision with root package name */
    protected final boolean f15767i;

    /* renamed from: j  reason: collision with root package name */
    protected transient com.fasterxml.jackson.databind.ser.impl.c f15768j;

    /* loaded from: classes2.dex */
    static class a extends f {

        /* renamed from: a  reason: collision with root package name */
        protected final f f15769a;

        /* renamed from: b  reason: collision with root package name */
        protected final Object f15770b;

        public a(f fVar, Object obj) {
            this.f15769a = fVar;
            this.f15770b = obj;
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        public f b(BeanProperty beanProperty) {
            throw new UnsupportedOperationException();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        public String c() {
            return this.f15769a.c();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        public com.fasterxml.jackson.databind.jsontype.c d() {
            return this.f15769a.d();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        public JsonTypeInfo.As e() {
            return this.f15769a.e();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void i(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this.f15769a.i(this.f15770b, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void j(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this.f15769a.j(this.f15770b, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void k(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this.f15769a.k(this.f15770b, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void l(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this.f15769a.l(this.f15770b, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void m(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this.f15769a.m(this.f15770b, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void n(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this.f15769a.n(this.f15770b, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        public WritableTypeId o(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
            writableTypeId.f14222a = this.f15770b;
            return this.f15769a.o(jsonGenerator, writableTypeId);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void p(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this.f15769a.p(this.f15770b, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void q(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this.f15769a.q(this.f15770b, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void r(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this.f15769a.r(this.f15770b, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void s(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this.f15769a.s(this.f15770b, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void t(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this.f15769a.t(this.f15770b, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void u(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this.f15769a.u(this.f15770b, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        public WritableTypeId v(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
            return this.f15769a.v(jsonGenerator, writableTypeId);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void w(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this.f15769a.w(this.f15770b, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void x(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this.f15769a.x(this.f15770b, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.f
        @Deprecated
        public void y(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this.f15769a.y(this.f15770b, jsonGenerator);
        }
    }

    public JsonValueSerializer(AnnotatedMember annotatedMember, f fVar, g<?> gVar) {
        super(annotatedMember.getType());
        this.f15762d = annotatedMember;
        this.f15766h = annotatedMember.getType();
        this.f15763e = fVar;
        this.f15764f = gVar;
        this.f15765g = null;
        this.f15767i = true;
        this.f15768j = com.fasterxml.jackson.databind.ser.impl.c.c();
    }

    private static final Class<Object> x(Class<?> cls) {
        return cls == null ? Object.class : cls;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        Class<?> declaringClass = this.f15762d.getDeclaringClass();
        if (declaringClass != null && com.fasterxml.jackson.databind.util.g.X(declaringClass) && v(fVar, javaType, declaringClass)) {
            return;
        }
        g<Object> gVar = this.f15764f;
        if (gVar == null && (gVar = fVar.a().findTypedValueSerializer(this.f15766h, false, this.f15765g)) == null) {
            fVar.j(javaType);
        } else {
            gVar.acceptJsonFormatVisitor(fVar, this.f15766h);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        f fVar = this.f15763e;
        if (fVar != null) {
            fVar = fVar.b(beanProperty);
        }
        g<?> gVar = this.f15764f;
        if (gVar == null) {
            if (!lVar.isEnabled(MapperFeature.USE_STATIC_TYPING) && !this.f15766h.isFinal()) {
                return beanProperty != this.f15765g ? z(beanProperty, fVar, gVar, this.f15767i) : this;
            }
            g<Object> findPrimaryPropertySerializer = lVar.findPrimaryPropertySerializer(this.f15766h, beanProperty);
            return z(beanProperty, fVar, findPrimaryPropertySerializer, y(this.f15766h.getRawClass(), findPrimaryPropertySerializer));
        }
        return z(beanProperty, fVar, lVar.handlePrimaryContextualization(gVar, beanProperty), this.f15767i);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) throws JsonMappingException {
        g<Object> gVar = this.f15764f;
        if (gVar instanceof c) {
            return ((c) gVar).getSchema(lVar, null);
        }
        return d2.a.a();
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Object obj) {
        Object value = this.f15762d.getValue(obj);
        if (value == null) {
            return true;
        }
        g<Object> gVar = this.f15764f;
        if (gVar == null) {
            try {
                gVar = w(lVar, value.getClass());
            } catch (JsonMappingException e4) {
                throw new RuntimeJsonMappingException(e4);
            }
        }
        return gVar.isEmpty(lVar, value);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        Object obj2;
        try {
            obj2 = this.f15762d.getValue(obj);
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, obj, this.f15762d.getName() + "()");
            obj2 = null;
        }
        if (obj2 == null) {
            lVar.defaultSerializeNull(jsonGenerator);
            return;
        }
        g<Object> gVar = this.f15764f;
        if (gVar == null) {
            gVar = w(lVar, obj2.getClass());
        }
        f fVar = this.f15763e;
        if (fVar != null) {
            gVar.serializeWithType(obj2, jsonGenerator, lVar, fVar);
        } else {
            gVar.serialize(obj2, jsonGenerator, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        Object obj2;
        try {
            obj2 = this.f15762d.getValue(obj);
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, obj, this.f15762d.getName() + "()");
            obj2 = null;
        }
        if (obj2 == null) {
            lVar.defaultSerializeNull(jsonGenerator);
            return;
        }
        g<Object> gVar = this.f15764f;
        if (gVar == null) {
            gVar = w(lVar, obj2.getClass());
        } else if (this.f15767i) {
            WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(obj, JsonToken.VALUE_STRING));
            gVar.serialize(obj2, jsonGenerator, lVar);
            fVar.v(jsonGenerator, o9);
            return;
        }
        gVar.serializeWithType(obj2, jsonGenerator, lVar, new a(fVar, obj));
    }

    public String toString() {
        return "(@JsonValue serializer for method " + this.f15762d.getDeclaringClass() + "#" + this.f15762d.getName() + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected boolean v(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType, Class<?> cls) throws JsonMappingException {
        Object[] enumConstants;
        com.fasterxml.jackson.databind.jsonFormatVisitors.l i4 = fVar.i(javaType);
        if (i4 != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : cls.getEnumConstants()) {
                try {
                    linkedHashSet.add(String.valueOf(this.f15762d.getValue(obj)));
                } catch (Exception e4) {
                    e = e4;
                    while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                        e = e.getCause();
                    }
                    com.fasterxml.jackson.databind.util.g.t0(e);
                    throw JsonMappingException.wrapWithPath(e, obj, this.f15762d.getName() + "()");
                }
            }
            i4.b(linkedHashSet);
            return true;
        }
        return true;
    }

    protected g<Object> w(l lVar, Class<?> cls) throws JsonMappingException {
        g<Object> m9 = this.f15768j.m(cls);
        if (m9 == null) {
            if (this.f15766h.hasGenericTypes()) {
                JavaType constructSpecializedType = lVar.constructSpecializedType(this.f15766h, cls);
                g<Object> findPrimaryPropertySerializer = lVar.findPrimaryPropertySerializer(constructSpecializedType, this.f15765g);
                this.f15768j = this.f15768j.a(constructSpecializedType, findPrimaryPropertySerializer).f15708b;
                return findPrimaryPropertySerializer;
            }
            g<Object> findPrimaryPropertySerializer2 = lVar.findPrimaryPropertySerializer(cls, this.f15765g);
            this.f15768j = this.f15768j.b(cls, findPrimaryPropertySerializer2).f15708b;
            return findPrimaryPropertySerializer2;
        }
        return m9;
    }

    protected boolean y(Class<?> cls, g<?> gVar) {
        if (cls.isPrimitive()) {
            if (cls != Integer.TYPE && cls != Boolean.TYPE && cls != Double.TYPE) {
                return false;
            }
        } else if (cls != String.class && cls != Integer.class && cls != Boolean.class && cls != Double.class) {
            return false;
        }
        return n(gVar);
    }

    protected JsonValueSerializer z(BeanProperty beanProperty, f fVar, g<?> gVar, boolean z9) {
        return (this.f15765g == beanProperty && this.f15763e == fVar && this.f15764f == gVar && z9 == this.f15767i) ? this : new JsonValueSerializer(this, beanProperty, fVar, gVar, z9);
    }

    @Deprecated
    public JsonValueSerializer(AnnotatedMember annotatedMember, g<?> gVar) {
        this(annotatedMember, null, gVar);
    }

    public JsonValueSerializer(JsonValueSerializer jsonValueSerializer, BeanProperty beanProperty, f fVar, g<?> gVar, boolean z9) {
        super(x(jsonValueSerializer.handledType()));
        this.f15762d = jsonValueSerializer.f15762d;
        this.f15766h = jsonValueSerializer.f15766h;
        this.f15763e = fVar;
        this.f15764f = gVar;
        this.f15765g = beanProperty;
        this.f15767i = z9;
        this.f15768j = com.fasterxml.jackson.databind.ser.impl.c.c();
    }
}
