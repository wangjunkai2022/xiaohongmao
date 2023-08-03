package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.StreamWriteCapability;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.TreeMap;

/* compiled from: TokenBuffer.java */
/* loaded from: classes2.dex */
public class t extends JsonGenerator {

    /* renamed from: t  reason: collision with root package name */
    protected static final int f16055t = JsonGenerator.Feature.collectDefaults();

    /* renamed from: e  reason: collision with root package name */
    protected com.fasterxml.jackson.core.h f16056e;

    /* renamed from: f  reason: collision with root package name */
    protected com.fasterxml.jackson.core.f f16057f;

    /* renamed from: g  reason: collision with root package name */
    protected int f16058g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f16059h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f16060i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f16061j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f16062k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f16063l;

    /* renamed from: m  reason: collision with root package name */
    protected c f16064m;

    /* renamed from: n  reason: collision with root package name */
    protected c f16065n;

    /* renamed from: o  reason: collision with root package name */
    protected int f16066o;

    /* renamed from: p  reason: collision with root package name */
    protected Object f16067p;

    /* renamed from: q  reason: collision with root package name */
    protected Object f16068q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f16069r;

    /* renamed from: s  reason: collision with root package name */
    protected com.fasterxml.jackson.core.json.e f16070s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TokenBuffer.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16071a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f16072b;

        static {
            int[] iArr = new int[JsonParser.NumberType.values().length];
            f16072b = iArr;
            try {
                iArr[JsonParser.NumberType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16072b[JsonParser.NumberType.BIG_INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16072b[JsonParser.NumberType.BIG_DECIMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16072b[JsonParser.NumberType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16072b[JsonParser.NumberType.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            f16071a = iArr2;
            try {
                iArr2[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16071a[JsonToken.END_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16071a[JsonToken.START_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16071a[JsonToken.END_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16071a[JsonToken.FIELD_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16071a[JsonToken.VALUE_STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16071a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16071a[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16071a[JsonToken.VALUE_TRUE.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16071a[JsonToken.VALUE_FALSE.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16071a[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16071a[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 12;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: TokenBuffer.java */
    /* loaded from: classes2.dex */
    public static final class b extends com.fasterxml.jackson.core.base.c {
        protected c E2;
        protected int F2;
        protected u G2;
        protected boolean H2;
        protected transient com.fasterxml.jackson.core.util.c I2;
        protected JsonLocation J2;

        /* renamed from: g2  reason: collision with root package name */
        protected com.fasterxml.jackson.core.h f16073g2;

        /* renamed from: p2  reason: collision with root package name */
        protected final boolean f16074p2;

        /* renamed from: x2  reason: collision with root package name */
        protected final boolean f16075x2;

        /* renamed from: y2  reason: collision with root package name */
        protected final boolean f16076y2;

        @Deprecated
        public b(c cVar, com.fasterxml.jackson.core.h hVar, boolean z9, boolean z10) {
            this(cVar, hVar, z9, z10, null);
        }

        private final boolean E2(Number number) {
            return (number instanceof Short) || (number instanceof Byte);
        }

        private final boolean F2(Number number) {
            return (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public Object A0() {
            if (this.f13813h == JsonToken.VALUE_EMBEDDED_OBJECT) {
                return D2();
            }
            return null;
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public void A1(String str) {
            com.fasterxml.jackson.core.f fVar = this.G2;
            JsonToken jsonToken = this.f13813h;
            if (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) {
                fVar = fVar.e();
            }
            if (fVar instanceof u) {
                try {
                    ((u) fVar).w(str);
                } catch (IOException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }

        protected final void A2() throws JacksonException {
            JsonToken jsonToken = this.f13813h;
            if (jsonToken == null || !jsonToken.isNumeric()) {
                throw k("Current token (" + this.f13813h + ") not numeric, cannot use numeric value accessors");
            }
        }

        protected int B2(Number number) throws IOException {
            if (number instanceof Long) {
                long longValue = number.longValue();
                int i4 = (int) longValue;
                if (i4 != longValue) {
                    t2();
                }
                return i4;
            }
            if (number instanceof BigInteger) {
                BigInteger bigInteger = (BigInteger) number;
                if (com.fasterxml.jackson.core.base.c.Q.compareTo(bigInteger) > 0 || com.fasterxml.jackson.core.base.c.R.compareTo(bigInteger) < 0) {
                    t2();
                }
            } else if (!(number instanceof Double) && !(number instanceof Float)) {
                if (number instanceof BigDecimal) {
                    BigDecimal bigDecimal = (BigDecimal) number;
                    if (com.fasterxml.jackson.core.base.c.W.compareTo(bigDecimal) > 0 || com.fasterxml.jackson.core.base.c.f13790b1.compareTo(bigDecimal) < 0) {
                        t2();
                    }
                } else {
                    p2();
                }
            } else {
                double doubleValue = number.doubleValue();
                if (doubleValue < -2.147483648E9d || doubleValue > 2.147483647E9d) {
                    t2();
                }
                return (int) doubleValue;
            }
            return number.intValue();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public float C0() throws IOException {
            return K0().floatValue();
        }

        protected long C2(Number number) throws IOException {
            if (number instanceof BigInteger) {
                BigInteger bigInteger = (BigInteger) number;
                if (com.fasterxml.jackson.core.base.c.S.compareTo(bigInteger) > 0 || com.fasterxml.jackson.core.base.c.T.compareTo(bigInteger) < 0) {
                    w2();
                }
            } else if (!(number instanceof Double) && !(number instanceof Float)) {
                if (number instanceof BigDecimal) {
                    BigDecimal bigDecimal = (BigDecimal) number;
                    if (com.fasterxml.jackson.core.base.c.U.compareTo(bigDecimal) > 0 || com.fasterxml.jackson.core.base.c.V.compareTo(bigDecimal) < 0) {
                        w2();
                    }
                } else {
                    p2();
                }
            } else {
                double doubleValue = number.doubleValue();
                if (doubleValue < -9.223372036854776E18d || doubleValue > 9.223372036854776E18d) {
                    w2();
                }
                return (long) doubleValue;
            }
            return number.longValue();
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

        protected final Object D2() {
            return this.E2.j(this.F2);
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public int F0() throws IOException {
            Number K0 = this.f13813h == JsonToken.VALUE_NUMBER_INT ? (Number) D2() : K0();
            if (!(K0 instanceof Integer) && !E2(K0)) {
                return B2(K0);
            }
            return K0.intValue();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public boolean G() {
            return this.f16075x2;
        }

        public JsonToken G2() throws IOException {
            if (this.H2) {
                return null;
            }
            c cVar = this.E2;
            int i4 = this.F2 + 1;
            if (i4 >= 16) {
                i4 = 0;
                cVar = cVar == null ? null : cVar.l();
            }
            if (cVar == null) {
                return null;
            }
            return cVar.r(i4);
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public boolean H() {
            return this.f16074p2;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public long H0() throws IOException {
            Number K0 = this.f13813h == JsonToken.VALUE_NUMBER_INT ? (Number) D2() : K0();
            if (!(K0 instanceof Long) && !F2(K0)) {
                return C2(K0);
            }
            return K0.longValue();
        }

        public void H2(JsonLocation jsonLocation) {
            this.J2 = jsonLocation;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public JsonParser.NumberType J0() throws IOException {
            Number K0 = K0();
            if (K0 instanceof Integer) {
                return JsonParser.NumberType.INT;
            }
            if (K0 instanceof Long) {
                return JsonParser.NumberType.LONG;
            }
            if (K0 instanceof Double) {
                return JsonParser.NumberType.DOUBLE;
            }
            if (K0 instanceof BigDecimal) {
                return JsonParser.NumberType.BIG_DECIMAL;
            }
            if (K0 instanceof BigInteger) {
                return JsonParser.NumberType.BIG_INTEGER;
            }
            if (K0 instanceof Float) {
                return JsonParser.NumberType.FLOAT;
            }
            if (K0 instanceof Short) {
                return JsonParser.NumberType.INT;
            }
            return null;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public final Number K0() throws IOException {
            A2();
            Object D2 = D2();
            if (D2 instanceof Number) {
                return (Number) D2;
            }
            if (D2 instanceof String) {
                String str = (String) D2;
                if (str.indexOf(46) >= 0) {
                    return Double.valueOf(Double.parseDouble(str));
                }
                return Long.valueOf(Long.parseLong(str));
            } else if (D2 == null) {
                return null;
            } else {
                throw new IllegalStateException("Internal error: entry should be a Number, but is of type " + D2.getClass().getName());
            }
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public String M() {
            JsonToken jsonToken = this.f13813h;
            if (jsonToken != JsonToken.START_OBJECT && jsonToken != JsonToken.START_ARRAY) {
                return this.G2.b();
            }
            return this.G2.e().b();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public Object M0() {
            return this.E2.h(this.F2);
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public com.fasterxml.jackson.core.f N0() {
            return this.G2;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public void N1(com.fasterxml.jackson.core.h hVar) {
            this.f16073g2 = hVar;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public com.fasterxml.jackson.core.util.f<StreamReadCapability> O0() {
            return JsonParser.f13715g;
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public String S0() {
            JsonToken jsonToken = this.f13813h;
            if (jsonToken == JsonToken.VALUE_STRING || jsonToken == JsonToken.FIELD_NAME) {
                Object D2 = D2();
                if (D2 instanceof String) {
                    return (String) D2;
                }
                return g.m0(D2);
            } else if (jsonToken == null) {
                return null;
            } else {
                int i4 = a.f16071a[jsonToken.ordinal()];
                if (i4 != 7 && i4 != 8) {
                    return this.f13813h.asString();
                }
                return g.m0(D2());
            }
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public char[] T0() {
            String S0 = S0();
            if (S0 == null) {
                return null;
            }
            return S0.toCharArray();
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public int U0() {
            String S0 = S0();
            if (S0 == null) {
                return 0;
            }
            return S0.length();
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public int V0() {
            return 0;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public JsonLocation W0() {
            return t0();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public Object X0() {
            return this.E2.i(this.F2);
        }

        @Override // com.fasterxml.jackson.core.base.c
        protected void a2() {
            p2();
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.H2) {
                return;
            }
            this.H2 = true;
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public boolean isClosed() {
            return this.H2;
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public boolean j1() {
            return false;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public BigInteger n0() throws IOException {
            Number K0 = K0();
            if (K0 instanceof BigInteger) {
                return (BigInteger) K0;
            }
            if (J0() == JsonParser.NumberType.BIG_DECIMAL) {
                return ((BigDecimal) K0).toBigInteger();
            }
            return BigInteger.valueOf(K0.longValue());
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public byte[] p0(Base64Variant base64Variant) throws IOException {
            if (this.f13813h == JsonToken.VALUE_EMBEDDED_OBJECT) {
                Object D2 = D2();
                if (D2 instanceof byte[]) {
                    return (byte[]) D2;
                }
            }
            if (this.f13813h == JsonToken.VALUE_STRING) {
                String S0 = S0();
                if (S0 == null) {
                    return null;
                }
                com.fasterxml.jackson.core.util.c cVar = this.I2;
                if (cVar == null) {
                    cVar = new com.fasterxml.jackson.core.util.c(100);
                    this.I2 = cVar;
                } else {
                    cVar.y();
                }
                Y1(S0, cVar, base64Variant);
                return cVar.E();
            }
            throw k("Current token (" + this.f13813h + ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), cannot access as binary");
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public boolean r1() {
            if (this.f13813h == JsonToken.VALUE_NUMBER_FLOAT) {
                Object D2 = D2();
                if (D2 instanceof Double) {
                    Double d4 = (Double) D2;
                    return d4.isNaN() || d4.isInfinite();
                } else if (D2 instanceof Float) {
                    Float f10 = (Float) D2;
                    return f10.isNaN() || f10.isInfinite();
                } else {
                    return false;
                }
            }
            return false;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public com.fasterxml.jackson.core.h s0() {
            return this.f16073g2;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public JsonLocation t0() {
            JsonLocation jsonLocation = this.J2;
            return jsonLocation == null ? JsonLocation.NA : jsonLocation;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public String t1() throws IOException {
            c cVar;
            if (this.H2 || (cVar = this.E2) == null) {
                return null;
            }
            int i4 = this.F2 + 1;
            if (i4 < 16) {
                JsonToken r9 = cVar.r(i4);
                JsonToken jsonToken = JsonToken.FIELD_NAME;
                if (r9 == jsonToken) {
                    this.F2 = i4;
                    this.f13813h = jsonToken;
                    Object j4 = this.E2.j(i4);
                    String obj = j4 instanceof String ? (String) j4 : j4.toString();
                    this.G2.w(obj);
                    return obj;
                }
            }
            if (y1() == JsonToken.FIELD_NAME) {
                return M();
            }
            return null;
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public String u0() {
            return M();
        }

        @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.n
        public Version version() {
            return com.fasterxml.jackson.databind.cfg.e.f14557a;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public BigDecimal y0() throws IOException {
            Number K0 = K0();
            if (K0 instanceof BigDecimal) {
                return (BigDecimal) K0;
            }
            int i4 = a.f16072b[J0().ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    return new BigDecimal((BigInteger) K0);
                }
                if (i4 != 5) {
                    return BigDecimal.valueOf(K0.doubleValue());
                }
            }
            return BigDecimal.valueOf(K0.longValue());
        }

        @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
        public JsonToken y1() throws IOException {
            c cVar;
            if (this.H2 || (cVar = this.E2) == null) {
                return null;
            }
            int i4 = this.F2 + 1;
            this.F2 = i4;
            if (i4 >= 16) {
                this.F2 = 0;
                c l10 = cVar.l();
                this.E2 = l10;
                if (l10 == null) {
                    return null;
                }
            }
            JsonToken r9 = this.E2.r(this.F2);
            this.f13813h = r9;
            if (r9 == JsonToken.FIELD_NAME) {
                Object D2 = D2();
                this.G2.w(D2 instanceof String ? (String) D2 : D2.toString());
            } else if (r9 == JsonToken.START_OBJECT) {
                this.G2 = this.G2.t();
            } else if (r9 == JsonToken.START_ARRAY) {
                this.G2 = this.G2.s();
            } else if (r9 != JsonToken.END_OBJECT && r9 != JsonToken.END_ARRAY) {
                this.G2.x();
            } else {
                this.G2 = this.G2.v();
            }
            return this.f13813h;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public double z0() throws IOException {
            return K0().doubleValue();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c cVar, com.fasterxml.jackson.core.h hVar, boolean z9, boolean z10, com.fasterxml.jackson.core.f fVar) {
            super(0);
            boolean z11 = false;
            this.J2 = null;
            this.E2 = cVar;
            this.F2 = -1;
            this.f16073g2 = hVar;
            this.G2 = u.u(fVar);
            this.f16074p2 = z9;
            this.f16075x2 = z10;
            this.f16076y2 = (z9 || z10) ? true : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: TokenBuffer.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: e  reason: collision with root package name */
        public static final int f16077e = 16;

        /* renamed from: f  reason: collision with root package name */
        private static final JsonToken[] f16078f;

        /* renamed from: a  reason: collision with root package name */
        protected c f16079a;

        /* renamed from: b  reason: collision with root package name */
        protected long f16080b;

        /* renamed from: c  reason: collision with root package name */
        protected final Object[] f16081c = new Object[16];

        /* renamed from: d  reason: collision with root package name */
        protected TreeMap<Integer, Object> f16082d;

        static {
            JsonToken[] jsonTokenArr = new JsonToken[16];
            f16078f = jsonTokenArr;
            JsonToken[] values = JsonToken.values();
            System.arraycopy(values, 1, jsonTokenArr, 1, Math.min(15, values.length - 1));
        }

        private final int a(int i4) {
            return i4 + i4 + 1;
        }

        private final int b(int i4) {
            return i4 + i4;
        }

        private final void g(int i4, Object obj, Object obj2) {
            if (this.f16082d == null) {
                this.f16082d = new TreeMap<>();
            }
            if (obj != null) {
                this.f16082d.put(Integer.valueOf(a(i4)), obj);
            }
            if (obj2 != null) {
                this.f16082d.put(Integer.valueOf(b(i4)), obj2);
            }
        }

        private void n(int i4, JsonToken jsonToken) {
            long ordinal = jsonToken.ordinal();
            if (i4 > 0) {
                ordinal <<= i4 << 2;
            }
            this.f16080b |= ordinal;
        }

        private void o(int i4, JsonToken jsonToken, Object obj) {
            this.f16081c[i4] = obj;
            long ordinal = jsonToken.ordinal();
            if (i4 > 0) {
                ordinal <<= i4 << 2;
            }
            this.f16080b |= ordinal;
        }

        private void p(int i4, JsonToken jsonToken, Object obj, Object obj2) {
            long ordinal = jsonToken.ordinal();
            if (i4 > 0) {
                ordinal <<= i4 << 2;
            }
            this.f16080b = ordinal | this.f16080b;
            g(i4, obj, obj2);
        }

        private void q(int i4, JsonToken jsonToken, Object obj, Object obj2, Object obj3) {
            this.f16081c[i4] = obj;
            long ordinal = jsonToken.ordinal();
            if (i4 > 0) {
                ordinal <<= i4 << 2;
            }
            this.f16080b = ordinal | this.f16080b;
            g(i4, obj2, obj3);
        }

        public c c(int i4, JsonToken jsonToken) {
            if (i4 < 16) {
                n(i4, jsonToken);
                return null;
            }
            c cVar = new c();
            this.f16079a = cVar;
            cVar.n(0, jsonToken);
            return this.f16079a;
        }

        public c d(int i4, JsonToken jsonToken, Object obj) {
            if (i4 < 16) {
                o(i4, jsonToken, obj);
                return null;
            }
            c cVar = new c();
            this.f16079a = cVar;
            cVar.o(0, jsonToken, obj);
            return this.f16079a;
        }

        public c e(int i4, JsonToken jsonToken, Object obj, Object obj2) {
            if (i4 < 16) {
                p(i4, jsonToken, obj, obj2);
                return null;
            }
            c cVar = new c();
            this.f16079a = cVar;
            cVar.p(0, jsonToken, obj, obj2);
            return this.f16079a;
        }

        public c f(int i4, JsonToken jsonToken, Object obj, Object obj2, Object obj3) {
            if (i4 < 16) {
                q(i4, jsonToken, obj, obj2, obj3);
                return null;
            }
            c cVar = new c();
            this.f16079a = cVar;
            cVar.q(0, jsonToken, obj, obj2, obj3);
            return this.f16079a;
        }

        Object h(int i4) {
            TreeMap<Integer, Object> treeMap = this.f16082d;
            if (treeMap == null) {
                return null;
            }
            return treeMap.get(Integer.valueOf(a(i4)));
        }

        Object i(int i4) {
            TreeMap<Integer, Object> treeMap = this.f16082d;
            if (treeMap == null) {
                return null;
            }
            return treeMap.get(Integer.valueOf(b(i4)));
        }

        public Object j(int i4) {
            return this.f16081c[i4];
        }

        public boolean k() {
            return this.f16082d != null;
        }

        public c l() {
            return this.f16079a;
        }

        public int m(int i4) {
            long j4 = this.f16080b;
            if (i4 > 0) {
                j4 >>= i4 << 2;
            }
            return ((int) j4) & 15;
        }

        public JsonToken r(int i4) {
            long j4 = this.f16080b;
            if (i4 > 0) {
                j4 >>= i4 << 2;
            }
            return f16078f[((int) j4) & 15];
        }
    }

    public t(com.fasterxml.jackson.core.h hVar, boolean z9) {
        boolean z10 = false;
        this.f16069r = false;
        this.f16056e = hVar;
        this.f16058g = f16055t;
        this.f16070s = com.fasterxml.jackson.core.json.e.z(null);
        c cVar = new c();
        this.f16065n = cVar;
        this.f16064m = cVar;
        this.f16066o = 0;
        this.f16060i = z9;
        this.f16061j = z9;
        this.f16062k = (z9 || z9) ? true : true;
    }

    private final void Z1(StringBuilder sb) {
        Object h4 = this.f16065n.h(this.f16066o - 1);
        if (h4 != null) {
            sb.append("[objectId=");
            sb.append(String.valueOf(h4));
            sb.append(']');
        }
        Object i4 = this.f16065n.i(this.f16066o - 1);
        if (i4 != null) {
            sb.append("[typeId=");
            sb.append(String.valueOf(i4));
            sb.append(']');
        }
    }

    private final void d2(JsonParser jsonParser) throws IOException {
        Object X0 = jsonParser.X0();
        this.f16067p = X0;
        if (X0 != null) {
            this.f16069r = true;
        }
        Object M0 = jsonParser.M0();
        this.f16068q = M0;
        if (M0 != null) {
            this.f16069r = true;
        }
    }

    private void f2(JsonParser jsonParser, JsonToken jsonToken) throws IOException {
        if (this.f16062k) {
            d2(jsonParser);
        }
        switch (a.f16071a[jsonToken.ordinal()]) {
            case 6:
                if (jsonParser.j1()) {
                    Q1(jsonParser.T0(), jsonParser.V0(), jsonParser.U0());
                    return;
                } else {
                    P1(jsonParser.S0());
                    return;
                }
            case 7:
                int i4 = a.f16072b[jsonParser.J0().ordinal()];
                if (i4 == 1) {
                    a1(jsonParser.F0());
                    return;
                } else if (i4 != 2) {
                    b1(jsonParser.H0());
                    return;
                } else {
                    e1(jsonParser.n0());
                    return;
                }
            case 8:
                if (this.f16063l) {
                    d1(jsonParser.y0());
                    return;
                }
                c2(JsonToken.VALUE_NUMBER_FLOAT, jsonParser.L0());
                return;
            case 9:
                O0(true);
                return;
            case 10:
                O0(false);
                return;
            case 11:
                W0();
                return;
            case 12:
                o1(jsonParser.A0());
                return;
            default:
                throw new RuntimeException("Internal error: unexpected token: " + jsonToken);
        }
    }

    @Deprecated
    public static t h2(JsonParser jsonParser) throws IOException {
        t tVar = new t(jsonParser);
        tVar.H(jsonParser);
        return tVar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean A() {
        return this.f16061j;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void A1(char[] cArr, int i4, int i10) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void B1(byte[] bArr, int i4, int i10) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator C0() {
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean D() {
        return this.f16060i;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void D1(String str) throws IOException {
        c2(JsonToken.VALUE_EMBEDDED_OBJECT, new q(str));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void E1(String str, int i4, int i10) throws IOException {
        if (i4 > 0 || i10 != str.length()) {
            str = str.substring(i4, i10 + i4);
        }
        c2(JsonToken.VALUE_EMBEDDED_OBJECT, new q(str));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void F1(char[] cArr, int i4, int i10) throws IOException {
        c2(JsonToken.VALUE_EMBEDDED_OBJECT, new String(cArr, i4, i10));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void G(JsonParser jsonParser) throws IOException {
        if (this.f16062k) {
            d2(jsonParser);
        }
        switch (a.f16071a[jsonParser.W().ordinal()]) {
            case 1:
                K1();
                return;
            case 2:
                S0();
                return;
            case 3:
                G1();
                return;
            case 4:
                R0();
                return;
            case 5:
                V0(jsonParser.M());
                return;
            case 6:
                if (jsonParser.j1()) {
                    Q1(jsonParser.T0(), jsonParser.V0(), jsonParser.U0());
                    return;
                } else {
                    P1(jsonParser.S0());
                    return;
                }
            case 7:
                int i4 = a.f16072b[jsonParser.J0().ordinal()];
                if (i4 == 1) {
                    a1(jsonParser.F0());
                    return;
                } else if (i4 != 2) {
                    b1(jsonParser.H0());
                    return;
                } else {
                    e1(jsonParser.n0());
                    return;
                }
            case 8:
                if (this.f16063l) {
                    d1(jsonParser.y0());
                    return;
                }
                int i10 = a.f16072b[jsonParser.J0().ordinal()];
                if (i10 == 3) {
                    d1(jsonParser.y0());
                    return;
                } else if (i10 != 4) {
                    Y0(jsonParser.z0());
                    return;
                } else {
                    Z0(jsonParser.C0());
                    return;
                }
            case 9:
                O0(true);
                return;
            case 10:
                O0(false);
                return;
            case 11:
                W0();
                return;
            case 12:
                o1(jsonParser.A0());
                return;
            default:
                throw new RuntimeException("Internal error: unexpected token: " + jsonParser.W());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void G1() throws IOException {
        this.f16070s.G();
        a2(JsonToken.START_ARRAY);
        this.f16070s = this.f16070s.u();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void H(JsonParser jsonParser) throws IOException {
        JsonToken W = jsonParser.W();
        if (W == JsonToken.FIELD_NAME) {
            if (this.f16062k) {
                d2(jsonParser);
            }
            V0(jsonParser.M());
            W = jsonParser.y1();
        } else if (W == null) {
            throw new IllegalStateException("No token available from argument `JsonParser`");
        }
        int i4 = a.f16071a[W.ordinal()];
        if (i4 == 1) {
            if (this.f16062k) {
                d2(jsonParser);
            }
            K1();
            e2(jsonParser);
        } else if (i4 == 2) {
            S0();
        } else if (i4 != 3) {
            if (i4 != 4) {
                f2(jsonParser, W);
            } else {
                R0();
            }
        } else {
            if (this.f16062k) {
                d2(jsonParser);
            }
            G1();
            e2(jsonParser);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int I0(Base64Variant base64Variant, InputStream inputStream, int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void I1(Object obj) throws IOException {
        this.f16070s.G();
        a2(JsonToken.START_ARRAY);
        this.f16070s = this.f16070s.v(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator J(JsonGenerator.Feature feature) {
        this.f16058g = (~feature.getMask()) & this.f16058g;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void J1(Object obj, int i4) throws IOException {
        this.f16070s.G();
        a2(JsonToken.START_ARRAY);
        this.f16070s = this.f16070s.v(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator K(JsonGenerator.Feature feature) {
        this.f16058g = feature.getMask() | this.f16058g;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void K0(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException {
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i4, bArr2, 0, i10);
        o1(bArr2);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void K1() throws IOException {
        this.f16070s.G();
        a2(JsonToken.START_OBJECT);
        this.f16070s = this.f16070s.w();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void L1(Object obj) throws IOException {
        this.f16070s.G();
        a2(JsonToken.START_OBJECT);
        this.f16070s = this.f16070s.x(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public com.fasterxml.jackson.core.h M() {
        return this.f16056e;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void M1(Object obj, int i4) throws IOException {
        this.f16070s.G();
        a2(JsonToken.START_OBJECT);
        this.f16070s = this.f16070s.x(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void N1(com.fasterxml.jackson.core.j jVar) throws IOException {
        if (jVar == null) {
            W0();
        } else {
            c2(JsonToken.VALUE_STRING, jVar);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void O0(boolean z9) throws IOException {
        b2(z9 ? JsonToken.VALUE_TRUE : JsonToken.VALUE_FALSE);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void P1(String str) throws IOException {
        if (str == null) {
            W0();
        } else {
            c2(JsonToken.VALUE_STRING, str);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Q0(Object obj) throws IOException {
        c2(JsonToken.VALUE_EMBEDDED_OBJECT, obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Q1(char[] cArr, int i4, int i10) throws IOException {
        P1(new String(cArr, i4, i10));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void R0() throws IOException {
        X1(JsonToken.END_ARRAY);
        com.fasterxml.jackson.core.json.e e4 = this.f16070s.e();
        if (e4 != null) {
            this.f16070s = e4;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void S0() throws IOException {
        X1(JsonToken.END_OBJECT);
        com.fasterxml.jackson.core.json.e e4 = this.f16070s.e();
        if (e4 != null) {
            this.f16070s = e4;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void S1(com.fasterxml.jackson.core.m mVar) throws IOException {
        if (mVar == null) {
            W0();
            return;
        }
        com.fasterxml.jackson.core.h hVar = this.f16056e;
        if (hVar == null) {
            c2(JsonToken.VALUE_EMBEDDED_OBJECT, mVar);
        } else {
            hVar.writeTree(this, mVar);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void T1(Object obj) {
        this.f16067p = obj;
        this.f16069r = true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void U0(com.fasterxml.jackson.core.j jVar) throws IOException {
        this.f16070s.F(jVar.getValue());
        Y1(jVar);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void V0(String str) throws IOException {
        this.f16070s.F(str);
        Y1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W0() throws IOException {
        b2(JsonToken.VALUE_NULL);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W1(byte[] bArr, int i4, int i10) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int X() {
        return this.f16058g;
    }

    protected final void X1(JsonToken jsonToken) {
        c c10 = this.f16065n.c(this.f16066o, jsonToken);
        if (c10 == null) {
            this.f16066o++;
            return;
        }
        this.f16065n = c10;
        this.f16066o = 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Y0(double d4) throws IOException {
        c2(JsonToken.VALUE_NUMBER_FLOAT, Double.valueOf(d4));
    }

    protected final void Y1(Object obj) {
        c d4;
        if (this.f16069r) {
            d4 = this.f16065n.f(this.f16066o, JsonToken.FIELD_NAME, obj, this.f16068q, this.f16067p);
        } else {
            d4 = this.f16065n.d(this.f16066o, JsonToken.FIELD_NAME, obj);
        }
        if (d4 == null) {
            this.f16066o++;
            return;
        }
        this.f16065n = d4;
        this.f16066o = 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Z0(float f10) throws IOException {
        c2(JsonToken.VALUE_NUMBER_FLOAT, Float.valueOf(f10));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void a1(int i4) throws IOException {
        c2(JsonToken.VALUE_NUMBER_INT, Integer.valueOf(i4));
    }

    protected final void a2(JsonToken jsonToken) {
        c c10;
        if (this.f16069r) {
            c10 = this.f16065n.e(this.f16066o, jsonToken, this.f16068q, this.f16067p);
        } else {
            c10 = this.f16065n.c(this.f16066o, jsonToken);
        }
        if (c10 == null) {
            this.f16066o++;
            return;
        }
        this.f16065n = c10;
        this.f16066o = 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void b1(long j4) throws IOException {
        c2(JsonToken.VALUE_NUMBER_INT, Long.valueOf(j4));
    }

    protected final void b2(JsonToken jsonToken) {
        c c10;
        this.f16070s.G();
        if (this.f16069r) {
            c10 = this.f16065n.e(this.f16066o, jsonToken, this.f16068q, this.f16067p);
        } else {
            c10 = this.f16065n.c(this.f16066o, jsonToken);
        }
        if (c10 == null) {
            this.f16066o++;
            return;
        }
        this.f16065n = c10;
        this.f16066o = 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void c1(String str) throws IOException {
        c2(JsonToken.VALUE_NUMBER_FLOAT, str);
    }

    protected final void c2(JsonToken jsonToken, Object obj) {
        c d4;
        this.f16070s.G();
        if (this.f16069r) {
            d4 = this.f16065n.f(this.f16066o, jsonToken, obj, this.f16068q, this.f16067p);
        } else {
            d4 = this.f16065n.d(this.f16066o, jsonToken, obj);
        }
        if (d4 == null) {
            this.f16066o++;
            return;
        }
        this.f16065n = d4;
        this.f16066o = 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f16059h = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void d() {
        throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void d1(BigDecimal bigDecimal) throws IOException {
        if (bigDecimal == null) {
            W0();
        } else {
            c2(JsonToken.VALUE_NUMBER_FLOAT, bigDecimal);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void e1(BigInteger bigInteger) throws IOException {
        if (bigInteger == null) {
            W0();
        } else {
            c2(JsonToken.VALUE_NUMBER_INT, bigInteger);
        }
    }

    protected void e2(JsonParser jsonParser) throws IOException {
        int i4 = 1;
        while (true) {
            JsonToken y12 = jsonParser.y1();
            if (y12 == null) {
                return;
            }
            int i10 = a.f16071a[y12.ordinal()];
            if (i10 == 1) {
                if (this.f16062k) {
                    d2(jsonParser);
                }
                K1();
            } else if (i10 == 2) {
                S0();
                i4--;
                if (i4 == 0) {
                    return;
                }
            } else if (i10 == 3) {
                if (this.f16062k) {
                    d2(jsonParser);
                }
                G1();
            } else if (i10 == 4) {
                R0();
                i4--;
                if (i4 == 0) {
                    return;
                }
            } else if (i10 != 5) {
                f2(jsonParser, y12);
            } else {
                if (this.f16062k) {
                    d2(jsonParser);
                }
                V0(jsonParser.M());
            }
            i4++;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void f1(short s9) throws IOException {
        c2(JsonToken.VALUE_NUMBER_INT, Short.valueOf(s9));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
    }

    public t g2(t tVar) throws IOException {
        if (!this.f16060i) {
            this.f16060i = tVar.D();
        }
        if (!this.f16061j) {
            this.f16061j = tVar.A();
        }
        this.f16062k = this.f16060i || this.f16061j;
        JsonParser i22 = tVar.i2();
        while (i22.y1() != null) {
            H(i22);
        }
        return this;
    }

    public JsonParser i2() {
        return k2(this.f16056e);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean isClosed() {
        return this.f16059h;
    }

    public JsonParser j2(JsonParser jsonParser) {
        b bVar = new b(this.f16064m, jsonParser.s0(), this.f16060i, this.f16061j, this.f16057f);
        bVar.H2(jsonParser.W0());
        return bVar;
    }

    public JsonParser k2(com.fasterxml.jackson.core.h hVar) {
        return new b(this.f16064m, hVar, this.f16060i, this.f16061j, this.f16057f);
    }

    public JsonParser l2() throws IOException {
        JsonParser k22 = k2(this.f16056e);
        k22.y1();
        return k22;
    }

    public t m2(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken y12;
        if (!jsonParser.k1(JsonToken.FIELD_NAME)) {
            H(jsonParser);
            return this;
        }
        K1();
        do {
            H(jsonParser);
            y12 = jsonParser.y1();
        } while (y12 == JsonToken.FIELD_NAME);
        JsonToken jsonToken = JsonToken.END_OBJECT;
        if (y12 != jsonToken) {
            deserializationContext.reportWrongTokenException(t.class, jsonToken, "Expected END_OBJECT after copying contents of a JsonParser into TokenBuffer, got " + y12, new Object[0]);
        }
        S0();
        return this;
    }

    public JsonToken n2() {
        return this.f16064m.r(0);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void o1(Object obj) throws IOException {
        if (obj == null) {
            W0();
        } else if (obj.getClass() != byte[].class && !(obj instanceof q)) {
            com.fasterxml.jackson.core.h hVar = this.f16056e;
            if (hVar == null) {
                c2(JsonToken.VALUE_EMBEDDED_OBJECT, obj);
            } else {
                hVar.writeValue(this, obj);
            }
        } else {
            c2(JsonToken.VALUE_EMBEDDED_OBJECT, obj);
        }
    }

    public t o2(boolean z9) {
        this.f16063l = z9;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public com.fasterxml.jackson.core.util.f<StreamWriteCapability> p0() {
        return JsonGenerator.f13695b;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    /* renamed from: p2 */
    public final com.fasterxml.jackson.core.json.e h0() {
        return this.f16070s;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean q0(JsonGenerator.Feature feature) {
        return (feature.getMask() & this.f16058g) != 0;
    }

    public boolean q2() {
        return this.f16066o == 0 && this.f16064m == this.f16065n;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void r1(Object obj) {
        this.f16068q = obj;
        this.f16069r = true;
    }

    public t r2(com.fasterxml.jackson.core.f fVar) {
        this.f16057f = fVar;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean s() {
        return true;
    }

    public void s2(JsonGenerator jsonGenerator) throws IOException {
        c cVar = this.f16064m;
        boolean z9 = this.f16062k;
        boolean z10 = z9 && cVar.k();
        int i4 = -1;
        while (true) {
            i4++;
            if (i4 >= 16) {
                cVar = cVar.l();
                if (cVar == null) {
                    return;
                }
                z10 = z9 && cVar.k();
                i4 = 0;
            }
            JsonToken r9 = cVar.r(i4);
            if (r9 == null) {
                return;
            }
            if (z10) {
                Object h4 = cVar.h(i4);
                if (h4 != null) {
                    jsonGenerator.r1(h4);
                }
                Object i10 = cVar.i(i4);
                if (i10 != null) {
                    jsonGenerator.T1(i10);
                }
            }
            switch (a.f16071a[r9.ordinal()]) {
                case 1:
                    jsonGenerator.K1();
                    break;
                case 2:
                    jsonGenerator.S0();
                    break;
                case 3:
                    jsonGenerator.G1();
                    break;
                case 4:
                    jsonGenerator.R0();
                    break;
                case 5:
                    Object j4 = cVar.j(i4);
                    if (j4 instanceof com.fasterxml.jackson.core.j) {
                        jsonGenerator.U0((com.fasterxml.jackson.core.j) j4);
                        break;
                    } else {
                        jsonGenerator.V0((String) j4);
                        break;
                    }
                case 6:
                    Object j10 = cVar.j(i4);
                    if (j10 instanceof com.fasterxml.jackson.core.j) {
                        jsonGenerator.N1((com.fasterxml.jackson.core.j) j10);
                        break;
                    } else {
                        jsonGenerator.P1((String) j10);
                        break;
                    }
                case 7:
                    Object j11 = cVar.j(i4);
                    if (j11 instanceof Integer) {
                        jsonGenerator.a1(((Integer) j11).intValue());
                        break;
                    } else if (j11 instanceof BigInteger) {
                        jsonGenerator.e1((BigInteger) j11);
                        break;
                    } else if (j11 instanceof Long) {
                        jsonGenerator.b1(((Long) j11).longValue());
                        break;
                    } else if (j11 instanceof Short) {
                        jsonGenerator.f1(((Short) j11).shortValue());
                        break;
                    } else {
                        jsonGenerator.a1(((Number) j11).intValue());
                        break;
                    }
                case 8:
                    Object j12 = cVar.j(i4);
                    if (j12 instanceof Double) {
                        jsonGenerator.Y0(((Double) j12).doubleValue());
                        break;
                    } else if (j12 instanceof BigDecimal) {
                        jsonGenerator.d1((BigDecimal) j12);
                        break;
                    } else if (!(j12 instanceof Float)) {
                        if (j12 == null) {
                            jsonGenerator.W0();
                            break;
                        } else if (j12 instanceof String) {
                            jsonGenerator.c1((String) j12);
                            break;
                        } else {
                            b(String.format("Unrecognized value type for VALUE_NUMBER_FLOAT: %s, cannot serialize", j12.getClass().getName()));
                            break;
                        }
                    } else {
                        jsonGenerator.Z0(((Float) j12).floatValue());
                        break;
                    }
                case 9:
                    jsonGenerator.O0(true);
                    break;
                case 10:
                    jsonGenerator.O0(false);
                    break;
                case 11:
                    jsonGenerator.W0();
                    break;
                case 12:
                    Object j13 = cVar.j(i4);
                    if (j13 instanceof q) {
                        ((q) j13).c(jsonGenerator);
                        break;
                    } else if (j13 instanceof com.fasterxml.jackson.databind.f) {
                        jsonGenerator.o1(j13);
                        break;
                    } else {
                        jsonGenerator.Q0(j13);
                        break;
                    }
                default:
                    throw new RuntimeException("Internal error: should never end up through this code path");
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator t0(int i4, int i10) {
        this.f16058g = (i4 & i10) | (X() & (~i10));
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[TokenBuffer: ");
        JsonParser i22 = i2();
        int i4 = 0;
        boolean z9 = this.f16060i || this.f16061j;
        while (true) {
            try {
                JsonToken y12 = i22.y1();
                if (y12 == null) {
                    break;
                }
                if (z9) {
                    Z1(sb);
                }
                if (i4 < 100) {
                    if (i4 > 0) {
                        sb.append(", ");
                    }
                    sb.append(y12.toString());
                    if (y12 == JsonToken.FIELD_NAME) {
                        sb.append('(');
                        sb.append(i22.M());
                        sb.append(')');
                    }
                }
                i4++;
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }
        if (i4 >= 100) {
            sb.append(" ... (truncated ");
            sb.append(i4 - 100);
            sb.append(" entries)");
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator v0(com.fasterxml.jackson.core.h hVar) {
        this.f16056e = hVar;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.e.f14557a;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void w1(char c10) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    @Deprecated
    public JsonGenerator x0(int i4) {
        this.f16058g = i4;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void x1(com.fasterxml.jackson.core.j jVar) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void y1(String str) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void z1(String str, int i4, int i10) throws IOException {
        d();
    }

    public t(JsonParser jsonParser) {
        this(jsonParser, (DeserializationContext) null);
    }

    public t(JsonParser jsonParser, DeserializationContext deserializationContext) {
        this.f16069r = false;
        this.f16056e = jsonParser.s0();
        this.f16057f = jsonParser.N0();
        this.f16058g = f16055t;
        this.f16070s = com.fasterxml.jackson.core.json.e.z(null);
        c cVar = new c();
        this.f16065n = cVar;
        this.f16064m = cVar;
        this.f16066o = 0;
        this.f16060i = jsonParser.H();
        boolean G = jsonParser.G();
        this.f16061j = G;
        this.f16062k = this.f16060i || G;
        this.f16063l = deserializationContext != null ? deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) : false;
    }
}
