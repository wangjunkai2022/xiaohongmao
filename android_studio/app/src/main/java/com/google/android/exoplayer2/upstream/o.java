package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.koushikdutta.async.http.AsyncHttpGet;
import com.koushikdutta.async.http.AsyncHttpHead;
import com.koushikdutta.async.http.AsyncHttpPost;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: DataSpec.java */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: l  reason: collision with root package name */
    public static final int f27281l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f27282m = 2;

    /* renamed from: n  reason: collision with root package name */
    public static final int f27283n = 4;

    /* renamed from: o  reason: collision with root package name */
    public static final int f27284o = 8;

    /* renamed from: p  reason: collision with root package name */
    public static final int f27285p = 1;

    /* renamed from: q  reason: collision with root package name */
    public static final int f27286q = 2;

    /* renamed from: r  reason: collision with root package name */
    public static final int f27287r = 3;

    /* renamed from: a  reason: collision with root package name */
    public final Uri f27288a;

    /* renamed from: b  reason: collision with root package name */
    public final long f27289b;

    /* renamed from: c  reason: collision with root package name */
    public final int f27290c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f27291d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, String> f27292e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public final long f27293f;

    /* renamed from: g  reason: collision with root package name */
    public final long f27294g;

    /* renamed from: h  reason: collision with root package name */
    public final long f27295h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f27296i;

    /* renamed from: j  reason: collision with root package name */
    public final int f27297j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final Object f27298k;

    /* compiled from: DataSpec.java */
    /* loaded from: classes2.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Uri f27299a;

        /* renamed from: b  reason: collision with root package name */
        private long f27300b;

        /* renamed from: c  reason: collision with root package name */
        private int f27301c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f27302d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f27303e;

        /* renamed from: f  reason: collision with root package name */
        private long f27304f;

        /* renamed from: g  reason: collision with root package name */
        private long f27305g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f27306h;

        /* renamed from: i  reason: collision with root package name */
        private int f27307i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private Object f27308j;

        public o a() {
            com.google.android.exoplayer2.util.a.l(this.f27299a, "The uri must be set.");
            return new o(this.f27299a, this.f27300b, this.f27301c, this.f27302d, this.f27303e, this.f27304f, this.f27305g, this.f27306h, this.f27307i, this.f27308j);
        }

        public b b(@Nullable Object obj) {
            this.f27308j = obj;
            return this;
        }

        public b c(int i4) {
            this.f27307i = i4;
            return this;
        }

        public b d(@Nullable byte[] bArr) {
            this.f27302d = bArr;
            return this;
        }

        public b e(int i4) {
            this.f27301c = i4;
            return this;
        }

        public b f(Map<String, String> map) {
            this.f27303e = map;
            return this;
        }

        public b g(@Nullable String str) {
            this.f27306h = str;
            return this;
        }

        public b h(long j4) {
            this.f27305g = j4;
            return this;
        }

        public b i(long j4) {
            this.f27304f = j4;
            return this;
        }

        public b j(Uri uri) {
            this.f27299a = uri;
            return this;
        }

        public b k(String str) {
            this.f27299a = Uri.parse(str);
            return this;
        }

        public b l(long j4) {
            this.f27300b = j4;
            return this;
        }

        public b() {
            this.f27301c = 1;
            this.f27303e = Collections.emptyMap();
            this.f27305g = -1L;
        }

        private b(o oVar) {
            this.f27299a = oVar.f27288a;
            this.f27300b = oVar.f27289b;
            this.f27301c = oVar.f27290c;
            this.f27302d = oVar.f27291d;
            this.f27303e = oVar.f27292e;
            this.f27304f = oVar.f27294g;
            this.f27305g = oVar.f27295h;
            this.f27306h = oVar.f27296i;
            this.f27307i = oVar.f27297j;
            this.f27308j = oVar.f27298k;
        }
    }

    /* compiled from: DataSpec.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface c {
    }

    /* compiled from: DataSpec.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface d {
    }

    public static String c(int i4) {
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return AsyncHttpHead.f44555o;
                }
                throw new IllegalStateException();
            }
            return AsyncHttpPost.f44556o;
        }
        return AsyncHttpGet.f44554o;
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.f27290c);
    }

    public boolean d(int i4) {
        return (this.f27297j & i4) == i4;
    }

    public o e(long j4) {
        long j10 = this.f27295h;
        return f(j4, j10 != -1 ? j10 - j4 : -1L);
    }

    public o f(long j4, long j10) {
        return (j4 == 0 && this.f27295h == j10) ? this : new o(this.f27288a, this.f27289b, this.f27290c, this.f27291d, this.f27292e, this.f27294g + j4, j10, this.f27296i, this.f27297j, this.f27298k);
    }

    public o g(Map<String, String> map) {
        HashMap hashMap = new HashMap(this.f27292e);
        hashMap.putAll(map);
        return new o(this.f27288a, this.f27289b, this.f27290c, this.f27291d, hashMap, this.f27294g, this.f27295h, this.f27296i, this.f27297j, this.f27298k);
    }

    public o h(Map<String, String> map) {
        return new o(this.f27288a, this.f27289b, this.f27290c, this.f27291d, map, this.f27294g, this.f27295h, this.f27296i, this.f27297j, this.f27298k);
    }

    public o i(Uri uri) {
        return new o(uri, this.f27289b, this.f27290c, this.f27291d, this.f27292e, this.f27294g, this.f27295h, this.f27296i, this.f27297j, this.f27298k);
    }

    public String toString() {
        String b10 = b();
        String valueOf = String.valueOf(this.f27288a);
        long j4 = this.f27294g;
        long j10 = this.f27295h;
        String str = this.f27296i;
        int i4 = this.f27297j;
        StringBuilder sb = new StringBuilder(String.valueOf(b10).length() + 70 + valueOf.length() + String.valueOf(str).length());
        sb.append("DataSpec[");
        sb.append(b10);
        sb.append(" ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(j4);
        sb.append(", ");
        sb.append(j10);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(i4);
        sb.append("]");
        return sb.toString();
    }

    public o(Uri uri) {
        this(uri, 0L, -1L);
    }

    public o(Uri uri, long j4, long j10) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j4, j10, null, 0, null);
    }

    @Deprecated
    public o(Uri uri, int i4) {
        this(uri, 0L, -1L, null, i4);
    }

    @Deprecated
    public o(Uri uri, long j4, long j10, @Nullable String str) {
        this(uri, j4, j4, j10, str, 0);
    }

    @Deprecated
    public o(Uri uri, long j4, long j10, @Nullable String str, int i4) {
        this(uri, j4, j4, j10, str, i4);
    }

    @Deprecated
    public o(Uri uri, long j4, long j10, @Nullable String str, int i4, Map<String, String> map) {
        this(uri, 1, null, j4, j4, j10, str, i4, map);
    }

    @Deprecated
    public o(Uri uri, long j4, long j10, long j11, @Nullable String str, int i4) {
        this(uri, null, j4, j10, j11, str, i4);
    }

    @Deprecated
    public o(Uri uri, @Nullable byte[] bArr, long j4, long j10, long j11, @Nullable String str, int i4) {
        this(uri, bArr != null ? 2 : 1, bArr, j4, j10, j11, str, i4);
    }

    @Deprecated
    public o(Uri uri, int i4, @Nullable byte[] bArr, long j4, long j10, long j11, @Nullable String str, int i10) {
        this(uri, i4, bArr, j4, j10, j11, str, i10, Collections.emptyMap());
    }

    @Deprecated
    public o(Uri uri, int i4, @Nullable byte[] bArr, long j4, long j10, long j11, @Nullable String str, int i10, Map<String, String> map) {
        this(uri, j4 - j10, i4, bArr, map, j10, j11, str, i10, null);
    }

    private o(Uri uri, long j4, int i4, @Nullable byte[] bArr, Map<String, String> map, long j10, long j11, @Nullable String str, int i10, @Nullable Object obj) {
        byte[] bArr2 = bArr;
        long j12 = j4 + j10;
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.a(j12 >= 0);
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        if (j11 <= 0 && j11 != -1) {
            z9 = false;
        }
        com.google.android.exoplayer2.util.a.a(z9);
        this.f27288a = uri;
        this.f27289b = j4;
        this.f27290c = i4;
        this.f27291d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f27292e = Collections.unmodifiableMap(new HashMap(map));
        this.f27294g = j10;
        this.f27293f = j12;
        this.f27295h = j11;
        this.f27296i = str;
        this.f27297j = i10;
        this.f27298k = obj;
    }
}
