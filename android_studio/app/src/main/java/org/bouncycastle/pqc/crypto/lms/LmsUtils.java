package org.bouncycastle.pqc.crypto.lms;

import java.util.Objects;
import org.bouncycastle.crypto.Digest;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class LmsUtils {
    LmsUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void byteArray(byte[] bArr, int i4, int i10, Digest digest) {
        digest.update(bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void byteArray(byte[] bArr, Digest digest) {
        digest.update(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calculateStrength(LMSParameters lMSParameters) {
        Objects.requireNonNull(lMSParameters, "lmsParameters cannot be null");
        LMSigParameters lMSigParam = lMSParameters.getLMSigParam();
        return (1 << lMSigParam.getH()) * lMSigParam.getM();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void u16str(short s9, Digest digest) {
        digest.update((byte) (s9 >>> 8));
        digest.update((byte) s9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void u32str(int i4, Digest digest) {
        digest.update((byte) (i4 >>> 24));
        digest.update((byte) (i4 >>> 16));
        digest.update((byte) (i4 >>> 8));
        digest.update((byte) i4);
    }
}
