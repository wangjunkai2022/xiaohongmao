package androidx.constraintlayout.core;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public class SolverVariable implements Comparable<SolverVariable> {
    private static final boolean INTERNAL_DEBUG = false;
    static final int MAX_STRENGTH = 9;
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    private static final boolean VAR_USE_HASH = false;
    private static int uniqueConstantId = 1;
    private static int uniqueErrorId = 1;
    private static int uniqueId = 1;
    private static int uniqueSlackId = 1;
    private static int uniqueUnrestrictedId = 1;
    public float computedValue;
    int definitionId;
    float[] goalStrengthVector;
    public int id;
    public boolean inGoal;
    HashSet<ArrayRow> inRows;
    public boolean isFinalValue;
    boolean isSynonym;
    ArrayRow[] mClientEquations;
    int mClientEquationsCount;
    private String mName;
    Type mType;
    public int strength;
    float[] strengthVector;
    int synonym;
    float synonymDelta;
    public int usageInRowCount;

    /* renamed from: androidx.constraintlayout.core.SolverVariable$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type = iArr;
            try {
                iArr[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(String str, Type type) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        this.inRows = null;
        this.mName = str;
        this.mType = type;
    }

    private static String getUniqueName(Type type, String str) {
        if (str != null) {
            return str + uniqueErrorId;
        }
        int i4 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[type.ordinal()];
        if (i4 == 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("U");
            int i10 = uniqueUnrestrictedId + 1;
            uniqueUnrestrictedId = i10;
            sb.append(i10);
            return sb.toString();
        } else if (i4 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("C");
            int i11 = uniqueConstantId + 1;
            uniqueConstantId = i11;
            sb2.append(i11);
            return sb2.toString();
        } else if (i4 == 3) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(ExifInterface.LATITUDE_SOUTH);
            int i12 = uniqueSlackId + 1;
            uniqueSlackId = i12;
            sb3.append(i12);
            return sb3.toString();
        } else if (i4 == 4) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("e");
            int i13 = uniqueErrorId + 1;
            uniqueErrorId = i13;
            sb4.append(i13);
            return sb4.toString();
        } else if (i4 == 5) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            int i14 = uniqueId + 1;
            uniqueId = i14;
            sb5.append(i14);
            return sb5.toString();
        } else {
            throw new AssertionError(type.name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void increaseErrorId() {
        uniqueErrorId++;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i4 = 0;
        while (true) {
            int i10 = this.mClientEquationsCount;
            if (i4 < i10) {
                if (this.mClientEquations[i4] == arrayRow) {
                    return;
                }
                i4++;
            } else {
                ArrayRow[] arrayRowArr = this.mClientEquations;
                if (i10 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int i11 = this.mClientEquationsCount;
                arrayRowArr2[i11] = arrayRow;
                this.mClientEquationsCount = i11 + 1;
                return;
            }
        }
    }

    void clearStrengths() {
        for (int i4 = 0; i4 < 9; i4++) {
            this.strengthVector[i4] = 0.0f;
        }
    }

    public String getName() {
        return this.mName;
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int i4 = this.mClientEquationsCount;
        int i10 = 0;
        while (i10 < i4) {
            if (this.mClientEquations[i10] == arrayRow) {
                while (i10 < i4 - 1) {
                    ArrayRow[] arrayRowArr = this.mClientEquations;
                    int i11 = i10 + 1;
                    arrayRowArr[i10] = arrayRowArr[i11];
                    i10 = i11;
                }
                this.mClientEquationsCount--;
                return;
            }
            i10++;
        }
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        int i4 = this.mClientEquationsCount;
        for (int i10 = 0; i10 < i4; i10++) {
            this.mClientEquations[i10] = null;
        }
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.goalStrengthVector, 0.0f);
    }

    public void setFinalValue(LinearSystem linearSystem, float f10) {
        this.computedValue = f10;
        this.isFinalValue = true;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        int i4 = this.mClientEquationsCount;
        this.definitionId = -1;
        for (int i10 = 0; i10 < i4; i10++) {
            this.mClientEquations[i10].updateFromFinalVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setSynonym(LinearSystem linearSystem, SolverVariable solverVariable, float f10) {
        this.isSynonym = true;
        this.synonym = solverVariable.id;
        this.synonymDelta = f10;
        int i4 = this.mClientEquationsCount;
        this.definitionId = -1;
        for (int i10 = 0; i10 < i4; i10++) {
            this.mClientEquations[i10].updateFromSynonymVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
        linearSystem.displayReadableRows();
    }

    public void setType(Type type, String str) {
        this.mType = type;
    }

    String strengthsToString() {
        String str = this + "[";
        boolean z9 = false;
        boolean z10 = true;
        for (int i4 = 0; i4 < this.strengthVector.length; i4++) {
            String str2 = str + this.strengthVector[i4];
            float[] fArr = this.strengthVector;
            if (fArr[i4] > 0.0f) {
                z9 = false;
            } else if (fArr[i4] < 0.0f) {
                z9 = true;
            }
            if (fArr[i4] != 0.0f) {
                z10 = false;
            }
            str = i4 < fArr.length - 1 ? str2 + ", " : str2 + "] ";
        }
        if (z9) {
            str = str + " (-)";
        }
        if (z10) {
            return str + " (*)";
        }
        return str;
    }

    public String toString() {
        if (this.mName != null) {
            return "" + this.mName;
        }
        return "" + this.id;
    }

    public final void updateReferencesWithNewDefinition(LinearSystem linearSystem, ArrayRow arrayRow) {
        int i4 = this.mClientEquationsCount;
        for (int i10 = 0; i10 < i4; i10++) {
            this.mClientEquations[i10].updateFromRow(linearSystem, arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(SolverVariable solverVariable) {
        return this.id - solverVariable.id;
    }

    public SolverVariable(Type type, String str) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        this.inRows = null;
        this.mType = type;
    }
}
