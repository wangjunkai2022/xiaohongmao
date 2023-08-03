package com.squareup.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;

/* loaded from: classes3.dex */
public abstract class JsonReader implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    int f55518a;

    /* renamed from: b  reason: collision with root package name */
    int[] f55519b;

    /* renamed from: c  reason: collision with root package name */
    String[] f55520c;

    /* renamed from: d  reason: collision with root package name */
    int[] f55521d;

    /* renamed from: e  reason: collision with root package name */
    boolean f55522e;

    /* renamed from: f  reason: collision with root package name */
    boolean f55523f;

    /* renamed from: g  reason: collision with root package name */
    private Map<Class<?>, Object> f55524g;

    /* loaded from: classes3.dex */
    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f55526a;

        static {
            int[] iArr = new int[Token.values().length];
            f55526a = iArr;
            try {
                iArr[Token.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55526a[Token.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55526a[Token.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55526a[Token.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f55526a[Token.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f55526a[Token.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final String[] f55527a;

        /* renamed from: b  reason: collision with root package name */
        final Options f55528b;

        private b(String[] strArr, Options options) {
            this.f55527a = strArr;
            this.f55528b = options;
        }

        @r7.c
        public static b a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i4 = 0; i4 < strArr.length; i4++) {
                    m.w0(buffer, strArr[i4]);
                    buffer.readByte();
                    byteStringArr[i4] = buffer.readByteString();
                }
                return new b((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        public List<String> b() {
            return Collections.unmodifiableList(Arrays.asList(this.f55527a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JsonReader() {
        this.f55519b = new int[32];
        this.f55520c = new String[32];
        this.f55521d = new int[32];
    }

    @r7.c
    public static JsonReader H(BufferedSource bufferedSource) {
        return new l(bufferedSource);
    }

    @r7.c
    public abstract String A() throws IOException;

    @r7.h
    public abstract <T> T D() throws IOException;

    public abstract BufferedSource E() throws IOException;

    public abstract String G() throws IOException;

    @r7.c
    public abstract Token I() throws IOException;

    @r7.c
    public abstract JsonReader J();

    public abstract void K() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void L(int i4) {
        int i10 = this.f55518a;
        int[] iArr = this.f55519b;
        if (i10 == iArr.length) {
            if (i10 != 256) {
                this.f55519b = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.f55520c;
                this.f55520c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.f55521d;
                this.f55521d = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
        }
        int[] iArr3 = this.f55519b;
        int i11 = this.f55518a;
        this.f55518a = i11 + 1;
        iArr3[i11] = i4;
    }

    @r7.h
    public final Object M() throws IOException {
        switch (a.f55526a[I().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                a();
                while (k()) {
                    arrayList.add(M());
                }
                d();
                return arrayList;
            case 2:
                s sVar = new s();
                b();
                while (k()) {
                    String A = A();
                    Object M = M();
                    Object put = sVar.put(A, M);
                    if (put != null) {
                        throw new JsonDataException("Map key '" + A + "' has multiple values at path " + getPath() + ": " + put + " and " + M);
                    }
                }
                h();
                return sVar;
            case 3:
                return G();
            case 4:
                return Double.valueOf(r());
            case 5:
                return Boolean.valueOf(q());
            case 6:
                return D();
            default:
                throw new IllegalStateException("Expected a value but was " + I() + " at path " + getPath());
        }
    }

    @r7.c
    public abstract int W(b bVar) throws IOException;

    @r7.c
    public abstract int X(b bVar) throws IOException;

    public abstract void a() throws IOException;

    public abstract void b() throws IOException;

    public final void b0(boolean z9) {
        this.f55523f = z9;
    }

    public abstract void d() throws IOException;

    public final void d0(boolean z9) {
        this.f55522e = z9;
    }

    public final <T> void g0(Class<T> cls, T t9) {
        if (cls.isAssignableFrom(t9.getClass())) {
            if (this.f55524g == null) {
                this.f55524g = new LinkedHashMap();
            }
            this.f55524g.put(cls, t9);
            return;
        }
        throw new IllegalArgumentException("Tag value must be of type " + cls.getName());
    }

    @r7.c
    public final String getPath() {
        return k.a(this.f55518a, this.f55519b, this.f55520c, this.f55521d);
    }

    public abstract void h() throws IOException;

    public abstract void h0() throws IOException;

    @r7.c
    public final boolean i() {
        return this.f55523f;
    }

    @r7.c
    public abstract boolean k() throws IOException;

    public abstract void l0() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JsonEncodingException n0(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + getPath());
    }

    @r7.h
    @r7.c
    public final <T> T o0(Class<T> cls) {
        Map<Class<?>, Object> map = this.f55524g;
        if (map == null) {
            return null;
        }
        return (T) map.get(cls);
    }

    @r7.c
    public final boolean p() {
        return this.f55522e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JsonDataException p0(@r7.h Object obj, Object obj2) {
        if (obj == null) {
            return new JsonDataException("Expected " + obj2 + " but was null at path " + getPath());
        }
        return new JsonDataException("Expected " + obj2 + " but was " + obj + ", a " + obj.getClass().getName() + ", at path " + getPath());
    }

    public abstract boolean q() throws IOException;

    public abstract double r() throws IOException;

    public abstract int s() throws IOException;

    public abstract long y() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public JsonReader(JsonReader jsonReader) {
        this.f55518a = jsonReader.f55518a;
        this.f55519b = (int[]) jsonReader.f55519b.clone();
        this.f55520c = (String[]) jsonReader.f55520c.clone();
        this.f55521d = (int[]) jsonReader.f55521d.clone();
        this.f55522e = jsonReader.f55522e;
        this.f55523f = jsonReader.f55523f;
    }
}
