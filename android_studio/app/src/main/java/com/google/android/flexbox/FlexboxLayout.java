package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.flexbox.h;
import com.google.android.flexbox.k;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FlexboxLayout extends ViewGroup implements d {

    /* renamed from: r  reason: collision with root package name */
    public static final int f28160r = 0;

    /* renamed from: s  reason: collision with root package name */
    public static final int f28161s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f28162t = 2;

    /* renamed from: u  reason: collision with root package name */
    public static final int f28163u = 4;

    /* renamed from: a  reason: collision with root package name */
    private int f28164a;

    /* renamed from: b  reason: collision with root package name */
    private int f28165b;

    /* renamed from: c  reason: collision with root package name */
    private int f28166c;

    /* renamed from: d  reason: collision with root package name */
    private int f28167d;

    /* renamed from: e  reason: collision with root package name */
    private int f28168e;

    /* renamed from: f  reason: collision with root package name */
    private int f28169f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Drawable f28170g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Drawable f28171h;

    /* renamed from: i  reason: collision with root package name */
    private int f28172i;

    /* renamed from: j  reason: collision with root package name */
    private int f28173j;

    /* renamed from: k  reason: collision with root package name */
    private int f28174k;

    /* renamed from: l  reason: collision with root package name */
    private int f28175l;

    /* renamed from: m  reason: collision with root package name */
    private int[] f28176m;

    /* renamed from: n  reason: collision with root package name */
    private SparseIntArray f28177n;

    /* renamed from: o  reason: collision with root package name */
    private h f28178o;

    /* renamed from: p  reason: collision with root package name */
    private List<f> f28179p;

    /* renamed from: q  reason: collision with root package name */
    private h.b f28180q;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    private void A() {
        if (this.f28170g == null && this.f28171h == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    private boolean k(int flexLineIndex) {
        for (int i4 = 0; i4 < flexLineIndex; i4++) {
            if (this.f28179p.get(i4).d() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean l(int index, int indexInFlexLine) {
        for (int i4 = 1; i4 <= indexInFlexLine; i4++) {
            View r9 = r(index - i4);
            if (r9 != null && r9.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void m(Canvas canvas, boolean isRtl, boolean fromBottomToTop) {
        int i4;
        int i10;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f28179p.size();
        for (int i11 = 0; i11 < size; i11++) {
            f fVar = this.f28179p.get(i11);
            for (int i12 = 0; i12 < fVar.f28238h; i12++) {
                int i13 = fVar.f28245o + i12;
                View r9 = r(i13);
                if (r9 != null && r9.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) r9.getLayoutParams();
                    if (s(i13, i12)) {
                        if (isRtl) {
                            left = r9.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        } else {
                            left = (r9.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28175l;
                        }
                        p(canvas, left, fVar.f28232b, fVar.f28237g);
                    }
                    if (i12 == fVar.f28238h - 1 && (this.f28173j & 4) > 0) {
                        if (isRtl) {
                            right = (r9.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28175l;
                        } else {
                            right = r9.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        }
                        p(canvas, right, fVar.f28232b, fVar.f28237g);
                    }
                }
            }
            if (t(i11)) {
                if (fromBottomToTop) {
                    i10 = fVar.f28234d;
                } else {
                    i10 = fVar.f28232b - this.f28174k;
                }
                o(canvas, paddingLeft, i10, max);
            }
            if (u(i11) && (this.f28172i & 4) > 0) {
                if (fromBottomToTop) {
                    i4 = fVar.f28232b - this.f28174k;
                } else {
                    i4 = fVar.f28234d;
                }
                o(canvas, paddingLeft, i4, max);
            }
        }
    }

    private void n(Canvas canvas, boolean isRtl, boolean fromBottomToTop) {
        int i4;
        int i10;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f28179p.size();
        for (int i11 = 0; i11 < size; i11++) {
            f fVar = this.f28179p.get(i11);
            for (int i12 = 0; i12 < fVar.f28238h; i12++) {
                int i13 = fVar.f28245o + i12;
                View r9 = r(i13);
                if (r9 != null && r9.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) r9.getLayoutParams();
                    if (s(i13, i12)) {
                        if (fromBottomToTop) {
                            top = r9.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        } else {
                            top = (r9.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28174k;
                        }
                        o(canvas, fVar.f28231a, top, fVar.f28237g);
                    }
                    if (i12 == fVar.f28238h - 1 && (this.f28172i & 4) > 0) {
                        if (fromBottomToTop) {
                            bottom = (r9.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28174k;
                        } else {
                            bottom = r9.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        }
                        o(canvas, fVar.f28231a, bottom, fVar.f28237g);
                    }
                }
            }
            if (t(i11)) {
                if (isRtl) {
                    i10 = fVar.f28233c;
                } else {
                    i10 = fVar.f28231a - this.f28175l;
                }
                p(canvas, i10, paddingTop, max);
            }
            if (u(i11) && (this.f28173j & 4) > 0) {
                if (isRtl) {
                    i4 = fVar.f28231a - this.f28175l;
                } else {
                    i4 = fVar.f28233c;
                }
                p(canvas, i4, paddingTop, max);
            }
        }
    }

    private void o(Canvas canvas, int left, int top, int length) {
        Drawable drawable = this.f28170g;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(left, top, length + left, this.f28174k + top);
        this.f28170g.draw(canvas);
    }

    private void p(Canvas canvas, int left, int top, int length) {
        Drawable drawable = this.f28171h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(left, top, this.f28175l + left, length + top);
        this.f28171h.draw(canvas);
    }

    private boolean s(int index, int indexInFlexLine) {
        return l(index, indexInFlexLine) ? j() ? (this.f28173j & 1) != 0 : (this.f28172i & 1) != 0 : j() ? (this.f28173j & 2) != 0 : (this.f28172i & 2) != 0;
    }

    private boolean t(int flexLineIndex) {
        if (flexLineIndex < 0 || flexLineIndex >= this.f28179p.size()) {
            return false;
        }
        return k(flexLineIndex) ? j() ? (this.f28172i & 1) != 0 : (this.f28173j & 1) != 0 : j() ? (this.f28172i & 2) != 0 : (this.f28173j & 2) != 0;
    }

    private boolean u(int flexLineIndex) {
        if (flexLineIndex < 0 || flexLineIndex >= this.f28179p.size()) {
            return false;
        }
        for (int i4 = flexLineIndex + 1; i4 < this.f28179p.size(); i4++) {
            if (this.f28179p.get(i4).d() > 0) {
                return false;
            }
        }
        return j() ? (this.f28172i & 4) != 0 : (this.f28173j & 4) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void v(boolean r29, int r30, int r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.v(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void w(boolean r30, boolean r31, int r32, int r33, int r34, int r35) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.w(boolean, boolean, int, int, int, int):void");
    }

    private void x(int widthMeasureSpec, int heightMeasureSpec) {
        this.f28179p.clear();
        this.f28180q.a();
        this.f28178o.c(this.f28180q, widthMeasureSpec, heightMeasureSpec);
        this.f28179p = this.f28180q.f28257a;
        this.f28178o.p(widthMeasureSpec, heightMeasureSpec);
        if (this.f28167d == 3) {
            for (f fVar : this.f28179p) {
                int i4 = Integer.MIN_VALUE;
                for (int i10 = 0; i10 < fVar.f28238h; i10++) {
                    View r9 = r(fVar.f28245o + i10);
                    if (r9 != null && r9.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) r9.getLayoutParams();
                        if (this.f28165b != 2) {
                            i4 = Math.max(i4, r9.getMeasuredHeight() + Math.max(fVar.f28242l - r9.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                        } else {
                            i4 = Math.max(i4, r9.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((fVar.f28242l - r9.getMeasuredHeight()) + r9.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                        }
                    }
                }
                fVar.f28237g = i4;
            }
        }
        this.f28178o.o(widthMeasureSpec, heightMeasureSpec, getPaddingTop() + getPaddingBottom());
        this.f28178o.X();
        z(this.f28164a, widthMeasureSpec, heightMeasureSpec, this.f28180q.f28258b);
    }

    private void y(int widthMeasureSpec, int heightMeasureSpec) {
        this.f28179p.clear();
        this.f28180q.a();
        this.f28178o.f(this.f28180q, widthMeasureSpec, heightMeasureSpec);
        this.f28179p = this.f28180q.f28257a;
        this.f28178o.p(widthMeasureSpec, heightMeasureSpec);
        this.f28178o.o(widthMeasureSpec, heightMeasureSpec, getPaddingLeft() + getPaddingRight());
        this.f28178o.X();
        z(this.f28164a, widthMeasureSpec, heightMeasureSpec, this.f28180q.f28258b);
    }

    private void z(int flexDirection, int widthMeasureSpec, int heightMeasureSpec, int childState) {
        int sumOfCrossSize;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (flexDirection == 0 || flexDirection == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else if (flexDirection != 2 && flexDirection != 3) {
            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
        } else {
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                childState = View.combineMeasuredStates(childState, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, widthMeasureSpec, childState);
        } else if (mode == 0) {
            resolveSizeAndState = View.resolveSizeAndState(largestMainSize, widthMeasureSpec, childState);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                childState = View.combineMeasuredStates(childState, 16777216);
            }
            resolveSizeAndState = View.resolveSizeAndState(size, widthMeasureSpec, childState);
        } else {
            throw new IllegalStateException("Unknown width mode is set: " + mode);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                childState = View.combineMeasuredStates(childState, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, heightMeasureSpec, childState);
        } else if (mode2 == 0) {
            resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, heightMeasureSpec, childState);
        } else if (mode2 == 1073741824) {
            if (size2 < sumOfCrossSize) {
                childState = View.combineMeasuredStates(childState, 256);
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, heightMeasureSpec, childState);
        } else {
            throw new IllegalStateException("Unknown height mode is set: " + mode2);
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // com.google.android.flexbox.d
    public void a(View view, int index, int indexInFlexLine, f flexLine) {
        if (s(index, indexInFlexLine)) {
            if (j()) {
                int i4 = flexLine.f28235e;
                int i10 = this.f28175l;
                flexLine.f28235e = i4 + i10;
                flexLine.f28236f += i10;
                return;
            }
            int i11 = flexLine.f28235e;
            int i12 = this.f28174k;
            flexLine.f28235e = i11 + i12;
            flexLine.f28236f += i12;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (this.f28177n == null) {
            this.f28177n = new SparseIntArray(getChildCount());
        }
        this.f28176m = this.f28178o.n(child, index, params, this.f28177n);
        super.addView(child, index, params);
    }

    @Override // com.google.android.flexbox.d
    public int b(int widthSpec, int padding, int childDimension) {
        return ViewGroup.getChildMeasureSpec(widthSpec, padding, childDimension);
    }

    @Override // com.google.android.flexbox.d
    public View c(int index) {
        return getChildAt(index);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p9) {
        return p9 instanceof LayoutParams;
    }

    @Override // com.google.android.flexbox.d
    public int d(int heightSpec, int padding, int childDimension) {
        return ViewGroup.getChildMeasureSpec(heightSpec, padding, childDimension);
    }

    @Override // com.google.android.flexbox.d
    public int e(View view) {
        return 0;
    }

    @Override // com.google.android.flexbox.d
    public void f(f flexLine) {
        if (j()) {
            if ((this.f28173j & 4) > 0) {
                int i4 = flexLine.f28235e;
                int i10 = this.f28175l;
                flexLine.f28235e = i4 + i10;
                flexLine.f28236f += i10;
            }
        } else if ((this.f28172i & 4) > 0) {
            int i11 = flexLine.f28235e;
            int i12 = this.f28174k;
            flexLine.f28235e = i11 + i12;
            flexLine.f28236f += i12;
        }
    }

    @Override // com.google.android.flexbox.d
    public View g(int index) {
        return r(index);
    }

    @Override // com.google.android.flexbox.d
    public int getAlignContent() {
        return this.f28168e;
    }

    @Override // com.google.android.flexbox.d
    public int getAlignItems() {
        return this.f28167d;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f28170g;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f28171h;
    }

    @Override // com.google.android.flexbox.d
    public int getFlexDirection() {
        return this.f28164a;
    }

    @Override // com.google.android.flexbox.d
    public int getFlexItemCount() {
        return getChildCount();
    }

    @Override // com.google.android.flexbox.d
    public List<f> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f28179p.size());
        for (f fVar : this.f28179p) {
            if (fVar.d() != 0) {
                arrayList.add(fVar);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.d
    public List<f> getFlexLinesInternal() {
        return this.f28179p;
    }

    @Override // com.google.android.flexbox.d
    public int getFlexWrap() {
        return this.f28165b;
    }

    @Override // com.google.android.flexbox.d
    public int getJustifyContent() {
        return this.f28166c;
    }

    @Override // com.google.android.flexbox.d
    public int getLargestMainSize() {
        int i4 = Integer.MIN_VALUE;
        for (f fVar : this.f28179p) {
            i4 = Math.max(i4, fVar.f28235e);
        }
        return i4;
    }

    @Override // com.google.android.flexbox.d
    public int getMaxLine() {
        return this.f28169f;
    }

    public int getShowDividerHorizontal() {
        return this.f28172i;
    }

    public int getShowDividerVertical() {
        return this.f28173j;
    }

    @Override // com.google.android.flexbox.d
    public int getSumOfCrossSize() {
        int i4;
        int i10;
        int size = this.f28179p.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            f fVar = this.f28179p.get(i12);
            if (t(i12)) {
                if (j()) {
                    i10 = this.f28174k;
                } else {
                    i10 = this.f28175l;
                }
                i11 += i10;
            }
            if (u(i12)) {
                if (j()) {
                    i4 = this.f28174k;
                } else {
                    i4 = this.f28175l;
                }
                i11 += i4;
            }
            i11 += fVar.f28237g;
        }
        return i11;
    }

    @Override // com.google.android.flexbox.d
    public void h(int position, View view) {
    }

    @Override // com.google.android.flexbox.d
    public int i(View view, int index, int indexInFlexLine) {
        int i4;
        int i10;
        if (j()) {
            i4 = s(index, indexInFlexLine) ? 0 + this.f28175l : 0;
            if ((this.f28173j & 4) <= 0) {
                return i4;
            }
            i10 = this.f28175l;
        } else {
            i4 = s(index, indexInFlexLine) ? 0 + this.f28174k : 0;
            if ((this.f28172i & 4) <= 0) {
                return i4;
            }
            i10 = this.f28174k;
        }
        return i4 + i10;
    }

    @Override // com.google.android.flexbox.d
    public boolean j() {
        int i4 = this.f28164a;
        return i4 == 0 || i4 == 1;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f28171h == null && this.f28170g == null) {
            return;
        }
        if (this.f28172i == 0 && this.f28173j == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i4 = this.f28164a;
        if (i4 == 0) {
            m(canvas, layoutDirection == 1, this.f28165b == 2);
        } else if (i4 == 1) {
            m(canvas, layoutDirection != 1, this.f28165b == 2);
        } else if (i4 == 2) {
            boolean z9 = layoutDirection == 1;
            if (this.f28165b == 2) {
                z9 = !z9;
            }
            n(canvas, z9, false);
        } else if (i4 != 3) {
        } else {
            boolean z10 = layoutDirection == 1;
            if (this.f28165b == 2) {
                z10 = !z10;
            }
            n(canvas, z10, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        boolean z9;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i4 = this.f28164a;
        if (i4 == 0) {
            v(layoutDirection == 1, left, top, right, bottom);
        } else if (i4 == 1) {
            v(layoutDirection != 1, left, top, right, bottom);
        } else if (i4 == 2) {
            z9 = layoutDirection == 1;
            w(this.f28165b == 2 ? !z9 : z9, false, left, top, right, bottom);
        } else if (i4 == 3) {
            z9 = layoutDirection == 1;
            w(this.f28165b == 2 ? !z9 : z9, true, left, top, right, bottom);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.f28164a);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f28177n == null) {
            this.f28177n = new SparseIntArray(getChildCount());
        }
        if (this.f28178o.O(this.f28177n)) {
            this.f28176m = this.f28178o.m(this.f28177n);
        }
        int i4 = this.f28164a;
        if (i4 == 0 || i4 == 1) {
            x(widthMeasureSpec, heightMeasureSpec);
        } else if (i4 != 2 && i4 != 3) {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f28164a);
        } else {
            y(widthMeasureSpec, heightMeasureSpec);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: q */
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    public View r(int index) {
        if (index >= 0) {
            int[] iArr = this.f28176m;
            if (index >= iArr.length) {
                return null;
            }
            return getChildAt(iArr[index]);
        }
        return null;
    }

    @Override // com.google.android.flexbox.d
    public void setAlignContent(int alignContent) {
        if (this.f28168e != alignContent) {
            this.f28168e = alignContent;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.d
    public void setAlignItems(int alignItems) {
        if (this.f28167d != alignItems) {
            this.f28167d = alignItems;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable divider) {
        setDividerDrawableHorizontal(divider);
        setDividerDrawableVertical(divider);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable divider) {
        if (divider == this.f28170g) {
            return;
        }
        this.f28170g = divider;
        if (divider != null) {
            this.f28174k = divider.getIntrinsicHeight();
        } else {
            this.f28174k = 0;
        }
        A();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable divider) {
        if (divider == this.f28171h) {
            return;
        }
        this.f28171h = divider;
        if (divider != null) {
            this.f28175l = divider.getIntrinsicWidth();
        } else {
            this.f28175l = 0;
        }
        A();
        requestLayout();
    }

    @Override // com.google.android.flexbox.d
    public void setFlexDirection(int flexDirection) {
        if (this.f28164a != flexDirection) {
            this.f28164a = flexDirection;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.d
    public void setFlexLines(List<f> flexLines) {
        this.f28179p = flexLines;
    }

    @Override // com.google.android.flexbox.d
    public void setFlexWrap(int flexWrap) {
        if (this.f28165b != flexWrap) {
            this.f28165b = flexWrap;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.d
    public void setJustifyContent(int justifyContent) {
        if (this.f28166c != justifyContent) {
            this.f28166c = justifyContent;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.d
    public void setMaxLine(int maxLine) {
        if (this.f28169f != maxLine) {
            this.f28169f = maxLine;
            requestLayout();
        }
    }

    public void setShowDivider(int dividerMode) {
        setShowDividerVertical(dividerMode);
        setShowDividerHorizontal(dividerMode);
    }

    public void setShowDividerHorizontal(int dividerMode) {
        if (dividerMode != this.f28172i) {
            this.f28172i = dividerMode;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int dividerMode) {
        if (dividerMode != this.f28173j) {
            this.f28173j = dividerMode;
            requestLayout();
        }
    }

    public FlexboxLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (lp instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) lp);
        }
        if (lp instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) lp);
        }
        return new LayoutParams(lp);
    }

    public FlexboxLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f28169f = -1;
        this.f28178o = new h(this);
        this.f28179p = new ArrayList();
        this.f28180q = new h.b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, k.j.f28420g, defStyleAttr, 0);
        this.f28164a = obtainStyledAttributes.getInt(k.j.f28432m, 0);
        this.f28165b = obtainStyledAttributes.getInt(k.j.f28434n, 0);
        this.f28166c = obtainStyledAttributes.getInt(k.j.f28436o, 0);
        this.f28167d = obtainStyledAttributes.getInt(k.j.f28424i, 0);
        this.f28168e = obtainStyledAttributes.getInt(k.j.f28422h, 0);
        this.f28169f = obtainStyledAttributes.getInt(k.j.f28438p, -1);
        Drawable drawable = obtainStyledAttributes.getDrawable(k.j.f28426j);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(k.j.f28428k);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(k.j.f28430l);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i4 = obtainStyledAttributes.getInt(k.j.f28440q, 0);
        if (i4 != 0) {
            this.f28173j = i4;
            this.f28172i = i4;
        }
        int i10 = obtainStyledAttributes.getInt(k.j.f28444s, 0);
        if (i10 != 0) {
            this.f28173j = i10;
        }
        int i11 = obtainStyledAttributes.getInt(k.j.f28442r, 0);
        if (i11 != 0) {
            this.f28172i = i11;
        }
        obtainStyledAttributes.recycle();
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private int mOrder;
        private boolean mWrapBefore;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<LayoutParams> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public LayoutParams createFromParcel(Parcel source) {
                return new LayoutParams(source);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public LayoutParams[] newArray(int size) {
                return new LayoutParams[size];
            }
        }

        public LayoutParams(Context context, AttributeSet attrs) {
            super(context, attrs);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, k.j.f28446t);
            this.mOrder = obtainStyledAttributes.getInt(k.j.C, 1);
            this.mFlexGrow = obtainStyledAttributes.getFloat(k.j.f28452w, 0.0f);
            this.mFlexShrink = obtainStyledAttributes.getFloat(k.j.f28454x, 1.0f);
            this.mAlignSelf = obtainStyledAttributes.getInt(k.j.f28448u, -1);
            this.mFlexBasisPercent = obtainStyledAttributes.getFraction(k.j.f28450v, 1, 1, -1.0f);
            this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(k.j.B, -1);
            this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(k.j.A, -1);
            this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(k.j.f28458z, 16777215);
            this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(k.j.f28456y, 16777215);
            this.mWrapBefore = obtainStyledAttributes.getBoolean(k.j.D, false);
            obtainStyledAttributes.recycle();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return this.mOrder;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setAlignSelf(int alignSelf) {
            this.mAlignSelf = alignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexBasisPercent(float flexBasisPercent) {
            this.mFlexBasisPercent = flexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexGrow(float flexGrow) {
            this.mFlexGrow = flexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexShrink(float flexShrink) {
            this.mFlexShrink = flexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setHeight(int height) {
            ((ViewGroup.MarginLayoutParams) this).height = height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxHeight(int maxHeight) {
            this.mMaxHeight = maxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxWidth(int maxWidth) {
            this.mMaxWidth = maxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int minHeight) {
            this.mMinHeight = minHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int minWidth) {
            this.mMinWidth = minWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setOrder(int order) {
            this.mOrder = order;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWidth(int width) {
            ((ViewGroup.MarginLayoutParams) this).width = width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWrapBefore(boolean wrapBefore) {
            this.mWrapBefore = wrapBefore;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.mOrder);
            dest.writeFloat(this.mFlexGrow);
            dest.writeFloat(this.mFlexShrink);
            dest.writeInt(this.mAlignSelf);
            dest.writeFloat(this.mFlexBasisPercent);
            dest.writeInt(this.mMinWidth);
            dest.writeInt(this.mMinHeight);
            dest.writeInt(this.mMaxWidth);
            dest.writeInt(this.mMaxHeight);
            dest.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            dest.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            dest.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            dest.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            dest.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            dest.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            dest.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = source.mOrder;
            this.mFlexGrow = source.mFlexGrow;
            this.mFlexShrink = source.mFlexShrink;
            this.mAlignSelf = source.mAlignSelf;
            this.mFlexBasisPercent = source.mFlexBasisPercent;
            this.mMinWidth = source.mMinWidth;
            this.mMinHeight = source.mMinHeight;
            this.mMaxWidth = source.mMaxWidth;
            this.mMaxHeight = source.mMaxHeight;
            this.mWrapBefore = source.mWrapBefore;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(int width, int height) {
            super(new ViewGroup.LayoutParams(width, height));
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        protected LayoutParams(Parcel in) {
            super(0, 0);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = in.readInt();
            this.mFlexGrow = in.readFloat();
            this.mFlexShrink = in.readFloat();
            this.mAlignSelf = in.readInt();
            this.mFlexBasisPercent = in.readFloat();
            this.mMinWidth = in.readInt();
            this.mMinHeight = in.readInt();
            this.mMaxWidth = in.readInt();
            this.mMaxHeight = in.readInt();
            this.mWrapBefore = in.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = in.readInt();
        }
    }
}
