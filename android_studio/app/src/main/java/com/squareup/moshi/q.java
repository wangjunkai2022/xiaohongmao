package com.squareup.moshi;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.BufferedSink;
import okio.BufferedSource;

/* compiled from: JsonWriter.java */
/* loaded from: classes3.dex */
public abstract class q implements Closeable, Flushable {

    /* renamed from: e  reason: collision with root package name */
    String f55681e;

    /* renamed from: f  reason: collision with root package name */
    boolean f55682f;

    /* renamed from: g  reason: collision with root package name */
    boolean f55683g;

    /* renamed from: h  reason: collision with root package name */
    boolean f55684h;

    /* renamed from: j  reason: collision with root package name */
    private Map<Class<?>, Object> f55686j;

    /* renamed from: a  reason: collision with root package name */
    int f55677a = 0;

    /* renamed from: b  reason: collision with root package name */
    int[] f55678b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    String[] f55679c = new String[32];

    /* renamed from: d  reason: collision with root package name */
    int[] f55680d = new int[32];

    /* renamed from: i  reason: collision with root package name */
    int f55685i = -1;

    @r7.c
    public static q E(BufferedSink bufferedSink) {
        return new m(bufferedSink);
    }

    public abstract q A(String str) throws IOException;

    public abstract q D() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int G() {
        int i4 = this.f55677a;
        if (i4 != 0) {
            return this.f55678b[i4 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void H() throws IOException {
        int G = G();
        if (G != 5 && G != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        this.f55684h = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void I(int i4) {
        int[] iArr = this.f55678b;
        int i10 = this.f55677a;
        this.f55677a = i10 + 1;
        iArr[i10] = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void J(int i4) {
        this.f55678b[this.f55677a - 1] = i4;
    }

    public void K(String str) {
        if (str.isEmpty()) {
            str = null;
        }
        this.f55681e = str;
    }

    public final void L(boolean z9) {
        this.f55682f = z9;
    }

    public final void M(boolean z9) {
        this.f55683g = z9;
    }

    public final <T> void W(Class<T> cls, T t9) {
        if (cls.isAssignableFrom(t9.getClass())) {
            if (this.f55686j == null) {
                this.f55686j = new LinkedHashMap();
            }
            this.f55686j.put(cls, t9);
            return;
        }
        throw new IllegalArgumentException("Tag value must be of type " + cls.getName());
    }

    @r7.h
    @r7.c
    public final <T> T X(Class<T> cls) {
        Map<Class<?>, Object> map = this.f55686j;
        if (map == null) {
            return null;
        }
        return (T) map.get(cls);
    }

    public abstract q a() throws IOException;

    @r7.c
    public final int b() {
        int G = G();
        if (G != 5 && G != 3 && G != 2 && G != 1) {
            throw new IllegalStateException("Nesting problem.");
        }
        int i4 = this.f55685i;
        this.f55685i = this.f55677a;
        return i4;
    }

    public abstract q b0(double d4) throws IOException;

    public abstract q d() throws IOException;

    public abstract q d0(long j4) throws IOException;

    public abstract q g0(@r7.h Boolean bool) throws IOException;

    @r7.c
    public final String getPath() {
        return k.a(this.f55677a, this.f55678b, this.f55679c, this.f55680d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        int i4 = this.f55677a;
        int[] iArr = this.f55678b;
        if (i4 != iArr.length) {
            return false;
        }
        if (i4 != 256) {
            this.f55678b = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f55679c;
            this.f55679c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f55680d;
            this.f55680d = Arrays.copyOf(iArr2, iArr2.length * 2);
            if (this instanceof p) {
                p pVar = (p) this;
                Object[] objArr = pVar.f55673k;
                pVar.f55673k = Arrays.copyOf(objArr, objArr.length * 2);
                return true;
            }
            return true;
        }
        throw new JsonDataException("Nesting too deep at " + getPath() + ": circular reference?");
    }

    public abstract q h0(@r7.h Number number) throws IOException;

    public abstract q i() throws IOException;

    public final void k(int i4) {
        this.f55685i = i4;
    }

    public abstract q l0(@r7.h String str) throws IOException;

    public final q n0(BufferedSource bufferedSource) throws IOException {
        if (!this.f55684h) {
            BufferedSink p02 = p0();
            try {
                bufferedSource.readAll(p02);
                if (p02 != null) {
                    p02.close();
                }
                return this;
            } catch (Throwable th) {
                if (p02 != null) {
                    try {
                        p02.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        throw new IllegalStateException("BufferedSource cannot be used as a map key in JSON at path " + getPath());
    }

    public abstract q o0(boolean z9) throws IOException;

    public abstract q p() throws IOException;

    @r7.c
    public abstract BufferedSink p0() throws IOException;

    @r7.c
    public final String q() {
        String str = this.f55681e;
        return str != null ? str : "";
    }

    @r7.c
    public final boolean r() {
        return this.f55683g;
    }

    @r7.c
    public final boolean s() {
        return this.f55682f;
    }

    public final q y(@r7.h Object obj) throws IOException {
        if (obj instanceof Map) {
            d();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (!(key instanceof String)) {
                    throw new IllegalArgumentException(key == null ? "Map keys must be non-null" : "Map keys must be of type String: " + key.getClass().getName());
                }
                A((String) key);
                y(entry.getValue());
            }
            p();
        } else if (obj instanceof List) {
            a();
            for (Object obj2 : (List) obj) {
                y(obj2);
            }
            i();
        } else if (obj instanceof String) {
            l0((String) obj);
        } else if (obj instanceof Boolean) {
            o0(((Boolean) obj).booleanValue());
        } else if (obj instanceof Double) {
            b0(((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            d0(((Long) obj).longValue());
        } else if (obj instanceof Number) {
            h0((Number) obj);
        } else if (obj == null) {
            D();
        } else {
            throw new IllegalArgumentException("Unsupported type: " + obj.getClass().getName());
        }
        return this;
    }
}
