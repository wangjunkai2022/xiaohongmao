package com.lljjcoder.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class RecycleViewDividerForList extends RecyclerView.ItemDecoration {
    private static final int[] ATTRS = {16843284};
    private Drawable mDivider;
    private int mDividerHeight;
    private boolean mLastLineShow;
    private int mOrientation;
    private Paint mPaint;

    public RecycleViewDividerForList(Context context, int i4) {
        this.mDividerHeight = 2;
        this.mLastLineShow = true;
        if (i4 != 1 && i4 != 0) {
            throw new IllegalArgumentException("请输入正确的参数！");
        }
        this.mOrientation = i4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(ATTRS);
        this.mDivider = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int measuredWidth = recyclerView.getMeasuredWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount - (!this.mLastLineShow ? 1 : 0); i4++) {
            View childAt = recyclerView.getChildAt(i4);
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
            int i10 = this.mDividerHeight + bottom;
            Drawable drawable = this.mDivider;
            if (drawable != null) {
                drawable.setBounds(paddingLeft, bottom, measuredWidth, i10);
                this.mDivider.draw(canvas);
            }
            Paint paint = this.mPaint;
            if (paint != null) {
                canvas.drawRect(paddingLeft, bottom, measuredWidth, i10, paint);
            }
        }
    }

    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int paddingTop = recyclerView.getPaddingTop();
        int measuredHeight = recyclerView.getMeasuredHeight() - recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin;
            int i10 = this.mDividerHeight + right;
            Drawable drawable = this.mDivider;
            if (drawable != null) {
                drawable.setBounds(right, paddingTop, i10, measuredHeight);
                this.mDivider.draw(canvas);
            }
            Paint paint = this.mPaint;
            if (paint != null) {
                canvas.drawRect(right, paddingTop, i10, measuredHeight, paint);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.set(0, 0, 0, this.mDividerHeight);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        if (this.mOrientation == 1) {
            drawVertical(canvas, recyclerView);
        } else {
            drawHorizontal(canvas, recyclerView);
        }
    }

    public RecycleViewDividerForList(Context context, int i4, boolean z9) {
        this.mDividerHeight = 2;
        this.mLastLineShow = true;
        if (i4 != 1 && i4 != 0) {
            throw new IllegalArgumentException("请输入正确的参数！");
        }
        this.mOrientation = i4;
        this.mLastLineShow = z9;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(ATTRS);
        this.mDivider = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    public RecycleViewDividerForList(Context context, int i4, int i10) {
        this(context, i4);
        Drawable drawable = ContextCompat.getDrawable(context, i10);
        this.mDivider = drawable;
        this.mDividerHeight = drawable.getIntrinsicHeight();
    }

    public RecycleViewDividerForList(Context context, int i4, int i10, int i11) {
        this(context, i4);
        this.mDividerHeight = i10;
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(i11);
        this.mPaint.setStyle(Paint.Style.FILL);
    }
}
