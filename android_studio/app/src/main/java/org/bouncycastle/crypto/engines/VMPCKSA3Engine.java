package org.bouncycastle.crypto.engines;

/* loaded from: classes4.dex */
public class VMPCKSA3Engine extends VMPCEngine {
    @Override // org.bouncycastle.crypto.engines.VMPCEngine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC-KSA3";
    }

    @Override // org.bouncycastle.crypto.engines.VMPCEngine
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
        for (int i14 = 0; i14 < 768; i14++) {
            byte[] bArr5 = this.P;
            int i15 = i14 & 255;
            byte b14 = bArr5[(this.f91244s + bArr5[i15] + bArr[i14 % bArr.length]) & 255];
            this.f91244s = b14;
            byte b15 = bArr5[i15];
            bArr5[i15] = bArr5[b14 & 255];
            bArr5[b14 & 255] = b15;
        }
        this.f91243n = (byte) 0;
    }
}
