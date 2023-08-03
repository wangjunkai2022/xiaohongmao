package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadFeature;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.core.filter.TokenFilter;
import com.fasterxml.jackson.core.m;
import com.fasterxml.jackson.core.n;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.e;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import io.sentry.instrumentation.file.h;
import java.io.DataInput;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ObjectReader extends com.fasterxml.jackson.core.h implements n, Serializable {

    /* renamed from: n  reason: collision with root package name */
    private static final long f14397n = 2;

    /* renamed from: a  reason: collision with root package name */
    protected final DeserializationConfig f14398a;

    /* renamed from: b  reason: collision with root package name */
    protected final DefaultDeserializationContext f14399b;

    /* renamed from: c  reason: collision with root package name */
    protected final JsonFactory f14400c;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f14401d;

    /* renamed from: e  reason: collision with root package name */
    private final TokenFilter f14402e;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f14403f;

    /* renamed from: g  reason: collision with root package name */
    protected final d<Object> f14404g;

    /* renamed from: h  reason: collision with root package name */
    protected final Object f14405h;

    /* renamed from: i  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.c f14406i;

    /* renamed from: j  reason: collision with root package name */
    protected final InjectableValues f14407j;

    /* renamed from: k  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.deser.e f14408k;

    /* renamed from: l  reason: collision with root package name */
    protected final ConcurrentHashMap<JavaType, d<Object>> f14409l;

    /* renamed from: m  reason: collision with root package name */
    protected transient JavaType f14410m;

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectReader(ObjectMapper objectMapper, DeserializationConfig deserializationConfig) {
        this(objectMapper, deserializationConfig, null, null, null, null);
    }

    protected void A(Object obj) throws StreamReadException {
        throw new JsonParseException((JsonParser) null, "Cannot use source of type " + obj.getClass().getName() + " with format auto-detection: must be byte- not char-based");
    }

    protected void B(com.fasterxml.jackson.databind.deser.e eVar, e.b bVar) throws IOException {
        throw new JsonParseException((JsonParser) null, "Cannot detect format from input, does not look like any of detectable formats " + eVar.toString());
    }

    protected final void C(JsonParser jsonParser, DeserializationContext deserializationContext, JavaType javaType) throws IOException {
        Object obj;
        JsonToken y12 = jsonParser.y1();
        if (y12 != null) {
            Class<?> p02 = com.fasterxml.jackson.databind.util.g.p0(javaType);
            if (p02 == null && (obj = this.f14405h) != null) {
                p02 = obj.getClass();
            }
            deserializationContext.reportTrailingTokens(p02, jsonParser, y12);
        }
    }

    protected void D(com.fasterxml.jackson.core.c cVar) {
        if (cVar == null || this.f14400c.canUseSchema(cVar)) {
            return;
        }
        throw new IllegalArgumentException("Cannot use FormatSchema of type " + cVar.getClass().getName() + " for format " + this.f14400c.getFormatName());
    }

    protected ObjectReader E(DeserializationConfig deserializationConfig) {
        if (deserializationConfig == this.f14398a) {
            return this;
        }
        ObjectReader w9 = w(this, deserializationConfig);
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        return eVar != null ? w9.withFormatDetection(eVar.e(deserializationConfig)) : w9;
    }

    protected DefaultDeserializationContext F(JsonParser jsonParser) {
        return this.f14399b.createInstance(this.f14398a, jsonParser, this.f14407j);
    }

    protected DefaultDeserializationContext G() {
        return this.f14399b.createDummyInstance(this.f14398a);
    }

    protected final void a(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format("argument \"%s\" is null", str));
        }
    }

    public ObjectReader at(String str) {
        a("pointerExpr", str);
        return new ObjectReader(this, new com.fasterxml.jackson.core.filter.c(str));
    }

    protected Object b(JsonParser jsonParser, Object obj) throws IOException {
        DefaultDeserializationContext F = F(jsonParser);
        JsonToken r9 = r(F, jsonParser);
        if (r9 == JsonToken.VALUE_NULL) {
            if (obj == null) {
                obj = o(F).getNullValue(F);
            }
        } else if (r9 != JsonToken.END_ARRAY && r9 != JsonToken.END_OBJECT) {
            obj = F.readRootValue(jsonParser, this.f14403f, o(F), this.f14405h);
        }
        jsonParser.J();
        if (this.f14398a.isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)) {
            C(jsonParser, F, this.f14403f);
        }
        return obj;
    }

    protected Object c(JsonParser jsonParser) throws IOException {
        Object obj;
        try {
            DefaultDeserializationContext F = F(jsonParser);
            JsonToken r9 = r(F, jsonParser);
            if (r9 == JsonToken.VALUE_NULL) {
                obj = this.f14405h;
                if (obj == null) {
                    obj = o(F).getNullValue(F);
                }
            } else {
                if (r9 != JsonToken.END_ARRAY && r9 != JsonToken.END_OBJECT) {
                    obj = F.readRootValue(jsonParser, this.f14403f, o(F), this.f14405h);
                }
                obj = this.f14405h;
            }
            if (this.f14398a.isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)) {
                C(jsonParser, F, this.f14403f);
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

    public JsonParser createNonBlockingByteArrayParser() throws IOException {
        return this.f14398a.initialize(this.f14400c.createNonBlockingByteArrayParser(), this.f14406i);
    }

    public JsonParser createParser(File file) throws IOException {
        a("src", file);
        return this.f14398a.initialize(this.f14400c.createParser(file), this.f14406i);
    }

    protected final e d(JsonParser jsonParser) throws IOException {
        try {
            e h4 = h(jsonParser);
            if (jsonParser != null) {
                jsonParser.close();
            }
            return h4;
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

    protected <T> i<T> e(JsonParser jsonParser) throws IOException {
        DefaultDeserializationContext F = F(jsonParser);
        q(F, jsonParser);
        jsonParser.y1();
        return y(jsonParser, F, o(F), true);
    }

    public ObjectReader forType(JavaType javaType) {
        if (javaType == null || !javaType.equals(this.f14403f)) {
            d<Object> z9 = z(javaType);
            com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
            if (eVar != null) {
                eVar = eVar.j(javaType);
            }
            return x(this, this.f14398a, javaType, z9, this.f14405h, this.f14406i, this.f14407j, eVar);
        }
        return this;
    }

    public ContextAttributes getAttributes() {
        return this.f14398a.getAttributes();
    }

    public DeserializationConfig getConfig() {
        return this.f14398a;
    }

    @Override // com.fasterxml.jackson.core.h
    public JsonFactory getFactory() {
        return this.f14400c;
    }

    public InjectableValues getInjectableValues() {
        return this.f14407j;
    }

    public TypeFactory getTypeFactory() {
        return this.f14398a.getTypeFactory();
    }

    public JavaType getValueType() {
        return this.f14403f;
    }

    protected final e h(JsonParser jsonParser) throws IOException {
        e eVar;
        Object obj = this.f14405h;
        if (obj != null) {
            return (e) b(jsonParser, obj);
        }
        this.f14398a.initialize(jsonParser);
        com.fasterxml.jackson.core.c cVar = this.f14406i;
        if (cVar != null) {
            jsonParser.T1(cVar);
        }
        JsonToken W = jsonParser.W();
        if (W == null && (W = jsonParser.y1()) == null) {
            return this.f14398a.getNodeFactory().missingNode();
        }
        DefaultDeserializationContext F = F(jsonParser);
        if (W == JsonToken.VALUE_NULL) {
            eVar = this.f14398a.getNodeFactory().nullNode();
        } else {
            eVar = (e) F.readRootValue(jsonParser, u(), p(F), null);
        }
        jsonParser.J();
        if (this.f14398a.isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)) {
            C(jsonParser, F, u());
        }
        return eVar;
    }

    protected final e i(JsonParser jsonParser) throws IOException {
        e eVar;
        Object obj = this.f14405h;
        if (obj != null) {
            return (e) b(jsonParser, obj);
        }
        this.f14398a.initialize(jsonParser);
        com.fasterxml.jackson.core.c cVar = this.f14406i;
        if (cVar != null) {
            jsonParser.T1(cVar);
        }
        JsonToken W = jsonParser.W();
        if (W == null && (W = jsonParser.y1()) == null) {
            return null;
        }
        DefaultDeserializationContext F = F(jsonParser);
        if (W == JsonToken.VALUE_NULL) {
            eVar = this.f14398a.getNodeFactory().nullNode();
        } else {
            eVar = (e) F.readRootValue(jsonParser, u(), p(F), null);
        }
        jsonParser.J();
        if (this.f14398a.isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)) {
            C(jsonParser, F, u());
        }
        return eVar;
    }

    public boolean isEnabled(DeserializationFeature deserializationFeature) {
        return this.f14398a.isEnabled(deserializationFeature);
    }

    protected JsonParser j(JsonParser jsonParser, boolean z9) {
        return (this.f14402e == null || com.fasterxml.jackson.core.filter.b.class.isInstance(jsonParser)) ? jsonParser : new com.fasterxml.jackson.core.filter.b(jsonParser, this.f14402e, TokenFilter.Inclusion.ONLY_INCLUDE_ALL, z9);
    }

    protected Object k(e.b bVar, boolean z9) throws IOException {
        if (!bVar.f()) {
            B(this.f14408k, bVar);
        }
        JsonParser a10 = bVar.a();
        if (z9) {
            a10.h0(JsonParser.Feature.AUTO_CLOSE_SOURCE);
        }
        return bVar.e().c(a10);
    }

    protected Object l(byte[] bArr, int i4, int i10) throws IOException {
        e.b d4 = this.f14408k.d(bArr, i4, i10);
        if (!d4.f()) {
            B(this.f14408k, d4);
        }
        return d4.e().c(d4.a());
    }

    protected e m(InputStream inputStream) throws IOException {
        e.b b10 = this.f14408k.b(inputStream);
        if (!b10.f()) {
            B(this.f14408k, b10);
        }
        JsonParser a10 = b10.a();
        a10.h0(JsonParser.Feature.AUTO_CLOSE_SOURCE);
        return b10.e().d(a10);
    }

    protected <T> i<T> n(e.b bVar, boolean z9) throws IOException {
        if (!bVar.f()) {
            B(this.f14408k, bVar);
        }
        JsonParser a10 = bVar.a();
        if (z9) {
            a10.h0(JsonParser.Feature.AUTO_CLOSE_SOURCE);
        }
        return bVar.e().e(a10);
    }

    protected d<Object> o(DeserializationContext deserializationContext) throws DatabindException {
        d<Object> dVar = this.f14404g;
        if (dVar != null) {
            return dVar;
        }
        JavaType javaType = this.f14403f;
        if (javaType == null) {
            deserializationContext.reportBadDefinition((JavaType) null, "No value type configured for ObjectReader");
        }
        d<Object> dVar2 = this.f14409l.get(javaType);
        if (dVar2 != null) {
            return dVar2;
        }
        d<Object> findRootValueDeserializer = deserializationContext.findRootValueDeserializer(javaType);
        if (findRootValueDeserializer == null) {
            deserializationContext.reportBadDefinition(javaType, "Cannot find a deserializer for type " + javaType);
        }
        this.f14409l.put(javaType, findRootValueDeserializer);
        return findRootValueDeserializer;
    }

    protected d<Object> p(DeserializationContext deserializationContext) throws DatabindException {
        JavaType u9 = u();
        d<Object> dVar = this.f14409l.get(u9);
        if (dVar == null) {
            dVar = deserializationContext.findRootValueDeserializer(u9);
            if (dVar == null) {
                deserializationContext.reportBadDefinition(u9, "Cannot find a deserializer for type " + u9);
            }
            this.f14409l.put(u9, dVar);
        }
        return dVar;
    }

    protected void q(DeserializationContext deserializationContext, JsonParser jsonParser) throws IOException {
        this.f14398a.initialize(jsonParser, this.f14406i);
    }

    protected JsonToken r(DeserializationContext deserializationContext, JsonParser jsonParser) throws IOException {
        this.f14398a.initialize(jsonParser, this.f14406i);
        JsonToken W = jsonParser.W();
        if (W == null && (W = jsonParser.y1()) == null) {
            deserializationContext.reportInputMismatch(this.f14403f, "No content to map due to end-of-input", new Object[0]);
        }
        return W;
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public <T extends m> T readTree(JsonParser jsonParser) throws IOException {
        a("p", jsonParser);
        return i(jsonParser);
    }

    public <T> T readValue(JsonParser jsonParser) throws IOException {
        a("p", jsonParser);
        return (T) b(jsonParser, this.f14405h);
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> Iterator<T> readValues(JsonParser jsonParser, Class<T> cls) throws IOException {
        a("p", jsonParser);
        return forType((Class<?>) cls).readValues(jsonParser);
    }

    protected InputStream s(File file) throws IOException {
        return h.b.a(new FileInputStream(file), file);
    }

    protected InputStream t(URL url) throws IOException {
        return url.openStream();
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public JsonParser treeAsTokens(m mVar) {
        a("n", mVar);
        return new com.fasterxml.jackson.databind.node.e((e) mVar, withValueToUpdate(null));
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> T treeToValue(m mVar, Class<T> cls) throws JsonProcessingException {
        a("n", mVar);
        try {
            return (T) readValue(treeAsTokens(mVar), cls);
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    protected final JavaType u() {
        JavaType javaType = this.f14410m;
        if (javaType == null) {
            JavaType constructType = getTypeFactory().constructType(e.class);
            this.f14410m = constructType;
            return constructType;
        }
        return javaType;
    }

    protected ObjectReader v(ObjectReader objectReader, JsonFactory jsonFactory) {
        return new ObjectReader(objectReader, jsonFactory);
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.e.f14557a;
    }

    protected ObjectReader w(ObjectReader objectReader, DeserializationConfig deserializationConfig) {
        return new ObjectReader(objectReader, deserializationConfig);
    }

    public ObjectReader with(DeserializationFeature deserializationFeature) {
        return E(this.f14398a.with(deserializationFeature));
    }

    public ObjectReader withAttribute(Object obj, Object obj2) {
        return E(this.f14398a.withAttribute(obj, obj2));
    }

    public ObjectReader withAttributes(Map<?, ?> map) {
        return E(this.f14398a.withAttributes(map));
    }

    public ObjectReader withFeatures(DeserializationFeature... deserializationFeatureArr) {
        return E(this.f14398a.withFeatures(deserializationFeatureArr));
    }

    public ObjectReader withFormatDetection(ObjectReader... objectReaderArr) {
        return withFormatDetection(new com.fasterxml.jackson.databind.deser.e(objectReaderArr));
    }

    public ObjectReader withHandler(com.fasterxml.jackson.databind.deser.f fVar) {
        return E(this.f14398a.withHandler(fVar));
    }

    public ObjectReader withRootName(String str) {
        return E(this.f14398a.withRootName(str));
    }

    @Deprecated
    public ObjectReader withType(JavaType javaType) {
        return forType(javaType);
    }

    public ObjectReader withValueToUpdate(Object obj) {
        if (obj == this.f14405h) {
            return this;
        }
        if (obj == null) {
            return x(this, this.f14398a, this.f14403f, this.f14404g, null, this.f14406i, this.f14407j, this.f14408k);
        }
        JavaType javaType = this.f14403f;
        if (javaType == null) {
            javaType = this.f14398a.constructType(obj.getClass());
        }
        return x(this, this.f14398a, javaType, this.f14404g, obj, this.f14406i, this.f14407j, this.f14408k);
    }

    public ObjectReader withView(Class<?> cls) {
        return E(this.f14398a.withView(cls));
    }

    public ObjectReader without(DeserializationFeature deserializationFeature) {
        return E(this.f14398a.without(deserializationFeature));
    }

    public ObjectReader withoutAttribute(Object obj) {
        return E(this.f14398a.withoutAttribute(obj));
    }

    public ObjectReader withoutFeatures(DeserializationFeature... deserializationFeatureArr) {
        return E(this.f14398a.withoutFeatures(deserializationFeatureArr));
    }

    public ObjectReader withoutRootName() {
        return E(this.f14398a.withRootName(PropertyName.NO_NAME));
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public void writeTree(JsonGenerator jsonGenerator, m mVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.fasterxml.jackson.core.h
    public void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException {
        throw new UnsupportedOperationException("Not implemented for ObjectReader");
    }

    protected ObjectReader x(ObjectReader objectReader, DeserializationConfig deserializationConfig, JavaType javaType, d<Object> dVar, Object obj, com.fasterxml.jackson.core.c cVar, InjectableValues injectableValues, com.fasterxml.jackson.databind.deser.e eVar) {
        return new ObjectReader(objectReader, deserializationConfig, javaType, dVar, obj, cVar, injectableValues, eVar);
    }

    protected <T> i<T> y(JsonParser jsonParser, DeserializationContext deserializationContext, d<?> dVar, boolean z9) {
        return new i<>(this.f14403f, jsonParser, deserializationContext, dVar, z9, this.f14405h);
    }

    protected d<Object> z(JavaType javaType) {
        if (javaType == null || !this.f14398a.isEnabled(DeserializationFeature.EAGER_DESERIALIZER_FETCH)) {
            return null;
        }
        d<Object> dVar = this.f14409l.get(javaType);
        if (dVar == null) {
            try {
                dVar = G().findRootValueDeserializer(javaType);
                if (dVar != null) {
                    this.f14409l.put(javaType, dVar);
                }
            } catch (JacksonException unused) {
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectReader(ObjectMapper objectMapper, DeserializationConfig deserializationConfig, JavaType javaType, Object obj, com.fasterxml.jackson.core.c cVar, InjectableValues injectableValues) {
        this.f14398a = deserializationConfig;
        this.f14399b = objectMapper.f14386l;
        this.f14409l = objectMapper.f14388n;
        this.f14400c = objectMapper.f14375a;
        this.f14403f = javaType;
        this.f14405h = obj;
        this.f14406i = cVar;
        this.f14407j = injectableValues;
        this.f14401d = deserializationConfig.useRootWrapping();
        this.f14404g = z(javaType);
        this.f14408k = null;
        this.f14402e = null;
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public e createArrayNode() {
        return this.f14398a.getNodeFactory().arrayNode();
    }

    @Override // com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.l
    public e createObjectNode() {
        return this.f14398a.getNodeFactory().objectNode();
    }

    public boolean isEnabled(MapperFeature mapperFeature) {
        return this.f14398a.isEnabled(mapperFeature);
    }

    @Override // com.fasterxml.jackson.core.l
    public e missingNode() {
        return this.f14398a.getNodeFactory().missingNode();
    }

    @Override // com.fasterxml.jackson.core.l
    public e nullNode() {
        return this.f14398a.getNodeFactory().nullNode();
    }

    public ObjectReader with(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        return E(this.f14398a.with(deserializationFeature, deserializationFeatureArr));
    }

    public ObjectReader withFeatures(JsonParser.Feature... featureArr) {
        return E(this.f14398a.withFeatures(featureArr));
    }

    public ObjectReader withFormatDetection(com.fasterxml.jackson.databind.deser.e eVar) {
        return x(this, this.f14398a, this.f14403f, this.f14404g, this.f14405h, this.f14406i, this.f14407j, eVar);
    }

    public ObjectReader withRootName(PropertyName propertyName) {
        return E(this.f14398a.withRootName(propertyName));
    }

    @Deprecated
    public ObjectReader withType(Class<?> cls) {
        return forType(this.f14398a.constructType(cls));
    }

    public ObjectReader without(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        return E(this.f14398a.without(deserializationFeature, deserializationFeatureArr));
    }

    public ObjectReader withoutFeatures(JsonParser.Feature... featureArr) {
        return E(this.f14398a.withoutFeatures(featureArr));
    }

    public ObjectReader at(com.fasterxml.jackson.core.e eVar) {
        a("pointer", eVar);
        return new ObjectReader(this, new com.fasterxml.jackson.core.filter.c(eVar));
    }

    public JsonParser createParser(URL url) throws IOException {
        a("src", url);
        return this.f14398a.initialize(this.f14400c.createParser(url), this.f14406i);
    }

    public boolean isEnabled(JsonParser.Feature feature) {
        return this.f14398a.isEnabled(feature, this.f14400c);
    }

    public e readTree(InputStream inputStream) throws IOException {
        if (this.f14408k != null) {
            return m(inputStream);
        }
        return d(j(createParser(inputStream), false));
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException {
        a("p", jsonParser);
        return (T) forType((Class<?>) cls).readValue(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> Iterator<T> readValues(JsonParser jsonParser, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException {
        a("p", jsonParser);
        return forType((com.fasterxml.jackson.core.type.b<?>) bVar).readValues(jsonParser);
    }

    public ObjectReader with(JsonParser.Feature feature) {
        return E(this.f14398a.with(feature));
    }

    public ObjectReader withFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        return E(this.f14398a.withFeatures(bVarArr));
    }

    @Deprecated
    public ObjectReader withType(Type type) {
        return forType(this.f14398a.getTypeFactory().constructType(type));
    }

    public ObjectReader without(JsonParser.Feature feature) {
        return E(this.f14398a.without(feature));
    }

    public ObjectReader withoutFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        return E(this.f14398a.withoutFeatures(bVarArr));
    }

    public boolean isEnabled(StreamReadFeature streamReadFeature) {
        return this.f14398a.isEnabled(streamReadFeature.mappedFeature(), this.f14400c);
    }

    public ObjectReader with(StreamReadFeature streamReadFeature) {
        return E(this.f14398a.with(streamReadFeature.mappedFeature()));
    }

    @Deprecated
    public ObjectReader withType(com.fasterxml.jackson.core.type.b<?> bVar) {
        return forType(this.f14398a.getTypeFactory().constructType(bVar.b()));
    }

    public ObjectReader without(StreamReadFeature streamReadFeature) {
        return E(this.f14398a.without(streamReadFeature.mappedFeature()));
    }

    public JsonParser createParser(InputStream inputStream) throws IOException {
        a("in", inputStream);
        return this.f14398a.initialize(this.f14400c.createParser(inputStream), this.f14406i);
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> T readValue(JsonParser jsonParser, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException {
        a("p", jsonParser);
        return (T) forType((com.fasterxml.jackson.core.type.b<?>) bVar).readValue(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> Iterator<T> readValues(JsonParser jsonParser, com.fasterxml.jackson.core.type.a aVar) throws IOException {
        a("p", jsonParser);
        return readValues(jsonParser, (JavaType) aVar);
    }

    public <T> T treeToValue(m mVar, JavaType javaType) throws JsonProcessingException {
        a("n", mVar);
        try {
            return (T) readValue(treeAsTokens(mVar), javaType);
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public ObjectReader with(com.fasterxml.jackson.core.b bVar) {
        return E(this.f14398a.with(bVar));
    }

    public ObjectReader without(com.fasterxml.jackson.core.b bVar) {
        return E(this.f14398a.without(bVar));
    }

    public ObjectReader forType(Class<?> cls) {
        return forType(this.f14398a.constructType(cls));
    }

    public e readTree(Reader reader) throws IOException {
        if (this.f14408k != null) {
            A(reader);
        }
        return d(j(createParser(reader), false));
    }

    public ObjectReader with(DeserializationConfig deserializationConfig) {
        return E(deserializationConfig);
    }

    public JsonParser createParser(Reader reader) throws IOException {
        a("r", reader);
        return this.f14398a.initialize(this.f14400c.createParser(reader), this.f14406i);
    }

    public ObjectReader forType(com.fasterxml.jackson.core.type.b<?> bVar) {
        return forType(this.f14398a.getTypeFactory().constructType(bVar.b()));
    }

    @Override // com.fasterxml.jackson.core.h
    public <T> T readValue(JsonParser jsonParser, com.fasterxml.jackson.core.type.a aVar) throws IOException {
        a("p", jsonParser);
        return (T) forType((JavaType) aVar).readValue(jsonParser);
    }

    public <T> Iterator<T> readValues(JsonParser jsonParser, JavaType javaType) throws IOException {
        a("p", jsonParser);
        return forType(javaType).readValues(jsonParser);
    }

    public ObjectReader with(InjectableValues injectableValues) {
        return this.f14407j == injectableValues ? this : x(this, this.f14398a, this.f14403f, this.f14404g, this.f14405h, this.f14406i, injectableValues, this.f14408k);
    }

    public JsonParser createParser(byte[] bArr) throws IOException {
        a("content", bArr);
        return this.f14398a.initialize(this.f14400c.createParser(bArr), this.f14406i);
    }

    public e readTree(String str) throws JsonProcessingException, JsonMappingException {
        if (this.f14408k != null) {
            A(str);
        }
        try {
            return d(j(createParser(str), false));
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public <T> T readValue(JsonParser jsonParser, JavaType javaType) throws IOException {
        a("p", jsonParser);
        return (T) forType(javaType).readValue(jsonParser);
    }

    public <T> i<T> readValues(JsonParser jsonParser) throws IOException {
        a("p", jsonParser);
        DefaultDeserializationContext F = F(jsonParser);
        return y(jsonParser, F, o(F), false);
    }

    public ObjectReader with(JsonNodeFactory jsonNodeFactory) {
        return E(this.f14398a.with(jsonNodeFactory));
    }

    public ObjectReader with(JsonFactory jsonFactory) {
        if (jsonFactory == this.f14400c) {
            return this;
        }
        ObjectReader v9 = v(this, jsonFactory);
        if (jsonFactory.getCodec() == null) {
            jsonFactory.setCodec(v9);
        }
        return v9;
    }

    public JsonParser createParser(byte[] bArr, int i4, int i10) throws IOException {
        a("content", bArr);
        return this.f14398a.initialize(this.f14400c.createParser(bArr, i4, i10), this.f14406i);
    }

    public <T> T readValue(InputStream inputStream) throws IOException {
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        if (eVar != null) {
            return (T) k(eVar.b(inputStream), false);
        }
        return (T) c(j(createParser(inputStream), false));
    }

    public <T> i<T> readValues(InputStream inputStream) throws IOException {
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        if (eVar != null) {
            return n(eVar.b(inputStream), false);
        }
        return e(j(createParser(inputStream), true));
    }

    public JsonParser createParser(String str) throws IOException {
        a("content", str);
        return this.f14398a.initialize(this.f14400c.createParser(str), this.f14406i);
    }

    public e readTree(byte[] bArr) throws IOException {
        a("json", bArr);
        if (this.f14408k != null) {
            A(bArr);
        }
        return d(j(createParser(bArr), false));
    }

    public <T> T readValue(InputStream inputStream, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(inputStream);
    }

    public ObjectReader with(com.fasterxml.jackson.core.c cVar) {
        if (this.f14406i == cVar) {
            return this;
        }
        D(cVar);
        return x(this, this.f14398a, this.f14403f, this.f14404g, this.f14405h, cVar, this.f14407j, this.f14408k);
    }

    protected ObjectReader(ObjectReader objectReader, DeserializationConfig deserializationConfig, JavaType javaType, d<Object> dVar, Object obj, com.fasterxml.jackson.core.c cVar, InjectableValues injectableValues, com.fasterxml.jackson.databind.deser.e eVar) {
        this.f14398a = deserializationConfig;
        this.f14399b = objectReader.f14399b;
        this.f14409l = objectReader.f14409l;
        this.f14400c = objectReader.f14400c;
        this.f14403f = javaType;
        this.f14404g = dVar;
        this.f14405h = obj;
        this.f14406i = cVar;
        this.f14407j = injectableValues;
        this.f14401d = deserializationConfig.useRootWrapping();
        this.f14408k = eVar;
        this.f14402e = objectReader.f14402e;
    }

    public JsonParser createParser(char[] cArr) throws IOException {
        a("content", cArr);
        return this.f14398a.initialize(this.f14400c.createParser(cArr), this.f14406i);
    }

    public <T> T readValue(Reader reader) throws IOException {
        if (this.f14408k != null) {
            A(reader);
        }
        return (T) c(j(createParser(reader), false));
    }

    public <T> i<T> readValues(Reader reader) throws IOException {
        if (this.f14408k != null) {
            A(reader);
        }
        JsonParser j4 = j(createParser(reader), true);
        DefaultDeserializationContext F = F(j4);
        q(F, j4);
        j4.y1();
        return y(j4, F, o(F), true);
    }

    public JsonParser createParser(char[] cArr, int i4, int i10) throws IOException {
        a("content", cArr);
        return this.f14398a.initialize(this.f14400c.createParser(cArr, i4, i10), this.f14406i);
    }

    public ObjectReader with(Locale locale) {
        return E(this.f14398a.with(locale));
    }

    public e readTree(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f14408k != null) {
            A(bArr);
        }
        return d(j(createParser(bArr, i4, i10), false));
    }

    public <T> T readValue(Reader reader, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(reader);
    }

    public ObjectReader with(TimeZone timeZone) {
        return E(this.f14398a.with(timeZone));
    }

    public JsonParser createParser(DataInput dataInput) throws IOException {
        a("content", dataInput);
        return this.f14398a.initialize(this.f14400c.createParser(dataInput), this.f14406i);
    }

    public <T> T readValue(String str) throws JsonProcessingException, JsonMappingException {
        if (this.f14408k != null) {
            A(str);
        }
        try {
            return (T) c(j(createParser(str), false));
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public ObjectReader with(Base64Variant base64Variant) {
        return E(this.f14398a.with(base64Variant));
    }

    public ObjectReader with(ContextAttributes contextAttributes) {
        return E(this.f14398a.with(contextAttributes));
    }

    public e readTree(DataInput dataInput) throws IOException {
        if (this.f14408k != null) {
            A(dataInput);
        }
        return d(j(createParser(dataInput), false));
    }

    public <T> i<T> readValues(String str) throws IOException {
        if (this.f14408k != null) {
            A(str);
        }
        JsonParser j4 = j(createParser(str), true);
        DefaultDeserializationContext F = F(j4);
        q(F, j4);
        j4.y1();
        return y(j4, F, o(F), true);
    }

    public <T> T readValue(String str, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(str);
    }

    public <T> T readValue(byte[] bArr) throws IOException {
        if (this.f14408k != null) {
            return (T) l(bArr, 0, bArr.length);
        }
        return (T) c(j(createParser(bArr), false));
    }

    protected ObjectReader(ObjectReader objectReader, DeserializationConfig deserializationConfig) {
        this.f14398a = deserializationConfig;
        this.f14399b = objectReader.f14399b;
        this.f14409l = objectReader.f14409l;
        this.f14400c = objectReader.f14400c;
        this.f14403f = objectReader.f14403f;
        this.f14404g = objectReader.f14404g;
        this.f14405h = objectReader.f14405h;
        this.f14406i = objectReader.f14406i;
        this.f14407j = objectReader.f14407j;
        this.f14401d = deserializationConfig.useRootWrapping();
        this.f14408k = objectReader.f14408k;
        this.f14402e = objectReader.f14402e;
    }

    public <T> T readValue(byte[] bArr, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(bArr);
    }

    public <T> T readValue(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f14408k != null) {
            return (T) l(bArr, i4, i10);
        }
        return (T) c(j(createParser(bArr, i4, i10), false));
    }

    public <T> i<T> readValues(byte[] bArr, int i4, int i10) throws IOException {
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        if (eVar != null) {
            return n(eVar.d(bArr, i4, i10), false);
        }
        return e(j(createParser(bArr, i4, i10), true));
    }

    public <T> T readValue(byte[] bArr, int i4, int i10, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(bArr, i4, i10);
    }

    public final <T> i<T> readValues(byte[] bArr) throws IOException {
        a("src", bArr);
        return readValues(bArr, 0, bArr.length);
    }

    public <T> T readValue(File file) throws IOException {
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        if (eVar != null) {
            return (T) k(eVar.b(s(file)), true);
        }
        return (T) c(j(createParser(file), false));
    }

    public <T> i<T> readValues(File file) throws IOException {
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        if (eVar != null) {
            return n(eVar.b(s(file)), false);
        }
        return e(j(createParser(file), true));
    }

    public <T> T readValue(File file, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(file);
    }

    public <T> T readValue(URL url) throws IOException {
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        if (eVar != null) {
            return (T) k(eVar.b(t(url)), true);
        }
        return (T) c(j(createParser(url), false));
    }

    public <T> i<T> readValues(URL url) throws IOException {
        com.fasterxml.jackson.databind.deser.e eVar = this.f14408k;
        if (eVar != null) {
            return n(eVar.b(t(url)), true);
        }
        return e(j(createParser(url), true));
    }

    public <T> T readValue(URL url, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(url);
    }

    protected ObjectReader(ObjectReader objectReader, JsonFactory jsonFactory) {
        this.f14398a = objectReader.f14398a.with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, jsonFactory.requiresPropertyOrdering());
        this.f14399b = objectReader.f14399b;
        this.f14409l = objectReader.f14409l;
        this.f14400c = jsonFactory;
        this.f14403f = objectReader.f14403f;
        this.f14404g = objectReader.f14404g;
        this.f14405h = objectReader.f14405h;
        this.f14406i = objectReader.f14406i;
        this.f14407j = objectReader.f14407j;
        this.f14401d = objectReader.f14401d;
        this.f14408k = objectReader.f14408k;
        this.f14402e = objectReader.f14402e;
    }

    public <T> T readValue(e eVar) throws IOException {
        a("content", eVar);
        if (this.f14408k != null) {
            A(eVar);
        }
        return (T) c(j(treeAsTokens(eVar), false));
    }

    public <T> i<T> readValues(DataInput dataInput) throws IOException {
        if (this.f14408k != null) {
            A(dataInput);
        }
        return e(j(createParser(dataInput), true));
    }

    public <T> T readValue(e eVar, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(eVar);
    }

    public <T> T readValue(DataInput dataInput) throws IOException {
        if (this.f14408k != null) {
            A(dataInput);
        }
        return (T) c(j(createParser(dataInput), false));
    }

    public <T> T readValue(DataInput dataInput, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(dataInput);
    }

    protected ObjectReader(ObjectReader objectReader, TokenFilter tokenFilter) {
        this.f14398a = objectReader.f14398a;
        this.f14399b = objectReader.f14399b;
        this.f14409l = objectReader.f14409l;
        this.f14400c = objectReader.f14400c;
        this.f14403f = objectReader.f14403f;
        this.f14404g = objectReader.f14404g;
        this.f14405h = objectReader.f14405h;
        this.f14406i = objectReader.f14406i;
        this.f14407j = objectReader.f14407j;
        this.f14401d = objectReader.f14401d;
        this.f14408k = objectReader.f14408k;
        this.f14402e = tokenFilter;
    }
}
