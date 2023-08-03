package org.bouncycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class FPEParameterSpec implements AlgorithmParameterSpec {
    private final int radix;
    private final byte[] tweak;
    private final boolean useInverse;

    public FPEParameterSpec(int i4, byte[] bArr) {
        this(i4, bArr, false);
    }

    public FPEParameterSpec(int i4, byte[] bArr, boolean z9) {
        this.radix = i4;
        this.tweak = Arrays.clone(bArr);
        this.useInverse = z9;
    }

    public int getRadix() {
        return this.radix;
    }

    public byte[] getTweak() {
        return Arrays.clone(this.tweak);
    }

    public boolean isUsingInverseFunction() {
        return this.useInverse;
    }
}
