package org.bouncycastle.pqc.crypto.sphincsplus;

/* loaded from: classes5.dex */
class SK {
    final byte[] prf;
    final byte[] seed;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SK(byte[] bArr, byte[] bArr2) {
        this.seed = bArr;
        this.prf = bArr2;
    }
}
