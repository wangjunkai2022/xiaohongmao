package org.bouncycastle.crypto.modes;

import com.google.android.exoplayer2.extractor.ts.h0;
import java.util.Vector;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class OCBBlockCipher implements AEADBlockCipher {
    private static final int BLOCK_SIZE = 16;
    private byte[] Checksum;
    private Vector L;
    private byte[] L_Asterisk;
    private byte[] L_Dollar;
    private byte[] OffsetHASH;
    private byte[] Sum;
    private boolean forEncryption;
    private byte[] hashBlock;
    private long hashBlockCount;
    private int hashBlockPos;
    private BlockCipher hashCipher;
    private byte[] initialAssociatedText;
    private byte[] macBlock;
    private int macSize;
    private byte[] mainBlock;
    private long mainBlockCount;
    private int mainBlockPos;
    private BlockCipher mainCipher;
    private byte[] KtopInput = null;
    private byte[] Stretch = new byte[24];
    private byte[] OffsetMAIN_0 = new byte[16];
    private byte[] OffsetMAIN = new byte[16];

    public OCBBlockCipher(BlockCipher blockCipher, BlockCipher blockCipher2) {
        if (blockCipher == null) {
            throw new IllegalArgumentException("'hashCipher' cannot be null");
        }
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("'hashCipher' must have a block size of 16");
        }
        if (blockCipher2 == null) {
            throw new IllegalArgumentException("'mainCipher' cannot be null");
        }
        if (blockCipher2.getBlockSize() != 16) {
            throw new IllegalArgumentException("'mainCipher' must have a block size of 16");
        }
        if (!blockCipher.getAlgorithmName().equals(blockCipher2.getAlgorithmName())) {
            throw new IllegalArgumentException("'hashCipher' and 'mainCipher' must be the same algorithm");
        }
        this.hashCipher = blockCipher;
        this.mainCipher = blockCipher2;
    }

    protected static byte[] OCB_double(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int shiftLeft = shiftLeft(bArr, bArr2);
        bArr2[15] = (byte) ((h0.J >>> ((1 - shiftLeft) << 3)) ^ bArr2[15]);
        return bArr2;
    }

    protected static void OCB_extend(byte[] bArr, int i4) {
        bArr[i4] = Byte.MIN_VALUE;
        while (true) {
            i4++;
            if (i4 >= 16) {
                return;
            }
            bArr[i4] = 0;
        }
    }

    protected static int OCB_ntz(long j4) {
        if (j4 == 0) {
            return 64;
        }
        int i4 = 0;
        while ((1 & j4) == 0) {
            i4++;
            j4 >>>= 1;
        }
        return i4;
    }

    protected static int shiftLeft(byte[] bArr, byte[] bArr2) {
        int i4 = 16;
        int i10 = 0;
        while (true) {
            i4--;
            if (i4 < 0) {
                return i10;
            }
            int i11 = bArr[i4] & 255;
            bArr2[i4] = (byte) (i10 | (i11 << 1));
            i10 = (i11 >>> 7) & 1;
        }
    }

    protected static void xor(byte[] bArr, byte[] bArr2) {
        for (int i4 = 15; i4 >= 0; i4--) {
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
        }
    }

    protected void clear(byte[] bArr) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i4) throws IllegalStateException, InvalidCipherTextException {
        byte[] bArr2;
        if (this.forEncryption) {
            bArr2 = null;
        } else {
            int i10 = this.mainBlockPos;
            int i11 = this.macSize;
            if (i10 < i11) {
                throw new InvalidCipherTextException("data too short");
            }
            int i12 = i10 - i11;
            this.mainBlockPos = i12;
            bArr2 = new byte[i11];
            System.arraycopy(this.mainBlock, i12, bArr2, 0, i11);
        }
        int i13 = this.hashBlockPos;
        if (i13 > 0) {
            OCB_extend(this.hashBlock, i13);
            updateHASH(this.L_Asterisk);
        }
        int i14 = this.mainBlockPos;
        if (i14 > 0) {
            if (this.forEncryption) {
                OCB_extend(this.mainBlock, i14);
                xor(this.Checksum, this.mainBlock);
            }
            xor(this.OffsetMAIN, this.L_Asterisk);
            byte[] bArr3 = new byte[16];
            this.hashCipher.processBlock(this.OffsetMAIN, 0, bArr3, 0);
            xor(this.mainBlock, bArr3);
            int length = bArr.length;
            int i15 = this.mainBlockPos;
            if (length < i4 + i15) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.mainBlock, 0, bArr, i4, i15);
            if (!this.forEncryption) {
                OCB_extend(this.mainBlock, this.mainBlockPos);
                xor(this.Checksum, this.mainBlock);
            }
        }
        xor(this.Checksum, this.OffsetMAIN);
        xor(this.Checksum, this.L_Dollar);
        BlockCipher blockCipher = this.hashCipher;
        byte[] bArr4 = this.Checksum;
        blockCipher.processBlock(bArr4, 0, bArr4, 0);
        xor(this.Checksum, this.Sum);
        int i16 = this.macSize;
        byte[] bArr5 = new byte[i16];
        this.macBlock = bArr5;
        System.arraycopy(this.Checksum, 0, bArr5, 0, i16);
        int i17 = this.mainBlockPos;
        if (this.forEncryption) {
            int length2 = bArr.length;
            int i18 = i4 + i17;
            int i19 = this.macSize;
            if (length2 < i18 + i19) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.macBlock, 0, bArr, i18, i19);
            i17 += this.macSize;
        } else if (!Arrays.constantTimeAreEqual(this.macBlock, bArr2)) {
            throw new InvalidCipherTextException("mac check in OCB failed");
        }
        reset(false);
        return i17;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.mainCipher.getAlgorithmName() + "/OCB";
    }

    protected byte[] getLSub(int i4) {
        while (i4 >= this.L.size()) {
            Vector vector = this.L;
            vector.addElement(OCB_double((byte[]) vector.lastElement()));
        }
        return (byte[]) this.L.elementAt(i4);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        byte[] bArr = this.macBlock;
        return bArr == null ? new byte[this.macSize] : Arrays.clone(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i4) {
        int i10 = i4 + this.mainBlockPos;
        if (this.forEncryption) {
            return i10 + this.macSize;
        }
        int i11 = this.macSize;
        if (i10 < i11) {
            return 0;
        }
        return i10 - i11;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.mainCipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i4) {
        int i10 = i4 + this.mainBlockPos;
        if (!this.forEncryption) {
            int i11 = this.macSize;
            if (i10 < i11) {
                return 0;
            }
            i10 -= i11;
        }
        return i10 - (i10 % 16);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] iv;
        KeyParameter keyParameter;
        boolean z10 = this.forEncryption;
        this.forEncryption = z9;
        this.macBlock = null;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            iv = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 64 || macSize > 128 || macSize % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + macSize);
            }
            this.macSize = macSize / 8;
            keyParameter = aEADParameters.getKey();
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameters passed to OCB");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            iv = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = 16;
            keyParameter = (KeyParameter) parametersWithIV.getParameters();
        }
        this.hashBlock = new byte[16];
        this.mainBlock = new byte[z9 ? 16 : this.macSize + 16];
        if (iv == null) {
            iv = new byte[0];
        }
        if (iv.length > 15) {
            throw new IllegalArgumentException("IV must be no more than 15 bytes");
        }
        if (keyParameter != null) {
            this.hashCipher.init(true, keyParameter);
            this.mainCipher.init(z9, keyParameter);
            this.KtopInput = null;
        } else if (z10 != z9) {
            throw new IllegalArgumentException("cannot change encrypting state without providing key.");
        }
        byte[] bArr = new byte[16];
        this.L_Asterisk = bArr;
        this.hashCipher.processBlock(bArr, 0, bArr, 0);
        this.L_Dollar = OCB_double(this.L_Asterisk);
        Vector vector = new Vector();
        this.L = vector;
        vector.addElement(OCB_double(this.L_Dollar));
        int processNonce = processNonce(iv);
        int i4 = processNonce % 8;
        int i10 = processNonce / 8;
        if (i4 == 0) {
            System.arraycopy(this.Stretch, i10, this.OffsetMAIN_0, 0, 16);
        } else {
            for (int i11 = 0; i11 < 16; i11++) {
                byte[] bArr2 = this.Stretch;
                i10++;
                this.OffsetMAIN_0[i11] = (byte) (((bArr2[i10] & 255) >>> (8 - i4)) | ((bArr2[i10] & 255) << i4));
            }
        }
        this.hashBlockPos = 0;
        this.mainBlockPos = 0;
        this.hashBlockCount = 0L;
        this.mainBlockCount = 0L;
        this.OffsetHASH = new byte[16];
        this.Sum = new byte[16];
        System.arraycopy(this.OffsetMAIN_0, 0, this.OffsetMAIN, 0, 16);
        this.Checksum = new byte[16];
        byte[] bArr3 = this.initialAssociatedText;
        if (bArr3 != null) {
            processAADBytes(bArr3, 0, bArr3.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        byte[] bArr = this.hashBlock;
        int i4 = this.hashBlockPos;
        bArr[i4] = b10;
        int i10 = i4 + 1;
        this.hashBlockPos = i10;
        if (i10 == bArr.length) {
            processHashBlock();
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i4, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            byte[] bArr2 = this.hashBlock;
            int i12 = this.hashBlockPos;
            bArr2[i12] = bArr[i4 + i11];
            int i13 = i12 + 1;
            this.hashBlockPos = i13;
            if (i13 == bArr2.length) {
                processHashBlock();
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int i4) throws DataLengthException {
        byte[] bArr2 = this.mainBlock;
        int i10 = this.mainBlockPos;
        bArr2[i10] = b10;
        int i11 = i10 + 1;
        this.mainBlockPos = i11;
        if (i11 == bArr2.length) {
            processMainBlock(bArr, i4);
            return 16;
        }
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException {
        if (bArr.length >= i4 + i10) {
            int i12 = 0;
            for (int i13 = 0; i13 < i10; i13++) {
                byte[] bArr3 = this.mainBlock;
                int i14 = this.mainBlockPos;
                bArr3[i14] = bArr[i4 + i13];
                int i15 = i14 + 1;
                this.mainBlockPos = i15;
                if (i15 == bArr3.length) {
                    processMainBlock(bArr2, i11 + i12);
                    i12 += 16;
                }
            }
            return i12;
        }
        throw new DataLengthException("Input buffer too short");
    }

    protected void processHashBlock() {
        long j4 = this.hashBlockCount + 1;
        this.hashBlockCount = j4;
        updateHASH(getLSub(OCB_ntz(j4)));
        this.hashBlockPos = 0;
    }

    protected void processMainBlock(byte[] bArr, int i4) {
        if (bArr.length < i4 + 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.forEncryption) {
            xor(this.Checksum, this.mainBlock);
            this.mainBlockPos = 0;
        }
        byte[] bArr2 = this.OffsetMAIN;
        long j4 = this.mainBlockCount + 1;
        this.mainBlockCount = j4;
        xor(bArr2, getLSub(OCB_ntz(j4)));
        xor(this.mainBlock, this.OffsetMAIN);
        BlockCipher blockCipher = this.mainCipher;
        byte[] bArr3 = this.mainBlock;
        blockCipher.processBlock(bArr3, 0, bArr3, 0);
        xor(this.mainBlock, this.OffsetMAIN);
        System.arraycopy(this.mainBlock, 0, bArr, i4, 16);
        if (this.forEncryption) {
            return;
        }
        xor(this.Checksum, this.mainBlock);
        byte[] bArr4 = this.mainBlock;
        System.arraycopy(bArr4, 16, bArr4, 0, this.macSize);
        this.mainBlockPos = this.macSize;
    }

    protected int processNonce(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i4 = 0;
        System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
        bArr2[0] = (byte) (this.macSize << 4);
        int length = 15 - bArr.length;
        bArr2[length] = (byte) (bArr2[length] | 1);
        int i10 = bArr2[15] & Utf8.REPLACEMENT_BYTE;
        bArr2[15] = (byte) (bArr2[15] & 192);
        byte[] bArr3 = this.KtopInput;
        if (bArr3 == null || !Arrays.areEqual(bArr2, bArr3)) {
            byte[] bArr4 = new byte[16];
            this.KtopInput = bArr2;
            this.hashCipher.processBlock(bArr2, 0, bArr4, 0);
            System.arraycopy(bArr4, 0, this.Stretch, 0, 16);
            while (i4 < 8) {
                byte[] bArr5 = this.Stretch;
                int i11 = i4 + 16;
                byte b10 = bArr4[i4];
                i4++;
                bArr5[i11] = (byte) (b10 ^ bArr4[i4]);
            }
        }
        return i10;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }

    protected void reset(boolean z9) {
        this.hashCipher.reset();
        this.mainCipher.reset();
        clear(this.hashBlock);
        clear(this.mainBlock);
        this.hashBlockPos = 0;
        this.mainBlockPos = 0;
        this.hashBlockCount = 0L;
        this.mainBlockCount = 0L;
        clear(this.OffsetHASH);
        clear(this.Sum);
        System.arraycopy(this.OffsetMAIN_0, 0, this.OffsetMAIN, 0, 16);
        clear(this.Checksum);
        if (z9) {
            this.macBlock = null;
        }
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    protected void updateHASH(byte[] bArr) {
        xor(this.OffsetHASH, bArr);
        xor(this.hashBlock, this.OffsetHASH);
        BlockCipher blockCipher = this.hashCipher;
        byte[] bArr2 = this.hashBlock;
        blockCipher.processBlock(bArr2, 0, bArr2, 0);
        xor(this.Sum, this.hashBlock);
    }
}
