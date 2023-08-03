package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFDoublePipelineIterationParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public class KDFDoublePipelineIterationBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* renamed from: a  reason: collision with root package name */
    private byte[] f91248a;
    private byte[] fixedInputData;
    private int generatedBytes;

    /* renamed from: h  reason: collision with root package name */
    private final int f91249h;
    private byte[] ios;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f91250k;
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFDoublePipelineIterationBytesGenerator(Mac mac) {
        this.prf = mac;
        int macSize = mac.getMacSize();
        this.f91249h = macSize;
        this.f91248a = new byte[macSize];
        this.f91250k = new byte[macSize];
    }

    private void generateNext() {
        if (this.generatedBytes == 0) {
            Mac mac = this.prf;
            byte[] bArr = this.fixedInputData;
            mac.update(bArr, 0, bArr.length);
            this.prf.doFinal(this.f91248a, 0);
        } else {
            Mac mac2 = this.prf;
            byte[] bArr2 = this.f91248a;
            mac2.update(bArr2, 0, bArr2.length);
            this.prf.doFinal(this.f91248a, 0);
        }
        Mac mac3 = this.prf;
        byte[] bArr3 = this.f91248a;
        mac3.update(bArr3, 0, bArr3.length);
        if (this.useCounter) {
            int i4 = (this.generatedBytes / this.f91249h) + 1;
            byte[] bArr4 = this.ios;
            int length = bArr4.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            throw new IllegalStateException("Unsupported size of counter i");
                        }
                        bArr4[0] = (byte) (i4 >>> 24);
                    }
                    bArr4[bArr4.length - 3] = (byte) (i4 >>> 16);
                }
                bArr4[bArr4.length - 2] = (byte) (i4 >>> 8);
            }
            bArr4[bArr4.length - 1] = (byte) i4;
            this.prf.update(bArr4, 0, bArr4.length);
        }
        Mac mac4 = this.prf;
        byte[] bArr5 = this.fixedInputData;
        mac4.update(bArr5, 0, bArr5.length);
        this.prf.doFinal(this.f91250k, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException {
        int i11 = this.generatedBytes;
        int i12 = i11 + i10;
        if (i12 < 0 || i12 >= this.maxSizeExcl) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.maxSizeExcl + " bytes");
        }
        if (i11 % this.f91249h == 0) {
            generateNext();
        }
        int i13 = this.generatedBytes;
        int i14 = this.f91249h;
        int i15 = i13 % i14;
        int min = Math.min(i14 - (i13 % i14), i10);
        System.arraycopy(this.f91250k, i15, bArr, i4, min);
        this.generatedBytes += min;
        int i16 = i10 - min;
        while (true) {
            i4 += min;
            if (i16 <= 0) {
                return i10;
            }
            generateNext();
            min = Math.min(this.f91249h, i16);
            System.arraycopy(this.f91250k, 0, bArr, i4, min);
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
        if (!(derivationParameters instanceof KDFDoublePipelineIterationParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFDoublePipelineIterationParameters kDFDoublePipelineIterationParameters = (KDFDoublePipelineIterationParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFDoublePipelineIterationParameters.getKI()));
        this.fixedInputData = kDFDoublePipelineIterationParameters.getFixedInputData();
        int r9 = kDFDoublePipelineIterationParameters.getR();
        this.ios = new byte[r9 / 8];
        int i4 = Integer.MAX_VALUE;
        if (kDFDoublePipelineIterationParameters.useCounter()) {
            BigInteger multiply = TWO.pow(r9).multiply(BigInteger.valueOf(this.f91249h));
            if (multiply.compareTo(INTEGER_MAX) != 1) {
                i4 = multiply.intValue();
            }
        }
        this.maxSizeExcl = i4;
        this.useCounter = kDFDoublePipelineIterationParameters.useCounter();
        this.generatedBytes = 0;
    }
}
