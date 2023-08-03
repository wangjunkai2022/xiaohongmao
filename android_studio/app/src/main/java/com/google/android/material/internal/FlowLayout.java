package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private int rowCount;
    private boolean singleLine;

    public FlowLayout(@NonNull Context context) {
        this(context, null);
    }

    private static int getMeasuredDimension(int i4, int i10, int i11) {
        return i10 != Integer.MIN_VALUE ? i10 != 1073741824 ? i11 : i4 : Math.min(i11, i4);
    }

    private void loadFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.FlowLayout, 0, 0);
        this.lineSpacing = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    protected int getItemSpacing() {
        return this.itemSpacing;
    }

    protected int getLineSpacing() {
        return this.lineSpacing;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getRowCount() {
        return this.rowCount;
    }

    public int getRowIndex(@NonNull View view) {
        Object tag = view.getTag(R.id.row_index_key);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }

    public boolean isSingleLine() {
        return this.singleLine;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        int i13;
        int i14;
        if (getChildCount() == 0) {
            this.rowCount = 0;
            return;
        }
        this.rowCount = 1;
        boolean z10 = ViewCompat.getLayoutDirection(this) == 1;
        int paddingRight = z10 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z10 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i15 = (i11 - i4) - paddingLeft;
        int i16 = paddingRight;
        int i17 = paddingTop;
        for (int i18 = 0; i18 < getChildCount(); i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i14 = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                    i13 = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                } else {
                    i13 = 0;
                    i14 = 0;
                }
                int measuredWidth = i16 + i14 + childAt.getMeasuredWidth();
                if (!this.singleLine && measuredWidth > i15) {
                    i17 = this.lineSpacing + paddingTop;
                    this.rowCount++;
                    i16 = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.rowCount - 1));
                int i19 = i16 + i14;
                int measuredWidth2 = childAt.getMeasuredWidth() + i19;
                int measuredHeight = childAt.getMeasuredHeight() + i17;
                if (z10) {
                    childAt.layout(i15 - measuredWidth2, i17, (i15 - i16) - i14, measuredHeight);
                } else {
                    childAt.layout(i19, i17, measuredWidth2, measuredHeight);
                }
                i16 += i14 + i13 + childAt.getMeasuredWidth() + this.itemSpacing;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int i11;
        int i12;
        int i13;
        int size = View.MeasureSpec.getSize(i4);
        int mode = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i10);
        int i14 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i14 - getPaddingRight();
        int i15 = paddingTop;
        int i16 = 0;
        for (int i17 = 0; i17 < getChildCount(); i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i4, i10);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i11 = marginLayoutParams.leftMargin + 0;
                    i12 = marginLayoutParams.rightMargin + 0;
                } else {
                    i11 = 0;
                    i12 = 0;
                }
                int i18 = paddingLeft;
                if (paddingLeft + i11 + childAt.getMeasuredWidth() <= paddingRight || isSingleLine()) {
                    i13 = i18;
                } else {
                    i13 = getPaddingLeft();
                    i15 = this.lineSpacing + paddingTop;
                }
                int measuredWidth = i13 + i11 + childAt.getMeasuredWidth();
                int measuredHeight = i15 + childAt.getMeasuredHeight();
                if (measuredWidth > i16) {
                    i16 = measuredWidth;
                }
                paddingLeft = i13 + i11 + i12 + childAt.getMeasuredWidth() + this.itemSpacing;
                if (i17 == getChildCount() - 1) {
                    i16 += i12;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, i16 + getPaddingRight()), getMeasuredDimension(size2, mode2, paddingTop + getPaddingBottom()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemSpacing(int i4) {
        this.itemSpacing = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLineSpacing(int i4) {
        this.lineSpacing = i4;
    }

    public void setSingleLine(boolean z9) {
        this.singleLine = z9;
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    @TargetApi(21)
    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }
}
