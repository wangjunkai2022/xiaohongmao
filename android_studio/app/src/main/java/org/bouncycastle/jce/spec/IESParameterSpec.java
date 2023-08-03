package org.bouncycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class IESParameterSpec implements AlgorithmParameterSpec {
    private int cipherKeySize;
    private byte[] derivation;
    private byte[] encoding;
    private int macKeySize;
    private byte[] nonce;
    private boolean usePointCompression;

    public IESParameterSpec(byte[] bArr, byte[] bArr2, int i4) {
        this(bArr, bArr2, i4, -1, null, false);
    }

    public IESParameterSpec(byte[] bArr, byte[] bArr2, int i4, int i10, byte[] bArr3) {
        this(bArr, bArr2, i4, i10, bArr3, false);
    }

    public IESParameterSpec(byte[] bArr, byte[] bArr2, int i4, int i10, byte[] bArr3, boolean z9) {
        if (bArr != null) {
            byte[] bArr4 = new byte[bArr.length];
            this.derivation = bArr4;
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        } else {
            this.derivation = null;
        }
        if (bArr2 != null) {
            byte[] bArr5 = new byte[bArr2.length];
            this.encoding = bArr5;
            System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
        } else {
            this.encoding = null;
        }
        this.macKeySize = i4;
        this.cipherKeySize = i10;
        this.nonce = Arrays.clone(bArr3);
        this.usePointCompression = z9;
    }

    public int getCipherKeySize() {
        return this.cipherKeySize;
    }

    public byte[] getDerivationV() {
        return Arrays.clone(this.derivation);
    }

    public byte[] getEncodingV() {
        return Arrays.clone(this.encoding);
    }

    public int getMacKeySize() {
        return this.macKeySize;
    }

    public byte[] getNonce() {
        return Arrays.clone(this.nonce);
    }

    public boolean getPointCompression() {
        return this.usePointCompression;
    }

    public void setPointCompression(boolean z9) {
        this.usePointCompression = z9;
    }
}
