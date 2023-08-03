package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class AEADParameters implements CipherParameters {
    private byte[] associatedText;
    private KeyParameter key;
    private int macSize;
    private byte[] nonce;

    public AEADParameters(KeyParameter keyParameter, int i4, byte[] bArr) {
        this(keyParameter, i4, bArr, null);
    }

    public AEADParameters(KeyParameter keyParameter, int i4, byte[] bArr, byte[] bArr2) {
        this.key = keyParameter;
        this.nonce = Arrays.clone(bArr);
        this.macSize = i4;
        this.associatedText = Arrays.clone(bArr2);
    }

    public byte[] getAssociatedText() {
        return Arrays.clone(this.associatedText);
    }

    public KeyParameter getKey() {
        return this.key;
    }

    public int getMacSize() {
        return this.macSize;
    }

    public byte[] getNonce() {
        return Arrays.clone(this.nonce);
    }
}
