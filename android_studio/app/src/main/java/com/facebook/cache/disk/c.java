package com.facebook.cache.disk;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.common.internal.m;
import com.facebook.common.internal.n;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;

/* compiled from: DiskCacheConfig.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f10865a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10866b;

    /* renamed from: c  reason: collision with root package name */
    private final m<File> f10867c;

    /* renamed from: d  reason: collision with root package name */
    private final long f10868d;

    /* renamed from: e  reason: collision with root package name */
    private final long f10869e;

    /* renamed from: f  reason: collision with root package name */
    private final long f10870f;

    /* renamed from: g  reason: collision with root package name */
    private final h f10871g;

    /* renamed from: h  reason: collision with root package name */
    private final CacheErrorLogger f10872h;

    /* renamed from: i  reason: collision with root package name */
    private final CacheEventListener f10873i;

    /* renamed from: j  reason: collision with root package name */
    private final m0.b f10874j;
    @r7.h

    /* renamed from: k  reason: collision with root package name */
    private final Context f10875k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f10876l;

    /* compiled from: DiskCacheConfig.java */
    /* loaded from: classes.dex */
    class a implements m<File> {
        a() {
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public File get() {
            com.facebook.common.internal.j.i(c.this.f10875k);
            return c.this.f10875k.getApplicationContext().getCacheDir();
        }
    }

    /* compiled from: DiskCacheConfig.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f10878a;

        /* renamed from: b  reason: collision with root package name */
        private String f10879b;
        @r7.h

        /* renamed from: c  reason: collision with root package name */
        private m<File> f10880c;

        /* renamed from: d  reason: collision with root package name */
        private long f10881d;

        /* renamed from: e  reason: collision with root package name */
        private long f10882e;

        /* renamed from: f  reason: collision with root package name */
        private long f10883f;

        /* renamed from: g  reason: collision with root package name */
        private h f10884g;
        @r7.h

        /* renamed from: h  reason: collision with root package name */
        private CacheErrorLogger f10885h;
        @r7.h

        /* renamed from: i  reason: collision with root package name */
        private CacheEventListener f10886i;
        @r7.h

        /* renamed from: j  reason: collision with root package name */
        private m0.b f10887j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f10888k;
        @r7.h

        /* renamed from: l  reason: collision with root package name */
        private final Context f10889l;

        /* synthetic */ b(Context context, a aVar) {
            this(context);
        }

        public c n() {
            return new c(this);
        }

        public b o(String baseDirectoryName) {
            this.f10879b = baseDirectoryName;
            return this;
        }

        public b p(final File baseDirectoryPath) {
            this.f10880c = n.a(baseDirectoryPath);
            return this;
        }

        public b q(m<File> baseDirectoryPathSupplier) {
            this.f10880c = baseDirectoryPathSupplier;
            return this;
        }

        public b r(CacheErrorLogger cacheErrorLogger) {
            this.f10885h = cacheErrorLogger;
            return this;
        }

        public b s(CacheEventListener cacheEventListener) {
            this.f10886i = cacheEventListener;
            return this;
        }

        public b t(m0.b diskTrimmableRegistry) {
            this.f10887j = diskTrimmableRegistry;
            return this;
        }

        public b u(h supplier) {
            this.f10884g = supplier;
            return this;
        }

        public b v(boolean indexEnabled) {
            this.f10888k = indexEnabled;
            return this;
        }

        public b w(long maxCacheSize) {
            this.f10881d = maxCacheSize;
            return this;
        }

        public b x(long maxCacheSizeOnLowDiskSpace) {
            this.f10882e = maxCacheSizeOnLowDiskSpace;
            return this;
        }

        public b y(long maxCacheSizeOnVeryLowDiskSpace) {
            this.f10883f = maxCacheSizeOnVeryLowDiskSpace;
            return this;
        }

        public b z(int version) {
            this.f10878a = version;
            return this;
        }

        private b(@r7.h Context context) {
            this.f10878a = 1;
            this.f10879b = "image_cache";
            this.f10881d = 41943040L;
            this.f10882e = 10485760L;
            this.f10883f = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
            this.f10884g = new com.facebook.cache.disk.b();
            this.f10889l = context;
        }
    }

    protected c(b builder) {
        CacheErrorLogger cacheErrorLogger;
        CacheEventListener cacheEventListener;
        m0.b bVar;
        Context context = builder.f10889l;
        this.f10875k = context;
        com.facebook.common.internal.j.p((builder.f10880c == null && context == null) ? false : true, "Either a non-null context or a base directory path or supplier must be provided.");
        if (builder.f10880c == null && context != null) {
            builder.f10880c = new a();
        }
        this.f10865a = builder.f10878a;
        this.f10866b = (String) com.facebook.common.internal.j.i(builder.f10879b);
        this.f10867c = (m) com.facebook.common.internal.j.i(builder.f10880c);
        this.f10868d = builder.f10881d;
        this.f10869e = builder.f10882e;
        this.f10870f = builder.f10883f;
        this.f10871g = (h) com.facebook.common.internal.j.i(builder.f10884g);
        if (builder.f10885h == null) {
            cacheErrorLogger = com.facebook.cache.common.h.b();
        } else {
            cacheErrorLogger = builder.f10885h;
        }
        this.f10872h = cacheErrorLogger;
        if (builder.f10886i == null) {
            cacheEventListener = com.facebook.cache.common.i.i();
        } else {
            cacheEventListener = builder.f10886i;
        }
        this.f10873i = cacheEventListener;
        if (builder.f10887j == null) {
            bVar = m0.c.c();
        } else {
            bVar = builder.f10887j;
        }
        this.f10874j = bVar;
        this.f10876l = builder.f10888k;
    }

    public static b n(@r7.h Context context) {
        return new b(context, null);
    }

    public String b() {
        return this.f10866b;
    }

    public m<File> c() {
        return this.f10867c;
    }

    public CacheErrorLogger d() {
        return this.f10872h;
    }

    public CacheEventListener e() {
        return this.f10873i;
    }

    @r7.h
    public Context f() {
        return this.f10875k;
    }

    public long g() {
        return this.f10868d;
    }

    public m0.b h() {
        return this.f10874j;
    }

    public h i() {
        return this.f10871g;
    }

    public boolean j() {
        return this.f10876l;
    }

    public long k() {
        return this.f10869e;
    }

    public long l() {
        return this.f10870f;
    }

    public int m() {
        return this.f10865a;
    }
}
