package com.fasterxml.jackson.databind.ser.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.ArraySerializerBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.reflect.Type;

@c2.a
/* loaded from: classes.dex */
public class StringArraySerializer extends ArraySerializerBase<String[]> implements com.fasterxml.jackson.databind.ser.e {

    /* renamed from: g  reason: collision with root package name */
    private static final JavaType f15676g = TypeFactory.defaultInstance().uncheckedSimpleType(String.class);
    public static final StringArraySerializer instance = new StringArraySerializer();

    /* renamed from: f  reason: collision with root package name */
    protected final g<Object> f15677f;

    protected StringArraySerializer() {
        super(String[].class);
        this.f15677f = null;
    }

    private void x(String[] strArr, JsonGenerator jsonGenerator, l lVar, g<Object> gVar) throws IOException {
        int length = strArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (strArr[i4] == null) {
                lVar.defaultSerializeNull(jsonGenerator);
            } else {
                gVar.serialize(strArr[i4], jsonGenerator, lVar);
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new StringArraySerializer(this, beanProperty, this.f15677f, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(com.fasterxml.jackson.databind.jsontype.f fVar) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        p(fVar, javaType, JsonFormatTypes.STRING);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.g<?> createContextual(com.fasterxml.jackson.databind.l r5, com.fasterxml.jackson.databind.BeanProperty r6) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r4 = this;
            r0 = 0
            if (r6 == 0) goto L18
            com.fasterxml.jackson.databind.AnnotationIntrospector r1 = r5.getAnnotationIntrospector()
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r2 = r6.getMember()
            if (r2 == 0) goto L18
            java.lang.Object r1 = r1.findContentSerializer(r2)
            if (r1 == 0) goto L18
            com.fasterxml.jackson.databind.g r1 = r5.serializerInstance(r2, r1)
            goto L19
        L18:
            r1 = r0
        L19:
            java.lang.Class<java.lang.String[]> r2 = java.lang.String[].class
            com.fasterxml.jackson.annotation.JsonFormat$Feature r3 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r2 = r4.j(r5, r6, r2, r3)
            if (r1 != 0) goto L25
            com.fasterxml.jackson.databind.g<java.lang.Object> r1 = r4.f15677f
        L25:
            com.fasterxml.jackson.databind.g r1 = r4.h(r5, r6, r1)
            if (r1 != 0) goto L31
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            com.fasterxml.jackson.databind.g r1 = r5.findContentValueSerializer(r1, r6)
        L31:
            boolean r5 = r4.n(r1)
            if (r5 == 0) goto L38
            goto L39
        L38:
            r0 = r1
        L39:
            com.fasterxml.jackson.databind.g<java.lang.Object> r5 = r4.f15677f
            if (r0 != r5) goto L46
            java.lang.Boolean r5 = r4.f15729e
            boolean r5 = java.util.Objects.equals(r2, r5)
            if (r5 == 0) goto L46
            return r4
        L46:
            com.fasterxml.jackson.databind.ser.impl.StringArraySerializer r5 = new com.fasterxml.jackson.databind.ser.impl.StringArraySerializer
            r5.<init>(r4, r6, r0, r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.StringArraySerializer.createContextual(com.fasterxml.jackson.databind.l, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.g");
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public g<?> getContentSerializer() {
        return this.f15677f;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return f15676g;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
        return d("array", true).set("items", c(TypedValues.Custom.S_STRING));
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(String[] strArr) {
        return strArr.length == 1;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, String[] strArr) {
        return strArr.length == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(String[] strArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int length = strArr.length;
        if (length == 1 && ((this.f15729e == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15729e == Boolean.TRUE)) {
            serializeContents(strArr, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.J1(strArr, length);
        serializeContents(strArr, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public void serializeContents(String[] strArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int length = strArr.length;
        if (length == 0) {
            return;
        }
        g<Object> gVar = this.f15677f;
        if (gVar != null) {
            x(strArr, jsonGenerator, lVar, gVar);
            return;
        }
        for (int i4 = 0; i4 < length; i4++) {
            if (strArr[i4] == null) {
                jsonGenerator.W0();
            } else {
                jsonGenerator.P1(strArr[i4]);
            }
        }
    }

    public StringArraySerializer(StringArraySerializer stringArraySerializer, BeanProperty beanProperty, g<?> gVar, Boolean bool) {
        super(stringArraySerializer, beanProperty, bool);
        this.f15677f = gVar;
    }
}
