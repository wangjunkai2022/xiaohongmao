package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public class RC4Engine implements StreamCipher {
    private static final int STATE_LENGTH = 256;
    private byte[] engineState = null;

    /* renamed from: x  reason: collision with root package name */
    private int f91238x = 0;

    /* renamed from: y  reason: collision with root package name */
    private int f91239y = 0;
    private byte[] workingKey = null;

    private void setKey(byte[] bArr) {
        this.workingKey = bArr;
        this.f91238x = 0;
        this.f91239y = 0;
        if (this.engineState == null) {
            this.engineState = new byte[256];
        }
        for (int i4 = 0; i4 < 256; i4++) {
            this.engineState[i4] = (byte) i4;
        }
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < 256; i12++) {
            byte[] bArr2 = this.engineState;
            i11 = ((bArr[i10] & 255) + bArr2[i12] + i11) & 255;
            byte b10 = bArr2[i12];
            bArr2[i12] = bArr2[i11];
            bArr2[i11] = b10;
            i10 = (i10 + 1) % bArr.length;
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "RC4";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            byte[] key = ((KeyParameter) cipherParameters).getKey();
            this.workingKey = key;
            setKey(key);
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to RC4 init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = (this.f91238x + 1) & 255;
                    this.f91238x = i13;
                    byte[] bArr3 = this.engineState;
                    int i14 = (bArr3[i13] + this.f91239y) & 255;
                    this.f91239y = i14;
                    byte b10 = bArr3[i13];
                    bArr3[i13] = bArr3[i14];
                    bArr3[i14] = b10;
                    bArr2[i12 + i11] = (byte) (bArr3[(bArr3[i13] + bArr3[i14]) & 255] ^ bArr[i12 + i4]);
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input buffer too short");
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        setKey(this.workingKey);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        int i4 = (this.f91238x + 1) & 255;
        this.f91238x = i4;
        byte[] bArr = this.engineState;
        int i10 = (bArr[i4] + this.f91239y) & 255;
        this.f91239y = i10;
        byte b11 = bArr[i4];
        bArr[i4] = bArr[i10];
        bArr[i10] = b11;
        return (byte) (b10 ^ bArr[(bArr[i4] + bArr[i10]) & 255]);
    }
}
