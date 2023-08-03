package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.ser.impl.c;
import d2.a;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public abstract class AsArraySerializerBase<T> extends ContainerSerializer<T> implements e {

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f15730d;

    /* renamed from: e  reason: collision with root package name */
    protected final BeanProperty f15731e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f15732f;

    /* renamed from: g  reason: collision with root package name */
    protected final Boolean f15733g;

    /* renamed from: h  reason: collision with root package name */
    protected final f f15734h;

    /* renamed from: i  reason: collision with root package name */
    protected final g<Object> f15735i;

    /* renamed from: j  reason: collision with root package name */
    protected c f15736j;

    /* JADX INFO: Access modifiers changed from: protected */
    public AsArraySerializerBase(Class<?> cls, JavaType javaType, boolean z9, f fVar, g<Object> gVar) {
        this(cls, javaType, z9, fVar, null, gVar, null);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        g<Object> gVar = this.f15735i;
        if (gVar == null && this.f15730d != null) {
            gVar = fVar.a().findContentValueSerializer(this.f15730d, this.f15731e);
        }
        o(fVar, javaType, gVar, this.f15730d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @Override // com.fasterxml.jackson.databind.ser.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.g<?> createContextual(com.fasterxml.jackson.databind.l r6, com.fasterxml.jackson.databind.BeanProperty r7) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r5 = this;
            com.fasterxml.jackson.databind.jsontype.f r0 = r5.f15734h
            if (r0 == 0) goto L8
            com.fasterxml.jackson.databind.jsontype.f r0 = r0.b(r7)
        L8:
            r1 = 0
            if (r7 == 0) goto L20
            com.fasterxml.jackson.databind.AnnotationIntrospector r2 = r6.getAnnotationIntrospector()
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r3 = r7.getMember()
            if (r3 == 0) goto L20
            java.lang.Object r2 = r2.findContentSerializer(r3)
            if (r2 == 0) goto L20
            com.fasterxml.jackson.databind.g r2 = r6.serializerInstance(r3, r2)
            goto L21
        L20:
            r2 = r1
        L21:
            java.lang.Class r3 = r5.handledType()
            com.fasterxml.jackson.annotation.JsonFormat$Value r3 = r5.k(r6, r7, r3)
            if (r3 == 0) goto L31
            com.fasterxml.jackson.annotation.JsonFormat$Feature r1 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r1 = r3.getFeature(r1)
        L31:
            if (r2 != 0) goto L35
            com.fasterxml.jackson.databind.g<java.lang.Object> r2 = r5.f15735i
        L35:
            com.fasterxml.jackson.databind.g r2 = r5.h(r6, r7, r2)
            if (r2 != 0) goto L4f
            com.fasterxml.jackson.databind.JavaType r3 = r5.f15730d
            if (r3 == 0) goto L4f
            boolean r4 = r5.f15732f
            if (r4 == 0) goto L4f
            boolean r3 = r3.isJavaLangObject()
            if (r3 != 0) goto L4f
            com.fasterxml.jackson.databind.JavaType r2 = r5.f15730d
            com.fasterxml.jackson.databind.g r2 = r6.findContentValueSerializer(r2, r7)
        L4f:
            com.fasterxml.jackson.databind.g<java.lang.Object> r6 = r5.f15735i
            if (r2 != r6) goto L65
            com.fasterxml.jackson.databind.BeanProperty r6 = r5.f15731e
            if (r7 != r6) goto L65
            com.fasterxml.jackson.databind.jsontype.f r6 = r5.f15734h
            if (r6 != r0) goto L65
            java.lang.Boolean r6 = r5.f15733g
            boolean r6 = java.util.Objects.equals(r6, r1)
            if (r6 != 0) goto L64
            goto L65
        L64:
            return r5
        L65:
            com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase r6 = r5.withResolved(r7, r0, r2, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase.createContextual(com.fasterxml.jackson.databind.l, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.g");
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public g<?> getContentSerializer() {
        return this.f15735i;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this.f15730d;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) throws JsonMappingException {
        ObjectNode d4 = d("array", true);
        g<Object> gVar = this.f15735i;
        if (gVar != null) {
            com.fasterxml.jackson.databind.e schema = gVar instanceof d2.c ? ((d2.c) gVar).getSchema(lVar, null) : null;
            if (schema == null) {
                schema = a.a();
            }
            d4.set("items", schema);
        }
        return d4;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && hasSingleElement(t9)) {
            serializeContents(t9, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.I1(t9);
        serializeContents(t9, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    protected abstract void serializeContents(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException;

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(T t9, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(t9, JsonToken.START_ARRAY));
        jsonGenerator.w0(t9);
        serializeContents(t9, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g<Object> w(c cVar, JavaType javaType, l lVar) throws JsonMappingException {
        c.d j4 = cVar.j(javaType, lVar, this.f15731e);
        c cVar2 = j4.f15708b;
        if (cVar != cVar2) {
            this.f15736j = cVar2;
        }
        return j4.f15707a;
    }

    @Deprecated
    public final AsArraySerializerBase<T> withResolved(BeanProperty beanProperty, f fVar, g<?> gVar) {
        return withResolved(beanProperty, fVar, gVar, this.f15733g);
    }

    public abstract AsArraySerializerBase<T> withResolved(BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool);

    /* JADX INFO: Access modifiers changed from: protected */
    public final g<Object> x(c cVar, Class<?> cls, l lVar) throws JsonMappingException {
        c.d k10 = cVar.k(cls, lVar, this.f15731e);
        c cVar2 = k10.f15708b;
        if (cVar != cVar2) {
            this.f15736j = cVar2;
        }
        return k10.f15707a;
    }

    @Deprecated
    protected AsArraySerializerBase(Class<?> cls, JavaType javaType, boolean z9, f fVar, BeanProperty beanProperty, g<Object> gVar) {
        this(cls, javaType, z9, fVar, beanProperty, gVar, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected AsArraySerializerBase(Class<?> cls, JavaType javaType, boolean z9, f fVar, BeanProperty beanProperty, g<?> gVar, Boolean bool) {
        super(cls, false);
        boolean z10 = false;
        this.f15730d = javaType;
        if (z9 || (javaType != null && javaType.isFinal())) {
            z10 = true;
        }
        this.f15732f = z10;
        this.f15734h = fVar;
        this.f15731e = beanProperty;
        this.f15735i = gVar;
        this.f15736j = c.c();
        this.f15733g = bool;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AsArraySerializerBase(AsArraySerializerBase<?> asArraySerializerBase, BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        super(asArraySerializerBase);
        this.f15730d = asArraySerializerBase.f15730d;
        this.f15732f = asArraySerializerBase.f15732f;
        this.f15734h = fVar;
        this.f15731e = beanProperty;
        this.f15735i = gVar;
        this.f15736j = c.c();
        this.f15733g = bool;
    }

    @Deprecated
    protected AsArraySerializerBase(AsArraySerializerBase<?> asArraySerializerBase, BeanProperty beanProperty, f fVar, g<?> gVar) {
        this(asArraySerializerBase, beanProperty, fVar, gVar, asArraySerializerBase.f15733g);
    }
}
