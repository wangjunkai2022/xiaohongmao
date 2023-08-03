package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.f;
import com.fasterxml.jackson.core.h;
import com.fasterxml.jackson.core.i;
import com.fasterxml.jackson.core.j;
import com.fasterxml.jackson.core.json.e;
import com.fasterxml.jackson.core.m;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;

/* compiled from: GeneratorBase.java */
/* loaded from: classes.dex */
public abstract class a extends JsonGenerator {

    /* renamed from: j  reason: collision with root package name */
    public static final int f13767j = 55296;

    /* renamed from: k  reason: collision with root package name */
    public static final int f13768k = 56319;

    /* renamed from: l  reason: collision with root package name */
    public static final int f13769l = 56320;

    /* renamed from: m  reason: collision with root package name */
    public static final int f13770m = 57343;

    /* renamed from: n  reason: collision with root package name */
    protected static final int f13771n = (JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.getMask() | JsonGenerator.Feature.ESCAPE_NON_ASCII.getMask()) | JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.getMask();

    /* renamed from: o  reason: collision with root package name */
    protected static final String f13772o = "write a binary value";

    /* renamed from: p  reason: collision with root package name */
    protected static final String f13773p = "write a boolean value";

    /* renamed from: q  reason: collision with root package name */
    protected static final String f13774q = "write a null";

    /* renamed from: r  reason: collision with root package name */
    protected static final String f13775r = "write a number";

    /* renamed from: s  reason: collision with root package name */
    protected static final String f13776s = "write a raw (unencoded) value";

    /* renamed from: t  reason: collision with root package name */
    protected static final String f13777t = "write a string";

    /* renamed from: u  reason: collision with root package name */
    protected static final int f13778u = 9999;

    /* renamed from: e  reason: collision with root package name */
    protected h f13779e;

    /* renamed from: f  reason: collision with root package name */
    protected int f13780f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f13781g;

    /* renamed from: h  reason: collision with root package name */
    protected e f13782h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f13783i;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i4, h hVar) {
        this.f13780f = i4;
        this.f13779e = hVar;
        this.f13782h = e.z(JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i4) ? com.fasterxml.jackson.core.json.b.f(this) : null);
        this.f13781g = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator C0() {
        return n0() != null ? this : z0(Z1());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void C1(j jVar) throws IOException {
        c2("write raw value");
        x1(jVar);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void D1(String str) throws IOException {
        c2("write raw value");
        y1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void E1(String str, int i4, int i10) throws IOException {
        c2("write raw value");
        z1(str, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void F1(char[] cArr, int i4, int i10) throws IOException {
        c2("write raw value");
        A1(cArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int I0(Base64Variant base64Variant, InputStream inputStream, int i4) throws IOException {
        d();
        return 0;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator J(JsonGenerator.Feature feature) {
        int mask = feature.getMask();
        this.f13780f &= ~mask;
        if ((mask & f13771n) != 0) {
            if (feature == JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS) {
                this.f13781g = false;
            } else if (feature == JsonGenerator.Feature.ESCAPE_NON_ASCII) {
                y0(0);
            } else if (feature == JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION) {
                this.f13782h = this.f13782h.E(null);
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator K(JsonGenerator.Feature feature) {
        int mask = feature.getMask();
        this.f13780f |= mask;
        if ((mask & f13771n) != 0) {
            if (feature == JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS) {
                this.f13781g = true;
            } else if (feature == JsonGenerator.Feature.ESCAPE_NON_ASCII) {
                y0(127);
            } else if (feature == JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION && this.f13782h.A() == null) {
                this.f13782h = this.f13782h.E(com.fasterxml.jackson.core.json.b.f(this));
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void L1(Object obj) throws IOException {
        K1();
        if (obj != null) {
            w0(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public h M() {
        return this.f13779e;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void N1(j jVar) throws IOException {
        P1(jVar.getValue());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void S1(m mVar) throws IOException {
        if (mVar == null) {
            W0();
            return;
        }
        h hVar = this.f13779e;
        if (hVar != null) {
            hVar.writeValue(this, mVar);
            return;
        }
        throw new IllegalStateException("No ObjectCodec defined");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void U0(j jVar) throws IOException {
        V0(jVar.getValue());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object W() {
        return this.f13782h.c();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int X() {
        return this.f13780f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String X1(BigDecimal bigDecimal) throws IOException {
        if (JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN.enabledIn(this.f13780f)) {
            int scale = bigDecimal.scale();
            if (scale < -9999 || scale > 9999) {
                b(String.format("Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]", Integer.valueOf(scale), 9999, 9999));
            }
            return bigDecimal.toPlainString();
        }
        return bigDecimal.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Y1(int i4, int i10) {
        if ((f13771n & i10) == 0) {
            return;
        }
        this.f13781g = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i4);
        JsonGenerator.Feature feature = JsonGenerator.Feature.ESCAPE_NON_ASCII;
        if (feature.enabledIn(i10)) {
            if (feature.enabledIn(i4)) {
                y0(127);
            } else {
                y0(0);
            }
        }
        JsonGenerator.Feature feature2 = JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION;
        if (feature2.enabledIn(i10)) {
            if (feature2.enabledIn(i4)) {
                if (this.f13782h.A() == null) {
                    this.f13782h = this.f13782h.E(com.fasterxml.jackson.core.json.b.f(this));
                    return;
                }
                return;
            }
            this.f13782h = this.f13782h.E(null);
        }
    }

    protected i Z1() {
        return new DefaultPrettyPrinter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a2(int i4, int i10) throws IOException {
        if (i10 < 56320 || i10 > 57343) {
            b(String.format("Incomplete surrogate pair: first char 0x%04X, second 0x%04X", Integer.valueOf(i4), Integer.valueOf(i10)));
        }
        return ((i4 - f13767j) << 10) + 65536 + (i10 - 56320);
    }

    protected abstract void b2();

    protected abstract void c2(String str) throws IOException;

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13783i = true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public abstract void flush() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public f h0() {
        return this.f13782h;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean isClosed() {
        return this.f13783i;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void o1(Object obj) throws IOException {
        if (obj == null) {
            W0();
            return;
        }
        h hVar = this.f13779e;
        if (hVar != null) {
            hVar.writeValue(this, obj);
        } else {
            k(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final boolean q0(JsonGenerator.Feature feature) {
        return (feature.getMask() & this.f13780f) != 0;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator t0(int i4, int i10) {
        int i11 = this.f13780f;
        int i12 = (i4 & i10) | ((~i10) & i11);
        int i13 = i11 ^ i12;
        if (i13 != 0) {
            this.f13780f = i12;
            Y1(i12, i13);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator v0(h hVar) {
        this.f13779e = hVar;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.core.json.f.f14081a;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void w0(Object obj) {
        e eVar = this.f13782h;
        if (eVar != null) {
            eVar.p(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    @Deprecated
    public JsonGenerator x0(int i4) {
        int i10 = this.f13780f ^ i4;
        this.f13780f = i4;
        if (i10 != 0) {
            Y1(i4, i10);
        }
        return this;
    }

    protected a(int i4, h hVar, e eVar) {
        this.f13780f = i4;
        this.f13779e = hVar;
        this.f13782h = eVar;
        this.f13781g = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i4);
    }
}
