package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface Xof extends ExtendedDigest {
    int doFinal(byte[] bArr, int i4, int i10);

    int doOutput(byte[] bArr, int i4, int i10);
}
