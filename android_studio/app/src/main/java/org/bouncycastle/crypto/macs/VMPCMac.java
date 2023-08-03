package org.bouncycastle.crypto.macs;

import com.google.common.base.c;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes4.dex */
public class VMPCMac implements Mac {
    private byte[] T;

    /* renamed from: g  reason: collision with root package name */
    private byte f91282g;
    private byte[] workingIV;
    private byte[] workingKey;

    /* renamed from: x1  reason: collision with root package name */
    private byte f91285x1;

    /* renamed from: x2  reason: collision with root package name */
    private byte f91286x2;

    /* renamed from: x3  reason: collision with root package name */
    private byte f91287x3;

    /* renamed from: x4  reason: collision with root package name */
    private byte f91288x4;

    /* renamed from: n  reason: collision with root package name */
    private byte f91283n = 0;
    private byte[] P = null;

    /* renamed from: s  reason: collision with root package name */
    private byte f91284s = 0;

    private void initKey(byte[] bArr, byte[] bArr2) {
        this.f91284s = (byte) 0;
        this.P = new byte[256];
        for (int i4 = 0; i4 < 256; i4++) {
            this.P[i4] = (byte) i4;
        }
        for (int i10 = 0; i10 < 768; i10++) {
            byte[] bArr3 = this.P;
            int i11 = i10 & 255;
            byte b10 = bArr3[(this.f91284s + bArr3[i11] + bArr[i10 % bArr.length]) & 255];
            this.f91284s = b10;
            byte b11 = bArr3[i11];
            bArr3[i11] = bArr3[b10 & 255];
            bArr3[b10 & 255] = b11;
        }
        for (int i12 = 0; i12 < 768; i12++) {
            byte[] bArr4 = this.P;
            int i13 = i12 & 255;
            byte b12 = bArr4[(this.f91284s + bArr4[i13] + bArr2[i12 % bArr2.length]) & 255];
            this.f91284s = b12;
            byte b13 = bArr4[i13];
            bArr4[i13] = bArr4[b12 & 255];
            bArr4[b12 & 255] = b13;
        }
        this.f91283n = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        for (int i10 = 1; i10 < 25; i10++) {
            byte[] bArr2 = this.P;
            byte b10 = this.f91284s;
            byte b11 = this.f91283n;
            byte b12 = bArr2[(b10 + bArr2[b11 & 255]) & 255];
            this.f91284s = b12;
            byte b13 = this.f91288x4;
            byte b14 = this.f91287x3;
            byte b15 = bArr2[(b13 + b14 + i10) & 255];
            this.f91288x4 = b15;
            byte b16 = this.f91286x2;
            byte b17 = bArr2[(b14 + b16 + i10) & 255];
            this.f91287x3 = b17;
            byte b18 = this.f91285x1;
            byte b19 = bArr2[(b16 + b18 + i10) & 255];
            this.f91286x2 = b19;
            byte b20 = bArr2[(b18 + b12 + i10) & 255];
            this.f91285x1 = b20;
            byte[] bArr3 = this.T;
            byte b21 = this.f91282g;
            bArr3[b21 & c.I] = (byte) (b20 ^ bArr3[b21 & c.I]);
            bArr3[(b21 + 1) & 31] = (byte) (b19 ^ bArr3[(b21 + 1) & 31]);
            bArr3[(b21 + 2) & 31] = (byte) (b17 ^ bArr3[(b21 + 2) & 31]);
            bArr3[(b21 + 3) & 31] = (byte) (b15 ^ bArr3[(b21 + 3) & 31]);
            this.f91282g = (byte) ((b21 + 4) & 31);
            byte b22 = bArr2[b11 & 255];
            bArr2[b11 & 255] = bArr2[b12 & 255];
            bArr2[b12 & 255] = b22;
            this.f91283n = (byte) ((b11 + 1) & 255);
        }
        for (int i11 = 0; i11 < 768; i11++) {
            byte[] bArr4 = this.P;
            int i12 = i11 & 255;
            byte b23 = bArr4[(this.f91284s + bArr4[i12] + this.T[i11 & 31]) & 255];
            this.f91284s = b23;
            byte b24 = bArr4[i12];
            bArr4[i12] = bArr4[b23 & 255];
            bArr4[b23 & 255] = b24;
        }
        byte[] bArr5 = new byte[20];
        for (int i13 = 0; i13 < 20; i13++) {
            byte[] bArr6 = this.P;
            int i14 = i13 & 255;
            byte b25 = bArr6[(this.f91284s + bArr6[i14]) & 255];
            this.f91284s = b25;
            bArr5[i13] = bArr6[(bArr6[bArr6[b25 & 255] & 255] + 1) & 255];
            byte b26 = bArr6[i14];
            bArr6[i14] = bArr6[b25 & 255];
            bArr6[b25 & 255] = b26;
        }
        System.arraycopy(bArr5, 0, bArr, i4, 20);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "VMPC-MAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include a key");
        }
        byte[] iv = parametersWithIV.getIV();
        this.workingIV = iv;
        if (iv == null || iv.length < 1 || iv.length > 768) {
            throw new IllegalArgumentException("VMPC-MAC requires 1 to 768 bytes of IV");
        }
        this.workingKey = keyParameter.getKey();
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        initKey(this.workingKey, this.workingIV);
        this.f91283n = (byte) 0;
        this.f91288x4 = (byte) 0;
        this.f91287x3 = (byte) 0;
        this.f91286x2 = (byte) 0;
        this.f91285x1 = (byte) 0;
        this.f91282g = (byte) 0;
        this.T = new byte[32];
        for (int i4 = 0; i4 < 32; i4++) {
            this.T[i4] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException {
        byte[] bArr = this.P;
        byte b11 = this.f91284s;
        byte b12 = this.f91283n;
        byte b13 = bArr[(b11 + bArr[b12 & 255]) & 255];
        this.f91284s = b13;
        byte b14 = this.f91288x4;
        byte b15 = this.f91287x3;
        byte b16 = bArr[(b14 + b15) & 255];
        this.f91288x4 = b16;
        byte b17 = this.f91286x2;
        byte b18 = bArr[(b15 + b17) & 255];
        this.f91287x3 = b18;
        byte b19 = this.f91285x1;
        byte b20 = bArr[(b17 + b19) & 255];
        this.f91286x2 = b20;
        byte b21 = bArr[(b19 + b13 + ((byte) (b10 ^ bArr[(bArr[bArr[b13 & 255] & 255] + 1) & 255]))) & 255];
        this.f91285x1 = b21;
        byte[] bArr2 = this.T;
        byte b22 = this.f91282g;
        bArr2[b22 & c.I] = (byte) (b21 ^ bArr2[b22 & c.I]);
        bArr2[(b22 + 1) & 31] = (byte) (b20 ^ bArr2[(b22 + 1) & 31]);
        bArr2[(b22 + 2) & 31] = (byte) (b18 ^ bArr2[(b22 + 2) & 31]);
        bArr2[(b22 + 3) & 31] = (byte) (b16 ^ bArr2[(b22 + 3) & 31]);
        this.f91282g = (byte) ((b22 + 4) & 31);
        byte b23 = bArr[b12 & 255];
        bArr[b12 & 255] = bArr[b13 & 255];
        bArr[b13 & 255] = b23;
        this.f91283n = (byte) ((b12 + 1) & 255);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalStateException {
        if (i4 + i10 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        for (int i11 = 0; i11 < i10; i11++) {
            update(bArr[i4 + i11]);
        }
    }
}
