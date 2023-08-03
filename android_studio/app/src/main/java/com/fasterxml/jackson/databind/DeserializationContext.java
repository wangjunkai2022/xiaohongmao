package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.deser.DeserializerCache;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.exc.InvalidTypeIdException;
import com.fasterxml.jackson.databind.exc.MismatchedInputException;
import com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException;
import com.fasterxml.jackson.databind.exc.ValueInstantiationException;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.o;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class DeserializationContext extends c implements Serializable {

    /* renamed from: o  reason: collision with root package name */
    private static final long f14333o = 1;

    /* renamed from: b  reason: collision with root package name */
    protected final DeserializerCache f14334b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.deser.g f14335c;

    /* renamed from: d  reason: collision with root package name */
    protected final DeserializationConfig f14336d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f14337e;

    /* renamed from: f  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.util.f<StreamReadCapability> f14338f;

    /* renamed from: g  reason: collision with root package name */
    protected final Class<?> f14339g;

    /* renamed from: h  reason: collision with root package name */
    protected transient JsonParser f14340h;

    /* renamed from: i  reason: collision with root package name */
    protected final InjectableValues f14341i;

    /* renamed from: j  reason: collision with root package name */
    protected transient com.fasterxml.jackson.databind.util.b f14342j;

    /* renamed from: k  reason: collision with root package name */
    protected transient o f14343k;

    /* renamed from: l  reason: collision with root package name */
    protected transient DateFormat f14344l;

    /* renamed from: m  reason: collision with root package name */
    protected transient ContextAttributes f14345m;

    /* renamed from: n  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.util.l<JavaType> f14346n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14347a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f14347a = iArr;
            try {
                iArr[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14347a[JsonToken.END_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14347a[JsonToken.FIELD_NAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14347a[JsonToken.START_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14347a[JsonToken.END_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14347a[JsonToken.VALUE_FALSE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14347a[JsonToken.VALUE_TRUE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14347a[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14347a[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14347a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14347a[JsonToken.VALUE_STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14347a[JsonToken.VALUE_NULL.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14347a[JsonToken.NOT_AVAILABLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    protected DeserializationContext(com.fasterxml.jackson.databind.deser.g gVar) {
        this(gVar, (DeserializerCache) null);
    }

    private com.fasterxml.jackson.databind.node.e o(e eVar) throws IOException {
        JsonParser jsonParser = this.f14340h;
        com.fasterxml.jackson.databind.node.e eVar2 = new com.fasterxml.jackson.databind.node.e(eVar, jsonParser == null ? null : jsonParser.s0());
        eVar2.y1();
        return eVar2;
    }

    public t bufferAsCopyOfValue(JsonParser jsonParser) throws IOException {
        t bufferForInputBuffering = bufferForInputBuffering(jsonParser);
        bufferForInputBuffering.H(jsonParser);
        return bufferForInputBuffering;
    }

    public t bufferForInputBuffering(JsonParser jsonParser) {
        return new t(jsonParser, this);
    }

    @Override // com.fasterxml.jackson.databind.c
    public final boolean canOverrideAccessModifiers() {
        return this.f14336d.canOverrideAccessModifiers();
    }

    public abstract void checkUnresolvedObjectId() throws UnresolvedForwardReference;

    public Calendar constructCalendar(Date date) {
        Calendar calendar = Calendar.getInstance(getTimeZone());
        calendar.setTime(date);
        return calendar;
    }

    @Override // com.fasterxml.jackson.databind.c
    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) throws IllegalArgumentException {
        return javaType.hasRawClass(cls) ? javaType : getConfig().getTypeFactory().constructSpecializedType(javaType, cls, false);
    }

    public final JavaType constructType(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        return this.f14336d.constructType(cls);
    }

    public abstract d<Object> deserializerInstance(com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException;

    @Deprecated
    public JsonMappingException endOfInputException(Class<?> cls) {
        JsonParser jsonParser = this.f14340h;
        return MismatchedInputException.from(jsonParser, cls, "Unexpected end-of-input when trying to deserialize a " + cls.getName());
    }

    public String extractScalarFromObject(JsonParser jsonParser, d<?> dVar, Class<?> cls) throws IOException {
        return (String) handleUnexpectedToken(cls, jsonParser);
    }

    public Class<?> findClass(String str) throws ClassNotFoundException {
        return getTypeFactory().findClass(str);
    }

    public CoercionAction findCoercionAction(LogicalType logicalType, Class<?> cls, CoercionInputShape coercionInputShape) {
        return this.f14336d.findCoercionAction(logicalType, cls, coercionInputShape);
    }

    public CoercionAction findCoercionFromBlankString(LogicalType logicalType, Class<?> cls, CoercionAction coercionAction) {
        return this.f14336d.findCoercionFromBlankString(logicalType, cls, coercionAction);
    }

    public final d<Object> findContextualValueDeserializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        d<Object> findValueDeserializer = this.f14334b.findValueDeserializer(this, this.f14335c, javaType);
        return findValueDeserializer != null ? handleSecondaryContextualization(findValueDeserializer, beanProperty, javaType) : findValueDeserializer;
    }

    public final Object findInjectableValue(Object obj, BeanProperty beanProperty, Object obj2) throws JsonMappingException {
        InjectableValues injectableValues = this.f14341i;
        return injectableValues == null ? reportBadDefinition(com.fasterxml.jackson.databind.util.g.k(obj), String.format("No 'injectableValues' configured, cannot inject value with id [%s]", obj)) : injectableValues.findInjectableValue(obj, this, beanProperty, obj2);
    }

    public final h findKeyDeserializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        h hVar;
        try {
            hVar = this.f14334b.findKeyDeserializer(this, this.f14335c, javaType);
        } catch (IllegalArgumentException e4) {
            reportBadDefinition(javaType, com.fasterxml.jackson.databind.util.g.q(e4));
            hVar = null;
        }
        return hVar instanceof com.fasterxml.jackson.databind.deser.d ? ((com.fasterxml.jackson.databind.deser.d) hVar).createContextual(this, beanProperty) : hVar;
    }

    public final d<Object> findNonContextualValueDeserializer(JavaType javaType) throws JsonMappingException {
        return this.f14334b.findValueDeserializer(this, this.f14335c, javaType);
    }

    public abstract com.fasterxml.jackson.databind.deser.impl.j findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator, c0 c0Var);

    public final d<Object> findRootValueDeserializer(JavaType javaType) throws JsonMappingException {
        d<Object> findValueDeserializer = this.f14334b.findValueDeserializer(this, this.f14335c, javaType);
        if (findValueDeserializer == null) {
            return null;
        }
        d<?> handleSecondaryContextualization = handleSecondaryContextualization(findValueDeserializer, null, javaType);
        com.fasterxml.jackson.databind.jsontype.b findTypeDeserializer = this.f14335c.findTypeDeserializer(this.f14336d, javaType);
        return findTypeDeserializer != null ? new TypeWrappedDeserializer(findTypeDeserializer.forProperty(null), handleSecondaryContextualization) : handleSecondaryContextualization;
    }

    @Override // com.fasterxml.jackson.databind.c
    public final Class<?> getActiveView() {
        return this.f14339g;
    }

    @Override // com.fasterxml.jackson.databind.c
    public final AnnotationIntrospector getAnnotationIntrospector() {
        return this.f14336d.getAnnotationIntrospector();
    }

    public final com.fasterxml.jackson.databind.util.b getArrayBuilders() {
        if (this.f14342j == null) {
            this.f14342j = new com.fasterxml.jackson.databind.util.b();
        }
        return this.f14342j;
    }

    @Override // com.fasterxml.jackson.databind.c
    public Object getAttribute(Object obj) {
        return this.f14345m.getAttribute(obj);
    }

    public final Base64Variant getBase64Variant() {
        return this.f14336d.getBase64Variant();
    }

    public JavaType getContextualType() {
        com.fasterxml.jackson.databind.util.l<JavaType> lVar = this.f14346n;
        if (lVar == null) {
            return null;
        }
        return lVar.d();
    }

    @Override // com.fasterxml.jackson.databind.c
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        return this.f14336d.getDefaultPropertyFormat(cls);
    }

    public final int getDeserializationFeatures() {
        return this.f14337e;
    }

    public com.fasterxml.jackson.databind.deser.g getFactory() {
        return this.f14335c;
    }

    @Override // com.fasterxml.jackson.databind.c
    public Locale getLocale() {
        return this.f14336d.getLocale();
    }

    public final JsonNodeFactory getNodeFactory() {
        return this.f14336d.getNodeFactory();
    }

    public final JsonParser getParser() {
        return this.f14340h;
    }

    @Override // com.fasterxml.jackson.databind.c
    public TimeZone getTimeZone() {
        return this.f14336d.getTimeZone();
    }

    @Override // com.fasterxml.jackson.databind.c
    public final TypeFactory getTypeFactory() {
        return this.f14336d.getTypeFactory();
    }

    public void handleBadMerge(d<?> dVar) throws JsonMappingException {
        if (isEnabled(MapperFeature.IGNORE_MERGE_FOR_UNMERGEABLE)) {
            return;
        }
        JavaType constructType = constructType(dVar.handledType());
        throw InvalidDefinitionException.from(getParser(), String.format("Invalid configuration: values of type %s cannot be merged", com.fasterxml.jackson.databind.util.g.P(constructType)), constructType);
    }

    public Object handleInstantiationProblem(Class<?> cls, Object obj, Throwable th) throws IOException {
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            Object a10 = problemHandlers.d().a(this, cls, obj, th);
            if (a10 != com.fasterxml.jackson.databind.deser.f.f14686a) {
                if (m(cls, a10)) {
                    return a10;
                }
                reportBadDefinition(constructType(cls), String.format("DeserializationProblemHandler.handleInstantiationProblem() for type %s returned value of type %s", com.fasterxml.jackson.databind.util.g.D(cls), com.fasterxml.jackson.databind.util.g.j(a10)));
            }
        }
        com.fasterxml.jackson.databind.util.g.u0(th);
        if (!isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) {
            com.fasterxml.jackson.databind.util.g.v0(th);
        }
        throw instantiationException(cls, th);
    }

    public Object handleMissingInstantiator(Class<?> cls, ValueInstantiator valueInstantiator, JsonParser jsonParser, String str, Object... objArr) throws IOException {
        if (jsonParser == null) {
            jsonParser = getParser();
        }
        String c10 = c(str, objArr);
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            Object c11 = problemHandlers.d().c(this, cls, valueInstantiator, jsonParser, c10);
            if (c11 != com.fasterxml.jackson.databind.deser.f.f14686a) {
                if (m(cls, c11)) {
                    return c11;
                }
                reportBadDefinition(constructType(cls), String.format("DeserializationProblemHandler.handleMissingInstantiator() for type %s returned value of type %s", com.fasterxml.jackson.databind.util.g.D(cls), com.fasterxml.jackson.databind.util.g.D(c11)));
            }
        }
        if (valueInstantiator == null) {
            return reportBadDefinition(cls, String.format("Cannot construct instance of %s: %s", com.fasterxml.jackson.databind.util.g.j0(cls), c10));
        }
        if (!valueInstantiator.canInstantiate()) {
            return reportBadDefinition(cls, String.format("Cannot construct instance of %s (no Creators, like default constructor, exist): %s", com.fasterxml.jackson.databind.util.g.j0(cls), c10));
        }
        return reportInputMismatch(cls, String.format("Cannot construct instance of %s (although at least one Creator exists): %s", com.fasterxml.jackson.databind.util.g.j0(cls), c10), new Object[0]);
    }

    public JavaType handleMissingTypeId(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str) throws IOException {
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            JavaType d4 = problemHandlers.d().d(this, javaType, cVar, str);
            if (d4 != null) {
                if (d4.hasRawClass(Void.class)) {
                    return null;
                }
                if (d4.isTypeOrSubTypeOf(javaType.getRawClass())) {
                    return d4;
                }
                throw invalidTypeIdException(javaType, null, "problem handler tried to resolve into non-subtype: " + com.fasterxml.jackson.databind.util.g.P(d4));
            }
        }
        throw missingTypeIdException(javaType, str);
    }

    public d<?> handlePrimaryContextualization(d<?> dVar, BeanProperty beanProperty, JavaType javaType) throws JsonMappingException {
        if (dVar instanceof com.fasterxml.jackson.databind.deser.c) {
            this.f14346n = new com.fasterxml.jackson.databind.util.l<>(javaType, this.f14346n);
            try {
                dVar = ((com.fasterxml.jackson.databind.deser.c) dVar).createContextual(this, beanProperty);
            } finally {
                this.f14346n = this.f14346n.c();
            }
        }
        return dVar;
    }

    public d<?> handleSecondaryContextualization(d<?> dVar, BeanProperty beanProperty, JavaType javaType) throws JsonMappingException {
        if (dVar instanceof com.fasterxml.jackson.databind.deser.c) {
            this.f14346n = new com.fasterxml.jackson.databind.util.l<>(javaType, this.f14346n);
            try {
                dVar = ((com.fasterxml.jackson.databind.deser.c) dVar).createContextual(this, beanProperty);
            } finally {
                this.f14346n = this.f14346n.c();
            }
        }
        return dVar;
    }

    public Object handleUnexpectedToken(Class<?> cls, JsonParser jsonParser) throws IOException {
        return handleUnexpectedToken(constructType(cls), jsonParser.W(), jsonParser, (String) null, new Object[0]);
    }

    public boolean handleUnknownProperty(JsonParser jsonParser, d<?> dVar, Object obj, String str) throws IOException {
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            if (problemHandlers.d().g(this, jsonParser, dVar, obj, str)) {
                return true;
            }
        }
        if (!isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
            jsonParser.U1();
            return true;
        }
        throw UnrecognizedPropertyException.from(this.f14340h, obj, str, dVar == null ? null : dVar.getKnownPropertyNames());
    }

    public JavaType handleUnknownTypeId(JavaType javaType, String str, com.fasterxml.jackson.databind.jsontype.c cVar, String str2) throws IOException {
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            JavaType h4 = problemHandlers.d().h(this, javaType, str, cVar, str2);
            if (h4 != null) {
                if (h4.hasRawClass(Void.class)) {
                    return null;
                }
                if (h4.isTypeOrSubTypeOf(javaType.getRawClass())) {
                    return h4;
                }
                throw invalidTypeIdException(javaType, str, "problem handler tried to resolve into non-subtype: " + com.fasterxml.jackson.databind.util.g.P(h4));
            }
        }
        if (isEnabled(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE)) {
            throw invalidTypeIdException(javaType, str, str2);
        }
        return null;
    }

    public Object handleWeirdKey(Class<?> cls, String str, String str2, Object... objArr) throws IOException {
        String c10 = c(str2, objArr);
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            Object i4 = problemHandlers.d().i(this, cls, str, c10);
            if (i4 != com.fasterxml.jackson.databind.deser.f.f14686a) {
                if (i4 == null || cls.isInstance(i4)) {
                    return i4;
                }
                throw weirdStringException(str, cls, String.format("DeserializationProblemHandler.handleWeirdStringValue() for type %s returned value of type %s", com.fasterxml.jackson.databind.util.g.D(cls), com.fasterxml.jackson.databind.util.g.D(i4)));
            }
        }
        throw weirdKeyException(cls, str, c10);
    }

    public Object handleWeirdNativeValue(JavaType javaType, Object obj, JsonParser jsonParser) throws IOException {
        Class<?> rawClass = javaType.getRawClass();
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            Object j4 = problemHandlers.d().j(this, javaType, obj, jsonParser);
            if (j4 != com.fasterxml.jackson.databind.deser.f.f14686a) {
                if (j4 == null || rawClass.isInstance(j4)) {
                    return j4;
                }
                throw JsonMappingException.from(jsonParser, c("DeserializationProblemHandler.handleWeirdNativeValue() for type %s returned value of type %s", com.fasterxml.jackson.databind.util.g.D(javaType), com.fasterxml.jackson.databind.util.g.D(j4)));
            }
        }
        throw weirdNativeValueException(obj, rawClass);
    }

    public Object handleWeirdNumberValue(Class<?> cls, Number number, String str, Object... objArr) throws IOException {
        String c10 = c(str, objArr);
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            Object k10 = problemHandlers.d().k(this, cls, number, c10);
            if (k10 != com.fasterxml.jackson.databind.deser.f.f14686a) {
                if (m(cls, k10)) {
                    return k10;
                }
                throw weirdNumberException(number, cls, c("DeserializationProblemHandler.handleWeirdNumberValue() for type %s returned value of type %s", com.fasterxml.jackson.databind.util.g.D(cls), com.fasterxml.jackson.databind.util.g.D(k10)));
            }
        }
        throw weirdNumberException(number, cls, c10);
    }

    public Object handleWeirdStringValue(Class<?> cls, String str, String str2, Object... objArr) throws IOException {
        String c10 = c(str2, objArr);
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            Object l10 = problemHandlers.d().l(this, cls, str, c10);
            if (l10 != com.fasterxml.jackson.databind.deser.f.f14686a) {
                if (m(cls, l10)) {
                    return l10;
                }
                throw weirdStringException(str, cls, String.format("DeserializationProblemHandler.handleWeirdStringValue() for type %s returned value of type %s", com.fasterxml.jackson.databind.util.g.D(cls), com.fasterxml.jackson.databind.util.g.D(l10)));
            }
        }
        throw weirdStringException(str, cls, c10);
    }

    public final boolean hasDeserializationFeatures(int i4) {
        return (this.f14337e & i4) == i4;
    }

    public final boolean hasSomeOfFeatures(int i4) {
        return (i4 & this.f14337e) != 0;
    }

    public boolean hasValueDeserializerFor(JavaType javaType, AtomicReference<Throwable> atomicReference) {
        try {
            return this.f14334b.hasValueDeserializerFor(this, this.f14335c, javaType);
        } catch (DatabindException e4) {
            if (atomicReference != null) {
                atomicReference.set(e4);
                return false;
            }
            return false;
        } catch (RuntimeException e10) {
            if (atomicReference != null) {
                atomicReference.set(e10);
                return false;
            }
            throw e10;
        }
    }

    public JsonMappingException instantiationException(Class<?> cls, Throwable th) {
        String q9;
        if (th == null) {
            q9 = "N/A";
        } else {
            q9 = com.fasterxml.jackson.databind.util.g.q(th);
            if (q9 == null) {
                q9 = com.fasterxml.jackson.databind.util.g.j0(th.getClass());
            }
        }
        return ValueInstantiationException.from(this.f14340h, String.format("Cannot construct instance of %s, problem: %s", com.fasterxml.jackson.databind.util.g.j0(cls), q9), constructType(cls), th);
    }

    @Override // com.fasterxml.jackson.databind.c
    public JsonMappingException invalidTypeIdException(JavaType javaType, String str, String str2) {
        return InvalidTypeIdException.from(this.f14340h, a(String.format("Could not resolve type id '%s' as a subtype of %s", str, com.fasterxml.jackson.databind.util.g.P(javaType)), str2), javaType, str);
    }

    @Override // com.fasterxml.jackson.databind.c
    public final boolean isEnabled(MapperFeature mapperFeature) {
        return this.f14336d.isEnabled(mapperFeature);
    }

    public abstract h keyDeserializerInstance(com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException;

    protected DateFormat l() {
        DateFormat dateFormat = this.f14344l;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this.f14336d.getDateFormat().clone();
        this.f14344l = dateFormat2;
        return dateFormat2;
    }

    public final o leaseObjectBuffer() {
        o oVar = this.f14343k;
        if (oVar == null) {
            return new o();
        }
        this.f14343k = null;
        return oVar;
    }

    protected boolean m(Class<?> cls, Object obj) {
        if (obj == null || cls.isInstance(obj)) {
            return true;
        }
        return cls.isPrimitive() && com.fasterxml.jackson.databind.util.g.A0(cls).isInstance(obj);
    }

    @Deprecated
    public JsonMappingException mappingException(String str) {
        return JsonMappingException.from(getParser(), str);
    }

    public JsonMappingException missingTypeIdException(JavaType javaType, String str) {
        return InvalidTypeIdException.from(this.f14340h, a(String.format("Could not resolve subtype of %s", javaType), str), javaType, null);
    }

    protected String n(JsonToken jsonToken) {
        if (jsonToken != null) {
            switch (a.f14347a[jsonToken.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    return "Object value";
                case 4:
                case 5:
                    return "Array value";
                case 6:
                case 7:
                    return "Boolean value";
                case 8:
                    return "Embedded Object";
                case 9:
                    return "Floating-point value";
                case 10:
                    return "Integer value";
                case 11:
                    return "String value";
                case 12:
                    return "Null value";
                default:
                    return "[Unavailable value]";
            }
        }
        return "<end of input>";
    }

    @Deprecated
    protected DateFormat p() {
        return l();
    }

    public Date parseDate(String str) throws IllegalArgumentException {
        try {
            return l().parse(str);
        } catch (ParseException e4) {
            throw new IllegalArgumentException(String.format("Failed to parse Date value '%s': %s", str, com.fasterxml.jackson.databind.util.g.q(e4)));
        }
    }

    public <T> T readPropertyValue(JsonParser jsonParser, BeanProperty beanProperty, Class<T> cls) throws IOException {
        return (T) readPropertyValue(jsonParser, beanProperty, getTypeFactory().constructType(cls));
    }

    public e readTree(JsonParser jsonParser) throws IOException {
        JsonToken W = jsonParser.W();
        if (W == null && (W = jsonParser.y1()) == null) {
            return getNodeFactory().missingNode();
        }
        if (W == JsonToken.VALUE_NULL) {
            return getNodeFactory().nullNode();
        }
        return (e) findRootValueDeserializer(this.f14336d.constructType(e.class)).deserialize(jsonParser, this);
    }

    public <T> T readTreeAsValue(e eVar, Class<T> cls) throws IOException {
        if (eVar == null) {
            return null;
        }
        com.fasterxml.jackson.databind.node.e o9 = o(eVar);
        try {
            T t9 = (T) readValue(o9, cls);
            if (o9 != null) {
                o9.close();
            }
            return t9;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (o9 != null) {
                    try {
                        o9.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException {
        return (T) readValue(jsonParser, getTypeFactory().constructType(cls));
    }

    public <T> T reportBadCoercion(d<?> dVar, Class<?> cls, Object obj, String str, Object... objArr) throws JsonMappingException {
        throw InvalidFormatException.from(getParser(), c(str, objArr), obj, cls);
    }

    @Override // com.fasterxml.jackson.databind.c
    public <T> T reportBadDefinition(JavaType javaType, String str) throws JsonMappingException {
        throw InvalidDefinitionException.from(this.f14340h, str, javaType);
    }

    @Deprecated
    public <T> T reportBadMerge(d<?> dVar) throws JsonMappingException {
        handleBadMerge(dVar);
        return null;
    }

    public <T> T reportBadPropertyDefinition(b bVar, com.fasterxml.jackson.databind.introspect.k kVar, String str, Object... objArr) throws JsonMappingException {
        throw InvalidDefinitionException.from(this.f14340h, String.format("Invalid definition for property %s (of type %s): %s", com.fasterxml.jackson.databind.util.g.i0(kVar), com.fasterxml.jackson.databind.util.g.j0(bVar.y()), c(str, objArr)), bVar, kVar);
    }

    public <T> T reportBadTypeDefinition(b bVar, String str, Object... objArr) throws JsonMappingException {
        throw InvalidDefinitionException.from(this.f14340h, String.format("Invalid type definition for type %s: %s", com.fasterxml.jackson.databind.util.g.j0(bVar.y()), c(str, objArr)), bVar, (com.fasterxml.jackson.databind.introspect.k) null);
    }

    public <T> T reportInputMismatch(d<?> dVar, String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), dVar.handledType(), c(str, objArr));
    }

    @Deprecated
    public void reportMappingException(String str, Object... objArr) throws JsonMappingException {
        throw JsonMappingException.from(getParser(), c(str, objArr));
    }

    @Deprecated
    public void reportMissingContent(String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), (JavaType) null, "No content to map due to end-of-input");
    }

    public <T> T reportPropertyInputMismatch(Class<?> cls, String str, String str2, Object... objArr) throws JsonMappingException {
        MismatchedInputException from = MismatchedInputException.from(getParser(), cls, c(str2, objArr));
        if (str != null) {
            from.prependPath(cls, str);
        }
        throw from;
    }

    public <T> T reportTrailingTokens(Class<?> cls, JsonParser jsonParser, JsonToken jsonToken) throws JsonMappingException {
        throw MismatchedInputException.from(jsonParser, cls, String.format("Trailing token (of type %s) found after value (bound as %s): not allowed as per `DeserializationFeature.FAIL_ON_TRAILING_TOKENS`", jsonToken, com.fasterxml.jackson.databind.util.g.j0(cls)));
    }

    @Deprecated
    public void reportUnknownProperty(Object obj, String str, d<?> dVar) throws JsonMappingException {
        if (isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
            throw UnrecognizedPropertyException.from(this.f14340h, obj, str, dVar == null ? null : dVar.getKnownPropertyNames());
        }
    }

    public <T> T reportUnresolvedObjectId(ObjectIdReader objectIdReader, Object obj) throws JsonMappingException {
        return (T) reportInputMismatch(objectIdReader.idProperty, String.format("No Object Id found for an instance of %s, to assign to property '%s'", com.fasterxml.jackson.databind.util.g.j(obj), objectIdReader.propertyName), new Object[0]);
    }

    public void reportWrongTokenException(d<?> dVar, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(getParser(), dVar.handledType(), jsonToken, c(str, objArr));
    }

    public final void returnObjectBuffer(o oVar) {
        if (this.f14343k == null || oVar.h() >= this.f14343k.h()) {
            this.f14343k = oVar;
        }
    }

    @Deprecated
    public JsonMappingException unknownTypeException(JavaType javaType, String str, String str2) {
        return MismatchedInputException.from(this.f14340h, javaType, a(String.format("Could not resolve type id '%s' into a subtype of %s", str, com.fasterxml.jackson.databind.util.g.P(javaType)), str2));
    }

    public JsonMappingException weirdKeyException(Class<?> cls, String str, String str2) {
        return InvalidFormatException.from(this.f14340h, String.format("Cannot deserialize Map key of type %s from String %s: %s", com.fasterxml.jackson.databind.util.g.j0(cls), d(str), str2), str, cls);
    }

    public JsonMappingException weirdNativeValueException(Object obj, Class<?> cls) {
        return InvalidFormatException.from(this.f14340h, String.format("Cannot deserialize value of type %s from native value (`JsonToken.VALUE_EMBEDDED_OBJECT`) of type %s: incompatible types", com.fasterxml.jackson.databind.util.g.j0(cls), com.fasterxml.jackson.databind.util.g.j(obj)), obj, cls);
    }

    public JsonMappingException weirdNumberException(Number number, Class<?> cls, String str) {
        return InvalidFormatException.from(this.f14340h, String.format("Cannot deserialize value of type %s from number %s: %s", com.fasterxml.jackson.databind.util.g.j0(cls), String.valueOf(number), str), number, cls);
    }

    public JsonMappingException weirdStringException(String str, Class<?> cls, String str2) {
        return InvalidFormatException.from(this.f14340h, String.format("Cannot deserialize value of type %s from String %s: %s", com.fasterxml.jackson.databind.util.g.j0(cls), d(str), str2), str, cls);
    }

    public JsonMappingException wrongTokenException(JsonParser jsonParser, JavaType javaType, JsonToken jsonToken, String str) {
        return MismatchedInputException.from(jsonParser, javaType, a(String.format("Unexpected token (%s), expected %s", jsonParser.W(), jsonToken), str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationContext(com.fasterxml.jackson.databind.deser.g gVar, DeserializerCache deserializerCache) {
        Objects.requireNonNull(gVar, "Cannot pass null DeserializerFactory");
        this.f14335c = gVar;
        this.f14334b = deserializerCache == null ? new DeserializerCache() : deserializerCache;
        this.f14337e = 0;
        this.f14338f = null;
        this.f14336d = null;
        this.f14341i = null;
        this.f14339g = null;
        this.f14345m = null;
    }

    public final t bufferForInputBuffering() {
        return bufferForInputBuffering(getParser());
    }

    @Override // com.fasterxml.jackson.databind.c
    public DeserializationConfig getConfig() {
        return this.f14336d;
    }

    public Object handleUnexpectedToken(Class<?> cls, JsonToken jsonToken, JsonParser jsonParser, String str, Object... objArr) throws IOException {
        return handleUnexpectedToken(constructType(cls), jsonToken, jsonParser, str, objArr);
    }

    public final boolean isEnabled(DeserializationFeature deserializationFeature) {
        return (deserializationFeature.getMask() & this.f14337e) != 0;
    }

    @Deprecated
    public JsonMappingException mappingException(String str, Object... objArr) {
        return JsonMappingException.from(getParser(), c(str, objArr));
    }

    public <T> T readPropertyValue(JsonParser jsonParser, BeanProperty beanProperty, JavaType javaType) throws IOException {
        d<Object> findContextualValueDeserializer = findContextualValueDeserializer(javaType, beanProperty);
        if (findContextualValueDeserializer == null) {
            return (T) reportBadDefinition(javaType, String.format("Could not find JsonDeserializer for type %s (via property %s)", com.fasterxml.jackson.databind.util.g.P(javaType), com.fasterxml.jackson.databind.util.g.i0(beanProperty)));
        }
        return (T) findContextualValueDeserializer.deserialize(jsonParser, this);
    }

    public <T> T readValue(JsonParser jsonParser, JavaType javaType) throws IOException {
        d<Object> findRootValueDeserializer = findRootValueDeserializer(javaType);
        if (findRootValueDeserializer == null) {
            return (T) reportBadDefinition(javaType, "Could not find JsonDeserializer for type " + com.fasterxml.jackson.databind.util.g.P(javaType));
        }
        return (T) findRootValueDeserializer.deserialize(jsonParser, this);
    }

    @Override // com.fasterxml.jackson.databind.c
    public DeserializationContext setAttribute(Object obj, Object obj2) {
        this.f14345m = this.f14345m.withPerCallAttribute(obj, obj2);
        return this;
    }

    public Object handleUnexpectedToken(JavaType javaType, JsonParser jsonParser) throws IOException {
        return handleUnexpectedToken(javaType, jsonParser.W(), jsonParser, (String) null, new Object[0]);
    }

    public final boolean isEnabled(StreamReadCapability streamReadCapability) {
        return this.f14338f.d(streamReadCapability);
    }

    @Deprecated
    public JsonMappingException mappingException(Class<?> cls) {
        return mappingException(cls, this.f14340h.W());
    }

    public <T> T reportInputMismatch(Class<?> cls, String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), cls, c(str, objArr));
    }

    public void reportWrongTokenException(JavaType javaType, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(getParser(), javaType, jsonToken, c(str, objArr));
    }

    public Object handleUnexpectedToken(JavaType javaType, JsonToken jsonToken, JsonParser jsonParser, String str, Object... objArr) throws IOException {
        String c10 = c(str, objArr);
        for (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> problemHandlers = this.f14336d.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.c()) {
            Object e4 = problemHandlers.d().e(this, javaType, jsonToken, jsonParser, c10);
            if (e4 != com.fasterxml.jackson.databind.deser.f.f14686a) {
                if (m(javaType.getRawClass(), e4)) {
                    return e4;
                }
                reportBadDefinition(javaType, String.format("DeserializationProblemHandler.handleUnexpectedToken() for type %s returned value of type %s", com.fasterxml.jackson.databind.util.g.P(javaType), com.fasterxml.jackson.databind.util.g.j(e4)));
            }
        }
        if (c10 == null) {
            String P = com.fasterxml.jackson.databind.util.g.P(javaType);
            if (jsonToken == null) {
                c10 = String.format("Unexpected end-of-input when trying read value of type %s", P);
            } else {
                c10 = String.format("Cannot deserialize value of type %s from %s (token `JsonToken.%s`)", P, n(jsonToken), jsonToken);
            }
        }
        if (jsonToken != null && jsonToken.isScalarValue()) {
            jsonParser.S0();
        }
        reportInputMismatch(javaType, c10, new Object[0]);
        return null;
    }

    @Deprecated
    public JsonMappingException mappingException(Class<?> cls, JsonToken jsonToken) {
        return JsonMappingException.from(this.f14340h, String.format("Cannot deserialize instance of %s out of %s token", com.fasterxml.jackson.databind.util.g.j0(cls), jsonToken));
    }

    public <T> T reportInputMismatch(JavaType javaType, String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), javaType, c(str, objArr));
    }

    public <T> T reportPropertyInputMismatch(JavaType javaType, String str, String str2, Object... objArr) throws JsonMappingException {
        return (T) reportPropertyInputMismatch(javaType.getRawClass(), str, str2, objArr);
    }

    public void reportWrongTokenException(Class<?> cls, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(getParser(), cls, jsonToken, c(str, objArr));
    }

    public JsonMappingException wrongTokenException(JsonParser jsonParser, Class<?> cls, JsonToken jsonToken, String str) {
        return MismatchedInputException.from(jsonParser, cls, a(String.format("Unexpected token (%s), expected %s", jsonParser.W(), jsonToken), str));
    }

    public JsonMappingException instantiationException(Class<?> cls, String str) {
        return ValueInstantiationException.from(this.f14340h, String.format("Cannot construct instance of %s: %s", com.fasterxml.jackson.databind.util.g.j0(cls), str), constructType(cls));
    }

    public <T> T readTreeAsValue(e eVar, JavaType javaType) throws IOException {
        if (eVar == null) {
            return null;
        }
        com.fasterxml.jackson.databind.node.e o9 = o(eVar);
        try {
            T t9 = (T) readValue(o9, javaType);
            if (o9 != null) {
                o9.close();
            }
            return t9;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (o9 != null) {
                    try {
                        o9.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public <T> T reportInputMismatch(BeanProperty beanProperty, String str, Object... objArr) throws JsonMappingException {
        AnnotatedMember member;
        MismatchedInputException from = MismatchedInputException.from(getParser(), beanProperty == null ? null : beanProperty.getType(), c(str, objArr));
        if (beanProperty != null && (member = beanProperty.getMember()) != null) {
            from.prependPath(member.getDeclaringClass(), beanProperty.getName());
        }
        throw from;
    }

    @Deprecated
    public void reportWrongTokenException(JsonParser jsonParser, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(jsonParser, jsonToken, c(str, objArr));
    }

    @Deprecated
    public JsonMappingException wrongTokenException(JsonParser jsonParser, JsonToken jsonToken, String str) {
        return wrongTokenException(jsonParser, (JavaType) null, jsonToken, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationContext(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.deser.g gVar) {
        this.f14334b = deserializationContext.f14334b;
        this.f14335c = gVar;
        this.f14336d = deserializationContext.f14336d;
        this.f14337e = deserializationContext.f14337e;
        this.f14338f = deserializationContext.f14338f;
        this.f14339g = deserializationContext.f14339g;
        this.f14340h = deserializationContext.f14340h;
        this.f14341i = deserializationContext.f14341i;
        this.f14345m = deserializationContext.f14345m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationContext(DeserializationContext deserializationContext, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
        this.f14334b = deserializationContext.f14334b;
        this.f14335c = deserializationContext.f14335c;
        this.f14338f = jsonParser == null ? null : jsonParser.O0();
        this.f14336d = deserializationConfig;
        this.f14337e = deserializationConfig.getDeserializationFeatures();
        this.f14339g = deserializationConfig.getActiveView();
        this.f14340h = jsonParser;
        this.f14341i = injectableValues;
        this.f14345m = deserializationConfig.getAttributes();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationContext(DeserializationContext deserializationContext, DeserializationConfig deserializationConfig) {
        this.f14334b = deserializationContext.f14334b;
        this.f14335c = deserializationContext.f14335c;
        this.f14338f = null;
        this.f14336d = deserializationConfig;
        this.f14337e = deserializationConfig.getDeserializationFeatures();
        this.f14339g = null;
        this.f14340h = null;
        this.f14341i = null;
        this.f14345m = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationContext(DeserializationContext deserializationContext) {
        this.f14334b = new DeserializerCache();
        this.f14335c = deserializationContext.f14335c;
        this.f14336d = deserializationContext.f14336d;
        this.f14337e = deserializationContext.f14337e;
        this.f14338f = deserializationContext.f14338f;
        this.f14339g = deserializationContext.f14339g;
        this.f14341i = null;
    }
}
