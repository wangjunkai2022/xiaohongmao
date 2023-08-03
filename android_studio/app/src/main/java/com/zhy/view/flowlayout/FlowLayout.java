package com.zhy.view.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.zhy.view.flowlayout.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FlowLayout extends ViewGroup {

    /* renamed from: f  reason: collision with root package name */
    private static final String f61244f = "FlowLayout";

    /* renamed from: g  reason: collision with root package name */
    private static final int f61245g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f61246h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f61247i = 1;

    /* renamed from: a  reason: collision with root package name */
    protected List<List<View>> f61248a;

    /* renamed from: b  reason: collision with root package name */
    protected List<Integer> f61249b;

    /* renamed from: c  reason: collision with root package name */
    protected List<Integer> f61250c;

    /* renamed from: d  reason: collision with root package name */
    private int f61251d;

    /* renamed from: e  reason: collision with root package name */
    private List<View> f61252e;

    public FlowLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f61248a = new ArrayList();
        this.f61249b = new ArrayList();
        this.f61250c = new ArrayList();
        this.f61252e = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.l.I2);
        this.f61251d = obtainStyledAttributes.getInt(b.l.K2, -1);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        int i13;
        int paddingLeft;
        this.f61248a.clear();
        this.f61249b.clear();
        this.f61250c.clear();
        this.f61252e.clear();
        int width = getWidth();
        int childCount = getChildCount();
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredWidth + i15 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin > (width - getPaddingLeft()) - getPaddingRight()) {
                    this.f61249b.add(Integer.valueOf(i14));
                    this.f61248a.add(this.f61252e);
                    this.f61250c.add(Integer.valueOf(i15));
                    i14 = marginLayoutParams.topMargin + measuredHeight + marginLayoutParams.bottomMargin;
                    this.f61252e = new ArrayList();
                    i15 = 0;
                }
                i15 += measuredWidth + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                i14 = Math.max(i14, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                this.f61252e.add(childAt);
            }
        }
        this.f61249b.add(Integer.valueOf(i14));
        this.f61250c.add(Integer.valueOf(i15));
        this.f61248a.add(this.f61252e);
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.f61248a.size();
        for (int i17 = 0; i17 < size; i17++) {
            this.f61252e = this.f61248a.get(i17);
            int intValue = this.f61249b.get(i17).intValue();
            int intValue2 = this.f61250c.get(i17).intValue();
            int i18 = this.f61251d;
            if (i18 != -1) {
                if (i18 == 0) {
                    i13 = (width - intValue2) / 2;
                    paddingLeft = getPaddingLeft();
                } else if (i18 == 1) {
                    i13 = width - intValue2;
                    paddingLeft = getPaddingLeft();
                }
                paddingLeft2 = i13 + paddingLeft;
            } else {
                paddingLeft2 = getPaddingLeft();
            }
            for (int i19 = 0; i19 < this.f61252e.size(); i19++) {
                View view = this.f61252e.get(i19);
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i20 = marginLayoutParams2.leftMargin + paddingLeft2;
                    int i21 = marginLayoutParams2.topMargin + paddingTop;
                    view.layout(i20, i21, view.getMeasuredWidth() + i20, view.getMeasuredHeight() + i21);
                    paddingLeft2 += view.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                }
            }
            paddingTop += intValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i4, int i10) {
        int i11;
        int size = View.MeasureSpec.getSize(i4);
        int mode = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i10);
        int childCount = getChildCount();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 8) {
                if (i12 == childCount - 1) {
                    i13 = Math.max(i14, i13);
                    i16 += i15;
                }
                i11 = size2;
            } else {
                measureChild(childAt, i4, i10);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                i11 = size2;
                int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                int i17 = i14 + measuredWidth;
                if (i17 > (size - getPaddingLeft()) - getPaddingRight()) {
                    i13 = Math.max(i13, i14);
                    i16 += i15;
                } else {
                    measuredHeight = Math.max(i15, measuredHeight);
                    measuredWidth = i17;
                }
                if (i12 == childCount - 1) {
                    i13 = Math.max(measuredWidth, i13);
                    i16 += measuredHeight;
                }
                i15 = measuredHeight;
                i14 = measuredWidth;
            }
            i12++;
            size2 = i11;
        }
        int i18 = size2;
        if (mode != 1073741824) {
            size = getPaddingRight() + i13 + getPaddingLeft();
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i18 : i16 + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context) {
        this(context, null);
    }
}
