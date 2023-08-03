package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {
    private static final boolean DEBUG = false;
    static final int NOT_FOUND = -1;
    private static final float epsilon = 1.0E-4f;
    private int TABLE_SIZE;
    GoalVariableAccessor accessor;
    private SolverVariable[] arrayGoals;
    Cache mCache;
    private int numGoals;
    private SolverVariable[] sortArray;

    /* loaded from: classes.dex */
    class GoalVariableAccessor {
        PriorityGoalRow row;
        SolverVariable variable;

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
            this.row = priorityGoalRow;
        }

        public void add(SolverVariable solverVariable) {
            for (int i4 = 0; i4 < 9; i4++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i4] = fArr[i4] + solverVariable.goalStrengthVector[i4];
                if (Math.abs(fArr[i4]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i4] = 0.0f;
                }
            }
        }

        public boolean addToGoal(SolverVariable solverVariable, float f10) {
            boolean z9 = true;
            if (!this.variable.inGoal) {
                for (int i4 = 0; i4 < 9; i4++) {
                    float f11 = solverVariable.goalStrengthVector[i4];
                    if (f11 != 0.0f) {
                        float f12 = f11 * f10;
                        if (Math.abs(f12) < 1.0E-4f) {
                            f12 = 0.0f;
                        }
                        this.variable.goalStrengthVector[i4] = f12;
                    } else {
                        this.variable.goalStrengthVector[i4] = 0.0f;
                    }
                }
                return true;
            }
            for (int i10 = 0; i10 < 9; i10++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i10] = fArr[i10] + (solverVariable.goalStrengthVector[i10] * f10);
                if (Math.abs(fArr[i10]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i10] = 0.0f;
                } else {
                    z9 = false;
                }
            }
            if (z9) {
                PriorityGoalRow.this.removeGoal(this.variable);
            }
            return false;
        }

        public void init(SolverVariable solverVariable) {
            this.variable = solverVariable;
        }

        public final boolean isNegative() {
            for (int i4 = 8; i4 >= 0; i4--) {
                float f10 = this.variable.goalStrengthVector[i4];
                if (f10 > 0.0f) {
                    return false;
                }
                if (f10 < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isNull() {
            for (int i4 = 0; i4 < 9; i4++) {
                if (this.variable.goalStrengthVector[i4] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isSmallerThan(SolverVariable solverVariable) {
            int i4 = 8;
            while (true) {
                if (i4 < 0) {
                    break;
                }
                float f10 = solverVariable.goalStrengthVector[i4];
                float f11 = this.variable.goalStrengthVector[i4];
                if (f11 == f10) {
                    i4--;
                } else if (f11 < f10) {
                    return true;
                }
            }
            return false;
        }

        public void reset() {
            Arrays.fill(this.variable.goalStrengthVector, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.variable != null) {
                for (int i4 = 0; i4 < 9; i4++) {
                    str = str + this.variable.goalStrengthVector[i4] + " ";
                }
            }
            return str + "] " + this.variable;
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.TABLE_SIZE = 128;
        this.arrayGoals = new SolverVariable[128];
        this.sortArray = new SolverVariable[128];
        this.numGoals = 0;
        this.accessor = new GoalVariableAccessor(this);
        this.mCache = cache;
    }

    private final void addToGoal(SolverVariable solverVariable) {
        int i4;
        int i10 = this.numGoals + 1;
        SolverVariable[] solverVariableArr = this.arrayGoals;
        if (i10 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.arrayGoals = solverVariableArr2;
            this.sortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.arrayGoals;
        int i11 = this.numGoals;
        solverVariableArr3[i11] = solverVariable;
        int i12 = i11 + 1;
        this.numGoals = i12;
        if (i12 > 1 && solverVariableArr3[i12 - 1].id > solverVariable.id) {
            int i13 = 0;
            while (true) {
                i4 = this.numGoals;
                if (i13 >= i4) {
                    break;
                }
                this.sortArray[i13] = this.arrayGoals[i13];
                i13++;
            }
            Arrays.sort(this.sortArray, 0, i4, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.core.PriorityGoalRow.1
                @Override // java.util.Comparator
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.id - solverVariable3.id;
                }
            });
            for (int i14 = 0; i14 < this.numGoals; i14++) {
                this.arrayGoals[i14] = this.sortArray[i14];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeGoal(SolverVariable solverVariable) {
        int i4 = 0;
        while (i4 < this.numGoals) {
            if (this.arrayGoals[i4] == solverVariable) {
                while (true) {
                    int i10 = this.numGoals;
                    if (i4 < i10 - 1) {
                        SolverVariable[] solverVariableArr = this.arrayGoals;
                        int i11 = i4 + 1;
                        solverVariableArr[i4] = solverVariableArr[i11];
                        i4 = i11;
                    } else {
                        this.numGoals = i10 - 1;
                        solverVariable.inGoal = false;
                        return;
                    }
                }
            } else {
                i4++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        this.accessor.init(solverVariable);
        this.accessor.reset();
        solverVariable.goalStrengthVector[solverVariable.strength] = 1.0f;
        addToGoal(solverVariable);
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.numGoals = 0;
        this.constantValue = 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        int i4 = -1;
        for (int i10 = 0; i10 < this.numGoals; i10++) {
            SolverVariable solverVariable = this.arrayGoals[i10];
            if (!zArr[solverVariable.id]) {
                this.accessor.init(solverVariable);
                if (i4 == -1) {
                    if (!this.accessor.isNegative()) {
                    }
                    i4 = i10;
                } else {
                    if (!this.accessor.isSmallerThan(this.arrayGoals[i4])) {
                    }
                    i4 = i10;
                }
            }
        }
        if (i4 == -1) {
            return null;
        }
        return this.arrayGoals[i4];
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.numGoals == 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.constantValue + ") : ";
        for (int i4 = 0; i4 < this.numGoals; i4++) {
            this.accessor.init(this.arrayGoals[i4]);
            str = str + this.accessor + " ";
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z9) {
        SolverVariable solverVariable = arrayRow.variable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i4 = 0; i4 < currentSize; i4++) {
            SolverVariable variable = arrayRowVariables.getVariable(i4);
            float variableValue = arrayRowVariables.getVariableValue(i4);
            this.accessor.init(variable);
            if (this.accessor.addToGoal(solverVariable, variableValue)) {
                addToGoal(variable);
            }
            this.constantValue += arrayRow.constantValue * variableValue;
        }
        removeGoal(solverVariable);
    }
}
