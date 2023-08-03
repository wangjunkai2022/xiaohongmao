package org.bouncycastle.crypto.signers;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SignerWithRecovery;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class ISO9796d2Signer implements SignerWithRecovery {
    public static final int TRAILER_IMPLICIT = 188;
    public static final int TRAILER_RIPEMD128 = 13004;
    public static final int TRAILER_RIPEMD160 = 12748;
    public static final int TRAILER_SHA1 = 13260;
    public static final int TRAILER_SHA256 = 13516;
    public static final int TRAILER_SHA384 = 14028;
    public static final int TRAILER_SHA512 = 13772;
    public static final int TRAILER_WHIRLPOOL = 14284;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest digest;
    private boolean fullMessage;
    private int keyBits;
    private byte[] mBuf;
    private int messageLength;
    private byte[] preBlock;
    private byte[] preSig;
    private byte[] recoveredMessage;
    private int trailer;

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, false);
    }

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, boolean z9) {
        int intValue;
        this.cipher = asymmetricBlockCipher;
        this.digest = digest;
        if (z9) {
            intValue = 188;
        } else {
            Integer trailer = ISOTrailers.getTrailer(digest);
            if (trailer == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
            }
            intValue = trailer.intValue();
        }
        this.trailer = intValue;
    }

    private void clearBlock(byte[] bArr) {
        for (int i4 = 0; i4 != bArr.length; i4++) {
            bArr[i4] = 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z9;
        int i4 = this.messageLength;
        byte[] bArr3 = this.mBuf;
        if (i4 > bArr3.length) {
            z9 = bArr3.length <= bArr2.length;
            for (int i10 = 0; i10 != this.mBuf.length; i10++) {
                if (bArr[i10] != bArr2[i10]) {
                    z9 = false;
                }
            }
        } else {
            z9 = i4 == bArr2.length;
            for (int i11 = 0; i11 != bArr2.length; i11++) {
                if (bArr[i11] != bArr2[i11]) {
                    z9 = false;
                }
            }
        }
        return z9;
    }

    private boolean returnFalse(byte[] bArr) {
        this.messageLength = 0;
        clearBlock(this.mBuf);
        clearBlock(bArr);
        return false;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException {
        int i4;
        int i10;
        byte b10;
        int i11;
        int digestSize = this.digest.getDigestSize();
        if (this.trailer == 188) {
            byte[] bArr = this.block;
            i10 = (bArr.length - digestSize) - 1;
            this.digest.doFinal(bArr, i10);
            byte[] bArr2 = this.block;
            bArr2[bArr2.length - 1] = PSSSigner.TRAILER_IMPLICIT;
            i4 = 8;
        } else {
            i4 = 16;
            byte[] bArr3 = this.block;
            int length = (bArr3.length - digestSize) - 2;
            this.digest.doFinal(bArr3, length);
            byte[] bArr4 = this.block;
            int i12 = this.trailer;
            bArr4[bArr4.length - 2] = (byte) (i12 >>> 8);
            bArr4[bArr4.length - 1] = (byte) i12;
            i10 = length;
        }
        int i13 = this.messageLength;
        int i14 = ((((digestSize + i13) * 8) + i4) + 4) - this.keyBits;
        if (i14 > 0) {
            int i15 = i13 - ((i14 + 7) / 8);
            b10 = 96;
            i11 = i10 - i15;
            System.arraycopy(this.mBuf, 0, this.block, i11, i15);
            this.recoveredMessage = new byte[i15];
        } else {
            b10 = k.f34876a;
            i11 = i10 - i13;
            System.arraycopy(this.mBuf, 0, this.block, i11, i13);
            this.recoveredMessage = new byte[this.messageLength];
        }
        int i16 = i11 - 1;
        if (i16 > 0) {
            for (int i17 = i16; i17 != 0; i17--) {
                this.block[i17] = a.f13999j;
            }
            byte[] bArr5 = this.block;
            bArr5[i16] = (byte) (bArr5[i16] ^ 1);
            bArr5[0] = c.f32106m;
            bArr5[0] = (byte) (bArr5[0] | b10);
        } else {
            byte[] bArr6 = this.block;
            bArr6[0] = 10;
            bArr6[0] = (byte) (bArr6[0] | b10);
        }
        AsymmetricBlockCipher asymmetricBlockCipher = this.cipher;
        byte[] bArr7 = this.block;
        byte[] processBlock = asymmetricBlockCipher.processBlock(bArr7, 0, bArr7.length);
        this.fullMessage = (b10 & 32) == 0;
        byte[] bArr8 = this.mBuf;
        byte[] bArr9 = this.recoveredMessage;
        System.arraycopy(bArr8, 0, bArr9, 0, bArr9.length);
        this.messageLength = 0;
        clearBlock(this.mBuf);
        clearBlock(this.block);
        return processBlock;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public byte[] getRecoveredMessage() {
        return this.recoveredMessage;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public boolean hasFullMessage() {
        return this.fullMessage;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z9, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) cipherParameters;
        this.cipher.init(z9, rSAKeyParameters);
        int bitLength = rSAKeyParameters.getModulus().bitLength();
        this.keyBits = bitLength;
        byte[] bArr = new byte[(bitLength + 7) / 8];
        this.block = bArr;
        int i4 = this.trailer;
        int length = bArr.length;
        if (i4 == 188) {
            this.mBuf = new byte[(length - this.digest.getDigestSize()) - 2];
        } else {
            this.mBuf = new byte[(length - this.digest.getDigestSize()) - 3];
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        clearBlock(this.mBuf);
        byte[] bArr = this.recoveredMessage;
        if (bArr != null) {
            clearBlock(bArr);
        }
        this.recoveredMessage = null;
        this.fullMessage = false;
        if (this.preSig != null) {
            this.preSig = null;
            clearBlock(this.preBlock);
            this.preBlock = null;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b10) {
        this.digest.update(b10);
        int i4 = this.messageLength;
        byte[] bArr = this.mBuf;
        if (i4 < bArr.length) {
            bArr[i4] = b10;
        }
        this.messageLength = i4 + 1;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i4, int i10) {
        while (i10 > 0 && this.messageLength < this.mBuf.length) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
        this.digest.update(bArr, i4, i10);
        this.messageLength += i10;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) throws InvalidCipherTextException {
        byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
        if (((processBlock[0] & 192) ^ 64) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        }
        if (((processBlock[processBlock.length - 1] & c.f32110q) ^ 12) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        }
        int i4 = 2;
        if (((processBlock[processBlock.length - 1] & 255) ^ 188) == 0) {
            i4 = 1;
        } else {
            int i10 = ((processBlock[processBlock.length - 2] & 255) << 8) | (processBlock[processBlock.length - 1] & 255);
            Integer trailer = ISOTrailers.getTrailer(this.digest);
            if (trailer == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            }
            int intValue = trailer.intValue();
            if (i10 != intValue && (intValue != 15052 || i10 != 16588)) {
                throw new IllegalStateException("signer initialised with wrong digest for trailer " + i10);
            }
        }
        int i11 = 0;
        while (i11 != processBlock.length && ((processBlock[i11] & c.f32110q) ^ 10) != 0) {
            i11++;
        }
        int i12 = i11 + 1;
        int length = ((processBlock.length - i4) - this.digest.getDigestSize()) - i12;
        if (length <= 0) {
            throw new InvalidCipherTextException("malformed block");
        }
        if ((processBlock[0] & 32) == 0) {
            this.fullMessage = true;
            byte[] bArr2 = new byte[length];
            this.recoveredMessage = bArr2;
            System.arraycopy(processBlock, i12, bArr2, 0, bArr2.length);
        } else {
            this.fullMessage = false;
            byte[] bArr3 = new byte[length];
            this.recoveredMessage = bArr3;
            System.arraycopy(processBlock, i12, bArr3, 0, bArr3.length);
        }
        this.preSig = bArr;
        this.preBlock = processBlock;
        Digest digest = this.digest;
        byte[] bArr4 = this.recoveredMessage;
        digest.update(bArr4, 0, bArr4.length);
        byte[] bArr5 = this.recoveredMessage;
        this.messageLength = bArr5.length;
        System.arraycopy(bArr5, 0, this.mBuf, 0, bArr5.length);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] processBlock;
        byte[] bArr2 = this.preSig;
        if (bArr2 == null) {
            try {
                processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            } catch (Exception unused) {
                return false;
            }
        } else if (!Arrays.areEqual(bArr2, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        } else {
            processBlock = this.preBlock;
            this.preSig = null;
            this.preBlock = null;
        }
        if (((processBlock[0] & 192) ^ 64) == 0 && ((processBlock[processBlock.length - 1] & c.f32110q) ^ 12) == 0) {
            int i4 = 2;
            if (((processBlock[processBlock.length - 1] & 255) ^ 188) == 0) {
                i4 = 1;
            } else {
                int i10 = ((processBlock[processBlock.length - 2] & 255) << 8) | (processBlock[processBlock.length - 1] & 255);
                Integer trailer = ISOTrailers.getTrailer(this.digest);
                if (trailer == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                }
                int intValue = trailer.intValue();
                if (i10 != intValue && (intValue != 15052 || i10 != 16588)) {
                    throw new IllegalStateException("signer initialised with wrong digest for trailer " + i10);
                }
            }
            int i11 = 0;
            while (i11 != processBlock.length && ((processBlock[i11] & c.f32110q) ^ 10) != 0) {
                i11++;
            }
            int i12 = i11 + 1;
            int digestSize = this.digest.getDigestSize();
            byte[] bArr3 = new byte[digestSize];
            int length = (processBlock.length - i4) - digestSize;
            int i13 = length - i12;
            if (i13 <= 0) {
                return returnFalse(processBlock);
            }
            if ((processBlock[0] & 32) == 0) {
                this.fullMessage = true;
                if (this.messageLength > i13) {
                    return returnFalse(processBlock);
                }
                this.digest.reset();
                this.digest.update(processBlock, i12, i13);
                this.digest.doFinal(bArr3, 0);
                boolean z9 = true;
                for (int i14 = 0; i14 != digestSize; i14++) {
                    int i15 = length + i14;
                    processBlock[i15] = (byte) (processBlock[i15] ^ bArr3[i14]);
                    if (processBlock[i15] != 0) {
                        z9 = false;
                    }
                }
                if (!z9) {
                    return returnFalse(processBlock);
                }
                byte[] bArr4 = new byte[i13];
                this.recoveredMessage = bArr4;
                System.arraycopy(processBlock, i12, bArr4, 0, bArr4.length);
            } else {
                this.fullMessage = false;
                this.digest.doFinal(bArr3, 0);
                boolean z10 = true;
                for (int i16 = 0; i16 != digestSize; i16++) {
                    int i17 = length + i16;
                    processBlock[i17] = (byte) (processBlock[i17] ^ bArr3[i16]);
                    if (processBlock[i17] != 0) {
                        z10 = false;
                    }
                }
                if (!z10) {
                    return returnFalse(processBlock);
                }
                byte[] bArr5 = new byte[i13];
                this.recoveredMessage = bArr5;
                System.arraycopy(processBlock, i12, bArr5, 0, bArr5.length);
            }
            if (this.messageLength == 0 || isSameAs(this.mBuf, this.recoveredMessage)) {
                clearBlock(this.mBuf);
                clearBlock(processBlock);
                this.messageLength = 0;
                return true;
            }
            return returnFalse(processBlock);
        }
        return returnFalse(processBlock);
    }
}
