package androidx.recyclerview.widget;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DiffUtil {
    private static final Comparator<Diagonal> DIAGONAL_COMPARATOR = new Comparator<Diagonal>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(Diagonal diagonal, Diagonal diagonal2) {
            return diagonal.f572x - diagonal2.f572x;
        }
    };

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i4, int i10);

        public abstract boolean areItemsTheSame(int i4, int i10);

        @Nullable
        public Object getChangePayload(int i4, int i10) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CenteredArray {
        private final int[] mData;
        private final int mMid;

        CenteredArray(int i4) {
            int[] iArr = new int[i4];
            this.mData = iArr;
            this.mMid = iArr.length / 2;
        }

        int[] backingData() {
            return this.mData;
        }

        public void fill(int i4) {
            Arrays.fill(this.mData, i4);
        }

        int get(int i4) {
            return this.mData[i4 + this.mMid];
        }

        void set(int i4, int i10) {
            this.mData[i4 + this.mMid] = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Diagonal {
        public final int size;

        /* renamed from: x  reason: collision with root package name */
        public final int f572x;

        /* renamed from: y  reason: collision with root package name */
        public final int f573y;

        Diagonal(int i4, int i10, int i11) {
            this.f572x = i4;
            this.f573y = i10;
            this.size = i11;
        }

        int endX() {
            return this.f572x + this.size;
        }

        int endY() {
            return this.f573y + this.size;
        }
    }

    /* loaded from: classes.dex */
    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_MASK = 15;
        private static final int FLAG_MOVED = 12;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 4;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final List<Diagonal> mDiagonals;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;

        DiffResult(Callback callback, List<Diagonal> list, int[] iArr, int[] iArr2, boolean z9) {
            this.mDiagonals = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z9;
            addEdgeDiagonals();
            findMatchingItems();
        }

        private void addEdgeDiagonals() {
            Diagonal diagonal = this.mDiagonals.isEmpty() ? null : this.mDiagonals.get(0);
            if (diagonal == null || diagonal.f572x != 0 || diagonal.f573y != 0) {
                this.mDiagonals.add(0, new Diagonal(0, 0, 0));
            }
            this.mDiagonals.add(new Diagonal(this.mOldListSize, this.mNewListSize, 0));
        }

        private void findMatchingAddition(int i4) {
            int size = this.mDiagonals.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                Diagonal diagonal = this.mDiagonals.get(i11);
                while (i10 < diagonal.f573y) {
                    if (this.mNewItemStatuses[i10] == 0 && this.mCallback.areItemsTheSame(i4, i10)) {
                        int i12 = this.mCallback.areContentsTheSame(i4, i10) ? 8 : 4;
                        this.mOldItemStatuses[i4] = (i10 << 4) | i12;
                        this.mNewItemStatuses[i10] = (i4 << 4) | i12;
                        return;
                    }
                    i10++;
                }
                i10 = diagonal.endY();
            }
        }

        private void findMatchingItems() {
            for (Diagonal diagonal : this.mDiagonals) {
                for (int i4 = 0; i4 < diagonal.size; i4++) {
                    int i10 = diagonal.f572x + i4;
                    int i11 = diagonal.f573y + i4;
                    int i12 = this.mCallback.areContentsTheSame(i10, i11) ? 1 : 2;
                    this.mOldItemStatuses[i10] = (i11 << 4) | i12;
                    this.mNewItemStatuses[i11] = (i10 << 4) | i12;
                }
            }
            if (this.mDetectMoves) {
                findMoveMatches();
            }
        }

        private void findMoveMatches() {
            int i4 = 0;
            for (Diagonal diagonal : this.mDiagonals) {
                while (i4 < diagonal.f572x) {
                    if (this.mOldItemStatuses[i4] == 0) {
                        findMatchingAddition(i4);
                    }
                    i4++;
                }
                i4 = diagonal.endX();
            }
        }

        @Nullable
        private static PostponedUpdate getPostponedUpdate(Collection<PostponedUpdate> collection, int i4, boolean z9) {
            PostponedUpdate postponedUpdate;
            Iterator<PostponedUpdate> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    postponedUpdate = null;
                    break;
                }
                postponedUpdate = it.next();
                if (postponedUpdate.posInOwnerList == i4 && postponedUpdate.removal == z9) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                PostponedUpdate next = it.next();
                if (z9) {
                    next.currentPos--;
                } else {
                    next.currentPos++;
                }
            }
            return postponedUpdate;
        }

        public int convertNewPositionToOld(@IntRange(from = 0) int i4) {
            if (i4 >= 0 && i4 < this.mNewListSize) {
                int i10 = this.mNewItemStatuses[i4];
                if ((i10 & 15) == 0) {
                    return -1;
                }
                return i10 >> 4;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i4 + ", new list size = " + this.mNewListSize);
        }

        public int convertOldPositionToNew(@IntRange(from = 0) int i4) {
            if (i4 >= 0 && i4 < this.mOldListSize) {
                int i10 = this.mOldItemStatuses[i4];
                if ((i10 & 15) == 0) {
                    return -1;
                }
                return i10 >> 4;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i4 + ", old list size = " + this.mOldListSize);
        }

        public void dispatchUpdatesTo(@NonNull RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            int i4;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            int i10 = this.mOldListSize;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i11 = this.mOldListSize;
            int i12 = this.mNewListSize;
            for (int size = this.mDiagonals.size() - 1; size >= 0; size--) {
                Diagonal diagonal = this.mDiagonals.get(size);
                int endX = diagonal.endX();
                int endY = diagonal.endY();
                while (true) {
                    if (i11 <= endX) {
                        break;
                    }
                    i11--;
                    int i13 = this.mOldItemStatuses[i11];
                    if ((i13 & 12) != 0) {
                        int i14 = i13 >> 4;
                        PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, i14, false);
                        if (postponedUpdate != null) {
                            int i15 = (i10 - postponedUpdate.currentPos) - 1;
                            batchingListUpdateCallback.onMoved(i11, i15);
                            if ((i13 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i15, 1, this.mCallback.getChangePayload(i11, i14));
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(i11, (i10 - i11) - 1, true));
                        }
                    } else {
                        batchingListUpdateCallback.onRemoved(i11, 1);
                        i10--;
                    }
                }
                while (i12 > endY) {
                    i12--;
                    int i16 = this.mNewItemStatuses[i12];
                    if ((i16 & 12) != 0) {
                        int i17 = i16 >> 4;
                        PostponedUpdate postponedUpdate2 = getPostponedUpdate(arrayDeque, i17, true);
                        if (postponedUpdate2 == null) {
                            arrayDeque.add(new PostponedUpdate(i12, i10 - i11, false));
                        } else {
                            batchingListUpdateCallback.onMoved((i10 - postponedUpdate2.currentPos) - 1, i11);
                            if ((i16 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i11, 1, this.mCallback.getChangePayload(i17, i12));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.onInserted(i11, 1);
                        i10++;
                    }
                }
                int i18 = diagonal.f572x;
                int i19 = diagonal.f573y;
                for (i4 = 0; i4 < diagonal.size; i4++) {
                    if ((this.mOldItemStatuses[i18] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i18, 1, this.mCallback.getChangePayload(i18, i19));
                    }
                    i18++;
                    i19++;
                }
                i11 = diagonal.f572x;
                i12 = diagonal.f573y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(@NonNull T t9, @NonNull T t10);

        public abstract boolean areItemsTheSame(@NonNull T t9, @NonNull T t10);

        @Nullable
        public Object getChangePayload(@NonNull T t9, @NonNull T t10) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        PostponedUpdate(int i4, int i10, boolean z9) {
            this.posInOwnerList = i4;
            this.currentPos = i10;
            this.removal = z9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        int newSize() {
            return this.newListEnd - this.newListStart;
        }

        int oldSize() {
            return this.oldListEnd - this.oldListStart;
        }

        public Range(int i4, int i10, int i11, int i12) {
            this.oldListStart = i4;
            this.oldListEnd = i10;
            this.newListStart = i11;
            this.newListEnd = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        Snake() {
        }

        int diagonalSize() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }

        boolean hasAdditionOrRemoval() {
            return this.endY - this.startY != this.endX - this.startX;
        }

        boolean isAddition() {
            return this.endY - this.startY > this.endX - this.startX;
        }

        @NonNull
        Diagonal toDiagonal() {
            if (hasAdditionOrRemoval()) {
                if (this.reverse) {
                    return new Diagonal(this.startX, this.startY, diagonalSize());
                }
                if (isAddition()) {
                    return new Diagonal(this.startX, this.startY + 1, diagonalSize());
                }
                return new Diagonal(this.startX + 1, this.startY, diagonalSize());
            }
            int i4 = this.startX;
            return new Diagonal(i4, this.startY, this.endX - i4);
        }
    }

    private DiffUtil() {
    }

    @Nullable
    private static Snake backward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i4) {
        int i10;
        int i11;
        int i12;
        boolean z9 = (range.oldSize() - range.newSize()) % 2 == 0;
        int oldSize = range.oldSize() - range.newSize();
        int i13 = -i4;
        for (int i14 = i13; i14 <= i4; i14 += 2) {
            if (i14 != i13 && (i14 == i4 || centeredArray2.get(i14 + 1) >= centeredArray2.get(i14 - 1))) {
                i10 = centeredArray2.get(i14 - 1);
                i11 = i10 - 1;
            } else {
                i10 = centeredArray2.get(i14 + 1);
                i11 = i10;
            }
            int i15 = range.newListEnd - ((range.oldListEnd - i11) - i14);
            int i16 = (i4 == 0 || i11 != i10) ? i15 : i15 + 1;
            while (i11 > range.oldListStart && i15 > range.newListStart && callback.areItemsTheSame(i11 - 1, i15 - 1)) {
                i11--;
                i15--;
            }
            centeredArray2.set(i14, i11);
            if (z9 && (i12 = oldSize - i14) >= i13 && i12 <= i4 && centeredArray.get(i12) >= i11) {
                Snake snake = new Snake();
                snake.startX = i11;
                snake.startY = i15;
                snake.endX = i10;
                snake.endY = i16;
                snake.reverse = true;
                return snake;
            }
        }
        return null;
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback) {
        return calculateDiff(callback, true);
    }

    @Nullable
    private static Snake forward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i4) {
        int i10;
        int i11;
        int i12;
        boolean z9 = Math.abs(range.oldSize() - range.newSize()) % 2 == 1;
        int oldSize = range.oldSize() - range.newSize();
        int i13 = -i4;
        for (int i14 = i13; i14 <= i4; i14 += 2) {
            if (i14 != i13 && (i14 == i4 || centeredArray.get(i14 + 1) <= centeredArray.get(i14 - 1))) {
                i10 = centeredArray.get(i14 - 1);
                i11 = i10 + 1;
            } else {
                i10 = centeredArray.get(i14 + 1);
                i11 = i10;
            }
            int i15 = (range.newListStart + (i11 - range.oldListStart)) - i14;
            int i16 = (i4 == 0 || i11 != i10) ? i15 : i15 - 1;
            while (i11 < range.oldListEnd && i15 < range.newListEnd && callback.areItemsTheSame(i11, i15)) {
                i11++;
                i15++;
            }
            centeredArray.set(i14, i11);
            if (z9 && (i12 = oldSize - i14) >= i13 + 1 && i12 <= i4 - 1 && centeredArray2.get(i12) <= i11) {
                Snake snake = new Snake();
                snake.startX = i10;
                snake.startY = i16;
                snake.endX = i11;
                snake.endY = i15;
                snake.reverse = false;
                return snake;
            }
        }
        return null;
    }

    @Nullable
    private static Snake midPoint(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2) {
        if (range.oldSize() >= 1 && range.newSize() >= 1) {
            int oldSize = ((range.oldSize() + range.newSize()) + 1) / 2;
            centeredArray.set(1, range.oldListStart);
            centeredArray2.set(1, range.oldListEnd);
            for (int i4 = 0; i4 < oldSize; i4++) {
                Snake forward = forward(range, callback, centeredArray, centeredArray2, i4);
                if (forward != null) {
                    return forward;
                }
                Snake backward = backward(range, callback, centeredArray, centeredArray2, i4);
                if (backward != null) {
                    return backward;
                }
            }
        }
        return null;
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback, boolean z9) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int i4 = ((((oldListSize + newListSize) + 1) / 2) * 2) + 1;
        CenteredArray centeredArray = new CenteredArray(i4);
        CenteredArray centeredArray2 = new CenteredArray(i4);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake midPoint = midPoint(range, callback, centeredArray, centeredArray2);
            if (midPoint != null) {
                if (midPoint.diagonalSize() > 0) {
                    arrayList.add(midPoint.toDiagonal());
                }
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                range2.oldListEnd = midPoint.startX;
                range2.newListEnd = midPoint.startY;
                arrayList2.add(range2);
                range.oldListEnd = range.oldListEnd;
                range.newListEnd = range.newListEnd;
                range.oldListStart = midPoint.endX;
                range.newListStart = midPoint.endY;
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffResult(callback, arrayList, centeredArray.backingData(), centeredArray2.backingData(), z9);
    }
}
