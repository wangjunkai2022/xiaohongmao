package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlexboxHelper.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: f  reason: collision with root package name */
    private static final int f28249f = 10;

    /* renamed from: g  reason: collision with root package name */
    private static final long f28250g = 4294967295L;

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f28251h = false;

    /* renamed from: a  reason: collision with root package name */
    private final d f28252a;

    /* renamed from: b  reason: collision with root package name */
    private boolean[] f28253b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    int[] f28254c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    long[] f28255d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private long[] f28256e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlexboxHelper.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        List<f> f28257a;

        /* renamed from: b  reason: collision with root package name */
        int f28258b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            this.f28257a = null;
            this.f28258b = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlexboxHelper.java */
    /* loaded from: classes2.dex */
    public static class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        int f28259a;

        /* renamed from: b  reason: collision with root package name */
        int f28260b;

        private c() {
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(@NonNull c another) {
            int i4 = this.f28260b;
            int i10 = another.f28260b;
            return i4 != i10 ? i4 - i10 : this.f28259a - another.f28259a;
        }

        @NonNull
        public String toString() {
            return "Order{order=" + this.f28260b + ", index=" + this.f28259a + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(d flexContainer) {
        this.f28252a = flexContainer;
    }

    private int A(int widthMeasureSpec, FlexItem flexItem, int padding) {
        d dVar = this.f28252a;
        int b10 = dVar.b(widthMeasureSpec, dVar.getPaddingLeft() + this.f28252a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + padding, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(b10);
        if (size > flexItem.getMaxWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(b10));
        }
        return size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(b10)) : b10;
    }

    private int B(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginBottom();
        }
        return flexItem.getMarginRight();
    }

    private int C(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginRight();
        }
        return flexItem.getMarginBottom();
    }

    private int D(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginTop();
        }
        return flexItem.getMarginLeft();
    }

    private int E(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getMarginLeft();
        }
        return flexItem.getMarginTop();
    }

    private int F(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getHeight();
        }
        return flexItem.getWidth();
    }

    private int G(FlexItem flexItem, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return flexItem.getWidth();
        }
        return flexItem.getHeight();
    }

    private int H(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.f28252a.getPaddingBottom();
        }
        return this.f28252a.getPaddingEnd();
    }

    private int I(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.f28252a.getPaddingEnd();
        }
        return this.f28252a.getPaddingBottom();
    }

    private int J(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.f28252a.getPaddingTop();
        }
        return this.f28252a.getPaddingStart();
    }

    private int K(boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return this.f28252a.getPaddingStart();
        }
        return this.f28252a.getPaddingTop();
    }

    private int L(View view, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int M(View view, boolean isMainHorizontal) {
        if (isMainHorizontal) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private boolean N(int childIndex, int childCount, f flexLine) {
        return childIndex == childCount - 1 && flexLine.d() != 0;
    }

    private boolean P(View view, int mode, int maxSize, int currentLength, int childLength, FlexItem flexItem, int index, int indexInFlexLine, int flexLinesSize) {
        if (this.f28252a.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (mode == 0) {
            return false;
        }
        int maxLine = this.f28252a.getMaxLine();
        if (maxLine == -1 || maxLine > flexLinesSize + 1) {
            int i4 = this.f28252a.i(view, index, indexInFlexLine);
            if (i4 > 0) {
                childLength += i4;
            }
            return maxSize < currentLength + childLength;
        }
        return false;
    }

    private void T(int widthMeasureSpec, int heightMeasureSpec, f flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        int i4;
        int i10;
        int i11;
        int i12 = flexLine.f28235e;
        float f10 = flexLine.f28241k;
        float f11 = 0.0f;
        if (f10 <= 0.0f || maxMainSize > i12) {
            return;
        }
        float f12 = (i12 - maxMainSize) / f10;
        flexLine.f28235e = paddingAlongMainAxis + flexLine.f28236f;
        if (!calledRecursively) {
            flexLine.f28237g = Integer.MIN_VALUE;
        }
        int i13 = 0;
        boolean z9 = false;
        int i14 = 0;
        float f13 = 0.0f;
        while (i13 < flexLine.f28238h) {
            int i15 = flexLine.f28245o + i13;
            View g4 = this.f28252a.g(i15);
            if (g4 == null || g4.getVisibility() == 8) {
                i4 = i12;
                i10 = i13;
            } else {
                FlexItem flexItem = (FlexItem) g4.getLayoutParams();
                int flexDirection = this.f28252a.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = g4.getMeasuredHeight();
                    long[] jArr = this.f28256e;
                    if (jArr != null) {
                        measuredHeight = x(jArr[i15]);
                    }
                    int measuredWidth = g4.getMeasuredWidth();
                    long[] jArr2 = this.f28256e;
                    if (jArr2 != null) {
                        measuredWidth = y(jArr2[i15]);
                    }
                    if (this.f28253b[i15] || flexItem.getFlexShrink() <= f11) {
                        i4 = i12;
                        i10 = i13;
                    } else {
                        float flexShrink = measuredHeight - (flexItem.getFlexShrink() * f12);
                        if (i13 == flexLine.f28238h - 1) {
                            flexShrink += f13;
                            f13 = 0.0f;
                        }
                        int round = Math.round(flexShrink);
                        if (round < flexItem.getMinHeight()) {
                            round = flexItem.getMinHeight();
                            this.f28253b[i15] = true;
                            flexLine.f28241k -= flexItem.getFlexShrink();
                            i4 = i12;
                            i10 = i13;
                            z9 = true;
                        } else {
                            f13 += flexShrink - round;
                            i4 = i12;
                            i10 = i13;
                            double d4 = f13;
                            if (d4 > 1.0d) {
                                round++;
                                f13 -= 1.0f;
                            } else if (d4 < -1.0d) {
                                round--;
                                f13 += 1.0f;
                            }
                        }
                        int A = A(widthMeasureSpec, flexItem, flexLine.f28243m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        g4.measure(A, makeMeasureSpec);
                        measuredWidth = g4.getMeasuredWidth();
                        int measuredHeight2 = g4.getMeasuredHeight();
                        Z(i15, A, makeMeasureSpec, g4);
                        this.f28252a.h(i15, g4);
                        measuredHeight = measuredHeight2;
                    }
                    i11 = Math.max(i14, measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f28252a.e(g4));
                    flexLine.f28235e += measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom();
                } else {
                    i4 = i12;
                    int i16 = i13;
                    int measuredWidth2 = g4.getMeasuredWidth();
                    long[] jArr3 = this.f28256e;
                    if (jArr3 != null) {
                        measuredWidth2 = y(jArr3[i15]);
                    }
                    int measuredHeight3 = g4.getMeasuredHeight();
                    long[] jArr4 = this.f28256e;
                    if (jArr4 != null) {
                        measuredHeight3 = x(jArr4[i15]);
                    }
                    if (this.f28253b[i15] || flexItem.getFlexShrink() <= 0.0f) {
                        i10 = i16;
                    } else {
                        float flexShrink2 = measuredWidth2 - (flexItem.getFlexShrink() * f12);
                        i10 = i16;
                        if (i10 == flexLine.f28238h - 1) {
                            flexShrink2 += f13;
                            f13 = 0.0f;
                        }
                        int round2 = Math.round(flexShrink2);
                        if (round2 < flexItem.getMinWidth()) {
                            round2 = flexItem.getMinWidth();
                            this.f28253b[i15] = true;
                            flexLine.f28241k -= flexItem.getFlexShrink();
                            z9 = true;
                        } else {
                            f13 += flexShrink2 - round2;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                round2++;
                                f13 -= 1.0f;
                            } else if (d10 < -1.0d) {
                                round2--;
                                f13 += 1.0f;
                            }
                        }
                        int z10 = z(heightMeasureSpec, flexItem, flexLine.f28243m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        g4.measure(makeMeasureSpec2, z10);
                        int measuredWidth3 = g4.getMeasuredWidth();
                        int measuredHeight4 = g4.getMeasuredHeight();
                        Z(i15, makeMeasureSpec2, z10, g4);
                        this.f28252a.h(i15, g4);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i14, measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f28252a.e(g4));
                    flexLine.f28235e += measuredWidth2 + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    i11 = max;
                }
                flexLine.f28237g = Math.max(flexLine.f28237g, i11);
                i14 = i11;
            }
            i13 = i10 + 1;
            i12 = i4;
            f11 = 0.0f;
        }
        int i17 = i12;
        if (!z9 || i17 == flexLine.f28235e) {
            return;
        }
        T(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
    }

    private int[] U(int childCount, List<c> orders, SparseIntArray orderCache) {
        Collections.sort(orders);
        orderCache.clear();
        int[] iArr = new int[childCount];
        int i4 = 0;
        for (c cVar : orders) {
            int i10 = cVar.f28259a;
            iArr[i4] = i10;
            orderCache.append(i10, cVar.f28260b);
            i4++;
        }
        return iArr;
    }

    private void V(View view, int crossSize, int index) {
        int measuredHeight;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((crossSize - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.f28252a.e(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.f28256e;
        if (jArr != null) {
            measuredHeight = x(jArr[index]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        Z(index, makeMeasureSpec2, makeMeasureSpec, view);
        this.f28252a.h(index, view);
    }

    private void W(View view, int crossSize, int index) {
        int measuredWidth;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((crossSize - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.f28252a.e(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.f28256e;
        if (jArr != null) {
            measuredWidth = y(jArr[index]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        Z(index, makeMeasureSpec, makeMeasureSpec2, view);
        this.f28252a.h(index, view);
    }

    private void Z(int index, int widthMeasureSpec, int heightMeasureSpec, View view) {
        long[] jArr = this.f28255d;
        if (jArr != null) {
            jArr[index] = S(widthMeasureSpec, heightMeasureSpec);
        }
        long[] jArr2 = this.f28256e;
        if (jArr2 != null) {
            jArr2[index] = S(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    private void a(List<f> flexLines, f flexLine, int viewIndex, int usedCrossSizeSoFar) {
        flexLine.f28243m = usedCrossSizeSoFar;
        this.f28252a.f(flexLine);
        flexLine.f28246p = viewIndex;
        flexLines.add(flexLine);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void i(android.view.View r7, int r8) {
        /*
            r6 = this;
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            com.google.android.flexbox.FlexItem r0 = (com.google.android.flexbox.FlexItem) r0
            int r1 = r7.getMeasuredWidth()
            int r2 = r7.getMeasuredHeight()
            int r3 = r0.getMinWidth()
            r4 = 1
            if (r1 >= r3) goto L1b
            int r1 = r0.getMinWidth()
        L19:
            r3 = 1
            goto L27
        L1b:
            int r3 = r0.getMaxWidth()
            if (r1 <= r3) goto L26
            int r1 = r0.getMaxWidth()
            goto L19
        L26:
            r3 = 0
        L27:
            int r5 = r0.getMinHeight()
            if (r2 >= r5) goto L32
            int r2 = r0.getMinHeight()
            goto L3e
        L32:
            int r5 = r0.getMaxHeight()
            if (r2 <= r5) goto L3d
            int r2 = r0.getMaxHeight()
            goto L3e
        L3d:
            r4 = r3
        L3e:
            if (r4 == 0) goto L55
            r0 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
            r7.measure(r1, r0)
            r6.Z(r8, r1, r0, r7)
            com.google.android.flexbox.d r0 = r6.f28252a
            r0.h(r8, r7)
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.h.i(android.view.View, int):void");
    }

    private List<f> k(List<f> flexLines, int size, int totalCrossSize) {
        ArrayList arrayList = new ArrayList();
        f fVar = new f();
        fVar.f28237g = (size - totalCrossSize) / 2;
        int size2 = flexLines.size();
        for (int i4 = 0; i4 < size2; i4++) {
            if (i4 == 0) {
                arrayList.add(fVar);
            }
            arrayList.add(flexLines.get(i4));
            if (i4 == flexLines.size() - 1) {
                arrayList.add(fVar);
            }
        }
        return arrayList;
    }

    @NonNull
    private List<c> l(int childCount) {
        ArrayList arrayList = new ArrayList(childCount);
        for (int i4 = 0; i4 < childCount; i4++) {
            c cVar = new c();
            cVar.f28260b = ((FlexItem) this.f28252a.c(i4).getLayoutParams()).getOrder();
            cVar.f28259a = i4;
            arrayList.add(cVar);
        }
        return arrayList;
    }

    private void r(int size) {
        boolean[] zArr = this.f28253b;
        if (zArr == null) {
            this.f28253b = new boolean[Math.max(size, 10)];
        } else if (zArr.length < size) {
            this.f28253b = new boolean[Math.max(zArr.length * 2, size)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private void v(CompoundButton compoundButton) {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
        int minimumHeight = buttonDrawable != null ? buttonDrawable.getMinimumHeight() : 0;
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = minimumHeight;
        }
        flexItem.setMinHeight(minHeight);
    }

    private void w(int widthMeasureSpec, int heightMeasureSpec, f flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        int i4;
        int i10;
        int i11;
        double d4;
        int i12;
        double d10;
        float f10 = flexLine.f28240j;
        float f11 = 0.0f;
        if (f10 <= 0.0f || maxMainSize < (i4 = flexLine.f28235e)) {
            return;
        }
        float f12 = (maxMainSize - i4) / f10;
        flexLine.f28235e = paddingAlongMainAxis + flexLine.f28236f;
        if (!calledRecursively) {
            flexLine.f28237g = Integer.MIN_VALUE;
        }
        int i13 = 0;
        boolean z9 = false;
        int i14 = 0;
        float f13 = 0.0f;
        while (i13 < flexLine.f28238h) {
            int i15 = flexLine.f28245o + i13;
            View g4 = this.f28252a.g(i15);
            if (g4 == null || g4.getVisibility() == 8) {
                i10 = i4;
            } else {
                FlexItem flexItem = (FlexItem) g4.getLayoutParams();
                int flexDirection = this.f28252a.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = g4.getMeasuredHeight();
                    long[] jArr = this.f28256e;
                    if (jArr != null) {
                        measuredHeight = x(jArr[i15]);
                    }
                    int measuredWidth = g4.getMeasuredWidth();
                    long[] jArr2 = this.f28256e;
                    if (jArr2 != null) {
                        measuredWidth = y(jArr2[i15]);
                    }
                    if (this.f28253b[i15] || flexItem.getFlexGrow() <= f11) {
                        i12 = i4;
                    } else {
                        float flexGrow = measuredHeight + (flexItem.getFlexGrow() * f12);
                        if (i13 == flexLine.f28238h - 1) {
                            flexGrow += f13;
                            f13 = 0.0f;
                        }
                        int round = Math.round(flexGrow);
                        if (round > flexItem.getMaxHeight()) {
                            round = flexItem.getMaxHeight();
                            this.f28253b[i15] = true;
                            flexLine.f28240j -= flexItem.getFlexGrow();
                            i12 = i4;
                            z9 = true;
                        } else {
                            f13 += flexGrow - round;
                            i12 = i4;
                            double d11 = f13;
                            if (d11 > 1.0d) {
                                round++;
                                d10 = d11 - 1.0d;
                            } else if (d11 < -1.0d) {
                                round--;
                                d10 = d11 + 1.0d;
                            }
                            f13 = (float) d10;
                        }
                        int A = A(widthMeasureSpec, flexItem, flexLine.f28243m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        g4.measure(A, makeMeasureSpec);
                        measuredWidth = g4.getMeasuredWidth();
                        int measuredHeight2 = g4.getMeasuredHeight();
                        Z(i15, A, makeMeasureSpec, g4);
                        this.f28252a.h(i15, g4);
                        measuredHeight = measuredHeight2;
                    }
                    i11 = Math.max(i14, measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f28252a.e(g4));
                    flexLine.f28235e += measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom();
                    i10 = i12;
                } else {
                    int i16 = i4;
                    int measuredWidth2 = g4.getMeasuredWidth();
                    long[] jArr3 = this.f28256e;
                    if (jArr3 != null) {
                        measuredWidth2 = y(jArr3[i15]);
                    }
                    int measuredHeight3 = g4.getMeasuredHeight();
                    long[] jArr4 = this.f28256e;
                    i10 = i16;
                    if (jArr4 != null) {
                        measuredHeight3 = x(jArr4[i15]);
                    }
                    if (!this.f28253b[i15] && flexItem.getFlexGrow() > 0.0f) {
                        float flexGrow2 = measuredWidth2 + (flexItem.getFlexGrow() * f12);
                        if (i13 == flexLine.f28238h - 1) {
                            flexGrow2 += f13;
                            f13 = 0.0f;
                        }
                        int round2 = Math.round(flexGrow2);
                        if (round2 > flexItem.getMaxWidth()) {
                            round2 = flexItem.getMaxWidth();
                            this.f28253b[i15] = true;
                            flexLine.f28240j -= flexItem.getFlexGrow();
                            z9 = true;
                        } else {
                            f13 += flexGrow2 - round2;
                            double d12 = f13;
                            if (d12 > 1.0d) {
                                round2++;
                                d4 = d12 - 1.0d;
                            } else if (d12 < -1.0d) {
                                round2--;
                                d4 = d12 + 1.0d;
                            }
                            f13 = (float) d4;
                        }
                        int z10 = z(heightMeasureSpec, flexItem, flexLine.f28243m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        g4.measure(makeMeasureSpec2, z10);
                        int measuredWidth3 = g4.getMeasuredWidth();
                        int measuredHeight4 = g4.getMeasuredHeight();
                        Z(i15, makeMeasureSpec2, z10, g4);
                        this.f28252a.h(i15, g4);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i14, measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f28252a.e(g4));
                    flexLine.f28235e += measuredWidth2 + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    i11 = max;
                }
                flexLine.f28237g = Math.max(flexLine.f28237g, i11);
                i14 = i11;
            }
            i13++;
            i4 = i10;
            f11 = 0.0f;
        }
        int i17 = i4;
        if (!z9 || i17 == flexLine.f28235e) {
            return;
        }
        w(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
    }

    private int z(int heightMeasureSpec, FlexItem flexItem, int padding) {
        d dVar = this.f28252a;
        int d4 = dVar.d(heightMeasureSpec, dVar.getPaddingTop() + this.f28252a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + padding, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(d4);
        if (size > flexItem.getMaxHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(d4));
        }
        return size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(d4)) : d4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean O(SparseIntArray orderCache) {
        int flexItemCount = this.f28252a.getFlexItemCount();
        if (orderCache.size() != flexItemCount) {
            return true;
        }
        for (int i4 = 0; i4 < flexItemCount; i4++) {
            View c10 = this.f28252a.c(i4);
            if (c10 != null && ((FlexItem) c10.getLayoutParams()).getOrder() != orderCache.get(i4)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(View view, f flexLine, int left, int top, int right, int bottom) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f28252a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i4 = flexLine.f28237g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f28252a.getFlexWrap() != 2) {
                    int i10 = top + i4;
                    view.layout(left, (i10 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), right, i10 - flexItem.getMarginBottom());
                    return;
                }
                view.layout(left, (top - i4) + view.getMeasuredHeight() + flexItem.getMarginTop(), right, (bottom - i4) + view.getMeasuredHeight() + flexItem.getMarginTop());
                return;
            } else if (alignItems == 2) {
                int measuredHeight = (((i4 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.f28252a.getFlexWrap() != 2) {
                    int i11 = top + measuredHeight;
                    view.layout(left, i11, right, view.getMeasuredHeight() + i11);
                    return;
                }
                int i12 = top - measuredHeight;
                view.layout(left, i12, right, view.getMeasuredHeight() + i12);
                return;
            } else if (alignItems == 3) {
                if (this.f28252a.getFlexWrap() != 2) {
                    int max = Math.max(flexLine.f28242l - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(left, top + max, right, bottom + max);
                    return;
                }
                int max2 = Math.max((flexLine.f28242l - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                view.layout(left, top - max2, right, bottom - max2);
                return;
            } else if (alignItems != 4) {
                return;
            }
        }
        if (this.f28252a.getFlexWrap() != 2) {
            view.layout(left, top + flexItem.getMarginTop(), right, bottom + flexItem.getMarginTop());
        } else {
            view.layout(left, top - flexItem.getMarginBottom(), right, bottom - flexItem.getMarginBottom());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(View view, f flexLine, boolean isRtl, int left, int top, int right, int bottom) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f28252a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i4 = flexLine.f28237g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!isRtl) {
                    view.layout(((left + i4) - view.getMeasuredWidth()) - flexItem.getMarginRight(), top, ((right + i4) - view.getMeasuredWidth()) - flexItem.getMarginRight(), bottom);
                    return;
                } else {
                    view.layout((left - i4) + view.getMeasuredWidth() + flexItem.getMarginLeft(), top, (right - i4) + view.getMeasuredWidth() + flexItem.getMarginLeft(), bottom);
                    return;
                }
            } else if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i4 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (!isRtl) {
                    view.layout(left + measuredWidth, top, right + measuredWidth, bottom);
                    return;
                } else {
                    view.layout(left - measuredWidth, top, right - measuredWidth, bottom);
                    return;
                }
            } else if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!isRtl) {
            view.layout(left + flexItem.getMarginLeft(), top, right + flexItem.getMarginLeft(), bottom);
        } else {
            view.layout(left - flexItem.getMarginRight(), top, right - flexItem.getMarginRight(), bottom);
        }
    }

    @VisibleForTesting
    long S(int widthMeasureSpec, int heightMeasureSpec) {
        return (widthMeasureSpec & f28250g) | (heightMeasureSpec << 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X() {
        Y(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(int fromIndex) {
        View g4;
        if (fromIndex >= this.f28252a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28252a.getFlexDirection();
        if (this.f28252a.getAlignItems() == 4) {
            int[] iArr = this.f28254c;
            List<f> flexLinesInternal = this.f28252a.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i4 = iArr != null ? iArr[fromIndex] : 0; i4 < size; i4++) {
                f fVar = flexLinesInternal.get(i4);
                int i10 = fVar.f28238h;
                for (int i11 = 0; i11 < i10; i11++) {
                    int i12 = fVar.f28245o + i11;
                    if (i11 < this.f28252a.getFlexItemCount() && (g4 = this.f28252a.g(i12)) != null && g4.getVisibility() != 8) {
                        FlexItem flexItem = (FlexItem) g4.getLayoutParams();
                        if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                            if (flexDirection == 0 || flexDirection == 1) {
                                W(g4, fVar.f28237g, i12);
                            } else if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            } else {
                                V(g4, fVar.f28237g, i12);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (f fVar2 : this.f28252a.getFlexLinesInternal()) {
            for (Integer num : fVar2.f28244n) {
                View g10 = this.f28252a.g(num.intValue());
                if (flexDirection == 0 || flexDirection == 1) {
                    W(g10, fVar2.f28237g, num.intValue());
                } else if (flexDirection != 2 && flexDirection != 3) {
                    throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                } else {
                    V(g10, fVar2.f28237g, num.intValue());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(b result, int mainMeasureSpec, int crossMeasureSpec, int needsCalcAmount, int fromIndex, int toIndex, @Nullable List<f> existingLines) {
        int i4;
        b bVar;
        int i10;
        int i11;
        int i12;
        List<f> list;
        int i13;
        View view;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        f fVar;
        int i20;
        int i21 = mainMeasureSpec;
        int i22 = crossMeasureSpec;
        int i23 = toIndex;
        boolean j4 = this.f28252a.j();
        int mode = View.MeasureSpec.getMode(mainMeasureSpec);
        int size = View.MeasureSpec.getSize(mainMeasureSpec);
        ArrayList arrayList = existingLines == null ? new ArrayList() : existingLines;
        result.f28257a = arrayList;
        boolean z9 = i23 == -1;
        int K = K(j4);
        int I = I(j4);
        int J = J(j4);
        int H = H(j4);
        f fVar2 = new f();
        int i24 = fromIndex;
        fVar2.f28245o = i24;
        int i25 = I + K;
        fVar2.f28235e = i25;
        int flexItemCount = this.f28252a.getFlexItemCount();
        boolean z10 = z9;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = Integer.MIN_VALUE;
        while (true) {
            if (i24 >= flexItemCount) {
                i4 = i27;
                bVar = result;
                break;
            }
            View g4 = this.f28252a.g(i24);
            if (g4 == null) {
                if (N(i24, flexItemCount, fVar2)) {
                    a(arrayList, fVar2, i24, i26);
                }
            } else if (g4.getVisibility() == 8) {
                fVar2.f28239i++;
                fVar2.f28238h++;
                if (N(i24, flexItemCount, fVar2)) {
                    a(arrayList, fVar2, i24, i26);
                }
            } else {
                if (g4 instanceof CompoundButton) {
                    v((CompoundButton) g4);
                }
                FlexItem flexItem = (FlexItem) g4.getLayoutParams();
                int i30 = flexItemCount;
                if (flexItem.getAlignSelf() == 4) {
                    fVar2.f28244n.add(Integer.valueOf(i24));
                }
                int G = G(flexItem, j4);
                if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                    G = Math.round(size * flexItem.getFlexBasisPercent());
                }
                if (j4) {
                    int b10 = this.f28252a.b(i21, i25 + E(flexItem, true) + C(flexItem, true), G);
                    i10 = size;
                    i11 = mode;
                    int d4 = this.f28252a.d(i22, J + H + D(flexItem, true) + B(flexItem, true) + i26, F(flexItem, true));
                    g4.measure(b10, d4);
                    Z(i24, b10, d4, g4);
                    i12 = b10;
                } else {
                    i10 = size;
                    i11 = mode;
                    int b11 = this.f28252a.b(i22, J + H + D(flexItem, false) + B(flexItem, false) + i26, F(flexItem, false));
                    int d10 = this.f28252a.d(i21, E(flexItem, false) + i25 + C(flexItem, false), G);
                    g4.measure(b11, d10);
                    Z(i24, b11, d10, g4);
                    i12 = d10;
                }
                this.f28252a.h(i24, g4);
                i(g4, i24);
                i27 = View.combineMeasuredStates(i27, g4.getMeasuredState());
                int i31 = i26;
                int i32 = i25;
                f fVar3 = fVar2;
                int i33 = i24;
                list = arrayList;
                int i34 = i12;
                if (P(g4, i11, i10, fVar2.f28235e, C(flexItem, j4) + M(g4, j4) + E(flexItem, j4), flexItem, i33, i28, arrayList.size())) {
                    if (fVar3.d() > 0) {
                        if (i33 > 0) {
                            i20 = i33 - 1;
                            fVar = fVar3;
                        } else {
                            fVar = fVar3;
                            i20 = 0;
                        }
                        a(list, fVar, i20, i31);
                        i26 = fVar.f28237g + i31;
                    } else {
                        i26 = i31;
                    }
                    if (j4) {
                        if (flexItem.getHeight() == -1) {
                            d dVar = this.f28252a;
                            i13 = crossMeasureSpec;
                            i24 = i33;
                            view = g4;
                            view.measure(i34, dVar.d(i13, dVar.getPaddingTop() + this.f28252a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i26, flexItem.getHeight()));
                            i(view, i24);
                        } else {
                            i13 = crossMeasureSpec;
                            view = g4;
                            i24 = i33;
                        }
                    } else {
                        i13 = crossMeasureSpec;
                        view = g4;
                        i24 = i33;
                        if (flexItem.getWidth() == -1) {
                            d dVar2 = this.f28252a;
                            view.measure(dVar2.b(i13, dVar2.getPaddingLeft() + this.f28252a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i26, flexItem.getWidth()), i34);
                            i(view, i24);
                        }
                    }
                    fVar2 = new f();
                    fVar2.f28238h = 1;
                    i14 = i32;
                    fVar2.f28235e = i14;
                    fVar2.f28245o = i24;
                    i15 = 0;
                    i16 = Integer.MIN_VALUE;
                } else {
                    i13 = crossMeasureSpec;
                    view = g4;
                    i24 = i33;
                    fVar2 = fVar3;
                    i14 = i32;
                    fVar2.f28238h++;
                    i15 = i28 + 1;
                    i26 = i31;
                    i16 = i29;
                }
                fVar2.f28247q |= flexItem.getFlexGrow() != 0.0f;
                fVar2.f28248r |= flexItem.getFlexShrink() != 0.0f;
                int[] iArr = this.f28254c;
                if (iArr != null) {
                    iArr[i24] = list.size();
                }
                fVar2.f28235e += M(view, j4) + E(flexItem, j4) + C(flexItem, j4);
                fVar2.f28240j += flexItem.getFlexGrow();
                fVar2.f28241k += flexItem.getFlexShrink();
                this.f28252a.a(view, i24, i15, fVar2);
                int max = Math.max(i16, L(view, j4) + D(flexItem, j4) + B(flexItem, j4) + this.f28252a.e(view));
                fVar2.f28237g = Math.max(fVar2.f28237g, max);
                if (j4) {
                    if (this.f28252a.getFlexWrap() != 2) {
                        fVar2.f28242l = Math.max(fVar2.f28242l, view.getBaseline() + flexItem.getMarginTop());
                    } else {
                        fVar2.f28242l = Math.max(fVar2.f28242l, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                    }
                }
                i17 = i30;
                if (N(i24, i17, fVar2)) {
                    a(list, fVar2, i24, i26);
                    i26 += fVar2.f28237g;
                }
                i18 = toIndex;
                if (i18 != -1 && list.size() > 0) {
                    if (list.get(list.size() - 1).f28246p >= i18 && i24 >= i18 && !z10) {
                        i26 = -fVar2.a();
                        i19 = needsCalcAmount;
                        z10 = true;
                        if (i26 <= i19 && z10) {
                            bVar = result;
                            i4 = i27;
                            break;
                        }
                        i28 = i15;
                        i29 = max;
                        i24++;
                        i21 = mainMeasureSpec;
                        flexItemCount = i17;
                        i22 = i13;
                        i25 = i14;
                        arrayList = list;
                        mode = i11;
                        i23 = i18;
                        size = i10;
                    }
                }
                i19 = needsCalcAmount;
                if (i26 <= i19) {
                }
                i28 = i15;
                i29 = max;
                i24++;
                i21 = mainMeasureSpec;
                flexItemCount = i17;
                i22 = i13;
                i25 = i14;
                arrayList = list;
                mode = i11;
                i23 = i18;
                size = i10;
            }
            i10 = size;
            i11 = mode;
            i13 = i22;
            i18 = i23;
            list = arrayList;
            i14 = i25;
            i17 = flexItemCount;
            i24++;
            i21 = mainMeasureSpec;
            flexItemCount = i17;
            i22 = i13;
            i25 = i14;
            arrayList = list;
            mode = i11;
            i23 = i18;
            size = i10;
        }
        bVar.f28258b = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(b result, int widthMeasureSpec, int heightMeasureSpec) {
        b(result, widthMeasureSpec, heightMeasureSpec, Integer.MAX_VALUE, 0, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, @Nullable List<f> existingLines) {
        b(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<f> existingLines) {
        b(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(b result, int widthMeasureSpec, int heightMeasureSpec) {
        b(result, heightMeasureSpec, widthMeasureSpec, Integer.MAX_VALUE, 0, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, @Nullable List<f> existingLines) {
        b(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<f> existingLines) {
        b(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(List<f> flexLines, int fromFlexItem) {
        int i4 = this.f28254c[fromFlexItem];
        if (i4 == -1) {
            i4 = 0;
        }
        if (flexLines.size() > i4) {
            flexLines.subList(i4, flexLines.size()).clear();
        }
        int[] iArr = this.f28254c;
        int length = iArr.length - 1;
        if (fromFlexItem > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, fromFlexItem, length, -1);
        }
        long[] jArr = this.f28255d;
        int length2 = jArr.length - 1;
        if (fromFlexItem > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, fromFlexItem, length2, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] m(SparseIntArray orderCache) {
        int flexItemCount = this.f28252a.getFlexItemCount();
        return U(flexItemCount, l(flexItemCount), orderCache);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] n(View viewBeforeAdded, int indexForViewBeforeAdded, ViewGroup.LayoutParams paramsForViewBeforeAdded, SparseIntArray orderCache) {
        int flexItemCount = this.f28252a.getFlexItemCount();
        List<c> l10 = l(flexItemCount);
        c cVar = new c();
        if (viewBeforeAdded != null && (paramsForViewBeforeAdded instanceof FlexItem)) {
            cVar.f28260b = ((FlexItem) paramsForViewBeforeAdded).getOrder();
        } else {
            cVar.f28260b = 1;
        }
        if (indexForViewBeforeAdded != -1 && indexForViewBeforeAdded != flexItemCount) {
            if (indexForViewBeforeAdded < this.f28252a.getFlexItemCount()) {
                cVar.f28259a = indexForViewBeforeAdded;
                while (indexForViewBeforeAdded < flexItemCount) {
                    l10.get(indexForViewBeforeAdded).f28259a++;
                    indexForViewBeforeAdded++;
                }
            } else {
                cVar.f28259a = flexItemCount;
            }
        } else {
            cVar.f28259a = flexItemCount;
        }
        l10.add(cVar);
        return U(flexItemCount + 1, l10, orderCache);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(int widthMeasureSpec, int heightMeasureSpec, int paddingAlongCrossAxis) {
        int i4;
        int i10;
        int flexDirection = this.f28252a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(heightMeasureSpec);
            int size = View.MeasureSpec.getSize(heightMeasureSpec);
            i4 = mode;
            i10 = size;
        } else if (flexDirection != 2 && flexDirection != 3) {
            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
        } else {
            i4 = View.MeasureSpec.getMode(widthMeasureSpec);
            i10 = View.MeasureSpec.getSize(widthMeasureSpec);
        }
        List<f> flexLinesInternal = this.f28252a.getFlexLinesInternal();
        if (i4 == 1073741824) {
            int sumOfCrossSize = this.f28252a.getSumOfCrossSize() + paddingAlongCrossAxis;
            int i11 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).f28237g = i10 - paddingAlongCrossAxis;
            } else if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f28252a.getAlignContent();
                if (alignContent == 1) {
                    int i12 = i10 - sumOfCrossSize;
                    f fVar = new f();
                    fVar.f28237g = i12;
                    flexLinesInternal.add(0, fVar);
                } else if (alignContent == 2) {
                    this.f28252a.setFlexLines(k(flexLinesInternal, i10, sumOfCrossSize));
                } else if (alignContent == 3) {
                    if (sumOfCrossSize >= i10) {
                        return;
                    }
                    float size2 = (i10 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size3 = flexLinesInternal.size();
                    float f10 = 0.0f;
                    while (i11 < size3) {
                        arrayList.add(flexLinesInternal.get(i11));
                        if (i11 != flexLinesInternal.size() - 1) {
                            f fVar2 = new f();
                            if (i11 == flexLinesInternal.size() - 2) {
                                fVar2.f28237g = Math.round(f10 + size2);
                                f10 = 0.0f;
                            } else {
                                fVar2.f28237g = Math.round(size2);
                            }
                            int i13 = fVar2.f28237g;
                            f10 += size2 - i13;
                            if (f10 > 1.0f) {
                                fVar2.f28237g = i13 + 1;
                                f10 -= 1.0f;
                            } else if (f10 < -1.0f) {
                                fVar2.f28237g = i13 - 1;
                                f10 += 1.0f;
                            }
                            arrayList.add(fVar2);
                        }
                        i11++;
                    }
                    this.f28252a.setFlexLines(arrayList);
                } else if (alignContent == 4) {
                    if (sumOfCrossSize >= i10) {
                        this.f28252a.setFlexLines(k(flexLinesInternal, i10, sumOfCrossSize));
                        return;
                    }
                    int size4 = (i10 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    f fVar3 = new f();
                    fVar3.f28237g = size4;
                    for (f fVar4 : flexLinesInternal) {
                        arrayList2.add(fVar3);
                        arrayList2.add(fVar4);
                        arrayList2.add(fVar3);
                    }
                    this.f28252a.setFlexLines(arrayList2);
                } else if (alignContent == 5 && sumOfCrossSize < i10) {
                    float size5 = (i10 - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i11 < size6) {
                        f fVar5 = flexLinesInternal.get(i11);
                        float f12 = fVar5.f28237g + size5;
                        if (i11 == flexLinesInternal.size() - 1) {
                            f12 += f11;
                            f11 = 0.0f;
                        }
                        int round = Math.round(f12);
                        f11 += f12 - round;
                        if (f11 > 1.0f) {
                            round++;
                            f11 -= 1.0f;
                        } else if (f11 < -1.0f) {
                            round--;
                            f11 += 1.0f;
                        }
                        fVar5.f28237g = round;
                        i11++;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(int widthMeasureSpec, int heightMeasureSpec) {
        q(widthMeasureSpec, heightMeasureSpec, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(int widthMeasureSpec, int heightMeasureSpec, int fromIndex) {
        int size;
        int paddingLeft;
        int paddingRight;
        r(this.f28252a.getFlexItemCount());
        if (fromIndex >= this.f28252a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28252a.getFlexDirection();
        int flexDirection2 = this.f28252a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            size = View.MeasureSpec.getSize(widthMeasureSpec);
            int largestMainSize = this.f28252a.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.f28252a.getPaddingLeft();
            paddingRight = this.f28252a.getPaddingRight();
        } else if (flexDirection2 != 2 && flexDirection2 != 3) {
            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
        } else {
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            size = View.MeasureSpec.getSize(heightMeasureSpec);
            if (mode2 != 1073741824) {
                size = this.f28252a.getLargestMainSize();
            }
            paddingLeft = this.f28252a.getPaddingTop();
            paddingRight = this.f28252a.getPaddingBottom();
        }
        int i4 = paddingLeft + paddingRight;
        int[] iArr = this.f28254c;
        int i10 = iArr != null ? iArr[fromIndex] : 0;
        List<f> flexLinesInternal = this.f28252a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i11 = i10; i11 < size2; i11++) {
            f fVar = flexLinesInternal.get(i11);
            int i12 = fVar.f28235e;
            if (i12 < size && fVar.f28247q) {
                w(widthMeasureSpec, heightMeasureSpec, fVar, size, i4, false);
            } else if (i12 > size && fVar.f28248r) {
                T(widthMeasureSpec, heightMeasureSpec, fVar, size, i4, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(int size) {
        int[] iArr = this.f28254c;
        if (iArr == null) {
            this.f28254c = new int[Math.max(size, 10)];
        } else if (iArr.length < size) {
            this.f28254c = Arrays.copyOf(this.f28254c, Math.max(iArr.length * 2, size));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(int size) {
        long[] jArr = this.f28255d;
        if (jArr == null) {
            this.f28255d = new long[Math.max(size, 10)];
        } else if (jArr.length < size) {
            this.f28255d = Arrays.copyOf(this.f28255d, Math.max(jArr.length * 2, size));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(int size) {
        long[] jArr = this.f28256e;
        if (jArr == null) {
            this.f28256e = new long[Math.max(size, 10)];
        } else if (jArr.length < size) {
            this.f28256e = Arrays.copyOf(this.f28256e, Math.max(jArr.length * 2, size));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int x(long longValue) {
        return (int) (longValue >> 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int y(long longValue) {
        return (int) longValue;
    }
}
