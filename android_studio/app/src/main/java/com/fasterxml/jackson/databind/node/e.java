package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.f;
import com.fasterxml.jackson.core.h;
import com.fasterxml.jackson.databind.node.c;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: TreeTraversingParser.java */
/* loaded from: classes.dex */
public class e extends com.fasterxml.jackson.core.base.c {

    /* renamed from: g2  reason: collision with root package name */
    protected h f15588g2;

    /* renamed from: p2  reason: collision with root package name */
    protected c f15589p2;

    /* renamed from: x2  reason: collision with root package name */
    protected boolean f15590x2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TreeTraversingParser.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15591a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f15591a = iArr;
            try {
                iArr[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15591a[JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15591a[JsonToken.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15591a[JsonToken.END_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15591a[JsonToken.FIELD_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15591a[JsonToken.VALUE_STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15591a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15591a[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15591a[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public e(com.fasterxml.jackson.databind.e eVar) {
        this(eVar, null);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object A0() {
        com.fasterxml.jackson.databind.e A2;
        if (this.f15590x2 || (A2 = A2()) == null) {
            return null;
        }
        if (A2.isPojo()) {
            return ((POJONode) A2).getPojo();
        }
        if (A2.isBinary()) {
            return ((BinaryNode) A2).binaryValue();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public void A1(String str) {
        c cVar = this.f15589p2;
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) {
            cVar = cVar.e();
        }
        if (cVar != null) {
            cVar.w(str);
        }
    }

    protected com.fasterxml.jackson.databind.e A2() {
        c cVar;
        if (this.f15590x2 || (cVar = this.f15589p2) == null) {
            return null;
        }
        return cVar.s();
    }

    protected com.fasterxml.jackson.databind.e B2() throws JacksonException {
        com.fasterxml.jackson.databind.e A2 = A2();
        if (A2 == null || !A2.isNumber()) {
            JsonToken asToken = A2 == null ? null : A2.asToken();
            throw k("Current token (" + asToken + ") not numeric, cannot use numeric value accessors");
        }
        return A2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public float C0() throws IOException {
        return (float) B2().doubleValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        byte[] p02 = p0(base64Variant);
        if (p02 != null) {
            outputStream.write(p02, 0, p02.length);
            return p02.length;
        }
        return 0;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int F0() throws IOException {
        NumericNode numericNode = (NumericNode) B2();
        if (!numericNode.canConvertToInt()) {
            t2();
        }
        return numericNode.intValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long H0() throws IOException {
        NumericNode numericNode = (NumericNode) B2();
        if (!numericNode.canConvertToLong()) {
            w2();
        }
        return numericNode.longValue();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType J0() throws IOException {
        com.fasterxml.jackson.databind.e B2 = B2();
        if (B2 == null) {
            return null;
        }
        return B2.numberType();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number K0() throws IOException {
        return B2().numberValue();
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public f N0() {
        return this.f15589p2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void N1(h hVar) {
        this.f15588g2 = hVar;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.util.f<StreamReadCapability> O0() {
        return JsonParser.f13715g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String S0() {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == null) {
            return null;
        }
        switch (a.f15591a[jsonToken.ordinal()]) {
            case 5:
                return this.f15589p2.b();
            case 6:
                return A2().textValue();
            case 7:
            case 8:
                return String.valueOf(A2().numberValue());
            case 9:
                com.fasterxml.jackson.databind.e A2 = A2();
                if (A2 != null && A2.isBinary()) {
                    return A2.asText();
                }
                break;
        }
        return this.f13813h.asString();
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public char[] T0() throws IOException {
        return S0().toCharArray();
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int U0() throws IOException {
        return S0().length();
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public JsonParser U1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.START_OBJECT) {
            this.f15589p2 = this.f15589p2.e();
            this.f13813h = JsonToken.END_OBJECT;
        } else if (jsonToken == JsonToken.START_ARRAY) {
            this.f15589p2 = this.f15589p2.e();
            this.f13813h = JsonToken.END_ARRAY;
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int V0() throws IOException {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        return JsonLocation.NA;
    }

    @Override // com.fasterxml.jackson.core.base.c
    protected void a2() {
        p2();
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f15590x2) {
            return;
        }
        this.f15590x2 = true;
        this.f15589p2 = null;
        this.f13813h = null;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this.f15590x2;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public boolean j1() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigInteger n0() throws IOException {
        return B2().bigIntegerValue();
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        com.fasterxml.jackson.databind.e A2 = A2();
        if (A2 != null) {
            if (A2 instanceof TextNode) {
                return ((TextNode) A2).getBinaryValue(base64Variant);
            }
            return A2.binaryValue();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean r1() {
        if (this.f15590x2) {
            return false;
        }
        com.fasterxml.jackson.databind.e A2 = A2();
        if (A2 instanceof NumericNode) {
            return ((NumericNode) A2).isNaN();
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public h s0() {
        return this.f15588g2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        return JsonLocation.NA;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String u0() {
        c cVar = this.f15589p2;
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) {
            cVar = cVar.e();
        }
        if (cVar == null) {
            return null;
        }
        return cVar.b();
    }

    @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.e.f14557a;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigDecimal y0() throws IOException {
        return B2().decimalValue();
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public JsonToken y1() throws IOException {
        JsonToken v9 = this.f15589p2.v();
        this.f13813h = v9;
        if (v9 == null) {
            this.f15590x2 = true;
            return null;
        }
        int i4 = a.f15591a[v9.ordinal()];
        if (i4 == 1) {
            this.f15589p2 = this.f15589p2.y();
        } else if (i4 == 2) {
            this.f15589p2 = this.f15589p2.x();
        } else if (i4 == 3 || i4 == 4) {
            this.f15589p2 = this.f15589p2.e();
        }
        return this.f13813h;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double z0() throws IOException {
        return B2().doubleValue();
    }

    public e(com.fasterxml.jackson.databind.e eVar, h hVar) {
        super(0);
        this.f15588g2 = hVar;
        this.f15589p2 = new c.C0121c(eVar, null);
    }
}
