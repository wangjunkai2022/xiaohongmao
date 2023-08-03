package org.bouncycastle.jcajce.provider.asymmetric.util;

/* loaded from: classes4.dex */
public class PrimeCertaintyCalculator {
    private PrimeCertaintyCalculator() {
    }

    public static int getDefaultCertainty(int i4) {
        if (i4 <= 1024) {
            return 80;
        }
        return (((i4 - 1) / 1024) * 16) + 96;
    }
}
