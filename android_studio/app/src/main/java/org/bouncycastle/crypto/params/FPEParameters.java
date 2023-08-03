package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public final class FPEParameters implements CipherParameters {
    private final KeyParameter key;
    private final int radix;
    private final byte[] tweak;
    private final boolean useInverse;

    public FPEParameters(KeyParameter keyParameter, int i4, byte[] bArr) {
        this(keyParameter, i4, bArr, false);
    }

    public FPEParameters(KeyParameter keyParameter, int i4, byte[] bArr, boolean z9) {
        this.key = keyParameter;
        this.radix = i4;
        this.tweak = Arrays.clone(bArr);
        this.useInverse = z9;
    }

    public KeyParameter getKey() {
        return this.key;
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
