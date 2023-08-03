package com.fasterxml.jackson.databind.ser.std;

import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.b;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.ser.impl.c;
import java.io.IOException;
import java.util.Objects;

@a
/* loaded from: classes2.dex */
public class ObjectArraySerializer extends ArraySerializerBase<Object[]> implements e {

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f15808f;

    /* renamed from: g  reason: collision with root package name */
    protected final JavaType f15809g;

    /* renamed from: h  reason: collision with root package name */
    protected final f f15810h;

    /* renamed from: i  reason: collision with root package name */
    protected g<Object> f15811i;

    /* renamed from: j  reason: collision with root package name */
    protected c f15812j;

    public ObjectArraySerializer(JavaType javaType, boolean z9, f fVar, g<Object> gVar) {
        super(Object[].class);
        this.f15809g = javaType;
        this.f15808f = z9;
        this.f15810h = fVar;
        this.f15812j = c.c();
        this.f15811i = gVar;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new ObjectArraySerializer(this, beanProperty, this.f15810h, this.f15811i, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(f fVar) {
        return new ObjectArraySerializer(this.f15809g, this.f15808f, fVar, this.f15811i);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        b o9 = fVar.o(javaType);
        if (o9 != null) {
            JavaType javaType2 = this.f15809g;
            g<Object> gVar = this.f15811i;
            if (gVar == null) {
                gVar = fVar.a().findContentValueSerializer(javaType2, this.f15728d);
            }
            o9.c(gVar, javaType2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.g<?> createContextual(com.fasterxml.jackson.databind.l r6, com.fasterxml.jackson.databind.BeanProperty r7) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r5 = this;
            com.fasterxml.jackson.databind.jsontype.f r0 = r5.f15810h
            if (r0 == 0) goto L8
            com.fasterxml.jackson.databind.jsontype.f r0 = r0.b(r7)
        L8:
            r1 = 0
            if (r7 == 0) goto L20
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r2 = r7.getMember()
            com.fasterxml.jackson.databind.AnnotationIntrospector r3 = r6.getAnnotationIntrospector()
            if (r2 == 0) goto L20
            java.lang.Object r3 = r3.findContentSerializer(r2)
            if (r3 == 0) goto L20
            com.fasterxml.jackson.databind.g r2 = r6.serializerInstance(r2, r3)
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
            com.fasterxml.jackson.databind.g<java.lang.Object> r2 = r5.f15811i
        L35:
            com.fasterxml.jackson.databind.g r2 = r5.h(r6, r7, r2)
            if (r2 != 0) goto L4f
            com.fasterxml.jackson.databind.JavaType r3 = r5.f15809g
            if (r3 == 0) goto L4f
            boolean r4 = r5.f15808f
            if (r4 == 0) goto L4f
            boolean r3 = r3.isJavaLangObject()
            if (r3 != 0) goto L4f
            com.fasterxml.jackson.databind.JavaType r2 = r5.f15809g
            com.fasterxml.jackson.databind.g r2 = r6.findContentValueSerializer(r2, r7)
        L4f:
            com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer r6 = r5.withResolved(r7, r0, r2, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer.createContextual(com.fasterxml.jackson.databind.l, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.g");
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public g<?> getContentSerializer() {
        return this.f15811i;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this.f15809g;
    }

    public void serializeContentsUsing(Object[] objArr, JsonGenerator jsonGenerator, l lVar, g<Object> gVar) throws IOException {
        int length = objArr.length;
        f fVar = this.f15810h;
        Object obj = null;
        for (int i4 = 0; i4 < length; i4++) {
            try {
                obj = objArr[i4];
                if (obj == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else if (fVar == null) {
                    gVar.serialize(obj, jsonGenerator, lVar);
                } else {
                    gVar.serializeWithType(obj, jsonGenerator, lVar, fVar);
                }
            } catch (Exception e4) {
                wrapAndThrow(lVar, e4, obj, i4);
                return;
            }
        }
    }

    public void serializeTypedContents(Object[] objArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int length = objArr.length;
        f fVar = this.f15810h;
        int i4 = 0;
        Object obj = null;
        try {
            c cVar = this.f15812j;
            while (i4 < length) {
                obj = objArr[i4];
                if (obj == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else {
                    Class<?> cls = obj.getClass();
                    g<Object> m9 = cVar.m(cls);
                    if (m9 == null) {
                        m9 = y(cVar, cls, lVar);
                    }
                    m9.serializeWithType(obj, jsonGenerator, lVar, fVar);
                }
                i4++;
            }
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, obj, i4);
        }
    }

    public ObjectArraySerializer withResolved(BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        return (this.f15728d == beanProperty && gVar == this.f15811i && this.f15810h == fVar && Objects.equals(this.f15729e, bool)) ? this : new ObjectArraySerializer(this, beanProperty, fVar, gVar, bool);
    }

    protected final g<Object> x(c cVar, JavaType javaType, l lVar) throws JsonMappingException {
        c.d j4 = cVar.j(javaType, lVar, this.f15728d);
        c cVar2 = j4.f15708b;
        if (cVar != cVar2) {
            this.f15812j = cVar2;
        }
        return j4.f15707a;
    }

    protected final g<Object> y(c cVar, Class<?> cls, l lVar) throws JsonMappingException {
        c.d k10 = cVar.k(cls, lVar, this.f15728d);
        c cVar2 = k10.f15708b;
        if (cVar != cVar2) {
            this.f15812j = cVar2;
        }
        return k10.f15707a;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Object[] objArr) {
        return objArr.length == 1;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Object[] objArr) {
        return objArr.length == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Object[] objArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int length = objArr.length;
        if (length == 1 && ((this.f15729e == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15729e == Boolean.TRUE)) {
            serializeContents(objArr, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.J1(objArr, length);
        serializeContents(objArr, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public void serializeContents(Object[] objArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int length = objArr.length;
        if (length == 0) {
            return;
        }
        g<Object> gVar = this.f15811i;
        if (gVar != null) {
            serializeContentsUsing(objArr, jsonGenerator, lVar, gVar);
        } else if (this.f15810h != null) {
            serializeTypedContents(objArr, jsonGenerator, lVar);
        } else {
            int i4 = 0;
            Object obj = null;
            try {
                c cVar = this.f15812j;
                while (i4 < length) {
                    obj = objArr[i4];
                    if (obj == null) {
                        lVar.defaultSerializeNull(jsonGenerator);
                    } else {
                        Class<?> cls = obj.getClass();
                        g<Object> m9 = cVar.m(cls);
                        if (m9 == null) {
                            if (this.f15809g.hasGenericTypes()) {
                                m9 = x(cVar, lVar.constructSpecializedType(this.f15809g, cls), lVar);
                            } else {
                                m9 = y(cVar, cls, lVar);
                            }
                        }
                        m9.serialize(obj, jsonGenerator, lVar);
                    }
                    i4++;
                }
            } catch (Exception e4) {
                wrapAndThrow(lVar, e4, obj, i4);
            }
        }
    }

    public ObjectArraySerializer(ObjectArraySerializer objectArraySerializer, f fVar) {
        super(objectArraySerializer);
        this.f15809g = objectArraySerializer.f15809g;
        this.f15810h = fVar;
        this.f15808f = objectArraySerializer.f15808f;
        this.f15812j = objectArraySerializer.f15812j;
        this.f15811i = objectArraySerializer.f15811i;
    }

    public ObjectArraySerializer(ObjectArraySerializer objectArraySerializer, BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        super(objectArraySerializer, beanProperty, bool);
        this.f15809g = objectArraySerializer.f15809g;
        this.f15810h = fVar;
        this.f15808f = objectArraySerializer.f15808f;
        this.f15812j = c.c();
        this.f15811i = gVar;
    }
}
