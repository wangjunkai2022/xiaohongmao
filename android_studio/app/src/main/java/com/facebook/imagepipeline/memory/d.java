package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapCounterProvider.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final long f12566a = 1024;

    /* renamed from: b  reason: collision with root package name */
    private static final long f12567b = 1048576;

    /* renamed from: c  reason: collision with root package name */
    public static final int f12568c = b();

    /* renamed from: d  reason: collision with root package name */
    private static int f12569d = c.f12563b;

    /* renamed from: e  reason: collision with root package name */
    private static volatile b f12570e;

    @v1.f0
    public static b a() {
        if (f12570e == null) {
            synchronized (d.class) {
                if (f12570e == null) {
                    f12570e = new b(f12569d, f12568c);
                }
            }
        }
        return f12570e;
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }

    public static void c(c bitmapCounterConfig) {
        if (f12570e == null) {
            f12569d = bitmapCounterConfig.a();
            return;
        }
        throw new IllegalStateException("BitmapCounter has already been created! `BitmapCounterProvider.initialize(...)` should only be called before `BitmapCounterProvider.get()` or not at all!");
    }
}
