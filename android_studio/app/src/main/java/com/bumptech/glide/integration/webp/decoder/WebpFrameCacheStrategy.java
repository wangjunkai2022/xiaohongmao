package com.bumptech.glide.integration.webp.decoder;

/* loaded from: classes.dex */
public final class WebpFrameCacheStrategy {

    /* renamed from: c  reason: collision with root package name */
    public static final WebpFrameCacheStrategy f8378c = new b().i().c();

    /* renamed from: d  reason: collision with root package name */
    public static final WebpFrameCacheStrategy f8379d = new b().e().c();

    /* renamed from: e  reason: collision with root package name */
    public static final WebpFrameCacheStrategy f8380e = new b().d().c();

    /* renamed from: a  reason: collision with root package name */
    private CacheControl f8381a;

    /* renamed from: b  reason: collision with root package name */
    private int f8382b;

    /* loaded from: classes.dex */
    public enum CacheControl {
        CACHE_NONE,
        CACHE_LIMITED,
        CACHE_AUTO,
        CACHE_ALL
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private CacheControl f8384a;

        /* renamed from: b  reason: collision with root package name */
        private int f8385b;

        public WebpFrameCacheStrategy c() {
            return new WebpFrameCacheStrategy(this);
        }

        public b d() {
            this.f8384a = CacheControl.CACHE_ALL;
            return this;
        }

        public b e() {
            this.f8384a = CacheControl.CACHE_AUTO;
            return this;
        }

        public b f(CacheControl cacheControl) {
            this.f8384a = cacheControl;
            return this;
        }

        public b g() {
            this.f8384a = CacheControl.CACHE_LIMITED;
            return this;
        }

        public b h(int i4) {
            this.f8385b = i4;
            if (i4 == 0) {
                this.f8384a = CacheControl.CACHE_NONE;
            } else if (i4 == Integer.MAX_VALUE) {
                this.f8384a = CacheControl.CACHE_ALL;
            } else {
                this.f8384a = CacheControl.CACHE_LIMITED;
            }
            return this;
        }

        public b i() {
            this.f8384a = CacheControl.CACHE_NONE;
            return this;
        }
    }

    public boolean a() {
        return this.f8381a == CacheControl.CACHE_ALL;
    }

    public boolean b() {
        return this.f8381a == CacheControl.CACHE_AUTO;
    }

    public CacheControl c() {
        return this.f8381a;
    }

    public int d() {
        return this.f8382b;
    }

    public boolean e() {
        return this.f8381a == CacheControl.CACHE_NONE;
    }

    private WebpFrameCacheStrategy(b bVar) {
        this.f8381a = bVar.f8384a;
        this.f8382b = bVar.f8385b;
    }
}
