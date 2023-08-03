package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class KeyedHashFunctions {
    private final Digest digest;
    private final int digestSize;

    /* JADX INFO: Access modifiers changed from: protected */
    public KeyedHashFunctions(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i4) {
        Objects.requireNonNull(aSN1ObjectIdentifier, "digest == null");
        this.digest = DigestUtil.getDigest(aSN1ObjectIdentifier);
        this.digestSize = i4;
    }

    private byte[] coreDigest(int i4, byte[] bArr, byte[] bArr2) {
        byte[] bytesBigEndian = XMSSUtil.toBytesBigEndian(i4, this.digestSize);
        this.digest.update(bytesBigEndian, 0, bytesBigEndian.length);
        this.digest.update(bArr, 0, bArr.length);
        this.digest.update(bArr2, 0, bArr2.length);
        int i10 = this.digestSize;
        byte[] bArr3 = new byte[i10];
        Digest digest = this.digest;
        if (digest instanceof Xof) {
            ((Xof) digest).doFinal(bArr3, 0, i10);
        } else {
            digest.doFinal(bArr3, 0);
        }
        return bArr3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] F(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i4 = this.digestSize;
        if (length == i4) {
            if (bArr2.length == i4) {
                return coreDigest(0, bArr, bArr2);
            }
            throw new IllegalArgumentException("wrong in length");
        }
        throw new IllegalArgumentException("wrong key length");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] H(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i4 = this.digestSize;
        if (length == i4) {
            if (bArr2.length == i4 * 2) {
                return coreDigest(1, bArr, bArr2);
            }
            throw new IllegalArgumentException("wrong in length");
        }
        throw new IllegalArgumentException("wrong key length");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] HMsg(byte[] bArr, byte[] bArr2) {
        if (bArr.length == this.digestSize * 3) {
            return coreDigest(2, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong key length");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] PRF(byte[] bArr, byte[] bArr2) {
        if (bArr.length == this.digestSize) {
            if (bArr2.length == 32) {
                return coreDigest(3, bArr, bArr2);
            }
            throw new IllegalArgumentException("wrong address length");
        }
        throw new IllegalArgumentException("wrong key length");
    }
}
