package org.bouncycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.prng.DigestRandomGenerator;
import org.bouncycastle.pqc.crypto.MessageEncryptor;
import org.bouncycastle.pqc.math.linearalgebra.ByteUtils;
import org.bouncycastle.pqc.math.linearalgebra.GF2Vector;

/* loaded from: classes5.dex */
public class McEliecePointchevalCipher implements MessageEncryptor {
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.4.2.2";
    private boolean forEncryption;

    /* renamed from: k  reason: collision with root package name */
    private int f91545k;
    McElieceCCA2KeyParameters key;
    private Digest messDigest;

    /* renamed from: n  reason: collision with root package name */
    private int f91546n;
    private SecureRandom sr;

    /* renamed from: t  reason: collision with root package name */
    private int f91547t;

    private void initCipherDecrypt(McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters) {
        this.messDigest = Utils.getDigest(mcElieceCCA2PrivateKeyParameters.getDigest());
        this.f91546n = mcElieceCCA2PrivateKeyParameters.getN();
        this.f91545k = mcElieceCCA2PrivateKeyParameters.getK();
        this.f91547t = mcElieceCCA2PrivateKeyParameters.getT();
    }

    private void initCipherEncrypt(McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters) {
        this.messDigest = Utils.getDigest(mcElieceCCA2PublicKeyParameters.getDigest());
        this.f91546n = mcElieceCCA2PublicKeyParameters.getN();
        this.f91545k = mcElieceCCA2PublicKeyParameters.getK();
        this.f91547t = mcElieceCCA2PublicKeyParameters.getT();
    }

    protected int decryptOutputSize(int i4) {
        return 0;
    }

    protected int encryptOutputSize(int i4) {
        return 0;
    }

    public int getKeySize(McElieceCCA2KeyParameters mcElieceCCA2KeyParameters) throws IllegalArgumentException {
        if (mcElieceCCA2KeyParameters instanceof McElieceCCA2PublicKeyParameters) {
            return ((McElieceCCA2PublicKeyParameters) mcElieceCCA2KeyParameters).getN();
        }
        if (mcElieceCCA2KeyParameters instanceof McElieceCCA2PrivateKeyParameters) {
            return ((McElieceCCA2PrivateKeyParameters) mcElieceCCA2KeyParameters).getN();
        }
        throw new IllegalArgumentException("unsupported type");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public void init(boolean z9, CipherParameters cipherParameters) {
        this.forEncryption = z9;
        if (!z9) {
            McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters = (McElieceCCA2PrivateKeyParameters) cipherParameters;
            this.key = mcElieceCCA2PrivateKeyParameters;
            initCipherDecrypt(mcElieceCCA2PrivateKeyParameters);
        } else if (!(cipherParameters instanceof ParametersWithRandom)) {
            this.sr = CryptoServicesRegistrar.getSecureRandom();
            McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters = (McElieceCCA2PublicKeyParameters) cipherParameters;
            this.key = mcElieceCCA2PublicKeyParameters;
            initCipherEncrypt(mcElieceCCA2PublicKeyParameters);
        } else {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.sr = parametersWithRandom.getRandom();
            McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters2 = (McElieceCCA2PublicKeyParameters) parametersWithRandom.getParameters();
            this.key = mcElieceCCA2PublicKeyParameters2;
            initCipherEncrypt(mcElieceCCA2PublicKeyParameters2);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageDecrypt(byte[] bArr) throws InvalidCipherTextException {
        if (this.forEncryption) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i4 = (this.f91546n + 7) >> 3;
        int length = bArr.length - i4;
        byte[][] split = ByteUtils.split(bArr, i4);
        byte[] bArr2 = split[0];
        byte[] bArr3 = split[1];
        GF2Vector[] decryptionPrimitive = McElieceCCA2Primitives.decryptionPrimitive((McElieceCCA2PrivateKeyParameters) this.key, GF2Vector.OS2VP(this.f91546n, bArr2));
        byte[] encoded = decryptionPrimitive[0].getEncoded();
        GF2Vector gF2Vector = decryptionPrimitive[1];
        DigestRandomGenerator digestRandomGenerator = new DigestRandomGenerator(new SHA1Digest());
        digestRandomGenerator.addSeedMaterial(encoded);
        byte[] bArr4 = new byte[length];
        digestRandomGenerator.nextBytes(bArr4);
        for (int i10 = 0; i10 < length; i10++) {
            bArr4[i10] = (byte) (bArr4[i10] ^ bArr3[i10]);
        }
        this.messDigest.update(bArr4, 0, length);
        byte[] bArr5 = new byte[this.messDigest.getDigestSize()];
        this.messDigest.doFinal(bArr5, 0);
        if (Conversions.encode(this.f91546n, this.f91547t, bArr5).equals(gF2Vector)) {
            return ByteUtils.split(bArr4, length - (this.f91545k >> 3))[0];
        }
        throw new InvalidCipherTextException("Bad Padding: Invalid ciphertext.");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageEncrypt(byte[] bArr) {
        if (this.forEncryption) {
            int i4 = this.f91545k >> 3;
            byte[] bArr2 = new byte[i4];
            this.sr.nextBytes(bArr2);
            GF2Vector gF2Vector = new GF2Vector(this.f91545k, this.sr);
            byte[] encoded = gF2Vector.getEncoded();
            byte[] concatenate = ByteUtils.concatenate(bArr, bArr2);
            this.messDigest.update(concatenate, 0, concatenate.length);
            byte[] bArr3 = new byte[this.messDigest.getDigestSize()];
            this.messDigest.doFinal(bArr3, 0);
            byte[] encoded2 = McElieceCCA2Primitives.encryptionPrimitive((McElieceCCA2PublicKeyParameters) this.key, gF2Vector, Conversions.encode(this.f91546n, this.f91547t, bArr3)).getEncoded();
            DigestRandomGenerator digestRandomGenerator = new DigestRandomGenerator(new SHA1Digest());
            digestRandomGenerator.addSeedMaterial(encoded);
            byte[] bArr4 = new byte[bArr.length + i4];
            digestRandomGenerator.nextBytes(bArr4);
            for (int i10 = 0; i10 < bArr.length; i10++) {
                bArr4[i10] = (byte) (bArr4[i10] ^ bArr[i10]);
            }
            for (int i11 = 0; i11 < i4; i11++) {
                int length = bArr.length + i11;
                bArr4[length] = (byte) (bArr4[length] ^ bArr2[i11]);
            }
            return ByteUtils.concatenate(encoded2, bArr4);
        }
        throw new IllegalStateException("cipher initialised for decryption");
    }
}
