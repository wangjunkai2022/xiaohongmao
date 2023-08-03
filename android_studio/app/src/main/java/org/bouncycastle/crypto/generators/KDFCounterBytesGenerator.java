package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFCounterParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public class KDFCounterBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] fixedInputDataCtrPrefix;
    private byte[] fixedInputData_afterCtr;
    private int generatedBytes;

    /* renamed from: h  reason: collision with root package name */
    private final int f91246h;
    private byte[] ios;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f91247k;
    private int maxSizeExcl;
    private final Mac prf;

    public KDFCounterBytesGenerator(Mac mac) {
        this.prf = mac;
        int macSize = mac.getMacSize();
        this.f91246h = macSize;
        this.f91247k = new byte[macSize];
    }

    private void generateNext() {
        int i4 = (this.generatedBytes / this.f91246h) + 1;
        byte[] bArr = this.ios;
        int length = bArr.length;
        if (length != 1) {
            if (length != 2) {
                if (length != 3) {
                    if (length != 4) {
                        throw new IllegalStateException("Unsupported size of counter i");
                    }
                    bArr[0] = (byte) (i4 >>> 24);
                }
                bArr[bArr.length - 3] = (byte) (i4 >>> 16);
            }
            bArr[bArr.length - 2] = (byte) (i4 >>> 8);
        }
        bArr[bArr.length - 1] = (byte) i4;
        Mac mac = this.prf;
        byte[] bArr2 = this.fixedInputDataCtrPrefix;
        mac.update(bArr2, 0, bArr2.length);
        Mac mac2 = this.prf;
        byte[] bArr3 = this.ios;
        mac2.update(bArr3, 0, bArr3.length);
        Mac mac3 = this.prf;
        byte[] bArr4 = this.fixedInputData_afterCtr;
        mac3.update(bArr4, 0, bArr4.length);
        this.prf.doFinal(this.f91247k, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException {
        int i11 = this.generatedBytes;
        int i12 = i11 + i10;
        if (i12 < 0 || i12 >= this.maxSizeExcl) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.maxSizeExcl + " bytes");
        }
        if (i11 % this.f91246h == 0) {
            generateNext();
        }
        int i13 = this.generatedBytes;
        int i14 = this.f91246h;
        int i15 = i13 % i14;
        int min = Math.min(i14 - (i13 % i14), i10);
        System.arraycopy(this.f91247k, i15, bArr, i4, min);
        this.generatedBytes += min;
        int i16 = i10 - min;
        while (true) {
            i4 += min;
            if (i16 <= 0) {
                return i10;
            }
            generateNext();
            min = Math.min(this.f91246h, i16);
            System.arraycopy(this.f91247k, 0, bArr, i4, min);
            this.generatedBytes += min;
            i16 -= min;
        }
    }

    @Override // org.bouncycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.prf;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFCounterParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFCounterParameters kDFCounterParameters = (KDFCounterParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFCounterParameters.getKI()));
        this.fixedInputDataCtrPrefix = kDFCounterParameters.getFixedInputDataCounterPrefix();
        this.fixedInputData_afterCtr = kDFCounterParameters.getFixedInputDataCounterSuffix();
        int r9 = kDFCounterParameters.getR();
        this.ios = new byte[r9 / 8];
        BigInteger multiply = TWO.pow(r9).multiply(BigInteger.valueOf(this.f91246h));
        this.maxSizeExcl = multiply.compareTo(INTEGER_MAX) == 1 ? Integer.MAX_VALUE : multiply.intValue();
        this.generatedBytes = 0;
    }
}
