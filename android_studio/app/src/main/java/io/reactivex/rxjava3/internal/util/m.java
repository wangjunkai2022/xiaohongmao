package io.reactivex.rxjava3.internal.util;

/* compiled from: Pow2.java */
/* loaded from: classes4.dex */
public final class m {
    private m() {
        throw new IllegalStateException("No instances!");
    }

    public static boolean a(final int value) {
        return (value & (value + (-1))) == 0;
    }

    public static int b(final int value) {
        return 1 << (32 - Integer.numberOfLeadingZeros(value - 1));
    }
}
