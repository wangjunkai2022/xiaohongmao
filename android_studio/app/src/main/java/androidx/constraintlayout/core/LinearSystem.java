package androidx.constraintlayout.core;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import io.sentry.protocol.y;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    private static final boolean DEBUG_CONSTRAINTS = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = false;
    private static int POOL_SIZE = 1000;
    public static boolean SIMPLIFY_SYNONYMS = true;
    public static boolean SKIP_COLUMNS = true;
    public static boolean USE_BASIC_SYNONYMS = true;
    public static boolean USE_DEPENDENCY_ORDERING = false;
    public static boolean USE_SYNONYMS = true;
    public static Metrics sMetrics;
    final Cache mCache;
    private Row mGoal;
    ArrayRow[] mRows;
    private Row mTempGoal;
    public boolean hasSimpleDefinition = false;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private int TABLE_SIZE = 32;
    private int mMaxColumns = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;
    private boolean[] mAlreadyTestedCandidates = new boolean[32];
    int mNumColumns = 1;
    int mNumRows = 0;
    private int mMaxRows = 32;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(Row row);

        boolean isEmpty();

        void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z9);

        void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z9);

        void updateFromSystem(LinearSystem linearSystem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ValuesRow extends ArrayRow {
        public ValuesRow(Cache cache) {
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[32];
        releaseRows();
        Cache cache = new Cache();
        this.mCache = cache;
        this.mGoal = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(cache);
        } else {
            this.mTempGoal = new ArrayRow(cache);
        }
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type, String str) {
        SolverVariable acquire = this.mCache.solverVariablePool.acquire();
        if (acquire == null) {
            acquire = new SolverVariable(type, str);
            acquire.setType(type, str);
        } else {
            acquire.reset();
            acquire.setType(type, str);
        }
        int i4 = this.mPoolVariablesCount;
        int i10 = POOL_SIZE;
        if (i4 >= i10) {
            int i11 = i10 * 2;
            POOL_SIZE = i11;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, i11);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i12 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i12 + 1;
        solverVariableArr[i12] = acquire;
        return acquire;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    private final void addRow(ArrayRow arrayRow) {
        int i4;
        if (SIMPLIFY_SYNONYMS && arrayRow.isSimpleDefinition) {
            arrayRow.variable.setFinalValue(this, arrayRow.constantValue);
        } else {
            ArrayRow[] arrayRowArr = this.mRows;
            int i10 = this.mNumRows;
            arrayRowArr[i10] = arrayRow;
            SolverVariable solverVariable = arrayRow.variable;
            solverVariable.definitionId = i10;
            this.mNumRows = i10 + 1;
            solverVariable.updateReferencesWithNewDefinition(this, arrayRow);
        }
        if (SIMPLIFY_SYNONYMS && this.hasSimpleDefinition) {
            int i11 = 0;
            while (i11 < this.mNumRows) {
                if (this.mRows[i11] == null) {
                    System.out.println("WTF");
                }
                ArrayRow[] arrayRowArr2 = this.mRows;
                if (arrayRowArr2[i11] != null && arrayRowArr2[i11].isSimpleDefinition) {
                    ArrayRow arrayRow2 = arrayRowArr2[i11];
                    arrayRow2.variable.setFinalValue(this, arrayRow2.constantValue);
                    if (OPTIMIZED_ENGINE) {
                        this.mCache.optimizedArrayRowPool.release(arrayRow2);
                    } else {
                        this.mCache.arrayRowPool.release(arrayRow2);
                    }
                    this.mRows[i11] = null;
                    int i12 = i11 + 1;
                    int i13 = i12;
                    while (true) {
                        i4 = this.mNumRows;
                        if (i12 >= i4) {
                            break;
                        }
                        ArrayRow[] arrayRowArr3 = this.mRows;
                        int i14 = i12 - 1;
                        arrayRowArr3[i14] = arrayRowArr3[i12];
                        if (arrayRowArr3[i14].variable.definitionId == i12) {
                            arrayRowArr3[i14].variable.definitionId = i14;
                        }
                        i13 = i12;
                        i12++;
                    }
                    if (i13 < i4) {
                        this.mRows[i13] = null;
                    }
                    this.mNumRows = i4 - 1;
                    i11--;
                }
                i11++;
            }
            this.hasSimpleDefinition = false;
        }
    }

    private void addSingleError(ArrayRow arrayRow, int i4) {
        addSingleError(arrayRow, i4, 0);
    }

    private void computeValues() {
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            ArrayRow arrayRow = this.mRows[i4];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f10) {
        return linearSystem.createRow().createRowDimensionPercent(solverVariable, solverVariable2, f10);
    }

    private SolverVariable createVariable(String str, SolverVariable.Type type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(type, null);
        acquireSolverVariable.setName(str);
        int i4 = this.mVariablesID + 1;
        this.mVariablesID = i4;
        this.mNumColumns++;
        acquireSolverVariable.id = i4;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, acquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    private void displayRows() {
        displaySolverVariables();
        String str = "";
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            str = (str + this.mRows[i4]) + "\n";
        }
        System.out.println(str + this.mGoal + "\n");
    }

    private void displaySolverVariables() {
        System.out.println("Display Rows (" + this.mNumRows + y.b.f83919g + this.mNumColumns + ")\n");
    }

    private int enforceBFS(Row row) throws Exception {
        boolean z9;
        int i4 = 0;
        while (true) {
            if (i4 >= this.mNumRows) {
                z9 = false;
                break;
            }
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i4].variable.mType != SolverVariable.Type.UNRESTRICTED && arrayRowArr[i4].constantValue < 0.0f) {
                z9 = true;
                break;
            }
            i4++;
        }
        if (z9) {
            boolean z10 = false;
            int i10 = 0;
            while (!z10) {
                Metrics metrics = sMetrics;
                if (metrics != null) {
                    metrics.bfs++;
                }
                i10++;
                float f10 = Float.MAX_VALUE;
                int i11 = -1;
                int i12 = -1;
                int i13 = 0;
                for (int i14 = 0; i14 < this.mNumRows; i14++) {
                    ArrayRow arrayRow = this.mRows[i14];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.constantValue < 0.0f) {
                        int i15 = 9;
                        if (SKIP_COLUMNS) {
                            int currentSize = arrayRow.variables.getCurrentSize();
                            int i16 = 0;
                            while (i16 < currentSize) {
                                SolverVariable variable = arrayRow.variables.getVariable(i16);
                                float f11 = arrayRow.variables.get(variable);
                                if (f11 > 0.0f) {
                                    int i17 = 0;
                                    while (i17 < i15) {
                                        float f12 = variable.strengthVector[i17] / f11;
                                        if ((f12 < f10 && i17 == i13) || i17 > i13) {
                                            i12 = variable.id;
                                            i13 = i17;
                                            i11 = i14;
                                            f10 = f12;
                                        }
                                        i17++;
                                        i15 = 9;
                                    }
                                }
                                i16++;
                                i15 = 9;
                            }
                        } else {
                            for (int i18 = 1; i18 < this.mNumColumns; i18++) {
                                SolverVariable solverVariable = this.mCache.mIndexedVariables[i18];
                                float f13 = arrayRow.variables.get(solverVariable);
                                if (f13 > 0.0f) {
                                    for (int i19 = 0; i19 < 9; i19++) {
                                        float f14 = solverVariable.strengthVector[i19] / f13;
                                        if ((f14 < f10 && i19 == i13) || i19 > i13) {
                                            i12 = i18;
                                            i13 = i19;
                                            i11 = i14;
                                            f10 = f14;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (i11 != -1) {
                    ArrayRow arrayRow2 = this.mRows[i11];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics2 = sMetrics;
                    if (metrics2 != null) {
                        metrics2.pivots++;
                    }
                    arrayRow2.pivot(this.mCache.mIndexedVariables[i12]);
                    SolverVariable solverVariable2 = arrayRow2.variable;
                    solverVariable2.definitionId = i11;
                    solverVariable2.updateReferencesWithNewDefinition(this, arrayRow2);
                } else {
                    z10 = true;
                }
                if (i10 > this.mNumColumns / 2) {
                    z10 = true;
                }
            }
            return i10;
        }
        return 0;
    }

    private String getDisplaySize(int i4) {
        int i10 = i4 * 4;
        int i11 = i10 / 1024;
        int i12 = i11 / 1024;
        if (i12 > 0) {
            return "" + i12 + " Mb";
        } else if (i11 > 0) {
            return "" + i11 + " Kb";
        } else {
            return "" + i10 + " bytes";
        }
    }

    private String getDisplayStrength(int i4) {
        return i4 == 1 ? "LOW" : i4 == 2 ? "MEDIUM" : i4 == 3 ? "HIGH" : i4 == 4 ? "HIGHEST" : i4 == 5 ? "EQUALITY" : i4 == 8 ? "FIXED" : i4 == 6 ? "BARRIER" : "NONE";
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    private void increaseTableSize() {
        int i4 = this.TABLE_SIZE * 2;
        this.TABLE_SIZE = i4;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, i4);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
        int i10 = this.TABLE_SIZE;
        this.mAlreadyTestedCandidates = new boolean[i10];
        this.mMaxColumns = i10;
        this.mMaxRows = i10;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i10);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    private final int optimize(Row row, boolean z9) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i4 = 0; i4 < this.mNumColumns; i4++) {
            this.mAlreadyTestedCandidates[i4] = false;
        }
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            i10++;
            if (i10 >= this.mNumColumns * 2) {
                return i10;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().id] = true;
            }
            SolverVariable pivotCandidate = row.getPivotCandidate(this, this.mAlreadyTestedCandidates);
            if (pivotCandidate != null) {
                boolean[] zArr = this.mAlreadyTestedCandidates;
                int i11 = pivotCandidate.id;
                if (zArr[i11]) {
                    return i10;
                }
                zArr[i11] = true;
            }
            if (pivotCandidate != null) {
                float f10 = Float.MAX_VALUE;
                int i12 = -1;
                for (int i13 = 0; i13 < this.mNumRows; i13++) {
                    ArrayRow arrayRow = this.mRows[i13];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.hasVariable(pivotCandidate)) {
                        float f11 = arrayRow.variables.get(pivotCandidate);
                        if (f11 < 0.0f) {
                            float f12 = (-arrayRow.constantValue) / f11;
                            if (f12 < f10) {
                                i12 = i13;
                                f10 = f12;
                            }
                        }
                    }
                }
                if (i12 > -1) {
                    ArrayRow arrayRow2 = this.mRows[i12];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.pivot(pivotCandidate);
                    SolverVariable solverVariable = arrayRow2.variable;
                    solverVariable.definitionId = i12;
                    solverVariable.updateReferencesWithNewDefinition(this, arrayRow2);
                }
            } else {
                z10 = true;
            }
        }
        return i10;
    }

    private void releaseRows() {
        int i4 = 0;
        if (OPTIMIZED_ENGINE) {
            while (i4 < this.mNumRows) {
                ArrayRow arrayRow = this.mRows[i4];
                if (arrayRow != null) {
                    this.mCache.optimizedArrayRowPool.release(arrayRow);
                }
                this.mRows[i4] = null;
                i4++;
            }
            return;
        }
        while (i4 < this.mNumRows) {
            ArrayRow arrayRow2 = this.mRows[i4];
            if (arrayRow2 != null) {
                this.mCache.arrayRowPool.release(arrayRow2);
            }
            this.mRows[i4] = null;
            i4++;
        }
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f10, int i4) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable createObjectVariable = createObjectVariable(constraintWidget.getAnchor(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable createObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable createObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable createObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(type4));
        SolverVariable createObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(type));
        SolverVariable createObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(type2));
        SolverVariable createObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(type3));
        SolverVariable createObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(type4));
        ArrayRow createRow = createRow();
        double d4 = f10;
        double d10 = i4;
        createRow.createRowWithAngle(createObjectVariable2, createObjectVariable4, createObjectVariable6, createObjectVariable8, (float) (Math.sin(d4) * d10));
        addConstraint(createRow);
        ArrayRow createRow2 = createRow();
        createRow2.createRowWithAngle(createObjectVariable, createObjectVariable3, createObjectVariable5, createObjectVariable7, (float) (Math.cos(d4) * d10));
        addConstraint(createRow2);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, float f10, SolverVariable solverVariable3, SolverVariable solverVariable4, int i10, int i11) {
        ArrayRow createRow = createRow();
        createRow.createRowCentering(solverVariable, solverVariable2, i4, f10, solverVariable3, solverVariable4, i10);
        if (i11 != 8) {
            createRow.addError(this, i11);
        }
        addConstraint(createRow);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void addConstraint(androidx.constraintlayout.core.ArrayRow r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L3
            return
        L3:
            androidx.constraintlayout.core.Metrics r0 = androidx.constraintlayout.core.LinearSystem.sMetrics
            r1 = 1
            if (r0 == 0) goto L17
            long r3 = r0.constraints
            long r3 = r3 + r1
            r0.constraints = r3
            boolean r3 = r8.isSimpleDefinition
            if (r3 == 0) goto L17
            long r3 = r0.simpleconstraints
            long r3 = r3 + r1
            r0.simpleconstraints = r3
        L17:
            int r0 = r7.mNumRows
            r3 = 1
            int r0 = r0 + r3
            int r4 = r7.mMaxRows
            if (r0 >= r4) goto L26
            int r0 = r7.mNumColumns
            int r0 = r0 + r3
            int r4 = r7.mMaxColumns
            if (r0 < r4) goto L29
        L26:
            r7.increaseTableSize()
        L29:
            r0 = 0
            boolean r4 = r8.isSimpleDefinition
            if (r4 != 0) goto La1
            r8.updateFromSystem(r7)
            boolean r4 = r8.isEmpty()
            if (r4 == 0) goto L38
            return
        L38:
            r8.ensurePositiveConstant()
            boolean r4 = r8.chooseSubject(r7)
            if (r4 == 0) goto L98
            androidx.constraintlayout.core.SolverVariable r4 = r7.createExtraVariable()
            r8.variable = r4
            int r5 = r7.mNumRows
            r7.addRow(r8)
            int r6 = r7.mNumRows
            int r5 = r5 + r3
            if (r6 != r5) goto L98
            androidx.constraintlayout.core.LinearSystem$Row r0 = r7.mTempGoal
            r0.initFromRow(r8)
            androidx.constraintlayout.core.LinearSystem$Row r0 = r7.mTempGoal
            r7.optimize(r0, r3)
            int r0 = r4.definitionId
            r5 = -1
            if (r0 != r5) goto L99
            androidx.constraintlayout.core.SolverVariable r0 = r8.variable
            if (r0 != r4) goto L76
            androidx.constraintlayout.core.SolverVariable r0 = r8.pickPivot(r4)
            if (r0 == 0) goto L76
            androidx.constraintlayout.core.Metrics r4 = androidx.constraintlayout.core.LinearSystem.sMetrics
            if (r4 == 0) goto L73
            long r5 = r4.pivots
            long r5 = r5 + r1
            r4.pivots = r5
        L73:
            r8.pivot(r0)
        L76:
            boolean r0 = r8.isSimpleDefinition
            if (r0 != 0) goto L7f
            androidx.constraintlayout.core.SolverVariable r0 = r8.variable
            r0.updateReferencesWithNewDefinition(r7, r8)
        L7f:
            boolean r0 = androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ENGINE
            if (r0 == 0) goto L8b
            androidx.constraintlayout.core.Cache r0 = r7.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.optimizedArrayRowPool
            r0.release(r8)
            goto L92
        L8b:
            androidx.constraintlayout.core.Cache r0 = r7.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.arrayRowPool
            r0.release(r8)
        L92:
            int r0 = r7.mNumRows
            int r0 = r0 - r3
            r7.mNumRows = r0
            goto L99
        L98:
            r3 = 0
        L99:
            boolean r0 = r8.hasKeyVariable()
            if (r0 != 0) goto La0
            return
        La0:
            r0 = r3
        La1:
            if (r0 != 0) goto La6
            r7.addRow(r8)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.LinearSystem.addConstraint(androidx.constraintlayout.core.ArrayRow):void");
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, int i10) {
        if (USE_BASIC_SYNONYMS && i10 == 8 && solverVariable2.isFinalValue && solverVariable.definitionId == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + i4);
            return null;
        }
        ArrayRow createRow = createRow();
        createRow.createRowEquals(solverVariable, solverVariable2, i4);
        if (i10 != 8) {
            createRow.addError(this, i10);
        }
        addConstraint(createRow);
        return createRow;
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, boolean z9) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i4);
        addConstraint(createRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, int i10) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i4);
        if (i10 != 8) {
            addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i10);
        }
        addConstraint(createRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, boolean z9) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i4);
        addConstraint(createRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, int i10) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i4);
        if (i10 != 8) {
            addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i10);
        }
        addConstraint(createRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10, int i4) {
        ArrayRow createRow = createRow();
        createRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f10);
        if (i4 != 8) {
            createRow.addError(this, i4);
        }
        addConstraint(createRow);
    }

    public void addSynonym(SolverVariable solverVariable, SolverVariable solverVariable2, int i4) {
        if (solverVariable.definitionId == -1 && i4 == 0) {
            if (solverVariable2.isSynonym) {
                solverVariable2 = this.mCache.mIndexedVariables[solverVariable2.synonym];
            }
            if (solverVariable.isSynonym) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[solverVariable.synonym];
                return;
            } else {
                solverVariable.setSynonym(this, solverVariable2, 0.0f);
                return;
            }
        }
        addEquality(solverVariable, solverVariable2, i4, 8);
    }

    final void cleanupRows() {
        int i4;
        int i10 = 0;
        while (i10 < this.mNumRows) {
            ArrayRow arrayRow = this.mRows[i10];
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.isSimpleDefinition = true;
            }
            if (arrayRow.isSimpleDefinition) {
                SolverVariable solverVariable = arrayRow.variable;
                solverVariable.computedValue = arrayRow.constantValue;
                solverVariable.removeFromRow(arrayRow);
                int i11 = i10;
                while (true) {
                    i4 = this.mNumRows;
                    if (i11 >= i4 - 1) {
                        break;
                    }
                    ArrayRow[] arrayRowArr = this.mRows;
                    int i12 = i11 + 1;
                    arrayRowArr[i11] = arrayRowArr[i12];
                    i11 = i12;
                }
                this.mRows[i4 - 1] = null;
                this.mNumRows = i4 - 1;
                i10--;
                if (OPTIMIZED_ENGINE) {
                    this.mCache.optimizedArrayRowPool.release(arrayRow);
                } else {
                    this.mCache.arrayRowPool.release(arrayRow);
                }
            }
            i10++;
        }
    }

    public SolverVariable createErrorVariable(int i4, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR, str);
        int i10 = this.mVariablesID + 1;
        this.mVariablesID = i10;
        this.mNumColumns++;
        acquireSolverVariable.id = i10;
        acquireSolverVariable.strength = i4;
        this.mCache.mIndexedVariables[i10] = acquireSolverVariable;
        this.mGoal.addError(acquireSolverVariable);
        return acquireSolverVariable;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int i4 = this.mVariablesID + 1;
        this.mVariablesID = i4;
        this.mNumColumns++;
        acquireSolverVariable.id = i4;
        this.mCache.mIndexedVariables[i4] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.mCache);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            int i4 = solverVariable.id;
            if (i4 == -1 || i4 > this.mVariablesID || this.mCache.mIndexedVariables[i4] == null) {
                if (i4 != -1) {
                    solverVariable.reset();
                }
                int i10 = this.mVariablesID + 1;
                this.mVariablesID = i10;
                this.mNumColumns++;
                solverVariable.id = i10;
                solverVariable.mType = SolverVariable.Type.UNRESTRICTED;
                this.mCache.mIndexedVariables[i10] = solverVariable;
            }
        }
        return solverVariable;
    }

    public ArrayRow createRow() {
        ArrayRow acquire;
        if (OPTIMIZED_ENGINE) {
            acquire = this.mCache.optimizedArrayRowPool.acquire();
            if (acquire == null) {
                acquire = new ValuesRow(this.mCache);
                OPTIMIZED_ARRAY_ROW_CREATION++;
            } else {
                acquire.reset();
            }
        } else {
            acquire = this.mCache.arrayRowPool.acquire();
            if (acquire == null) {
                acquire = new ArrayRow(this.mCache);
                ARRAY_ROW_CREATION++;
            } else {
                acquire.reset();
            }
        }
        SolverVariable.increaseErrorId();
        return acquire;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int i4 = this.mVariablesID + 1;
        this.mVariablesID = i4;
        this.mNumColumns++;
        acquireSolverVariable.id = i4;
        this.mCache.mIndexedVariables[i4] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    public void displayReadableRows() {
        displaySolverVariables();
        String str = " num vars " + this.mVariablesID + "\n";
        for (int i4 = 0; i4 < this.mVariablesID + 1; i4++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[i4];
            if (solverVariable != null && solverVariable.isFinalValue) {
                str = str + " $[" + i4 + "] => " + solverVariable + " = " + solverVariable.computedValue + "\n";
            }
        }
        String str2 = str + "\n";
        for (int i10 = 0; i10 < this.mVariablesID + 1; i10++) {
            SolverVariable[] solverVariableArr = this.mCache.mIndexedVariables;
            SolverVariable solverVariable2 = solverVariableArr[i10];
            if (solverVariable2 != null && solverVariable2.isSynonym) {
                str2 = str2 + " ~[" + i10 + "] => " + solverVariable2 + " = " + solverVariableArr[solverVariable2.synonym] + " + " + solverVariable2.synonymDelta + "\n";
            }
        }
        String str3 = str2 + "\n\n #  ";
        for (int i11 = 0; i11 < this.mNumRows; i11++) {
            str3 = (str3 + this.mRows[i11].toReadableString()) + "\n #  ";
        }
        if (this.mGoal != null) {
            str3 = str3 + "Goal: " + this.mGoal + "\n";
        }
        System.out.println(str3);
    }

    void displaySystemInformation() {
        int i4 = 0;
        for (int i10 = 0; i10 < this.TABLE_SIZE; i10++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i10] != null) {
                i4 += arrayRowArr[i10].sizeInBytes();
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.mNumRows; i12++) {
            ArrayRow[] arrayRowArr2 = this.mRows;
            if (arrayRowArr2[i12] != null) {
                i11 += arrayRowArr2[i12].sizeInBytes();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("Linear System -> Table size: ");
        sb.append(this.TABLE_SIZE);
        sb.append(" (");
        int i13 = this.TABLE_SIZE;
        sb.append(getDisplaySize(i13 * i13));
        sb.append(") -- row sizes: ");
        sb.append(getDisplaySize(i4));
        sb.append(", actual size: ");
        sb.append(getDisplaySize(i11));
        sb.append(" rows: ");
        sb.append(this.mNumRows);
        sb.append("/");
        sb.append(this.mMaxRows);
        sb.append(" cols: ");
        sb.append(this.mNumColumns);
        sb.append("/");
        sb.append(this.mMaxColumns);
        sb.append(" ");
        sb.append(0);
        sb.append(" occupied cells, ");
        sb.append(getDisplaySize(0));
        printStream.println(sb.toString());
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            if (this.mRows[i4].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.mRows[i4].toReadableString()) + "\n";
            }
        }
        System.out.println(str + this.mGoal + "\n");
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public Cache getCache() {
        return this.mCache;
    }

    Row getGoal() {
        return this.mGoal;
    }

    public int getMemoryUsed() {
        int i4 = 0;
        for (int i10 = 0; i10 < this.mNumRows; i10++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i10] != null) {
                i4 += arrayRowArr[i10].sizeInBytes();
            }
        }
        return i4;
    }

    public int getNumEquations() {
        return this.mNumRows;
    }

    public int getNumVariables() {
        return this.mVariablesID;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    ArrayRow getRow(int i4) {
        return this.mRows[i4];
    }

    float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    SolverVariable getVariable(String str, SolverVariable.Type type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        return solverVariable == null ? createVariable(str, type) : solverVariable;
    }

    public void minimize() throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.mGoal.isEmpty()) {
            computeValues();
        } else if (!this.graphOptimizer && !this.newgraphOptimizer) {
            minimizeGoal(this.mGoal);
        } else {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.graphOptimizer++;
            }
            boolean z9 = false;
            int i4 = 0;
            while (true) {
                if (i4 >= this.mNumRows) {
                    z9 = true;
                    break;
                } else if (!this.mRows[i4].isSimpleDefinition) {
                    break;
                } else {
                    i4++;
                }
            }
            if (!z9) {
                minimizeGoal(this.mGoal);
                return;
            }
            Metrics metrics3 = sMetrics;
            if (metrics3 != null) {
                metrics3.fullySolved++;
            }
            computeValues();
        }
    }

    void minimizeGoal(Row row) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.mNumColumns);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.mNumRows);
        }
        enforceBFS(row);
        optimize(row, false);
        computeValues();
    }

    public void removeRow(ArrayRow arrayRow) {
        SolverVariable solverVariable;
        int i4;
        if (!arrayRow.isSimpleDefinition || (solverVariable = arrayRow.variable) == null) {
            return;
        }
        int i10 = solverVariable.definitionId;
        if (i10 != -1) {
            while (true) {
                i4 = this.mNumRows;
                if (i10 >= i4 - 1) {
                    break;
                }
                ArrayRow[] arrayRowArr = this.mRows;
                int i11 = i10 + 1;
                SolverVariable solverVariable2 = arrayRowArr[i11].variable;
                if (solverVariable2.definitionId == i11) {
                    solverVariable2.definitionId = i10;
                }
                arrayRowArr[i10] = arrayRowArr[i11];
                i10 = i11;
            }
            this.mNumRows = i4 - 1;
        }
        SolverVariable solverVariable3 = arrayRow.variable;
        if (!solverVariable3.isFinalValue) {
            solverVariable3.setFinalValue(this, arrayRow.constantValue);
        }
        if (OPTIMIZED_ENGINE) {
            this.mCache.optimizedArrayRowPool.release(arrayRow);
        } else {
            this.mCache.arrayRowPool.release(arrayRow);
        }
    }

    public void reset() {
        Cache cache;
        int i4 = 0;
        while (true) {
            cache = this.mCache;
            SolverVariable[] solverVariableArr = cache.mIndexedVariables;
            if (i4 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i4];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            i4++;
        }
        cache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.mVariables;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int i10 = 0; i10 < this.mNumRows; i10++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i10] != null) {
                arrayRowArr[i10].used = false;
            }
        }
        releaseRows();
        this.mNumRows = 0;
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(this.mCache);
        } else {
            this.mTempGoal = new ArrayRow(this.mCache);
        }
    }

    void addSingleError(ArrayRow arrayRow, int i4, int i10) {
        arrayRow.addSingleError(createErrorVariable(i10, null), i4);
    }

    public void addEquality(SolverVariable solverVariable, int i4) {
        if (USE_BASIC_SYNONYMS && solverVariable.definitionId == -1) {
            float f10 = i4;
            solverVariable.setFinalValue(this, f10);
            for (int i10 = 0; i10 < this.mVariablesID + 1; i10++) {
                SolverVariable solverVariable2 = this.mCache.mIndexedVariables[i10];
                if (solverVariable2 != null && solverVariable2.isSynonym && solverVariable2.synonym == solverVariable.id) {
                    solverVariable2.setFinalValue(this, solverVariable2.synonymDelta + f10);
                }
            }
            return;
        }
        int i11 = solverVariable.definitionId;
        if (i11 != -1) {
            ArrayRow arrayRow = this.mRows[i11];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = i4;
                return;
            } else if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.isSimpleDefinition = true;
                arrayRow.constantValue = i4;
                return;
            } else {
                ArrayRow createRow = createRow();
                createRow.createRowEquals(solverVariable, i4);
                addConstraint(createRow);
                return;
            }
        }
        ArrayRow createRow2 = createRow();
        createRow2.createRowDefinition(solverVariable, i4);
        addConstraint(createRow2);
    }
}
