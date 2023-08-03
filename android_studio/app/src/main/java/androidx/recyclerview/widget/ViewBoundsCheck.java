package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
class ViewBoundsCheck {
    static final int CVE_PVE_POS = 12;
    static final int CVE_PVS_POS = 8;
    static final int CVS_PVE_POS = 4;
    static final int CVS_PVS_POS = 0;
    static final int EQ = 2;
    static final int FLAG_CVE_EQ_PVE = 8192;
    static final int FLAG_CVE_EQ_PVS = 512;
    static final int FLAG_CVE_GT_PVE = 4096;
    static final int FLAG_CVE_GT_PVS = 256;
    static final int FLAG_CVE_LT_PVE = 16384;
    static final int FLAG_CVE_LT_PVS = 1024;
    static final int FLAG_CVS_EQ_PVE = 32;
    static final int FLAG_CVS_EQ_PVS = 2;
    static final int FLAG_CVS_GT_PVE = 16;
    static final int FLAG_CVS_GT_PVS = 1;
    static final int FLAG_CVS_LT_PVE = 64;
    static final int FLAG_CVS_LT_PVS = 4;
    static final int GT = 1;
    static final int LT = 4;
    static final int MASK = 7;
    BoundFlags mBoundFlags = new BoundFlags();
    final Callback mCallback;

    /* loaded from: classes.dex */
    static class BoundFlags {
        int mBoundFlags = 0;
        int mChildEnd;
        int mChildStart;
        int mRvEnd;
        int mRvStart;

        BoundFlags() {
        }

        void addFlags(int i4) {
            this.mBoundFlags = i4 | this.mBoundFlags;
        }

        boolean boundsMatch() {
            int i4 = this.mBoundFlags;
            if ((i4 & 7) == 0 || (i4 & (compare(this.mChildStart, this.mRvStart) << 0)) != 0) {
                int i10 = this.mBoundFlags;
                if ((i10 & 112) == 0 || (i10 & (compare(this.mChildStart, this.mRvEnd) << 4)) != 0) {
                    int i11 = this.mBoundFlags;
                    if ((i11 & 1792) == 0 || (i11 & (compare(this.mChildEnd, this.mRvStart) << 8)) != 0) {
                        int i12 = this.mBoundFlags;
                        return (i12 & 28672) == 0 || (i12 & (compare(this.mChildEnd, this.mRvEnd) << 12)) != 0;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        int compare(int i4, int i10) {
            if (i4 > i10) {
                return 1;
            }
            return i4 == i10 ? 2 : 4;
        }

        void resetFlags() {
            this.mBoundFlags = 0;
        }

        void setBounds(int i4, int i10, int i11, int i12) {
            this.mRvStart = i4;
            this.mRvEnd = i10;
            this.mChildStart = i11;
            this.mChildEnd = i12;
        }
    }

    /* loaded from: classes.dex */
    interface Callback {
        View getChildAt(int i4);

        int getChildEnd(View view);

        int getChildStart(View view);

        int getParentEnd();

        int getParentStart();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ViewBounds {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewBoundsCheck(Callback callback) {
        this.mCallback = callback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findOneViewWithinBoundFlags(int i4, int i10, int i11, int i12) {
        int parentStart = this.mCallback.getParentStart();
        int parentEnd = this.mCallback.getParentEnd();
        int i13 = i10 > i4 ? 1 : -1;
        View view = null;
        while (i4 != i10) {
            View childAt = this.mCallback.getChildAt(i4);
            this.mBoundFlags.setBounds(parentStart, parentEnd, this.mCallback.getChildStart(childAt), this.mCallback.getChildEnd(childAt));
            if (i11 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(i11);
                if (this.mBoundFlags.boundsMatch()) {
                    return childAt;
                }
            }
            if (i12 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(i12);
                if (this.mBoundFlags.boundsMatch()) {
                    view = childAt;
                }
            }
            i4 += i13;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isViewWithinBoundFlags(View view, int i4) {
        this.mBoundFlags.setBounds(this.mCallback.getParentStart(), this.mCallback.getParentEnd(), this.mCallback.getChildStart(view), this.mCallback.getChildEnd(view));
        if (i4 != 0) {
            this.mBoundFlags.resetFlags();
            this.mBoundFlags.addFlags(i4);
            return this.mBoundFlags.boundsMatch();
        }
        return false;
    }
}
