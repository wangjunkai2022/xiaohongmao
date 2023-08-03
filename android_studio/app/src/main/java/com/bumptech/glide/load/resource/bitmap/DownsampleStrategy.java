package com.bumptech.glide.load.resource.bitmap;

/* loaded from: classes.dex */
public abstract class DownsampleStrategy {

    /* renamed from: a  reason: collision with root package name */
    public static final DownsampleStrategy f9188a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final DownsampleStrategy f9189b = new b();

    /* renamed from: c  reason: collision with root package name */
    public static final DownsampleStrategy f9190c = new e();

    /* renamed from: d  reason: collision with root package name */
    public static final DownsampleStrategy f9191d = new c();

    /* renamed from: e  reason: collision with root package name */
    public static final DownsampleStrategy f9192e;

    /* renamed from: f  reason: collision with root package name */
    public static final DownsampleStrategy f9193f;

    /* renamed from: g  reason: collision with root package name */
    public static final DownsampleStrategy f9194g;

    /* renamed from: h  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<DownsampleStrategy> f9195h;

    /* renamed from: i  reason: collision with root package name */
    static final boolean f9196i;

    /* loaded from: classes.dex */
    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    /* loaded from: classes.dex */
    private static class a extends DownsampleStrategy {
        a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i4, int i10, int i11, int i12) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i4, int i10, int i11, int i12) {
            int min = Math.min(i10 / i12, i4 / i11);
            if (min == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(min);
        }
    }

    /* loaded from: classes.dex */
    private static class b extends DownsampleStrategy {
        b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i4, int i10, int i11, int i12) {
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i4, int i10, int i11, int i12) {
            int ceil = (int) Math.ceil(Math.max(i10 / i12, i4 / i11));
            int max = Math.max(1, Integer.highestOneBit(ceil));
            return 1.0f / (max << (max >= ceil ? 0 : 1));
        }
    }

    /* loaded from: classes.dex */
    private static class c extends DownsampleStrategy {
        c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i4, int i10, int i11, int i12) {
            if (b(i4, i10, i11, i12) == 1.0f) {
                return SampleSizeRounding.QUALITY;
            }
            return DownsampleStrategy.f9190c.a(i4, i10, i11, i12);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i4, int i10, int i11, int i12) {
            return Math.min(1.0f, DownsampleStrategy.f9190c.b(i4, i10, i11, i12));
        }
    }

    /* loaded from: classes.dex */
    private static class d extends DownsampleStrategy {
        d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i4, int i10, int i11, int i12) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i4, int i10, int i11, int i12) {
            return Math.max(i11 / i4, i12 / i10);
        }
    }

    /* loaded from: classes.dex */
    private static class e extends DownsampleStrategy {
        e() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i4, int i10, int i11, int i12) {
            if (DownsampleStrategy.f9196i) {
                return SampleSizeRounding.QUALITY;
            }
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i4, int i10, int i11, int i12) {
            if (DownsampleStrategy.f9196i) {
                return Math.min(i11 / i4, i12 / i10);
            }
            int max = Math.max(i10 / i12, i4 / i11);
            if (max == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(max);
        }
    }

    /* loaded from: classes.dex */
    private static class f extends DownsampleStrategy {
        f() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i4, int i10, int i11, int i12) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i4, int i10, int i11, int i12) {
            return 1.0f;
        }
    }

    static {
        d dVar = new d();
        f9192e = dVar;
        f9193f = new f();
        f9194g = dVar;
        f9195h = com.bumptech.glide.load.e.g("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", dVar);
        f9196i = true;
    }

    public abstract SampleSizeRounding a(int i4, int i10, int i11, int i12);

    public abstract float b(int i4, int i10, int i11, int i12);
}
