package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class HelperWidget extends ConstraintWidget implements Helper {
    public ConstraintWidget[] mWidgets = new ConstraintWidget[4];
    public int mWidgetsCount = 0;

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void add(ConstraintWidget constraintWidget) {
        if (constraintWidget == this || constraintWidget == null) {
            return;
        }
        int i4 = this.mWidgetsCount + 1;
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        if (i4 > constraintWidgetArr.length) {
            this.mWidgets = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.mWidgets;
        int i10 = this.mWidgetsCount;
        constraintWidgetArr2[i10] = constraintWidget;
        this.mWidgetsCount = i10 + 1;
    }

    public void addDependents(ArrayList<WidgetGroup> arrayList, int i4, WidgetGroup widgetGroup) {
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            widgetGroup.add(this.mWidgets[i10]);
        }
        for (int i11 = 0; i11 < this.mWidgetsCount; i11++) {
            Grouping.findDependents(this.mWidgets[i11], i4, arrayList, widgetGroup);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        HelperWidget helperWidget = (HelperWidget) constraintWidget;
        this.mWidgetsCount = 0;
        int i4 = helperWidget.mWidgetsCount;
        for (int i10 = 0; i10 < i4; i10++) {
            add(hashMap.get(helperWidget.mWidgets[i10]));
        }
    }

    public int findGroupInDependents(int i4) {
        int i10;
        int i11;
        for (int i12 = 0; i12 < this.mWidgetsCount; i12++) {
            ConstraintWidget constraintWidget = this.mWidgets[i12];
            if (i4 == 0 && (i11 = constraintWidget.horizontalGroup) != -1) {
                return i11;
            }
            if (i4 == 1 && (i10 = constraintWidget.verticalGroup) != -1) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void removeAllIds() {
        this.mWidgetsCount = 0;
        Arrays.fill(this.mWidgets, (Object) null);
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void updateConstraints(ConstraintWidgetContainer constraintWidgetContainer) {
    }
}
