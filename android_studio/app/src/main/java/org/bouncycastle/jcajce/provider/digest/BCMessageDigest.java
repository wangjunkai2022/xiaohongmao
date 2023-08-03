package org.bouncycastle.jcajce.provider.digest;

import java.security.DigestException;
import java.security.MessageDigest;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes4.dex */
public class BCMessageDigest extends MessageDigest {
    protected Digest digest;
    protected int digestSize;

    /* JADX INFO: Access modifiers changed from: protected */
    public BCMessageDigest(Digest digest) {
        super(digest.getAlgorithmName());
        this.digest = digest;
        this.digestSize = digest.getDigestSize();
    }

    @Override // java.security.MessageDigestSpi
    public int engineDigest(byte[] bArr, int i4, int i10) throws DigestException {
        int i11 = this.digestSize;
        if (i10 >= i11) {
            if (bArr.length - i4 >= i11) {
                this.digest.doFinal(bArr, i4);
                return this.digestSize;
            }
            throw new DigestException("insufficient space in the output buffer to store the digest");
        }
        throw new DigestException("partial digests not returned");
    }

    @Override // java.security.MessageDigestSpi
    public byte[] engineDigest() {
        byte[] bArr = new byte[this.digestSize];
        this.digest.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.security.MessageDigestSpi
    public int engineGetDigestLength() {
        return this.digestSize;
    }

    @Override // java.security.MessageDigestSpi
    public void engineReset() {
        this.digest.reset();
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte b10) {
        this.digest.update(b10);
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte[] bArr, int i4, int i10) {
        this.digest.update(bArr, i4, i10);
    }
}
