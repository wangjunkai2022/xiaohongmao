package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.alipay.sdk.util.i;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private static final boolean USE_RELAX_GONE = false;
    private static final boolean USE_RESOLUTION = true;
    private int mBarrierType = 0;
    private boolean mAllowsGoneWidget = true;
    private int mMargin = 0;
    boolean resolved = false;

    public Barrier() {
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z9) {
        Object[] objArr;
        boolean z10;
        int i4;
        int i10;
        int i11;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        constraintAnchorArr[0] = this.mLeft;
        constraintAnchorArr[2] = this.mTop;
        constraintAnchorArr[1] = this.mRight;
        constraintAnchorArr[3] = this.mBottom;
        int i12 = 0;
        while (true) {
            objArr = this.mListAnchors;
            if (i12 >= objArr.length) {
                break;
            }
            objArr[i12].mSolverVariable = linearSystem.createObjectVariable(objArr[i12]);
            i12++;
        }
        int i13 = this.mBarrierType;
        if (i13 < 0 || i13 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = objArr[i13];
        if (!this.resolved) {
            allSolved();
        }
        if (this.resolved) {
            this.resolved = false;
            int i14 = this.mBarrierType;
            if (i14 == 0 || i14 == 1) {
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mX);
                linearSystem.addEquality(this.mRight.mSolverVariable, this.mX);
                return;
            } else if (i14 == 2 || i14 == 3) {
                linearSystem.addEquality(this.mTop.mSolverVariable, this.mY);
                linearSystem.addEquality(this.mBottom.mSolverVariable, this.mY);
                return;
            } else {
                return;
            }
        }
        for (int i15 = 0; i15 < this.mWidgetsCount; i15++) {
            ConstraintWidget constraintWidget = this.mWidgets[i15];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i10 = this.mBarrierType) == 0 || i10 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i11 = this.mBarrierType) == 2 || i11 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z10 = true;
                break;
            }
        }
        z10 = false;
        boolean z11 = this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents();
        boolean z12 = this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents();
        int i16 = !z10 && (((i4 = this.mBarrierType) == 0 && z11) || ((i4 == 2 && z12) || ((i4 == 1 && z11) || (i4 == 3 && z12)))) ? 5 : 4;
        for (int i17 = 0; i17 < this.mWidgetsCount; i17++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i17];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.mListAnchors;
                int i18 = this.mBarrierType;
                constraintAnchorArr2[i18].mSolverVariable = createObjectVariable;
                int i19 = (constraintAnchorArr2[i18].mTarget == null || constraintAnchorArr2[i18].mTarget.mOwner != this) ? 0 : constraintAnchorArr2[i18].mMargin + 0;
                if (i18 != 0 && i18 != 2) {
                    linearSystem.addGreaterBarrier(constraintAnchor.mSolverVariable, createObjectVariable, this.mMargin + i19, z10);
                } else {
                    linearSystem.addLowerBarrier(constraintAnchor.mSolverVariable, createObjectVariable, this.mMargin - i19, z10);
                }
                linearSystem.addEquality(constraintAnchor.mSolverVariable, createObjectVariable, this.mMargin + i19, i16);
            }
        }
        int i20 = this.mBarrierType;
        if (i20 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
        } else if (i20 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
        } else if (i20 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
        } else if (i20 == 3) {
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
        }
    }

    public boolean allSolved() {
        int i4;
        int i10;
        int i11;
        int i12 = 0;
        boolean z9 = true;
        while (true) {
            i4 = this.mWidgetsCount;
            if (i12 >= i4) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i12];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i10 = this.mBarrierType) == 0 || i10 == 1) && !constraintWidget.isResolvedHorizontally()) || (((i11 = this.mBarrierType) == 2 || i11 == 3) && !constraintWidget.isResolvedVertically()))) {
                z9 = false;
            }
            i12++;
        }
        if (!z9 || i4 <= 0) {
            return false;
        }
        int i13 = 0;
        boolean z10 = false;
        for (int i14 = 0; i14 < this.mWidgetsCount; i14++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i14];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                if (!z10) {
                    int i15 = this.mBarrierType;
                    if (i15 == 0) {
                        i13 = constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue();
                    } else if (i15 == 1) {
                        i13 = constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue();
                    } else if (i15 == 2) {
                        i13 = constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue();
                    } else if (i15 == 3) {
                        i13 = constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue();
                    }
                    z10 = true;
                }
                int i16 = this.mBarrierType;
                if (i16 == 0) {
                    i13 = Math.min(i13, constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue());
                } else if (i16 == 1) {
                    i13 = Math.max(i13, constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue());
                } else if (i16 == 2) {
                    i13 = Math.min(i13, constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue());
                } else if (i16 == 3) {
                    i13 = Math.max(i13, constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue());
                }
            }
        }
        int i17 = i13 + this.mMargin;
        int i18 = this.mBarrierType;
        if (i18 != 0 && i18 != 1) {
            setFinalVertical(i17, i17);
        } else {
            setFinalHorizontal(i17, i17);
        }
        this.resolved = true;
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }

    public boolean getAllowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    public int getBarrierType() {
        return this.mBarrierType;
    }

    public int getMargin() {
        return this.mMargin;
    }

    public int getOrientation() {
        int i4 = this.mBarrierType;
        if (i4 == 0 || i4 == 1) {
            return 0;
        }
        return (i4 == 2 || i4 == 3) ? 1 : -1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.resolved;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void markWidgets() {
        for (int i4 = 0; i4 < this.mWidgetsCount; i4++) {
            ConstraintWidget constraintWidget = this.mWidgets[i4];
            if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                int i10 = this.mBarrierType;
                if (i10 == 0 || i10 == 1) {
                    constraintWidget.setInBarrier(0, true);
                } else if (i10 == 2 || i10 == 3) {
                    constraintWidget.setInBarrier(1, true);
                }
            }
        }
    }

    public void setAllowsGoneWidget(boolean z9) {
        this.mAllowsGoneWidget = z9;
    }

    public void setBarrierType(int i4) {
        this.mBarrierType = i4;
    }

    public void setMargin(int i4) {
        this.mMargin = i4;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + getDebugName() + " {";
        for (int i4 = 0; i4 < this.mWidgetsCount; i4++) {
            ConstraintWidget constraintWidget = this.mWidgets[i4];
            if (i4 > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.getDebugName();
        }
        return str + i.f6967d;
    }

    public Barrier(String str) {
        setDebugName(str);
    }
}
