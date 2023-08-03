package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.h;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements d, RecyclerView.SmoothScroller.ScrollVectorProvider {
    private static final String A = "FlexboxLayoutManager";
    private static final Rect B = new Rect();
    private static final boolean C = false;
    static final /* synthetic */ boolean D = false;

    /* renamed from: a  reason: collision with root package name */
    private int f28181a;

    /* renamed from: b  reason: collision with root package name */
    private int f28182b;

    /* renamed from: c  reason: collision with root package name */
    private int f28183c;

    /* renamed from: d  reason: collision with root package name */
    private int f28184d;

    /* renamed from: e  reason: collision with root package name */
    private int f28185e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28186f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f28187g;

    /* renamed from: h  reason: collision with root package name */
    private List<f> f28188h;

    /* renamed from: i  reason: collision with root package name */
    private final h f28189i;

    /* renamed from: j  reason: collision with root package name */
    private RecyclerView.Recycler f28190j;

    /* renamed from: k  reason: collision with root package name */
    private RecyclerView.State f28191k;

    /* renamed from: l  reason: collision with root package name */
    private c f28192l;

    /* renamed from: m  reason: collision with root package name */
    private b f28193m;

    /* renamed from: n  reason: collision with root package name */
    private OrientationHelper f28194n;

    /* renamed from: o  reason: collision with root package name */
    private OrientationHelper f28195o;

    /* renamed from: p  reason: collision with root package name */
    private SavedState f28196p;

    /* renamed from: q  reason: collision with root package name */
    private int f28197q;

    /* renamed from: r  reason: collision with root package name */
    private int f28198r;

    /* renamed from: s  reason: collision with root package name */
    private int f28199s;

    /* renamed from: t  reason: collision with root package name */
    private int f28200t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f28201u;

    /* renamed from: v  reason: collision with root package name */
    private SparseArray<View> f28202v;

    /* renamed from: w  reason: collision with root package name */
    private final Context f28203w;

    /* renamed from: x  reason: collision with root package name */
    private View f28204x;

    /* renamed from: y  reason: collision with root package name */
    private int f28205y;

    /* renamed from: z  reason: collision with root package name */
    private h.b f28206z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: i  reason: collision with root package name */
        static final /* synthetic */ boolean f28207i = false;

        /* renamed from: a  reason: collision with root package name */
        private int f28208a;

        /* renamed from: b  reason: collision with root package name */
        private int f28209b;

        /* renamed from: c  reason: collision with root package name */
        private int f28210c;

        /* renamed from: d  reason: collision with root package name */
        private int f28211d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f28212e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f28213f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f28214g;

        private b() {
            this.f28211d = 0;
        }

        static /* synthetic */ int l(b bVar, int i4) {
            int i10 = bVar.f28211d + i4;
            bVar.f28211d = i10;
            return i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            if (!FlexboxLayoutManager.this.j() && FlexboxLayoutManager.this.f28186f) {
                this.f28210c = this.f28212e ? FlexboxLayoutManager.this.f28194n.getEndAfterPadding() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f28194n.getStartAfterPadding();
            } else {
                this.f28210c = this.f28212e ? FlexboxLayoutManager.this.f28194n.getEndAfterPadding() : FlexboxLayoutManager.this.f28194n.getStartAfterPadding();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(View anchor) {
            OrientationHelper orientationHelper;
            if (FlexboxLayoutManager.this.f28182b == 0) {
                orientationHelper = FlexboxLayoutManager.this.f28195o;
            } else {
                orientationHelper = FlexboxLayoutManager.this.f28194n;
            }
            if (!FlexboxLayoutManager.this.j() && FlexboxLayoutManager.this.f28186f) {
                if (this.f28212e) {
                    this.f28210c = orientationHelper.getDecoratedStart(anchor) + orientationHelper.getTotalSpaceChange();
                } else {
                    this.f28210c = orientationHelper.getDecoratedEnd(anchor);
                }
            } else if (this.f28212e) {
                this.f28210c = orientationHelper.getDecoratedEnd(anchor) + orientationHelper.getTotalSpaceChange();
            } else {
                this.f28210c = orientationHelper.getDecoratedStart(anchor);
            }
            this.f28208a = FlexboxLayoutManager.this.getPosition(anchor);
            this.f28214g = false;
            int[] iArr = FlexboxLayoutManager.this.f28189i.f28254c;
            int i4 = this.f28208a;
            if (i4 == -1) {
                i4 = 0;
            }
            int i10 = iArr[i4];
            this.f28209b = i10 != -1 ? i10 : 0;
            if (FlexboxLayoutManager.this.f28188h.size() > this.f28209b) {
                this.f28208a = ((f) FlexboxLayoutManager.this.f28188h.get(this.f28209b)).f28245o;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t() {
            this.f28208a = -1;
            this.f28209b = -1;
            this.f28210c = Integer.MIN_VALUE;
            this.f28213f = false;
            this.f28214g = false;
            if (FlexboxLayoutManager.this.j()) {
                if (FlexboxLayoutManager.this.f28182b == 0) {
                    this.f28212e = FlexboxLayoutManager.this.f28181a == 1;
                } else {
                    this.f28212e = FlexboxLayoutManager.this.f28182b == 2;
                }
            } else if (FlexboxLayoutManager.this.f28182b == 0) {
                this.f28212e = FlexboxLayoutManager.this.f28181a == 3;
            } else {
                this.f28212e = FlexboxLayoutManager.this.f28182b == 2;
            }
        }

        @NonNull
        public String toString() {
            return "AnchorInfo{mPosition=" + this.f28208a + ", mFlexLinePosition=" + this.f28209b + ", mCoordinate=" + this.f28210c + ", mPerpendicularCoordinate=" + this.f28211d + ", mLayoutFromEnd=" + this.f28212e + ", mValid=" + this.f28213f + ", mAssignedFromSavedState=" + this.f28214g + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: k  reason: collision with root package name */
        private static final int f28216k = Integer.MIN_VALUE;

        /* renamed from: l  reason: collision with root package name */
        private static final int f28217l = -1;

        /* renamed from: m  reason: collision with root package name */
        private static final int f28218m = 1;

        /* renamed from: n  reason: collision with root package name */
        private static final int f28219n = 1;

        /* renamed from: a  reason: collision with root package name */
        private int f28220a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f28221b;

        /* renamed from: c  reason: collision with root package name */
        private int f28222c;

        /* renamed from: d  reason: collision with root package name */
        private int f28223d;

        /* renamed from: e  reason: collision with root package name */
        private int f28224e;

        /* renamed from: f  reason: collision with root package name */
        private int f28225f;

        /* renamed from: g  reason: collision with root package name */
        private int f28226g;

        /* renamed from: h  reason: collision with root package name */
        private int f28227h;

        /* renamed from: i  reason: collision with root package name */
        private int f28228i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f28229j;

        private c() {
            this.f28227h = 1;
            this.f28228i = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean D(RecyclerView.State state, List<f> flexLines) {
            int i4;
            int i10 = this.f28223d;
            return i10 >= 0 && i10 < state.getItemCount() && (i4 = this.f28222c) >= 0 && i4 < flexLines.size();
        }

        static /* synthetic */ int c(c cVar, int i4) {
            int i10 = cVar.f28224e + i4;
            cVar.f28224e = i10;
            return i10;
        }

        static /* synthetic */ int d(c cVar, int i4) {
            int i10 = cVar.f28224e - i4;
            cVar.f28224e = i10;
            return i10;
        }

        static /* synthetic */ int i(c cVar, int i4) {
            int i10 = cVar.f28220a - i4;
            cVar.f28220a = i10;
            return i10;
        }

        static /* synthetic */ int l(c cVar) {
            int i4 = cVar.f28222c;
            cVar.f28222c = i4 + 1;
            return i4;
        }

        static /* synthetic */ int m(c cVar) {
            int i4 = cVar.f28222c;
            cVar.f28222c = i4 - 1;
            return i4;
        }

        static /* synthetic */ int n(c cVar, int i4) {
            int i10 = cVar.f28222c + i4;
            cVar.f28222c = i10;
            return i10;
        }

        static /* synthetic */ int q(c cVar, int i4) {
            int i10 = cVar.f28225f + i4;
            cVar.f28225f = i10;
            return i10;
        }

        static /* synthetic */ int u(c cVar, int i4) {
            int i10 = cVar.f28223d + i4;
            cVar.f28223d = i10;
            return i10;
        }

        static /* synthetic */ int v(c cVar, int i4) {
            int i10 = cVar.f28223d - i4;
            cVar.f28223d = i10;
            return i10;
        }

        @NonNull
        public String toString() {
            return "LayoutState{mAvailable=" + this.f28220a + ", mFlexLinePosition=" + this.f28222c + ", mPosition=" + this.f28223d + ", mOffset=" + this.f28224e + ", mScrollingOffset=" + this.f28225f + ", mLastScrollDelta=" + this.f28226g + ", mItemDirection=" + this.f28227h + ", mLayoutDirection=" + this.f28228i + '}';
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    private View A(int fromIndex, int toIndex, boolean completelyVisible) {
        int i4 = toIndex > fromIndex ? 1 : -1;
        while (fromIndex != toIndex) {
            View childAt = getChildAt(fromIndex);
            if (K(childAt, completelyVisible)) {
                return childAt;
            }
            fromIndex += i4;
        }
        return null;
    }

    private View B(int start, int end, int itemCount) {
        int position;
        u();
        ensureLayoutState();
        int startAfterPadding = this.f28194n.getStartAfterPadding();
        int endAfterPadding = this.f28194n.getEndAfterPadding();
        int i4 = end > start ? 1 : -1;
        View view = null;
        View view2 = null;
        while (start != end) {
            View childAt = getChildAt(start);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < itemCount) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else if (this.f28194n.getDecoratedStart(childAt) >= startAfterPadding && this.f28194n.getDecoratedEnd(childAt) <= endAfterPadding) {
                    return childAt;
                } else {
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            start += i4;
        }
        return view != null ? view : view2;
    }

    private int C(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    private int D(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    private int E(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    private int F(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    private int H(int delta, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || delta == 0) {
            return 0;
        }
        u();
        int i4 = 1;
        this.f28192l.f28229j = true;
        boolean z9 = !j() && this.f28186f;
        if (!z9 ? delta <= 0 : delta >= 0) {
            i4 = -1;
        }
        int abs = Math.abs(delta);
        Y(i4, abs);
        int v9 = this.f28192l.f28225f + v(recycler, state, this.f28192l);
        if (v9 < 0) {
            return 0;
        }
        if (z9) {
            if (abs > v9) {
                delta = (-i4) * v9;
            }
        } else if (abs > v9) {
            delta = i4 * v9;
        }
        this.f28194n.offsetChildren(-delta);
        this.f28192l.f28226g = delta;
        return delta;
    }

    private int I(int delta) {
        int i4;
        if (getChildCount() == 0 || delta == 0) {
            return 0;
        }
        u();
        boolean j4 = j();
        View view = this.f28204x;
        int width = j4 ? view.getWidth() : view.getHeight();
        int width2 = j4 ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            int abs = Math.abs(delta);
            if (delta < 0) {
                i4 = Math.min((width2 + this.f28193m.f28211d) - width, abs);
            } else if (this.f28193m.f28211d + delta <= 0) {
                return delta;
            } else {
                i4 = this.f28193m.f28211d;
            }
        } else if (delta > 0) {
            return Math.min((width2 - this.f28193m.f28211d) - width, delta);
        } else {
            if (this.f28193m.f28211d + delta >= 0) {
                return delta;
            }
            i4 = this.f28193m.f28211d;
        }
        return -i4;
    }

    private boolean K(View view, boolean completelyVisible) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int D2 = D(view);
        int F = F(view);
        int E = E(view);
        int C2 = C(view);
        return completelyVisible ? (paddingLeft <= D2 && width >= E) && (paddingTop <= F && height >= C2) : (D2 >= width || E >= paddingLeft) && (F >= height || C2 >= paddingTop);
    }

    private int L(f flexLine, c layoutState) {
        if (j()) {
            return M(flexLine, layoutState);
        }
        return N(flexLine, layoutState);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int M(com.google.android.flexbox.f r22, com.google.android.flexbox.FlexboxLayoutManager.c r23) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.M(com.google.android.flexbox.f, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int N(com.google.android.flexbox.f r26, com.google.android.flexbox.FlexboxLayoutManager.c r27) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.N(com.google.android.flexbox.f, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    private void O(RecyclerView.Recycler recycler, c layoutState) {
        if (layoutState.f28229j) {
            if (layoutState.f28228i == -1) {
                P(recycler, layoutState);
            } else {
                Q(recycler, layoutState);
            }
        }
    }

    private void P(RecyclerView.Recycler recycler, c layoutState) {
        int childCount;
        int i4;
        View childAt;
        int i10;
        if (layoutState.f28225f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(childCount - 1)) == null || (i10 = this.f28189i.f28254c[getPosition(childAt)]) == -1) {
            return;
        }
        f fVar = this.f28188h.get(i10);
        int i11 = i4;
        while (true) {
            if (i11 < 0) {
                break;
            }
            View childAt2 = getChildAt(i11);
            if (childAt2 != null) {
                if (!r(childAt2, layoutState.f28225f)) {
                    break;
                } else if (fVar.f28245o != getPosition(childAt2)) {
                    continue;
                } else if (i10 <= 0) {
                    childCount = i11;
                    break;
                } else {
                    i10 += layoutState.f28228i;
                    fVar = this.f28188h.get(i10);
                    childCount = i11;
                }
            }
            i11--;
        }
        recycleChildren(recycler, childCount, i4);
    }

    private void Q(RecyclerView.Recycler recycler, c layoutState) {
        int childCount;
        View childAt;
        if (layoutState.f28225f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i4 = this.f28189i.f28254c[getPosition(childAt)];
        int i10 = -1;
        if (i4 == -1) {
            return;
        }
        f fVar = this.f28188h.get(i4);
        int i11 = 0;
        while (true) {
            if (i11 >= childCount) {
                break;
            }
            View childAt2 = getChildAt(i11);
            if (childAt2 != null) {
                if (!s(childAt2, layoutState.f28225f)) {
                    break;
                } else if (fVar.f28246p != getPosition(childAt2)) {
                    continue;
                } else if (i4 >= this.f28188h.size() - 1) {
                    i10 = i11;
                    break;
                } else {
                    i4 += layoutState.f28228i;
                    fVar = this.f28188h.get(i4);
                    i10 = i11;
                }
            }
            i11++;
        }
        recycleChildren(recycler, 0, i10);
    }

    private void R() {
        int widthMode;
        if (j()) {
            widthMode = getHeightMode();
        } else {
            widthMode = getWidthMode();
        }
        this.f28192l.f28221b = widthMode == 0 || widthMode == Integer.MIN_VALUE;
    }

    private void S() {
        int layoutDirection = getLayoutDirection();
        int i4 = this.f28181a;
        if (i4 == 0) {
            this.f28186f = layoutDirection == 1;
            this.f28187g = this.f28182b == 2;
        } else if (i4 == 1) {
            this.f28186f = layoutDirection != 1;
            this.f28187g = this.f28182b == 2;
        } else if (i4 == 2) {
            boolean z9 = layoutDirection == 1;
            this.f28186f = z9;
            if (this.f28182b == 2) {
                this.f28186f = !z9;
            }
            this.f28187g = false;
        } else if (i4 != 3) {
            this.f28186f = false;
            this.f28187g = false;
        } else {
            boolean z10 = layoutDirection == 1;
            this.f28186f = z10;
            if (this.f28182b == 2) {
                this.f28186f = !z10;
            }
            this.f28187g = true;
        }
    }

    private boolean T(RecyclerView.State state, b anchorInfo) {
        View w9;
        int startAfterPadding;
        boolean z9 = false;
        if (getChildCount() == 0) {
            return false;
        }
        if (anchorInfo.f28212e) {
            w9 = y(state.getItemCount());
        } else {
            w9 = w(state.getItemCount());
        }
        if (w9 != null) {
            anchorInfo.s(w9);
            if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
                if ((this.f28194n.getDecoratedStart(w9) >= this.f28194n.getEndAfterPadding() || this.f28194n.getDecoratedEnd(w9) < this.f28194n.getStartAfterPadding()) ? true : true) {
                    if (anchorInfo.f28212e) {
                        startAfterPadding = this.f28194n.getEndAfterPadding();
                    } else {
                        startAfterPadding = this.f28194n.getStartAfterPadding();
                    }
                    anchorInfo.f28210c = startAfterPadding;
                }
            }
            return true;
        }
        return false;
    }

    private boolean U(RecyclerView.State state, b anchorInfo, SavedState savedState) {
        int i4;
        View childAt;
        int decoratedStart;
        if (!state.isPreLayout() && (i4 = this.f28197q) != -1) {
            if (i4 >= 0 && i4 < state.getItemCount()) {
                anchorInfo.f28208a = this.f28197q;
                anchorInfo.f28209b = this.f28189i.f28254c[anchorInfo.f28208a];
                SavedState savedState2 = this.f28196p;
                if (savedState2 != null && savedState2.hasValidAnchor(state.getItemCount())) {
                    anchorInfo.f28210c = this.f28194n.getStartAfterPadding() + savedState.mAnchorOffset;
                    anchorInfo.f28214g = true;
                    anchorInfo.f28209b = -1;
                    return true;
                } else if (this.f28198r == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.f28197q);
                    if (findViewByPosition != null) {
                        if (this.f28194n.getDecoratedMeasurement(findViewByPosition) > this.f28194n.getTotalSpace()) {
                            anchorInfo.r();
                            return true;
                        } else if (this.f28194n.getDecoratedStart(findViewByPosition) - this.f28194n.getStartAfterPadding() < 0) {
                            anchorInfo.f28210c = this.f28194n.getStartAfterPadding();
                            anchorInfo.f28212e = false;
                            return true;
                        } else if (this.f28194n.getEndAfterPadding() - this.f28194n.getDecoratedEnd(findViewByPosition) < 0) {
                            anchorInfo.f28210c = this.f28194n.getEndAfterPadding();
                            anchorInfo.f28212e = true;
                            return true;
                        } else {
                            if (anchorInfo.f28212e) {
                                decoratedStart = this.f28194n.getDecoratedEnd(findViewByPosition) + this.f28194n.getTotalSpaceChange();
                            } else {
                                decoratedStart = this.f28194n.getDecoratedStart(findViewByPosition);
                            }
                            anchorInfo.f28210c = decoratedStart;
                        }
                    } else {
                        if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                            anchorInfo.f28212e = this.f28197q < getPosition(childAt);
                        }
                        anchorInfo.r();
                    }
                    return true;
                } else {
                    if (!j() && this.f28186f) {
                        anchorInfo.f28210c = this.f28198r - this.f28194n.getEndPadding();
                    } else {
                        anchorInfo.f28210c = this.f28194n.getStartAfterPadding() + this.f28198r;
                    }
                    return true;
                }
            }
            this.f28197q = -1;
            this.f28198r = Integer.MIN_VALUE;
        }
        return false;
    }

    private void V(RecyclerView.State state, b anchorInfo) {
        if (U(state, anchorInfo, this.f28196p) || T(state, anchorInfo)) {
            return;
        }
        anchorInfo.r();
        anchorInfo.f28208a = 0;
        anchorInfo.f28209b = 0;
    }

    private void W(int positionStart) {
        if (positionStart >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f28189i.t(childCount);
        this.f28189i.u(childCount);
        this.f28189i.s(childCount);
        if (positionStart >= this.f28189i.f28254c.length) {
            return;
        }
        this.f28205y = positionStart;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        this.f28197q = getPosition(childClosestToStart);
        if (!j() && this.f28186f) {
            this.f28198r = this.f28194n.getDecoratedEnd(childClosestToStart) + this.f28194n.getEndPadding();
        } else {
            this.f28198r = this.f28194n.getDecoratedStart(childClosestToStart) - this.f28194n.getStartAfterPadding();
        }
    }

    private void X(int childCount) {
        int i4;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z9 = true;
        if (j()) {
            int i10 = this.f28199s;
            z9 = (i10 == Integer.MIN_VALUE || i10 == width) ? false : false;
            if (this.f28192l.f28221b) {
                i4 = this.f28203w.getResources().getDisplayMetrics().heightPixels;
            } else {
                i4 = this.f28192l.f28220a;
            }
        } else {
            int i11 = this.f28200t;
            z9 = (i11 == Integer.MIN_VALUE || i11 == height) ? false : false;
            if (this.f28192l.f28221b) {
                i4 = this.f28203w.getResources().getDisplayMetrics().widthPixels;
            } else {
                i4 = this.f28192l.f28220a;
            }
        }
        int i12 = i4;
        this.f28199s = width;
        this.f28200t = height;
        int i13 = this.f28205y;
        if (i13 == -1 && (this.f28197q != -1 || z9)) {
            if (this.f28193m.f28212e) {
                return;
            }
            this.f28188h.clear();
            this.f28206z.a();
            if (j()) {
                this.f28189i.e(this.f28206z, makeMeasureSpec, makeMeasureSpec2, i12, this.f28193m.f28208a, this.f28188h);
            } else {
                this.f28189i.h(this.f28206z, makeMeasureSpec, makeMeasureSpec2, i12, this.f28193m.f28208a, this.f28188h);
            }
            this.f28188h = this.f28206z.f28257a;
            this.f28189i.p(makeMeasureSpec, makeMeasureSpec2);
            this.f28189i.X();
            b bVar = this.f28193m;
            bVar.f28209b = this.f28189i.f28254c[bVar.f28208a];
            this.f28192l.f28222c = this.f28193m.f28209b;
            return;
        }
        int min = i13 != -1 ? Math.min(i13, this.f28193m.f28208a) : this.f28193m.f28208a;
        this.f28206z.a();
        if (j()) {
            if (this.f28188h.size() > 0) {
                this.f28189i.j(this.f28188h, min);
                this.f28189i.b(this.f28206z, makeMeasureSpec, makeMeasureSpec2, i12, min, this.f28193m.f28208a, this.f28188h);
            } else {
                this.f28189i.s(childCount);
                this.f28189i.d(this.f28206z, makeMeasureSpec, makeMeasureSpec2, i12, 0, this.f28188h);
            }
        } else if (this.f28188h.size() > 0) {
            this.f28189i.j(this.f28188h, min);
            this.f28189i.b(this.f28206z, makeMeasureSpec2, makeMeasureSpec, i12, min, this.f28193m.f28208a, this.f28188h);
        } else {
            this.f28189i.s(childCount);
            this.f28189i.g(this.f28206z, makeMeasureSpec, makeMeasureSpec2, i12, 0, this.f28188h);
        }
        this.f28188h = this.f28206z.f28257a;
        this.f28189i.q(makeMeasureSpec, makeMeasureSpec2, min);
        this.f28189i.Y(min);
    }

    private void Y(int layoutDirection, int absDelta) {
        this.f28192l.f28228i = layoutDirection;
        boolean j4 = j();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z9 = !j4 && this.f28186f;
        if (layoutDirection == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.f28192l.f28224e = this.f28194n.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View z10 = z(childAt, this.f28188h.get(this.f28189i.f28254c[position]));
            this.f28192l.f28227h = 1;
            c cVar = this.f28192l;
            cVar.f28223d = position + cVar.f28227h;
            if (this.f28189i.f28254c.length <= this.f28192l.f28223d) {
                this.f28192l.f28222c = -1;
            } else {
                c cVar2 = this.f28192l;
                cVar2.f28222c = this.f28189i.f28254c[cVar2.f28223d];
            }
            if (z9) {
                this.f28192l.f28224e = this.f28194n.getDecoratedStart(z10);
                this.f28192l.f28225f = (-this.f28194n.getDecoratedStart(z10)) + this.f28194n.getStartAfterPadding();
                c cVar3 = this.f28192l;
                cVar3.f28225f = Math.max(cVar3.f28225f, 0);
            } else {
                this.f28192l.f28224e = this.f28194n.getDecoratedEnd(z10);
                this.f28192l.f28225f = this.f28194n.getDecoratedEnd(z10) - this.f28194n.getEndAfterPadding();
            }
            if ((this.f28192l.f28222c == -1 || this.f28192l.f28222c > this.f28188h.size() - 1) && this.f28192l.f28223d <= getFlexItemCount()) {
                int i4 = absDelta - this.f28192l.f28225f;
                this.f28206z.a();
                if (i4 > 0) {
                    if (j4) {
                        this.f28189i.d(this.f28206z, makeMeasureSpec, makeMeasureSpec2, i4, this.f28192l.f28223d, this.f28188h);
                    } else {
                        this.f28189i.g(this.f28206z, makeMeasureSpec, makeMeasureSpec2, i4, this.f28192l.f28223d, this.f28188h);
                    }
                    this.f28189i.q(makeMeasureSpec, makeMeasureSpec2, this.f28192l.f28223d);
                    this.f28189i.Y(this.f28192l.f28223d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.f28192l.f28224e = this.f28194n.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View x9 = x(childAt2, this.f28188h.get(this.f28189i.f28254c[position2]));
            this.f28192l.f28227h = 1;
            int i10 = this.f28189i.f28254c[position2];
            if (i10 == -1) {
                i10 = 0;
            }
            if (i10 > 0) {
                this.f28192l.f28223d = position2 - this.f28188h.get(i10 - 1).c();
            } else {
                this.f28192l.f28223d = -1;
            }
            this.f28192l.f28222c = i10 > 0 ? i10 - 1 : 0;
            if (z9) {
                this.f28192l.f28224e = this.f28194n.getDecoratedEnd(x9);
                this.f28192l.f28225f = this.f28194n.getDecoratedEnd(x9) - this.f28194n.getEndAfterPadding();
                c cVar4 = this.f28192l;
                cVar4.f28225f = Math.max(cVar4.f28225f, 0);
            } else {
                this.f28192l.f28224e = this.f28194n.getDecoratedStart(x9);
                this.f28192l.f28225f = (-this.f28194n.getDecoratedStart(x9)) + this.f28194n.getStartAfterPadding();
            }
        }
        c cVar5 = this.f28192l;
        cVar5.f28220a = absDelta - cVar5.f28225f;
    }

    private void Z(b anchorInfo, boolean fromNextLine, boolean considerInfinite) {
        if (considerInfinite) {
            R();
        } else {
            this.f28192l.f28221b = false;
        }
        if (!j() && this.f28186f) {
            this.f28192l.f28220a = anchorInfo.f28210c - getPaddingRight();
        } else {
            this.f28192l.f28220a = this.f28194n.getEndAfterPadding() - anchorInfo.f28210c;
        }
        this.f28192l.f28223d = anchorInfo.f28208a;
        this.f28192l.f28227h = 1;
        this.f28192l.f28228i = 1;
        this.f28192l.f28224e = anchorInfo.f28210c;
        this.f28192l.f28225f = Integer.MIN_VALUE;
        this.f28192l.f28222c = anchorInfo.f28209b;
        if (!fromNextLine || this.f28188h.size() <= 1 || anchorInfo.f28209b < 0 || anchorInfo.f28209b >= this.f28188h.size() - 1) {
            return;
        }
        c.l(this.f28192l);
        c.u(this.f28192l, this.f28188h.get(anchorInfo.f28209b).c());
    }

    private void a0(b anchorInfo, boolean fromPreviousLine, boolean considerInfinite) {
        if (considerInfinite) {
            R();
        } else {
            this.f28192l.f28221b = false;
        }
        if (!j() && this.f28186f) {
            this.f28192l.f28220a = (this.f28204x.getWidth() - anchorInfo.f28210c) - this.f28194n.getStartAfterPadding();
        } else {
            this.f28192l.f28220a = anchorInfo.f28210c - this.f28194n.getStartAfterPadding();
        }
        this.f28192l.f28223d = anchorInfo.f28208a;
        this.f28192l.f28227h = 1;
        this.f28192l.f28228i = -1;
        this.f28192l.f28224e = anchorInfo.f28210c;
        this.f28192l.f28225f = Integer.MIN_VALUE;
        this.f28192l.f28222c = anchorInfo.f28209b;
        if (!fromPreviousLine || anchorInfo.f28209b <= 0 || this.f28188h.size() <= anchorInfo.f28209b) {
            return;
        }
        c.m(this.f28192l);
        c.v(this.f28192l, this.f28188h.get(anchorInfo.f28209b).c());
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        u();
        View w9 = w(itemCount);
        View y9 = y(itemCount);
        if (state.getItemCount() == 0 || w9 == null || y9 == null) {
            return 0;
        }
        return Math.min(this.f28194n.getTotalSpace(), this.f28194n.getDecoratedEnd(y9) - this.f28194n.getDecoratedStart(w9));
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View w9 = w(itemCount);
        View y9 = y(itemCount);
        if (state.getItemCount() != 0 && w9 != null && y9 != null) {
            int position = getPosition(w9);
            int position2 = getPosition(y9);
            int abs = Math.abs(this.f28194n.getDecoratedEnd(y9) - this.f28194n.getDecoratedStart(w9));
            int[] iArr = this.f28189i.f28254c;
            int i4 = iArr[position];
            if (i4 != 0 && i4 != -1) {
                return Math.round((i4 * (abs / ((iArr[position2] - i4) + 1))) + (this.f28194n.getStartAfterPadding() - this.f28194n.getDecoratedStart(w9)));
            }
        }
        return 0;
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View w9 = w(itemCount);
        View y9 = y(itemCount);
        if (state.getItemCount() == 0 || w9 == null || y9 == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.f28194n.getDecoratedEnd(y9) - this.f28194n.getDecoratedStart(w9)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * state.getItemCount());
    }

    private void ensureLayoutState() {
        if (this.f28192l == null) {
            this.f28192l = new c();
        }
    }

    private int fixLayoutEndGap(int endOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int i4;
        int endAfterPadding;
        if (!j() && this.f28186f) {
            int startAfterPadding = endOffset - this.f28194n.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i4 = H(startAfterPadding, recycler, state);
        } else {
            int endAfterPadding2 = this.f28194n.getEndAfterPadding() - endOffset;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i4 = -H(-endAfterPadding2, recycler, state);
        }
        int i10 = endOffset + i4;
        if (!canOffsetChildren || (endAfterPadding = this.f28194n.getEndAfterPadding() - i10) <= 0) {
            return i4;
        }
        this.f28194n.offsetChildren(endAfterPadding);
        return endAfterPadding + i4;
    }

    private int fixLayoutStartGap(int startOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int i4;
        int startAfterPadding;
        if (!j() && this.f28186f) {
            int endAfterPadding = this.f28194n.getEndAfterPadding() - startOffset;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i4 = H(-endAfterPadding, recycler, state);
        } else {
            int startAfterPadding2 = startOffset - this.f28194n.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            i4 = -H(startAfterPadding2, recycler, state);
        }
        int i10 = startOffset + i4;
        if (!canOffsetChildren || (startAfterPadding = i10 - this.f28194n.getStartAfterPadding()) <= 0) {
            return i4;
        }
        this.f28194n.offsetChildren(-startAfterPadding);
        return i4 - startAfterPadding;
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    private static boolean isMeasurementUpToDate(int childSize, int spec, int dimension) {
        int mode = View.MeasureSpec.getMode(spec);
        int size = View.MeasureSpec.getSize(spec);
        if (dimension <= 0 || childSize == dimension) {
            if (mode == Integer.MIN_VALUE) {
                return size >= childSize;
            } else if (mode != 0) {
                return mode == 1073741824 && size == childSize;
            } else {
                return true;
            }
        }
        return false;
    }

    private boolean r(View view, int scrollingOffset) {
        return (j() || !this.f28186f) ? this.f28194n.getDecoratedStart(view) >= this.f28194n.getEnd() - scrollingOffset : this.f28194n.getDecoratedEnd(view) <= scrollingOffset;
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int startIndex, int endIndex) {
        while (endIndex >= startIndex) {
            removeAndRecycleViewAt(endIndex, recycler);
            endIndex--;
        }
    }

    private boolean s(View view, int scrollingOffset) {
        return (j() || !this.f28186f) ? this.f28194n.getDecoratedEnd(view) <= scrollingOffset : this.f28194n.getEnd() - this.f28194n.getDecoratedStart(view) <= scrollingOffset;
    }

    private boolean shouldMeasureChild(View child, int widthSpec, int heightSpec, RecyclerView.LayoutParams lp) {
        return (!child.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(child.getWidth(), widthSpec, ((ViewGroup.MarginLayoutParams) lp).width) && isMeasurementUpToDate(child.getHeight(), heightSpec, ((ViewGroup.MarginLayoutParams) lp).height)) ? false : true;
    }

    private void t() {
        this.f28188h.clear();
        this.f28193m.t();
        this.f28193m.f28211d = 0;
    }

    private void u() {
        if (this.f28194n != null) {
            return;
        }
        if (j()) {
            if (this.f28182b == 0) {
                this.f28194n = OrientationHelper.createHorizontalHelper(this);
                this.f28195o = OrientationHelper.createVerticalHelper(this);
                return;
            }
            this.f28194n = OrientationHelper.createVerticalHelper(this);
            this.f28195o = OrientationHelper.createHorizontalHelper(this);
        } else if (this.f28182b == 0) {
            this.f28194n = OrientationHelper.createVerticalHelper(this);
            this.f28195o = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.f28194n = OrientationHelper.createHorizontalHelper(this);
            this.f28195o = OrientationHelper.createVerticalHelper(this);
        }
    }

    private int v(RecyclerView.Recycler recycler, RecyclerView.State state, c layoutState) {
        if (layoutState.f28225f != Integer.MIN_VALUE) {
            if (layoutState.f28220a < 0) {
                c.q(layoutState, layoutState.f28220a);
            }
            O(recycler, layoutState);
        }
        int i4 = layoutState.f28220a;
        int i10 = layoutState.f28220a;
        int i11 = 0;
        boolean j4 = j();
        while (true) {
            if ((i10 > 0 || this.f28192l.f28221b) && layoutState.D(state, this.f28188h)) {
                f fVar = this.f28188h.get(layoutState.f28222c);
                layoutState.f28223d = fVar.f28245o;
                i11 += L(fVar, layoutState);
                if (!j4 && this.f28186f) {
                    c.d(layoutState, fVar.a() * layoutState.f28228i);
                } else {
                    c.c(layoutState, fVar.a() * layoutState.f28228i);
                }
                i10 -= fVar.a();
            }
        }
        c.i(layoutState, i11);
        if (layoutState.f28225f != Integer.MIN_VALUE) {
            c.q(layoutState, i11);
            if (layoutState.f28220a < 0) {
                c.q(layoutState, layoutState.f28220a);
            }
            O(recycler, layoutState);
        }
        return i4 - layoutState.f28220a;
    }

    private View w(int itemCount) {
        View B2 = B(0, getChildCount(), itemCount);
        if (B2 == null) {
            return null;
        }
        int i4 = this.f28189i.f28254c[getPosition(B2)];
        if (i4 == -1) {
            return null;
        }
        return x(B2, this.f28188h.get(i4));
    }

    private View x(View firstView, f firstVisibleLine) {
        boolean j4 = j();
        int i4 = firstVisibleLine.f28238h;
        for (int i10 = 1; i10 < i4; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.f28186f && !j4) {
                    if (this.f28194n.getDecoratedEnd(firstView) >= this.f28194n.getDecoratedEnd(childAt)) {
                    }
                    firstView = childAt;
                } else {
                    if (this.f28194n.getDecoratedStart(firstView) <= this.f28194n.getDecoratedStart(childAt)) {
                    }
                    firstView = childAt;
                }
            }
        }
        return firstView;
    }

    private View y(int itemCount) {
        View B2 = B(getChildCount() - 1, -1, itemCount);
        if (B2 == null) {
            return null;
        }
        return z(B2, this.f28188h.get(this.f28189i.f28254c[getPosition(B2)]));
    }

    private View z(View lastView, f lastVisibleLine) {
        boolean j4 = j();
        int childCount = (getChildCount() - lastVisibleLine.f28238h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.f28186f && !j4) {
                    if (this.f28194n.getDecoratedStart(lastView) <= this.f28194n.getDecoratedStart(childAt)) {
                    }
                    lastView = childAt;
                } else {
                    if (this.f28194n.getDecoratedEnd(lastView) >= this.f28194n.getDecoratedEnd(childAt)) {
                    }
                    lastView = childAt;
                }
            }
        }
        return lastView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int G(int position) {
        return this.f28189i.f28254c[position];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean J() {
        return this.f28186f;
    }

    @Override // com.google.android.flexbox.d
    public void a(View view, int index, int indexInFlexLine, f flexLine) {
        calculateItemDecorationsForChild(view, B);
        if (j()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            flexLine.f28235e += leftDecorationWidth;
            flexLine.f28236f += leftDecorationWidth;
            return;
        }
        int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
        flexLine.f28235e += topDecorationHeight;
        flexLine.f28236f += topDecorationHeight;
    }

    @Override // com.google.android.flexbox.d
    public int b(int widthSpec, int padding, int childDimension) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), padding, childDimension, canScrollHorizontally());
    }

    @Override // com.google.android.flexbox.d
    public View c(int index) {
        View view = this.f28202v.get(index);
        return view != null ? view : this.f28190j.getViewForPosition(index);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (this.f28182b == 0) {
            return j();
        }
        if (j()) {
            int width = getWidth();
            View view = this.f28204x;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (this.f28182b == 0) {
            return !j();
        }
        if (j()) {
            return true;
        }
        int height = getHeight();
        View view = this.f28204x;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams lp) {
        return lp instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int targetPosition) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i4 = targetPosition < getPosition(childAt) ? -1 : 1;
        if (j()) {
            return new PointF(0.0f, i4);
        }
        return new PointF(i4, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // com.google.android.flexbox.d
    public int d(int heightSpec, int padding, int childDimension) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), padding, childDimension, canScrollVertically());
    }

    @Override // com.google.android.flexbox.d
    public int e(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (j()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override // com.google.android.flexbox.d
    public void f(f flexLine) {
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View A2 = A(0, getChildCount(), true);
        if (A2 == null) {
            return -1;
        }
        return getPosition(A2);
    }

    public int findFirstVisibleItemPosition() {
        View A2 = A(0, getChildCount(), false);
        if (A2 == null) {
            return -1;
        }
        return getPosition(A2);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View A2 = A(getChildCount() - 1, -1, true);
        if (A2 == null) {
            return -1;
        }
        return getPosition(A2);
    }

    public int findLastVisibleItemPosition() {
        View A2 = A(getChildCount() - 1, -1, false);
        if (A2 == null) {
            return -1;
        }
        return getPosition(A2);
    }

    @Override // com.google.android.flexbox.d
    public View g(int index) {
        return c(index);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context c10, AttributeSet attrs) {
        return new LayoutParams(c10, attrs);
    }

    @Override // com.google.android.flexbox.d
    public int getAlignContent() {
        return 5;
    }

    @Override // com.google.android.flexbox.d
    public int getAlignItems() {
        return this.f28184d;
    }

    @Override // com.google.android.flexbox.d
    public int getFlexDirection() {
        return this.f28181a;
    }

    @Override // com.google.android.flexbox.d
    public int getFlexItemCount() {
        return this.f28191k.getItemCount();
    }

    @Override // com.google.android.flexbox.d
    @NonNull
    public List<f> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f28188h.size());
        int size = this.f28188h.size();
        for (int i4 = 0; i4 < size; i4++) {
            f fVar = this.f28188h.get(i4);
            if (fVar.c() != 0) {
                arrayList.add(fVar);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.d
    public List<f> getFlexLinesInternal() {
        return this.f28188h;
    }

    @Override // com.google.android.flexbox.d
    public int getFlexWrap() {
        return this.f28182b;
    }

    @Override // com.google.android.flexbox.d
    public int getJustifyContent() {
        return this.f28183c;
    }

    @Override // com.google.android.flexbox.d
    public int getLargestMainSize() {
        if (this.f28188h.size() == 0) {
            return 0;
        }
        int i4 = Integer.MIN_VALUE;
        int size = this.f28188h.size();
        for (int i10 = 0; i10 < size; i10++) {
            i4 = Math.max(i4, this.f28188h.get(i10).f28235e);
        }
        return i4;
    }

    @Override // com.google.android.flexbox.d
    public int getMaxLine() {
        return this.f28185e;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.f28201u;
    }

    @Override // com.google.android.flexbox.d
    public int getSumOfCrossSize() {
        int size = this.f28188h.size();
        int i4 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            i4 += this.f28188h.get(i10).f28237g;
        }
        return i4;
    }

    @Override // com.google.android.flexbox.d
    public void h(int position, View view) {
        this.f28202v.put(position, view);
    }

    @Override // com.google.android.flexbox.d
    public int i(View view, int index, int indexInFlexLine) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (j()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // com.google.android.flexbox.d
    public boolean j() {
        int i4 = this.f28181a;
        return i4 == 0 || i4 == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter oldAdapter, RecyclerView.Adapter newAdapter) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f28204x = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        if (this.f28201u) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsAdded(recyclerView, positionStart, itemCount);
        W(positionStart);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(@NonNull RecyclerView recyclerView, int from, int to, int itemCount) {
        super.onItemsMoved(recyclerView, from, to, itemCount);
        W(Math.min(from, to));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsRemoved(recyclerView, positionStart, itemCount);
        W(positionStart);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int positionStart, int itemCount, Object payload) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount, payload);
        W(positionStart);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i4;
        int i10;
        this.f28190j = recycler;
        this.f28191k = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        S();
        u();
        ensureLayoutState();
        this.f28189i.t(itemCount);
        this.f28189i.u(itemCount);
        this.f28189i.s(itemCount);
        this.f28192l.f28229j = false;
        SavedState savedState = this.f28196p;
        if (savedState != null && savedState.hasValidAnchor(itemCount)) {
            this.f28197q = this.f28196p.mAnchorPosition;
        }
        if (!this.f28193m.f28213f || this.f28197q != -1 || this.f28196p != null) {
            this.f28193m.t();
            V(state, this.f28193m);
            this.f28193m.f28213f = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.f28193m.f28212e) {
            a0(this.f28193m, false, true);
        } else {
            Z(this.f28193m, false, true);
        }
        X(itemCount);
        v(recycler, state, this.f28192l);
        if (this.f28193m.f28212e) {
            i10 = this.f28192l.f28224e;
            Z(this.f28193m, true, false);
            v(recycler, state, this.f28192l);
            i4 = this.f28192l.f28224e;
        } else {
            i4 = this.f28192l.f28224e;
            a0(this.f28193m, true, false);
            v(recycler, state, this.f28192l);
            i10 = this.f28192l.f28224e;
        }
        if (getChildCount() > 0) {
            if (this.f28193m.f28212e) {
                fixLayoutStartGap(i10 + fixLayoutEndGap(i4, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(i4 + fixLayoutStartGap(i10, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f28196p = null;
        this.f28197q = -1;
        this.f28198r = Integer.MIN_VALUE;
        this.f28205y = -1;
        this.f28193m.t();
        this.f28202v.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            this.f28196p = (SavedState) state;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.f28196p != null) {
            return new SavedState(this.f28196p);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            View childClosestToStart = getChildClosestToStart();
            savedState.mAnchorPosition = getPosition(childClosestToStart);
            savedState.mAnchorOffset = this.f28194n.getDecoratedStart(childClosestToStart) - this.f28194n.getStartAfterPadding();
        } else {
            savedState.invalidateAnchor();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (j() && this.f28182b != 0) {
            int I = I(dx);
            b.l(this.f28193m, I);
            this.f28195o.offsetChildren(-I);
            return I;
        }
        int H = H(dx, recycler, state);
        this.f28202v.clear();
        return H;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        this.f28197q = position;
        this.f28198r = Integer.MIN_VALUE;
        SavedState savedState = this.f28196p;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!j() && (this.f28182b != 0 || j())) {
            int I = I(dy);
            b.l(this.f28193m, I);
            this.f28195o.offsetChildren(-I);
            return I;
        }
        int H = H(dy, recycler, state);
        this.f28202v.clear();
        return H;
    }

    @Override // com.google.android.flexbox.d
    public void setAlignContent(int alignContent) {
        throw new UnsupportedOperationException("Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute.");
    }

    @Override // com.google.android.flexbox.d
    public void setAlignItems(int alignItems) {
        int i4 = this.f28184d;
        if (i4 != alignItems) {
            if (i4 == 4 || alignItems == 4) {
                removeAllViews();
                t();
            }
            this.f28184d = alignItems;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.d
    public void setFlexDirection(int flexDirection) {
        if (this.f28181a != flexDirection) {
            removeAllViews();
            this.f28181a = flexDirection;
            this.f28194n = null;
            this.f28195o = null;
            t();
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.d
    public void setFlexLines(List<f> flexLines) {
        this.f28188h = flexLines;
    }

    @Override // com.google.android.flexbox.d
    public void setFlexWrap(int flexWrap) {
        if (flexWrap != 2) {
            int i4 = this.f28182b;
            if (i4 != flexWrap) {
                if (i4 == 0 || flexWrap == 0) {
                    removeAllViews();
                    t();
                }
                this.f28182b = flexWrap;
                this.f28194n = null;
                this.f28195o = null;
                requestLayout();
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
    }

    @Override // com.google.android.flexbox.d
    public void setJustifyContent(int justifyContent) {
        if (this.f28183c != justifyContent) {
            this.f28183c = justifyContent;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.d
    public void setMaxLine(int maxLine) {
        if (this.f28185e != maxLine) {
            this.f28185e = maxLine;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean recycleChildrenOnDetach) {
        this.f28201u = recycleChildrenOnDetach;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(position);
        startSmoothScroll(linearSmoothScroller);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        private int mAnchorOffset;
        private int mAnchorPosition;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel source) {
                return new SavedState(source);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasValidAnchor(int itemCount) {
            int i4 = this.mAnchorPosition;
            return i4 >= 0 && i4 < itemCount;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            return "SavedState{mAnchorPosition=" + this.mAnchorPosition + ", mAnchorOffset=" + this.mAnchorOffset + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.mAnchorPosition);
            dest.writeInt(this.mAnchorOffset);
        }

        SavedState() {
        }

        private SavedState(Parcel in) {
            this.mAnchorPosition = in.readInt();
            this.mAnchorOffset = in.readInt();
        }

        private SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
        }
    }

    public FlexboxLayoutManager(Context context, int flexDirection) {
        this(context, flexDirection, 1);
    }

    public FlexboxLayoutManager(Context context, int flexDirection, int flexWrap) {
        this.f28185e = -1;
        this.f28188h = new ArrayList();
        this.f28189i = new h(this);
        this.f28193m = new b();
        this.f28197q = -1;
        this.f28198r = Integer.MIN_VALUE;
        this.f28199s = Integer.MIN_VALUE;
        this.f28200t = Integer.MIN_VALUE;
        this.f28202v = new SparseArray<>();
        this.f28205y = -1;
        this.f28206z = new h.b();
        setFlexDirection(flexDirection);
        setFlexWrap(flexWrap);
        setAlignItems(4);
        this.f28203w = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount);
        W(positionStart);
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
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

        public LayoutParams(Context c10, AttributeSet attrs) {
            super(c10, attrs);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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
            return 1;
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
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
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

        public LayoutParams(int width, int height) {
            super(width, height);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(RecyclerView.LayoutParams source) {
            super(source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(LayoutParams source) {
            super((RecyclerView.LayoutParams) source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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

        protected LayoutParams(Parcel in) {
            super(-2, -2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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

    public FlexboxLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.f28185e = -1;
        this.f28188h = new ArrayList();
        this.f28189i = new h(this);
        this.f28193m = new b();
        this.f28197q = -1;
        this.f28198r = Integer.MIN_VALUE;
        this.f28199s = Integer.MIN_VALUE;
        this.f28200t = Integer.MIN_VALUE;
        this.f28202v = new SparseArray<>();
        this.f28205y = -1;
        this.f28206z = new h.b();
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attrs, defStyleAttr, defStyleRes);
        int i4 = properties.orientation;
        if (i4 != 0) {
            if (i4 == 1) {
                if (properties.reverseLayout) {
                    setFlexDirection(3);
                } else {
                    setFlexDirection(2);
                }
            }
        } else if (properties.reverseLayout) {
            setFlexDirection(1);
        } else {
            setFlexDirection(0);
        }
        setFlexWrap(1);
        setAlignItems(4);
        this.f28203w = context;
    }
}
