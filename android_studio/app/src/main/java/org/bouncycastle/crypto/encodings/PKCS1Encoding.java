package org.bouncycastle.crypto.encodings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Properties;

/* loaded from: classes4.dex */
public class PKCS1Encoding implements AsymmetricBlockCipher {
    private static final int HEADER_LENGTH = 10;
    public static final String NOT_STRICT_LENGTH_ENABLED_PROPERTY = "org.bouncycastle.pkcs1.not_strict";
    public static final String STRICT_LENGTH_ENABLED_PROPERTY = "org.bouncycastle.pkcs1.strict";
    private byte[] blockBuffer;
    private AsymmetricBlockCipher engine;
    private byte[] fallback;
    private boolean forEncryption;
    private boolean forPrivateKey;
    private int pLen;
    private SecureRandom random;
    private boolean useStrictLength;

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, int i4) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.pLen = i4;
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, byte[] bArr) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.fallback = bArr;
        this.pLen = bArr.length;
    }

    private static int checkPkcs1Encoding(byte[] bArr, int i4) {
        int i10 = 0 | (bArr[0] ^ 2);
        int i11 = i4 + 1;
        int length = bArr.length - i11;
        for (int i12 = 1; i12 < length; i12++) {
            byte b10 = bArr[i12];
            int i13 = b10 | (b10 >> 1);
            int i14 = i13 | (i13 >> 2);
            i10 |= ((i14 | (i14 >> 4)) & 1) - 1;
        }
        int i15 = bArr[bArr.length - i11] | i10;
        int i16 = i15 | (i15 >> 1);
        int i17 = i16 | (i16 >> 2);
        return ~(((i17 | (i17 >> 4)) & 1) - 1);
    }

    private byte[] decodeBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        if (this.pLen != -1) {
            return decodeBlockOrRandom(bArr, i4, i10);
        }
        byte[] processBlock = this.engine.processBlock(bArr, i4, i10);
        boolean z9 = this.useStrictLength & (processBlock.length != this.engine.getOutputBlockSize());
        if (processBlock.length < getOutputBlockSize()) {
            processBlock = this.blockBuffer;
        }
        byte b10 = processBlock[0];
        boolean z10 = !this.forPrivateKey ? b10 == 1 : b10 == 2;
        int findStart = findStart(b10, processBlock) + 1;
        if (z10 || (findStart < 10)) {
            Arrays.fill(processBlock, (byte) 0);
            throw new InvalidCipherTextException("block incorrect");
        } else if (z9) {
            Arrays.fill(processBlock, (byte) 0);
            throw new InvalidCipherTextException("block incorrect size");
        } else {
            int length = processBlock.length - findStart;
            byte[] bArr2 = new byte[length];
            System.arraycopy(processBlock, findStart, bArr2, 0, length);
            return bArr2;
        }
    }

    private byte[] decodeBlockOrRandom(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        if (!this.forPrivateKey) {
            throw new InvalidCipherTextException("sorry, this method is only for decryption, not for signing");
        }
        byte[] processBlock = this.engine.processBlock(bArr, i4, i10);
        byte[] bArr2 = this.fallback;
        if (bArr2 == null) {
            bArr2 = new byte[this.pLen];
            this.random.nextBytes(bArr2);
        }
        if (this.useStrictLength & (processBlock.length != this.engine.getOutputBlockSize())) {
            processBlock = this.blockBuffer;
        }
        int checkPkcs1Encoding = checkPkcs1Encoding(processBlock, this.pLen);
        byte[] bArr3 = new byte[this.pLen];
        int i11 = 0;
        while (true) {
            int i12 = this.pLen;
            if (i11 >= i12) {
                Arrays.fill(processBlock, (byte) 0);
                return bArr3;
            }
            bArr3[i11] = (byte) ((processBlock[(processBlock.length - i12) + i11] & (~checkPkcs1Encoding)) | (bArr2[i11] & checkPkcs1Encoding));
            i11++;
        }
    }

    private byte[] encodeBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        if (i10 <= getInputBlockSize()) {
            int inputBlockSize = this.engine.getInputBlockSize();
            byte[] bArr2 = new byte[inputBlockSize];
            if (this.forPrivateKey) {
                bArr2[0] = 1;
                for (int i11 = 1; i11 != (inputBlockSize - i10) - 1; i11++) {
                    bArr2[i11] = -1;
                }
            } else {
                this.random.nextBytes(bArr2);
                bArr2[0] = 2;
                for (int i12 = 1; i12 != (inputBlockSize - i10) - 1; i12++) {
                    while (bArr2[i12] == 0) {
                        bArr2[i12] = (byte) this.random.nextInt();
                    }
                }
            }
            int i13 = inputBlockSize - i10;
            bArr2[i13 - 1] = 0;
            System.arraycopy(bArr, i4, bArr2, i13, i10);
            return this.engine.processBlock(bArr2, 0, inputBlockSize);
        }
        throw new IllegalArgumentException("input data too large");
    }

    private int findStart(byte b10, byte[] bArr) throws InvalidCipherTextException {
        boolean z9 = false;
        int i4 = -1;
        for (int i10 = 1; i10 != bArr.length; i10++) {
            byte b11 = bArr[i10];
            if ((b11 == 0) & (i4 < 0)) {
                i4 = i10;
            }
            z9 |= (b11 != -1) & (b10 == 1) & (i4 < 0);
        }
        if (z9) {
            return -1;
        }
        return i4;
    }

    private boolean useStrict() {
        if (Properties.isOverrideSetTo(NOT_STRICT_LENGTH_ENABLED_PROPERTY, true)) {
            return false;
        }
        return !Properties.isOverrideSetTo(STRICT_LENGTH_ENABLED_PROPERTY, false);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? inputBlockSize - 10 : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : outputBlockSize - 10;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        AsymmetricKeyParameter asymmetricKeyParameter;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            asymmetricKeyParameter = (AsymmetricKeyParameter) parametersWithRandom.getParameters();
        } else {
            asymmetricKeyParameter = (AsymmetricKeyParameter) cipherParameters;
            if (!asymmetricKeyParameter.isPrivate() && z9) {
                this.random = CryptoServicesRegistrar.getSecureRandom();
            }
        }
        this.engine.init(z9, cipherParameters);
        this.forPrivateKey = asymmetricKeyParameter.isPrivate();
        this.forEncryption = z9;
        this.blockBuffer = new byte[this.engine.getOutputBlockSize()];
        if (this.pLen > 0 && this.fallback == null && this.random == null) {
            throw new IllegalArgumentException("encoder requires random");
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, i4, i10) : decodeBlock(bArr, i4, i10);
    }
}
