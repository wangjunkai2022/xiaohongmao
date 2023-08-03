package org.bouncycastle.pqc.crypto.rainbow.util;

import java.lang.reflect.Array;

/* loaded from: classes5.dex */
public class ComputeInField {
    private short[][] A;

    /* renamed from: x  reason: collision with root package name */
    short[] f91561x;

    private void computeZerosAbove() throws RuntimeException {
        for (int length = this.A.length - 1; length > 0; length--) {
            for (int i4 = length - 1; i4 >= 0; i4--) {
                short[][] sArr = this.A;
                short s9 = sArr[i4][length];
                short invElem = GF2Field.invElem(sArr[length][length]);
                if (invElem == 0) {
                    throw new RuntimeException("The matrix is not invertible");
                }
                int i10 = length;
                while (true) {
                    short[][] sArr2 = this.A;
                    if (i10 < sArr2.length * 2) {
                        short multElem = GF2Field.multElem(s9, GF2Field.multElem(sArr2[length][i10], invElem));
                        short[][] sArr3 = this.A;
                        sArr3[i4][i10] = GF2Field.addElem(sArr3[i4][i10], multElem);
                        i10++;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
        r0 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void computeZerosUnder(boolean r10) throws java.lang.RuntimeException {
        /*
            r9 = this;
            if (r10 == 0) goto L8
            short[][] r10 = r9.A
            int r10 = r10.length
            int r10 = r10 * 2
            goto Ld
        L8:
            short[][] r10 = r9.A
            int r10 = r10.length
            int r10 = r10 + 1
        Ld:
            r0 = 0
        Le:
            short[][] r1 = r9.A
            int r1 = r1.length
            int r1 = r1 + (-1)
            if (r0 >= r1) goto L5a
            int r1 = r0 + 1
            r2 = r1
        L18:
            short[][] r3 = r9.A
            int r4 = r3.length
            if (r2 >= r4) goto L58
            r4 = r3[r2]
            short r4 = r4[r0]
            r3 = r3[r0]
            short r3 = r3[r0]
            short r3 = org.bouncycastle.pqc.crypto.rainbow.util.GF2Field.invElem(r3)
            if (r3 == 0) goto L50
            r5 = r0
        L2c:
            if (r5 >= r10) goto L4d
            short[][] r6 = r9.A
            r6 = r6[r0]
            short r6 = r6[r5]
            short r6 = org.bouncycastle.pqc.crypto.rainbow.util.GF2Field.multElem(r6, r3)
            short r6 = org.bouncycastle.pqc.crypto.rainbow.util.GF2Field.multElem(r4, r6)
            short[][] r7 = r9.A
            r8 = r7[r2]
            r7 = r7[r2]
            short r7 = r7[r5]
            short r6 = org.bouncycastle.pqc.crypto.rainbow.util.GF2Field.addElem(r7, r6)
            r8[r5] = r6
            int r5 = r5 + 1
            goto L2c
        L4d:
            int r2 = r2 + 1
            goto L18
        L50:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "Matrix not invertible! We have to choose another one!"
            r10.<init>(r0)
            throw r10
        L58:
            r0 = r1
            goto Le
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.rainbow.util.ComputeInField.computeZerosUnder(boolean):void");
    }

    private void substitute() throws IllegalStateException {
        short[][] sArr;
        short invElem = GF2Field.invElem(this.A[sArr.length - 1][sArr.length - 1]);
        if (invElem == 0) {
            throw new IllegalStateException("The equation system is not solvable");
        }
        short[] sArr2 = this.f91561x;
        short[][] sArr3 = this.A;
        sArr2[sArr3.length - 1] = GF2Field.multElem(sArr3[sArr3.length - 1][sArr3.length], invElem);
        for (int length = this.A.length - 2; length >= 0; length--) {
            short[][] sArr4 = this.A;
            short s9 = sArr4[length][sArr4.length];
            for (int length2 = sArr4.length - 1; length2 > length; length2--) {
                s9 = GF2Field.addElem(s9, GF2Field.multElem(this.A[length][length2], this.f91561x[length2]));
            }
            short invElem2 = GF2Field.invElem(this.A[length][length]);
            if (invElem2 == 0) {
                throw new IllegalStateException("Not solvable equation system");
            }
            this.f91561x[length] = GF2Field.multElem(s9, invElem2);
        }
    }

    public short[][] addSquareMatrix(short[][] sArr, short[][] sArr2) {
        if (sArr.length == sArr2.length && sArr[0].length == sArr2[0].length) {
            short[][] sArr3 = (short[][]) Array.newInstance(short.class, sArr.length, sArr.length);
            for (int i4 = 0; i4 < sArr.length; i4++) {
                for (int i10 = 0; i10 < sArr2.length; i10++) {
                    sArr3[i4][i10] = GF2Field.addElem(sArr[i4][i10], sArr2[i4][i10]);
                }
            }
            return sArr3;
        }
        throw new RuntimeException("Addition is not possible!");
    }

    public short[] addVect(short[] sArr, short[] sArr2) {
        if (sArr.length == sArr2.length) {
            int length = sArr.length;
            short[] sArr3 = new short[length];
            for (int i4 = 0; i4 < length; i4++) {
                sArr3[i4] = GF2Field.addElem(sArr[i4], sArr2[i4]);
            }
            return sArr3;
        }
        throw new RuntimeException("Multiplication is not possible!");
    }

    public short[][] inverse(short[][] sArr) {
        try {
            int i4 = 0;
            this.A = (short[][]) Array.newInstance(short.class, sArr.length, sArr.length * 2);
            if (sArr.length != sArr[0].length) {
                throw new RuntimeException("The matrix is not invertible. Please choose another one!");
            }
            for (int i10 = 0; i10 < sArr.length; i10++) {
                for (int i11 = 0; i11 < sArr.length; i11++) {
                    this.A[i10][i11] = sArr[i10][i11];
                }
                for (int length = sArr.length; length < sArr.length * 2; length++) {
                    this.A[i10][length] = 0;
                }
                short[][] sArr2 = this.A;
                sArr2[i10][sArr2.length + i10] = 1;
            }
            computeZerosUnder(true);
            int i12 = 0;
            while (true) {
                short[][] sArr3 = this.A;
                if (i12 >= sArr3.length) {
                    break;
                }
                short invElem = GF2Field.invElem(sArr3[i12][i12]);
                int i13 = i12;
                while (true) {
                    short[][] sArr4 = this.A;
                    if (i13 < sArr4.length * 2) {
                        sArr4[i12][i13] = GF2Field.multElem(sArr4[i12][i13], invElem);
                        i13++;
                    }
                }
                i12++;
            }
            computeZerosAbove();
            short[][] sArr5 = this.A;
            short[][] sArr6 = (short[][]) Array.newInstance(short.class, sArr5.length, sArr5.length);
            while (true) {
                short[][] sArr7 = this.A;
                if (i4 >= sArr7.length) {
                    return sArr6;
                }
                int length2 = sArr7.length;
                while (true) {
                    short[][] sArr8 = this.A;
                    if (length2 < sArr8.length * 2) {
                        sArr6[i4][length2 - sArr8.length] = sArr8[i4][length2];
                        length2++;
                    }
                }
                i4++;
            }
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] multMatrix(short s9, short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance(short.class, sArr.length, sArr[0].length);
        for (int i4 = 0; i4 < sArr.length; i4++) {
            for (int i10 = 0; i10 < sArr[0].length; i10++) {
                sArr2[i4][i10] = GF2Field.multElem(s9, sArr[i4][i10]);
            }
        }
        return sArr2;
    }

    public short[] multVect(short s9, short[] sArr) {
        int length = sArr.length;
        short[] sArr2 = new short[length];
        for (int i4 = 0; i4 < length; i4++) {
            sArr2[i4] = GF2Field.multElem(s9, sArr[i4]);
        }
        return sArr2;
    }

    public short[][] multVects(short[] sArr, short[] sArr2) {
        if (sArr.length == sArr2.length) {
            short[][] sArr3 = (short[][]) Array.newInstance(short.class, sArr.length, sArr2.length);
            for (int i4 = 0; i4 < sArr.length; i4++) {
                for (int i10 = 0; i10 < sArr2.length; i10++) {
                    sArr3[i4][i10] = GF2Field.multElem(sArr[i4], sArr2[i10]);
                }
            }
            return sArr3;
        }
        throw new RuntimeException("Multiplication is not possible!");
    }

    public short[] multiplyMatrix(short[][] sArr, short[] sArr2) throws RuntimeException {
        if (sArr[0].length == sArr2.length) {
            short[] sArr3 = new short[sArr.length];
            for (int i4 = 0; i4 < sArr.length; i4++) {
                for (int i10 = 0; i10 < sArr2.length; i10++) {
                    sArr3[i4] = GF2Field.addElem(sArr3[i4], GF2Field.multElem(sArr[i4][i10], sArr2[i10]));
                }
            }
            return sArr3;
        }
        throw new RuntimeException("Multiplication is not possible!");
    }

    public short[][] multiplyMatrix(short[][] sArr, short[][] sArr2) throws RuntimeException {
        if (sArr[0].length == sArr2.length) {
            this.A = (short[][]) Array.newInstance(short.class, sArr.length, sArr2[0].length);
            for (int i4 = 0; i4 < sArr.length; i4++) {
                for (int i10 = 0; i10 < sArr2.length; i10++) {
                    for (int i11 = 0; i11 < sArr2[0].length; i11++) {
                        short multElem = GF2Field.multElem(sArr[i4][i10], sArr2[i10][i11]);
                        short[][] sArr3 = this.A;
                        sArr3[i4][i11] = GF2Field.addElem(sArr3[i4][i11], multElem);
                    }
                }
            }
            return this.A;
        }
        throw new RuntimeException("Multiplication is not possible!");
    }

    public short[] solveEquation(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            this.A = (short[][]) Array.newInstance(short.class, sArr.length, sArr.length + 1);
            this.f91561x = new short[sArr.length];
            for (int i4 = 0; i4 < sArr.length; i4++) {
                for (int i10 = 0; i10 < sArr[0].length; i10++) {
                    this.A[i4][i10] = sArr[i4][i10];
                }
            }
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                short[][] sArr3 = this.A;
                sArr3[i11][sArr2.length] = GF2Field.addElem(sArr2[i11], sArr3[i11][sArr2.length]);
            }
            computeZerosUnder(false);
            substitute();
            return this.f91561x;
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
