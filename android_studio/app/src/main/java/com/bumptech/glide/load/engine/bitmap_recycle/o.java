package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: SizeConfigStrategy.java */
@RequiresApi(19)
/* loaded from: classes.dex */
public class o implements l {

    /* renamed from: d  reason: collision with root package name */
    private static final int f8664d = 8;

    /* renamed from: e  reason: collision with root package name */
    private static final Bitmap.Config[] f8665e;

    /* renamed from: f  reason: collision with root package name */
    private static final Bitmap.Config[] f8666f;

    /* renamed from: g  reason: collision with root package name */
    private static final Bitmap.Config[] f8667g;

    /* renamed from: h  reason: collision with root package name */
    private static final Bitmap.Config[] f8668h;

    /* renamed from: i  reason: collision with root package name */
    private static final Bitmap.Config[] f8669i;

    /* renamed from: a  reason: collision with root package name */
    private final c f8670a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final h<b, Bitmap> f8671b = new h<>();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f8672c = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SizeConfigStrategy.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8673a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f8673a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8673a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8673a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8673a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SizeConfigStrategy.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c extends d<b> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
        /* renamed from: d */
        public b a() {
            return new b(this);
        }

        public b e(int i4, Bitmap.Config config) {
            b b10 = b();
            b10.b(i4, config);
            return b10;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f8665e = configArr;
        f8666f = configArr;
        f8667g = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f8668h = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f8669i = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    private void f(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> j4 = j(bitmap.getConfig());
        Integer num2 = (Integer) j4.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                j4.remove(num);
                return;
            } else {
                j4.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + a(bitmap) + ", this: " + this);
    }

    private b g(int i4, Bitmap.Config config) {
        Bitmap.Config[] i10;
        b e4 = this.f8670a.e(i4, config);
        for (Bitmap.Config config2 : i(config)) {
            Integer ceilingKey = j(config2).ceilingKey(Integer.valueOf(i4));
            if (ceilingKey != null && ceilingKey.intValue() <= i4 * 8) {
                if (ceilingKey.intValue() == i4) {
                    if (config2 == null) {
                        if (config == null) {
                            return e4;
                        }
                    } else if (config2.equals(config)) {
                        return e4;
                    }
                }
                this.f8670a.c(e4);
                return this.f8670a.e(ceilingKey.intValue(), config2);
            }
        }
        return e4;
    }

    static String h(int i4, Bitmap.Config config) {
        return "[" + i4 + "](" + config + ")";
    }

    private static Bitmap.Config[] i(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return f8666f;
        }
        int i4 = a.f8673a[config.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    return i4 != 4 ? new Bitmap.Config[]{config} : f8669i;
                }
                return f8668h;
            }
            return f8667g;
        }
        return f8665e;
    }

    private NavigableMap<Integer, Integer> j(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f8672c.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f8672c.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public String a(Bitmap bitmap) {
        return h(com.bumptech.glide.util.o.h(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public String b(int i4, int i10, Bitmap.Config config) {
        return h(com.bumptech.glide.util.o.g(i4, i10, config), config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public int c(Bitmap bitmap) {
        return com.bumptech.glide.util.o.h(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public void d(Bitmap bitmap) {
        b e4 = this.f8670a.e(com.bumptech.glide.util.o.h(bitmap), bitmap.getConfig());
        this.f8671b.d(e4, bitmap);
        NavigableMap<Integer, Integer> j4 = j(bitmap.getConfig());
        Integer num = (Integer) j4.get(Integer.valueOf(e4.f8675b));
        j4.put(Integer.valueOf(e4.f8675b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    @Nullable
    public Bitmap e(int i4, int i10, Bitmap.Config config) {
        b g4 = g(com.bumptech.glide.util.o.g(i4, i10, config), config);
        Bitmap a10 = this.f8671b.a(g4);
        if (a10 != null) {
            f(Integer.valueOf(g4.f8675b), a10);
            a10.reconfigure(i4, i10, config);
        }
        return a10;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    @Nullable
    public Bitmap removeLast() {
        Bitmap f10 = this.f8671b.f();
        if (f10 != null) {
            f(Integer.valueOf(com.bumptech.glide.util.o.h(f10)), f10);
        }
        return f10;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f8671b);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f8672c.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f8672c.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SizeConfigStrategy.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b implements m {

        /* renamed from: a  reason: collision with root package name */
        private final c f8674a;

        /* renamed from: b  reason: collision with root package name */
        int f8675b;

        /* renamed from: c  reason: collision with root package name */
        private Bitmap.Config f8676c;

        public b(c cVar) {
            this.f8674a = cVar;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.m
        public void a() {
            this.f8674a.c(this);
        }

        public void b(int i4, Bitmap.Config config) {
            this.f8675b = i4;
            this.f8676c = config;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f8675b == bVar.f8675b && com.bumptech.glide.util.o.d(this.f8676c, bVar.f8676c);
            }
            return false;
        }

        public int hashCode() {
            int i4 = this.f8675b * 31;
            Bitmap.Config config = this.f8676c;
            return i4 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return o.h(this.f8675b, this.f8676c);
        }

        @VisibleForTesting
        b(c cVar, int i4, Bitmap.Config config) {
            this(cVar);
            b(i4, config);
        }
    }
}
