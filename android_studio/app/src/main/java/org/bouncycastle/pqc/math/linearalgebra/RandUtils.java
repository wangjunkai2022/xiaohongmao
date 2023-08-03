package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

/* loaded from: classes5.dex */
public class RandUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int nextInt(SecureRandom secureRandom, int i4) {
        int nextInt;
        int i10;
        if (((-i4) & i4) == i4) {
            return (int) ((i4 * (secureRandom.nextInt() >>> 1)) >> 31);
        }
        do {
            nextInt = secureRandom.nextInt() >>> 1;
            i10 = nextInt % i4;
        } while ((nextInt - i10) + (i4 - 1) < 0);
        return i10;
    }
}
