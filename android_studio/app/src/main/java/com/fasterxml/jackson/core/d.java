package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.json.JsonWriteFeature;

/* compiled from: JsonFactoryBuilder.java */
/* loaded from: classes.dex */
public class d extends k<JsonFactory, d> {

    /* renamed from: i  reason: collision with root package name */
    protected CharacterEscapes f13815i;

    /* renamed from: j  reason: collision with root package name */
    protected j f13816j;

    /* renamed from: k  reason: collision with root package name */
    protected int f13817k;

    /* renamed from: l  reason: collision with root package name */
    protected char f13818l;

    public d() {
        this.f13818l = '\"';
        this.f13816j = JsonFactory.DEFAULT_ROOT_VALUE_SEPARATOR;
        this.f13817k = 0;
    }

    public d L(CharacterEscapes characterEscapes) {
        this.f13815i = characterEscapes;
        return this;
    }

    public CharacterEscapes M() {
        return this.f13815i;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: N */
    public d k(JsonReadFeature jsonReadFeature, boolean z9) {
        return z9 ? A(jsonReadFeature) : r(jsonReadFeature);
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: O */
    public d l(JsonWriteFeature jsonWriteFeature, boolean z9) {
        return z9 ? C(jsonWriteFeature) : t(jsonWriteFeature);
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: P */
    public d r(JsonReadFeature jsonReadFeature) {
        c(jsonReadFeature.mappedFeature());
        return this;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: Q */
    public d s(JsonReadFeature jsonReadFeature, JsonReadFeature... jsonReadFeatureArr) {
        c(jsonReadFeature.mappedFeature());
        for (JsonReadFeature jsonReadFeature2 : jsonReadFeatureArr) {
            e(jsonReadFeature2.mappedFeature());
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: R */
    public d t(JsonWriteFeature jsonWriteFeature) {
        b(jsonWriteFeature.mappedFeature());
        return this;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: S */
    public d u(JsonWriteFeature jsonWriteFeature, JsonWriteFeature... jsonWriteFeatureArr) {
        b(jsonWriteFeature.mappedFeature());
        for (JsonWriteFeature jsonWriteFeature2 : jsonWriteFeatureArr) {
            b(jsonWriteFeature2.mappedFeature());
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: T */
    public d A(JsonReadFeature jsonReadFeature) {
        e(jsonReadFeature.mappedFeature());
        return this;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: U */
    public d B(JsonReadFeature jsonReadFeature, JsonReadFeature... jsonReadFeatureArr) {
        e(jsonReadFeature.mappedFeature());
        A(jsonReadFeature);
        for (JsonReadFeature jsonReadFeature2 : jsonReadFeatureArr) {
            e(jsonReadFeature2.mappedFeature());
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: V */
    public d C(JsonWriteFeature jsonWriteFeature) {
        JsonGenerator.Feature mappedFeature = jsonWriteFeature.mappedFeature();
        if (mappedFeature != null) {
            d(mappedFeature);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.k
    /* renamed from: W */
    public d D(JsonWriteFeature jsonWriteFeature, JsonWriteFeature... jsonWriteFeatureArr) {
        d(jsonWriteFeature.mappedFeature());
        for (JsonWriteFeature jsonWriteFeature2 : jsonWriteFeatureArr) {
            d(jsonWriteFeature2.mappedFeature());
        }
        return this;
    }

    public int X() {
        return this.f13817k;
    }

    public d Y(int i4) {
        this.f13817k = i4 <= 0 ? 0 : Math.max(127, i4);
        return this;
    }

    public char Z() {
        return this.f13818l;
    }

    public d a0(char c10) {
        if (c10 <= 127) {
            this.f13818l = c10;
            return this;
        }
        throw new IllegalArgumentException("Can only use Unicode characters up to 0x7F as quote characters");
    }

    public d b0(j jVar) {
        this.f13816j = jVar;
        return this;
    }

    public d c0(String str) {
        this.f13816j = str == null ? null : new SerializedString(str);
        return this;
    }

    public j d0() {
        return this.f13816j;
    }

    @Override // com.fasterxml.jackson.core.k
    public JsonFactory g() {
        return new JsonFactory(this);
    }

    public d(JsonFactory jsonFactory) {
        super(jsonFactory);
        this.f13818l = '\"';
        this.f13815i = jsonFactory.getCharacterEscapes();
        this.f13816j = jsonFactory.f13689k;
        this.f13817k = jsonFactory.f13690l;
    }
}
