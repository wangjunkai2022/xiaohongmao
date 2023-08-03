package org.bouncycastle.crypto.engines;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.c;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class GOST28147Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 8;
    private boolean forEncryption;
    private static byte[] Sbox_Default = {4, 10, 9, 2, c.f32108o, 8, 0, c.f32109p, 6, c.f32106m, 1, c.f32107n, 7, c.f32110q, 5, 3, c.f32109p, c.f32106m, 4, c.f32107n, 6, c.f32108o, c.f32110q, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, c.f32108o, 10, 3, 4, 2, c.f32109p, c.f32110q, c.f32107n, 7, 6, 0, 9, c.f32106m, 7, c.f32108o, 10, 1, 0, 8, 9, c.f32110q, c.f32109p, 4, 6, c.f32107n, c.f32106m, 2, 5, 3, 6, c.f32107n, 7, 1, 5, c.f32110q, c.f32108o, 8, 4, 10, 9, c.f32109p, 0, 3, c.f32106m, 2, 4, c.f32106m, 10, 0, 7, 2, 1, c.f32108o, 3, 6, 8, 5, 9, c.f32107n, c.f32110q, c.f32109p, c.f32108o, c.f32106m, 4, 1, 3, c.f32110q, 5, 9, 0, 10, c.f32109p, 7, 6, 8, 2, c.f32107n, 1, c.f32110q, c.f32108o, 0, 5, 7, 10, 4, 9, 2, 3, c.f32109p, 6, c.f32106m, 8, c.f32107n};
    private static byte[] ESbox_Test = {4, 2, c.f32110q, 5, 9, 1, 0, 8, c.f32109p, 3, c.f32106m, c.f32107n, c.f32108o, 7, 10, 6, c.f32107n, 9, c.f32110q, c.f32109p, 8, 1, 3, 10, 2, 7, 4, c.f32108o, 6, 0, c.f32106m, 5, c.f32108o, 8, c.f32109p, c.f32107n, 7, 3, 9, 10, 1, 5, 2, 4, 6, c.f32110q, 0, c.f32106m, c.f32109p, 9, c.f32106m, 2, 5, c.f32110q, 7, 1, 0, c.f32108o, c.f32107n, 6, 10, 4, 3, 8, 3, c.f32109p, 5, 9, 6, 8, 0, c.f32108o, 10, c.f32106m, 7, c.f32107n, 2, 1, c.f32110q, 4, 8, c.f32110q, 6, c.f32106m, 1, 9, c.f32107n, 5, c.f32108o, 3, 7, 10, 0, c.f32109p, 2, 4, 9, c.f32106m, c.f32107n, 0, 3, 6, 7, 5, 4, 8, c.f32109p, c.f32110q, 1, 10, 2, c.f32108o, c.f32107n, 6, 5, 2, c.f32106m, 0, 9, c.f32108o, 3, c.f32109p, 7, 10, c.f32110q, 4, 1, 8};
    private static byte[] ESbox_A = {9, 6, 3, 2, 8, c.f32106m, 1, 7, 10, 4, c.f32109p, c.f32110q, c.f32107n, 0, c.f32108o, 5, 3, 7, c.f32109p, 9, 8, 10, c.f32110q, 0, 5, 2, 6, c.f32107n, c.f32106m, 4, c.f32108o, 1, c.f32109p, 4, 6, 2, c.f32106m, 3, c.f32108o, 8, c.f32107n, c.f32110q, 5, 10, 0, 7, 1, 9, c.f32109p, 7, 10, c.f32107n, c.f32108o, 1, 3, 9, 0, 2, c.f32106m, 4, c.f32110q, 8, 5, 6, c.f32106m, 5, 1, 9, 8, c.f32108o, c.f32110q, 0, c.f32109p, 4, 2, 3, c.f32107n, 7, 10, 6, 3, 10, c.f32108o, c.f32107n, 1, 2, 0, c.f32106m, 7, 5, 9, 4, 8, c.f32110q, c.f32109p, 6, 1, c.f32108o, 2, 9, 7, 10, 6, 0, 8, c.f32107n, 4, 5, c.f32110q, 3, c.f32106m, c.f32109p, c.f32106m, 10, c.f32110q, 5, 0, c.f32107n, c.f32109p, 8, 6, 2, 3, 9, 1, 7, c.f32108o, 4};
    private static byte[] ESbox_B = {8, 4, c.f32106m, 1, 3, 5, 0, 9, 2, c.f32109p, 10, c.f32107n, c.f32108o, 6, 7, c.f32110q, 0, 1, 2, 10, 4, c.f32108o, 5, c.f32107n, 9, 7, 3, c.f32110q, c.f32106m, 8, 6, c.f32109p, c.f32109p, c.f32107n, 0, 10, 9, 2, c.f32108o, c.f32106m, 7, 5, 8, c.f32110q, 3, 6, 1, 4, 7, 5, 0, c.f32108o, c.f32106m, 6, 1, 2, 3, 10, c.f32107n, c.f32110q, 4, c.f32109p, 9, 8, 2, 7, c.f32107n, c.f32110q, 9, 5, 10, c.f32106m, 1, 4, 0, c.f32108o, 6, 8, c.f32109p, 3, 8, 3, 2, 6, 4, c.f32108o, c.f32109p, c.f32106m, c.f32107n, 1, 7, c.f32110q, 10, 0, 9, 5, 5, 2, 10, c.f32106m, 9, 1, c.f32107n, 3, 7, 4, c.f32108o, 0, 6, c.f32110q, 8, c.f32109p, 0, 4, c.f32106m, c.f32109p, 8, 3, 7, 1, 10, 2, 9, 6, c.f32110q, c.f32108o, 5, c.f32107n};
    private static byte[] ESbox_C = {1, c.f32106m, c.f32107n, 2, 9, c.f32108o, 0, c.f32110q, 4, 5, 8, c.f32109p, 10, 7, 6, 3, 0, 1, 7, c.f32108o, c.f32106m, 4, 5, 2, 8, c.f32109p, c.f32110q, c.f32107n, 9, 10, 6, 3, 8, 2, 5, 0, 4, 9, c.f32110q, 10, 3, 7, c.f32107n, c.f32108o, 6, c.f32109p, 1, c.f32106m, 3, 6, 0, 1, 5, c.f32108o, 10, 8, c.f32106m, 2, 9, 7, c.f32109p, c.f32110q, c.f32107n, 4, 8, c.f32108o, c.f32106m, 0, 4, 5, 1, 2, 9, 3, c.f32107n, c.f32109p, 6, c.f32110q, 10, 7, c.f32107n, 9, c.f32106m, 1, 8, c.f32109p, 2, 4, 7, 3, 6, 5, 10, 0, c.f32110q, c.f32108o, 10, 9, 6, 8, c.f32108o, c.f32109p, 2, 0, c.f32110q, 3, 5, c.f32106m, 4, 1, c.f32107n, 7, 7, 4, 0, 5, 10, 2, c.f32110q, c.f32109p, c.f32107n, 6, 1, c.f32106m, c.f32108o, 9, 3, 8};
    private static byte[] ESbox_D = {c.f32110q, c.f32107n, 2, 10, 6, 4, 5, 0, 7, 9, c.f32109p, c.f32108o, 1, c.f32106m, 8, 3, c.f32106m, 6, 3, 4, c.f32107n, c.f32110q, c.f32109p, 2, 7, c.f32108o, 8, 0, 5, 10, 9, 1, 1, c.f32107n, c.f32106m, 0, c.f32110q, c.f32109p, 6, 5, 10, c.f32108o, 4, 8, 9, 3, 7, 2, 1, 5, c.f32109p, c.f32107n, 10, 7, 0, c.f32108o, 6, 2, c.f32106m, 4, 9, 3, c.f32110q, 8, 0, c.f32107n, 8, 9, c.f32108o, 2, 10, c.f32106m, 7, 3, 6, 5, 4, c.f32109p, c.f32110q, 1, 8, 0, c.f32110q, 3, 2, 5, c.f32109p, c.f32106m, 1, 10, 4, 7, c.f32107n, 9, c.f32108o, 6, 3, 0, 6, c.f32110q, 1, c.f32109p, 9, 2, c.f32108o, 8, c.f32107n, 4, c.f32106m, 10, 5, 7, 1, 10, 6, 8, c.f32110q, c.f32106m, 0, 4, c.f32107n, 3, 5, 9, 7, c.f32108o, 2, c.f32109p};
    private static byte[] Param_Z = {c.f32107n, 4, 6, 2, 10, 5, c.f32106m, 9, c.f32109p, 8, c.f32108o, 7, 0, 3, c.f32110q, 1, 6, 8, 2, 3, 9, 10, 5, c.f32107n, 1, c.f32109p, 4, 7, c.f32106m, c.f32108o, 0, c.f32110q, c.f32106m, 3, 5, 8, 2, c.f32110q, 10, c.f32108o, c.f32109p, 1, 7, 4, c.f32107n, 9, 6, 0, c.f32107n, 8, 2, 1, c.f32108o, 4, c.f32110q, 6, 7, 0, 10, 5, 3, c.f32109p, 9, c.f32106m, 7, c.f32110q, 5, 10, 8, 1, 6, c.f32108o, 0, 9, 3, c.f32109p, c.f32106m, 4, 2, c.f32107n, 5, c.f32108o, c.f32110q, 6, 9, 2, c.f32107n, 10, c.f32106m, 7, 8, 1, 4, 3, c.f32109p, 0, 8, c.f32109p, 2, 5, 6, 9, 1, c.f32107n, c.f32110q, 4, c.f32106m, 0, c.f32108o, 10, 3, 7, 1, 7, c.f32109p, c.f32108o, 0, 5, 8, 3, 4, c.f32110q, 10, 6, 9, c.f32107n, c.f32106m, 2};
    private static byte[] DSbox_Test = {4, 10, 9, 2, c.f32108o, 8, 0, c.f32109p, 6, c.f32106m, 1, c.f32107n, 7, c.f32110q, 5, 3, c.f32109p, c.f32106m, 4, c.f32107n, 6, c.f32108o, c.f32110q, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, c.f32108o, 10, 3, 4, 2, c.f32109p, c.f32110q, c.f32107n, 7, 6, 0, 9, c.f32106m, 7, c.f32108o, 10, 1, 0, 8, 9, c.f32110q, c.f32109p, 4, 6, c.f32107n, c.f32106m, 2, 5, 3, 6, c.f32107n, 7, 1, 5, c.f32110q, c.f32108o, 8, 4, 10, 9, c.f32109p, 0, 3, c.f32106m, 2, 4, c.f32106m, 10, 0, 7, 2, 1, c.f32108o, 3, 6, 8, 5, 9, c.f32107n, c.f32110q, c.f32109p, c.f32108o, c.f32106m, 4, 1, 3, c.f32110q, 5, 9, 0, 10, c.f32109p, 7, 6, 8, 2, c.f32107n, 1, c.f32110q, c.f32108o, 0, 5, 7, 10, 4, 9, 2, 3, c.f32109p, 6, c.f32106m, 8, c.f32107n};
    private static byte[] DSbox_A = {10, 4, 5, 6, 8, 1, 3, 7, c.f32108o, c.f32107n, c.f32109p, 0, 9, 2, c.f32106m, c.f32110q, 5, c.f32110q, 4, 0, 2, c.f32108o, c.f32106m, 9, 1, 7, 6, 3, c.f32107n, c.f32109p, 10, 8, 7, c.f32110q, c.f32107n, c.f32109p, 9, 4, 1, 0, 3, c.f32106m, 5, 2, 6, 10, 8, c.f32108o, 4, 10, 7, c.f32107n, 0, c.f32110q, 2, 8, c.f32109p, 1, 6, 5, c.f32108o, c.f32106m, 9, 3, 7, 6, 4, c.f32106m, 9, c.f32107n, 2, 10, 1, 8, 0, c.f32109p, c.f32110q, c.f32108o, 3, 5, 7, 6, 2, 4, c.f32108o, 9, c.f32110q, 0, 10, 1, 5, c.f32106m, 8, c.f32109p, c.f32107n, 3, c.f32108o, c.f32109p, 4, 1, 7, 0, 5, 10, 3, c.f32107n, 8, c.f32110q, 6, 2, 9, c.f32106m, 1, 3, 10, 9, 5, c.f32106m, 4, c.f32110q, 8, 6, 7, c.f32109p, c.f32108o, 0, 2, c.f32107n};
    private static Hashtable sBoxes = new Hashtable();
    private int[] workingKey = null;
    private byte[] S = Sbox_Default;

    static {
        addSBox("Default", Sbox_Default);
        addSBox("E-TEST", ESbox_Test);
        addSBox("E-A", ESbox_A);
        addSBox("E-B", ESbox_B);
        addSBox("E-C", ESbox_C);
        addSBox("E-D", ESbox_D);
        addSBox("Param-Z", Param_Z);
        addSBox("D-TEST", DSbox_Test);
        addSBox("D-A", DSbox_A);
    }

    private void GOST28147Func(int[] iArr, byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11;
        int i12;
        int bytesToint = bytesToint(bArr, i4);
        int bytesToint2 = bytesToint(bArr, i4 + 4);
        int i13 = 7;
        if (this.forEncryption) {
            for (int i14 = 0; i14 < 3; i14++) {
                int i15 = 0;
                while (i15 < 8) {
                    i15++;
                    int i16 = bytesToint;
                    bytesToint = bytesToint2 ^ GOST28147_mainStep(bytesToint, iArr[i15]);
                    bytesToint2 = i16;
                }
            }
            i11 = bytesToint2;
            i12 = bytesToint;
            while (i13 > 0) {
                int GOST28147_mainStep = i11 ^ GOST28147_mainStep(i12, iArr[i13]);
                i13--;
                i11 = i12;
                i12 = GOST28147_mainStep;
            }
        } else {
            int i17 = 0;
            while (i17 < 8) {
                i17++;
                int i18 = bytesToint;
                bytesToint = bytesToint2 ^ GOST28147_mainStep(bytesToint, iArr[i17]);
                bytesToint2 = i18;
            }
            i11 = bytesToint2;
            i12 = bytesToint;
            for (int i19 = 0; i19 < 3; i19++) {
                int i20 = 7;
                while (i20 >= 0 && (i19 != 2 || i20 != 0)) {
                    int GOST28147_mainStep2 = i11 ^ GOST28147_mainStep(i12, iArr[i20]);
                    i20--;
                    i11 = i12;
                    i12 = GOST28147_mainStep2;
                }
            }
        }
        intTobytes(i12, bArr2, i10);
        intTobytes(GOST28147_mainStep(i12, iArr[0]) ^ i11, bArr2, i10 + 4);
    }

    private int GOST28147_mainStep(int i4, int i10) {
        int i11 = i10 + i4;
        byte[] bArr = this.S;
        int i12 = (bArr[((i11 >> 0) & 15) + 0] << 0) + (bArr[((i11 >> 4) & 15) + 16] << 4) + (bArr[((i11 >> 8) & 15) + 32] << 8) + (bArr[((i11 >> 12) & 15) + 48] << c.f32107n) + (bArr[((i11 >> 16) & 15) + 64] << 16) + (bArr[((i11 >> 20) & 15) + 80] << c.f32117x) + (bArr[((i11 >> 24) & 15) + 96] << c.B) + (bArr[((i11 >> 28) & 15) + 112] << c.F);
        return (i12 << 11) | (i12 >>> 21);
    }

    private static void addSBox(String str, byte[] bArr) {
        sBoxes.put(Strings.toUpperCase(str), bArr);
    }

    private int bytesToint(byte[] bArr, int i4) {
        return ((bArr[i4 + 3] << c.B) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i4 + 2] << 16) & 16711680) + ((bArr[i4 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[i4] & 255);
    }

    private int[] generateWorkingKey(boolean z9, byte[] bArr) {
        this.forEncryption = z9;
        if (bArr.length == 32) {
            int[] iArr = new int[8];
            for (int i4 = 0; i4 != 8; i4++) {
                iArr[i4] = bytesToint(bArr, i4 * 4);
            }
            return iArr;
        }
        throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
    }

    public static byte[] getSBox(String str) {
        byte[] bArr = (byte[]) sBoxes.get(Strings.toUpperCase(str));
        if (bArr != null) {
            return Arrays.clone(bArr);
        }
        throw new IllegalArgumentException("Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"Param-Z\", \"D-Test\", \"D-A\".");
    }

    public static String getSBoxName(byte[] bArr) {
        Enumeration keys = sBoxes.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (Arrays.areEqual((byte[]) sBoxes.get(str), bArr)) {
                return str;
            }
        }
        throw new IllegalArgumentException("SBOX provided did not map to a known one");
    }

    private void intTobytes(int i4, byte[] bArr, int i10) {
        bArr[i10 + 3] = (byte) (i4 >>> 24);
        bArr[i10 + 2] = (byte) (i4 >>> 16);
        bArr[i10 + 1] = (byte) (i4 >>> 8);
        bArr[i10] = (byte) i4;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST28147";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithSBox) {
            ParametersWithSBox parametersWithSBox = (ParametersWithSBox) cipherParameters;
            byte[] sBox = parametersWithSBox.getSBox();
            if (sBox.length != Sbox_Default.length) {
                throw new IllegalArgumentException("invalid S-box passed to GOST28147 init");
            }
            this.S = Arrays.clone(sBox);
            if (parametersWithSBox.getParameters() != null) {
                this.workingKey = generateWorkingKey(z9, ((KeyParameter) parametersWithSBox.getParameters()).getKey());
            }
        } else if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(z9, ((KeyParameter) cipherParameters).getKey());
        } else if (cipherParameters == null) {
        } else {
            throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int[] iArr = this.workingKey;
        if (iArr != null) {
            if (i4 + 8 <= bArr.length) {
                if (i10 + 8 <= bArr2.length) {
                    GOST28147Func(iArr, bArr, i4, bArr2, i10);
                    return 8;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("GOST28147 engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
