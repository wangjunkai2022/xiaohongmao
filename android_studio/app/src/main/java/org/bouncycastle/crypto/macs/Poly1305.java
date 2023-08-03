package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Poly1305 implements Mac {
    private static final int BLOCK_SIZE = 16;
    private final BlockCipher cipher;
    private final byte[] currentBlock;
    private int currentBlockOffset;

    /* renamed from: h0  reason: collision with root package name */
    private int f91256h0;

    /* renamed from: h1  reason: collision with root package name */
    private int f91257h1;

    /* renamed from: h2  reason: collision with root package name */
    private int f91258h2;

    /* renamed from: h3  reason: collision with root package name */
    private int f91259h3;
    private int h4;

    /* renamed from: k0  reason: collision with root package name */
    private int f91260k0;

    /* renamed from: k1  reason: collision with root package name */
    private int f91261k1;

    /* renamed from: k2  reason: collision with root package name */
    private int f91262k2;

    /* renamed from: k3  reason: collision with root package name */
    private int f91263k3;

    /* renamed from: r0  reason: collision with root package name */
    private int f91264r0;

    /* renamed from: r1  reason: collision with root package name */
    private int f91265r1;

    /* renamed from: r2  reason: collision with root package name */
    private int f91266r2;

    /* renamed from: r3  reason: collision with root package name */
    private int f91267r3;

    /* renamed from: r4  reason: collision with root package name */
    private int f91268r4;

    /* renamed from: s1  reason: collision with root package name */
    private int f91269s1;

    /* renamed from: s2  reason: collision with root package name */
    private int f91270s2;

    /* renamed from: s3  reason: collision with root package name */
    private int f91271s3;

    /* renamed from: s4  reason: collision with root package name */
    private int f91272s4;
    private final byte[] singleByte;

    public Poly1305() {
        this.singleByte = new byte[1];
        this.currentBlock = new byte[16];
        this.currentBlockOffset = 0;
        this.cipher = null;
    }

    public Poly1305(BlockCipher blockCipher) {
        this.singleByte = new byte[1];
        this.currentBlock = new byte[16];
        this.currentBlockOffset = 0;
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit block cipher.");
        }
        this.cipher = blockCipher;
    }

    private static final long mul32x32_64(int i4, int i10) {
        return (i4 & 4294967295L) * i10;
    }

    private void processBlock() {
        int i4 = this.currentBlockOffset;
        if (i4 < 16) {
            this.currentBlock[i4] = 1;
            for (int i10 = i4 + 1; i10 < 16; i10++) {
                this.currentBlock[i10] = 0;
            }
        }
        long littleEndianToInt = Pack.littleEndianToInt(this.currentBlock, 0) & 4294967295L;
        long littleEndianToInt2 = Pack.littleEndianToInt(this.currentBlock, 4) & 4294967295L;
        long littleEndianToInt3 = Pack.littleEndianToInt(this.currentBlock, 8) & 4294967295L;
        long littleEndianToInt4 = 4294967295L & Pack.littleEndianToInt(this.currentBlock, 12);
        int i11 = (int) (this.f91256h0 + (littleEndianToInt & 67108863));
        this.f91256h0 = i11;
        this.f91257h1 = (int) (this.f91257h1 + ((((littleEndianToInt2 << 32) | littleEndianToInt) >>> 26) & 67108863));
        this.f91258h2 = (int) (this.f91258h2 + (((littleEndianToInt2 | (littleEndianToInt3 << 32)) >>> 20) & 67108863));
        this.f91259h3 = (int) (this.f91259h3 + ((((littleEndianToInt4 << 32) | littleEndianToInt3) >>> 14) & 67108863));
        int i12 = (int) (this.h4 + (littleEndianToInt4 >>> 8));
        this.h4 = i12;
        if (this.currentBlockOffset == 16) {
            this.h4 = i12 + 16777216;
        }
        long mul32x32_64 = mul32x32_64(i11, this.f91264r0) + mul32x32_64(this.f91257h1, this.f91272s4) + mul32x32_64(this.f91258h2, this.f91271s3) + mul32x32_64(this.f91259h3, this.f91270s2) + mul32x32_64(this.h4, this.f91269s1);
        long mul32x32_642 = mul32x32_64(this.f91256h0, this.f91265r1) + mul32x32_64(this.f91257h1, this.f91264r0) + mul32x32_64(this.f91258h2, this.f91272s4) + mul32x32_64(this.f91259h3, this.f91271s3) + mul32x32_64(this.h4, this.f91270s2);
        long mul32x32_643 = mul32x32_64(this.f91256h0, this.f91266r2) + mul32x32_64(this.f91257h1, this.f91265r1) + mul32x32_64(this.f91258h2, this.f91264r0) + mul32x32_64(this.f91259h3, this.f91272s4) + mul32x32_64(this.h4, this.f91271s3);
        long mul32x32_644 = mul32x32_64(this.f91256h0, this.f91267r3) + mul32x32_64(this.f91257h1, this.f91266r2) + mul32x32_64(this.f91258h2, this.f91265r1) + mul32x32_64(this.f91259h3, this.f91264r0) + mul32x32_64(this.h4, this.f91272s4);
        long mul32x32_645 = mul32x32_64(this.f91256h0, this.f91268r4) + mul32x32_64(this.f91257h1, this.f91267r3) + mul32x32_64(this.f91258h2, this.f91266r2) + mul32x32_64(this.f91259h3, this.f91265r1) + mul32x32_64(this.h4, this.f91264r0);
        long j4 = mul32x32_642 + (mul32x32_64 >>> 26);
        long j10 = mul32x32_643 + (j4 >>> 26);
        this.f91258h2 = ((int) j10) & 67108863;
        long j11 = mul32x32_644 + (j10 >>> 26);
        this.f91259h3 = ((int) j11) & 67108863;
        long j12 = mul32x32_645 + (j11 >>> 26);
        this.h4 = ((int) j12) & 67108863;
        int i13 = (((int) mul32x32_64) & 67108863) + (((int) (j12 >>> 26)) * 5);
        this.f91257h1 = (((int) j4) & 67108863) + (i13 >>> 26);
        this.f91256h0 = i13 & 67108863;
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        int i4 = 16;
        if (this.cipher != null && (bArr2 == null || bArr2.length != 16)) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit IV.");
        }
        int littleEndianToInt = Pack.littleEndianToInt(bArr, 0);
        int littleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
        int littleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
        int littleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
        this.f91264r0 = 67108863 & littleEndianToInt;
        int i10 = ((littleEndianToInt >>> 26) | (littleEndianToInt2 << 6)) & 67108611;
        this.f91265r1 = i10;
        int i11 = ((littleEndianToInt2 >>> 20) | (littleEndianToInt3 << 12)) & 67092735;
        this.f91266r2 = i11;
        int i12 = ((littleEndianToInt3 >>> 14) | (littleEndianToInt4 << 18)) & 66076671;
        this.f91267r3 = i12;
        int i13 = (littleEndianToInt4 >>> 8) & 1048575;
        this.f91268r4 = i13;
        this.f91269s1 = i10 * 5;
        this.f91270s2 = i11 * 5;
        this.f91271s3 = i12 * 5;
        this.f91272s4 = i13 * 5;
        BlockCipher blockCipher = this.cipher;
        if (blockCipher != null) {
            byte[] bArr3 = new byte[16];
            blockCipher.init(true, new KeyParameter(bArr, 16, 16));
            this.cipher.processBlock(bArr2, 0, bArr3, 0);
            bArr = bArr3;
            i4 = 0;
        }
        this.f91260k0 = Pack.littleEndianToInt(bArr, i4 + 0);
        this.f91261k1 = Pack.littleEndianToInt(bArr, i4 + 4);
        this.f91262k2 = Pack.littleEndianToInt(bArr, i4 + 8);
        this.f91263k3 = Pack.littleEndianToInt(bArr, i4 + 12);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (i4 + 16 <= bArr.length) {
            if (this.currentBlockOffset > 0) {
                processBlock();
            }
            int i15 = this.f91257h1;
            int i16 = this.f91256h0;
            int i17 = i15 + (i16 >>> 26);
            int i18 = this.f91258h2 + (i17 >>> 26);
            int i19 = this.f91259h3 + (i18 >>> 26);
            int i20 = i18 & 67108863;
            int i21 = this.h4 + (i19 >>> 26);
            int i22 = i19 & 67108863;
            int i23 = (i16 & 67108863) + ((i21 >>> 26) * 5);
            int i24 = i21 & 67108863;
            int i25 = (i17 & 67108863) + (i23 >>> 26);
            int i26 = i23 & 67108863;
            int i27 = i26 + 5;
            int i28 = (i27 >>> 26) + i25;
            int i29 = (i28 >>> 26) + i20;
            int i30 = (i29 >>> 26) + i22;
            int i31 = 67108863 & i30;
            int i32 = ((i30 >>> 26) + i24) - 67108864;
            int i33 = (i32 >>> 31) - 1;
            int i34 = ~i33;
            this.f91256h0 = (i26 & i34) | (i27 & 67108863 & i33);
            this.f91257h1 = (i25 & i34) | (i28 & 67108863 & i33);
            this.f91258h2 = (i20 & i34) | (i29 & 67108863 & i33);
            this.f91259h3 = (i31 & i33) | (i22 & i34);
            this.h4 = (i24 & i34) | (i32 & i33);
            long j4 = ((i10 | (i11 << 26)) & 4294967295L) + (this.f91260k0 & 4294967295L);
            Pack.intToLittleEndian((int) j4, bArr, i4);
            long j10 = (((i11 >>> 6) | (i12 << 20)) & 4294967295L) + (this.f91261k1 & 4294967295L) + (j4 >>> 32);
            Pack.intToLittleEndian((int) j10, bArr, i4 + 4);
            long j11 = (((i12 >>> 12) | (i13 << 14)) & 4294967295L) + (this.f91262k2 & 4294967295L) + (j10 >>> 32);
            Pack.intToLittleEndian((int) j11, bArr, i4 + 8);
            Pack.intToLittleEndian((int) ((((i13 >>> 18) | (i14 << 8)) & 4294967295L) + (4294967295L & this.f91263k3) + (j11 >>> 32)), bArr, i4 + 12);
            reset();
            return 16;
        }
        throw new OutputLengthException("Output buffer is too short.");
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        if (this.cipher == null) {
            return "Poly1305";
        }
        return "Poly1305-" + this.cipher.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] bArr;
        if (this.cipher == null) {
            bArr = null;
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Poly1305 requires an IV when used with a block cipher.");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            bArr = parametersWithIV.getIV();
            cipherParameters = parametersWithIV.getParameters();
        }
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("Poly1305 requires a key.");
        }
        setKey(((KeyParameter) cipherParameters).getKey(), bArr);
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.currentBlockOffset = 0;
        this.h4 = 0;
        this.f91259h3 = 0;
        this.f91258h2 = 0;
        this.f91257h1 = 0;
        this.f91256h0 = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException {
        byte[] bArr = this.singleByte;
        bArr[0] = b10;
        update(bArr, 0, 1);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalStateException {
        int i11 = 0;
        while (i10 > i11) {
            if (this.currentBlockOffset == 16) {
                processBlock();
                this.currentBlockOffset = 0;
            }
            int min = Math.min(i10 - i11, 16 - this.currentBlockOffset);
            System.arraycopy(bArr, i11 + i4, this.currentBlock, this.currentBlockOffset, min);
            i11 += min;
            this.currentBlockOffset += min;
        }
    }
}
