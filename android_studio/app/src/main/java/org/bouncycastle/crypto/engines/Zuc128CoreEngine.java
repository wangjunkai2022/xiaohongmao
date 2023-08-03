package org.bouncycastle.crypto.engines;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import kotlin.UShort;
import okio.Utf8;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Memoable;

/* loaded from: classes4.dex */
public class Zuc128CoreEngine implements StreamCipher, Memoable {
    private final int[] BRC;
    private final int[] F;
    private final int[] LFSR;
    private final byte[] keyStream;
    private int theIndex;
    private int theIterations;
    private Zuc128CoreEngine theResetState;
    private static final byte[] S0 = {62, 114, 91, 71, -54, -32, 0, 51, 4, -47, 84, -104, 9, -71, 109, -53, 123, c.E, -7, 50, -81, -99, 106, -91, -72, 45, -4, c.G, 8, 83, 3, -112, 77, 78, -124, -103, -28, -50, -39, -111, -35, -74, -123, 72, -117, 41, 110, -84, -51, -63, -8, c.H, 115, 67, 105, -58, -75, -67, -3, 57, 99, 32, -44, 56, 118, 125, -78, -89, -49, -19, 87, -59, -13, 44, a.f13999j, c.f32117x, 33, 6, 85, -101, -29, a.f13998i, 94, 49, 79, Byte.MAX_VALUE, 90, -92, c.f32108o, -126, 81, 73, 95, -70, 88, c.F, 74, c.f32119z, -43, c.A, -88, -110, 36, c.I, -116, -1, -40, -82, 46, 1, -45, -83, 59, 75, -38, 70, -21, -55, -34, -102, -113, -121, -41, 58, Byte.MIN_VALUE, 111, 47, -56, -79, -76, 55, -9, 10, 34, 19, 40, 124, -52, 60, -119, -57, -61, -106, 86, 7, a.f14000k, 126, -16, c.f32106m, 43, -105, 82, 53, 65, 121, 97, -90, 76, 16, -2, PSSSigner.TRAILER_IMPLICIT, 38, -107, -120, -118, -80, -93, -5, -64, c.B, -108, -14, -31, -27, -23, 93, -48, -36, 17, 102, 100, 92, -20, 89, 66, 117, c.f32114u, -11, 116, -100, -86, 35, c.f32109p, -122, -85, -66, 42, 2, -25, 103, -26, 68, -94, 108, -62, -109, -97, -15, -10, -6, 54, -46, 80, 104, -98, 98, 113, c.f32118y, 61, -42, k.f34876a, -60, -30, c.f32110q, -114, -125, 119, 107, 37, 5, Utf8.REPLACEMENT_BYTE, c.f32107n, 48, -22, 112, -73, -95, -24, -87, 101, -115, 39, c.D, -37, -127, -77, -96, -12, 69, 122, c.C, -33, -18, 120, 52, 96};
    private static final byte[] S1 = {85, -62, 99, 113, 59, -56, 71, -122, -97, 60, -38, 91, 41, -86, -3, 119, -116, -59, -108, c.f32107n, -90, c.D, 19, 0, -29, -88, c.f32119z, 114, k.f34876a, -7, -8, 66, 68, 38, 104, -106, -127, -39, 69, 62, 16, 118, -58, -89, -117, 57, 67, -31, 58, -75, 86, 42, -64, 109, -77, 5, 34, 102, a.f14000k, -36, c.f32106m, -6, 98, 72, -35, 32, 17, 6, 54, -55, -63, -49, -10, 39, 82, a.f13999j, 105, -11, -44, -121, Byte.MAX_VALUE, -124, 76, -46, -100, 87, -92, PSSSigner.TRAILER_IMPLICIT, 79, -102, -33, -2, -42, -115, 122, -21, 43, 83, -40, 92, -95, c.f32117x, c.A, -5, 35, -43, 125, 48, 103, 115, 8, 9, -18, -73, 112, Utf8.REPLACEMENT_BYTE, 97, -78, c.C, -114, 78, -27, 75, -109, -113, 93, -37, -87, -83, -15, -82, 46, -53, c.f32108o, -4, -12, 45, 70, 110, c.G, -105, -24, -47, -23, 77, 55, -91, 117, 94, -125, -98, -85, -126, -99, -71, c.F, -32, -51, 73, -119, 1, -74, -67, 88, 36, -94, 95, 56, 120, -103, c.f32118y, -112, 80, -72, -107, -28, -48, -111, -57, -50, -19, c.f32110q, -76, 111, -96, -52, -16, 2, 74, 121, -61, -34, -93, a.f13998i, -22, 81, -26, 107, c.B, -20, c.E, 44, Byte.MIN_VALUE, -9, 116, -25, -1, 33, 90, 106, 84, c.H, 65, 49, -110, 53, -60, 51, 7, 10, -70, 126, c.f32109p, 52, -120, -79, -104, 124, -13, 61, 96, 108, 123, -54, -45, c.I, 50, 101, 4, 40, 100, -66, -123, -101, 47, 89, -118, -41, -80, 37, -84, -81, c.f32114u, 3, -30, -14};
    private static final short[] EK_d = {17623, 9916, 25195, 4958, 22409, 13794, 28981, 2479, 19832, 12051, 27588, 6897, 24102, 15437, 30874, 18348};

    /* JADX INFO: Access modifiers changed from: protected */
    public Zuc128CoreEngine() {
        this.LFSR = new int[16];
        this.F = new int[2];
        this.BRC = new int[4];
        this.keyStream = new byte[4];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Zuc128CoreEngine(Zuc128CoreEngine zuc128CoreEngine) {
        this.LFSR = new int[16];
        this.F = new int[2];
        this.BRC = new int[4];
        this.keyStream = new byte[4];
        reset(zuc128CoreEngine);
    }

    private int AddM(int i4, int i10) {
        int i11 = i4 + i10;
        return (Integer.MAX_VALUE & i11) + (i11 >>> 31);
    }

    private void BitReorganization() {
        int[] iArr = this.BRC;
        int[] iArr2 = this.LFSR;
        iArr[0] = ((iArr2[15] & 2147450880) << 1) | (iArr2[14] & 65535);
        iArr[1] = ((iArr2[11] & 65535) << 16) | (iArr2[9] >>> 15);
        iArr[2] = ((iArr2[7] & 65535) << 16) | (iArr2[5] >>> 15);
        iArr[3] = (iArr2[0] >>> 15) | ((iArr2[2] & 65535) << 16);
    }

    private static int L1(int i4) {
        return ROT(i4, 24) ^ (((ROT(i4, 2) ^ i4) ^ ROT(i4, 10)) ^ ROT(i4, 18));
    }

    private static int L2(int i4) {
        return ROT(i4, 30) ^ (((ROT(i4, 8) ^ i4) ^ ROT(i4, 14)) ^ ROT(i4, 22));
    }

    private void LFSRWithInitialisationMode(int i4) {
        int[] iArr = this.LFSR;
        int AddM = AddM(AddM(AddM(AddM(AddM(AddM(iArr[0], MulByPow2(iArr[0], 8)), MulByPow2(this.LFSR[4], 20)), MulByPow2(this.LFSR[10], 21)), MulByPow2(this.LFSR[13], 17)), MulByPow2(this.LFSR[15], 15)), i4);
        int[] iArr2 = this.LFSR;
        iArr2[0] = iArr2[1];
        iArr2[1] = iArr2[2];
        iArr2[2] = iArr2[3];
        iArr2[3] = iArr2[4];
        iArr2[4] = iArr2[5];
        iArr2[5] = iArr2[6];
        iArr2[6] = iArr2[7];
        iArr2[7] = iArr2[8];
        iArr2[8] = iArr2[9];
        iArr2[9] = iArr2[10];
        iArr2[10] = iArr2[11];
        iArr2[11] = iArr2[12];
        iArr2[12] = iArr2[13];
        iArr2[13] = iArr2[14];
        iArr2[14] = iArr2[15];
        iArr2[15] = AddM;
    }

    private void LFSRWithWorkMode() {
        int[] iArr = this.LFSR;
        int AddM = AddM(AddM(AddM(AddM(AddM(iArr[0], MulByPow2(iArr[0], 8)), MulByPow2(this.LFSR[4], 20)), MulByPow2(this.LFSR[10], 21)), MulByPow2(this.LFSR[13], 17)), MulByPow2(this.LFSR[15], 15));
        int[] iArr2 = this.LFSR;
        iArr2[0] = iArr2[1];
        iArr2[1] = iArr2[2];
        iArr2[2] = iArr2[3];
        iArr2[3] = iArr2[4];
        iArr2[4] = iArr2[5];
        iArr2[5] = iArr2[6];
        iArr2[6] = iArr2[7];
        iArr2[7] = iArr2[8];
        iArr2[8] = iArr2[9];
        iArr2[9] = iArr2[10];
        iArr2[10] = iArr2[11];
        iArr2[11] = iArr2[12];
        iArr2[12] = iArr2[13];
        iArr2[13] = iArr2[14];
        iArr2[14] = iArr2[15];
        iArr2[15] = AddM;
    }

    private static int MAKEU31(byte b10, short s9, byte b11) {
        return ((b10 & 255) << 23) | ((s9 & UShort.MAX_VALUE) << 8) | (b11 & 255);
    }

    private static int MAKEU32(byte b10, byte b11, byte b12, byte b13) {
        return ((b10 & 255) << 24) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    private static int MulByPow2(int i4, int i10) {
        return ((i4 >>> (31 - i10)) | (i4 << i10)) & Integer.MAX_VALUE;
    }

    static int ROT(int i4, int i10) {
        return (i4 >>> (32 - i10)) | (i4 << i10);
    }

    public static void encode32be(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) (i4 >> 24);
        bArr[i10 + 1] = (byte) (i4 >> 16);
        bArr[i10 + 2] = (byte) (i4 >> 8);
        bArr[i10 + 3] = (byte) i4;
    }

    private void makeKeyStream() {
        encode32be(makeKeyStreamWord(), this.keyStream, 0);
    }

    private void setKeyAndIV(byte[] bArr, byte[] bArr2) {
        setKeyAndIV(this.LFSR, bArr, bArr2);
        int[] iArr = this.F;
        iArr[0] = 0;
        iArr[1] = 0;
        int i4 = 32;
        while (true) {
            BitReorganization();
            if (i4 <= 0) {
                F();
                LFSRWithWorkMode();
                return;
            }
            LFSRWithInitialisationMode(F() >>> 1);
            i4--;
        }
    }

    int F() {
        int[] iArr = this.BRC;
        int i4 = iArr[0];
        int[] iArr2 = this.F;
        int i10 = (i4 ^ iArr2[0]) + iArr2[1];
        int i11 = iArr2[0] + iArr[1];
        int i12 = iArr[2] ^ iArr2[1];
        int L1 = L1((i11 << 16) | (i12 >>> 16));
        int L2 = L2((i12 << 16) | (i11 >>> 16));
        int[] iArr3 = this.F;
        byte[] bArr = S0;
        byte b10 = bArr[L1 >>> 24];
        byte[] bArr2 = S1;
        iArr3[0] = MAKEU32(b10, bArr2[(L1 >>> 16) & 255], bArr[(L1 >>> 8) & 255], bArr2[L1 & 255]);
        this.F[1] = MAKEU32(bArr[L2 >>> 24], bArr2[(L2 >>> 16) & 255], bArr[(L2 >>> 8) & 255], bArr2[L2 & 255]);
        return i10;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new Zuc128CoreEngine(this);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Zuc-128";
    }

    protected int getMaxIterations() {
        return 2047;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        byte[] bArr;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            bArr = parametersWithIV.getIV();
            cipherParameters = parametersWithIV.getParameters();
        } else {
            bArr = null;
        }
        byte[] key = cipherParameters instanceof KeyParameter ? ((KeyParameter) cipherParameters).getKey() : null;
        this.theIndex = 0;
        this.theIterations = 0;
        setKeyAndIV(key, bArr);
        this.theResetState = (Zuc128CoreEngine) copy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int makeKeyStreamWord() {
        int i4 = this.theIterations;
        this.theIterations = i4 + 1;
        if (i4 < getMaxIterations()) {
            BitReorganization();
            int F = F() ^ this.BRC[3];
            LFSRWithWorkMode();
            return F;
        }
        throw new IllegalStateException("Too much data processed by singleKey/IV");
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (this.theResetState == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                for (int i12 = 0; i12 < i10; i12++) {
                    bArr2[i12 + i11] = returnByte(bArr[i12 + i4]);
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        Zuc128CoreEngine zuc128CoreEngine = this.theResetState;
        if (zuc128CoreEngine != null) {
            reset(zuc128CoreEngine);
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        Zuc128CoreEngine zuc128CoreEngine = (Zuc128CoreEngine) memoable;
        int[] iArr = zuc128CoreEngine.LFSR;
        int[] iArr2 = this.LFSR;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = zuc128CoreEngine.F;
        int[] iArr4 = this.F;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        int[] iArr5 = zuc128CoreEngine.BRC;
        int[] iArr6 = this.BRC;
        System.arraycopy(iArr5, 0, iArr6, 0, iArr6.length);
        byte[] bArr = zuc128CoreEngine.keyStream;
        byte[] bArr2 = this.keyStream;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.theIndex = zuc128CoreEngine.theIndex;
        this.theIterations = zuc128CoreEngine.theIterations;
        this.theResetState = zuc128CoreEngine;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (this.theIndex == 0) {
            makeKeyStream();
        }
        byte[] bArr = this.keyStream;
        int i4 = this.theIndex;
        byte b11 = (byte) (b10 ^ bArr[i4]);
        this.theIndex = (i4 + 1) % 4;
        return b11;
    }

    protected void setKeyAndIV(int[] iArr, byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("A key of 16 bytes is needed");
        }
        if (bArr2 == null || bArr2.length != 16) {
            throw new IllegalArgumentException("An IV of 16 bytes is needed");
        }
        int[] iArr2 = this.LFSR;
        byte b10 = bArr[0];
        short[] sArr = EK_d;
        iArr2[0] = MAKEU31(b10, sArr[0], bArr2[0]);
        this.LFSR[1] = MAKEU31(bArr[1], sArr[1], bArr2[1]);
        this.LFSR[2] = MAKEU31(bArr[2], sArr[2], bArr2[2]);
        this.LFSR[3] = MAKEU31(bArr[3], sArr[3], bArr2[3]);
        this.LFSR[4] = MAKEU31(bArr[4], sArr[4], bArr2[4]);
        this.LFSR[5] = MAKEU31(bArr[5], sArr[5], bArr2[5]);
        this.LFSR[6] = MAKEU31(bArr[6], sArr[6], bArr2[6]);
        this.LFSR[7] = MAKEU31(bArr[7], sArr[7], bArr2[7]);
        this.LFSR[8] = MAKEU31(bArr[8], sArr[8], bArr2[8]);
        this.LFSR[9] = MAKEU31(bArr[9], sArr[9], bArr2[9]);
        this.LFSR[10] = MAKEU31(bArr[10], sArr[10], bArr2[10]);
        this.LFSR[11] = MAKEU31(bArr[11], sArr[11], bArr2[11]);
        this.LFSR[12] = MAKEU31(bArr[12], sArr[12], bArr2[12]);
        this.LFSR[13] = MAKEU31(bArr[13], sArr[13], bArr2[13]);
        this.LFSR[14] = MAKEU31(bArr[14], sArr[14], bArr2[14]);
        this.LFSR[15] = MAKEU31(bArr[15], sArr[15], bArr2[15]);
    }
}
