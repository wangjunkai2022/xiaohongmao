package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AdapterHelper implements OpReorderer.Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<UpdateOp> mPendingUpdates;
    final ArrayList<UpdateOp> mPostponedList;
    private Pools.Pool<UpdateOp> mUpdateOpPool;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Callback {
        RecyclerView.ViewHolder findViewHolder(int i4);

        void markViewHoldersUpdated(int i4, int i10, Object obj);

        void offsetPositionsForAdd(int i4, int i10);

        void offsetPositionsForMove(int i4, int i10);

        void offsetPositionsForRemovingInvisible(int i4, int i10);

        void offsetPositionsForRemovingLaidOutOrNewView(int i4, int i10);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class UpdateOp {
        static final int ADD = 1;
        static final int MOVE = 8;
        static final int POOL_SIZE = 30;
        static final int REMOVE = 2;
        static final int UPDATE = 4;
        int cmd;
        int itemCount;
        Object payload;
        int positionStart;

        UpdateOp(int i4, int i10, int i11, Object obj) {
            this.cmd = i4;
            this.positionStart = i10;
            this.itemCount = i11;
            this.payload = obj;
        }

        String cmdToString() {
            int i4 = this.cmd;
            return i4 != 1 ? i4 != 2 ? i4 != 4 ? i4 != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof UpdateOp) {
                UpdateOp updateOp = (UpdateOp) obj;
                int i4 = this.cmd;
                if (i4 != updateOp.cmd) {
                    return false;
                }
                if (i4 == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                    return true;
                }
                if (this.itemCount == updateOp.itemCount && this.positionStart == updateOp.positionStart) {
                    Object obj2 = this.payload;
                    if (obj2 != null) {
                        if (!obj2.equals(updateOp.payload)) {
                            return false;
                        }
                    } else if (updateOp.payload != null) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterHelper(Callback callback) {
        this(callback, false);
    }

    private void applyAdd(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyMove(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyRemove(UpdateOp updateOp) {
        boolean z9;
        char c10;
        int i4 = updateOp.positionStart;
        int i10 = updateOp.itemCount + i4;
        char c11 = 65535;
        int i11 = i4;
        int i12 = 0;
        while (i11 < i10) {
            if (this.mCallback.findViewHolder(i11) != null || canFindInPreLayout(i11)) {
                if (c11 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, i4, i12, null));
                    z9 = true;
                } else {
                    z9 = false;
                }
                c10 = 1;
            } else {
                if (c11 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, i4, i12, null));
                    z9 = true;
                } else {
                    z9 = false;
                }
                c10 = 0;
            }
            if (z9) {
                i11 -= i12;
                i10 -= i12;
                i12 = 1;
            } else {
                i12++;
            }
            i11++;
            c11 = c10;
        }
        if (i12 != updateOp.itemCount) {
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(2, i4, i12, null);
        }
        if (c11 == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private void applyUpdate(UpdateOp updateOp) {
        int i4 = updateOp.positionStart;
        int i10 = updateOp.itemCount + i4;
        int i11 = i4;
        char c10 = 65535;
        int i12 = 0;
        while (i4 < i10) {
            if (this.mCallback.findViewHolder(i4) != null || canFindInPreLayout(i4)) {
                if (c10 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, i11, i12, updateOp.payload));
                    i11 = i4;
                    i12 = 0;
                }
                c10 = 1;
            } else {
                if (c10 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, i11, i12, updateOp.payload));
                    i11 = i4;
                    i12 = 0;
                }
                c10 = 0;
            }
            i12++;
            i4++;
        }
        if (i12 != updateOp.itemCount) {
            Object obj = updateOp.payload;
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(4, i11, i12, obj);
        }
        if (c10 == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private boolean canFindInPreLayout(int i4) {
        int size = this.mPostponedList.size();
        for (int i10 = 0; i10 < size; i10++) {
            UpdateOp updateOp = this.mPostponedList.get(i10);
            int i11 = updateOp.cmd;
            if (i11 == 8) {
                if (findPositionOffset(updateOp.itemCount, i10 + 1) == i4) {
                    return true;
                }
            } else if (i11 == 1) {
                int i12 = updateOp.positionStart;
                int i13 = updateOp.itemCount + i12;
                while (i12 < i13) {
                    if (findPositionOffset(i12, i10 + 1) == i4) {
                        return true;
                    }
                    i12++;
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void dispatchAndUpdateViewHolders(UpdateOp updateOp) {
        int i4;
        int i10 = updateOp.cmd;
        if (i10 != 1 && i10 != 8) {
            int updatePositionWithPostponed = updatePositionWithPostponed(updateOp.positionStart, i10);
            int i11 = updateOp.positionStart;
            int i12 = updateOp.cmd;
            if (i12 == 2) {
                i4 = 0;
            } else if (i12 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + updateOp);
            } else {
                i4 = 1;
            }
            int i13 = 1;
            for (int i14 = 1; i14 < updateOp.itemCount; i14++) {
                int updatePositionWithPostponed2 = updatePositionWithPostponed(updateOp.positionStart + (i4 * i14), updateOp.cmd);
                int i15 = updateOp.cmd;
                if (i15 == 2 ? updatePositionWithPostponed2 == updatePositionWithPostponed : i15 == 4 && updatePositionWithPostponed2 == updatePositionWithPostponed + 1) {
                    i13++;
                } else {
                    UpdateOp obtainUpdateOp = obtainUpdateOp(i15, updatePositionWithPostponed, i13, updateOp.payload);
                    dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp, i11);
                    recycleUpdateOp(obtainUpdateOp);
                    if (updateOp.cmd == 4) {
                        i11 += i13;
                    }
                    updatePositionWithPostponed = updatePositionWithPostponed2;
                    i13 = 1;
                }
            }
            Object obj = updateOp.payload;
            recycleUpdateOp(updateOp);
            if (i13 > 0) {
                UpdateOp obtainUpdateOp2 = obtainUpdateOp(updateOp.cmd, updatePositionWithPostponed, i13, obj);
                dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i11);
                recycleUpdateOp(obtainUpdateOp2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }

    private void postponeAndUpdateViewHolders(UpdateOp updateOp) {
        this.mPostponedList.add(updateOp);
        int i4 = updateOp.cmd;
        if (i4 == 1) {
            this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
        } else if (i4 == 2) {
            this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(updateOp.positionStart, updateOp.itemCount);
        } else if (i4 == 4) {
            this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
        } else if (i4 == 8) {
            this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + updateOp);
        }
    }

    private int updatePositionWithPostponed(int i4, int i10) {
        int i11;
        int i12;
        for (int size = this.mPostponedList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = this.mPostponedList.get(size);
            int i13 = updateOp.cmd;
            if (i13 == 8) {
                int i14 = updateOp.positionStart;
                int i15 = updateOp.itemCount;
                if (i14 < i15) {
                    i12 = i14;
                    i11 = i15;
                } else {
                    i11 = i14;
                    i12 = i15;
                }
                if (i4 < i12 || i4 > i11) {
                    if (i4 < i14) {
                        if (i10 == 1) {
                            updateOp.positionStart = i14 + 1;
                            updateOp.itemCount = i15 + 1;
                        } else if (i10 == 2) {
                            updateOp.positionStart = i14 - 1;
                            updateOp.itemCount = i15 - 1;
                        }
                    }
                } else if (i12 == i14) {
                    if (i10 == 1) {
                        updateOp.itemCount = i15 + 1;
                    } else if (i10 == 2) {
                        updateOp.itemCount = i15 - 1;
                    }
                    i4++;
                } else {
                    if (i10 == 1) {
                        updateOp.positionStart = i14 + 1;
                    } else if (i10 == 2) {
                        updateOp.positionStart = i14 - 1;
                    }
                    i4--;
                }
            } else {
                int i16 = updateOp.positionStart;
                if (i16 <= i4) {
                    if (i13 == 1) {
                        i4 -= updateOp.itemCount;
                    } else if (i13 == 2) {
                        i4 += updateOp.itemCount;
                    }
                } else if (i10 == 1) {
                    updateOp.positionStart = i16 + 1;
                } else if (i10 == 2) {
                    updateOp.positionStart = i16 - 1;
                }
            }
        }
        for (int size2 = this.mPostponedList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = this.mPostponedList.get(size2);
            if (updateOp2.cmd == 8) {
                int i17 = updateOp2.itemCount;
                if (i17 == updateOp2.positionStart || i17 < 0) {
                    this.mPostponedList.remove(size2);
                    recycleUpdateOp(updateOp2);
                }
            } else if (updateOp2.itemCount <= 0) {
                this.mPostponedList.remove(size2);
                recycleUpdateOp(updateOp2);
            }
        }
        return i4;
    }

    AdapterHelper addUpdateOp(UpdateOp... updateOpArr) {
        Collections.addAll(this.mPendingUpdates, updateOpArr);
        return this;
    }

    public int applyPendingUpdatesToPosition(int i4) {
        int size = this.mPendingUpdates.size();
        for (int i10 = 0; i10 < size; i10++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i10);
            int i11 = updateOp.cmd;
            if (i11 != 1) {
                if (i11 == 2) {
                    int i12 = updateOp.positionStart;
                    if (i12 <= i4) {
                        int i13 = updateOp.itemCount;
                        if (i12 + i13 > i4) {
                            return -1;
                        }
                        i4 -= i13;
                    } else {
                        continue;
                    }
                } else if (i11 == 8) {
                    int i14 = updateOp.positionStart;
                    if (i14 == i4) {
                        i4 = updateOp.itemCount;
                    } else {
                        if (i14 < i4) {
                            i4--;
                        }
                        if (updateOp.itemCount <= i4) {
                            i4++;
                        }
                    }
                }
            } else if (updateOp.positionStart <= i4) {
                i4 += updateOp.itemCount;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i4));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        for (int i4 = 0; i4 < size; i4++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i4);
            int i10 = updateOp.cmd;
            if (i10 == 1) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
            } else if (i10 == 2) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForRemovingInvisible(updateOp.positionStart, updateOp.itemCount);
            } else if (i10 == 4) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
            } else if (i10 == 8) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    void dispatchFirstPassAndUpdateViewHolders(UpdateOp updateOp, int i4) {
        this.mCallback.onDispatchFirstPass(updateOp);
        int i10 = updateOp.cmd;
        if (i10 == 2) {
            this.mCallback.offsetPositionsForRemovingInvisible(i4, updateOp.itemCount);
        } else if (i10 == 4) {
            this.mCallback.markViewHoldersUpdated(i4, updateOp.itemCount, updateOp.payload);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int findPositionOffset(int i4) {
        return findPositionOffset(i4, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasAnyUpdateTypes(int i4) {
        return (i4 & this.mExistingUpdateTypes) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasUpdates() {
        return (this.mPostponedList.isEmpty() || this.mPendingUpdates.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int i4, int i10, int i11, Object obj) {
        UpdateOp acquire = this.mUpdateOpPool.acquire();
        if (acquire == null) {
            return new UpdateOp(i4, i10, i11, obj);
        }
        acquire.cmd = i4;
        acquire.positionStart = i10;
        acquire.itemCount = i11;
        acquire.payload = obj;
        return acquire;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeChanged(int i4, int i10, Object obj) {
        if (i10 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(4, i4, i10, obj));
        this.mExistingUpdateTypes |= 4;
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeInserted(int i4, int i10) {
        if (i10 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(1, i4, i10, null));
        this.mExistingUpdateTypes |= 1;
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeMoved(int i4, int i10, int i11) {
        if (i4 == i10) {
            return false;
        }
        if (i11 == 1) {
            this.mPendingUpdates.add(obtainUpdateOp(8, i4, i10, null));
            this.mExistingUpdateTypes |= 8;
            return this.mPendingUpdates.size() == 1;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeRemoved(int i4, int i10) {
        if (i10 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(2, i4, i10, null));
        this.mExistingUpdateTypes |= 2;
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int i4 = 0; i4 < size; i4++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i4);
            int i10 = updateOp.cmd;
            if (i10 == 1) {
                applyAdd(updateOp);
            } else if (i10 == 2) {
                applyRemove(updateOp);
            } else if (i10 == 4) {
                applyUpdate(updateOp);
            } else if (i10 == 8) {
                applyMove(updateOp);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp updateOp) {
        if (this.mDisableRecycler) {
            return;
        }
        updateOp.payload = null;
        this.mUpdateOpPool.release(updateOp);
    }

    void recycleUpdateOpsAndClearList(List<UpdateOp> list) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            recycleUpdateOp(list.get(i4));
        }
        list.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    AdapterHelper(Callback callback, boolean z9) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = callback;
        this.mDisableRecycler = z9;
        this.mOpReorderer = new OpReorderer(this);
    }

    int findPositionOffset(int i4, int i10) {
        int size = this.mPostponedList.size();
        while (i10 < size) {
            UpdateOp updateOp = this.mPostponedList.get(i10);
            int i11 = updateOp.cmd;
            if (i11 == 8) {
                int i12 = updateOp.positionStart;
                if (i12 == i4) {
                    i4 = updateOp.itemCount;
                } else {
                    if (i12 < i4) {
                        i4--;
                    }
                    if (updateOp.itemCount <= i4) {
                        i4++;
                    }
                }
            } else {
                int i13 = updateOp.positionStart;
                if (i13 > i4) {
                    continue;
                } else if (i11 == 2) {
                    int i14 = updateOp.itemCount;
                    if (i4 < i13 + i14) {
                        return -1;
                    }
                    i4 -= i14;
                } else if (i11 == 1) {
                    i4 += updateOp.itemCount;
                }
            }
            i10++;
        }
        return i4;
    }
}
