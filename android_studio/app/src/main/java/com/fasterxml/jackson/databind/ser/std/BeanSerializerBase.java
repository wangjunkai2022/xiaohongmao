package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.jsonFormatVisitors.d;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.jsonFormatVisitors.k;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.ser.i;
import com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.b;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.h;
import d2.c;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class BeanSerializerBase extends StdSerializer<Object> implements e, i, d, c {

    /* renamed from: l  reason: collision with root package name */
    protected static final PropertyName f15738l = new PropertyName("#object-ref");

    /* renamed from: m  reason: collision with root package name */
    protected static final BeanPropertyWriter[] f15739m = new BeanPropertyWriter[0];

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f15740d;

    /* renamed from: e  reason: collision with root package name */
    protected final BeanPropertyWriter[] f15741e;

    /* renamed from: f  reason: collision with root package name */
    protected final BeanPropertyWriter[] f15742f;

    /* renamed from: g  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.ser.a f15743g;

    /* renamed from: h  reason: collision with root package name */
    protected final Object f15744h;

    /* renamed from: i  reason: collision with root package name */
    protected final AnnotatedMember f15745i;

    /* renamed from: j  reason: collision with root package name */
    protected final b f15746j;

    /* renamed from: k  reason: collision with root package name */
    protected final JsonFormat.Shape f15747k;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15748a;

        static {
            int[] iArr = new int[JsonFormat.Shape.values().length];
            f15748a = iArr;
            try {
                iArr[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15748a[JsonFormat.Shape.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15748a[JsonFormat.Shape.NUMBER_INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanSerializerBase(JavaType javaType, com.fasterxml.jackson.databind.ser.c cVar, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(javaType);
        this.f15740d = javaType;
        this.f15741e = beanPropertyWriterArr;
        this.f15742f = beanPropertyWriterArr2;
        if (cVar == null) {
            this.f15745i = null;
            this.f15743g = null;
            this.f15744h = null;
            this.f15746j = null;
            this.f15747k = null;
            return;
        }
        this.f15745i = cVar.j();
        this.f15743g = cVar.c();
        this.f15744h = cVar.f();
        this.f15746j = cVar.h();
        this.f15747k = cVar.d().l(null).getShape();
    }

    private static final BeanPropertyWriter[] C(BeanPropertyWriter[] beanPropertyWriterArr, NameTransformer nameTransformer) {
        if (beanPropertyWriterArr == null || beanPropertyWriterArr.length == 0 || nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return beanPropertyWriterArr;
        }
        int length = beanPropertyWriterArr.length;
        BeanPropertyWriter[] beanPropertyWriterArr2 = new BeanPropertyWriter[length];
        for (int i4 = 0; i4 < length; i4++) {
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i4];
            if (beanPropertyWriter != null) {
                beanPropertyWriterArr2[i4] = beanPropertyWriter.rename(nameTransformer);
            }
        }
        return beanPropertyWriterArr2;
    }

    protected abstract BeanSerializerBase A();

    protected g<Object> B(l lVar, BeanPropertyWriter beanPropertyWriter) throws JsonMappingException {
        AnnotatedMember member;
        Object findSerializationConverter;
        AnnotationIntrospector annotationIntrospector = lVar.getAnnotationIntrospector();
        if (annotationIntrospector == null || (member = beanPropertyWriter.getMember()) == null || (findSerializationConverter = annotationIntrospector.findSerializationConverter(member)) == null) {
            return null;
        }
        h<Object, Object> converterInstance = lVar.converterInstance(beanPropertyWriter.getMember(), findSerializationConverter);
        JavaType b10 = converterInstance.b(lVar.getTypeFactory());
        return new StdDelegatingSerializer(converterInstance, b10, b10.isJavaLangObject() ? null : lVar.findValueSerializer(b10, beanPropertyWriter));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this.f15742f != null && lVar.getActiveView() != null) {
            beanPropertyWriterArr = this.f15742f;
        } else {
            beanPropertyWriterArr = this.f15741e;
        }
        int i4 = 0;
        try {
            int length = beanPropertyWriterArr.length;
            while (i4 < length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i4];
                if (beanPropertyWriter != null) {
                    beanPropertyWriter.serializeAsField(obj, jsonGenerator, lVar);
                }
                i4++;
            }
            com.fasterxml.jackson.databind.ser.a aVar = this.f15743g;
            if (aVar != null) {
                aVar.c(obj, jsonGenerator, lVar);
            }
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, obj, i4 != beanPropertyWriterArr.length ? beanPropertyWriterArr[i4].getName() : "[anySetter]");
        } catch (StackOverflowError e10) {
            JsonMappingException jsonMappingException = new JsonMappingException(jsonGenerator, "Infinite recursion (StackOverflowError)", e10);
            jsonMappingException.prependPath(obj, i4 != beanPropertyWriterArr.length ? beanPropertyWriterArr[i4].getName() : "[anySetter]");
            throw jsonMappingException;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this.f15742f != null && lVar.getActiveView() != null) {
            beanPropertyWriterArr = this.f15742f;
        } else {
            beanPropertyWriterArr = this.f15741e;
        }
        com.fasterxml.jackson.databind.ser.h m9 = m(lVar, this.f15744h, obj);
        if (m9 == null) {
            D(obj, jsonGenerator, lVar);
            return;
        }
        int i4 = 0;
        try {
            int length = beanPropertyWriterArr.length;
            while (i4 < length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i4];
                if (beanPropertyWriter != null) {
                    m9.serializeAsField(obj, jsonGenerator, lVar, beanPropertyWriter);
                }
                i4++;
            }
            com.fasterxml.jackson.databind.ser.a aVar = this.f15743g;
            if (aVar != null) {
                aVar.b(obj, jsonGenerator, lVar, m9);
            }
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, obj, i4 != beanPropertyWriterArr.length ? beanPropertyWriterArr[i4].getName() : "[anySetter]");
        } catch (StackOverflowError e10) {
            JsonMappingException jsonMappingException = new JsonMappingException(jsonGenerator, "Infinite recursion (StackOverflowError)", e10);
            jsonMappingException.prependPath(obj, i4 != beanPropertyWriterArr.length ? beanPropertyWriterArr[i4].getName() : "[anySetter]");
            throw jsonMappingException;
        }
    }

    protected abstract BeanSerializerBase F(Set<String> set, Set<String> set2);

    @Deprecated
    protected BeanSerializerBase G(Set<String> set) {
        return F(set, null);
    }

    @Deprecated
    protected BeanSerializerBase H(String[] strArr) {
        return G(com.fasterxml.jackson.databind.util.b.a(strArr));
    }

    protected abstract BeanSerializerBase I(BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2);

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        k e4;
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (fVar == null || (e4 = fVar.e(javaType)) == null) {
            return;
        }
        l a10 = fVar.a();
        int i4 = 0;
        Class<?> cls = null;
        if (this.f15744h != null) {
            com.fasterxml.jackson.databind.ser.h m9 = m(fVar.a(), this.f15744h, null);
            int length = this.f15741e.length;
            while (i4 < length) {
                m9.depositSchemaProperty(this.f15741e[i4], e4, a10);
                i4++;
            }
            return;
        }
        if (this.f15742f != null && a10 != null) {
            cls = a10.getActiveView();
        }
        if (cls != null) {
            beanPropertyWriterArr = this.f15742f;
        } else {
            beanPropertyWriterArr = this.f15741e;
        }
        int length2 = beanPropertyWriterArr.length;
        while (i4 < length2) {
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i4];
            if (beanPropertyWriter != null) {
                beanPropertyWriter.depositSchemaProperty(e4, a10);
            }
            i4++;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Shape shape;
        BeanPropertyWriter[] beanPropertyWriterArr;
        Object obj;
        Set<String> set;
        Set<String> set2;
        int i4;
        BeanSerializerBase beanSerializerBase;
        b c10;
        BeanPropertyWriter beanPropertyWriter;
        Object obj2;
        p findObjectReferenceInfo;
        AnnotationIntrospector annotationIntrospector = lVar.getAnnotationIntrospector();
        AnnotatedMember member = (beanProperty == null || annotationIntrospector == null) ? null : beanProperty.getMember();
        SerializationConfig config = lVar.getConfig();
        JsonFormat.Value k10 = k(lVar, beanProperty, this.f15849a);
        int i10 = 2;
        if (k10 == null || !k10.hasShape()) {
            shape = null;
        } else {
            shape = k10.getShape();
            if (shape != JsonFormat.Shape.ANY && shape != this.f15747k) {
                if (this.f15740d.isEnumType()) {
                    int i11 = a.f15748a[shape.ordinal()];
                    if (i11 == 1 || i11 == 2 || i11 == 3) {
                        return lVar.handlePrimaryContextualization(EnumSerializer.construct(this.f15740d.getRawClass(), lVar.getConfig(), config.introspectClassAnnotations(this.f15740d), k10), beanProperty);
                    }
                } else if (shape == JsonFormat.Shape.NATURAL && ((!this.f15740d.isMapLikeType() || !Map.class.isAssignableFrom(this.f15849a)) && Map.Entry.class.isAssignableFrom(this.f15849a))) {
                    JavaType findSuperType = this.f15740d.findSuperType(Map.Entry.class);
                    return lVar.handlePrimaryContextualization(new MapEntrySerializer(this.f15740d, findSuperType.containedTypeOrUnknown(0), findSuperType.containedTypeOrUnknown(1), false, null, beanProperty), beanProperty);
                }
            }
        }
        b bVar = this.f15746j;
        if (member != null) {
            set2 = annotationIntrospector.findPropertyIgnoralByName(config, member).findIgnoredForSerialization();
            set = annotationIntrospector.findPropertyInclusionByName(config, member).getIncluded();
            p findObjectIdInfo = annotationIntrospector.findObjectIdInfo(member);
            if (findObjectIdInfo == null) {
                if (bVar != null && (findObjectReferenceInfo = annotationIntrospector.findObjectReferenceInfo(member, null)) != null) {
                    bVar = this.f15746j.b(findObjectReferenceInfo.b());
                }
                beanPropertyWriterArr = null;
            } else {
                p findObjectReferenceInfo2 = annotationIntrospector.findObjectReferenceInfo(member, findObjectIdInfo);
                Class<? extends ObjectIdGenerator<?>> c11 = findObjectReferenceInfo2.c();
                JavaType javaType = lVar.getTypeFactory().findTypeParameters(lVar.constructType(c11), ObjectIdGenerator.class)[0];
                if (c11 == ObjectIdGenerators.PropertyGenerator.class) {
                    String simpleName = findObjectReferenceInfo2.d().getSimpleName();
                    int length = this.f15741e.length;
                    i4 = 0;
                    while (true) {
                        if (i4 == length) {
                            JavaType javaType2 = this.f15740d;
                            Object[] objArr = new Object[i10];
                            objArr[0] = com.fasterxml.jackson.databind.util.g.j0(handledType());
                            objArr[1] = com.fasterxml.jackson.databind.util.g.h0(simpleName);
                            lVar.reportBadDefinition(javaType2, String.format("Invalid Object Id definition for %s: cannot find property with name %s", objArr));
                        }
                        beanPropertyWriter = this.f15741e[i4];
                        if (simpleName.equals(beanPropertyWriter.getName())) {
                            break;
                        }
                        i4++;
                        i10 = 2;
                    }
                    beanPropertyWriterArr = null;
                    bVar = b.a(beanPropertyWriter.getType(), null, new PropertyBasedObjectIdGenerator(findObjectReferenceInfo2, beanPropertyWriter), findObjectReferenceInfo2.b());
                    obj = annotationIntrospector.findFilterId(member);
                    if (obj != null || ((obj2 = this.f15744h) != null && obj.equals(obj2))) {
                        obj = beanPropertyWriterArr;
                    }
                } else {
                    beanPropertyWriterArr = null;
                    bVar = b.a(javaType, findObjectReferenceInfo2.d(), lVar.objectIdGeneratorInstance(member, findObjectReferenceInfo2), findObjectReferenceInfo2.b());
                }
            }
            i4 = 0;
            obj = annotationIntrospector.findFilterId(member);
            if (obj != null) {
            }
            obj = beanPropertyWriterArr;
        } else {
            beanPropertyWriterArr = null;
            obj = null;
            set = null;
            set2 = null;
            i4 = 0;
        }
        if (i4 > 0) {
            BeanPropertyWriter[] beanPropertyWriterArr2 = this.f15741e;
            BeanPropertyWriter[] beanPropertyWriterArr3 = (BeanPropertyWriter[]) Arrays.copyOf(beanPropertyWriterArr2, beanPropertyWriterArr2.length);
            BeanPropertyWriter beanPropertyWriter2 = beanPropertyWriterArr3[i4];
            System.arraycopy(beanPropertyWriterArr3, 0, beanPropertyWriterArr3, 1, i4);
            beanPropertyWriterArr3[0] = beanPropertyWriter2;
            BeanPropertyWriter[] beanPropertyWriterArr4 = this.f15742f;
            if (beanPropertyWriterArr4 != null) {
                beanPropertyWriterArr = (BeanPropertyWriter[]) Arrays.copyOf(beanPropertyWriterArr4, beanPropertyWriterArr4.length);
                BeanPropertyWriter beanPropertyWriter3 = beanPropertyWriterArr[i4];
                System.arraycopy(beanPropertyWriterArr, 0, beanPropertyWriterArr, 1, i4);
                beanPropertyWriterArr[0] = beanPropertyWriter3;
            }
            beanSerializerBase = I(beanPropertyWriterArr3, beanPropertyWriterArr);
        } else {
            beanSerializerBase = this;
        }
        if (bVar != null && (c10 = bVar.c(lVar.findValueSerializer(bVar.f15693a, beanProperty))) != this.f15746j) {
            beanSerializerBase = beanSerializerBase.withObjectIdWriter(c10);
        }
        if ((set2 != null && !set2.isEmpty()) || set != null) {
            beanSerializerBase = beanSerializerBase.F(set2, set);
        }
        if (obj != null) {
            beanSerializerBase = beanSerializerBase.withFilterId(obj);
        }
        if (shape == null) {
            shape = this.f15747k;
        }
        return shape == JsonFormat.Shape.ARRAY ? beanSerializerBase.A() : beanSerializerBase;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    @Deprecated
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) throws JsonMappingException {
        String id;
        ObjectNode d4 = d("object", true);
        d2.b bVar = (d2.b) this.f15849a.getAnnotation(d2.b.class);
        if (bVar != null && (id = bVar.id()) != null && !id.isEmpty()) {
            d4.put("id", id);
        }
        ObjectNode objectNode = d4.objectNode();
        Object obj = this.f15744h;
        com.fasterxml.jackson.databind.ser.h m9 = obj != null ? m(lVar, obj, null) : null;
        int i4 = 0;
        while (true) {
            BeanPropertyWriter[] beanPropertyWriterArr = this.f15741e;
            if (i4 < beanPropertyWriterArr.length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i4];
                if (m9 == null) {
                    beanPropertyWriter.depositSchemaProperty(objectNode, lVar);
                } else {
                    m9.depositSchemaProperty(beanPropertyWriter, objectNode, lVar);
                }
                i4++;
            } else {
                d4.set("properties", objectNode);
                return d4;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.g
    public Iterator<PropertyWriter> properties() {
        return Arrays.asList(this.f15741e).iterator();
    }

    @Override // com.fasterxml.jackson.databind.ser.i
    public void resolve(l lVar) throws JsonMappingException {
        BeanPropertyWriter beanPropertyWriter;
        com.fasterxml.jackson.databind.jsontype.f fVar;
        g<Object> findNullValueSerializer;
        BeanPropertyWriter beanPropertyWriter2;
        BeanPropertyWriter[] beanPropertyWriterArr = this.f15742f;
        int length = beanPropertyWriterArr == null ? 0 : beanPropertyWriterArr.length;
        int length2 = this.f15741e.length;
        for (int i4 = 0; i4 < length2; i4++) {
            BeanPropertyWriter beanPropertyWriter3 = this.f15741e[i4];
            if (!beanPropertyWriter3.willSuppressNulls() && !beanPropertyWriter3.hasNullSerializer() && (findNullValueSerializer = lVar.findNullValueSerializer(beanPropertyWriter3)) != null) {
                beanPropertyWriter3.assignNullSerializer(findNullValueSerializer);
                if (i4 < length && (beanPropertyWriter2 = this.f15742f[i4]) != null) {
                    beanPropertyWriter2.assignNullSerializer(findNullValueSerializer);
                }
            }
            if (!beanPropertyWriter3.hasSerializer()) {
                g<Object> B = B(lVar, beanPropertyWriter3);
                if (B == null) {
                    JavaType serializationType = beanPropertyWriter3.getSerializationType();
                    if (serializationType == null) {
                        serializationType = beanPropertyWriter3.getType();
                        if (!serializationType.isFinal()) {
                            if (serializationType.isContainerType() || serializationType.containedTypeCount() > 0) {
                                beanPropertyWriter3.setNonTrivialBaseType(serializationType);
                            }
                        }
                    }
                    g<Object> findValueSerializer = lVar.findValueSerializer(serializationType, beanPropertyWriter3);
                    B = (serializationType.isContainerType() && (fVar = (com.fasterxml.jackson.databind.jsontype.f) serializationType.getContentType().getTypeHandler()) != null && (findValueSerializer instanceof ContainerSerializer)) ? ((ContainerSerializer) findValueSerializer).withValueTypeSerializer(fVar) : findValueSerializer;
                }
                if (i4 < length && (beanPropertyWriter = this.f15742f[i4]) != null) {
                    beanPropertyWriter.assignSerializer(B);
                } else {
                    beanPropertyWriter3.assignSerializer(B);
                }
            }
        }
        com.fasterxml.jackson.databind.ser.a aVar = this.f15743g;
        if (aVar != null) {
            aVar.d(lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public abstract void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException;

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        if (this.f15746j != null) {
            x(obj, jsonGenerator, lVar, fVar);
            return;
        }
        WritableTypeId z9 = z(fVar, obj, JsonToken.START_OBJECT);
        fVar.o(jsonGenerator, z9);
        jsonGenerator.w0(obj);
        if (this.f15744h != null) {
            E(obj, jsonGenerator, lVar);
        } else {
            D(obj, jsonGenerator, lVar);
        }
        fVar.v(jsonGenerator, z9);
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean usesObjectId() {
        return this.f15746j != null;
    }

    @Deprecated
    protected final String v(Object obj) {
        Object value = this.f15745i.getValue(obj);
        return value == null ? "" : value instanceof String ? (String) value : value.toString();
    }

    protected void w(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.ser.impl.f fVar2) throws IOException {
        b bVar = this.f15746j;
        WritableTypeId z9 = z(fVar, obj, JsonToken.START_OBJECT);
        fVar.o(jsonGenerator, z9);
        jsonGenerator.w0(obj);
        fVar2.b(jsonGenerator, lVar, bVar);
        if (this.f15744h != null) {
            E(obj, jsonGenerator, lVar);
        } else {
            D(obj, jsonGenerator, lVar);
        }
        fVar.v(jsonGenerator, z9);
    }

    @Override // com.fasterxml.jackson.databind.g
    public abstract BeanSerializerBase withFilterId(Object obj);

    public abstract BeanSerializerBase withObjectIdWriter(b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        b bVar = this.f15746j;
        com.fasterxml.jackson.databind.ser.impl.f findObjectId = lVar.findObjectId(obj, bVar.f15695c);
        if (findObjectId.c(jsonGenerator, lVar, bVar)) {
            return;
        }
        Object a10 = findObjectId.a(obj);
        if (bVar.f15697e) {
            bVar.f15696d.serialize(a10, jsonGenerator, lVar);
        } else {
            w(obj, jsonGenerator, lVar, fVar, findObjectId);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void y(Object obj, JsonGenerator jsonGenerator, l lVar, boolean z9) throws IOException {
        b bVar = this.f15746j;
        com.fasterxml.jackson.databind.ser.impl.f findObjectId = lVar.findObjectId(obj, bVar.f15695c);
        if (findObjectId.c(jsonGenerator, lVar, bVar)) {
            return;
        }
        Object a10 = findObjectId.a(obj);
        if (bVar.f15697e) {
            bVar.f15696d.serialize(a10, jsonGenerator, lVar);
            return;
        }
        if (z9) {
            jsonGenerator.L1(obj);
        }
        findObjectId.b(jsonGenerator, lVar, bVar);
        if (this.f15744h != null) {
            E(obj, jsonGenerator, lVar);
        } else {
            D(obj, jsonGenerator, lVar);
        }
        if (z9) {
            jsonGenerator.S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WritableTypeId z(com.fasterxml.jackson.databind.jsontype.f fVar, Object obj, JsonToken jsonToken) {
        AnnotatedMember annotatedMember = this.f15745i;
        if (annotatedMember == null) {
            return fVar.f(obj, jsonToken);
        }
        Object value = annotatedMember.getValue(obj);
        if (value == null) {
            value = "";
        }
        return fVar.g(obj, jsonToken, value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(beanSerializerBase.f15849a);
        this.f15740d = beanSerializerBase.f15740d;
        this.f15741e = beanPropertyWriterArr;
        this.f15742f = beanPropertyWriterArr2;
        this.f15745i = beanSerializerBase.f15745i;
        this.f15743g = beanSerializerBase.f15743g;
        this.f15746j = beanSerializerBase.f15746j;
        this.f15744h = beanSerializerBase.f15744h;
        this.f15747k = beanSerializerBase.f15747k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, b bVar) {
        this(beanSerializerBase, bVar, beanSerializerBase.f15744h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, b bVar, Object obj) {
        super(beanSerializerBase.f15849a);
        this.f15740d = beanSerializerBase.f15740d;
        this.f15741e = beanSerializerBase.f15741e;
        this.f15742f = beanSerializerBase.f15742f;
        this.f15745i = beanSerializerBase.f15745i;
        this.f15743g = beanSerializerBase.f15743g;
        this.f15746j = bVar;
        this.f15744h = obj;
        this.f15747k = beanSerializerBase.f15747k;
    }

    @Deprecated
    protected BeanSerializerBase(BeanSerializerBase beanSerializerBase, String[] strArr) {
        this(beanSerializerBase, com.fasterxml.jackson.databind.util.b.a(strArr), (Set<String>) null);
    }

    @Deprecated
    protected BeanSerializerBase(BeanSerializerBase beanSerializerBase, Set<String> set) {
        this(beanSerializerBase, set, (Set<String>) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, Set<String> set, Set<String> set2) {
        super(beanSerializerBase.f15849a);
        this.f15740d = beanSerializerBase.f15740d;
        BeanPropertyWriter[] beanPropertyWriterArr = beanSerializerBase.f15741e;
        BeanPropertyWriter[] beanPropertyWriterArr2 = beanSerializerBase.f15742f;
        int length = beanPropertyWriterArr.length;
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = beanPropertyWriterArr2 == null ? null : new ArrayList(length);
        for (int i4 = 0; i4 < length; i4++) {
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i4];
            if (!IgnorePropertiesUtil.c(beanPropertyWriter.getName(), set, set2)) {
                arrayList.add(beanPropertyWriter);
                if (beanPropertyWriterArr2 != null) {
                    arrayList2.add(beanPropertyWriterArr2[i4]);
                }
            }
        }
        this.f15741e = (BeanPropertyWriter[]) arrayList.toArray(new BeanPropertyWriter[arrayList.size()]);
        this.f15742f = arrayList2 != null ? (BeanPropertyWriter[]) arrayList2.toArray(new BeanPropertyWriter[arrayList2.size()]) : null;
        this.f15745i = beanSerializerBase.f15745i;
        this.f15743g = beanSerializerBase.f15743g;
        this.f15746j = beanSerializerBase.f15746j;
        this.f15744h = beanSerializerBase.f15744h;
        this.f15747k = beanSerializerBase.f15747k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanSerializerBase(BeanSerializerBase beanSerializerBase) {
        this(beanSerializerBase, beanSerializerBase.f15741e, beanSerializerBase.f15742f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, NameTransformer nameTransformer) {
        this(beanSerializerBase, C(beanSerializerBase.f15741e, nameTransformer), C(beanSerializerBase.f15742f, nameTransformer));
    }
}
