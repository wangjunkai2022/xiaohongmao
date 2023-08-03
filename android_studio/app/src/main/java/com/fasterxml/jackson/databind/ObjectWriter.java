package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.StreamWriteFeature;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.exc.StreamWriteException;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.n;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class ObjectWriter implements n, Serializable {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14411g = 1;

    /* renamed from: h  reason: collision with root package name */
    protected static final com.fasterxml.jackson.core.i f14412h = new MinimalPrettyPrinter();

    /* renamed from: a  reason: collision with root package name */
    protected final SerializationConfig f14413a;

    /* renamed from: b  reason: collision with root package name */
    protected final DefaultSerializerProvider f14414b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.ser.k f14415c;

    /* renamed from: d  reason: collision with root package name */
    protected final JsonFactory f14416d;

    /* renamed from: e  reason: collision with root package name */
    protected final GeneratorSettings f14417e;

    /* renamed from: f  reason: collision with root package name */
    protected final Prefetch f14418f;

    /* loaded from: classes.dex */
    public static final class Prefetch implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f14420d = 1;
        public static final Prefetch empty = new Prefetch(null, null, null);

        /* renamed from: a  reason: collision with root package name */
        private final JavaType f14421a;

        /* renamed from: b  reason: collision with root package name */
        private final g<Object> f14422b;

        /* renamed from: c  reason: collision with root package name */
        private final com.fasterxml.jackson.databind.jsontype.f f14423c;

        private Prefetch(JavaType javaType, g<Object> gVar, com.fasterxml.jackson.databind.jsontype.f fVar) {
            this.f14421a = javaType;
            this.f14422b = gVar;
            this.f14423c = fVar;
        }

        public Prefetch forRootType(ObjectWriter objectWriter, JavaType javaType) {
            if (javaType == null) {
                return (this.f14421a == null || this.f14422b == null) ? this : new Prefetch(null, null, null);
            } else if (javaType.equals(this.f14421a)) {
                return this;
            } else {
                if (javaType.isJavaLangObject()) {
                    try {
                        return new Prefetch(null, null, objectWriter.i().findTypeSerializer(javaType));
                    } catch (JsonMappingException e4) {
                        throw new RuntimeJsonMappingException(e4);
                    }
                }
                if (objectWriter.isEnabled(SerializationFeature.EAGER_SERIALIZER_FETCH)) {
                    try {
                        g<Object> findTypedValueSerializer = objectWriter.i().findTypedValueSerializer(javaType, true, (BeanProperty) null);
                        if (findTypedValueSerializer instanceof com.fasterxml.jackson.databind.ser.impl.e) {
                            return new Prefetch(javaType, null, ((com.fasterxml.jackson.databind.ser.impl.e) findTypedValueSerializer).a());
                        }
                        return new Prefetch(javaType, findTypedValueSerializer, null);
                    } catch (DatabindException unused) {
                    }
                }
                return new Prefetch(javaType, null, this.f14423c);
            }
        }

        public final com.fasterxml.jackson.databind.jsontype.f getTypeSerializer() {
            return this.f14423c;
        }

        public final g<Object> getValueSerializer() {
            return this.f14422b;
        }

        public boolean hasSerializer() {
            return (this.f14422b == null && this.f14423c == null) ? false : true;
        }

        public void serialize(JsonGenerator jsonGenerator, Object obj, DefaultSerializerProvider defaultSerializerProvider) throws IOException {
            com.fasterxml.jackson.databind.jsontype.f fVar = this.f14423c;
            if (fVar != null) {
                defaultSerializerProvider.serializePolymorphic(jsonGenerator, obj, this.f14421a, this.f14422b, fVar);
                return;
            }
            g<Object> gVar = this.f14422b;
            if (gVar != null) {
                defaultSerializerProvider.serializeValue(jsonGenerator, obj, this.f14421a, gVar);
                return;
            }
            JavaType javaType = this.f14421a;
            if (javaType != null) {
                defaultSerializerProvider.serializeValue(jsonGenerator, obj, javaType);
            } else {
                defaultSerializerProvider.serializeValue(jsonGenerator, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.core.i iVar) {
        this.f14413a = serializationConfig;
        this.f14414b = objectMapper.f14383i;
        this.f14415c = objectMapper.f14384j;
        this.f14416d = objectMapper.f14375a;
        this.f14417e = iVar == null ? GeneratorSettings.empty : new GeneratorSettings(iVar, null, null, null);
        if (javaType == null) {
            this.f14418f = Prefetch.empty;
        } else if (javaType.hasRawClass(Object.class)) {
            this.f14418f = Prefetch.empty.forRootType(this, javaType);
        } else {
            this.f14418f = Prefetch.empty.forRootType(this, javaType.withStaticTyping());
        }
    }

    private final void k(JsonGenerator jsonGenerator, Object obj) throws IOException {
        Exception e4;
        Closeable closeable;
        Closeable closeable2 = (Closeable) obj;
        try {
            this.f14418f.serialize(jsonGenerator, obj, i());
            closeable = null;
            try {
                closeable2.close();
                jsonGenerator.close();
            } catch (Exception e10) {
                e4 = e10;
                com.fasterxml.jackson.databind.util.g.l(jsonGenerator, closeable, e4);
            }
        } catch (Exception e11) {
            e4 = e11;
            closeable = closeable2;
        }
    }

    protected final void a(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format("argument \"%s\" is null", str));
        }
    }

    public void acceptJsonFormatVisitor(JavaType javaType, com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar) throws JsonMappingException {
        a("type", javaType);
        a("visitor", fVar);
        i().acceptJsonFormatVisitor(javaType, fVar);
    }

    protected final JsonGenerator b(JsonGenerator jsonGenerator) {
        this.f14413a.initialize(jsonGenerator);
        this.f14417e.initialize(jsonGenerator);
        return jsonGenerator;
    }

    protected ObjectWriter c(GeneratorSettings generatorSettings, Prefetch prefetch) {
        return (this.f14417e == generatorSettings && this.f14418f == prefetch) ? this : new ObjectWriter(this, this.f14413a, generatorSettings, prefetch);
    }

    public boolean canSerialize(Class<?> cls) {
        a("type", cls);
        return i().hasSerializerFor(cls, null);
    }

    public JsonGenerator createGenerator(OutputStream outputStream) throws IOException {
        a("out", outputStream);
        return b(this.f14416d.createGenerator(outputStream, JsonEncoding.UTF8));
    }

    protected ObjectWriter d(ObjectWriter objectWriter, JsonFactory jsonFactory) {
        return new ObjectWriter(objectWriter, jsonFactory);
    }

    protected ObjectWriter e(ObjectWriter objectWriter, SerializationConfig serializationConfig) {
        return serializationConfig == this.f14413a ? this : new ObjectWriter(objectWriter, serializationConfig);
    }

    public ObjectWriter forType(JavaType javaType) {
        return c(this.f14417e, this.f14418f.forRootType(this, javaType));
    }

    public ContextAttributes getAttributes() {
        return this.f14413a.getAttributes();
    }

    public SerializationConfig getConfig() {
        return this.f14413a;
    }

    public JsonFactory getFactory() {
        return this.f14416d;
    }

    public TypeFactory getTypeFactory() {
        return this.f14413a.getTypeFactory();
    }

    protected k h(boolean z9, JsonGenerator jsonGenerator, boolean z10) throws IOException {
        return new k(i(), b(jsonGenerator), z10, this.f14418f).i(z9);
    }

    public boolean hasPrefetchedSerializer() {
        return this.f14418f.hasSerializer();
    }

    protected DefaultSerializerProvider i() {
        return this.f14414b.createInstance(this.f14413a, this.f14415c);
    }

    public boolean isEnabled(SerializationFeature serializationFeature) {
        return this.f14413a.isEnabled(serializationFeature);
    }

    protected void j(com.fasterxml.jackson.core.c cVar) {
        if (cVar == null || this.f14416d.canUseSchema(cVar)) {
            return;
        }
        throw new IllegalArgumentException("Cannot use FormatSchema of type " + cVar.getClass().getName() + " for format " + this.f14416d.getFormatName());
    }

    protected final void l(JsonGenerator jsonGenerator, Object obj) throws IOException {
        if (this.f14413a.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            k(jsonGenerator, obj);
            return;
        }
        try {
            this.f14418f.serialize(jsonGenerator, obj, i());
            jsonGenerator.close();
        } catch (Exception e4) {
            com.fasterxml.jackson.databind.util.g.m(jsonGenerator, e4);
        }
    }

    @Override // com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.e.f14557a;
    }

    public ObjectWriter with(SerializationFeature serializationFeature) {
        return e(this, this.f14413a.with(serializationFeature));
    }

    public ObjectWriter withAttribute(Object obj, Object obj2) {
        return e(this, this.f14413a.withAttribute(obj, obj2));
    }

    public ObjectWriter withAttributes(Map<?, ?> map) {
        return e(this, this.f14413a.withAttributes(map));
    }

    public ObjectWriter withDefaultPrettyPrinter() {
        return with(this.f14413a.getDefaultPrettyPrinter());
    }

    public ObjectWriter withFeatures(SerializationFeature... serializationFeatureArr) {
        return e(this, this.f14413a.withFeatures(serializationFeatureArr));
    }

    public ObjectWriter withRootName(String str) {
        return e(this, this.f14413a.withRootName(str));
    }

    public ObjectWriter withRootValueSeparator(String str) {
        return c(this.f14417e.withRootValueSeparator(str), this.f14418f);
    }

    @Deprecated
    public ObjectWriter withSchema(com.fasterxml.jackson.core.c cVar) {
        return with(cVar);
    }

    @Deprecated
    public ObjectWriter withType(JavaType javaType) {
        return forType(javaType);
    }

    public ObjectWriter withView(Class<?> cls) {
        return e(this, this.f14413a.withView(cls));
    }

    public ObjectWriter without(SerializationFeature serializationFeature) {
        return e(this, this.f14413a.without(serializationFeature));
    }

    public ObjectWriter withoutAttribute(Object obj) {
        return e(this, this.f14413a.withoutAttribute(obj));
    }

    public ObjectWriter withoutFeatures(SerializationFeature... serializationFeatureArr) {
        return e(this, this.f14413a.withoutFeatures(serializationFeatureArr));
    }

    public ObjectWriter withoutRootName() {
        return e(this, this.f14413a.withRootName(PropertyName.NO_NAME));
    }

    public void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException {
        a("g", jsonGenerator);
        b(jsonGenerator);
        if (this.f14413a.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            Closeable closeable = (Closeable) obj;
            try {
                this.f14418f.serialize(jsonGenerator, obj, i());
                if (this.f14413a.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
                    jsonGenerator.flush();
                }
                closeable.close();
                return;
            } catch (Exception e4) {
                com.fasterxml.jackson.databind.util.g.l(null, closeable, e4);
                return;
            }
        }
        this.f14418f.serialize(jsonGenerator, obj, i());
        if (this.f14413a.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }

    public byte[] writeValueAsBytes(Object obj) throws JsonProcessingException {
        try {
            com.fasterxml.jackson.core.util.c cVar = new com.fasterxml.jackson.core.util.c(this.f14416d._getBufferRecycler());
            try {
                l(createGenerator(cVar, JsonEncoding.UTF8), obj);
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
        com.fasterxml.jackson.core.io.i iVar = new com.fasterxml.jackson.core.io.i(this.f14416d._getBufferRecycler());
        try {
            l(createGenerator(iVar), obj);
            return iVar.a();
        } catch (JsonProcessingException e4) {
            throw e4;
        } catch (IOException e10) {
            throw JsonMappingException.fromUnexpectedIOE(e10);
        }
    }

    public k writeValues(File file) throws IOException {
        return h(false, createGenerator(file, JsonEncoding.UTF8), true);
    }

    public k writeValuesAsArray(File file) throws IOException {
        return h(true, createGenerator(file, JsonEncoding.UTF8), true);
    }

    /* loaded from: classes.dex */
    public static final class GeneratorSettings implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private static final long f14419a = 1;
        public static final GeneratorSettings empty = new GeneratorSettings(null, null, null, null);
        public final CharacterEscapes characterEscapes;
        public final com.fasterxml.jackson.core.i prettyPrinter;
        public final com.fasterxml.jackson.core.j rootValueSeparator;
        public final com.fasterxml.jackson.core.c schema;

        public GeneratorSettings(com.fasterxml.jackson.core.i iVar, com.fasterxml.jackson.core.c cVar, CharacterEscapes characterEscapes, com.fasterxml.jackson.core.j jVar) {
            this.prettyPrinter = iVar;
            this.schema = cVar;
            this.characterEscapes = characterEscapes;
            this.rootValueSeparator = jVar;
        }

        private final String a() {
            com.fasterxml.jackson.core.j jVar = this.rootValueSeparator;
            if (jVar == null) {
                return null;
            }
            return jVar.getValue();
        }

        public void initialize(JsonGenerator jsonGenerator) {
            com.fasterxml.jackson.core.i iVar = this.prettyPrinter;
            if (iVar != null) {
                if (iVar == ObjectWriter.f14412h) {
                    jsonGenerator.z0(null);
                } else {
                    if (iVar instanceof com.fasterxml.jackson.core.util.d) {
                        iVar = (com.fasterxml.jackson.core.i) ((com.fasterxml.jackson.core.util.d) iVar).createInstance();
                    }
                    jsonGenerator.z0(iVar);
                }
            }
            CharacterEscapes characterEscapes = this.characterEscapes;
            if (characterEscapes != null) {
                jsonGenerator.u0(characterEscapes);
            }
            com.fasterxml.jackson.core.c cVar = this.schema;
            if (cVar != null) {
                jsonGenerator.B0(cVar);
            }
            com.fasterxml.jackson.core.j jVar = this.rootValueSeparator;
            if (jVar != null) {
                jsonGenerator.A0(jVar);
            }
        }

        public GeneratorSettings with(com.fasterxml.jackson.core.i iVar) {
            if (iVar == null) {
                iVar = ObjectWriter.f14412h;
            }
            return iVar == this.prettyPrinter ? this : new GeneratorSettings(iVar, this.schema, this.characterEscapes, this.rootValueSeparator);
        }

        public GeneratorSettings withRootValueSeparator(String str) {
            return str == null ? this.rootValueSeparator == null ? this : new GeneratorSettings(this.prettyPrinter, this.schema, this.characterEscapes, null) : str.equals(a()) ? this : new GeneratorSettings(this.prettyPrinter, this.schema, this.characterEscapes, new SerializedString(str));
        }

        public GeneratorSettings with(com.fasterxml.jackson.core.c cVar) {
            return this.schema == cVar ? this : new GeneratorSettings(this.prettyPrinter, cVar, this.characterEscapes, this.rootValueSeparator);
        }

        public GeneratorSettings with(CharacterEscapes characterEscapes) {
            return this.characterEscapes == characterEscapes ? this : new GeneratorSettings(this.prettyPrinter, this.schema, characterEscapes, this.rootValueSeparator);
        }

        public GeneratorSettings withRootValueSeparator(com.fasterxml.jackson.core.j jVar) {
            return jVar == null ? this.rootValueSeparator == null ? this : new GeneratorSettings(this.prettyPrinter, this.schema, this.characterEscapes, null) : jVar.equals(this.rootValueSeparator) ? this : new GeneratorSettings(this.prettyPrinter, this.schema, this.characterEscapes, jVar);
        }
    }

    public ObjectWriter forType(Class<?> cls) {
        return forType(this.f14413a.constructType(cls));
    }

    public boolean isEnabled(MapperFeature mapperFeature) {
        return this.f14413a.isEnabled(mapperFeature);
    }

    public ObjectWriter with(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        return e(this, this.f14413a.with(serializationFeature, serializationFeatureArr));
    }

    public ObjectWriter withFeatures(JsonGenerator.Feature... featureArr) {
        return e(this, this.f14413a.withFeatures(featureArr));
    }

    public ObjectWriter withRootName(PropertyName propertyName) {
        return e(this, this.f14413a.withRootName(propertyName));
    }

    public ObjectWriter withRootValueSeparator(com.fasterxml.jackson.core.j jVar) {
        return c(this.f14417e.withRootValueSeparator(jVar), this.f14418f);
    }

    @Deprecated
    public ObjectWriter withType(Class<?> cls) {
        return forType(cls);
    }

    public ObjectWriter without(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        return e(this, this.f14413a.without(serializationFeature, serializationFeatureArr));
    }

    public ObjectWriter withoutFeatures(JsonGenerator.Feature... featureArr) {
        return e(this, this.f14413a.withoutFeatures(featureArr));
    }

    public k writeValues(JsonGenerator jsonGenerator) throws IOException {
        a("g", jsonGenerator);
        return h(false, b(jsonGenerator), false);
    }

    public k writeValuesAsArray(JsonGenerator jsonGenerator) throws IOException {
        a("gen", jsonGenerator);
        return h(true, jsonGenerator, false);
    }

    public boolean canSerialize(Class<?> cls, AtomicReference<Throwable> atomicReference) {
        a("type", cls);
        return i().hasSerializerFor(cls, atomicReference);
    }

    public JsonGenerator createGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        a("out", outputStream);
        return b(this.f14416d.createGenerator(outputStream, jsonEncoding));
    }

    public ObjectWriter forType(com.fasterxml.jackson.core.type.b<?> bVar) {
        return forType(this.f14413a.getTypeFactory().constructType(bVar.b()));
    }

    @Deprecated
    public boolean isEnabled(JsonParser.Feature feature) {
        return this.f14416d.isEnabled(feature);
    }

    public ObjectWriter with(JsonGenerator.Feature feature) {
        return e(this, this.f14413a.with(feature));
    }

    public ObjectWriter withFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        return e(this, this.f14413a.withFeatures(bVarArr));
    }

    @Deprecated
    public ObjectWriter withType(com.fasterxml.jackson.core.type.b<?> bVar) {
        return forType(bVar);
    }

    public ObjectWriter without(JsonGenerator.Feature feature) {
        return e(this, this.f14413a.without(feature));
    }

    public ObjectWriter withoutFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        return e(this, this.f14413a.withoutFeatures(bVarArr));
    }

    public void acceptJsonFormatVisitor(Class<?> cls, com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar) throws JsonMappingException {
        a("type", cls);
        a("visitor", fVar);
        acceptJsonFormatVisitor(this.f14413a.constructType(cls), fVar);
    }

    public boolean isEnabled(JsonGenerator.Feature feature) {
        return this.f14416d.isEnabled(feature);
    }

    public ObjectWriter with(StreamWriteFeature streamWriteFeature) {
        return e(this, this.f14413a.with(streamWriteFeature.mappedFeature()));
    }

    public ObjectWriter without(StreamWriteFeature streamWriteFeature) {
        return e(this, this.f14413a.without(streamWriteFeature.mappedFeature()));
    }

    public k writeValues(Writer writer) throws IOException {
        return h(false, createGenerator(writer), true);
    }

    public k writeValuesAsArray(Writer writer) throws IOException {
        return h(true, createGenerator(writer), true);
    }

    public JsonGenerator createGenerator(Writer writer) throws IOException {
        a("w", writer);
        return b(this.f14416d.createGenerator(writer));
    }

    public boolean isEnabled(StreamWriteFeature streamWriteFeature) {
        return this.f14416d.isEnabled(streamWriteFeature);
    }

    public ObjectWriter with(com.fasterxml.jackson.core.b bVar) {
        return e(this, this.f14413a.with(bVar));
    }

    public ObjectWriter without(com.fasterxml.jackson.core.b bVar) {
        return e(this, this.f14413a.without(bVar));
    }

    public k writeValues(OutputStream outputStream) throws IOException {
        return h(false, createGenerator(outputStream, JsonEncoding.UTF8), true);
    }

    public k writeValuesAsArray(OutputStream outputStream) throws IOException {
        return h(true, createGenerator(outputStream, JsonEncoding.UTF8), true);
    }

    public ObjectWriter with(DateFormat dateFormat) {
        return e(this, this.f14413a.with(dateFormat));
    }

    public k writeValues(DataOutput dataOutput) throws IOException {
        return h(false, createGenerator(dataOutput), true);
    }

    public k writeValuesAsArray(DataOutput dataOutput) throws IOException {
        return h(true, createGenerator(dataOutput), true);
    }

    public JsonGenerator createGenerator(File file, JsonEncoding jsonEncoding) throws IOException {
        a("outputFile", file);
        return b(this.f14416d.createGenerator(file, jsonEncoding));
    }

    public ObjectWriter with(com.fasterxml.jackson.databind.ser.f fVar) {
        return fVar == this.f14413a.getFilterProvider() ? this : e(this, this.f14413a.withFilters(fVar));
    }

    public JsonGenerator createGenerator(DataOutput dataOutput) throws IOException {
        a("out", dataOutput);
        return b(this.f14416d.createGenerator(dataOutput));
    }

    public ObjectWriter with(com.fasterxml.jackson.core.i iVar) {
        return c(this.f14417e.with(iVar), this.f14418f);
    }

    public ObjectWriter with(com.fasterxml.jackson.core.c cVar) {
        j(cVar);
        return c(this.f14417e.with(cVar), this.f14418f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig) {
        this.f14413a = serializationConfig;
        this.f14414b = objectMapper.f14383i;
        this.f14415c = objectMapper.f14384j;
        this.f14416d = objectMapper.f14375a;
        this.f14417e = GeneratorSettings.empty;
        this.f14418f = Prefetch.empty;
    }

    public ObjectWriter with(Locale locale) {
        return e(this, this.f14413a.with(locale));
    }

    public ObjectWriter with(TimeZone timeZone) {
        return e(this, this.f14413a.with(timeZone));
    }

    public void writeValue(File file, Object obj) throws IOException, StreamWriteException, DatabindException {
        l(createGenerator(file, JsonEncoding.UTF8), obj);
    }

    public ObjectWriter with(Base64Variant base64Variant) {
        return e(this, this.f14413a.with(base64Variant));
    }

    public void writeValue(OutputStream outputStream, Object obj) throws IOException, StreamWriteException, DatabindException {
        l(createGenerator(outputStream, JsonEncoding.UTF8), obj);
    }

    public ObjectWriter with(CharacterEscapes characterEscapes) {
        return c(this.f14417e.with(characterEscapes), this.f14418f);
    }

    public void writeValue(Writer writer, Object obj) throws IOException, StreamWriteException, DatabindException {
        l(createGenerator(writer), obj);
    }

    public ObjectWriter with(JsonFactory jsonFactory) {
        return jsonFactory == this.f14416d ? this : d(this, jsonFactory);
    }

    public void writeValue(DataOutput dataOutput, Object obj) throws IOException, StreamWriteException, DatabindException {
        l(createGenerator(dataOutput), obj);
    }

    public ObjectWriter with(ContextAttributes contextAttributes) {
        return e(this, this.f14413a.with(contextAttributes));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig, com.fasterxml.jackson.core.c cVar) {
        this.f14413a = serializationConfig;
        this.f14414b = objectMapper.f14383i;
        this.f14415c = objectMapper.f14384j;
        this.f14416d = objectMapper.f14375a;
        this.f14417e = cVar == null ? GeneratorSettings.empty : new GeneratorSettings(null, cVar, null, null);
        this.f14418f = Prefetch.empty;
    }

    protected ObjectWriter(ObjectWriter objectWriter, SerializationConfig serializationConfig, GeneratorSettings generatorSettings, Prefetch prefetch) {
        this.f14413a = serializationConfig;
        this.f14414b = objectWriter.f14414b;
        this.f14415c = objectWriter.f14415c;
        this.f14416d = objectWriter.f14416d;
        this.f14417e = generatorSettings;
        this.f14418f = prefetch;
    }

    protected ObjectWriter(ObjectWriter objectWriter, SerializationConfig serializationConfig) {
        this.f14413a = serializationConfig;
        this.f14414b = objectWriter.f14414b;
        this.f14415c = objectWriter.f14415c;
        this.f14416d = objectWriter.f14416d;
        this.f14417e = objectWriter.f14417e;
        this.f14418f = objectWriter.f14418f;
    }

    protected ObjectWriter(ObjectWriter objectWriter, JsonFactory jsonFactory) {
        this.f14413a = objectWriter.f14413a.with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, jsonFactory.requiresPropertyOrdering());
        this.f14414b = objectWriter.f14414b;
        this.f14415c = objectWriter.f14415c;
        this.f14416d = jsonFactory;
        this.f14417e = objectWriter.f14417e;
        this.f14418f = objectWriter.f14418f;
    }
}
