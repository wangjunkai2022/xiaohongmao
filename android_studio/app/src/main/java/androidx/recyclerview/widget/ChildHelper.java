package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "ChildrenHelper";
    final Callback mCallback;
    final Bucket mBucket = new Bucket();
    final List<View> mHiddenViews = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket mNext;

        Bucket() {
        }

        private void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        void clear(int i4) {
            if (i4 >= 64) {
                Bucket bucket = this.mNext;
                if (bucket != null) {
                    bucket.clear(i4 - 64);
                    return;
                }
                return;
            }
            this.mData &= ~(1 << i4);
        }

        int countOnesBefore(int i4) {
            Bucket bucket = this.mNext;
            if (bucket == null) {
                if (i4 >= 64) {
                    return Long.bitCount(this.mData);
                }
                return Long.bitCount(this.mData & ((1 << i4) - 1));
            } else if (i4 < 64) {
                return Long.bitCount(this.mData & ((1 << i4) - 1));
            } else {
                return bucket.countOnesBefore(i4 - 64) + Long.bitCount(this.mData);
            }
        }

        boolean get(int i4) {
            if (i4 < 64) {
                return (this.mData & (1 << i4)) != 0;
            }
            ensureNext();
            return this.mNext.get(i4 - 64);
        }

        void insert(int i4, boolean z9) {
            if (i4 >= 64) {
                ensureNext();
                this.mNext.insert(i4 - 64, z9);
                return;
            }
            long j4 = this.mData;
            boolean z10 = (Long.MIN_VALUE & j4) != 0;
            long j10 = (1 << i4) - 1;
            this.mData = ((j4 & (~j10)) << 1) | (j4 & j10);
            if (z9) {
                set(i4);
            } else {
                clear(i4);
            }
            if (z10 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z10);
            }
        }

        boolean remove(int i4) {
            if (i4 >= 64) {
                ensureNext();
                return this.mNext.remove(i4 - 64);
            }
            long j4 = 1 << i4;
            long j10 = this.mData;
            boolean z9 = (j10 & j4) != 0;
            long j11 = j10 & (~j4);
            this.mData = j11;
            long j12 = j4 - 1;
            this.mData = (j11 & j12) | Long.rotateRight((~j12) & j11, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z9;
        }

        void reset() {
            this.mData = 0L;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.reset();
            }
        }

        void set(int i4) {
            if (i4 >= 64) {
                ensureNext();
                this.mNext.set(i4 - 64);
                return;
            }
            this.mData |= 1 << i4;
        }

        public String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Callback {
        void addView(View view, int i4);

        void attachViewToParent(View view, int i4, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int i4);

        View getChildAt(int i4);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    private int getOffset(int i4) {
        if (i4 < 0) {
            return -1;
        }
        int childCount = this.mCallback.getChildCount();
        int i10 = i4;
        while (i10 < childCount) {
            int countOnesBefore = i4 - (i10 - this.mBucket.countOnesBefore(i10));
            if (countOnesBefore == 0) {
                while (this.mBucket.get(i10)) {
                    i10++;
                }
                return i10;
            }
            i10 += countOnesBefore;
        }
        return -1;
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (this.mHiddenViews.remove(view)) {
            this.mCallback.onLeftHiddenState(view);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addView(View view, boolean z9) {
        addView(view, -1, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachViewToParent(View view, int i4, ViewGroup.LayoutParams layoutParams, boolean z9) {
        int offset;
        if (i4 < 0) {
            offset = this.mCallback.getChildCount();
        } else {
            offset = getOffset(i4);
        }
        this.mBucket.insert(offset, z9);
        if (z9) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, offset, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detachViewFromParent(int i4) {
        int offset = getOffset(i4);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findHiddenNonRemovedView(int i4) {
        int size = this.mHiddenViews.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = this.mHiddenViews.get(i10);
            RecyclerView.ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (childViewHolder.getLayoutPosition() == i4 && !childViewHolder.isInvalid() && !childViewHolder.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getChildAt(int i4) {
        return this.mCallback.getChildAt(getOffset(i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getUnfilteredChildAt(int i4) {
        return this.mCallback.getChildAt(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild >= 0) {
            this.mBucket.set(indexOfChild);
            hideViewInternal(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int indexOfChild(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild == -1 || this.mBucket.get(indexOfChild)) {
            return -1;
        }
        return indexOfChild - this.mBucket.countOnesBefore(indexOfChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeView(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild < 0) {
            return;
        }
        if (this.mBucket.remove(indexOfChild)) {
            unhideViewInternal(view);
        }
        this.mCallback.removeViewAt(indexOfChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeViewAt(int i4) {
        int offset = getOffset(i4);
        View childAt = this.mCallback.getChildAt(offset);
        if (childAt == null) {
            return;
        }
        if (this.mBucket.remove(offset)) {
            unhideViewInternal(childAt);
        }
        this.mCallback.removeViewAt(offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeViewIfHidden(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild == -1) {
            unhideViewInternal(view);
            return true;
        } else if (this.mBucket.get(indexOfChild)) {
            this.mBucket.remove(indexOfChild);
            unhideViewInternal(view);
            this.mCallback.removeViewAt(indexOfChild);
            return true;
        } else {
            return false;
        }
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unhide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (this.mBucket.get(indexOfChild)) {
                this.mBucket.clear(indexOfChild);
                unhideViewInternal(view);
                return;
            }
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addView(View view, int i4, boolean z9) {
        int offset;
        if (i4 < 0) {
            offset = this.mCallback.getChildCount();
        } else {
            offset = getOffset(i4);
        }
        this.mBucket.insert(offset, z9);
        if (z9) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, offset);
    }
}
