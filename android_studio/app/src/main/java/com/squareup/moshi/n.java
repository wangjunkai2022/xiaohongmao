package com.squareup.moshi;

import com.squareup.moshi.JsonReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonValueReader.java */
/* loaded from: classes3.dex */
public final class n extends JsonReader {

    /* renamed from: i  reason: collision with root package name */
    private static final Object f55655i = new Object();

    /* renamed from: h  reason: collision with root package name */
    private Object[] f55656h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsonValueReader.java */
    /* loaded from: classes3.dex */
    public static final class a implements Iterator<Object>, Cloneable {

        /* renamed from: a  reason: collision with root package name */
        final JsonReader.Token f55657a;

        /* renamed from: b  reason: collision with root package name */
        final Object[] f55658b;

        /* renamed from: c  reason: collision with root package name */
        int f55659c;

        a(JsonReader.Token token, Object[] objArr, int i4) {
            this.f55657a = token;
            this.f55658b = objArr;
            this.f55659c = i4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public a clone() {
            return new a(this.f55657a, this.f55658b, this.f55659c);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f55659c < this.f55658b.length;
        }

        @Override // java.util.Iterator
        public Object next() {
            Object[] objArr = this.f55658b;
            int i4 = this.f55659c;
            this.f55659c = i4 + 1;
            return objArr[i4];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Object obj) {
        int[] iArr = this.f55519b;
        int i4 = this.f55518a;
        iArr[i4] = 7;
        Object[] objArr = new Object[32];
        this.f55656h = objArr;
        this.f55518a = i4 + 1;
        objArr[i4] = obj;
    }

    private void q0(Object obj) {
        int i4 = this.f55518a;
        if (i4 == this.f55656h.length) {
            if (i4 != 256) {
                int[] iArr = this.f55519b;
                this.f55519b = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.f55520c;
                this.f55520c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.f55521d;
                this.f55521d = Arrays.copyOf(iArr2, iArr2.length * 2);
                Object[] objArr = this.f55656h;
                this.f55656h = Arrays.copyOf(objArr, objArr.length * 2);
            } else {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
        }
        Object[] objArr2 = this.f55656h;
        int i10 = this.f55518a;
        this.f55518a = i10 + 1;
        objArr2[i10] = obj;
    }

    private void r0() {
        int i4 = this.f55518a - 1;
        this.f55518a = i4;
        Object[] objArr = this.f55656h;
        objArr[i4] = null;
        this.f55519b[i4] = 0;
        if (i4 > 0) {
            int[] iArr = this.f55521d;
            int i10 = i4 - 1;
            iArr[i10] = iArr[i10] + 1;
            Object obj = objArr[i4 - 1];
            if (obj instanceof Iterator) {
                Iterator it = (Iterator) obj;
                if (it.hasNext()) {
                    q0(it.next());
                }
            }
        }
    }

    @r7.h
    private <T> T s0(Class<T> cls, JsonReader.Token token) throws IOException {
        int i4 = this.f55518a;
        Object obj = i4 != 0 ? this.f55656h[i4 - 1] : null;
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        if (obj == null && token == JsonReader.Token.NULL) {
            return null;
        }
        if (obj == f55655i) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw p0(obj, token);
    }

    private String t0(Map.Entry<?, ?> entry) {
        Object key = entry.getKey();
        if (key instanceof String) {
            return (String) key;
        }
        throw p0(key, JsonReader.Token.NAME);
    }

    @Override // com.squareup.moshi.JsonReader
    public String A() throws IOException {
        Map.Entry<?, ?> entry = (Map.Entry) s0(Map.Entry.class, JsonReader.Token.NAME);
        String t02 = t0(entry);
        this.f55656h[this.f55518a - 1] = entry.getValue();
        this.f55520c[this.f55518a - 2] = t02;
        return t02;
    }

    @Override // com.squareup.moshi.JsonReader
    @r7.h
    public <T> T D() throws IOException {
        s0(Void.class, JsonReader.Token.NULL);
        r0();
        return null;
    }

    @Override // com.squareup.moshi.JsonReader
    public BufferedSource E() throws IOException {
        Object M = M();
        Buffer buffer = new Buffer();
        q E = q.E(buffer);
        try {
            E.y(M);
            E.close();
            return buffer;
        } catch (Throwable th) {
            if (E != null) {
                try {
                    E.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public String G() throws IOException {
        int i4 = this.f55518a;
        String str = i4 != 0 ? this.f55656h[i4 - 1] : null;
        if (str instanceof String) {
            r0();
            return str;
        } else if (str instanceof Number) {
            r0();
            return str.toString();
        } else if (str == f55655i) {
            throw new IllegalStateException("JsonReader is closed");
        } else {
            throw p0(str, JsonReader.Token.STRING);
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public JsonReader.Token I() throws IOException {
        int i4 = this.f55518a;
        if (i4 == 0) {
            return JsonReader.Token.END_DOCUMENT;
        }
        Object obj = this.f55656h[i4 - 1];
        if (obj instanceof a) {
            return ((a) obj).f55657a;
        }
        if (obj instanceof List) {
            return JsonReader.Token.BEGIN_ARRAY;
        }
        if (obj instanceof Map) {
            return JsonReader.Token.BEGIN_OBJECT;
        }
        if (obj instanceof Map.Entry) {
            return JsonReader.Token.NAME;
        }
        if (obj instanceof String) {
            return JsonReader.Token.STRING;
        }
        if (obj instanceof Boolean) {
            return JsonReader.Token.BOOLEAN;
        }
        if (obj instanceof Number) {
            return JsonReader.Token.NUMBER;
        }
        if (obj == null) {
            return JsonReader.Token.NULL;
        }
        if (obj == f55655i) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw p0(obj, "a JSON value");
    }

    @Override // com.squareup.moshi.JsonReader
    public JsonReader J() {
        return new n(this);
    }

    @Override // com.squareup.moshi.JsonReader
    public void K() throws IOException {
        if (k()) {
            q0(A());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public int W(JsonReader.b bVar) throws IOException {
        Map.Entry<?, ?> entry = (Map.Entry) s0(Map.Entry.class, JsonReader.Token.NAME);
        String t02 = t0(entry);
        int length = bVar.f55527a.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (bVar.f55527a[i4].equals(t02)) {
                this.f55656h[this.f55518a - 1] = entry.getValue();
                this.f55520c[this.f55518a - 2] = t02;
                return i4;
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object[]] */
    @Override // com.squareup.moshi.JsonReader
    public int X(JsonReader.b bVar) throws IOException {
        int i4 = this.f55518a;
        String str = i4 != 0 ? this.f55656h[i4 - 1] : null;
        if (!(str instanceof String)) {
            if (str != f55655i) {
                return -1;
            }
            throw new IllegalStateException("JsonReader is closed");
        }
        String str2 = str;
        int length = bVar.f55527a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (bVar.f55527a[i10].equals(str2)) {
                r0();
                return i10;
            }
        }
        return -1;
    }

    @Override // com.squareup.moshi.JsonReader
    public void a() throws IOException {
        List list = (List) s0(List.class, JsonReader.Token.BEGIN_ARRAY);
        a aVar = new a(JsonReader.Token.END_ARRAY, list.toArray(new Object[list.size()]), 0);
        Object[] objArr = this.f55656h;
        int i4 = this.f55518a;
        objArr[i4 - 1] = aVar;
        this.f55519b[i4 - 1] = 1;
        this.f55521d[i4 - 1] = 0;
        if (aVar.hasNext()) {
            q0(aVar.next());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public void b() throws IOException {
        Map map = (Map) s0(Map.class, JsonReader.Token.BEGIN_OBJECT);
        a aVar = new a(JsonReader.Token.END_OBJECT, map.entrySet().toArray(new Object[map.size()]), 0);
        Object[] objArr = this.f55656h;
        int i4 = this.f55518a;
        objArr[i4 - 1] = aVar;
        this.f55519b[i4 - 1] = 3;
        if (aVar.hasNext()) {
            q0(aVar.next());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Arrays.fill(this.f55656h, 0, this.f55518a, (Object) null);
        this.f55656h[0] = f55655i;
        this.f55519b[0] = 8;
        this.f55518a = 1;
    }

    @Override // com.squareup.moshi.JsonReader
    public void d() throws IOException {
        JsonReader.Token token = JsonReader.Token.END_ARRAY;
        a aVar = (a) s0(a.class, token);
        if (aVar.f55657a == token && !aVar.hasNext()) {
            r0();
            return;
        }
        throw p0(aVar, token);
    }

    @Override // com.squareup.moshi.JsonReader
    public void h() throws IOException {
        JsonReader.Token token = JsonReader.Token.END_OBJECT;
        a aVar = (a) s0(a.class, token);
        if (aVar.f55657a == token && !aVar.hasNext()) {
            this.f55520c[this.f55518a - 1] = null;
            r0();
            return;
        }
        throw p0(aVar, token);
    }

    @Override // com.squareup.moshi.JsonReader
    public void h0() throws IOException {
        if (!this.f55523f) {
            this.f55656h[this.f55518a - 1] = ((Map.Entry) s0(Map.Entry.class, JsonReader.Token.NAME)).getValue();
            this.f55520c[this.f55518a - 2] = "null";
            return;
        }
        JsonReader.Token I = I();
        A();
        throw new JsonDataException("Cannot skip unexpected " + I + " at " + getPath());
    }

    @Override // com.squareup.moshi.JsonReader
    public boolean k() throws IOException {
        int i4 = this.f55518a;
        if (i4 == 0) {
            return false;
        }
        Object obj = this.f55656h[i4 - 1];
        return !(obj instanceof Iterator) || ((Iterator) obj).hasNext();
    }

    @Override // com.squareup.moshi.JsonReader
    public void l0() throws IOException {
        if (!this.f55523f) {
            int i4 = this.f55518a;
            if (i4 > 1) {
                this.f55520c[i4 - 2] = "null";
            }
            Object obj = i4 != 0 ? this.f55656h[i4 - 1] : null;
            if (!(obj instanceof a)) {
                if (obj instanceof Map.Entry) {
                    Object[] objArr = this.f55656h;
                    objArr[i4 - 1] = ((Map.Entry) objArr[i4 - 1]).getValue();
                    return;
                } else if (i4 > 0) {
                    r0();
                    return;
                } else {
                    throw new JsonDataException("Expected a value but was " + I() + " at path " + getPath());
                }
            }
            throw new JsonDataException("Expected a value but was " + I() + " at path " + getPath());
        }
        throw new JsonDataException("Cannot skip unexpected " + I() + " at " + getPath());
    }

    @Override // com.squareup.moshi.JsonReader
    public boolean q() throws IOException {
        r0();
        return ((Boolean) s0(Boolean.class, JsonReader.Token.BOOLEAN)).booleanValue();
    }

    @Override // com.squareup.moshi.JsonReader
    public double r() throws IOException {
        double parseDouble;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object s02 = s0(Object.class, token);
        if (s02 instanceof Number) {
            parseDouble = ((Number) s02).doubleValue();
        } else if (s02 instanceof String) {
            try {
                parseDouble = Double.parseDouble((String) s02);
            } catch (NumberFormatException unused) {
                throw p0(s02, JsonReader.Token.NUMBER);
            }
        } else {
            throw p0(s02, token);
        }
        if (!this.f55522e && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
        }
        r0();
        return parseDouble;
    }

    @Override // com.squareup.moshi.JsonReader
    public int s() throws IOException {
        int intValueExact;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object s02 = s0(Object.class, token);
        if (s02 instanceof Number) {
            intValueExact = ((Number) s02).intValue();
        } else if (s02 instanceof String) {
            try {
                try {
                    intValueExact = Integer.parseInt((String) s02);
                } catch (NumberFormatException unused) {
                    intValueExact = new BigDecimal((String) s02).intValueExact();
                }
            } catch (NumberFormatException unused2) {
                throw p0(s02, JsonReader.Token.NUMBER);
            }
        } else {
            throw p0(s02, token);
        }
        r0();
        return intValueExact;
    }

    @Override // com.squareup.moshi.JsonReader
    public long y() throws IOException {
        long longValueExact;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object s02 = s0(Object.class, token);
        if (s02 instanceof Number) {
            longValueExact = ((Number) s02).longValue();
        } else if (s02 instanceof String) {
            try {
                try {
                    longValueExact = Long.parseLong((String) s02);
                } catch (NumberFormatException unused) {
                    longValueExact = new BigDecimal((String) s02).longValueExact();
                }
            } catch (NumberFormatException unused2) {
                throw p0(s02, JsonReader.Token.NUMBER);
            }
        } else {
            throw p0(s02, token);
        }
        r0();
        return longValueExact;
    }

    n(n nVar) {
        super(nVar);
        this.f55656h = (Object[]) nVar.f55656h.clone();
        for (int i4 = 0; i4 < this.f55518a; i4++) {
            Object[] objArr = this.f55656h;
            if (objArr[i4] instanceof a) {
                objArr[i4] = ((a) objArr[i4]).clone();
            }
        }
    }
}
