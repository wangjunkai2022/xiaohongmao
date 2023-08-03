package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.TimeUnit;

/* compiled from: DefaultEncodedMemoryCacheParamsSupplier.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class n implements com.facebook.common.internal.m<v> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f12135a = Integer.MAX_VALUE;

    /* renamed from: b  reason: collision with root package name */
    private static final int f12136b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    private static final long f12137c = TimeUnit.MINUTES.toMillis(5);

    private int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min < 16777216) {
            return 1048576;
        }
        return min < 33554432 ? 2097152 : 4194304;
    }

    @Override // com.facebook.common.internal.m
    /* renamed from: a */
    public v get() {
        int b10 = b();
        return new v(b10, Integer.MAX_VALUE, b10, Integer.MAX_VALUE, b10 / 8, f12137c);
    }
}
