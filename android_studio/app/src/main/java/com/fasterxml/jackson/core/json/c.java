package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.StreamWriteCapability;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.l;
import java.io.IOException;

/* compiled from: JsonGeneratorImpl.java */
/* loaded from: classes.dex */
public abstract class c extends com.fasterxml.jackson.core.base.a {
    protected static final int[] B = com.fasterxml.jackson.core.io.b.e();
    protected static final com.fasterxml.jackson.core.util.f<StreamWriteCapability> C = JsonGenerator.f13696c;
    protected boolean A;

    /* renamed from: v  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.io.d f14057v;

    /* renamed from: w  reason: collision with root package name */
    protected int[] f14058w;

    /* renamed from: x  reason: collision with root package name */
    protected int f14059x;

    /* renamed from: y  reason: collision with root package name */
    protected CharacterEscapes f14060y;

    /* renamed from: z  reason: collision with root package name */
    protected com.fasterxml.jackson.core.j f14061z;

    public c(com.fasterxml.jackson.core.io.d dVar, int i4, com.fasterxml.jackson.core.h hVar) {
        super(i4, hVar);
        this.f14058w = B;
        this.f14061z = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
        this.f14057v = dVar;
        if (JsonGenerator.Feature.ESCAPE_NON_ASCII.enabledIn(i4)) {
            this.f14059x = 127;
        }
        this.A = !JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator A0(com.fasterxml.jackson.core.j jVar) {
        this.f14061z = jVar;
        return this;
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator J(JsonGenerator.Feature feature) {
        super.J(feature);
        if (feature == JsonGenerator.Feature.QUOTE_FIELD_NAMES) {
            this.A = true;
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator K(JsonGenerator.Feature feature) {
        super.K(feature);
        if (feature == JsonGenerator.Feature.QUOTE_FIELD_NAMES) {
            this.A = false;
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public CharacterEscapes L() {
        return this.f14060y;
    }

    @Override // com.fasterxml.jackson.core.base.a
    protected void Y1(int i4, int i10) {
        super.Y1(i4, i10);
        this.A = !JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int d0() {
        return this.f14059x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d2(String str) throws IOException {
        b(String.format("Can not %s, expecting field name (context: %s)", str, this.f13782h.r()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e2(String str, int i4) throws IOException {
        if (i4 == 0) {
            if (this.f13782h.k()) {
                this.f13698a.beforeArrayValues(this);
            } else if (this.f13782h.l()) {
                this.f13698a.beforeObjectEntries(this);
            }
        } else if (i4 == 1) {
            this.f13698a.writeArrayValueSeparator(this);
        } else if (i4 == 2) {
            this.f13698a.writeObjectFieldValueSeparator(this);
        } else if (i4 == 3) {
            this.f13698a.writeRootValueSeparator(this);
        } else if (i4 != 5) {
            h();
        } else {
            d2(str);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public com.fasterxml.jackson.core.util.f<StreamWriteCapability> p0() {
        return C;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator u0(CharacterEscapes characterEscapes) {
        this.f14060y = characterEscapes;
        if (characterEscapes == null) {
            this.f14058w = B;
        } else {
            this.f14058w = characterEscapes.getEscapeCodesForAscii();
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.core.n
    public Version version() {
        return l.h(getClass());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator y0(int i4) {
        if (i4 < 0) {
            i4 = 0;
        }
        this.f14059x = i4;
        return this;
    }
}
