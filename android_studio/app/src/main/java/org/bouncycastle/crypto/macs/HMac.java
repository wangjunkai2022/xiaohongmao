package org.bouncycastle.crypto.macs;

import java.util.Hashtable;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Memoable;
import shaded.org.apache.commons.codec.digest.f;

/* loaded from: classes4.dex */
public class HMac implements Mac {
    private static final byte IPAD = 54;
    private static final byte OPAD = 92;
    private static Hashtable blockLengths;
    private int blockLength;
    private Digest digest;
    private int digestSize;
    private byte[] inputPad;
    private Memoable ipadState;
    private Memoable opadState;
    private byte[] outputBuf;

    static {
        Hashtable hashtable = new Hashtable();
        blockLengths = hashtable;
        hashtable.put("GOST3411", Integers.valueOf(32));
        blockLengths.put(f.f93509a, Integers.valueOf(16));
        blockLengths.put("MD4", Integers.valueOf(64));
        blockLengths.put(f.f93510b, Integers.valueOf(64));
        blockLengths.put("RIPEMD128", Integers.valueOf(64));
        blockLengths.put("RIPEMD160", Integers.valueOf(64));
        blockLengths.put("SHA-1", Integers.valueOf(64));
        blockLengths.put("SHA-224", Integers.valueOf(64));
        blockLengths.put("SHA-256", Integers.valueOf(64));
        blockLengths.put("SHA-384", Integers.valueOf(128));
        blockLengths.put("SHA-512", Integers.valueOf(128));
        blockLengths.put("Tiger", Integers.valueOf(64));
        blockLengths.put("Whirlpool", Integers.valueOf(64));
    }

    public HMac(Digest digest) {
        this(digest, getByteLength(digest));
    }

    private HMac(Digest digest, int i4) {
        this.digest = digest;
        int digestSize = digest.getDigestSize();
        this.digestSize = digestSize;
        this.blockLength = i4;
        this.inputPad = new byte[i4];
        this.outputBuf = new byte[i4 + digestSize];
    }

    private static int getByteLength(Digest digest) {
        if (digest instanceof ExtendedDigest) {
            return ((ExtendedDigest) digest).getByteLength();
        }
        Integer num = (Integer) blockLengths.get(digest.getAlgorithmName());
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("unknown digest passed: " + digest.getAlgorithmName());
    }

    private static void xorPad(byte[] bArr, int i4, byte b10) {
        for (int i10 = 0; i10 < i4; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ b10);
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) {
        this.digest.doFinal(this.outputBuf, this.blockLength);
        Memoable memoable = this.opadState;
        if (memoable != null) {
            ((Memoable) this.digest).reset(memoable);
            Digest digest = this.digest;
            digest.update(this.outputBuf, this.blockLength, digest.getDigestSize());
        } else {
            Digest digest2 = this.digest;
            byte[] bArr2 = this.outputBuf;
            digest2.update(bArr2, 0, bArr2.length);
        }
        int doFinal = this.digest.doFinal(bArr, i4);
        int i10 = this.blockLength;
        while (true) {
            byte[] bArr3 = this.outputBuf;
            if (i10 >= bArr3.length) {
                break;
            }
            bArr3[i10] = 0;
            i10++;
        }
        Memoable memoable2 = this.ipadState;
        if (memoable2 != null) {
            ((Memoable) this.digest).reset(memoable2);
        } else {
            Digest digest3 = this.digest;
            byte[] bArr4 = this.inputPad;
            digest3.update(bArr4, 0, bArr4.length);
        }
        return doFinal;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.digest.getAlgorithmName() + "/HMAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.digestSize;
    }

    public Digest getUnderlyingDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        byte[] bArr;
        this.digest.reset();
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        int length = key.length;
        if (length > this.blockLength) {
            this.digest.update(key, 0, length);
            this.digest.doFinal(this.inputPad, 0);
            length = this.digestSize;
        } else {
            System.arraycopy(key, 0, this.inputPad, 0, length);
        }
        while (true) {
            bArr = this.inputPad;
            if (length >= bArr.length) {
                break;
            }
            bArr[length] = 0;
            length++;
        }
        System.arraycopy(bArr, 0, this.outputBuf, 0, this.blockLength);
        xorPad(this.inputPad, this.blockLength, IPAD);
        xorPad(this.outputBuf, this.blockLength, OPAD);
        Digest digest = this.digest;
        if (digest instanceof Memoable) {
            Memoable copy = ((Memoable) digest).copy();
            this.opadState = copy;
            ((Digest) copy).update(this.outputBuf, 0, this.blockLength);
        }
        Digest digest2 = this.digest;
        byte[] bArr2 = this.inputPad;
        digest2.update(bArr2, 0, bArr2.length);
        Digest digest3 = this.digest;
        if (digest3 instanceof Memoable) {
            this.ipadState = ((Memoable) digest3).copy();
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.digest.reset();
        Digest digest = this.digest;
        byte[] bArr = this.inputPad;
        digest.update(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) {
        this.digest.update(b10);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) {
        this.digest.update(bArr, i4, i10);
    }
}
