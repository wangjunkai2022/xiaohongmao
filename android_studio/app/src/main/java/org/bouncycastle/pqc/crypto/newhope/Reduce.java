package org.bouncycastle.pqc.crypto.newhope;

import kotlin.UShort;

/* loaded from: classes5.dex */
class Reduce {
    static final int QInv = 12287;
    static final int RLog = 18;
    static final int RMask = 262143;

    Reduce() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short barrett(short s9) {
        int i4 = s9 & UShort.MAX_VALUE;
        return (short) (i4 - (((i4 * 5) >>> 16) * 12289));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short montgomery(int i4) {
        return (short) (((((i4 * QInv) & RMask) * 12289) + i4) >>> 18);
    }
}
