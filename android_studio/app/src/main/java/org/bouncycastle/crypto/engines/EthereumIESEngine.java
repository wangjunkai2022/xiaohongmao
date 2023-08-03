package org.bouncycastle.crypto.engines;

import androidx.core.view.InputDeviceCompat;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;
import org.bouncycastle.crypto.EphemeralKeyPair;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.KeyParser;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.IESParameters;
import org.bouncycastle.crypto.params.IESWithCipherParameters;
import org.bouncycastle.crypto.params.ISO18033KDFParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class EthereumIESEngine {
    private byte[] IV;
    byte[] V;
    BasicAgreement agree;
    BufferedBlockCipher cipher;
    byte[] commonMac;
    boolean forEncryption;
    DerivationFunction kdf;
    private EphemeralKeyPairGenerator keyPairGenerator;
    private KeyParser keyParser;
    Mac mac;
    byte[] macBuf;
    IESParameters param;
    CipherParameters privParam;
    CipherParameters pubParam;

    /* loaded from: classes4.dex */
    public static class HandshakeKDFFunction implements DigestDerivationFunction {
        private int counterStart;
        private Digest digest;
        private byte[] iv;
        private byte[] shared;

        public HandshakeKDFFunction(int i4, Digest digest) {
            this.counterStart = i4;
            this.digest = digest;
        }

        @Override // org.bouncycastle.crypto.DerivationFunction
        public int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException {
            int i11 = i10;
            int i12 = i4;
            if (bArr.length - i11 >= i12) {
                long j4 = i11;
                int digestSize = this.digest.getDigestSize();
                if (j4 <= 8589934591L) {
                    long j10 = digestSize;
                    int i13 = (int) (((j4 + j10) - 1) / j10);
                    byte[] bArr2 = new byte[this.digest.getDigestSize()];
                    int i14 = 4;
                    byte[] bArr3 = new byte[4];
                    Pack.intToBigEndian(this.counterStart, bArr3, 0);
                    int i15 = this.counterStart & InputDeviceCompat.SOURCE_ANY;
                    int i16 = 0;
                    while (i16 < i13) {
                        this.digest.update(bArr3, 0, i14);
                        Digest digest = this.digest;
                        byte[] bArr4 = this.shared;
                        digest.update(bArr4, 0, bArr4.length);
                        byte[] bArr5 = this.iv;
                        if (bArr5 != null) {
                            this.digest.update(bArr5, 0, bArr5.length);
                        }
                        this.digest.doFinal(bArr2, 0);
                        if (i11 > digestSize) {
                            System.arraycopy(bArr2, 0, bArr, i12, digestSize);
                            i12 += digestSize;
                            i11 -= digestSize;
                        } else {
                            System.arraycopy(bArr2, 0, bArr, i12, i11);
                        }
                        byte b10 = (byte) (bArr3[3] + 1);
                        bArr3[3] = b10;
                        if (b10 == 0) {
                            i15 += 256;
                            Pack.intToBigEndian(i15, bArr3, 0);
                        }
                        i16++;
                        i14 = 4;
                    }
                    this.digest.reset();
                    return (int) j4;
                }
                throw new IllegalArgumentException("output length too large");
            }
            throw new OutputLengthException("output buffer too small");
        }

        @Override // org.bouncycastle.crypto.DigestDerivationFunction
        public Digest getDigest() {
            return this.digest;
        }

        @Override // org.bouncycastle.crypto.DerivationFunction
        public void init(DerivationParameters derivationParameters) {
            if (derivationParameters instanceof KDFParameters) {
                KDFParameters kDFParameters = (KDFParameters) derivationParameters;
                this.shared = kDFParameters.getSharedSecret();
                this.iv = kDFParameters.getIV();
            } else if (!(derivationParameters instanceof ISO18033KDFParameters)) {
                throw new IllegalArgumentException("KDF parameters required for generator");
            } else {
                this.shared = ((ISO18033KDFParameters) derivationParameters).getSeed();
                this.iv = null;
            }
        }
    }

    public EthereumIESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, byte[] bArr) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.commonMac = bArr;
        this.cipher = null;
    }

    public EthereumIESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, byte[] bArr, BufferedBlockCipher bufferedBlockCipher) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.commonMac = bArr;
        this.cipher = bufferedBlockCipher;
    }

    private byte[] decryptBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        byte[] bArr2;
        byte[] bArr3;
        int processBytes;
        if (i10 >= this.V.length + this.mac.getMacSize()) {
            if (this.cipher == null) {
                int length = (i10 - this.V.length) - this.mac.getMacSize();
                byte[] bArr4 = new byte[length];
                int macKeySize = this.param.getMacKeySize() / 8;
                bArr2 = new byte[macKeySize];
                int i11 = length + macKeySize;
                byte[] bArr5 = new byte[i11];
                this.kdf.generateBytes(bArr5, 0, i11);
                if (this.V.length != 0) {
                    System.arraycopy(bArr5, 0, bArr2, 0, macKeySize);
                    System.arraycopy(bArr5, macKeySize, bArr4, 0, length);
                } else {
                    System.arraycopy(bArr5, 0, bArr4, 0, length);
                    System.arraycopy(bArr5, length, bArr2, 0, macKeySize);
                }
                bArr3 = new byte[length];
                for (int i12 = 0; i12 != length; i12++) {
                    bArr3[i12] = (byte) (bArr[(this.V.length + i4) + i12] ^ bArr4[i12]);
                }
                processBytes = 0;
            } else {
                int cipherKeySize = ((IESWithCipherParameters) this.param).getCipherKeySize() / 8;
                byte[] bArr6 = new byte[cipherKeySize];
                int macKeySize2 = this.param.getMacKeySize() / 8;
                bArr2 = new byte[macKeySize2];
                int i13 = cipherKeySize + macKeySize2;
                byte[] bArr7 = new byte[i13];
                this.kdf.generateBytes(bArr7, 0, i13);
                System.arraycopy(bArr7, 0, bArr6, 0, cipherKeySize);
                System.arraycopy(bArr7, cipherKeySize, bArr2, 0, macKeySize2);
                CipherParameters keyParameter = new KeyParameter(bArr6);
                byte[] bArr8 = this.IV;
                if (bArr8 != null) {
                    keyParameter = new ParametersWithIV(keyParameter, bArr8);
                }
                this.cipher.init(false, keyParameter);
                bArr3 = new byte[this.cipher.getOutputSize((i10 - this.V.length) - this.mac.getMacSize())];
                BufferedBlockCipher bufferedBlockCipher = this.cipher;
                byte[] bArr9 = this.V;
                processBytes = bufferedBlockCipher.processBytes(bArr, i4 + bArr9.length, (i10 - bArr9.length) - this.mac.getMacSize(), bArr3, 0);
            }
            byte[] encodingV = this.param.getEncodingV();
            byte[] lengthTag = this.V.length != 0 ? getLengthTag(encodingV) : null;
            int i14 = i4 + i10;
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i14 - this.mac.getMacSize(), i14);
            int length2 = copyOfRange.length;
            byte[] bArr10 = new byte[length2];
            SHA256Digest sHA256Digest = new SHA256Digest();
            byte[] bArr11 = new byte[sHA256Digest.getDigestSize()];
            sHA256Digest.reset();
            sHA256Digest.update(bArr2, 0, bArr2.length);
            sHA256Digest.doFinal(bArr11, 0);
            this.mac.init(new KeyParameter(bArr11));
            Mac mac = this.mac;
            byte[] bArr12 = this.IV;
            mac.update(bArr12, 0, bArr12.length);
            Mac mac2 = this.mac;
            byte[] bArr13 = this.V;
            mac2.update(bArr, i4 + bArr13.length, (i10 - bArr13.length) - length2);
            if (encodingV != null) {
                this.mac.update(encodingV, 0, encodingV.length);
            }
            if (this.V.length != 0) {
                this.mac.update(lengthTag, 0, lengthTag.length);
            }
            Mac mac3 = this.mac;
            byte[] bArr14 = this.commonMac;
            mac3.update(bArr14, 0, bArr14.length);
            this.mac.doFinal(bArr10, 0);
            if (Arrays.constantTimeAreEqual(copyOfRange, bArr10)) {
                BufferedBlockCipher bufferedBlockCipher2 = this.cipher;
                return bufferedBlockCipher2 == null ? bArr3 : Arrays.copyOfRange(bArr3, 0, processBytes + bufferedBlockCipher2.doFinal(bArr3, processBytes));
            }
            throw new InvalidCipherTextException("invalid MAC");
        }
        throw new InvalidCipherTextException("length of input must be greater than the MAC and V combined");
    }

    private byte[] encryptBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        BufferedBlockCipher bufferedBlockCipher;
        CipherParameters keyParameter;
        byte[] bArr2;
        byte[] bArr3;
        if (this.cipher == null) {
            byte[] bArr4 = new byte[i10];
            int macKeySize = this.param.getMacKeySize() / 8;
            bArr3 = new byte[macKeySize];
            int i11 = i10 + macKeySize;
            byte[] bArr5 = new byte[i11];
            this.kdf.generateBytes(bArr5, 0, i11);
            if (this.V.length != 0) {
                System.arraycopy(bArr5, 0, bArr3, 0, macKeySize);
                System.arraycopy(bArr5, macKeySize, bArr4, 0, i10);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, i10);
                System.arraycopy(bArr5, i10, bArr3, 0, macKeySize);
            }
            bArr2 = new byte[i10];
            for (int i12 = 0; i12 != i10; i12++) {
                bArr2[i12] = (byte) (bArr[i4 + i12] ^ bArr4[i12]);
            }
        } else {
            int cipherKeySize = ((IESWithCipherParameters) this.param).getCipherKeySize() / 8;
            byte[] bArr6 = new byte[cipherKeySize];
            int macKeySize2 = this.param.getMacKeySize() / 8;
            byte[] bArr7 = new byte[macKeySize2];
            int i13 = cipherKeySize + macKeySize2;
            byte[] bArr8 = new byte[i13];
            this.kdf.generateBytes(bArr8, 0, i13);
            System.arraycopy(bArr8, 0, bArr6, 0, cipherKeySize);
            System.arraycopy(bArr8, cipherKeySize, bArr7, 0, macKeySize2);
            if (this.IV != null) {
                bufferedBlockCipher = this.cipher;
                keyParameter = new ParametersWithIV(new KeyParameter(bArr6), this.IV);
            } else {
                bufferedBlockCipher = this.cipher;
                keyParameter = new KeyParameter(bArr6);
            }
            bufferedBlockCipher.init(true, keyParameter);
            bArr2 = new byte[this.cipher.getOutputSize(i10)];
            int processBytes = this.cipher.processBytes(bArr, i4, i10, bArr2, 0);
            i10 = processBytes + this.cipher.doFinal(bArr2, processBytes);
            bArr3 = bArr7;
        }
        byte[] encodingV = this.param.getEncodingV();
        byte[] lengthTag = this.V.length != 0 ? getLengthTag(encodingV) : null;
        int macSize = this.mac.getMacSize();
        byte[] bArr9 = new byte[macSize];
        SHA256Digest sHA256Digest = new SHA256Digest();
        byte[] bArr10 = new byte[sHA256Digest.getDigestSize()];
        sHA256Digest.reset();
        sHA256Digest.update(bArr3, 0, bArr3.length);
        sHA256Digest.doFinal(bArr10, 0);
        this.mac.init(new KeyParameter(bArr10));
        Mac mac = this.mac;
        byte[] bArr11 = this.IV;
        mac.update(bArr11, 0, bArr11.length);
        this.mac.update(bArr2, 0, bArr2.length);
        if (encodingV != null) {
            this.mac.update(encodingV, 0, encodingV.length);
        }
        if (this.V.length != 0) {
            this.mac.update(lengthTag, 0, lengthTag.length);
        }
        Mac mac2 = this.mac;
        byte[] bArr12 = this.commonMac;
        mac2.update(bArr12, 0, bArr12.length);
        this.mac.doFinal(bArr9, 0);
        byte[] bArr13 = this.V;
        byte[] bArr14 = new byte[bArr13.length + i10 + macSize];
        System.arraycopy(bArr13, 0, bArr14, 0, bArr13.length);
        System.arraycopy(bArr2, 0, bArr14, this.V.length, i10);
        System.arraycopy(bArr9, 0, bArr14, this.V.length + i10, macSize);
        return bArr14;
    }

    private void extractParams(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.IV = parametersWithIV.getIV();
            cipherParameters = parametersWithIV.getParameters();
        } else {
            this.IV = null;
        }
        this.param = (IESParameters) cipherParameters;
    }

    public BufferedBlockCipher getCipher() {
        return this.cipher;
    }

    protected byte[] getLengthTag(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        if (bArr != null) {
            Pack.longToBigEndian(bArr.length * 8, bArr2, 0);
        }
        return bArr2;
    }

    public Mac getMac() {
        return this.mac;
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, KeyParser keyParser) {
        this.forEncryption = false;
        this.privParam = asymmetricKeyParameter;
        this.keyParser = keyParser;
        extractParams(cipherParameters);
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, EphemeralKeyPairGenerator ephemeralKeyPairGenerator) {
        this.forEncryption = true;
        this.pubParam = asymmetricKeyParameter;
        this.keyPairGenerator = ephemeralKeyPairGenerator;
        extractParams(cipherParameters);
    }

    public void init(boolean z9, CipherParameters cipherParameters, CipherParameters cipherParameters2, CipherParameters cipherParameters3) {
        this.forEncryption = z9;
        this.privParam = cipherParameters;
        this.pubParam = cipherParameters2;
        this.V = new byte[0];
        extractParams(cipherParameters3);
    }

    public byte[] processBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        if (this.forEncryption) {
            EphemeralKeyPairGenerator ephemeralKeyPairGenerator = this.keyPairGenerator;
            if (ephemeralKeyPairGenerator != null) {
                EphemeralKeyPair generate = ephemeralKeyPairGenerator.generate();
                this.privParam = generate.getKeyPair().getPrivate();
                this.V = generate.getEncodedPublicKey();
            }
        } else if (this.keyParser != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i4, i10);
            try {
                this.pubParam = this.keyParser.readKey(byteArrayInputStream);
                this.V = Arrays.copyOfRange(bArr, i4, (i10 - byteArrayInputStream.available()) + i4);
            } catch (IOException e4) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e4.getMessage(), e4);
            } catch (IllegalArgumentException e10) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e10.getMessage(), e10);
            }
        }
        this.agree.init(this.privParam);
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(this.agree.getFieldSize(), this.agree.calculateAgreement(this.pubParam));
        byte[] bArr2 = this.V;
        if (bArr2.length != 0) {
            byte[] concatenate = Arrays.concatenate(bArr2, asUnsignedByteArray);
            Arrays.fill(asUnsignedByteArray, (byte) 0);
            asUnsignedByteArray = concatenate;
        }
        try {
            this.kdf.init(new KDFParameters(asUnsignedByteArray, this.param.getDerivationV()));
            return this.forEncryption ? encryptBlock(bArr, i4, i10) : decryptBlock(bArr, i4, i10);
        } finally {
            Arrays.fill(asUnsignedByteArray, (byte) 0);
        }
    }
}
