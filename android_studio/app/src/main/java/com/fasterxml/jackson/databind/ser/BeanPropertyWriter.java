package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.impl.UnwrappingBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.c;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;

@c2.a
/* loaded from: classes.dex */
public class BeanPropertyWriter extends PropertyWriter implements Serializable {
    public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;

    /* renamed from: v  reason: collision with root package name */
    private static final long f15597v = 1;

    /* renamed from: e  reason: collision with root package name */
    protected final SerializedString f15598e;

    /* renamed from: f  reason: collision with root package name */
    protected final PropertyName f15599f;

    /* renamed from: g  reason: collision with root package name */
    protected final JavaType f15600g;

    /* renamed from: h  reason: collision with root package name */
    protected final JavaType f15601h;

    /* renamed from: i  reason: collision with root package name */
    protected JavaType f15602i;

    /* renamed from: j  reason: collision with root package name */
    protected final transient com.fasterxml.jackson.databind.util.a f15603j;

    /* renamed from: k  reason: collision with root package name */
    protected final AnnotatedMember f15604k;

    /* renamed from: l  reason: collision with root package name */
    protected transient Method f15605l;

    /* renamed from: m  reason: collision with root package name */
    protected transient Field f15606m;

    /* renamed from: n  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.g<Object> f15607n;

    /* renamed from: o  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.g<Object> f15608o;

    /* renamed from: p  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.jsontype.f f15609p;

    /* renamed from: q  reason: collision with root package name */
    protected transient com.fasterxml.jackson.databind.ser.impl.c f15610q;

    /* renamed from: r  reason: collision with root package name */
    protected final boolean f15611r;

    /* renamed from: s  reason: collision with root package name */
    protected final Object f15612s;

    /* renamed from: t  reason: collision with root package name */
    protected final Class<?>[] f15613t;

    /* renamed from: u  reason: collision with root package name */
    protected transient HashMap<Object, Object> f15614u;

    public BeanPropertyWriter(com.fasterxml.jackson.databind.introspect.k kVar, AnnotatedMember annotatedMember, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType, com.fasterxml.jackson.databind.g<?> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, JavaType javaType2, boolean z9, Object obj, Class<?>[] clsArr) {
        super(kVar);
        this.f15604k = annotatedMember;
        this.f15603j = aVar;
        this.f15598e = new SerializedString(kVar.getName());
        this.f15599f = kVar.getWrapperName();
        this.f15600g = javaType;
        this.f15607n = gVar;
        this.f15610q = gVar == null ? com.fasterxml.jackson.databind.ser.impl.c.c() : null;
        this.f15609p = fVar;
        this.f15601h = javaType2;
        if (annotatedMember instanceof AnnotatedField) {
            this.f15605l = null;
            this.f15606m = (Field) annotatedMember.getMember();
        } else if (annotatedMember instanceof AnnotatedMethod) {
            this.f15605l = (Method) annotatedMember.getMember();
            this.f15606m = null;
        } else {
            this.f15605l = null;
            this.f15606m = null;
        }
        this.f15611r = z9;
        this.f15612s = obj;
        this.f15608o = null;
        this.f15613t = clsArr;
    }

    protected void a(ObjectNode objectNode, com.fasterxml.jackson.databind.e eVar) {
        objectNode.set(getName(), eVar);
    }

    public void assignNullSerializer(com.fasterxml.jackson.databind.g<Object> gVar) {
        com.fasterxml.jackson.databind.g<Object> gVar2 = this.f15608o;
        if (gVar2 != null && gVar2 != gVar) {
            throw new IllegalStateException(String.format("Cannot override _nullSerializer: had a %s, trying to set to %s", com.fasterxml.jackson.databind.util.g.j(this.f15608o), com.fasterxml.jackson.databind.util.g.j(gVar)));
        }
        this.f15608o = gVar;
    }

    public void assignSerializer(com.fasterxml.jackson.databind.g<Object> gVar) {
        com.fasterxml.jackson.databind.g<Object> gVar2 = this.f15607n;
        if (gVar2 != null && gVar2 != gVar) {
            throw new IllegalStateException(String.format("Cannot override _serializer: had a %s, trying to set to %s", com.fasterxml.jackson.databind.util.g.j(this.f15607n), com.fasterxml.jackson.databind.util.g.j(gVar)));
        }
        this.f15607n = gVar;
    }

    public void assignTypeSerializer(com.fasterxml.jackson.databind.jsontype.f fVar) {
        this.f15609p = fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.g<Object> b(com.fasterxml.jackson.databind.ser.impl.c cVar, Class<?> cls, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        c.d g4;
        JavaType javaType = this.f15602i;
        if (javaType != null) {
            g4 = cVar.f(lVar.constructSpecializedType(javaType, cls), lVar, this);
        } else {
            g4 = cVar.g(cls, lVar, this);
        }
        com.fasterxml.jackson.databind.ser.impl.c cVar2 = g4.f15708b;
        if (cVar != cVar2) {
            this.f15610q = cVar2;
        }
        return g4.f15707a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.g<?> gVar) throws IOException {
        if (gVar.usesObjectId()) {
            return false;
        }
        if (lVar.isEnabled(SerializationFeature.FAIL_ON_SELF_REFERENCES)) {
            if (gVar instanceof BeanSerializerBase) {
                lVar.reportBadDefinition(getType(), "Direct self-reference leading to cycle");
                return false;
            }
            return false;
        } else if (lVar.isEnabled(SerializationFeature.WRITE_SELF_REFERENCES_AS_NULL)) {
            if (this.f15608o != null) {
                if (!jsonGenerator.h0().k()) {
                    jsonGenerator.U0(this.f15598e);
                }
                this.f15608o.serialize(null, jsonGenerator, lVar);
                return true;
            }
            return true;
        } else {
            return false;
        }
    }

    protected BeanPropertyWriter d(PropertyName propertyName) {
        return new BeanPropertyWriter(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public void depositSchemaProperty(com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        if (kVar != null) {
            if (isRequired()) {
                kVar.r(this);
            } else {
                kVar.m(this);
            }
        }
    }

    Object e() {
        AnnotatedMember annotatedMember = this.f15604k;
        if (annotatedMember instanceof AnnotatedField) {
            this.f15605l = null;
            this.f15606m = (Field) annotatedMember.getMember();
        } else if (annotatedMember instanceof AnnotatedMethod) {
            this.f15605l = (Method) annotatedMember.getMember();
            this.f15606m = null;
        }
        if (this.f15607n == null) {
            this.f15610q = com.fasterxml.jackson.databind.ser.impl.c.c();
        }
        return this;
    }

    public void fixAccess(SerializationConfig serializationConfig) {
        this.f15604k.fixAccess(serializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    public final Object get(Object obj) throws Exception {
        Method method = this.f15605l;
        return method == null ? this.f15606m.get(obj) : method.invoke(obj, null);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        AnnotatedMember annotatedMember = this.f15604k;
        if (annotatedMember == null) {
            return null;
        }
        return (A) annotatedMember.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
        com.fasterxml.jackson.databind.util.a aVar = this.f15603j;
        if (aVar == null) {
            return null;
        }
        return (A) aVar.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getFullName() {
        return new PropertyName(this.f15598e.getValue());
    }

    @Deprecated
    public Type getGenericPropertyType() {
        Method method = this.f15605l;
        if (method != null) {
            return method.getGenericReturnType();
        }
        Field field = this.f15606m;
        if (field != null) {
            return field.getGenericType();
        }
        return null;
    }

    public Object getInternalSetting(Object obj) {
        HashMap<Object, Object> hashMap = this.f15614u;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(obj);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this.f15604k;
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.n
    public String getName() {
        return this.f15598e.getValue();
    }

    @Deprecated
    public Class<?> getPropertyType() {
        Method method = this.f15605l;
        if (method != null) {
            return method.getReturnType();
        }
        Field field = this.f15606m;
        if (field != null) {
            return field.getType();
        }
        return null;
    }

    @Deprecated
    public Class<?> getRawSerializationType() {
        JavaType javaType = this.f15601h;
        if (javaType == null) {
            return null;
        }
        return javaType.getRawClass();
    }

    public JavaType getSerializationType() {
        return this.f15601h;
    }

    public com.fasterxml.jackson.core.j getSerializedName() {
        return this.f15598e;
    }

    public com.fasterxml.jackson.databind.g<Object> getSerializer() {
        return this.f15607n;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JavaType getType() {
        return this.f15600g;
    }

    public com.fasterxml.jackson.databind.jsontype.f getTypeSerializer() {
        return this.f15609p;
    }

    public Class<?>[] getViews() {
        return this.f15613t;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getWrapperName() {
        return this.f15599f;
    }

    public boolean hasNullSerializer() {
        return this.f15608o != null;
    }

    public boolean hasSerializer() {
        return this.f15607n != null;
    }

    public boolean isUnwrapping() {
        return false;
    }

    public Object removeInternalSetting(Object obj) {
        HashMap<Object, Object> hashMap = this.f15614u;
        if (hashMap != null) {
            Object remove = hashMap.remove(obj);
            if (this.f15614u.size() == 0) {
                this.f15614u = null;
            }
            return remove;
        }
        return null;
    }

    public BeanPropertyWriter rename(NameTransformer nameTransformer) {
        String transform = nameTransformer.transform(this.f15598e.getValue());
        return transform.equals(this.f15598e.toString()) ? this : d(PropertyName.construct(transform));
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception {
        Method method = this.f15605l;
        Object invoke = method == null ? this.f15606m.get(obj) : method.invoke(obj, null);
        if (invoke == null) {
            com.fasterxml.jackson.databind.g<Object> gVar = this.f15608o;
            if (gVar != null) {
                gVar.serialize(null, jsonGenerator, lVar);
                return;
            } else {
                jsonGenerator.W0();
                return;
            }
        }
        com.fasterxml.jackson.databind.g<?> gVar2 = this.f15607n;
        if (gVar2 == null) {
            Class<?> cls = invoke.getClass();
            com.fasterxml.jackson.databind.ser.impl.c cVar = this.f15610q;
            com.fasterxml.jackson.databind.g<?> m9 = cVar.m(cls);
            gVar2 = m9 == null ? b(cVar, cls, lVar) : m9;
        }
        Object obj2 = this.f15612s;
        if (obj2 != null) {
            if (MARKER_FOR_EMPTY == obj2) {
                if (gVar2.isEmpty(lVar, invoke)) {
                    serializeAsPlaceholder(obj, jsonGenerator, lVar);
                    return;
                }
            } else if (obj2.equals(invoke)) {
                serializeAsPlaceholder(obj, jsonGenerator, lVar);
                return;
            }
        }
        if (invoke == obj && c(obj, jsonGenerator, lVar, gVar2)) {
            return;
        }
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15609p;
        if (fVar == null) {
            gVar2.serialize(invoke, jsonGenerator, lVar);
        } else {
            gVar2.serializeWithType(invoke, jsonGenerator, lVar, fVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception {
        Method method = this.f15605l;
        Object invoke = method == null ? this.f15606m.get(obj) : method.invoke(obj, null);
        if (invoke == null) {
            if (this.f15608o != null) {
                jsonGenerator.U0(this.f15598e);
                this.f15608o.serialize(null, jsonGenerator, lVar);
                return;
            }
            return;
        }
        com.fasterxml.jackson.databind.g<?> gVar = this.f15607n;
        if (gVar == null) {
            Class<?> cls = invoke.getClass();
            com.fasterxml.jackson.databind.ser.impl.c cVar = this.f15610q;
            com.fasterxml.jackson.databind.g<?> m9 = cVar.m(cls);
            gVar = m9 == null ? b(cVar, cls, lVar) : m9;
        }
        Object obj2 = this.f15612s;
        if (obj2 != null) {
            if (MARKER_FOR_EMPTY == obj2) {
                if (gVar.isEmpty(lVar, invoke)) {
                    return;
                }
            } else if (obj2.equals(invoke)) {
                return;
            }
        }
        if (invoke == obj && c(obj, jsonGenerator, lVar, gVar)) {
            return;
        }
        jsonGenerator.U0(this.f15598e);
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15609p;
        if (fVar == null) {
            gVar.serialize(invoke, jsonGenerator, lVar);
        } else {
            gVar.serializeWithType(invoke, jsonGenerator, lVar, fVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsOmittedField(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception {
        if (jsonGenerator.q()) {
            return;
        }
        jsonGenerator.t1(this.f15598e.getValue());
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsPlaceholder(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception {
        com.fasterxml.jackson.databind.g<Object> gVar = this.f15608o;
        if (gVar != null) {
            gVar.serialize(null, jsonGenerator, lVar);
        } else {
            jsonGenerator.W0();
        }
    }

    public Object setInternalSetting(Object obj, Object obj2) {
        if (this.f15614u == null) {
            this.f15614u = new HashMap<>();
        }
        return this.f15614u.put(obj, obj2);
    }

    public void setNonTrivialBaseType(JavaType javaType) {
        this.f15602i = javaType;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("property '");
        sb.append(getName());
        sb.append("' (");
        if (this.f15605l != null) {
            sb.append("via method ");
            sb.append(this.f15605l.getDeclaringClass().getName());
            sb.append("#");
            sb.append(this.f15605l.getName());
        } else if (this.f15606m != null) {
            sb.append("field \"");
            sb.append(this.f15606m.getDeclaringClass().getName());
            sb.append("#");
            sb.append(this.f15606m.getName());
        } else {
            sb.append("virtual");
        }
        if (this.f15607n == null) {
            sb.append(", no static serializer");
        } else {
            sb.append(", static serializer of type " + this.f15607n.getClass().getName());
        }
        sb.append(')');
        return sb.toString();
    }

    public BeanPropertyWriter unwrappingWriter(NameTransformer nameTransformer) {
        return new UnwrappingBeanPropertyWriter(this, nameTransformer);
    }

    public boolean willSuppressNulls() {
        return this.f15611r;
    }

    public boolean wouldConflictWithName(PropertyName propertyName) {
        PropertyName propertyName2 = this.f15599f;
        if (propertyName2 != null) {
            return propertyName2.equals(propertyName);
        }
        return propertyName.hasSimpleName(this.f15598e.getValue()) && !propertyName.hasNamespace();
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    @Deprecated
    public void depositSchemaProperty(ObjectNode objectNode, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.e a10;
        JavaType serializationType = getSerializationType();
        Type type = serializationType == null ? getType() : serializationType.getRawClass();
        com.fasterxml.jackson.databind.g<Object> serializer = getSerializer();
        if (serializer == null) {
            serializer = lVar.findValueSerializer(getType(), this);
        }
        boolean z9 = !isRequired();
        if (serializer instanceof d2.c) {
            a10 = ((d2.c) serializer).getSchema(lVar, type, z9);
        } else {
            a10 = d2.a.a();
        }
        a(objectNode, a10);
    }

    @Deprecated
    public BeanPropertyWriter(com.fasterxml.jackson.databind.introspect.k kVar, AnnotatedMember annotatedMember, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType, com.fasterxml.jackson.databind.g<?> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, JavaType javaType2, boolean z9, Object obj) {
        this(kVar, annotatedMember, aVar, javaType, gVar, fVar, javaType2, z9, obj, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanPropertyWriter() {
        super(PropertyMetadata.STD_REQUIRED_OR_OPTIONAL);
        this.f15604k = null;
        this.f15603j = null;
        this.f15598e = null;
        this.f15599f = null;
        this.f15613t = null;
        this.f15600g = null;
        this.f15607n = null;
        this.f15610q = null;
        this.f15609p = null;
        this.f15601h = null;
        this.f15605l = null;
        this.f15606m = null;
        this.f15611r = false;
        this.f15612s = null;
        this.f15608o = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanPropertyWriter(BeanPropertyWriter beanPropertyWriter) {
        this(beanPropertyWriter, beanPropertyWriter.f15598e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, PropertyName propertyName) {
        super(beanPropertyWriter);
        this.f15598e = new SerializedString(propertyName.getSimpleName());
        this.f15599f = beanPropertyWriter.f15599f;
        this.f15603j = beanPropertyWriter.f15603j;
        this.f15600g = beanPropertyWriter.f15600g;
        this.f15604k = beanPropertyWriter.f15604k;
        this.f15605l = beanPropertyWriter.f15605l;
        this.f15606m = beanPropertyWriter.f15606m;
        this.f15607n = beanPropertyWriter.f15607n;
        this.f15608o = beanPropertyWriter.f15608o;
        if (beanPropertyWriter.f15614u != null) {
            this.f15614u = new HashMap<>(beanPropertyWriter.f15614u);
        }
        this.f15601h = beanPropertyWriter.f15601h;
        this.f15610q = beanPropertyWriter.f15610q;
        this.f15611r = beanPropertyWriter.f15611r;
        this.f15612s = beanPropertyWriter.f15612s;
        this.f15613t = beanPropertyWriter.f15613t;
        this.f15609p = beanPropertyWriter.f15609p;
        this.f15602i = beanPropertyWriter.f15602i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, SerializedString serializedString) {
        super(beanPropertyWriter);
        this.f15598e = serializedString;
        this.f15599f = beanPropertyWriter.f15599f;
        this.f15604k = beanPropertyWriter.f15604k;
        this.f15603j = beanPropertyWriter.f15603j;
        this.f15600g = beanPropertyWriter.f15600g;
        this.f15605l = beanPropertyWriter.f15605l;
        this.f15606m = beanPropertyWriter.f15606m;
        this.f15607n = beanPropertyWriter.f15607n;
        this.f15608o = beanPropertyWriter.f15608o;
        if (beanPropertyWriter.f15614u != null) {
            this.f15614u = new HashMap<>(beanPropertyWriter.f15614u);
        }
        this.f15601h = beanPropertyWriter.f15601h;
        this.f15610q = beanPropertyWriter.f15610q;
        this.f15611r = beanPropertyWriter.f15611r;
        this.f15612s = beanPropertyWriter.f15612s;
        this.f15613t = beanPropertyWriter.f15613t;
        this.f15609p = beanPropertyWriter.f15609p;
        this.f15602i = beanPropertyWriter.f15602i;
    }
}
