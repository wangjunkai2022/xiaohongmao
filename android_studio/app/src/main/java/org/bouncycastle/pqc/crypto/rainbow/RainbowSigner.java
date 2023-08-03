package org.bouncycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.rainbow.util.ComputeInField;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;

/* loaded from: classes5.dex */
public class RainbowSigner implements MessageSigner {
    private static final int MAXITS = 65536;
    private ComputeInField cf = new ComputeInField();
    RainbowKeyParameters key;
    private SecureRandom random;
    int signableDocumentLength;

    /* renamed from: x  reason: collision with root package name */
    private short[] f91560x;

    private short[] initSign(Layer[] layerArr, short[] sArr) {
        short[] sArr2 = new short[sArr.length];
        short[] multiplyMatrix = this.cf.multiplyMatrix(((RainbowPrivateKeyParameters) this.key).getInvA1(), this.cf.addVect(((RainbowPrivateKeyParameters) this.key).getB1(), sArr));
        for (int i4 = 0; i4 < layerArr[0].getVi(); i4++) {
            this.f91560x[i4] = (short) this.random.nextInt();
            short[] sArr3 = this.f91560x;
            sArr3[i4] = (short) (sArr3[i4] & 255);
        }
        return multiplyMatrix;
    }

    private short[] makeMessageRepresentative(byte[] bArr) {
        int i4 = this.signableDocumentLength;
        short[] sArr = new short[i4];
        int i10 = 0;
        int i11 = 0;
        while (i10 < bArr.length) {
            sArr[i10] = bArr[i11];
            sArr[i10] = (short) (sArr[i10] & 255);
            i11++;
            i10++;
            if (i10 >= i4) {
                break;
            }
        }
        return sArr;
    }

    private short[] verifySignatureIntern(short[] sArr) {
        short[][] coeffQuadratic = ((RainbowPublicKeyParameters) this.key).getCoeffQuadratic();
        short[][] coeffSingular = ((RainbowPublicKeyParameters) this.key).getCoeffSingular();
        short[] coeffScalar = ((RainbowPublicKeyParameters) this.key).getCoeffScalar();
        short[] sArr2 = new short[coeffQuadratic.length];
        int length = coeffSingular[0].length;
        for (int i4 = 0; i4 < coeffQuadratic.length; i4++) {
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                for (int i12 = i11; i12 < length; i12++) {
                    sArr2[i4] = GF2Field.addElem(sArr2[i4], GF2Field.multElem(coeffQuadratic[i4][i10], GF2Field.multElem(sArr[i11], sArr[i12])));
                    i10++;
                }
                sArr2[i4] = GF2Field.addElem(sArr2[i4], GF2Field.multElem(coeffSingular[i4][i11], sArr[i11]));
            }
            sArr2[i4] = GF2Field.addElem(sArr2[i4], coeffScalar[i4]);
        }
        return sArr2;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        boolean z9;
        Layer[] layers = ((RainbowPrivateKeyParameters) this.key).getLayers();
        int length = layers.length;
        this.f91560x = new short[((RainbowPrivateKeyParameters) this.key).getInvA2().length];
        int viNext = layers[length - 1].getViNext();
        byte[] bArr2 = new byte[viNext];
        short[] makeMessageRepresentative = makeMessageRepresentative(bArr);
        int i4 = 0;
        do {
            try {
                short[] initSign = initSign(layers, makeMessageRepresentative);
                int i10 = 0;
                for (int i11 = 0; i11 < length; i11++) {
                    short[] sArr = new short[layers[i11].getOi()];
                    short[] sArr2 = new short[layers[i11].getOi()];
                    for (int i12 = 0; i12 < layers[i11].getOi(); i12++) {
                        sArr[i12] = initSign[i10];
                        i10++;
                    }
                    short[] solveEquation = this.cf.solveEquation(layers[i11].plugInVinegars(this.f91560x), sArr);
                    if (solveEquation == null) {
                        throw new Exception("LES is not solveable!");
                        break;
                    }
                    for (int i13 = 0; i13 < solveEquation.length; i13++) {
                        this.f91560x[layers[i11].getVi() + i13] = solveEquation[i13];
                    }
                }
                short[] multiplyMatrix = this.cf.multiplyMatrix(((RainbowPrivateKeyParameters) this.key).getInvA2(), this.cf.addVect(((RainbowPrivateKeyParameters) this.key).getB2(), this.f91560x));
                for (int i14 = 0; i14 < viNext; i14++) {
                    bArr2[i14] = (byte) multiplyMatrix[i14];
                }
                z9 = true;
            } catch (Exception unused) {
                z9 = false;
            }
            if (z9) {
                break;
            }
            i4++;
        } while (i4 < 65536);
        if (i4 != 65536) {
            return bArr2;
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z9, CipherParameters cipherParameters) {
        RainbowKeyParameters rainbowKeyParameters;
        if (!z9) {
            rainbowKeyParameters = (RainbowPublicKeyParameters) cipherParameters;
        } else if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            this.key = (RainbowPrivateKeyParameters) parametersWithRandom.getParameters();
            this.signableDocumentLength = this.key.getDocLength();
        } else {
            this.random = CryptoServicesRegistrar.getSecureRandom();
            rainbowKeyParameters = (RainbowPrivateKeyParameters) cipherParameters;
        }
        this.key = rainbowKeyParameters;
        this.signableDocumentLength = this.key.getDocLength();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        short[] sArr = new short[bArr2.length];
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            sArr[i4] = (short) (bArr2[i4] & 255);
        }
        short[] makeMessageRepresentative = makeMessageRepresentative(bArr);
        short[] verifySignatureIntern = verifySignatureIntern(sArr);
        if (makeMessageRepresentative.length != verifySignatureIntern.length) {
            return false;
        }
        boolean z9 = true;
        for (int i10 = 0; i10 < makeMessageRepresentative.length; i10++) {
            z9 = z9 && makeMessageRepresentative[i10] == verifySignatureIntern[i10];
        }
        return z9;
    }
}
