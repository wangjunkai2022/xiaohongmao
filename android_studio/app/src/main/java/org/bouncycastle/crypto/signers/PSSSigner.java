package org.bouncycastle.crypto.signers;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSABlindingParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class PSSSigner implements Signer {
    public static final byte TRAILER_IMPLICIT = -68;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest contentDigest;
    private int emBits;
    private int hLen;
    private byte[] mDash;
    private Digest mgfDigest;
    private int mgfhLen;
    private SecureRandom random;
    private int sLen;
    private boolean sSet;
    private byte[] salt;
    private byte trailer;

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i4) {
        this(asymmetricBlockCipher, digest, i4, (byte) TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i4, byte b10) {
        this(asymmetricBlockCipher, digest, digest, i4, b10);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i4) {
        this(asymmetricBlockCipher, digest, digest2, i4, (byte) TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i4, byte b10) {
        this.cipher = asymmetricBlockCipher;
        this.contentDigest = digest;
        this.mgfDigest = digest2;
        this.hLen = digest.getDigestSize();
        this.mgfhLen = digest2.getDigestSize();
        this.sSet = false;
        this.sLen = i4;
        this.salt = new byte[i4];
        this.mDash = new byte[i4 + 8 + this.hLen];
        this.trailer = b10;
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest2, bArr, (byte) TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr, byte b10) {
        this.cipher = asymmetricBlockCipher;
        this.contentDigest = digest;
        this.mgfDigest = digest2;
        this.hLen = digest.getDigestSize();
        this.mgfhLen = digest2.getDigestSize();
        this.sSet = true;
        int length = bArr.length;
        this.sLen = length;
        this.salt = bArr;
        this.mDash = new byte[length + 8 + this.hLen];
        this.trailer = b10;
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest, bArr, (byte) TRAILER_IMPLICIT);
    }

    private void ItoOSP(int i4, byte[] bArr) {
        bArr[0] = (byte) (i4 >>> 24);
        bArr[1] = (byte) (i4 >>> 16);
        bArr[2] = (byte) (i4 >>> 8);
        bArr[3] = (byte) (i4 >>> 0);
    }

    private void clearBlock(byte[] bArr) {
        for (int i4 = 0; i4 != bArr.length; i4++) {
            bArr[i4] = 0;
        }
    }

    private byte[] maskGenerator(byte[] bArr, int i4, int i10, int i11) {
        Digest digest = this.mgfDigest;
        if (digest instanceof Xof) {
            byte[] bArr2 = new byte[i11];
            digest.update(bArr, i4, i10);
            ((Xof) this.mgfDigest).doFinal(bArr2, 0, i11);
            return bArr2;
        }
        return maskGeneratorFunction1(bArr, i4, i10, i11);
    }

    private byte[] maskGeneratorFunction1(byte[] bArr, int i4, int i10, int i11) {
        int i12;
        byte[] bArr2 = new byte[i11];
        byte[] bArr3 = new byte[this.mgfhLen];
        byte[] bArr4 = new byte[4];
        this.mgfDigest.reset();
        int i13 = 0;
        while (true) {
            i12 = this.mgfhLen;
            if (i13 >= i11 / i12) {
                break;
            }
            ItoOSP(i13, bArr4);
            this.mgfDigest.update(bArr, i4, i10);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int i14 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, i13 * i14, i14);
            i13++;
        }
        if (i12 * i13 < i11) {
            ItoOSP(i13, bArr4);
            this.mgfDigest.update(bArr, i4, i10);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int i15 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, i13 * i15, i11 - (i13 * i15));
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException, DataLengthException {
        Digest digest = this.contentDigest;
        byte[] bArr = this.mDash;
        digest.doFinal(bArr, (bArr.length - this.hLen) - this.sLen);
        if (this.sLen != 0) {
            if (!this.sSet) {
                this.random.nextBytes(this.salt);
            }
            byte[] bArr2 = this.salt;
            byte[] bArr3 = this.mDash;
            int length = bArr3.length;
            int i4 = this.sLen;
            System.arraycopy(bArr2, 0, bArr3, length - i4, i4);
        }
        int i10 = this.hLen;
        byte[] bArr4 = new byte[i10];
        Digest digest2 = this.contentDigest;
        byte[] bArr5 = this.mDash;
        digest2.update(bArr5, 0, bArr5.length);
        this.contentDigest.doFinal(bArr4, 0);
        byte[] bArr6 = this.block;
        int length2 = bArr6.length;
        int i11 = this.sLen;
        int i12 = this.hLen;
        bArr6[(((length2 - i11) - 1) - i12) - 1] = 1;
        System.arraycopy(this.salt, 0, bArr6, ((bArr6.length - i11) - i12) - 1, i11);
        byte[] maskGenerator = maskGenerator(bArr4, 0, i10, (this.block.length - this.hLen) - 1);
        for (int i13 = 0; i13 != maskGenerator.length; i13++) {
            byte[] bArr7 = this.block;
            bArr7[i13] = (byte) (bArr7[i13] ^ maskGenerator[i13]);
        }
        byte[] bArr8 = this.block;
        int length3 = bArr8.length;
        int i14 = this.hLen;
        System.arraycopy(bArr4, 0, bArr8, (length3 - i14) - 1, i14);
        byte[] bArr9 = this.block;
        bArr9[0] = (byte) ((255 >>> ((bArr9.length * 8) - this.emBits)) & bArr9[0]);
        bArr9[bArr9.length - 1] = this.trailer;
        byte[] processBlock = this.cipher.processBlock(bArr9, 0, bArr9.length);
        clearBlock(this.block);
        return processBlock;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z9, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2;
        RSAKeyParameters rSAKeyParameters;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            cipherParameters2 = parametersWithRandom.getParameters();
            this.random = parametersWithRandom.getRandom();
        } else {
            if (z9) {
                this.random = CryptoServicesRegistrar.getSecureRandom();
            }
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof RSABlindingParameters) {
            rSAKeyParameters = ((RSABlindingParameters) cipherParameters2).getPublicKey();
            this.cipher.init(z9, cipherParameters);
        } else {
            rSAKeyParameters = (RSAKeyParameters) cipherParameters2;
            this.cipher.init(z9, cipherParameters2);
        }
        int bitLength = rSAKeyParameters.getModulus().bitLength() - 1;
        this.emBits = bitLength;
        if (bitLength < (this.hLen * 8) + (this.sLen * 8) + 9) {
            throw new IllegalArgumentException("key too small for specified hash and salt lengths");
        }
        this.block = new byte[(bitLength + 7) / 8];
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.contentDigest.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b10) {
        this.contentDigest.update(b10);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i4, int i10) {
        this.contentDigest.update(bArr, i4, i10);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArr2;
        int length;
        Digest digest = this.contentDigest;
        byte[] bArr3 = this.mDash;
        digest.doFinal(bArr3, (bArr3.length - this.hLen) - this.sLen);
        try {
            byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            byte[] bArr4 = this.block;
            Arrays.fill(bArr4, 0, bArr4.length - processBlock.length, (byte) 0);
            byte[] bArr5 = this.block;
            System.arraycopy(processBlock, 0, bArr5, bArr5.length - processBlock.length, processBlock.length);
            bArr2 = this.block;
            length = 255 >>> ((bArr2.length * 8) - this.emBits);
        } catch (Exception unused) {
        }
        if ((255 & bArr2[0]) != (bArr2[0] & length) || bArr2[bArr2.length - 1] != this.trailer) {
            clearBlock(bArr2);
            return false;
        }
        int length2 = bArr2.length;
        int i4 = this.hLen;
        byte[] maskGenerator = maskGenerator(bArr2, (length2 - i4) - 1, i4, (bArr2.length - i4) - 1);
        for (int i10 = 0; i10 != maskGenerator.length; i10++) {
            byte[] bArr6 = this.block;
            bArr6[i10] = (byte) (bArr6[i10] ^ maskGenerator[i10]);
        }
        byte[] bArr7 = this.block;
        bArr7[0] = (byte) (length & bArr7[0]);
        int i11 = 0;
        while (true) {
            byte[] bArr8 = this.block;
            int length3 = bArr8.length;
            int i12 = this.hLen;
            int i13 = this.sLen;
            if (i11 != ((length3 - i12) - i13) - 2) {
                if (bArr8[i11] != 0) {
                    clearBlock(bArr8);
                    return false;
                }
                i11++;
            } else if (bArr8[((bArr8.length - i12) - i13) - 2] != 1) {
                clearBlock(bArr8);
                return false;
            } else {
                if (this.sSet) {
                    byte[] bArr9 = this.salt;
                    byte[] bArr10 = this.mDash;
                    System.arraycopy(bArr9, 0, bArr10, bArr10.length - i13, i13);
                } else {
                    byte[] bArr11 = this.mDash;
                    System.arraycopy(bArr8, ((bArr8.length - i13) - i12) - 1, bArr11, bArr11.length - i13, i13);
                }
                Digest digest2 = this.contentDigest;
                byte[] bArr12 = this.mDash;
                digest2.update(bArr12, 0, bArr12.length);
                Digest digest3 = this.contentDigest;
                byte[] bArr13 = this.mDash;
                digest3.doFinal(bArr13, bArr13.length - this.hLen);
                int length4 = this.block.length;
                int i14 = this.hLen;
                int i15 = (length4 - i14) - 1;
                int length5 = this.mDash.length - i14;
                while (true) {
                    byte[] bArr14 = this.mDash;
                    if (length5 == bArr14.length) {
                        clearBlock(bArr14);
                        clearBlock(this.block);
                        return true;
                    } else if ((this.block[i15] ^ bArr14[length5]) != 0) {
                        clearBlock(bArr14);
                        clearBlock(this.block);
                        return false;
                    } else {
                        i15++;
                        length5++;
                    }
                }
            }
        }
    }
}
