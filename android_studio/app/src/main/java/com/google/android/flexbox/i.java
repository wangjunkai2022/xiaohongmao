package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* compiled from: FlexboxItemDecoration.java */
/* loaded from: classes2.dex */
public class i extends RecyclerView.ItemDecoration {

    /* renamed from: c  reason: collision with root package name */
    public static final int f28261c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f28262d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f28263e = 3;

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f28264f = {16843284};

    /* renamed from: a  reason: collision with root package name */
    private Drawable f28265a;

    /* renamed from: b  reason: collision with root package name */
    private int f28266b;

    public i(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f28264f);
        this.f28265a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        setOrientation(3);
    }

    private void a(Canvas canvas, RecyclerView parent) {
        int top;
        int intrinsicHeight;
        int left;
        int right;
        int i4;
        int i10;
        int i11;
        if (d()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            int left2 = parent.getLeft() - parent.getPaddingLeft();
            int right2 = parent.getRight() + parent.getPaddingRight();
            int childCount = parent.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = parent.getChildAt(i12);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexDirection == 3) {
                    intrinsicHeight = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    top = this.f28265a.getIntrinsicHeight() + intrinsicHeight;
                } else {
                    top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    intrinsicHeight = top - this.f28265a.getIntrinsicHeight();
                }
                if (flexboxLayoutManager.j()) {
                    if (flexboxLayoutManager.J()) {
                        i10 = Math.min(childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.f28265a.getIntrinsicWidth(), right2);
                        i11 = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        this.f28265a.setBounds(i11, intrinsicHeight, i10, top);
                        this.f28265a.draw(canvas);
                    } else {
                        left = Math.max((childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28265a.getIntrinsicWidth(), left2);
                        right = childAt.getRight();
                        i4 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    }
                } else {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    right = childAt.getRight();
                    i4 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                }
                int i13 = left;
                i10 = right + i4;
                i11 = i13;
                this.f28265a.setBounds(i11, intrinsicHeight, i10, top);
                this.f28265a.draw(canvas);
            }
        }
    }

    private void b(Canvas canvas, RecyclerView parent) {
        int left;
        int intrinsicWidth;
        int max;
        int bottom;
        int i4;
        int i10;
        if (e()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
            int top = parent.getTop() - parent.getPaddingTop();
            int bottom2 = parent.getBottom() + parent.getPaddingBottom();
            int childCount = parent.getChildCount();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = parent.getChildAt(i11);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexboxLayoutManager.J()) {
                    intrinsicWidth = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    left = this.f28265a.getIntrinsicWidth() + intrinsicWidth;
                } else {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    intrinsicWidth = left - this.f28265a.getIntrinsicWidth();
                }
                if (flexboxLayoutManager.j()) {
                    max = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    bottom = childAt.getBottom();
                    i4 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                } else if (flexDirection == 3) {
                    int min = Math.min(childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + this.f28265a.getIntrinsicHeight(), bottom2);
                    max = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    i10 = min;
                    this.f28265a.setBounds(intrinsicWidth, max, left, i10);
                    this.f28265a.draw(canvas);
                } else {
                    max = Math.max((childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28265a.getIntrinsicHeight(), top);
                    bottom = childAt.getBottom();
                    i4 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                }
                i10 = bottom + i4;
                this.f28265a.setBounds(intrinsicWidth, max, left, i10);
                this.f28265a.draw(canvas);
            }
        }
    }

    private boolean c(int position, List<f> flexLines, FlexboxLayoutManager layoutManager) {
        int G = layoutManager.G(position);
        if ((G == -1 || G >= layoutManager.getFlexLinesInternal().size() || layoutManager.getFlexLinesInternal().get(G).f28245o != position) && position != 0) {
            return flexLines.size() != 0 && flexLines.get(flexLines.size() - 1).f28246p == position - 1;
        }
        return true;
    }

    private boolean d() {
        return (this.f28266b & 1) > 0;
    }

    private boolean e() {
        return (this.f28266b & 2) > 0;
    }

    private void f(Rect outRect, int position, FlexboxLayoutManager layoutManager, List<f> flexLines) {
        if (flexLines.size() == 0 || layoutManager.G(position) == 0) {
            return;
        }
        if (layoutManager.j()) {
            if (!d()) {
                outRect.top = 0;
                outRect.bottom = 0;
                return;
            }
            outRect.top = this.f28265a.getIntrinsicHeight();
            outRect.bottom = 0;
        } else if (e()) {
            if (layoutManager.J()) {
                outRect.right = this.f28265a.getIntrinsicWidth();
                outRect.left = 0;
                return;
            }
            outRect.left = this.f28265a.getIntrinsicWidth();
            outRect.right = 0;
        }
    }

    private void g(Rect outRect, int position, FlexboxLayoutManager layoutManager, List<f> flexLines, int flexDirection) {
        if (c(position, flexLines, layoutManager)) {
            return;
        }
        if (layoutManager.j()) {
            if (!e()) {
                outRect.left = 0;
                outRect.right = 0;
            } else if (layoutManager.J()) {
                outRect.right = this.f28265a.getIntrinsicWidth();
                outRect.left = 0;
            } else {
                outRect.left = this.f28265a.getIntrinsicWidth();
                outRect.right = 0;
            }
        } else if (!d()) {
            outRect.top = 0;
            outRect.bottom = 0;
        } else if (flexDirection == 3) {
            outRect.bottom = this.f28265a.getIntrinsicHeight();
            outRect.top = 0;
        } else {
            outRect.top = this.f28265a.getIntrinsicHeight();
            outRect.bottom = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect outRect, @NonNull View view, RecyclerView parent, @NonNull RecyclerView.State state) {
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            return;
        }
        if (!d() && !e()) {
            outRect.set(0, 0, 0, 0);
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
        List<f> flexLines = flexboxLayoutManager.getFlexLines();
        g(outRect, childAdapterPosition, flexboxLayoutManager, flexLines, flexboxLayoutManager.getFlexDirection());
        f(outRect, childAdapterPosition, flexboxLayoutManager, flexLines);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView parent, @NonNull RecyclerView.State state) {
        a(canvas, parent);
        b(canvas, parent);
    }

    public void setDrawable(Drawable drawable) {
        if (drawable != null) {
            this.f28265a = drawable;
            return;
        }
        throw new IllegalArgumentException("Drawable cannot be null.");
    }

    public void setOrientation(int orientation) {
        this.f28266b = orientation;
    }
}
