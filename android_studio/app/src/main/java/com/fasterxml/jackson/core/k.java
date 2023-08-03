package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.InputDecorator;
import com.fasterxml.jackson.core.io.OutputDecorator;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.json.JsonWriteFeature;
import com.fasterxml.jackson.core.k;

/* compiled from: TSFBuilder.java */
/* loaded from: classes.dex */
public abstract class k<F extends JsonFactory, B extends k<F, B>> {

    /* renamed from: f  reason: collision with root package name */
    protected static final int f14145f = JsonFactory.Feature.collectDefaults();

    /* renamed from: g  reason: collision with root package name */
    protected static final int f14146g = JsonParser.Feature.collectDefaults();

    /* renamed from: h  reason: collision with root package name */
    protected static final int f14147h = JsonGenerator.Feature.collectDefaults();

    /* renamed from: a  reason: collision with root package name */
    protected int f14148a;

    /* renamed from: b  reason: collision with root package name */
    protected int f14149b;

    /* renamed from: c  reason: collision with root package name */
    protected int f14150c;

    /* renamed from: d  reason: collision with root package name */
    protected InputDecorator f14151d;

    /* renamed from: e  reason: collision with root package name */
    protected OutputDecorator f14152e;

    /* JADX INFO: Access modifiers changed from: protected */
    public k() {
        this.f14148a = f14145f;
        this.f14149b = f14146g;
        this.f14150c = f14147h;
        this.f14151d = null;
        this.f14152e = null;
    }

    private B a(Object obj) {
        throw new IllegalArgumentException("Feature " + obj.getClass().getName() + "#" + obj.toString() + " not supported for non-JSON backend");
    }

    public B A(JsonReadFeature jsonReadFeature) {
        return a(jsonReadFeature);
    }

    public B B(JsonReadFeature jsonReadFeature, JsonReadFeature... jsonReadFeatureArr) {
        return a(jsonReadFeature);
    }

    public B C(JsonWriteFeature jsonWriteFeature) {
        return a(jsonWriteFeature);
    }

    public B D(JsonWriteFeature jsonWriteFeature, JsonWriteFeature... jsonWriteFeatureArr) {
        return a(jsonWriteFeature);
    }

    public int E() {
        return this.f14148a;
    }

    public B F(InputDecorator inputDecorator) {
        this.f14151d = inputDecorator;
        return f();
    }

    public InputDecorator G() {
        return this.f14151d;
    }

    public B H(OutputDecorator outputDecorator) {
        this.f14152e = outputDecorator;
        return f();
    }

    public OutputDecorator I() {
        return this.f14152e;
    }

    public int J() {
        return this.f14149b;
    }

    public int K() {
        return this.f14150c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(JsonGenerator.Feature feature) {
        if (feature != null) {
            this.f14150c = (~feature.getMask()) & this.f14150c;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(JsonParser.Feature feature) {
        if (feature != null) {
            this.f14149b = (~feature.getMask()) & this.f14149b;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(JsonGenerator.Feature feature) {
        if (feature != null) {
            this.f14150c = feature.getMask() | this.f14150c;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(JsonParser.Feature feature) {
        if (feature != null) {
            this.f14149b = feature.getMask() | this.f14149b;
        }
    }

    protected final B f() {
        return this;
    }

    public abstract F g();

    public B h(JsonFactory.Feature feature, boolean z9) {
        return z9 ? v(feature) : m(feature);
    }

    public B i(StreamReadFeature streamReadFeature, boolean z9) {
        return z9 ? w(streamReadFeature) : n(streamReadFeature);
    }

    public B j(StreamWriteFeature streamWriteFeature, boolean z9) {
        return z9 ? y(streamWriteFeature) : p(streamWriteFeature);
    }

    public B k(JsonReadFeature jsonReadFeature, boolean z9) {
        return a(jsonReadFeature);
    }

    public B l(JsonWriteFeature jsonWriteFeature, boolean z9) {
        return a(jsonWriteFeature);
    }

    public B m(JsonFactory.Feature feature) {
        this.f14148a = (~feature.getMask()) & this.f14148a;
        return f();
    }

    public B n(StreamReadFeature streamReadFeature) {
        this.f14149b = (~streamReadFeature.mappedFeature().getMask()) & this.f14149b;
        return f();
    }

    public B o(StreamReadFeature streamReadFeature, StreamReadFeature... streamReadFeatureArr) {
        this.f14149b = (~streamReadFeature.mappedFeature().getMask()) & this.f14149b;
        for (StreamReadFeature streamReadFeature2 : streamReadFeatureArr) {
            this.f14149b = (~streamReadFeature2.mappedFeature().getMask()) & this.f14149b;
        }
        return f();
    }

    public B p(StreamWriteFeature streamWriteFeature) {
        this.f14150c = (~streamWriteFeature.mappedFeature().getMask()) & this.f14150c;
        return f();
    }

    public B q(StreamWriteFeature streamWriteFeature, StreamWriteFeature... streamWriteFeatureArr) {
        this.f14150c = (~streamWriteFeature.mappedFeature().getMask()) & this.f14150c;
        for (StreamWriteFeature streamWriteFeature2 : streamWriteFeatureArr) {
            this.f14150c = (~streamWriteFeature2.mappedFeature().getMask()) & this.f14150c;
        }
        return f();
    }

    public B r(JsonReadFeature jsonReadFeature) {
        return a(jsonReadFeature);
    }

    public B s(JsonReadFeature jsonReadFeature, JsonReadFeature... jsonReadFeatureArr) {
        return a(jsonReadFeature);
    }

    public B t(JsonWriteFeature jsonWriteFeature) {
        return a(jsonWriteFeature);
    }

    public B u(JsonWriteFeature jsonWriteFeature, JsonWriteFeature... jsonWriteFeatureArr) {
        return a(jsonWriteFeature);
    }

    public B v(JsonFactory.Feature feature) {
        this.f14148a = feature.getMask() | this.f14148a;
        return f();
    }

    public B w(StreamReadFeature streamReadFeature) {
        this.f14149b = streamReadFeature.mappedFeature().getMask() | this.f14149b;
        return f();
    }

    public B x(StreamReadFeature streamReadFeature, StreamReadFeature... streamReadFeatureArr) {
        this.f14149b = streamReadFeature.mappedFeature().getMask() | this.f14149b;
        for (StreamReadFeature streamReadFeature2 : streamReadFeatureArr) {
            this.f14149b = streamReadFeature2.mappedFeature().getMask() | this.f14149b;
        }
        return f();
    }

    public B y(StreamWriteFeature streamWriteFeature) {
        this.f14150c = streamWriteFeature.mappedFeature().getMask() | this.f14150c;
        return f();
    }

    public B z(StreamWriteFeature streamWriteFeature, StreamWriteFeature... streamWriteFeatureArr) {
        this.f14150c = streamWriteFeature.mappedFeature().getMask() | this.f14150c;
        for (StreamWriteFeature streamWriteFeature2 : streamWriteFeatureArr) {
            this.f14150c = streamWriteFeature2.mappedFeature().getMask() | this.f14150c;
        }
        return f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k(JsonFactory jsonFactory) {
        this(jsonFactory.f13682d, jsonFactory.f13683e, jsonFactory.f13684f);
    }

    protected k(int i4, int i10, int i11) {
        this.f14148a = i4;
        this.f14149b = i10;
        this.f14150c = i11;
    }
}
