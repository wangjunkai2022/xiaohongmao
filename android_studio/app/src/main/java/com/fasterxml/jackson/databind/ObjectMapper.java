package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadFeature;
import com.fasterxml.jackson.core.StreamWriteFeature;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.core.exc.StreamWriteException;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.m;
import com.fasterxml.jackson.core.n;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.CoercionConfigs;
import com.fasterxml.jackson.databind.cfg.ConfigOverrides;
import com.fasterxml.jackson.databind.cfg.ConstructorDetector;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MutableCoercionConfig;
import com.fasterxml.jackson.databind.cfg.MutableConfigOverride;
import com.fasterxml.jackson.databind.deser.BeanDeserializerFactory;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.o;
import com.fasterxml.jackson.databind.exc.MismatchedInputException;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.j;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.jsontype.impl.LaissezFaireSubTypeValidator;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.POJONode;
import com.fasterxml.jackson.databind.ser.BeanSerializerFactory;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import com.fasterxml.jackson.databind.util.t;
import io.sentry.h4;
import io.sentry.protocol.v;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.lang.reflect.Type;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class ObjectMapper extends com.fasterxml.jackson.core.h implements n, Serializable {

    /* renamed from: o  reason: collision with root package name */
    private static final long f14372o = 2;

    /* renamed from: p  reason: collision with root package name */
    protected static final AnnotationIntrospector f14373p;

    /* renamed from: q  reason: collision with root package name */
    protected static final BaseSettings f14374q;

    /* renamed from: a  reason: collision with root package name */
    protected final JsonFactory f14375a;

    /* renamed from: b  reason: collision with root package name */
    protected TypeFactory f14376b;

    /* renamed from: c  reason: collision with root package name */
    protected InjectableValues f14377c;

    /* renamed from: d  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.jsontype.a f14378d;

    /* renamed from: e  reason: collision with root package name */
    protected final ConfigOverrides f14379e;

    /* renamed from: f  reason: collision with root package name */
    protected final CoercionConfigs f14380f;

    /* renamed from: g  reason: collision with root package name */
    protected SimpleMixInResolver f14381g;

    /* renamed from: h  reason: collision with root package name */
    protected SerializationConfig f14382h;

    /* renamed from: i  reason: collision with root package name */
    protected DefaultSerializerProvider f14383i;

    /* renamed from: j  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.ser.k f14384j;

    /* renamed from: k  reason: collision with root package name */
    protected DeserializationConfig f14385k;

    /* renamed from: l  reason: collision with root package name */
    protected DefaultDeserializationContext f14386l;

    /* renamed from: m  reason: collision with root package name */
    protected Set<Object> f14387m;

    /* renamed from: n  reason: collision with root package name */
    protected final ConcurrentHashMap<JavaType, d<Object>> f14388n;

    /* loaded from: classes.dex */
    public static class DefaultTypeResolverBuilder extends com.fasterxml.jackson.databind.jsontype.impl.h implements Serializable {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14389i = 1;

        /* renamed from: g  reason: collision with root package name */
        protected final DefaultTyping f14390g;

        /* renamed from: h  reason: collision with root package name */
        protected final PolymorphicTypeValidator f14391h;

        @Deprecated
        public DefaultTypeResolverBuilder(DefaultTyping defaultTyping) {
            this(defaultTyping, LaissezFaireSubTypeValidator.instance);
        }

        public static DefaultTypeResolverBuilder construct(DefaultTyping defaultTyping, PolymorphicTypeValidator polymorphicTypeValidator) {
            return new DefaultTypeResolverBuilder(defaultTyping, polymorphicTypeValidator);
        }

        private static <T> T h(T t9, String str) {
            Objects.requireNonNull(t9, str);
            return t9;
        }

        @Override // com.fasterxml.jackson.databind.jsontype.impl.h, com.fasterxml.jackson.databind.jsontype.e
        public com.fasterxml.jackson.databind.jsontype.b buildTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, Collection<NamedType> collection) {
            if (useForType(javaType)) {
                return super.buildTypeDeserializer(deserializationConfig, javaType, collection);
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsontype.impl.h, com.fasterxml.jackson.databind.jsontype.e
        public com.fasterxml.jackson.databind.jsontype.f buildTypeSerializer(SerializationConfig serializationConfig, JavaType javaType, Collection<NamedType> collection) {
            if (useForType(javaType)) {
                return super.buildTypeSerializer(serializationConfig, javaType, collection);
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsontype.impl.h
        public PolymorphicTypeValidator subTypeValidator(MapperConfig<?> mapperConfig) {
            return this.f14391h;
        }

        public boolean useForType(JavaType javaType) {
            if (javaType.isPrimitive()) {
                return false;
            }
            int i4 = c.f14396a[this.f14390g.ordinal()];
            if (i4 == 1) {
                while (javaType.isArrayType()) {
                    javaType = javaType.getContentType();
                }
            } else if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        return javaType.isJavaLangObject();
                    }
                    return true;
                }
                while (javaType.isArrayType()) {
                    javaType = javaType.getContentType();
                }
                while (javaType.isReferenceType()) {
                    javaType = javaType.getReferencedType();
                }
                return (javaType.isFinal() || m.class.isAssignableFrom(javaType.getRawClass())) ? false : true;
            }
            while (javaType.isReferenceType()) {
                javaType = javaType.getReferencedType();
            }
            return javaType.isJavaLangObject() || !(javaType.isConcrete() || m.class.isAssignableFrom(javaType.getRawClass()));
        }

        @Override // com.fasterxml.jackson.databind.jsontype.impl.h, com.fasterxml.jackson.databind.jsontype.e
        /* renamed from: withDefaultImpl  reason: avoid collision after fix types in other method */
        public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.jsontype.impl.h withDefaultImpl2(Class cls) {
            return withDefaultImpl((Class<?>) cls);
        }

        public DefaultTypeResolverBuilder(DefaultTyping defaultTyping, PolymorphicTypeValidator polymorphicTypeValidator) {
            this.f14390g = (DefaultTyping) h(defaultTyping, "Can not pass `null` DefaultTyping");
            this.f14391h = (PolymorphicTypeValidator) h(polymorphicTypeValidator, "Can not pass `null` PolymorphicTypeValidator");
        }

        @Override // com.fasterxml.jackson.databind.jsontype.impl.h, com.fasterxml.jackson.databind.jsontype.e
        public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.jsontype.impl.h withDefaultImpl(Class cls) {
            return withDefaultImpl((Class<?>) cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.impl.h, com.fasterxml.jackson.databind.jsontype.e
        public com.fasterxml.jackson.databind.jsontype.impl.h withDefaultImpl(Class<?> cls) {
            if (this.f15455e == cls) {
                return this;
            }
            com.fasterxml.jackson.databind.util.g.z0(DefaultTypeResolverBuilder.class, this, "withDefaultImpl");
            return new DefaultTypeResolverBuilder(this, cls);
        }

        protected DefaultTypeResolverBuilder(DefaultTypeResolverBuilder defaultTypeResolverBuilder, Class<?> cls) {
            super(defaultTypeResolverBuilder, cls);
            this.f14390g = defaultTypeResolverBuilder.f14390g;
            this.f14391h = defaultTypeResolverBuilder.f14391h;
        }
    }

    /* loaded from: classes.dex */
    public enum DefaultTyping {
        JAVA_LANG_OBJECT,
        OBJECT_AND_NON_CONCRETE,
        NON_CONCRETE_AND_ARRAYS,
        NON_FINAL,
        EVERYTHING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j.a {
        a() {
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public TypeFactory A() {
            return ObjectMapper.this.f14376b;
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public boolean B(JsonParser.Feature feature) {
            return ObjectMapper.this.isEnabled(feature);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void a(com.fasterxml.jackson.databind.a aVar) {
            com.fasterxml.jackson.databind.deser.g withAbstractTypeResolver = ObjectMapper.this.f14386l.f14335c.withAbstractTypeResolver(aVar);
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14386l = objectMapper.f14386l.with(withAbstractTypeResolver);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void b(com.fasterxml.jackson.databind.ser.l lVar) {
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14384j = objectMapper.f14384j.withAdditionalSerializers(lVar);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void c(com.fasterxml.jackson.databind.deser.i iVar) {
            com.fasterxml.jackson.databind.deser.g withAdditionalDeserializers = ObjectMapper.this.f14386l.f14335c.withAdditionalDeserializers(iVar);
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14386l = objectMapper.f14386l.with(withAdditionalDeserializers);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public Version d() {
            return ObjectMapper.this.version();
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void e(com.fasterxml.jackson.databind.deser.j jVar) {
            com.fasterxml.jackson.databind.deser.g withAdditionalKeyDeserializers = ObjectMapper.this.f14386l.f14335c.withAdditionalKeyDeserializers(jVar);
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14386l = objectMapper.f14386l.with(withAdditionalKeyDeserializers);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void f(o oVar) {
            com.fasterxml.jackson.databind.deser.g withValueInstantiators = ObjectMapper.this.f14386l.f14335c.withValueInstantiators(oVar);
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14386l = objectMapper.f14386l.with(withValueInstantiators);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void g(NamedType... namedTypeArr) {
            ObjectMapper.this.registerSubtypes(namedTypeArr);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public <C extends com.fasterxml.jackson.core.h> C h() {
            return ObjectMapper.this;
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void i(com.fasterxml.jackson.databind.type.b bVar) {
            ObjectMapper.this.setTypeFactory(ObjectMapper.this.f14376b.withModifier(bVar));
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void j(com.fasterxml.jackson.databind.ser.l lVar) {
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14384j = objectMapper.f14384j.withAdditionalKeySerializers(lVar);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void k(com.fasterxml.jackson.databind.deser.f fVar) {
            ObjectMapper.this.addHandler(fVar);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void l(AnnotationIntrospector annotationIntrospector) {
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14385k = objectMapper.f14385k.withAppendedAnnotationIntrospector(annotationIntrospector);
            ObjectMapper objectMapper2 = ObjectMapper.this;
            objectMapper2.f14382h = objectMapper2.f14382h.withAppendedAnnotationIntrospector(annotationIntrospector);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void m(Class<?>... clsArr) {
            ObjectMapper.this.registerSubtypes(clsArr);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public boolean n(JsonFactory.Feature feature) {
            return ObjectMapper.this.isEnabled(feature);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public boolean o(DeserializationFeature deserializationFeature) {
            return ObjectMapper.this.isEnabled(deserializationFeature);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void p(Class<?> cls, Class<?> cls2) {
            ObjectMapper.this.addMixIn(cls, cls2);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public MutableConfigOverride q(Class<?> cls) {
            return ObjectMapper.this.configOverride(cls);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public boolean r(SerializationFeature serializationFeature) {
            return ObjectMapper.this.isEnabled(serializationFeature);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void s(com.fasterxml.jackson.databind.ser.d dVar) {
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14384j = objectMapper.f14384j.withSerializerModifier(dVar);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void t(Collection<Class<?>> collection) {
            ObjectMapper.this.registerSubtypes(collection);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public boolean u(JsonGenerator.Feature feature) {
            return ObjectMapper.this.isEnabled(feature);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void v(com.fasterxml.jackson.databind.deser.b bVar) {
            com.fasterxml.jackson.databind.deser.g withDeserializerModifier = ObjectMapper.this.f14386l.f14335c.withDeserializerModifier(bVar);
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14386l = objectMapper.f14386l.with(withDeserializerModifier);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void w(AnnotationIntrospector annotationIntrospector) {
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14385k = objectMapper.f14385k.withInsertedAnnotationIntrospector(annotationIntrospector);
            ObjectMapper objectMapper2 = ObjectMapper.this;
            objectMapper2.f14382h = objectMapper2.f14382h.withInsertedAnnotationIntrospector(annotationIntrospector);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void x(PropertyNamingStrategy propertyNamingStrategy) {
            ObjectMapper.this.setPropertyNamingStrategy(propertyNamingStrategy);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public boolean y(MapperFeature mapperFeature) {
            return ObjectMapper.this.isEnabled(mapperFeature);
        }

        @Override // com.fasterxml.jackson.databind.j.a
        public void z(com.fasterxml.jackson.databind.introspect.l lVar) {
            ObjectMapper objectMapper = ObjectMapper.this;
            objectMapper.f14385k = objectMapper.f14385k.with(lVar);
            ObjectMapper objectMapper2 = ObjectMapper.this;
            objectMapper2.f14382h = objectMapper2.f14382h.with(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b implements PrivilegedAction<ServiceLoader<T>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassLoader f14394a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f14395b;

        b(ClassLoader classLoader, Class cls) {
            this.f14394a = classLoader;
            this.f14395b = cls;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public ServiceLoader<T> run() {
            ClassLoader classLoader = this.f14394a;
            return classLoader == null ? ServiceLoader.load(this.f14395b) : ServiceLoader.load(this.f14395b, classLoader);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14396a;

        static {
            int[] iArr = new int[DefaultTyping.values().length];
            f14396a = iArr;
            try {
                iArr[DefaultTyping.NON_CONCRETE_AND_ARRAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14396a[DefaultTyping.OBJECT_AND_NON_CONCRETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14396a[DefaultTyping.NON_FINAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14396a[DefaultTyping.EVERYTHING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14396a[DefaultTyping.JAVA_LANG_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        JacksonAnnotationIntrospector jacksonAnnotationIntrospector = new JacksonAnnotationIntrospector();
        f14373p = jacksonAnnotationIntrospector;
        f14374q = new BaseSettings(null, jacksonAnnotationIntrospector, null, TypeFactory.defaultInstance(), null, StdDateFormat.instance, null, Locale.getDefault(), null, com.fasterxml.jackson.core.a.a(), LaissezFaireSubTypeValidator.instance, new DefaultAccessorNamingStrategy.Provider());
    }

    public ObjectMapper() {
        this(null, null, null);
    }

    public static List<j> findModules() {
        return findModules(null);
    }

    private final void u(JsonGenerator jsonGenerator, Object obj, SerializationConfig serializationConfig) throws IOException {
        Closeable closeable = (Closeable) obj;
        try {
            r(serializationConfig).serializeValue(jsonGenerator, obj);
            try {
                closeable.close();
                jsonGenerator.close();
            } catch (Exception e4) {
                e = e4;
                closeable = null;
                com.fasterxml.jackson.databind.util.g.l(jsonGenerator, closeable, e);
            }
        } catch (Exception e10) {
            e = e10;
        }
    }

    private final void v(JsonGenerator jsonGenerator, Object obj, SerializationConfig serializationConfig) throws IOException {
        Closeable closeable = (Closeable) obj;
        try {
            r(serializationConfig).serializeValue(jsonGenerator, obj);
            if (serializationConfig.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
                jsonGenerator.flush();
            }
            closeable.close();
        } catch (Exception e4) {
            com.fasterxml.jackson.databind.util.g.l(null, closeable, e4);
        }
    }

    private static <T> ServiceLoader<T> z(Class<T> cls, ClassLoader classLoader) {
        if (System.getSecurityManager() == null) {
            return classLoader == null ? ServiceLoader.load(cls) : ServiceLoader.load(cls, classLoader);
        }
        return (ServiceLoader) AccessController.doPrivileged(new b(classLoader, cls));
    }

    protected final void a(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format("argument \"%s\" is null", str));
        }
    }

    public void acceptJsonFormatVisitor(Class<?> cls, com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar) throws JsonMappingException {
        acceptJsonFormatVisitor(this.f14376b.constructType(cls), fVar);
    }

    public ObjectMapper activateDefaultTyping(PolymorphicTypeValidator polymorphicTypeValidator) {
        return activateDefaultTyping(polymorphicTypeValidator, DefaultTyping.OBJECT_AND_NON_CONCRETE);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.fasterxml.jackson.databind.jsontype.e] */
    public ObjectMapper activateDefaultTypingAsProperty(PolymorphicTypeValidator polymorphicTypeValidator, DefaultTyping defaultTyping, String str) {
        return setDefaultTyping(d(defaultTyping, polymorphicTypeValidator).init(JsonTypeInfo.Id.CLASS, null).inclusion(JsonTypeInfo.As.PROPERTY).typeProperty(str));
    }

    public ObjectMapper addHandler(com.fasterxml.jackson.databind.deser.f fVar) {
        this.f14385k = this.f14385k.withHandler(fVar);
        return this;
    }

    public ObjectMapper addMixIn(Class<?> cls, Class<?> cls2) {
        this.f14381g.addLocalDefinition(cls, cls2);
        return this;
    }

    @Deprecated
    public final void addMixInAnnotations(Class<?> cls, Class<?> cls2) {
        addMixIn(cls, cls2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Class<?> cls) {
        if (getClass() == cls) {
            return;
        }
        throw new IllegalStateException("Failed copy(): " + getClass().getName() + " (version: " + version() + ") does not override copy(); it has to");
    }

    @Deprecated
    protected final void c(JsonGenerator jsonGenerator, Object obj) throws IOException {
        getSerializationConfig().initialize(jsonGenerator);
        w(jsonGenerator, obj);
    }

    public boolean canDeserialize(JavaType javaType) {
        return x(null, getDeserializationConfig()).hasValueDeserializerFor(javaType, null);
    }

    public boolean canSerialize(Class<?> cls) {
        return r(getSerializationConfig()).hasSerializerFor(cls, null);
    }

    public ObjectMapper clearProblemHandlers() {
        this.f14385k = this.f14385k.withNoProblemHandlers();
        return this;
    }

    public MutableCoercionConfig coercionConfigDefaults() {
        return this.f14380f.defaultCoercions();
    }

    public MutableCoercionConfig coercionConfigFor(LogicalType logicalType) {
        return this.f14380f.findOrCreateCoercion(logicalType);
    }

    public MutableConfigOverride configOverride(Class<?> cls) {
        return this.f14379e.findOrCreateOverride(cls);
    }

    @Deprecated
    public ObjectMapper configure(MapperFeature mapperFeature, boolean z9) {
        this.f14382h = z9 ? this.f14382h.with(mapperFeature) : this.f14382h.without(mapperFeature);
        this.f14385k = z9 ? this.f14385k.with(mapperFeature) : this.f14385k.without(mapperFeature);
        return this;
    }

    public JavaType constructType(Type type) {
        a("t", type);
        return this.f14376b.constructType(type);
    }

    public <T> T convertValue(Object obj, Class<T> cls) throws IllegalArgumentException {
        return (T) e(obj, this.f14376b.constructType(cls));
    }

    public ObjectMapper copy() {
        b(ObjectMapper.class);
        return new ObjectMapper(this);
    }

    public JsonGenerator createGenerator(OutputStream outputStream) throws IOException {
        a("out", outputStream);
        JsonGenerator createGenerator = this.f14375a.createGenerator(outputStream, JsonEncoding.UTF8);
        this.f14382h.initialize(createGenerator);
        return createGenerator;
    }

    public JsonParser createNonBlockingByteArrayParser() throws IOException {
        return this.f14385k.initialize(this.f14375a.createNonBlockingByteArrayParser());
    }

    public JsonParser createParser(File file) throws IOException {
        a("src", file);
        return this.f14385k.initialize(this.f14375a.createParser(file));
    }

    protected com.fasterxml.jackson.databind.jsontype.e<?> d(DefaultTyping defaultTyping, PolymorphicTypeValidator polymorphicTypeValidator) {
        return DefaultTypeResolverBuilder.construct(defaultTyping, polymorphicTypeValidator);
    }

    public ObjectMapper deactivateDefaultTyping() {
        return setDefaultTyping(null);
    }

    @Deprecated
    public ObjectMapper disable(MapperFeature... mapperFeatureArr) {
        this.f14385k = this.f14385k.without(mapperFeatureArr);
        this.f14382h = this.f14382h.without(mapperFeatureArr);
        return this;
    }

    @Deprecated
    public ObjectMapper disableDefaultTyping() {
        return setDefaultTyping(null);
    }

    protected Object e(Object obj, JavaType javaType) throws IllegalArgumentException {
        Object obj2;
        DefaultSerializerProvider r9 = r(getSerializationConfig().without(SerializationFeature.WRAP_ROOT_VALUE));
        t bufferForValueConversion = r9.bufferForValueConversion(this);
        if (isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
            bufferForValueConversion = bufferForValueConversion.o2(true);
        }
        try {
            r9.serializeValue(bufferForValueConversion, obj);
            JsonParser i22 = bufferForValueConversion.i2();
            DeserializationConfig deserializationConfig = getDeserializationConfig();
            JsonToken i4 = i(i22, javaType);
            if (i4 == JsonToken.VALUE_NULL) {
                DefaultDeserializationContext x9 = x(i22, deserializationConfig);
                obj2 = h(x9, javaType).getNullValue(x9);
            } else {
                if (i4 != JsonToken.END_ARRAY && i4 != JsonToken.END_OBJECT) {
                    DefaultDeserializationContext x10 = x(i22, deserializationConfig);
                    obj2 = h(x10, javaType).deserialize(i22, x10);
                }
                obj2 = null;
            }
            i22.close();
            return obj2;
        } catch (IOException e4) {
            throw new IllegalArgumentException(e4.getMessage(), e4);
        }
    }

    @Deprecated
    public ObjectMapper enable(MapperFeature... mapperFeatureArr) {
        this.f14385k = this.f14385k.with(mapperFeatureArr);
        this.f14382h = this.f14382h.with(mapperFeatureArr);
        return this;
    }

    @Deprecated
    public ObjectMapper enableDefaultTyping() {
        return activateDefaultTyping(getPolymorphicTypeValidator());
    }

    @Deprecated
    public ObjectMapper enableDefaultTypingAsProperty(DefaultTyping defaultTyping, String str) {
        return activateDefaultTypingAsProperty(getPolymorphicTypeValidator(), defaultTyping, str);
    }

    public ObjectMapper findAndRegisterModules() {
        return registerModules(findModules());
    }

    public Class<?> findMixInClassFor(Class<?> cls) {
        return this.f14381g.findMixInClassFor(cls);
    }

    @Deprecated
    public d2.a generateJsonSchema(Class<?> cls) throws JsonMappingException {
        return r(getSerializationConfig()).generateJsonSchema(cls);
    }

    public DateFormat getDateFormat() {
        return this.f14382h.getDateFormat();
    }

    public DeserializationConfig getDeserializationConfig() {
        return this.f14385k;
    }

    public DeserializationContext getDeserializationContext() {
        return this.f14386l;
    }

    @Override // com.fasterxml.jackson.core.h
    public JsonFactory getFactory() {
        return this.f14375a;
    }

    public InjectableValues getInjectableValues() {
        return this.f14377c;
    }

    public JsonNodeFactory getNodeFactory() {
        return this.f14385k.getNodeFactory();
    }

    public PolymorphicTypeValidator getPolymorphicTypeValidator() {
        return this.f14385k.i().getPolymorphicTypeValidator();
    }

    public PropertyNamingStrategy getPropertyNamingStrategy() {
        return this.f14382h.getPropertyNamingStrategy();
    }

    public Set<Object> getRegisteredModuleIds() {
        Set<Object> set = this.f14387m;
        return set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
    }

    public SerializationConfig getSerializationConfig() {
        return this.f14382h;
    }

    public com.fasterxml.jackson.databind.ser.k getSerializerFactory() {
        return this.f14384j;
    }

    public l getSerializerProvider() {
        return this.f14383i;
    }

    public l getSerializerProviderInstance() {
        return r(this.f14382h);
    }

    public com.fasterxml.jackson.databind.jsontype.a getSubtypeResolver() {
        return this.f14378d;
    }

    public TypeFactory getTypeFactory() {
        return this.f14376b;
    }

    public VisibilityChecker<?> getVisibilityChecker() {
        return this.f14382h.getDefaultVisibilityChecker();
    }

    protected d<Object> h(DeserializationContext deserializationContext, JavaType javaType) throws DatabindException {
        d<Object> dVar = this.f14388n.get(javaType);
        if (dVar != null) {
            return dVar;
        }
        d<Object> findRootValueDeserializer = deserializationContext.findRootValueDeserializer(javaType);
        if (findRootValueDeserializer == null) {
            return (d) deserializationContext.reportBadDefinition(javaType, "Cannot find a deserializer for type " + javaType);
        }
        this.f14388n.put(javaType, findRootValueDeserializer);
        return findRootValueDeserializer;
    }

    protected JsonToken i(JsonParser jsonParser, JavaType javaType) throws IOException {
        this.f14385k.initialize(jsonParser);
        JsonToken W = jsonParser.W();
        if (W == null && (W = jsonParser.y1()) == null) {
            throw MismatchedInputException.from(jsonParser, javaType, "No content to map due to end-of-input");
        }
        return W;
    }

    public boolean isEnabled(MapperFeature mapperFeature) {
        return this.f14382h.isEnabled(mapperFeature);
    }

    protected ObjectReader j(DeserializationConfig deserializationConfig) {
        return new ObjectReader(this, deserializationConfig);
    }

    protected ObjectReader k(DeserializationConfig deserializationConfig, JavaType javaType, Object obj, com.fasterxml.jackson.core.c cVar, InjectableValues injectableValues) {
        return new ObjectReader(this, deserializationConfig, javaType, obj, cVar, injectableValues);
    }

    protected ObjectWriter l(SerializationConfig serializationConfig) {
        return new ObjectWriter(this, serializationConfig);
    }

    protected ObjectWriter m(SerializationConfig serializationConfig, com.fasterxml.jackson.core.c cVar) {
        return new ObjectWriter(this, serializationConfig, cVar);
    }

    public int mixInCount() {
        return this.f14381g.localSize();
    }

    protected ObjectWriter n(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.core.i iVar) {
        return new ObjectWriter(this, serializationConfig, javaType, iVar);
    }

    protected Object o(JsonParser jsonParser, JavaType javaType) throws IOException {
        try {
            DeserializationConfig deserializationConfig = getDeserializationConfig();
            DefaultDeserializationContext x9 = x(jsonParser, deserializationConfig);
            JsonToken i4 = i(jsonParser, javaType);
            Object obj = null;
            if (i4 == JsonToken.VALUE_NULL) {
                obj = h(x9, javaType).getNullValue(x9);
            } else if (i4 != JsonToken.END_ARRAY && i4 != JsonToken.END_OBJECT) {
                obj = x9.readRootValue(jsonParser, javaType, h(x9, javaType), null);
                x9.checkUnresolvedObjectId();
            }
            if (deserializationConfig.isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)) {
                s(jsonParser, x9, javaType);
            }
            if (jsonParser != null) {
                jsonParser.close();
            }
            return obj;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (jsonParser != null) {
                    try {
                        jsonParser.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    protected e p(JsonParser jsonParser) throws IOException {
        e eVar;
        try {
            JavaType constructType = constructType(e.class);
            DeserializationConfig deserializationConfig = getDeserializationConfig();
            deserializationConfig.initialize(jsonParser);
            JsonToken W = jsonParser.W();
            if (W == null && (W = jsonParser.y1()) == null) {
                e missingNode = deserializationConfig.getNodeFactory().missingNode();
                jsonParser.close();
                return missingNode;
            }
            DefaultDeserializationContext x9 = x(jsonParser, deserializationConfig);
            if (W == JsonToken.VALUE_NULL) {
                eVar = deserializationConfig.getNodeFactory().nullNode();
            } else {
                eVar = (e) x9.readRootValue(jsonParser, constructType, h(x9, constructType), null);
            }
            if (deserializationConfig.isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)) {
                s(jsonParser, x9, constructType);
            }
            jsonParser.close();
            return eVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (jsonParser != null) {
                    try {
                        jsonParser.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    protected Object q(DeserializationConfig deserializationConfig, JsonParser jsonParser, JavaType javaType) throws IOException {
        JsonToken i4 = i(jsonParser, javaType);
        DefaultDeserializationContext x9 = x(jsonParser, deserializationConfig);
        Object obj = null;
        if (i4 == JsonToken.VALUE_NULL) {
            obj = h(x9, javaType).getNullValue(x9);
        } else if (i4 != JsonToken.END_ARRAY && i4 != JsonToken.END_OBJECT) {
            obj = x9.readRootValue(jsonParser, javaType, h(x9, javaType), null);
        }
        jsonParser.J();
        if (deserializationConfig.isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)) {
            s(jsonParser, x9, javaType);
        }
        return obj;
    }

    protected DefaultSerializerProvider r(SerializationConfig serializationConfig) {
        return this.f14383i.createInstance(serializationConfig, this.f14384j);
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public <T extends m> T readTree(JsonParser jsonParser) throws IOException {
        a("p", jsonParser);
        DeserializationConfig deserializationConfig = getDeserializationConfig();
        if (jsonParser.W() == null && jsonParser.y1() == null) {
            return null;
        }
        e eVar = (e) q(deserializationConfig, jsonParser, constructType(e.class));
        return eVar == null ? getNodeFactory().nullNode() : eVar;
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException, StreamReadException, DatabindException {
        a("p", jsonParser);
        return (T) q(getDeserializationConfig(), jsonParser, this.f14376b.constructType(cls));
    }

    public ObjectReader reader() {
        return j(getDeserializationConfig()).with(this.f14377c);
    }

    public ObjectReader readerFor(JavaType javaType) {
        return k(getDeserializationConfig(), javaType, null, null, this.f14377c);
    }

    public ObjectReader readerForArrayOf(Class<?> cls) {
        return k(getDeserializationConfig(), this.f14376b.constructArrayType(cls), null, null, this.f14377c);
    }

    public ObjectReader readerForListOf(Class<?> cls) {
        return k(getDeserializationConfig(), this.f14376b.constructCollectionType(List.class, cls), null, null, this.f14377c);
    }

    public ObjectReader readerForMapOf(Class<?> cls) {
        return k(getDeserializationConfig(), this.f14376b.constructMapType(Map.class, String.class, cls), null, null, this.f14377c);
    }

    public ObjectReader readerForUpdating(Object obj) {
        return k(getDeserializationConfig(), this.f14376b.constructType(obj.getClass()), obj, null, this.f14377c);
    }

    public ObjectReader readerWithView(Class<?> cls) {
        return j(getDeserializationConfig().withView(cls));
    }

    public ObjectMapper registerModule(j jVar) {
        Object typeId;
        a("module", jVar);
        if (jVar.getModuleName() != null) {
            if (jVar.version() != null) {
                for (j jVar2 : jVar.getDependencies()) {
                    registerModule(jVar2);
                }
                if (isEnabled(MapperFeature.IGNORE_DUPLICATE_MODULE_REGISTRATIONS) && (typeId = jVar.getTypeId()) != null) {
                    if (this.f14387m == null) {
                        this.f14387m = new LinkedHashSet();
                    }
                    if (!this.f14387m.add(typeId)) {
                        return this;
                    }
                }
                jVar.setupModule(new a());
                return this;
            }
            throw new IllegalArgumentException("Module without defined version");
        }
        throw new IllegalArgumentException("Module without defined name");
    }

    public ObjectMapper registerModules(j... jVarArr) {
        for (j jVar : jVarArr) {
            registerModule(jVar);
        }
        return this;
    }

    public void registerSubtypes(Class<?>... clsArr) {
        getSubtypeResolver().registerSubtypes(clsArr);
    }

    protected final void s(JsonParser jsonParser, DeserializationContext deserializationContext, JavaType javaType) throws IOException {
        JsonToken y12 = jsonParser.y1();
        if (y12 != null) {
            deserializationContext.reportTrailingTokens(com.fasterxml.jackson.databind.util.g.p0(javaType), jsonParser, y12);
        }
    }

    public ObjectMapper setAccessorNaming(AccessorNamingStrategy.Provider provider) {
        this.f14382h = this.f14382h.with(provider);
        this.f14385k = this.f14385k.with(provider);
        return this;
    }

    public ObjectMapper setAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        this.f14382h = this.f14382h.with(annotationIntrospector);
        this.f14385k = this.f14385k.with(annotationIntrospector);
        return this;
    }

    public ObjectMapper setAnnotationIntrospectors(AnnotationIntrospector annotationIntrospector, AnnotationIntrospector annotationIntrospector2) {
        this.f14382h = this.f14382h.with(annotationIntrospector);
        this.f14385k = this.f14385k.with(annotationIntrospector2);
        return this;
    }

    public ObjectMapper setBase64Variant(Base64Variant base64Variant) {
        this.f14382h = this.f14382h.with(base64Variant);
        this.f14385k = this.f14385k.with(base64Variant);
        return this;
    }

    public ObjectMapper setConfig(DeserializationConfig deserializationConfig) {
        a("config", deserializationConfig);
        this.f14385k = deserializationConfig;
        return this;
    }

    public ObjectMapper setConstructorDetector(ConstructorDetector constructorDetector) {
        this.f14385k = this.f14385k.with(constructorDetector);
        return this;
    }

    public ObjectMapper setDateFormat(DateFormat dateFormat) {
        this.f14385k = this.f14385k.with(dateFormat);
        this.f14382h = this.f14382h.with(dateFormat);
        return this;
    }

    public ObjectMapper setDefaultAttributes(ContextAttributes contextAttributes) {
        this.f14385k = this.f14385k.with(contextAttributes);
        this.f14382h = this.f14382h.with(contextAttributes);
        return this;
    }

    public ObjectMapper setDefaultLeniency(Boolean bool) {
        this.f14379e.setDefaultLeniency(bool);
        return this;
    }

    public ObjectMapper setDefaultMergeable(Boolean bool) {
        this.f14379e.setDefaultMergeable(bool);
        return this;
    }

    public ObjectMapper setDefaultPrettyPrinter(com.fasterxml.jackson.core.i iVar) {
        this.f14382h = this.f14382h.withDefaultPrettyPrinter(iVar);
        return this;
    }

    public ObjectMapper setDefaultPropertyInclusion(JsonInclude.Value value) {
        this.f14379e.setDefaultInclusion(value);
        return this;
    }

    public ObjectMapper setDefaultSetterInfo(JsonSetter.Value value) {
        this.f14379e.setDefaultSetterInfo(value);
        return this;
    }

    public ObjectMapper setDefaultTyping(com.fasterxml.jackson.databind.jsontype.e<?> eVar) {
        this.f14385k = this.f14385k.with(eVar);
        this.f14382h = this.f14382h.with(eVar);
        return this;
    }

    public ObjectMapper setDefaultVisibility(JsonAutoDetect.Value value) {
        this.f14379e.setDefaultVisibility(VisibilityChecker.Std.construct(value));
        return this;
    }

    public ObjectMapper setFilterProvider(com.fasterxml.jackson.databind.ser.f fVar) {
        this.f14382h = this.f14382h.withFilters(fVar);
        return this;
    }

    @Deprecated
    public void setFilters(com.fasterxml.jackson.databind.ser.f fVar) {
        this.f14382h = this.f14382h.withFilters(fVar);
    }

    public Object setHandlerInstantiator(com.fasterxml.jackson.databind.cfg.c cVar) {
        this.f14385k = this.f14385k.with(cVar);
        this.f14382h = this.f14382h.with(cVar);
        return this;
    }

    public ObjectMapper setInjectableValues(InjectableValues injectableValues) {
        this.f14377c = injectableValues;
        return this;
    }

    public ObjectMapper setLocale(Locale locale) {
        this.f14385k = this.f14385k.with(locale);
        this.f14382h = this.f14382h.with(locale);
        return this;
    }

    @Deprecated
    public void setMixInAnnotations(Map<Class<?>, Class<?>> map) {
        setMixIns(map);
    }

    public ObjectMapper setMixInResolver(l.a aVar) {
        SimpleMixInResolver withOverrides = this.f14381g.withOverrides(aVar);
        if (withOverrides != this.f14381g) {
            this.f14381g = withOverrides;
            this.f14385k = new DeserializationConfig(this.f14385k, withOverrides);
            this.f14382h = new SerializationConfig(this.f14382h, withOverrides);
        }
        return this;
    }

    public ObjectMapper setMixIns(Map<Class<?>, Class<?>> map) {
        this.f14381g.setLocalDefinitions(map);
        return this;
    }

    public ObjectMapper setNodeFactory(JsonNodeFactory jsonNodeFactory) {
        this.f14385k = this.f14385k.with(jsonNodeFactory);
        return this;
    }

    public ObjectMapper setPolymorphicTypeValidator(PolymorphicTypeValidator polymorphicTypeValidator) {
        this.f14385k = this.f14385k.a(this.f14385k.i().with(polymorphicTypeValidator));
        return this;
    }

    @Deprecated
    public ObjectMapper setPropertyInclusion(JsonInclude.Value value) {
        return setDefaultPropertyInclusion(value);
    }

    public ObjectMapper setPropertyNamingStrategy(PropertyNamingStrategy propertyNamingStrategy) {
        this.f14382h = this.f14382h.with(propertyNamingStrategy);
        this.f14385k = this.f14385k.with(propertyNamingStrategy);
        return this;
    }

    public ObjectMapper setSerializationInclusion(JsonInclude.Include include) {
        setPropertyInclusion(JsonInclude.Value.construct(include, include));
        return this;
    }

    public ObjectMapper setSerializerFactory(com.fasterxml.jackson.databind.ser.k kVar) {
        this.f14384j = kVar;
        return this;
    }

    public ObjectMapper setSerializerProvider(DefaultSerializerProvider defaultSerializerProvider) {
        this.f14383i = defaultSerializerProvider;
        return this;
    }

    public ObjectMapper setSubtypeResolver(com.fasterxml.jackson.databind.jsontype.a aVar) {
        this.f14378d = aVar;
        this.f14385k = this.f14385k.with(aVar);
        this.f14382h = this.f14382h.with(aVar);
        return this;
    }

    public ObjectMapper setTimeZone(TimeZone timeZone) {
        this.f14385k = this.f14385k.with(timeZone);
        this.f14382h = this.f14382h.with(timeZone);
        return this;
    }

    public ObjectMapper setTypeFactory(TypeFactory typeFactory) {
        this.f14376b = typeFactory;
        this.f14385k = this.f14385k.with(typeFactory);
        this.f14382h = this.f14382h.with(typeFactory);
        return this;
    }

    public ObjectMapper setVisibility(VisibilityChecker<?> visibilityChecker) {
        this.f14379e.setDefaultVisibility(visibilityChecker);
        return this;
    }

    @Deprecated
    public void setVisibilityChecker(VisibilityChecker<?> visibilityChecker) {
        setVisibility(visibilityChecker);
    }

    protected void t(com.fasterxml.jackson.core.c cVar) {
        if (cVar == null || this.f14375a.canUseSchema(cVar)) {
            return;
        }
        throw new IllegalArgumentException("Cannot use FormatSchema of type " + cVar.getClass().getName() + " for format " + this.f14375a.getFormatName());
    }

    public JsonFactory tokenStreamFactory() {
        return this.f14375a;
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public JsonParser treeAsTokens(m mVar) {
        a("n", mVar);
        return new com.fasterxml.jackson.databind.node.e((e) mVar, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.core.h
    public <T> T treeToValue(m mVar, Class<T> cls) throws IllegalArgumentException, JsonProcessingException {
        T t9;
        if (mVar == 0) {
            return null;
        }
        try {
            return (m.class.isAssignableFrom(cls) && cls.isAssignableFrom(mVar.getClass())) ? mVar : (mVar.asToken() == JsonToken.VALUE_EMBEDDED_OBJECT && (mVar instanceof POJONode) && ((t9 = (T) ((POJONode) mVar).getPojo()) == null || cls.isInstance(t9))) ? t9 : (T) readValue(treeAsTokens(mVar), cls);
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw new IllegalArgumentException(e10.getMessage(), e10);
        }
    }

    public <T> T updateValue(T t9, Object obj) throws JsonMappingException {
        if (t9 == null || obj == null) {
            return t9;
        }
        DefaultSerializerProvider r9 = r(getSerializationConfig().without(SerializationFeature.WRAP_ROOT_VALUE));
        t bufferForValueConversion = r9.bufferForValueConversion(this);
        if (isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
            bufferForValueConversion = bufferForValueConversion.o2(true);
        }
        try {
            r9.serializeValue(bufferForValueConversion, obj);
            JsonParser i22 = bufferForValueConversion.i2();
            T t10 = (T) readerForUpdating(t9).readValue(i22);
            i22.close();
            return t10;
        } catch (IOException e4) {
            if (e4 instanceof JsonMappingException) {
                throw ((JsonMappingException) e4);
            }
            throw JsonMappingException.fromUnexpectedIOE(e4);
        }
    }

    public <T extends e> T valueToTree(Object obj) throws IllegalArgumentException {
        if (obj == null) {
            return getNodeFactory().nullNode();
        }
        DefaultSerializerProvider r9 = r(getSerializationConfig().without(SerializationFeature.WRAP_ROOT_VALUE));
        t bufferForValueConversion = r9.bufferForValueConversion(this);
        if (isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
            bufferForValueConversion = bufferForValueConversion.o2(true);
        }
        try {
            r9.serializeValue(bufferForValueConversion, obj);
            JsonParser i22 = bufferForValueConversion.i2();
            T t9 = (T) readTree(i22);
            if (i22 != null) {
                i22.close();
            }
            return t9;
        } catch (IOException e4) {
            throw new IllegalArgumentException(e4.getMessage(), e4);
        }
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.e.f14557a;
    }

    protected final void w(JsonGenerator jsonGenerator, Object obj) throws IOException {
        SerializationConfig serializationConfig = getSerializationConfig();
        if (serializationConfig.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            u(jsonGenerator, obj, serializationConfig);
            return;
        }
        try {
            r(serializationConfig).serializeValue(jsonGenerator, obj);
            jsonGenerator.close();
        } catch (Exception e4) {
            com.fasterxml.jackson.databind.util.g.m(jsonGenerator, e4);
        }
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public void writeTree(JsonGenerator jsonGenerator, m mVar) throws IOException {
        a("g", jsonGenerator);
        SerializationConfig serializationConfig = getSerializationConfig();
        r(serializationConfig).serializeValue(jsonGenerator, mVar);
        if (serializationConfig.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }

    @Override // com.fasterxml.jackson.core.h
    public void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException, StreamWriteException, DatabindException {
        a("g", jsonGenerator);
        SerializationConfig serializationConfig = getSerializationConfig();
        if (serializationConfig.isEnabled(SerializationFeature.INDENT_OUTPUT) && jsonGenerator.n0() == null) {
            jsonGenerator.z0(serializationConfig.constructDefaultPrettyPrinter());
        }
        if (serializationConfig.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            v(jsonGenerator, obj, serializationConfig);
            return;
        }
        r(serializationConfig).serializeValue(jsonGenerator, obj);
        if (serializationConfig.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }

    public byte[] writeValueAsBytes(Object obj) throws JsonProcessingException {
        try {
            com.fasterxml.jackson.core.util.c cVar = new com.fasterxml.jackson.core.util.c(this.f14375a._getBufferRecycler());
            try {
                w(createGenerator(cVar, JsonEncoding.UTF8), obj);
                byte[] E = cVar.E();
                cVar.release();
                cVar.close();
                return E;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        cVar.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public String writeValueAsString(Object obj) throws JsonProcessingException {
        com.fasterxml.jackson.core.io.i iVar = new com.fasterxml.jackson.core.io.i(this.f14375a._getBufferRecycler());
        try {
            w(createGenerator(iVar), obj);
            return iVar.a();
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public ObjectWriter writer() {
        return l(getSerializationConfig());
    }

    public ObjectWriter writerFor(Class<?> cls) {
        return n(getSerializationConfig(), cls == null ? null : this.f14376b.constructType(cls), null);
    }

    public ObjectWriter writerWithDefaultPrettyPrinter() {
        SerializationConfig serializationConfig = getSerializationConfig();
        return n(serializationConfig, null, serializationConfig.getDefaultPrettyPrinter());
    }

    @Deprecated
    public ObjectWriter writerWithType(Class<?> cls) {
        return n(getSerializationConfig(), cls == null ? null : this.f14376b.constructType(cls), null);
    }

    public ObjectWriter writerWithView(Class<?> cls) {
        return l(getSerializationConfig().withView(cls));
    }

    protected DefaultDeserializationContext x(JsonParser jsonParser, DeserializationConfig deserializationConfig) {
        return this.f14386l.createInstance(deserializationConfig, jsonParser, this.f14377c);
    }

    protected com.fasterxml.jackson.databind.introspect.l y() {
        return new BasicClassIntrospector();
    }

    public ObjectMapper(JsonFactory jsonFactory) {
        this(jsonFactory, null, null);
    }

    public static List<j> findModules(ClassLoader classLoader) {
        ArrayList arrayList = new ArrayList();
        Iterator it = z(j.class, classLoader).iterator();
        while (it.hasNext()) {
            arrayList.add((j) it.next());
        }
        return arrayList;
    }

    public void acceptJsonFormatVisitor(JavaType javaType, com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar) throws JsonMappingException {
        if (javaType != null) {
            r(getSerializationConfig()).acceptJsonFormatVisitor(javaType, fVar);
            return;
        }
        throw new IllegalArgumentException("type must be provided");
    }

    public ObjectMapper activateDefaultTyping(PolymorphicTypeValidator polymorphicTypeValidator, DefaultTyping defaultTyping) {
        return activateDefaultTyping(polymorphicTypeValidator, defaultTyping, JsonTypeInfo.As.WRAPPER_ARRAY);
    }

    public boolean canSerialize(Class<?> cls, AtomicReference<Throwable> atomicReference) {
        return r(getSerializationConfig()).hasSerializerFor(cls, atomicReference);
    }

    public MutableCoercionConfig coercionConfigFor(Class<?> cls) {
        return this.f14380f.findOrCreateCoercion(cls);
    }

    public <T> T convertValue(Object obj, com.fasterxml.jackson.core.type.b<T> bVar) throws IllegalArgumentException {
        return (T) e(obj, this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public ArrayNode createArrayNode() {
        return this.f14385k.getNodeFactory().arrayNode();
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public ObjectNode createObjectNode() {
        return this.f14385k.getNodeFactory().objectNode();
    }

    @Deprecated
    public ObjectMapper enableDefaultTyping(DefaultTyping defaultTyping) {
        return enableDefaultTyping(defaultTyping, JsonTypeInfo.As.WRAPPER_ARRAY);
    }

    public boolean isEnabled(SerializationFeature serializationFeature) {
        return this.f14382h.isEnabled(serializationFeature);
    }

    @Override // com.fasterxml.jackson.core.l
    public e missingNode() {
        return this.f14385k.getNodeFactory().missingNode();
    }

    @Override // com.fasterxml.jackson.core.l
    public e nullNode() {
        return this.f14385k.getNodeFactory().nullNode();
    }

    public ObjectReader reader(DeserializationFeature deserializationFeature) {
        return j(getDeserializationConfig().with(deserializationFeature));
    }

    public ObjectReader readerFor(Class<?> cls) {
        return k(getDeserializationConfig(), this.f14376b.constructType(cls), null, null, this.f14377c);
    }

    public void registerSubtypes(NamedType... namedTypeArr) {
        getSubtypeResolver().registerSubtypes(namedTypeArr);
    }

    public ObjectMapper setDefaultPropertyInclusion(JsonInclude.Include include) {
        this.f14379e.setDefaultInclusion(JsonInclude.Value.construct(include, include));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.fasterxml.jackson.databind.introspect.VisibilityChecker] */
    public ObjectMapper setVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
        this.f14379e.setDefaultVisibility(this.f14379e.getDefaultVisibility().withVisibility(propertyAccessor, visibility));
        return this;
    }

    public ObjectWriter writer(SerializationFeature serializationFeature) {
        return l(getSerializationConfig().with(serializationFeature));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectMapper(ObjectMapper objectMapper) {
        this.f14388n = new ConcurrentHashMap<>(64, 0.6f, 2);
        JsonFactory copy = objectMapper.f14375a.copy();
        this.f14375a = copy;
        copy.setCodec(this);
        this.f14378d = objectMapper.f14378d.copy();
        this.f14376b = objectMapper.f14376b;
        this.f14377c = objectMapper.f14377c;
        ConfigOverrides copy2 = objectMapper.f14379e.copy();
        this.f14379e = copy2;
        CoercionConfigs copy3 = objectMapper.f14380f.copy();
        this.f14380f = copy3;
        this.f14381g = objectMapper.f14381g.copy();
        RootNameLookup rootNameLookup = new RootNameLookup();
        this.f14382h = new SerializationConfig(objectMapper.f14382h, this.f14378d, this.f14381g, rootNameLookup, copy2);
        this.f14385k = new DeserializationConfig(objectMapper.f14385k, this.f14378d, this.f14381g, rootNameLookup, copy2, copy3);
        this.f14383i = objectMapper.f14383i.copy();
        this.f14386l = objectMapper.f14386l.copy();
        this.f14384j = objectMapper.f14384j;
        Set<Object> set = objectMapper.f14387m;
        if (set == null) {
            this.f14387m = null;
        } else {
            this.f14387m = new LinkedHashSet(set);
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.fasterxml.jackson.databind.jsontype.e] */
    public ObjectMapper activateDefaultTyping(PolymorphicTypeValidator polymorphicTypeValidator, DefaultTyping defaultTyping, JsonTypeInfo.As as) {
        if (as != JsonTypeInfo.As.EXTERNAL_PROPERTY) {
            return setDefaultTyping(d(defaultTyping, polymorphicTypeValidator).init(JsonTypeInfo.Id.CLASS, null).inclusion(as));
        }
        throw new IllegalArgumentException("Cannot use includeAs of " + as);
    }

    public JavaType constructType(com.fasterxml.jackson.core.type.b<?> bVar) {
        a("typeRef", bVar);
        return this.f14376b.constructType(bVar);
    }

    public <T> T convertValue(Object obj, JavaType javaType) throws IllegalArgumentException {
        return (T) e(obj, javaType);
    }

    public JsonParser createParser(URL url) throws IOException {
        a("src", url);
        return this.f14385k.initialize(this.f14375a.createParser(url));
    }

    public ObjectMapper disable(SerializationFeature serializationFeature) {
        this.f14382h = this.f14382h.without(serializationFeature);
        return this;
    }

    public ObjectMapper enable(SerializationFeature serializationFeature) {
        this.f14382h = this.f14382h.with(serializationFeature);
        return this;
    }

    @Deprecated
    public ObjectMapper enableDefaultTyping(DefaultTyping defaultTyping, JsonTypeInfo.As as) {
        return activateDefaultTyping(getPolymorphicTypeValidator(), defaultTyping, as);
    }

    public boolean isEnabled(DeserializationFeature deserializationFeature) {
        return this.f14385k.isEnabled(deserializationFeature);
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> T readValue(JsonParser jsonParser, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException, StreamReadException, DatabindException {
        a("p", jsonParser);
        return (T) q(getDeserializationConfig(), jsonParser, this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    public ObjectReader reader(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        return j(getDeserializationConfig().with(deserializationFeature, deserializationFeatureArr));
    }

    public ObjectReader readerFor(com.fasterxml.jackson.core.type.b<?> bVar) {
        return k(getDeserializationConfig(), this.f14376b.constructType(bVar), null, null, this.f14377c);
    }

    public ObjectMapper registerModules(Iterable<? extends j> iterable) {
        a(h4.b.f83291i, iterable);
        for (j jVar : iterable) {
            registerModule(jVar);
        }
        return this;
    }

    public void registerSubtypes(Collection<Class<?>> collection) {
        getSubtypeResolver().registerSubtypes(collection);
    }

    public ObjectMapper setConfig(SerializationConfig serializationConfig) {
        a("config", serializationConfig);
        this.f14382h = serializationConfig;
        return this;
    }

    public ObjectWriter writer(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        return l(getSerializationConfig().with(serializationFeature, serializationFeatureArr));
    }

    public boolean canDeserialize(JavaType javaType, AtomicReference<Throwable> atomicReference) {
        return x(null, getDeserializationConfig()).hasValueDeserializerFor(javaType, atomicReference);
    }

    public JsonGenerator createGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        a("out", outputStream);
        JsonGenerator createGenerator = this.f14375a.createGenerator(outputStream, jsonEncoding);
        this.f14382h.initialize(createGenerator);
        return createGenerator;
    }

    public ObjectMapper disable(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        this.f14382h = this.f14382h.without(serializationFeature, serializationFeatureArr);
        return this;
    }

    public ObjectMapper enable(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        this.f14382h = this.f14382h.with(serializationFeature, serializationFeatureArr);
        return this;
    }

    public boolean isEnabled(JsonParser.Feature feature) {
        return this.f14385k.isEnabled(feature, this.f14375a);
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> i<T> readValues(JsonParser jsonParser, com.fasterxml.jackson.core.type.a aVar) throws IOException {
        return readValues(jsonParser, (JavaType) aVar);
    }

    public ObjectReader reader(JsonNodeFactory jsonNodeFactory) {
        return j(getDeserializationConfig()).with(jsonNodeFactory);
    }

    public ObjectWriter writer(DateFormat dateFormat) {
        return l(getSerializationConfig().with(dateFormat));
    }

    public ObjectWriter writerFor(com.fasterxml.jackson.core.type.b<?> bVar) {
        return n(getSerializationConfig(), bVar == null ? null : this.f14376b.constructType(bVar), null);
    }

    @Deprecated
    public ObjectWriter writerWithType(com.fasterxml.jackson.core.type.b<?> bVar) {
        return n(getSerializationConfig(), bVar == null ? null : this.f14376b.constructType(bVar), null);
    }

    public ObjectMapper configure(SerializationFeature serializationFeature, boolean z9) {
        this.f14382h = z9 ? this.f14382h.with(serializationFeature) : this.f14382h.without(serializationFeature);
        return this;
    }

    public JsonParser createParser(InputStream inputStream) throws IOException {
        a("in", inputStream);
        return this.f14385k.initialize(this.f14375a.createParser(inputStream));
    }

    public ObjectMapper disable(DeserializationFeature deserializationFeature) {
        this.f14385k = this.f14385k.without(deserializationFeature);
        return this;
    }

    public ObjectMapper enable(DeserializationFeature deserializationFeature) {
        this.f14385k = this.f14385k.with(deserializationFeature);
        return this;
    }

    public boolean isEnabled(JsonGenerator.Feature feature) {
        return this.f14382h.isEnabled(feature, this.f14375a);
    }

    @Override // com.fasterxml.jackson.core.h
    public final <T> T readValue(JsonParser jsonParser, com.fasterxml.jackson.core.type.a aVar) throws IOException, StreamReadException, DatabindException {
        a("p", jsonParser);
        return (T) q(getDeserializationConfig(), jsonParser, (JavaType) aVar);
    }

    public <T> i<T> readValues(JsonParser jsonParser, JavaType javaType) throws IOException {
        a("p", jsonParser);
        DefaultDeserializationContext x9 = x(jsonParser, getDeserializationConfig());
        return new i<>(javaType, jsonParser, x9, h(x9, javaType), false, null);
    }

    public ObjectReader reader(com.fasterxml.jackson.core.c cVar) {
        t(cVar);
        return k(getDeserializationConfig(), null, null, cVar, this.f14377c);
    }

    public ObjectWriter writer(com.fasterxml.jackson.core.i iVar) {
        if (iVar == null) {
            iVar = ObjectWriter.f14412h;
        }
        return n(getSerializationConfig(), null, iVar);
    }

    public ObjectMapper disable(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        this.f14385k = this.f14385k.without(deserializationFeature, deserializationFeatureArr);
        return this;
    }

    public ObjectMapper enable(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        this.f14385k = this.f14385k.with(deserializationFeature, deserializationFeatureArr);
        return this;
    }

    public boolean isEnabled(JsonFactory.Feature feature) {
        return this.f14375a.isEnabled(feature);
    }

    public void writeTree(JsonGenerator jsonGenerator, e eVar) throws IOException {
        a("g", jsonGenerator);
        SerializationConfig serializationConfig = getSerializationConfig();
        r(serializationConfig).serializeValue(jsonGenerator, eVar);
        if (serializationConfig.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }

    public ObjectMapper configure(DeserializationFeature deserializationFeature, boolean z9) {
        this.f14385k = z9 ? this.f14385k.with(deserializationFeature) : this.f14385k.without(deserializationFeature);
        return this;
    }

    public JsonGenerator createGenerator(Writer writer) throws IOException {
        a("w", writer);
        JsonGenerator createGenerator = this.f14375a.createGenerator(writer);
        this.f14382h.initialize(createGenerator);
        return createGenerator;
    }

    public JsonParser createParser(Reader reader) throws IOException {
        a("r", reader);
        return this.f14385k.initialize(this.f14375a.createParser(reader));
    }

    public ObjectMapper disable(JsonParser.Feature... featureArr) {
        for (JsonParser.Feature feature : featureArr) {
            this.f14375a.disable(feature);
        }
        return this;
    }

    public ObjectMapper enable(JsonParser.Feature... featureArr) {
        for (JsonParser.Feature feature : featureArr) {
            this.f14375a.enable(feature);
        }
        return this;
    }

    public boolean isEnabled(StreamReadFeature streamReadFeature) {
        return isEnabled(streamReadFeature.mappedFeature());
    }

    public e readTree(InputStream inputStream) throws IOException {
        a("in", inputStream);
        return p(this.f14375a.createParser(inputStream));
    }

    public <T> T readValue(JsonParser jsonParser, JavaType javaType) throws IOException, StreamReadException, DatabindException {
        a("p", jsonParser);
        return (T) q(getDeserializationConfig(), jsonParser, javaType);
    }

    public ObjectReader reader(InjectableValues injectableValues) {
        return k(getDeserializationConfig(), null, null, null, injectableValues);
    }

    public ObjectWriter writer(com.fasterxml.jackson.databind.ser.f fVar) {
        return l(getSerializationConfig().withFilters(fVar));
    }

    public ObjectWriter writerFor(JavaType javaType) {
        return n(getSerializationConfig(), javaType, null);
    }

    @Deprecated
    public ObjectWriter writerWithType(JavaType javaType) {
        return n(getSerializationConfig(), javaType, null);
    }

    public boolean isEnabled(StreamWriteFeature streamWriteFeature) {
        return isEnabled(streamWriteFeature.mappedFeature());
    }

    public ObjectReader reader(Base64Variant base64Variant) {
        return j(getDeserializationConfig().with(base64Variant));
    }

    public ObjectWriter writer(com.fasterxml.jackson.core.c cVar) {
        t(cVar);
        return m(getSerializationConfig(), cVar);
    }

    public ObjectMapper configure(JsonParser.Feature feature, boolean z9) {
        this.f14375a.configure(feature, z9);
        return this;
    }

    public JsonParser createParser(byte[] bArr) throws IOException {
        a("content", bArr);
        return this.f14385k.initialize(this.f14375a.createParser(bArr));
    }

    public ObjectMapper disable(JsonGenerator.Feature... featureArr) {
        for (JsonGenerator.Feature feature : featureArr) {
            this.f14375a.disable(feature);
        }
        return this;
    }

    public ObjectMapper enable(JsonGenerator.Feature... featureArr) {
        for (JsonGenerator.Feature feature : featureArr) {
            this.f14375a.enable(feature);
        }
        return this;
    }

    public e readTree(Reader reader) throws IOException {
        a("r", reader);
        return p(this.f14375a.createParser(reader));
    }

    public <T> T readValue(File file, Class<T> cls) throws IOException, StreamReadException, DatabindException {
        a("src", file);
        return (T) o(this.f14375a.createParser(file), this.f14376b.constructType(cls));
    }

    public ObjectReader reader(ContextAttributes contextAttributes) {
        return j(getDeserializationConfig().with(contextAttributes));
    }

    public ObjectMapper configure(JsonGenerator.Feature feature, boolean z9) {
        this.f14375a.configure(feature, z9);
        return this;
    }

    public JsonGenerator createGenerator(File file, JsonEncoding jsonEncoding) throws IOException {
        a("outputFile", file);
        JsonGenerator createGenerator = this.f14375a.createGenerator(file, jsonEncoding);
        this.f14382h.initialize(createGenerator);
        return createGenerator;
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> i<T> readValues(JsonParser jsonParser, Class<T> cls) throws IOException {
        return readValues(jsonParser, this.f14376b.constructType(cls));
    }

    @Deprecated
    public ObjectReader reader(JavaType javaType) {
        return k(getDeserializationConfig(), javaType, null, null, this.f14377c);
    }

    public ObjectWriter writer(Base64Variant base64Variant) {
        return l(getSerializationConfig().with(base64Variant));
    }

    public JsonParser createParser(byte[] bArr, int i4, int i10) throws IOException {
        a("content", bArr);
        return this.f14385k.initialize(this.f14375a.createParser(bArr, i4, i10));
    }

    public e readTree(String str) throws JsonProcessingException, JsonMappingException {
        a("content", str);
        try {
            return p(this.f14375a.createParser(str));
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public <T> T readValue(File file, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException, StreamReadException, DatabindException {
        a("src", file);
        return (T) o(this.f14375a.createParser(file), this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> i<T> readValues(JsonParser jsonParser, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException {
        return readValues(jsonParser, this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    @Deprecated
    public ObjectReader reader(Class<?> cls) {
        return k(getDeserializationConfig(), this.f14376b.constructType(cls), null, null, this.f14377c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T treeToValue(m mVar, JavaType javaType) throws IllegalArgumentException, JsonProcessingException {
        T t9;
        if (mVar == 0) {
            return null;
        }
        try {
            return (javaType.isTypeOrSubTypeOf(m.class) && javaType.isTypeOrSuperTypeOf(mVar.getClass())) ? mVar : (mVar.asToken() == JsonToken.VALUE_EMBEDDED_OBJECT && (mVar instanceof POJONode) && ((t9 = (T) ((POJONode) mVar).getPojo()) == null || javaType.isTypeOrSuperTypeOf(t9.getClass()))) ? t9 : (T) readValue(treeAsTokens(mVar), javaType);
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw new IllegalArgumentException(e10.getMessage(), e10);
        }
    }

    public void writeValue(File file, Object obj) throws IOException, StreamWriteException, DatabindException {
        w(createGenerator(file, JsonEncoding.UTF8), obj);
    }

    public ObjectWriter writer(CharacterEscapes characterEscapes) {
        return l(getSerializationConfig()).with(characterEscapes);
    }

    @Deprecated
    public ObjectReader reader(com.fasterxml.jackson.core.type.b<?> bVar) {
        return k(getDeserializationConfig(), this.f14376b.constructType(bVar), null, null, this.f14377c);
    }

    public void writeValue(OutputStream outputStream, Object obj) throws IOException, StreamWriteException, DatabindException {
        w(createGenerator(outputStream, JsonEncoding.UTF8), obj);
    }

    public ObjectWriter writer(ContextAttributes contextAttributes) {
        return l(getSerializationConfig().with(contextAttributes));
    }

    public JsonGenerator createGenerator(DataOutput dataOutput) throws IOException {
        a("out", dataOutput);
        JsonGenerator createGenerator = this.f14375a.createGenerator(dataOutput);
        this.f14382h.initialize(createGenerator);
        return createGenerator;
    }

    public JsonParser createParser(String str) throws IOException {
        a("content", str);
        return this.f14385k.initialize(this.f14375a.createParser(str));
    }

    public <T> T readValue(File file, JavaType javaType) throws IOException, StreamReadException, DatabindException {
        a("src", file);
        return (T) o(this.f14375a.createParser(file), javaType);
    }

    public void writeValue(DataOutput dataOutput, Object obj) throws IOException {
        w(createGenerator(dataOutput), obj);
    }

    public void writeValue(Writer writer, Object obj) throws IOException, StreamWriteException, DatabindException {
        w(createGenerator(writer), obj);
    }

    public JsonParser createParser(char[] cArr) throws IOException {
        a("content", cArr);
        return this.f14385k.initialize(this.f14375a.createParser(cArr));
    }

    public e readTree(byte[] bArr) throws IOException {
        a("content", bArr);
        return p(this.f14375a.createParser(bArr));
    }

    public <T> T readValue(URL url, Class<T> cls) throws IOException, StreamReadException, DatabindException {
        a("src", url);
        return (T) o(this.f14375a.createParser(url), this.f14376b.constructType(cls));
    }

    public JsonParser createParser(char[] cArr, int i4, int i10) throws IOException {
        a("content", cArr);
        return this.f14385k.initialize(this.f14375a.createParser(cArr, i4, i10));
    }

    public e readTree(byte[] bArr, int i4, int i10) throws IOException {
        a("content", bArr);
        return p(this.f14375a.createParser(bArr, i4, i10));
    }

    public <T> T readValue(URL url, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException, StreamReadException, DatabindException {
        a("src", url);
        return (T) o(this.f14375a.createParser(url), this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    public JsonParser createParser(DataInput dataInput) throws IOException {
        a("content", dataInput);
        return this.f14385k.initialize(this.f14375a.createParser(dataInput));
    }

    public e readTree(File file) throws IOException {
        a("file", file);
        return p(this.f14375a.createParser(file));
    }

    public <T> T readValue(URL url, JavaType javaType) throws IOException, StreamReadException, DatabindException {
        a("src", url);
        return (T) o(this.f14375a.createParser(url), javaType);
    }

    public e readTree(URL url) throws IOException {
        a(v.b.f83881a, url);
        return p(this.f14375a.createParser(url));
    }

    public <T> T readValue(String str, Class<T> cls) throws JsonProcessingException, JsonMappingException {
        a("content", str);
        return (T) readValue(str, this.f14376b.constructType(cls));
    }

    public ObjectMapper(JsonFactory jsonFactory, DefaultSerializerProvider defaultSerializerProvider, DefaultDeserializationContext defaultDeserializationContext) {
        this.f14388n = new ConcurrentHashMap<>(64, 0.6f, 2);
        if (jsonFactory == null) {
            this.f14375a = new MappingJsonFactory(this);
        } else {
            this.f14375a = jsonFactory;
            if (jsonFactory.getCodec() == null) {
                jsonFactory.setCodec(this);
            }
        }
        this.f14378d = new StdSubtypeResolver();
        RootNameLookup rootNameLookup = new RootNameLookup();
        this.f14376b = TypeFactory.defaultInstance();
        SimpleMixInResolver simpleMixInResolver = new SimpleMixInResolver(null);
        this.f14381g = simpleMixInResolver;
        BaseSettings withClassIntrospector = f14374q.withClassIntrospector(y());
        ConfigOverrides configOverrides = new ConfigOverrides();
        this.f14379e = configOverrides;
        CoercionConfigs coercionConfigs = new CoercionConfigs();
        this.f14380f = coercionConfigs;
        this.f14382h = new SerializationConfig(withClassIntrospector, this.f14378d, simpleMixInResolver, rootNameLookup, configOverrides);
        this.f14385k = new DeserializationConfig(withClassIntrospector, this.f14378d, simpleMixInResolver, rootNameLookup, configOverrides, coercionConfigs);
        boolean requiresPropertyOrdering = this.f14375a.requiresPropertyOrdering();
        SerializationConfig serializationConfig = this.f14382h;
        MapperFeature mapperFeature = MapperFeature.SORT_PROPERTIES_ALPHABETICALLY;
        if (serializationConfig.isEnabled(mapperFeature) ^ requiresPropertyOrdering) {
            configure(mapperFeature, requiresPropertyOrdering);
        }
        this.f14383i = defaultSerializerProvider == null ? new DefaultSerializerProvider.Impl() : defaultSerializerProvider;
        this.f14386l = defaultDeserializationContext == null ? new DefaultDeserializationContext.Impl(BeanDeserializerFactory.instance) : defaultDeserializationContext;
        this.f14384j = BeanSerializerFactory.instance;
    }

    public <T> T readValue(String str, com.fasterxml.jackson.core.type.b<T> bVar) throws JsonProcessingException, JsonMappingException {
        a("content", str);
        return (T) readValue(str, this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    public <T> T readValue(String str, JavaType javaType) throws JsonProcessingException, JsonMappingException {
        a("content", str);
        try {
            return (T) o(this.f14375a.createParser(str), javaType);
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public <T> T readValue(Reader reader, Class<T> cls) throws IOException, StreamReadException, DatabindException {
        a("src", reader);
        return (T) o(this.f14375a.createParser(reader), this.f14376b.constructType(cls));
    }

    public <T> T readValue(Reader reader, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException, StreamReadException, DatabindException {
        a("src", reader);
        return (T) o(this.f14375a.createParser(reader), this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    public <T> T readValue(Reader reader, JavaType javaType) throws IOException, StreamReadException, DatabindException {
        a("src", reader);
        return (T) o(this.f14375a.createParser(reader), javaType);
    }

    public <T> T readValue(InputStream inputStream, Class<T> cls) throws IOException, StreamReadException, DatabindException {
        a("src", inputStream);
        return (T) o(this.f14375a.createParser(inputStream), this.f14376b.constructType(cls));
    }

    public <T> T readValue(InputStream inputStream, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException, StreamReadException, DatabindException {
        a("src", inputStream);
        return (T) o(this.f14375a.createParser(inputStream), this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    public <T> T readValue(InputStream inputStream, JavaType javaType) throws IOException, StreamReadException, DatabindException {
        a("src", inputStream);
        return (T) o(this.f14375a.createParser(inputStream), javaType);
    }

    public <T> T readValue(byte[] bArr, Class<T> cls) throws IOException, StreamReadException, DatabindException {
        a("src", bArr);
        return (T) o(this.f14375a.createParser(bArr), this.f14376b.constructType(cls));
    }

    public <T> T readValue(byte[] bArr, int i4, int i10, Class<T> cls) throws IOException, StreamReadException, DatabindException {
        a("src", bArr);
        return (T) o(this.f14375a.createParser(bArr, i4, i10), this.f14376b.constructType(cls));
    }

    public <T> T readValue(byte[] bArr, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException, StreamReadException, DatabindException {
        a("src", bArr);
        return (T) o(this.f14375a.createParser(bArr), this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    public <T> T readValue(byte[] bArr, int i4, int i10, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException, StreamReadException, DatabindException {
        a("src", bArr);
        return (T) o(this.f14375a.createParser(bArr, i4, i10), this.f14376b.constructType((com.fasterxml.jackson.core.type.b<?>) bVar));
    }

    public <T> T readValue(byte[] bArr, JavaType javaType) throws IOException, StreamReadException, DatabindException {
        a("src", bArr);
        return (T) o(this.f14375a.createParser(bArr), javaType);
    }

    public <T> T readValue(byte[] bArr, int i4, int i10, JavaType javaType) throws IOException, StreamReadException, DatabindException {
        a("src", bArr);
        return (T) o(this.f14375a.createParser(bArr, i4, i10), javaType);
    }

    public <T> T readValue(DataInput dataInput, Class<T> cls) throws IOException {
        a("src", dataInput);
        return (T) o(this.f14375a.createParser(dataInput), this.f14376b.constructType(cls));
    }

    public <T> T readValue(DataInput dataInput, JavaType javaType) throws IOException {
        a("src", dataInput);
        return (T) o(this.f14375a.createParser(dataInput), javaType);
    }
}
