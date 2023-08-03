package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.imagepipeline.cache.u;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: NativeMemoryCacheTrimStrategy.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class x implements u.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f12163a = "NativeMemoryCacheTrimStrategy";

    /* compiled from: NativeMemoryCacheTrimStrategy.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12164a;

        static {
            int[] iArr = new int[MemoryTrimType.values().length];
            f12164a = iArr;
            try {
                iArr[MemoryTrimType.OnCloseToDalvikHeapLimit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12164a[MemoryTrimType.OnAppBackgrounded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12164a[MemoryTrimType.OnSystemMemoryCriticallyLowWhileAppInForeground.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12164a[MemoryTrimType.OnSystemLowMemoryWhileAppInForeground.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12164a[MemoryTrimType.OnSystemLowMemoryWhileAppInBackground.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.u.a
    public double a(MemoryTrimType trimType) {
        int i4 = a.f12164a[trimType.ordinal()];
        if (i4 != 1) {
            if (i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5) {
                return 1.0d;
            }
            p0.a.y0(f12163a, "unknown trim type: %s", trimType);
            return 0.0d;
        }
        return 0.0d;
    }
}
