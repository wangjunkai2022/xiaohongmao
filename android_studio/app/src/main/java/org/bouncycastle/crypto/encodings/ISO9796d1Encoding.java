package org.bouncycastle.crypto.encodings;

import com.google.common.base.c;
import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;

/* loaded from: classes4.dex */
public class ISO9796d1Encoding implements AsymmetricBlockCipher {
    private int bitSize;
    private AsymmetricBlockCipher engine;
    private boolean forEncryption;
    private BigInteger modulus;
    private int padBits = 0;
    private static final BigInteger SIXTEEN = BigInteger.valueOf(16);
    private static final BigInteger SIX = BigInteger.valueOf(6);
    private static byte[] shadows = {c.f32109p, 3, 5, 8, 9, 4, 2, c.f32110q, 0, c.f32108o, c.f32106m, 6, 7, 10, c.f32107n, 1};
    private static byte[] inverse = {8, c.f32110q, 6, 1, 5, 2, c.f32106m, c.f32107n, 3, 4, c.f32108o, 10, c.f32109p, 9, 0, 7};

    public ISO9796d1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.engine = asymmetricBlockCipher;
    }

    private static byte[] convertOutputDecryptOnly(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            return bArr;
        }
        return byteArray;
    }

    private byte[] decodeBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        byte[] processBlock = this.engine.processBlock(bArr, i4, i10);
        int i11 = (this.bitSize + 13) / 16;
        BigInteger bigInteger = new BigInteger(1, processBlock);
        BigInteger bigInteger2 = SIXTEEN;
        BigInteger mod = bigInteger.mod(bigInteger2);
        BigInteger bigInteger3 = SIX;
        if (!mod.equals(bigInteger3)) {
            if (!this.modulus.subtract(bigInteger).mod(bigInteger2).equals(bigInteger3)) {
                throw new InvalidCipherTextException("resulting integer iS or (modulus - iS) is not congruent to 6 mod 16");
            }
            bigInteger = this.modulus.subtract(bigInteger);
        }
        byte[] convertOutputDecryptOnly = convertOutputDecryptOnly(bigInteger);
        if ((convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] & c.f32110q) == 6) {
            convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] = (byte) (((convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] & 255) >>> 4) | (inverse[(convertOutputDecryptOnly[convertOutputDecryptOnly.length - 2] & 255) >> 4] << 4));
            byte[] bArr2 = shadows;
            convertOutputDecryptOnly[0] = (byte) (bArr2[convertOutputDecryptOnly[1] & c.f32110q] | (bArr2[(convertOutputDecryptOnly[1] & 255) >>> 4] << 4));
            int i12 = 0;
            boolean z9 = false;
            int i13 = 1;
            for (int length = convertOutputDecryptOnly.length - 1; length >= convertOutputDecryptOnly.length - (i11 * 2); length -= 2) {
                byte[] bArr3 = shadows;
                int i14 = bArr3[convertOutputDecryptOnly[length] & c.f32110q] | (bArr3[(convertOutputDecryptOnly[length] & 255) >>> 4] << 4);
                int i15 = length - 1;
                if (((convertOutputDecryptOnly[i15] ^ i14) & 255) != 0) {
                    if (z9) {
                        throw new InvalidCipherTextException("invalid tsums in block");
                    }
                    i13 = (convertOutputDecryptOnly[i15] ^ i14) & 255;
                    i12 = i15;
                    z9 = true;
                }
            }
            convertOutputDecryptOnly[i12] = 0;
            int length2 = (convertOutputDecryptOnly.length - i12) / 2;
            byte[] bArr4 = new byte[length2];
            for (int i16 = 0; i16 < length2; i16++) {
                bArr4[i16] = convertOutputDecryptOnly[(i16 * 2) + i12 + 1];
            }
            this.padBits = i13 - 1;
            return bArr4;
        }
        throw new InvalidCipherTextException("invalid forcing byte in block");
    }

    private byte[] encodeBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        int i11 = this.bitSize;
        int i12 = (i11 + 7) / 8;
        byte[] bArr2 = new byte[i12];
        int i13 = 1;
        int i14 = this.padBits + 1;
        int i15 = (i11 + 13) / 16;
        int i16 = 0;
        while (i16 < i15) {
            if (i16 > i15 - i10) {
                int i17 = i15 - i16;
                System.arraycopy(bArr, (i4 + i10) - i17, bArr2, i12 - i15, i17);
            } else {
                System.arraycopy(bArr, i4, bArr2, i12 - (i16 + i10), i10);
            }
            i16 += i10;
        }
        for (int i18 = i12 - (i15 * 2); i18 != i12; i18 += 2) {
            byte b10 = bArr2[(i12 - i15) + (i18 / 2)];
            byte[] bArr3 = shadows;
            bArr2[i18] = (byte) (bArr3[b10 & c.f32110q] | (bArr3[(b10 & 255) >>> 4] << 4));
            bArr2[i18 + 1] = b10;
        }
        int i19 = i12 - (i10 * 2);
        bArr2[i19] = (byte) (bArr2[i19] ^ i14);
        int i20 = i12 - 1;
        bArr2[i20] = (byte) ((bArr2[i20] << 4) | 6);
        int i21 = 8 - ((this.bitSize - 1) % 8);
        if (i21 != 8) {
            bArr2[0] = (byte) (bArr2[0] & (255 >>> i21));
            bArr2[0] = (byte) ((128 >>> i21) | bArr2[0]);
            i13 = 0;
        } else {
            bArr2[0] = 0;
            bArr2[1] = (byte) (bArr2[1] | 128);
        }
        return this.engine.processBlock(bArr2, i13, i12 - i13);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? (inputBlockSize + 1) / 2 : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : (outputBlockSize + 1) / 2;
    }

    public int getPadBits() {
        return this.padBits;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = cipherParameters instanceof ParametersWithRandom ? (RSAKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters() : (RSAKeyParameters) cipherParameters;
        this.engine.init(z9, cipherParameters);
        BigInteger modulus = rSAKeyParameters.getModulus();
        this.modulus = modulus;
        this.bitSize = modulus.bitLength();
        this.forEncryption = z9;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, i4, i10) : decodeBlock(bArr, i4, i10);
    }

    public void setPadBits(int i4) {
        if (i4 > 7) {
            throw new IllegalArgumentException("padBits > 7");
        }
        this.padBits = i4;
    }
}
