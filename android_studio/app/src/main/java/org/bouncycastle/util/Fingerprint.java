package org.bouncycastle.util;

import com.google.common.base.c;
import com.qennnsad.aknkaksd.util.a1;
import org.bouncycastle.crypto.digests.SHA512tDigest;
import org.bouncycastle.crypto.digests.SHAKEDigest;

/* loaded from: classes5.dex */
public class Fingerprint {
    private static char[] encodingTable = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private final byte[] fingerprint;

    public Fingerprint(byte[] bArr) {
        this(bArr, (int) a1.f54532a);
    }

    public Fingerprint(byte[] bArr, int i4) {
        this.fingerprint = calculateFingerprint(bArr, i4);
    }

    public Fingerprint(byte[] bArr, boolean z9) {
        if (z9) {
            this.fingerprint = calculateFingerprintSHA512_160(bArr);
        } else {
            this.fingerprint = calculateFingerprint(bArr);
        }
    }

    public static byte[] calculateFingerprint(byte[] bArr) {
        return calculateFingerprint(bArr, a1.f54532a);
    }

    public static byte[] calculateFingerprint(byte[] bArr, int i4) {
        if (i4 % 8 == 0) {
            SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
            sHAKEDigest.update(bArr, 0, bArr.length);
            int i10 = i4 / 8;
            byte[] bArr2 = new byte[i10];
            sHAKEDigest.doFinal(bArr2, 0, i10);
            return bArr2;
        }
        throw new IllegalArgumentException("bitLength must be a multiple of 8");
    }

    public static byte[] calculateFingerprintSHA512_160(byte[] bArr) {
        SHA512tDigest sHA512tDigest = new SHA512tDigest((int) a1.f54532a);
        sHA512tDigest.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[sHA512tDigest.getDigestSize()];
        sHA512tDigest.doFinal(bArr2, 0);
        return bArr2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Fingerprint) {
            return Arrays.areEqual(((Fingerprint) obj).fingerprint, this.fingerprint);
        }
        return false;
    }

    public byte[] getFingerprint() {
        return Arrays.clone(this.fingerprint);
    }

    public int hashCode() {
        return Arrays.hashCode(this.fingerprint);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 != this.fingerprint.length; i4++) {
            if (i4 > 0) {
                stringBuffer.append(":");
            }
            stringBuffer.append(encodingTable[(this.fingerprint[i4] >>> 4) & 15]);
            stringBuffer.append(encodingTable[this.fingerprint[i4] & c.f32110q]);
        }
        return stringBuffer.toString();
    }
}
