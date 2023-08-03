package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.io.PrintStream;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    static final int NONE = -1;
    private static float epsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    int currentSize = 0;
    private int ROW_SIZE = 8;
    private SolverVariable candidate = null;
    private int[] mArrayIndices = new int[8];
    private int[] mArrayNextIndices = new int[8];
    private float[] mArrayValues = new float[8];
    private int mHead = -1;
    private int mLast = -1;
    private boolean mDidFillOnce = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f10, boolean z9) {
        float f11 = epsilon;
        if (f10 <= (-f11) || f10 >= f11) {
            int i4 = this.mHead;
            if (i4 == -1) {
                this.mHead = 0;
                this.mArrayValues[0] = f10;
                this.mArrayIndices[0] = solverVariable.id;
                this.mArrayNextIndices[0] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(this.mRow);
                this.currentSize++;
                if (this.mDidFillOnce) {
                    return;
                }
                int i10 = this.mLast + 1;
                this.mLast = i10;
                int[] iArr = this.mArrayIndices;
                if (i10 >= iArr.length) {
                    this.mDidFillOnce = true;
                    this.mLast = iArr.length - 1;
                    return;
                }
                return;
            }
            int i11 = -1;
            for (int i12 = 0; i4 != -1 && i12 < this.currentSize; i12++) {
                int[] iArr2 = this.mArrayIndices;
                int i13 = iArr2[i4];
                int i14 = solverVariable.id;
                if (i13 == i14) {
                    float[] fArr = this.mArrayValues;
                    float f12 = fArr[i4] + f10;
                    float f13 = epsilon;
                    if (f12 > (-f13) && f12 < f13) {
                        f12 = 0.0f;
                    }
                    fArr[i4] = f12;
                    if (f12 == 0.0f) {
                        if (i4 == this.mHead) {
                            this.mHead = this.mArrayNextIndices[i4];
                        } else {
                            int[] iArr3 = this.mArrayNextIndices;
                            iArr3[i11] = iArr3[i4];
                        }
                        if (z9) {
                            solverVariable.removeFromRow(this.mRow);
                        }
                        if (this.mDidFillOnce) {
                            this.mLast = i4;
                        }
                        solverVariable.usageInRowCount--;
                        this.currentSize--;
                        return;
                    }
                    return;
                }
                if (iArr2[i4] < i14) {
                    i11 = i4;
                }
                i4 = this.mArrayNextIndices[i4];
            }
            int i15 = this.mLast;
            int i16 = i15 + 1;
            if (this.mDidFillOnce) {
                int[] iArr4 = this.mArrayIndices;
                if (iArr4[i15] != -1) {
                    i15 = iArr4.length;
                }
            } else {
                i15 = i16;
            }
            int[] iArr5 = this.mArrayIndices;
            if (i15 >= iArr5.length && this.currentSize < iArr5.length) {
                int i17 = 0;
                while (true) {
                    int[] iArr6 = this.mArrayIndices;
                    if (i17 >= iArr6.length) {
                        break;
                    } else if (iArr6[i17] == -1) {
                        i15 = i17;
                        break;
                    } else {
                        i17++;
                    }
                }
            }
            int[] iArr7 = this.mArrayIndices;
            if (i15 >= iArr7.length) {
                i15 = iArr7.length;
                int i18 = this.ROW_SIZE * 2;
                this.ROW_SIZE = i18;
                this.mDidFillOnce = false;
                this.mLast = i15 - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, i18);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
            }
            this.mArrayIndices[i15] = solverVariable.id;
            this.mArrayValues[i15] = f10;
            if (i11 != -1) {
                int[] iArr8 = this.mArrayNextIndices;
                iArr8[i15] = iArr8[i11];
                iArr8[i11] = i15;
            } else {
                this.mArrayNextIndices[i15] = this.mHead;
                this.mHead = i15;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            int i19 = this.mLast;
            int[] iArr9 = this.mArrayIndices;
            if (i19 >= iArr9.length) {
                this.mDidFillOnce = true;
                this.mLast = iArr9.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i4 = this.mHead;
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i4]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            i4 = this.mArrayNextIndices[i4];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        int i4 = this.mHead;
        if (i4 == -1) {
            return false;
        }
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            if (this.mArrayIndices[i4] == solverVariable.id) {
                return true;
            }
            i4 = this.mArrayNextIndices[i4];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i4 = this.currentSize;
        System.out.print("{ ");
        for (int i10 = 0; i10 < i4; i10++) {
            SolverVariable variable = getVariable(i10);
            if (variable != null) {
                PrintStream printStream = System.out;
                printStream.print(variable + " = " + getVariableValue(i10) + " ");
            }
        }
        System.out.println(" }");
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f10) {
        int i4 = this.mHead;
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            float[] fArr = this.mArrayValues;
            fArr[i4] = fArr[i4] / f10;
            i4 = this.mArrayNextIndices[i4];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float get(SolverVariable solverVariable) {
        int i4 = this.mHead;
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            if (this.mArrayIndices[i4] == solverVariable.id) {
                return this.mArrayValues[i4];
            }
            i4 = this.mArrayNextIndices[i4];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.currentSize;
    }

    public int getHead() {
        return this.mHead;
    }

    public final int getId(int i4) {
        return this.mArrayIndices[i4];
    }

    public final int getNextIndice(int i4) {
        return this.mArrayNextIndices[i4];
    }

    SolverVariable getPivotCandidate() {
        SolverVariable solverVariable = this.candidate;
        if (solverVariable == null) {
            int i4 = this.mHead;
            SolverVariable solverVariable2 = null;
            for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
                if (this.mArrayValues[i4] < 0.0f) {
                    SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[i4]];
                    if (solverVariable2 == null || solverVariable2.strength < solverVariable3.strength) {
                        solverVariable2 = solverVariable3;
                    }
                }
                i4 = this.mArrayNextIndices[i4];
            }
            return solverVariable2;
        }
        return solverVariable;
    }

    public final float getValue(int i4) {
        return this.mArrayValues[i4];
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i4) {
        int i10 = this.mHead;
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            if (i11 == i4) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[i10]];
            }
            i10 = this.mArrayNextIndices[i10];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i4) {
        int i10 = this.mHead;
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            if (i11 == i4) {
                return this.mArrayValues[i10];
            }
            i10 = this.mArrayNextIndices[i10];
        }
        return 0.0f;
    }

    boolean hasAtLeastOnePositiveVariable() {
        int i4 = this.mHead;
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            if (this.mArrayValues[i4] > 0.0f) {
                return true;
            }
            i4 = this.mArrayNextIndices[i4];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int i4 = this.mHead;
        if (i4 == -1) {
            return -1;
        }
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            if (this.mArrayIndices[i4] == solverVariable.id) {
                return i4;
            }
            i4 = this.mArrayNextIndices[i4];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i4 = this.mHead;
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            float[] fArr = this.mArrayValues;
            fArr[i4] = fArr[i4] * (-1.0f);
            i4 = this.mArrayNextIndices[i4];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void put(SolverVariable solverVariable, float f10) {
        if (f10 == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        int i4 = this.mHead;
        if (i4 == -1) {
            this.mHead = 0;
            this.mArrayValues[0] = f10;
            this.mArrayIndices[0] = solverVariable.id;
            this.mArrayNextIndices[0] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            int i10 = this.mLast + 1;
            this.mLast = i10;
            int[] iArr = this.mArrayIndices;
            if (i10 >= iArr.length) {
                this.mDidFillOnce = true;
                this.mLast = iArr.length - 1;
                return;
            }
            return;
        }
        int i11 = -1;
        for (int i12 = 0; i4 != -1 && i12 < this.currentSize; i12++) {
            int[] iArr2 = this.mArrayIndices;
            int i13 = iArr2[i4];
            int i14 = solverVariable.id;
            if (i13 == i14) {
                this.mArrayValues[i4] = f10;
                return;
            }
            if (iArr2[i4] < i14) {
                i11 = i4;
            }
            i4 = this.mArrayNextIndices[i4];
        }
        int i15 = this.mLast;
        int i16 = i15 + 1;
        if (this.mDidFillOnce) {
            int[] iArr3 = this.mArrayIndices;
            if (iArr3[i15] != -1) {
                i15 = iArr3.length;
            }
        } else {
            i15 = i16;
        }
        int[] iArr4 = this.mArrayIndices;
        if (i15 >= iArr4.length && this.currentSize < iArr4.length) {
            int i17 = 0;
            while (true) {
                int[] iArr5 = this.mArrayIndices;
                if (i17 >= iArr5.length) {
                    break;
                } else if (iArr5[i17] == -1) {
                    i15 = i17;
                    break;
                } else {
                    i17++;
                }
            }
        }
        int[] iArr6 = this.mArrayIndices;
        if (i15 >= iArr6.length) {
            i15 = iArr6.length;
            int i18 = this.ROW_SIZE * 2;
            this.ROW_SIZE = i18;
            this.mDidFillOnce = false;
            this.mLast = i15 - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, i18);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[i15] = solverVariable.id;
        this.mArrayValues[i15] = f10;
        if (i11 != -1) {
            int[] iArr7 = this.mArrayNextIndices;
            iArr7[i15] = iArr7[i11];
            iArr7[i11] = i15;
        } else {
            this.mArrayNextIndices[i15] = this.mHead;
            this.mHead = i15;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        int i19 = this.currentSize + 1;
        this.currentSize = i19;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        int[] iArr8 = this.mArrayIndices;
        if (i19 >= iArr8.length) {
            this.mDidFillOnce = true;
        }
        if (this.mLast >= iArr8.length) {
            this.mDidFillOnce = true;
            this.mLast = iArr8.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float remove(SolverVariable solverVariable, boolean z9) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        int i4 = this.mHead;
        if (i4 == -1) {
            return 0.0f;
        }
        int i10 = 0;
        int i11 = -1;
        while (i4 != -1 && i10 < this.currentSize) {
            if (this.mArrayIndices[i4] == solverVariable.id) {
                if (i4 == this.mHead) {
                    this.mHead = this.mArrayNextIndices[i4];
                } else {
                    int[] iArr = this.mArrayNextIndices;
                    iArr[i11] = iArr[i4];
                }
                if (z9) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[i4] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = i4;
                }
                return this.mArrayValues[i4];
            }
            i10++;
            i11 = i4;
            i4 = this.mArrayNextIndices[i4];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return (this.mArrayIndices.length * 4 * 3) + 0 + 36;
    }

    public String toString() {
        int i4 = this.mHead;
        String str = "";
        for (int i10 = 0; i4 != -1 && i10 < this.currentSize; i10++) {
            str = ((str + " -> ") + this.mArrayValues[i4] + " : ") + this.mCache.mIndexedVariables[this.mArrayIndices[i4]];
            i4 = this.mArrayNextIndices[i4];
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z9) {
        float f10 = get(arrayRow.variable);
        remove(arrayRow.variable, z9);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i4 = 0; i4 < currentSize; i4++) {
            SolverVariable variable = arrayRowVariables.getVariable(i4);
            add(variable, arrayRowVariables.get(variable) * f10, z9);
        }
        return f10;
    }
}
