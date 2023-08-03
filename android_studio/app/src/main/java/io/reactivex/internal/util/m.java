package io.reactivex.internal.util;

/* compiled from: Pow2.java */
/* loaded from: classes4.dex */
public final class m {
    private m() {
        throw new IllegalStateException("No instances!");
    }

    public static boolean a(int i4) {
        return (i4 & (i4 + (-1))) == 0;
    }

    public static int b(int i4) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i4 - 1));
    }
}
