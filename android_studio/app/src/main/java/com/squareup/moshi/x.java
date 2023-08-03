package com.squareup.moshi;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StandardJsonAdapters.java */
/* loaded from: classes3.dex */
public final class x {

    /* renamed from: b  reason: collision with root package name */
    private static final String f55746b = "Expected %s but was %s at path %s";

    /* renamed from: a  reason: collision with root package name */
    public static final h.e f55745a = new c();

    /* renamed from: c  reason: collision with root package name */
    static final com.squareup.moshi.h<Boolean> f55747c = new d();

    /* renamed from: d  reason: collision with root package name */
    static final com.squareup.moshi.h<Byte> f55748d = new e();

    /* renamed from: e  reason: collision with root package name */
    static final com.squareup.moshi.h<Character> f55749e = new f();

    /* renamed from: f  reason: collision with root package name */
    static final com.squareup.moshi.h<Double> f55750f = new g();

    /* renamed from: g  reason: collision with root package name */
    static final com.squareup.moshi.h<Float> f55751g = new h();

    /* renamed from: h  reason: collision with root package name */
    static final com.squareup.moshi.h<Integer> f55752h = new i();

    /* renamed from: i  reason: collision with root package name */
    static final com.squareup.moshi.h<Long> f55753i = new j();

    /* renamed from: j  reason: collision with root package name */
    static final com.squareup.moshi.h<Short> f55754j = new k();

    /* renamed from: k  reason: collision with root package name */
    static final com.squareup.moshi.h<String> f55755k = new a();

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class a extends com.squareup.moshi.h<String> {
        a() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public String fromJson(JsonReader jsonReader) throws IOException {
            return jsonReader.G();
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, String str) throws IOException {
            qVar.l0(str);
        }

        public String toString() {
            return "JsonAdapter(String)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f55756a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f55756a = iArr;
            try {
                iArr[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55756a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55756a[JsonReader.Token.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55756a[JsonReader.Token.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f55756a[JsonReader.Token.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f55756a[JsonReader.Token.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class c implements h.e {
        c() {
        }

        @Override // com.squareup.moshi.h.e
        public com.squareup.moshi.h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            if (set.isEmpty()) {
                if (type == Boolean.TYPE) {
                    return x.f55747c;
                }
                if (type == Byte.TYPE) {
                    return x.f55748d;
                }
                if (type == Character.TYPE) {
                    return x.f55749e;
                }
                if (type == Double.TYPE) {
                    return x.f55750f;
                }
                if (type == Float.TYPE) {
                    return x.f55751g;
                }
                if (type == Integer.TYPE) {
                    return x.f55752h;
                }
                if (type == Long.TYPE) {
                    return x.f55753i;
                }
                if (type == Short.TYPE) {
                    return x.f55754j;
                }
                if (type == Boolean.class) {
                    return x.f55747c.nullSafe();
                }
                if (type == Byte.class) {
                    return x.f55748d.nullSafe();
                }
                if (type == Character.class) {
                    return x.f55749e.nullSafe();
                }
                if (type == Double.class) {
                    return x.f55750f.nullSafe();
                }
                if (type == Float.class) {
                    return x.f55751g.nullSafe();
                }
                if (type == Integer.class) {
                    return x.f55752h.nullSafe();
                }
                if (type == Long.class) {
                    return x.f55753i.nullSafe();
                }
                if (type == Short.class) {
                    return x.f55754j.nullSafe();
                }
                if (type == String.class) {
                    return x.f55755k.nullSafe();
                }
                if (type == Object.class) {
                    return new m(uVar).nullSafe();
                }
                Class<?> j4 = z.j(type);
                com.squareup.moshi.h<?> f10 = com.squareup.moshi.internal.c.f(uVar, type, j4);
                if (f10 != null) {
                    return f10;
                }
                if (j4.isEnum()) {
                    return new l(j4).nullSafe();
                }
                return null;
            }
            return null;
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class d extends com.squareup.moshi.h<Boolean> {
        d() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Boolean fromJson(JsonReader jsonReader) throws IOException {
            return Boolean.valueOf(jsonReader.q());
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Boolean bool) throws IOException {
            qVar.o0(bool.booleanValue());
        }

        public String toString() {
            return "JsonAdapter(Boolean)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class e extends com.squareup.moshi.h<Byte> {
        e() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Byte fromJson(JsonReader jsonReader) throws IOException {
            return Byte.valueOf((byte) x.a(jsonReader, "a byte", -128, 255));
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Byte b10) throws IOException {
            qVar.d0(b10.intValue() & 255);
        }

        public String toString() {
            return "JsonAdapter(Byte)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class f extends com.squareup.moshi.h<Character> {
        f() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Character fromJson(JsonReader jsonReader) throws IOException {
            String G = jsonReader.G();
            if (G.length() <= 1) {
                return Character.valueOf(G.charAt(0));
            }
            throw new JsonDataException(String.format(x.f55746b, "a char", '\"' + G + '\"', jsonReader.getPath()));
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Character ch) throws IOException {
            qVar.l0(ch.toString());
        }

        public String toString() {
            return "JsonAdapter(Character)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class g extends com.squareup.moshi.h<Double> {
        g() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Double fromJson(JsonReader jsonReader) throws IOException {
            return Double.valueOf(jsonReader.r());
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Double d4) throws IOException {
            qVar.b0(d4.doubleValue());
        }

        public String toString() {
            return "JsonAdapter(Double)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class h extends com.squareup.moshi.h<Float> {
        h() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Float fromJson(JsonReader jsonReader) throws IOException {
            float r9 = (float) jsonReader.r();
            if (!jsonReader.p() && Float.isInfinite(r9)) {
                throw new JsonDataException("JSON forbids NaN and infinities: " + r9 + " at path " + jsonReader.getPath());
            }
            return Float.valueOf(r9);
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Float f10) throws IOException {
            Objects.requireNonNull(f10);
            qVar.h0(f10);
        }

        public String toString() {
            return "JsonAdapter(Float)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class i extends com.squareup.moshi.h<Integer> {
        i() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Integer fromJson(JsonReader jsonReader) throws IOException {
            return Integer.valueOf(jsonReader.s());
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Integer num) throws IOException {
            qVar.d0(num.intValue());
        }

        public String toString() {
            return "JsonAdapter(Integer)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class j extends com.squareup.moshi.h<Long> {
        j() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Long fromJson(JsonReader jsonReader) throws IOException {
            return Long.valueOf(jsonReader.y());
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Long l10) throws IOException {
            qVar.d0(l10.longValue());
        }

        public String toString() {
            return "JsonAdapter(Long)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    class k extends com.squareup.moshi.h<Short> {
        k() {
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public Short fromJson(JsonReader jsonReader) throws IOException {
            return Short.valueOf((short) x.a(jsonReader, "a short", -32768, 32767));
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, Short sh) throws IOException {
            qVar.d0(sh.intValue());
        }

        public String toString() {
            return "JsonAdapter(Short)";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    static final class l<T extends Enum<T>> extends com.squareup.moshi.h<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f55757a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f55758b;

        /* renamed from: c  reason: collision with root package name */
        private final T[] f55759c;

        /* renamed from: d  reason: collision with root package name */
        private final JsonReader.b f55760d;

        l(Class<T> cls) {
            this.f55757a = cls;
            try {
                T[] enumConstants = cls.getEnumConstants();
                this.f55759c = enumConstants;
                this.f55758b = new String[enumConstants.length];
                int i4 = 0;
                while (true) {
                    T[] tArr = this.f55759c;
                    if (i4 < tArr.length) {
                        String name = tArr[i4].name();
                        this.f55758b[i4] = com.squareup.moshi.internal.c.q(name, cls.getField(name));
                        i4++;
                    } else {
                        this.f55760d = JsonReader.b.a(this.f55758b);
                        return;
                    }
                }
            } catch (NoSuchFieldException e4) {
                throw new AssertionError("Missing field in " + cls.getName(), e4);
            }
        }

        @Override // com.squareup.moshi.h
        /* renamed from: a */
        public T fromJson(JsonReader jsonReader) throws IOException {
            int X = jsonReader.X(this.f55760d);
            if (X != -1) {
                return this.f55759c[X];
            }
            String path = jsonReader.getPath();
            String G = jsonReader.G();
            throw new JsonDataException("Expected one of " + Arrays.asList(this.f55758b) + " but was " + G + " at path " + path);
        }

        @Override // com.squareup.moshi.h
        /* renamed from: b */
        public void toJson(q qVar, T t9) throws IOException {
            qVar.l0(this.f55758b[t9.ordinal()]);
        }

        public String toString() {
            return "JsonAdapter(" + this.f55757a.getName() + ")";
        }
    }

    /* compiled from: StandardJsonAdapters.java */
    /* loaded from: classes3.dex */
    static final class m extends com.squareup.moshi.h<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final u f55761a;

        /* renamed from: b  reason: collision with root package name */
        private final com.squareup.moshi.h<List> f55762b;

        /* renamed from: c  reason: collision with root package name */
        private final com.squareup.moshi.h<Map> f55763c;

        /* renamed from: d  reason: collision with root package name */
        private final com.squareup.moshi.h<String> f55764d;

        /* renamed from: e  reason: collision with root package name */
        private final com.squareup.moshi.h<Double> f55765e;

        /* renamed from: f  reason: collision with root package name */
        private final com.squareup.moshi.h<Boolean> f55766f;

        m(u uVar) {
            this.f55761a = uVar;
            this.f55762b = uVar.c(List.class);
            this.f55763c = uVar.c(Map.class);
            this.f55764d = uVar.c(String.class);
            this.f55765e = uVar.c(Double.class);
            this.f55766f = uVar.c(Boolean.class);
        }

        private Class<?> a(Class<?> cls) {
            return Map.class.isAssignableFrom(cls) ? Map.class : Collection.class.isAssignableFrom(cls) ? Collection.class : cls;
        }

        @Override // com.squareup.moshi.h
        public Object fromJson(JsonReader jsonReader) throws IOException {
            switch (b.f55756a[jsonReader.I().ordinal()]) {
                case 1:
                    return this.f55762b.fromJson(jsonReader);
                case 2:
                    return this.f55763c.fromJson(jsonReader);
                case 3:
                    return this.f55764d.fromJson(jsonReader);
                case 4:
                    return this.f55765e.fromJson(jsonReader);
                case 5:
                    return this.f55766f.fromJson(jsonReader);
                case 6:
                    return jsonReader.D();
                default:
                    throw new IllegalStateException("Expected a value but was " + jsonReader.I() + " at path " + jsonReader.getPath());
            }
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, Object obj) throws IOException {
            Class<?> cls = obj.getClass();
            if (cls == Object.class) {
                qVar.d();
                qVar.p();
                return;
            }
            this.f55761a.f(a(cls), com.squareup.moshi.internal.c.f55611a).toJson(qVar, (q) obj);
        }

        public String toString() {
            return "JsonAdapter(Object)";
        }
    }

    private x() {
    }

    static int a(JsonReader jsonReader, String str, int i4, int i10) throws IOException {
        int s9 = jsonReader.s();
        if (s9 < i4 || s9 > i10) {
            throw new JsonDataException(String.format(f55746b, str, Integer.valueOf(s9), jsonReader.getPath()));
        }
        return s9;
    }
}
