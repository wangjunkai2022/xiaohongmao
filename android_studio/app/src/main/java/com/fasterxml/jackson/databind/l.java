package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.exc.InvalidTypeIdException;
import com.fasterxml.jackson.databind.ser.impl.FailingSerializer;
import com.fasterxml.jackson.databind.ser.impl.UnknownSerializer;
import com.fasterxml.jackson.databind.ser.std.NullSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: SerializerProvider.java */
/* loaded from: classes.dex */
public abstract class l extends c {

    /* renamed from: n  reason: collision with root package name */
    protected static final boolean f15483n = false;

    /* renamed from: b  reason: collision with root package name */
    protected final SerializationConfig f15485b;

    /* renamed from: c  reason: collision with root package name */
    protected final Class<?> f15486c;

    /* renamed from: d  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.ser.k f15487d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.ser.j f15488e;

    /* renamed from: f  reason: collision with root package name */
    protected transient ContextAttributes f15489f;

    /* renamed from: g  reason: collision with root package name */
    protected g<Object> f15490g;

    /* renamed from: h  reason: collision with root package name */
    protected g<Object> f15491h;

    /* renamed from: i  reason: collision with root package name */
    protected g<Object> f15492i;

    /* renamed from: j  reason: collision with root package name */
    protected g<Object> f15493j;

    /* renamed from: k  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.ser.impl.d f15494k;

    /* renamed from: l  reason: collision with root package name */
    protected DateFormat f15495l;

    /* renamed from: m  reason: collision with root package name */
    protected final boolean f15496m;
    public static final g<Object> DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");

    /* renamed from: o  reason: collision with root package name */
    protected static final g<Object> f15484o = new UnknownSerializer();

    public l() {
        this.f15490g = f15484o;
        this.f15492i = NullSerializer.instance;
        this.f15493j = DEFAULT_NULL_KEY_SERIALIZER;
        this.f15485b = null;
        this.f15487d = null;
        this.f15488e = new com.fasterxml.jackson.databind.ser.j();
        this.f15494k = null;
        this.f15486c = null;
        this.f15489f = null;
        this.f15496m = true;
    }

    public t bufferForValueConversion(com.fasterxml.jackson.core.h hVar) {
        return new t(hVar, false);
    }

    @Override // com.fasterxml.jackson.databind.c
    public final boolean canOverrideAccessModifiers() {
        return this.f15485b.canOverrideAccessModifiers();
    }

    @Override // com.fasterxml.jackson.databind.c
    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) throws IllegalArgumentException {
        return javaType.hasRawClass(cls) ? javaType : getConfig().getTypeFactory().constructSpecializedType(javaType, cls, true);
    }

    public void defaultSerializeDateKey(long j4, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.V0(String.valueOf(j4));
        } else {
            jsonGenerator.V0(o().format(new Date(j4)));
        }
    }

    public final void defaultSerializeDateValue(long j4, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS)) {
            jsonGenerator.b1(j4);
        } else {
            jsonGenerator.P1(o().format(new Date(j4)));
        }
    }

    public final void defaultSerializeField(String str, Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.V0(str);
        if (obj == null) {
            if (this.f15496m) {
                jsonGenerator.W0();
                return;
            } else {
                this.f15492i.serialize(null, jsonGenerator, this);
                return;
            }
        }
        findTypedValueSerializer(obj.getClass(), true, (BeanProperty) null).serialize(obj, jsonGenerator, this);
    }

    public final void defaultSerializeNull(JsonGenerator jsonGenerator) throws IOException {
        if (this.f15496m) {
            jsonGenerator.W0();
        } else {
            this.f15492i.serialize(null, jsonGenerator, this);
        }
    }

    public final void defaultSerializeValue(Object obj, JsonGenerator jsonGenerator) throws IOException {
        if (obj == null) {
            if (this.f15496m) {
                jsonGenerator.W0();
                return;
            } else {
                this.f15492i.serialize(null, jsonGenerator, this);
                return;
            }
        }
        findTypedValueSerializer(obj.getClass(), true, (BeanProperty) null).serialize(obj, jsonGenerator, this);
    }

    public g<Object> findContentValueSerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> f10 = this.f15494k.f(javaType);
        if (f10 == null && (f10 = this.f15488e.l(javaType)) == null && (f10 = l(javaType)) == null) {
            return getUnknownTypeSerializer(javaType.getRawClass());
        }
        return handleSecondaryContextualization(f10, beanProperty);
    }

    public g<Object> findKeySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return q(this.f15487d.createKeySerializer(this, javaType, this.f15491h), beanProperty);
    }

    public g<Object> findNullKeySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return this.f15493j;
    }

    public g<Object> findNullValueSerializer(BeanProperty beanProperty) throws JsonMappingException {
        return this.f15492i;
    }

    public abstract com.fasterxml.jackson.databind.ser.impl.f findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator);

    public g<Object> findPrimaryPropertySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> f10 = this.f15494k.f(javaType);
        if (f10 == null && (f10 = this.f15488e.l(javaType)) == null && (f10 = l(javaType)) == null) {
            return getUnknownTypeSerializer(javaType.getRawClass());
        }
        return handlePrimaryContextualization(f10, beanProperty);
    }

    public com.fasterxml.jackson.databind.jsontype.f findTypeSerializer(JavaType javaType) throws JsonMappingException {
        return this.f15487d.createTypeSerializer(this.f15485b, javaType);
    }

    public g<Object> findTypedValueSerializer(Class<?> cls, boolean z9, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> e4 = this.f15494k.e(cls);
        if (e4 != null) {
            return e4;
        }
        g<Object> k10 = this.f15488e.k(cls);
        if (k10 != null) {
            return k10;
        }
        g<Object> findValueSerializer = findValueSerializer(cls, beanProperty);
        com.fasterxml.jackson.databind.ser.k kVar = this.f15487d;
        SerializationConfig serializationConfig = this.f15485b;
        com.fasterxml.jackson.databind.jsontype.f createTypeSerializer = kVar.createTypeSerializer(serializationConfig, serializationConfig.constructType(cls));
        if (createTypeSerializer != null) {
            findValueSerializer = new com.fasterxml.jackson.databind.ser.impl.e(createTypeSerializer.b(beanProperty), findValueSerializer);
        }
        if (z9) {
            this.f15488e.f(cls, findValueSerializer);
        }
        return findValueSerializer;
    }

    public g<Object> findValueSerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> g4 = this.f15494k.g(cls);
        if (g4 == null && (g4 = this.f15488e.m(cls)) == null && (g4 = this.f15488e.l(this.f15485b.constructType(cls))) == null && (g4 = m(cls)) == null) {
            return getUnknownTypeSerializer(cls);
        }
        return handleSecondaryContextualization(g4, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.c
    public final Class<?> getActiveView() {
        return this.f15486c;
    }

    @Override // com.fasterxml.jackson.databind.c
    public final AnnotationIntrospector getAnnotationIntrospector() {
        return this.f15485b.getAnnotationIntrospector();
    }

    @Override // com.fasterxml.jackson.databind.c
    public Object getAttribute(Object obj) {
        return this.f15489f.getAttribute(obj);
    }

    public g<Object> getDefaultNullKeySerializer() {
        return this.f15493j;
    }

    public g<Object> getDefaultNullValueSerializer() {
        return this.f15492i;
    }

    @Override // com.fasterxml.jackson.databind.c
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        return this.f15485b.getDefaultPropertyFormat(cls);
    }

    public final JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls) {
        return this.f15485b.getDefaultPropertyInclusion(cls);
    }

    public final com.fasterxml.jackson.databind.ser.f getFilterProvider() {
        return this.f15485b.getFilterProvider();
    }

    public JsonGenerator getGenerator() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.c
    public Locale getLocale() {
        return this.f15485b.getLocale();
    }

    @Override // com.fasterxml.jackson.databind.c
    public TimeZone getTimeZone() {
        return this.f15485b.getTimeZone();
    }

    @Override // com.fasterxml.jackson.databind.c
    public final TypeFactory getTypeFactory() {
        return this.f15485b.getTypeFactory();
    }

    public g<Object> getUnknownTypeSerializer(Class<?> cls) {
        if (cls == Object.class) {
            return this.f15490g;
        }
        return new UnknownSerializer(cls);
    }

    public g<?> handlePrimaryContextualization(g<?> gVar, BeanProperty beanProperty) throws JsonMappingException {
        return (gVar == null || !(gVar instanceof com.fasterxml.jackson.databind.ser.e)) ? gVar : ((com.fasterxml.jackson.databind.ser.e) gVar).createContextual(this, beanProperty);
    }

    public g<?> handleSecondaryContextualization(g<?> gVar, BeanProperty beanProperty) throws JsonMappingException {
        return (gVar == null || !(gVar instanceof com.fasterxml.jackson.databind.ser.e)) ? gVar : ((com.fasterxml.jackson.databind.ser.e) gVar).createContextual(this, beanProperty);
    }

    public final boolean hasSerializationFeatures(int i4) {
        return this.f15485b.hasSerializationFeatures(i4);
    }

    public abstract Object includeFilterInstance(com.fasterxml.jackson.databind.introspect.k kVar, Class<?> cls) throws JsonMappingException;

    public abstract boolean includeFilterSuppressNulls(Object obj) throws JsonMappingException;

    @Override // com.fasterxml.jackson.databind.c
    public JsonMappingException invalidTypeIdException(JavaType javaType, String str, String str2) {
        return InvalidTypeIdException.from(null, a(String.format("Could not resolve type id '%s' as a subtype of %s", str, com.fasterxml.jackson.databind.util.g.P(javaType)), str2), javaType, str);
    }

    @Override // com.fasterxml.jackson.databind.c
    public final boolean isEnabled(MapperFeature mapperFeature) {
        return this.f15485b.isEnabled(mapperFeature);
    }

    public boolean isUnknownTypeSerializer(g<?> gVar) {
        if (gVar == this.f15490g || gVar == null) {
            return true;
        }
        return isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS) && gVar.getClass() == UnknownSerializer.class;
    }

    protected g<Object> l(JavaType javaType) throws JsonMappingException {
        g<Object> gVar;
        try {
            gVar = n(javaType);
        } catch (IllegalArgumentException e4) {
            reportMappingProblem(e4, com.fasterxml.jackson.databind.util.g.q(e4), new Object[0]);
            gVar = null;
        }
        if (gVar != null) {
            this.f15488e.b(javaType, gVar, this);
        }
        return gVar;
    }

    protected g<Object> m(Class<?> cls) throws JsonMappingException {
        g<Object> gVar;
        JavaType constructType = this.f15485b.constructType(cls);
        try {
            gVar = n(constructType);
        } catch (IllegalArgumentException e4) {
            reportBadDefinition(constructType, com.fasterxml.jackson.databind.util.g.q(e4));
            gVar = null;
        }
        if (gVar != null) {
            this.f15488e.c(cls, constructType, gVar, this);
        }
        return gVar;
    }

    @Deprecated
    public JsonMappingException mappingException(String str, Object... objArr) {
        return JsonMappingException.from(getGenerator(), c(str, objArr));
    }

    protected g<Object> n(JavaType javaType) throws JsonMappingException {
        return this.f15487d.createSerializer(this, javaType);
    }

    protected final DateFormat o() {
        DateFormat dateFormat = this.f15495l;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this.f15485b.getDateFormat().clone();
        this.f15495l = dateFormat2;
        return dateFormat2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g<Object> p(Class<?> cls) throws JsonMappingException {
        g<Object> g4 = this.f15494k.g(cls);
        if (g4 == null && (g4 = this.f15488e.m(cls)) == null) {
            g4 = m(cls);
        }
        if (isUnknownTypeSerializer(g4)) {
            return null;
        }
        return g4;
    }

    protected g<Object> q(g<?> gVar, BeanProperty beanProperty) throws JsonMappingException {
        if (gVar instanceof com.fasterxml.jackson.databind.ser.i) {
            ((com.fasterxml.jackson.databind.ser.i) gVar).resolve(this);
        }
        return handleSecondaryContextualization(gVar, beanProperty);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g<Object> r(g<?> gVar) throws JsonMappingException {
        if (gVar instanceof com.fasterxml.jackson.databind.ser.i) {
            ((com.fasterxml.jackson.databind.ser.i) gVar).resolve(this);
        }
        return gVar;
    }

    @Override // com.fasterxml.jackson.databind.c
    public <T> T reportBadDefinition(JavaType javaType, String str) throws JsonMappingException {
        throw InvalidDefinitionException.from(getGenerator(), str, javaType);
    }

    public <T> T reportBadPropertyDefinition(b bVar, com.fasterxml.jackson.databind.introspect.k kVar, String str, Object... objArr) throws JsonMappingException {
        throw InvalidDefinitionException.from(getGenerator(), String.format("Invalid definition for property %s (of type %s): %s", kVar != null ? d(kVar.getName()) : "N/A", bVar != null ? com.fasterxml.jackson.databind.util.g.j0(bVar.y()) : "N/A", c(str, objArr)), bVar, kVar);
    }

    public <T> T reportBadTypeDefinition(b bVar, String str, Object... objArr) throws JsonMappingException {
        throw InvalidDefinitionException.from(getGenerator(), String.format("Invalid type definition for type %s: %s", bVar != null ? com.fasterxml.jackson.databind.util.g.j0(bVar.y()) : "N/A", c(str, objArr)), bVar, (com.fasterxml.jackson.databind.introspect.k) null);
    }

    public void reportMappingProblem(String str, Object... objArr) throws JsonMappingException {
        throw mappingException(str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void s(Object obj, JavaType javaType) throws IOException {
        if (javaType.isPrimitive() && com.fasterxml.jackson.databind.util.g.A0(javaType.getRawClass()).isAssignableFrom(obj.getClass())) {
            return;
        }
        reportBadDefinition(javaType, String.format("Incompatible types: declared root type (%s) vs %s", javaType, com.fasterxml.jackson.databind.util.g.j(obj)));
    }

    public abstract g<Object> serializerInstance(com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException;

    public void setDefaultKeySerializer(g<Object> gVar) {
        if (gVar != null) {
            this.f15491h = gVar;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null JsonSerializer");
    }

    public void setNullKeySerializer(g<Object> gVar) {
        if (gVar != null) {
            this.f15493j = gVar;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null JsonSerializer");
    }

    public void setNullValueSerializer(g<Object> gVar) {
        if (gVar != null) {
            this.f15492i = gVar;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null JsonSerializer");
    }

    @Deprecated
    protected JsonMappingException t(Throwable th, String str, Object... objArr) {
        return JsonMappingException.from(getGenerator(), c(str, objArr), th);
    }

    public final t bufferForValueConversion() {
        return bufferForValueConversion(null);
    }

    @Override // com.fasterxml.jackson.databind.c
    public final SerializationConfig getConfig() {
        return this.f15485b;
    }

    public final boolean isEnabled(SerializationFeature serializationFeature) {
        return this.f15485b.isEnabled(serializationFeature);
    }

    public <T> T reportBadDefinition(JavaType javaType, String str, Throwable th) throws JsonMappingException {
        throw InvalidDefinitionException.from(getGenerator(), str, javaType).withCause(th);
    }

    public void reportMappingProblem(Throwable th, String str, Object... objArr) throws JsonMappingException {
        throw JsonMappingException.from(getGenerator(), c(str, objArr), th);
    }

    @Override // com.fasterxml.jackson.databind.c
    public l setAttribute(Object obj, Object obj2) {
        this.f15489f = this.f15489f.withPerCallAttribute(obj, obj2);
        return this;
    }

    public g<Object> findKeySerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        return findKeySerializer(this.f15485b.constructType(cls), beanProperty);
    }

    public void defaultSerializeDateKey(Date date, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.V0(String.valueOf(date.getTime()));
        } else {
            jsonGenerator.V0(o().format(date));
        }
    }

    public final void defaultSerializeDateValue(Date date, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS)) {
            jsonGenerator.b1(date.getTime());
        } else {
            jsonGenerator.P1(o().format(date));
        }
    }

    public <T> T reportBadDefinition(Class<?> cls, String str, Throwable th) throws JsonMappingException {
        throw InvalidDefinitionException.from(getGenerator(), str, constructType(cls)).withCause(th);
    }

    public g<Object> findContentValueSerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> g4 = this.f15494k.g(cls);
        if (g4 == null && (g4 = this.f15488e.m(cls)) == null && (g4 = this.f15488e.l(this.f15485b.constructType(cls))) == null && (g4 = m(cls)) == null) {
            return getUnknownTypeSerializer(cls);
        }
        return handleSecondaryContextualization(g4, beanProperty);
    }

    public g<Object> findPrimaryPropertySerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> g4 = this.f15494k.g(cls);
        if (g4 == null && (g4 = this.f15488e.m(cls)) == null && (g4 = this.f15488e.l(this.f15485b.constructType(cls))) == null && (g4 = m(cls)) == null) {
            return getUnknownTypeSerializer(cls);
        }
        return handlePrimaryContextualization(g4, beanProperty);
    }

    public g<Object> findValueSerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        if (javaType == null) {
            reportMappingProblem("Null passed for `valueType` of `findValueSerializer()`", new Object[0]);
        }
        g<Object> f10 = this.f15494k.f(javaType);
        if (f10 == null && (f10 = this.f15488e.l(javaType)) == null && (f10 = l(javaType)) == null) {
            return getUnknownTypeSerializer(javaType.getRawClass());
        }
        return handleSecondaryContextualization(f10, beanProperty);
    }

    public g<Object> findTypedValueSerializer(JavaType javaType, boolean z9, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> d4 = this.f15494k.d(javaType);
        if (d4 != null) {
            return d4;
        }
        g<Object> j4 = this.f15488e.j(javaType);
        if (j4 != null) {
            return j4;
        }
        g<Object> findValueSerializer = findValueSerializer(javaType, beanProperty);
        com.fasterxml.jackson.databind.jsontype.f createTypeSerializer = this.f15487d.createTypeSerializer(this.f15485b, javaType);
        if (createTypeSerializer != null) {
            findValueSerializer = new com.fasterxml.jackson.databind.ser.impl.e(createTypeSerializer.b(beanProperty), findValueSerializer);
        }
        if (z9) {
            this.f15488e.e(javaType, findValueSerializer);
        }
        return findValueSerializer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l(l lVar, SerializationConfig serializationConfig, com.fasterxml.jackson.databind.ser.k kVar) {
        this.f15490g = f15484o;
        this.f15492i = NullSerializer.instance;
        g<Object> gVar = DEFAULT_NULL_KEY_SERIALIZER;
        this.f15493j = gVar;
        this.f15487d = kVar;
        this.f15485b = serializationConfig;
        com.fasterxml.jackson.databind.ser.j jVar = lVar.f15488e;
        this.f15488e = jVar;
        this.f15490g = lVar.f15490g;
        this.f15491h = lVar.f15491h;
        g<Object> gVar2 = lVar.f15492i;
        this.f15492i = gVar2;
        this.f15493j = lVar.f15493j;
        this.f15496m = gVar2 == gVar;
        this.f15486c = serializationConfig.getActiveView();
        this.f15489f = serializationConfig.getAttributes();
        this.f15494k = jVar.h();
    }

    public g<Object> findValueSerializer(Class<?> cls) throws JsonMappingException {
        g<Object> g4 = this.f15494k.g(cls);
        if (g4 == null) {
            g<Object> m9 = this.f15488e.m(cls);
            if (m9 == null) {
                g<Object> l10 = this.f15488e.l(this.f15485b.constructType(cls));
                if (l10 == null) {
                    g<Object> m10 = m(cls);
                    return m10 == null ? getUnknownTypeSerializer(cls) : m10;
                }
                return l10;
            }
            return m9;
        }
        return g4;
    }

    public g<Object> findValueSerializer(JavaType javaType) throws JsonMappingException {
        g<Object> f10 = this.f15494k.f(javaType);
        if (f10 == null) {
            g<Object> l10 = this.f15488e.l(javaType);
            if (l10 == null) {
                g<Object> l11 = l(javaType);
                return l11 == null ? getUnknownTypeSerializer(javaType.getRawClass()) : l11;
            }
            return l10;
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l(l lVar) {
        this.f15490g = f15484o;
        this.f15492i = NullSerializer.instance;
        this.f15493j = DEFAULT_NULL_KEY_SERIALIZER;
        this.f15485b = null;
        this.f15486c = null;
        this.f15487d = null;
        this.f15494k = null;
        this.f15488e = new com.fasterxml.jackson.databind.ser.j();
        this.f15490g = lVar.f15490g;
        this.f15491h = lVar.f15491h;
        this.f15492i = lVar.f15492i;
        this.f15493j = lVar.f15493j;
        this.f15496m = lVar.f15496m;
    }
}
