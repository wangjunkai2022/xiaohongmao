package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.ContentReference;
import com.fasterxml.jackson.core.io.InputDecorator;
import com.fasterxml.jackson.core.io.OutputDecorator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.CharArrayReader;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.net.URL;

/* loaded from: classes.dex */
public class JsonFactory extends TokenStreamFactory implements n, Serializable {
    public static final char DEFAULT_QUOTE_CHAR = '\"';
    public static final String FORMAT_NAME_JSON = "JSON";

    /* renamed from: n  reason: collision with root package name */
    private static final long f13676n = 2;

    /* renamed from: b  reason: collision with root package name */
    protected final transient com.fasterxml.jackson.core.sym.b f13680b;

    /* renamed from: c  reason: collision with root package name */
    protected final transient com.fasterxml.jackson.core.sym.a f13681c;

    /* renamed from: d  reason: collision with root package name */
    protected int f13682d;

    /* renamed from: e  reason: collision with root package name */
    protected int f13683e;

    /* renamed from: f  reason: collision with root package name */
    protected int f13684f;

    /* renamed from: g  reason: collision with root package name */
    protected h f13685g;

    /* renamed from: h  reason: collision with root package name */
    protected CharacterEscapes f13686h;

    /* renamed from: i  reason: collision with root package name */
    protected InputDecorator f13687i;

    /* renamed from: j  reason: collision with root package name */
    protected OutputDecorator f13688j;

    /* renamed from: k  reason: collision with root package name */
    protected j f13689k;

    /* renamed from: l  reason: collision with root package name */
    protected int f13690l;

    /* renamed from: m  reason: collision with root package name */
    protected final char f13691m;

    /* renamed from: o  reason: collision with root package name */
    protected static final int f13677o = Feature.collectDefaults();

    /* renamed from: p  reason: collision with root package name */
    protected static final int f13678p = JsonParser.Feature.collectDefaults();

    /* renamed from: q  reason: collision with root package name */
    protected static final int f13679q = JsonGenerator.Feature.collectDefaults();
    public static final j DEFAULT_ROOT_VALUE_SEPARATOR = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;

    /* loaded from: classes.dex */
    public enum Feature implements com.fasterxml.jackson.core.util.e {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true),
        FAIL_ON_SYMBOL_HASH_OVERFLOW(true),
        USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING(true);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f13693a;

        Feature(boolean z9) {
            this.f13693a = z9;
        }

        public static int collectDefaults() {
            Feature[] values;
            int i4 = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    i4 |= feature.getMask();
                }
            }
            return i4;
        }

        @Override // com.fasterxml.jackson.core.util.e
        public boolean enabledByDefault() {
            return this.f13693a;
        }

        @Override // com.fasterxml.jackson.core.util.e
        public boolean enabledIn(int i4) {
            return (i4 & getMask()) != 0;
        }

        @Override // com.fasterxml.jackson.core.util.e
        public int getMask() {
            return 1 << ordinal();
        }
    }

    public JsonFactory() {
        this((h) null);
    }

    public static k<?, ?> builder() {
        return new d();
    }

    private final boolean x() {
        return getFormatName() == FORMAT_NAME_JSON;
    }

    private final void y(String str) {
        if (!x()) {
            throw new UnsupportedOperationException(String.format(str, getFormatName()));
        }
    }

    protected Object A() {
        return new JsonFactory(this, this.f13685g);
    }

    public com.fasterxml.jackson.core.util.a _getBufferRecycler() {
        if (Feature.USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING.enabledIn(this.f13682d)) {
            return com.fasterxml.jackson.core.util.b.b();
        }
        return new com.fasterxml.jackson.core.util.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(Class<?> cls) {
        if (getClass() == cls) {
            return;
        }
        throw new IllegalStateException("Failed copy(): " + getClass().getName() + " (version: " + version() + ") does not override copy(); it has to");
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public boolean canHandleBinaryNatively() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public boolean canParseAsync() {
        return x();
    }

    public boolean canUseCharArrays() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public boolean canUseSchema(c cVar) {
        String formatName;
        return (cVar == null || (formatName = getFormatName()) == null || !formatName.equals(cVar.a())) ? false : true;
    }

    @Deprecated
    public final JsonFactory configure(Feature feature, boolean z9) {
        return z9 ? enable(feature) : disable(feature);
    }

    public JsonFactory copy() {
        c(JsonFactory.class);
        return new JsonFactory(this, (h) null);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonGenerator createGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        com.fasterxml.jackson.core.io.d h4 = h(d(outputStream), false);
        h4.y(jsonEncoding);
        if (jsonEncoding == JsonEncoding.UTF8) {
            return q(u(outputStream, h4), h4);
        }
        return j(w(r(outputStream, jsonEncoding, h4), h4), h4);
    }

    @Deprecated
    public JsonGenerator createJsonGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        return createGenerator(outputStream, jsonEncoding);
    }

    @Deprecated
    public JsonParser createJsonParser(File file) throws IOException, JsonParseException {
        return createParser(file);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createNonBlockingByteArrayParser() throws IOException {
        y("Non-blocking source not (yet?) supported for this format (%s)");
        return new com.fasterxml.jackson.core.json.async.a(k(null), this.f13683e, this.f13681c.G(this.f13682d));
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(File file) throws IOException, JsonParseException {
        com.fasterxml.jackson.core.io.d h4 = h(d(file), true);
        return m(t(h.b.a(new FileInputStream(file), file), h4), h4);
    }

    protected ContentReference d(Object obj) {
        return ContentReference.construct(!canHandleBinaryNatively(), obj);
    }

    @Deprecated
    public JsonFactory disable(Feature feature) {
        this.f13682d = (~feature.getMask()) & this.f13682d;
        return this;
    }

    protected ContentReference e(Object obj, int i4, int i10) {
        return ContentReference.construct(!canHandleBinaryNatively(), obj, i4, i10);
    }

    @Deprecated
    public JsonFactory enable(Feature feature) {
        this.f13682d = feature.getMask() | this.f13682d;
        return this;
    }

    public CharacterEscapes getCharacterEscapes() {
        return this.f13686h;
    }

    public h getCodec() {
        return this.f13685g;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public int getFormatGeneratorFeatures() {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public String getFormatName() {
        if (getClass() == JsonFactory.class) {
            return FORMAT_NAME_JSON;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public int getFormatParserFeatures() {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public Class<? extends b> getFormatReadFeatureType() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public Class<? extends b> getFormatWriteFeatureType() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public final int getGeneratorFeatures() {
        return this.f13684f;
    }

    public InputDecorator getInputDecorator() {
        return this.f13687i;
    }

    public OutputDecorator getOutputDecorator() {
        return this.f13688j;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public final int getParserFeatures() {
        return this.f13683e;
    }

    public String getRootValueSeparator() {
        j jVar = this.f13689k;
        if (jVar == null) {
            return null;
        }
        return jVar.getValue();
    }

    protected com.fasterxml.jackson.core.io.d h(ContentReference contentReference, boolean z9) {
        if (contentReference == null) {
            contentReference = ContentReference.unknown();
        }
        return new com.fasterxml.jackson.core.io.d(_getBufferRecycler(), contentReference, z9);
    }

    public MatchStrength hasFormat(com.fasterxml.jackson.core.format.c cVar) throws IOException {
        if (getClass() == JsonFactory.class) {
            return z(cVar);
        }
        return null;
    }

    @Deprecated
    protected com.fasterxml.jackson.core.io.d i(Object obj, boolean z9) {
        return new com.fasterxml.jackson.core.io.d(_getBufferRecycler(), d(obj), z9);
    }

    public final boolean isEnabled(Feature feature) {
        return (feature.getMask() & this.f13682d) != 0;
    }

    protected JsonGenerator j(Writer writer, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        com.fasterxml.jackson.core.json.k kVar = new com.fasterxml.jackson.core.json.k(dVar, this.f13684f, this.f13685g, writer, this.f13691m);
        int i4 = this.f13690l;
        if (i4 > 0) {
            kVar.y0(i4);
        }
        CharacterEscapes characterEscapes = this.f13686h;
        if (characterEscapes != null) {
            kVar.u0(characterEscapes);
        }
        j jVar = this.f13689k;
        if (jVar != DEFAULT_ROOT_VALUE_SEPARATOR) {
            kVar.A0(jVar);
        }
        return kVar;
    }

    protected com.fasterxml.jackson.core.io.d k(Object obj) {
        return new com.fasterxml.jackson.core.io.d(_getBufferRecycler(), d(obj), false);
    }

    protected JsonParser l(DataInput dataInput, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        y("InputData source not (yet?) supported for this format (%s)");
        int l10 = com.fasterxml.jackson.core.json.a.l(dataInput);
        return new com.fasterxml.jackson.core.json.h(dVar, this.f13683e, dataInput, this.f13685g, this.f13681c.G(this.f13682d), l10);
    }

    protected JsonParser m(InputStream inputStream, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        return new com.fasterxml.jackson.core.json.a(dVar, inputStream).c(this.f13683e, this.f13685g, this.f13681c, this.f13680b, this.f13682d);
    }

    protected JsonParser n(Reader reader, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        return new com.fasterxml.jackson.core.json.g(dVar, this.f13683e, reader, this.f13685g, this.f13680b.p(this.f13682d));
    }

    protected JsonParser o(byte[] bArr, int i4, int i10, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        return new com.fasterxml.jackson.core.json.a(dVar, bArr, i4, i10).c(this.f13683e, this.f13685g, this.f13681c, this.f13680b, this.f13682d);
    }

    protected JsonParser p(char[] cArr, int i4, int i10, com.fasterxml.jackson.core.io.d dVar, boolean z9) throws IOException {
        return new com.fasterxml.jackson.core.json.g(dVar, this.f13683e, null, this.f13685g, this.f13680b.p(this.f13682d), cArr, i4, i4 + i10, z9);
    }

    protected JsonGenerator q(OutputStream outputStream, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        com.fasterxml.jackson.core.json.i iVar = new com.fasterxml.jackson.core.json.i(dVar, this.f13684f, this.f13685g, outputStream, this.f13691m);
        int i4 = this.f13690l;
        if (i4 > 0) {
            iVar.y0(i4);
        }
        CharacterEscapes characterEscapes = this.f13686h;
        if (characterEscapes != null) {
            iVar.u0(characterEscapes);
        }
        j jVar = this.f13689k;
        if (jVar != DEFAULT_ROOT_VALUE_SEPARATOR) {
            iVar.A0(jVar);
        }
        return iVar;
    }

    protected Writer r(OutputStream outputStream, JsonEncoding jsonEncoding, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        if (jsonEncoding == JsonEncoding.UTF8) {
            return new com.fasterxml.jackson.core.io.k(dVar, outputStream);
        }
        return new OutputStreamWriter(outputStream, jsonEncoding.getJavaName());
    }

    public k<?, ?> rebuild() {
        y("Factory implementation for format (%s) MUST override `rebuild()` method");
        return new d(this);
    }

    public boolean requiresCustomCodec() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public boolean requiresPropertyOrdering() {
        return false;
    }

    protected final DataInput s(DataInput dataInput, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        DataInput decorate;
        InputDecorator inputDecorator = this.f13687i;
        return (inputDecorator == null || (decorate = inputDecorator.decorate(dVar, dataInput)) == null) ? dataInput : decorate;
    }

    public JsonFactory setCharacterEscapes(CharacterEscapes characterEscapes) {
        this.f13686h = characterEscapes;
        return this;
    }

    public JsonFactory setCodec(h hVar) {
        this.f13685g = hVar;
        return this;
    }

    @Deprecated
    public JsonFactory setInputDecorator(InputDecorator inputDecorator) {
        this.f13687i = inputDecorator;
        return this;
    }

    @Deprecated
    public JsonFactory setOutputDecorator(OutputDecorator outputDecorator) {
        this.f13688j = outputDecorator;
        return this;
    }

    public JsonFactory setRootValueSeparator(String str) {
        this.f13689k = str == null ? null : new SerializedString(str);
        return this;
    }

    protected final InputStream t(InputStream inputStream, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        InputStream decorate;
        InputDecorator inputDecorator = this.f13687i;
        return (inputDecorator == null || (decorate = inputDecorator.decorate(dVar, inputStream)) == null) ? inputStream : decorate;
    }

    protected final OutputStream u(OutputStream outputStream, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        OutputStream decorate;
        OutputDecorator outputDecorator = this.f13688j;
        return (outputDecorator == null || (decorate = outputDecorator.decorate(dVar, outputStream)) == null) ? outputStream : decorate;
    }

    protected final Reader v(Reader reader, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        Reader decorate;
        InputDecorator inputDecorator = this.f13687i;
        return (inputDecorator == null || (decorate = inputDecorator.decorate(dVar, reader)) == null) ? reader : decorate;
    }

    @Override // com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.core.json.f.f14081a;
    }

    protected final Writer w(Writer writer, com.fasterxml.jackson.core.io.d dVar) throws IOException {
        Writer decorate;
        OutputDecorator outputDecorator = this.f13688j;
        return (outputDecorator == null || (decorate = outputDecorator.decorate(dVar, writer)) == null) ? writer : decorate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MatchStrength z(com.fasterxml.jackson.core.format.c cVar) throws IOException {
        return com.fasterxml.jackson.core.json.a.h(cVar);
    }

    public JsonFactory(h hVar) {
        this.f13680b = com.fasterxml.jackson.core.sym.b.l();
        this.f13681c = com.fasterxml.jackson.core.sym.a.y();
        this.f13682d = f13677o;
        this.f13683e = f13678p;
        this.f13684f = f13679q;
        this.f13689k = DEFAULT_ROOT_VALUE_SEPARATOR;
        this.f13685g = hVar;
        this.f13691m = '\"';
    }

    public final JsonFactory configure(JsonParser.Feature feature, boolean z9) {
        return z9 ? enable(feature) : disable(feature);
    }

    @Deprecated
    public JsonGenerator createJsonGenerator(Writer writer) throws IOException {
        return createGenerator(writer);
    }

    @Deprecated
    public JsonParser createJsonParser(URL url) throws IOException, JsonParseException {
        return createParser(url);
    }

    public JsonFactory disable(JsonParser.Feature feature) {
        this.f13683e = (~feature.getMask()) & this.f13683e;
        return this;
    }

    public JsonFactory enable(JsonParser.Feature feature) {
        this.f13683e = feature.getMask() | this.f13683e;
        return this;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public final boolean isEnabled(JsonParser.Feature feature) {
        return (feature.getMask() & this.f13683e) != 0;
    }

    public final JsonFactory configure(JsonGenerator.Feature feature, boolean z9) {
        return z9 ? enable(feature) : disable(feature);
    }

    @Deprecated
    public JsonGenerator createJsonGenerator(OutputStream outputStream) throws IOException {
        return createGenerator(outputStream, JsonEncoding.UTF8);
    }

    @Deprecated
    public JsonParser createJsonParser(InputStream inputStream) throws IOException, JsonParseException {
        return createParser(inputStream);
    }

    public JsonFactory disable(JsonGenerator.Feature feature) {
        this.f13684f = (~feature.getMask()) & this.f13684f;
        return this;
    }

    public JsonFactory enable(JsonGenerator.Feature feature) {
        this.f13684f = feature.getMask() | this.f13684f;
        return this;
    }

    public final boolean isEnabled(StreamReadFeature streamReadFeature) {
        return (streamReadFeature.mappedFeature().getMask() & this.f13683e) != 0;
    }

    @Deprecated
    public JsonParser createJsonParser(Reader reader) throws IOException, JsonParseException {
        return createParser(reader);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(URL url) throws IOException, JsonParseException {
        com.fasterxml.jackson.core.io.d h4 = h(d(url), true);
        return m(t(b(url), h4), h4);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public final boolean isEnabled(JsonGenerator.Feature feature) {
        return (feature.getMask() & this.f13684f) != 0;
    }

    @Deprecated
    public JsonParser createJsonParser(byte[] bArr) throws IOException, JsonParseException {
        return createParser(bArr);
    }

    public final boolean isEnabled(StreamWriteFeature streamWriteFeature) {
        return (streamWriteFeature.mappedFeature().getMask() & this.f13684f) != 0;
    }

    @Deprecated
    public JsonParser createJsonParser(byte[] bArr, int i4, int i10) throws IOException, JsonParseException {
        return createParser(bArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonGenerator createGenerator(OutputStream outputStream) throws IOException {
        return createGenerator(outputStream, JsonEncoding.UTF8);
    }

    @Deprecated
    public JsonParser createJsonParser(String str) throws IOException, JsonParseException {
        return createParser(str);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(InputStream inputStream) throws IOException, JsonParseException {
        com.fasterxml.jackson.core.io.d h4 = h(d(inputStream), false);
        return m(t(inputStream, h4), h4);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonGenerator createGenerator(Writer writer) throws IOException {
        com.fasterxml.jackson.core.io.d h4 = h(d(writer), false);
        return j(w(writer, h4), h4);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(Reader reader) throws IOException, JsonParseException {
        com.fasterxml.jackson.core.io.d h4 = h(d(reader), false);
        return n(v(reader, h4), h4);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonGenerator createGenerator(File file, JsonEncoding jsonEncoding) throws IOException {
        OutputStream a10 = l.b.a(new FileOutputStream(file), file);
        com.fasterxml.jackson.core.io.d h4 = h(d(a10), true);
        h4.y(jsonEncoding);
        if (jsonEncoding == JsonEncoding.UTF8) {
            return q(u(a10, h4), h4);
        }
        return j(w(r(a10, jsonEncoding, h4), h4), h4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonFactory(JsonFactory jsonFactory, h hVar) {
        this.f13680b = com.fasterxml.jackson.core.sym.b.l();
        this.f13681c = com.fasterxml.jackson.core.sym.a.y();
        this.f13682d = f13677o;
        this.f13683e = f13678p;
        this.f13684f = f13679q;
        this.f13689k = DEFAULT_ROOT_VALUE_SEPARATOR;
        this.f13685g = hVar;
        this.f13682d = jsonFactory.f13682d;
        this.f13683e = jsonFactory.f13683e;
        this.f13684f = jsonFactory.f13684f;
        this.f13687i = jsonFactory.f13687i;
        this.f13688j = jsonFactory.f13688j;
        this.f13686h = jsonFactory.f13686h;
        this.f13689k = jsonFactory.f13689k;
        this.f13690l = jsonFactory.f13690l;
        this.f13691m = jsonFactory.f13691m;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(byte[] bArr) throws IOException, JsonParseException {
        InputStream decorate;
        com.fasterxml.jackson.core.io.d h4 = h(d(bArr), true);
        InputDecorator inputDecorator = this.f13687i;
        if (inputDecorator != null && (decorate = inputDecorator.decorate(h4, bArr, 0, bArr.length)) != null) {
            return m(decorate, h4);
        }
        return o(bArr, 0, bArr.length, h4);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(byte[] bArr, int i4, int i10) throws IOException, JsonParseException {
        InputStream decorate;
        com.fasterxml.jackson.core.io.d h4 = h(e(bArr, i4, i10), true);
        InputDecorator inputDecorator = this.f13687i;
        if (inputDecorator != null && (decorate = inputDecorator.decorate(h4, bArr, i4, i10)) != null) {
            return m(decorate, h4);
        }
        return o(bArr, i4, i10, h4);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonGenerator createGenerator(DataOutput dataOutput, JsonEncoding jsonEncoding) throws IOException {
        return createGenerator(a(dataOutput), jsonEncoding);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonGenerator createGenerator(DataOutput dataOutput) throws IOException {
        return createGenerator(a(dataOutput), JsonEncoding.UTF8);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(String str) throws IOException, JsonParseException {
        int length = str.length();
        if (this.f13687i == null && length <= 32768 && canUseCharArrays()) {
            com.fasterxml.jackson.core.io.d h4 = h(d(str), true);
            char[] k10 = h4.k(length);
            str.getChars(0, length, k10, 0);
            return p(k10, 0, length, h4, true);
        }
        return createParser(new StringReader(str));
    }

    public JsonFactory(d dVar) {
        this.f13680b = com.fasterxml.jackson.core.sym.b.l();
        this.f13681c = com.fasterxml.jackson.core.sym.a.y();
        this.f13682d = f13677o;
        this.f13683e = f13678p;
        this.f13684f = f13679q;
        this.f13689k = DEFAULT_ROOT_VALUE_SEPARATOR;
        this.f13685g = null;
        this.f13682d = dVar.f14148a;
        this.f13683e = dVar.f14149b;
        this.f13684f = dVar.f14150c;
        this.f13687i = dVar.f14151d;
        this.f13688j = dVar.f14152e;
        this.f13686h = dVar.f13815i;
        this.f13689k = dVar.f13816j;
        this.f13690l = dVar.f13817k;
        this.f13691m = dVar.f13818l;
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(char[] cArr) throws IOException {
        return createParser(cArr, 0, cArr.length);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(char[] cArr, int i4, int i10) throws IOException {
        if (this.f13687i != null) {
            return createParser(new CharArrayReader(cArr, i4, i10));
        }
        return p(cArr, i4, i10, h(e(cArr, i4, i10), true), false);
    }

    @Override // com.fasterxml.jackson.core.TokenStreamFactory
    public JsonParser createParser(DataInput dataInput) throws IOException {
        com.fasterxml.jackson.core.io.d h4 = h(d(dataInput), false);
        return l(s(dataInput, h4), h4);
    }

    protected JsonFactory(k<?, ?> kVar, boolean z9) {
        this.f13680b = com.fasterxml.jackson.core.sym.b.l();
        this.f13681c = com.fasterxml.jackson.core.sym.a.y();
        this.f13682d = f13677o;
        this.f13683e = f13678p;
        this.f13684f = f13679q;
        this.f13689k = DEFAULT_ROOT_VALUE_SEPARATOR;
        this.f13685g = null;
        this.f13682d = kVar.f14148a;
        this.f13683e = kVar.f14149b;
        this.f13684f = kVar.f14150c;
        this.f13687i = kVar.f14151d;
        this.f13688j = kVar.f14152e;
        this.f13686h = null;
        this.f13689k = null;
        this.f13690l = 0;
        this.f13691m = '\"';
    }
}
