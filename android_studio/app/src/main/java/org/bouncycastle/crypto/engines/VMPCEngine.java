package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes4.dex */
public class VMPCEngine implements StreamCipher {
    protected byte[] workingIV;
    protected byte[] workingKey;

    /* renamed from: n  reason: collision with root package name */
    protected byte f91243n = 0;
    protected byte[] P = null;

    /* renamed from: s  reason: collision with root package name */
    protected byte f91244s = 0;

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("VMPC init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("VMPC init parameters must include a key");
        }
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        byte[] iv = parametersWithIV.getIV();
        this.workingIV = iv;
        if (iv == null || iv.length < 1 || iv.length > 768) {
            throw new IllegalArgumentException("VMPC requires 1 to 768 bytes of IV");
        }
        byte[] key = keyParameter.getKey();
        this.workingKey = key;
        initKey(key, this.workingIV);
    }

    protected void initKey(byte[] bArr, byte[] bArr2) {
        this.f91244s = (byte) 0;
        this.P = new byte[256];
        for (int i4 = 0; i4 < 256; i4++) {
            this.P[i4] = (byte) i4;
        }
        for (int i10 = 0; i10 < 768; i10++) {
            byte[] bArr3 = this.P;
            int i11 = i10 & 255;
            byte b10 = bArr3[(this.f91244s + bArr3[i11] + bArr[i10 % bArr.length]) & 255];
            this.f91244s = b10;
            byte b11 = bArr3[i11];
            bArr3[i11] = bArr3[b10 & 255];
            bArr3[b10 & 255] = b11;
        }
        for (int i12 = 0; i12 < 768; i12++) {
            byte[] bArr4 = this.P;
            int i13 = i12 & 255;
            byte b12 = bArr4[(this.f91244s + bArr4[i13] + bArr2[i12 % bArr2.length]) & 255];
            this.f91244s = b12;
            byte b13 = bArr4[i13];
            bArr4[i13] = bArr4[b12 & 255];
            bArr4[b12 & 255] = b13;
        }
        this.f91243n = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                for (int i12 = 0; i12 < i10; i12++) {
                    byte[] bArr3 = this.P;
                    byte b10 = this.f91244s;
                    byte b11 = this.f91243n;
                    byte b12 = bArr3[(b10 + bArr3[b11 & 255]) & 255];
                    this.f91244s = b12;
                    byte b13 = bArr3[(bArr3[bArr3[b12 & 255] & 255] + 1) & 255];
                    byte b14 = bArr3[b11 & 255];
                    bArr3[b11 & 255] = bArr3[b12 & 255];
                    bArr3[b12 & 255] = b14;
                    this.f91243n = (byte) ((b11 + 1) & 255);
                    bArr2[i12 + i11] = (byte) (bArr[i12 + i4] ^ b13);
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input buffer too short");
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        initKey(this.workingKey, this.workingIV);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        byte[] bArr = this.P;
        byte b11 = this.f91244s;
        byte b12 = this.f91243n;
        byte b13 = bArr[(b11 + bArr[b12 & 255]) & 255];
        this.f91244s = b13;
        byte b14 = bArr[(bArr[bArr[b13 & 255] & 255] + 1) & 255];
        byte b15 = bArr[b12 & 255];
        bArr[b12 & 255] = bArr[b13 & 255];
        bArr[b13 & 255] = b15;
        this.f91243n = (byte) ((b12 + 1) & 255);
        return (byte) (b10 ^ b14);
    }
}
