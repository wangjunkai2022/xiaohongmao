package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import androidx.paging.ViewportHint;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.protocol.s;
import io.sentry.protocol.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import m8.g;
import m8.h;

/* compiled from: PagePresenter.kt */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\b\u0000\u0018\u0000 7*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u000278B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\bJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\bH\u0002J\u001e\u0010\u001e\u001a\u00020\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010!\u001a\u00020\"H\u0002J\u0010\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020%H\u0002J\u0015\u0010&\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u001b\u001a\u00020\b¢\u0006\u0002\u0010'J\u0015\u0010(\u001a\u00028\u00002\u0006\u0010)\u001a\u00020\bH\u0016¢\u0006\u0002\u0010'J\u0006\u0010*\u001a\u00020+J\u001e\u0010,\u001a\u00020\u001d2\f\u0010-\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010!\u001a\u00020\"H\u0002J\u001c\u0010.\u001a\u00020\u001d2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u0000002\u0006\u0010!\u001a\u00020\"J\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u000002J\b\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020\b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f06H\u0002R\u0014\u0010\u0007\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u001a\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\nR\u001e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\nR\u001e\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\n¨\u00069"}, d2 = {"Landroidx/paging/PagePresenter;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/paging/NullPaddedList;", "insertEvent", "Landroidx/paging/PageEvent$Insert;", "(Landroidx/paging/PageEvent$Insert;)V", "originalPageOffsetFirst", "", "getOriginalPageOffsetFirst", "()I", "originalPageOffsetLast", "getOriginalPageOffsetLast", "pages", "", "Landroidx/paging/TransformablePage;", "<set-?>", "placeholdersAfter", "getPlaceholdersAfter", "placeholdersBefore", "getPlaceholdersBefore", f.f47745b, "getSize", "storageCount", "getStorageCount", "accessHintForPresenterIndex", "Landroidx/paging/ViewportHint$Access;", "index", "checkIndex", "", "dropPages", "drop", "Landroidx/paging/PageEvent$Drop;", com.alipay.sdk.authjs.a.f6838i, "Landroidx/paging/PagePresenter$ProcessPageEventCallback;", "dropPagesWithOffsets", "pageOffsetsToDrop", "Lkotlin/ranges/IntRange;", "get", "(I)Ljava/lang/Object;", "getFromStorage", "localIndex", "initializeHint", "Landroidx/paging/ViewportHint$Initial;", "insertPage", "insert", "processEvent", "pageEvent", "Landroidx/paging/PageEvent;", s.b.f83846c, "Landroidx/paging/ItemSnapshotList;", "toString", "", "fullCount", "", "Companion", "ProcessPageEventCallback", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PagePresenter<T> implements NullPaddedList<T> {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final PagePresenter<Object> INITIAL = new PagePresenter<>(PageEvent.Insert.Companion.getEMPTY_REFRESH_LOCAL());
    @g
    private final List<TransformablePage<T>> pages;
    private int placeholdersAfter;
    private int placeholdersBefore;
    private int storageCount;

    /* compiled from: PagePresenter.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0004\"\b\b\u0001\u0010\u0006*\u00020\u0001H\u0000¢\u0006\u0002\b\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/paging/PagePresenter$Companion;", "", "()V", "INITIAL", "Landroidx/paging/PagePresenter;", "initial", ExifInterface.GPS_DIRECTION_TRUE, "initial$paging_common", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final <T> PagePresenter<T> initial$paging_common() {
            return PagePresenter.INITIAL;
        }
    }

    /* compiled from: PagePresenter.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH&J \u0010\t\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&¨\u0006\u0013"}, d2 = {"Landroidx/paging/PagePresenter$ProcessPageEventCallback;", "", "onChanged", "", "position", "", "count", "onInserted", "onRemoved", "onStateUpdate", v.b.f83881a, "Landroidx/paging/LoadStates;", "mediator", "loadType", "Landroidx/paging/LoadType;", "fromMediator", "", "loadState", "Landroidx/paging/LoadState;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface ProcessPageEventCallback {
        void onChanged(int i4, int i10);

        void onInserted(int i4, int i10);

        void onRemoved(int i4, int i10);

        void onStateUpdate(@g LoadStates loadStates, @h LoadStates loadStates2);

        void onStateUpdate(@g LoadType loadType, boolean z9, @g LoadState loadState);
    }

    /* compiled from: PagePresenter.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.REFRESH.ordinal()] = 1;
            iArr[LoadType.PREPEND.ordinal()] = 2;
            iArr[LoadType.APPEND.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PagePresenter(@g PageEvent.Insert<T> insertEvent) {
        List<TransformablePage<T>> mutableList;
        Intrinsics.checkNotNullParameter(insertEvent, "insertEvent");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) insertEvent.getPages());
        this.pages = mutableList;
        this.storageCount = fullCount(insertEvent.getPages());
        this.placeholdersBefore = insertEvent.getPlaceholdersBefore();
        this.placeholdersAfter = insertEvent.getPlaceholdersAfter();
    }

    private final void checkIndex(int i4) {
        if (i4 < 0 || i4 >= getSize()) {
            throw new IndexOutOfBoundsException("Index: " + i4 + ", Size: " + getSize());
        }
    }

    private final void dropPages(PageEvent.Drop<T> drop, ProcessPageEventCallback processPageEventCallback) {
        int size = getSize();
        LoadType loadType = drop.getLoadType();
        LoadType loadType2 = LoadType.PREPEND;
        if (loadType == loadType2) {
            int placeholdersBefore = getPlaceholdersBefore();
            this.storageCount = getStorageCount() - dropPagesWithOffsets(new IntRange(drop.getMinPageOffset(), drop.getMaxPageOffset()));
            this.placeholdersBefore = drop.getPlaceholdersRemaining();
            int size2 = getSize() - size;
            if (size2 > 0) {
                processPageEventCallback.onInserted(0, size2);
            } else if (size2 < 0) {
                processPageEventCallback.onRemoved(0, -size2);
            }
            int max = Math.max(0, placeholdersBefore + size2);
            int placeholdersRemaining = drop.getPlaceholdersRemaining() - max;
            if (placeholdersRemaining > 0) {
                processPageEventCallback.onChanged(max, placeholdersRemaining);
            }
            processPageEventCallback.onStateUpdate(loadType2, false, LoadState.NotLoading.Companion.getIncomplete$paging_common());
            return;
        }
        int placeholdersAfter = getPlaceholdersAfter();
        this.storageCount = getStorageCount() - dropPagesWithOffsets(new IntRange(drop.getMinPageOffset(), drop.getMaxPageOffset()));
        this.placeholdersAfter = drop.getPlaceholdersRemaining();
        int size3 = getSize() - size;
        if (size3 > 0) {
            processPageEventCallback.onInserted(size, size3);
        } else if (size3 < 0) {
            processPageEventCallback.onRemoved(size + size3, -size3);
        }
        int placeholdersRemaining2 = drop.getPlaceholdersRemaining() - (placeholdersAfter - (size3 < 0 ? Math.min(placeholdersAfter, -size3) : 0));
        if (placeholdersRemaining2 > 0) {
            processPageEventCallback.onChanged(getSize() - drop.getPlaceholdersRemaining(), placeholdersRemaining2);
        }
        processPageEventCallback.onStateUpdate(LoadType.APPEND, false, LoadState.NotLoading.Companion.getIncomplete$paging_common());
    }

    private final int dropPagesWithOffsets(IntRange intRange) {
        boolean z9;
        Iterator<TransformablePage<T>> it = this.pages.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            TransformablePage<T> next = it.next();
            int[] originalPageOffsets = next.getOriginalPageOffsets();
            int length = originalPageOffsets.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z9 = false;
                    break;
                } else if (intRange.contains(originalPageOffsets[i10])) {
                    z9 = true;
                    break;
                } else {
                    i10++;
                }
            }
            if (z9) {
                i4 += next.getData().size();
                it.remove();
            }
        }
        return i4;
    }

    private final int fullCount(List<TransformablePage<T>> list) {
        Iterator<T> it = list.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            i4 += ((TransformablePage) it.next()).getData().size();
        }
        return i4;
    }

    private final int getOriginalPageOffsetFirst() {
        Object first;
        Integer minOrNull;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.pages);
        minOrNull = ArraysKt___ArraysKt.minOrNull(((TransformablePage) first).getOriginalPageOffsets());
        Intrinsics.checkNotNull(minOrNull);
        return minOrNull.intValue();
    }

    private final int getOriginalPageOffsetLast() {
        Object last;
        Integer maxOrNull;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.pages);
        maxOrNull = ArraysKt___ArraysKt.maxOrNull(((TransformablePage) last).getOriginalPageOffsets());
        Intrinsics.checkNotNull(maxOrNull);
        return maxOrNull.intValue();
    }

    private final void insertPage(PageEvent.Insert<T> insert, ProcessPageEventCallback processPageEventCallback) {
        int fullCount = fullCount(insert.getPages());
        int size = getSize();
        int i4 = WhenMappings.$EnumSwitchMapping$0[insert.getLoadType().ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                int min = Math.min(getPlaceholdersBefore(), fullCount);
                int i10 = fullCount - min;
                this.pages.addAll(0, insert.getPages());
                this.storageCount = getStorageCount() + fullCount;
                this.placeholdersBefore = insert.getPlaceholdersBefore();
                processPageEventCallback.onChanged(getPlaceholdersBefore() - min, min);
                processPageEventCallback.onInserted(0, i10);
                int size2 = (getSize() - size) - i10;
                if (size2 > 0) {
                    processPageEventCallback.onInserted(0, size2);
                } else if (size2 < 0) {
                    processPageEventCallback.onRemoved(0, -size2);
                }
            } else if (i4 == 3) {
                int min2 = Math.min(getPlaceholdersAfter(), fullCount);
                int placeholdersBefore = getPlaceholdersBefore() + getStorageCount();
                int i11 = fullCount - min2;
                List<TransformablePage<T>> list = this.pages;
                list.addAll(list.size(), insert.getPages());
                this.storageCount = getStorageCount() + fullCount;
                this.placeholdersAfter = insert.getPlaceholdersAfter();
                processPageEventCallback.onChanged(placeholdersBefore, min2);
                processPageEventCallback.onInserted(placeholdersBefore + min2, i11);
                int size3 = (getSize() - size) - i11;
                if (size3 > 0) {
                    processPageEventCallback.onInserted(getSize() - size3, size3);
                } else if (size3 < 0) {
                    processPageEventCallback.onRemoved(getSize(), -size3);
                }
            }
            processPageEventCallback.onStateUpdate(insert.getSourceLoadStates(), insert.getMediatorLoadStates());
            return;
        }
        throw new IllegalArgumentException();
    }

    @g
    public final ViewportHint.Access accessHintForPresenterIndex(int i4) {
        int lastIndex;
        int i10 = 0;
        int placeholdersBefore = i4 - getPlaceholdersBefore();
        while (placeholdersBefore >= this.pages.get(i10).getData().size()) {
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.pages);
            if (i10 >= lastIndex) {
                break;
            }
            placeholdersBefore -= this.pages.get(i10).getData().size();
            i10++;
        }
        return this.pages.get(i10).viewportHintFor(placeholdersBefore, i4 - getPlaceholdersBefore(), ((getSize() - i4) - getPlaceholdersAfter()) - 1, getOriginalPageOffsetFirst(), getOriginalPageOffsetLast());
    }

    @h
    public final T get(int i4) {
        checkIndex(i4);
        int placeholdersBefore = i4 - getPlaceholdersBefore();
        if (placeholdersBefore < 0 || placeholdersBefore >= getStorageCount()) {
            return null;
        }
        return getFromStorage(placeholdersBefore);
    }

    @Override // androidx.paging.NullPaddedList
    @g
    public T getFromStorage(int i4) {
        int size = this.pages.size();
        int i10 = 0;
        while (i10 < size) {
            int size2 = this.pages.get(i10).getData().size();
            if (size2 > i4) {
                break;
            }
            i4 -= size2;
            i10++;
        }
        return this.pages.get(i10).getData().get(i4);
    }

    @Override // androidx.paging.NullPaddedList
    public int getPlaceholdersAfter() {
        return this.placeholdersAfter;
    }

    @Override // androidx.paging.NullPaddedList
    public int getPlaceholdersBefore() {
        return this.placeholdersBefore;
    }

    @Override // androidx.paging.NullPaddedList
    public int getSize() {
        return getPlaceholdersBefore() + getStorageCount() + getPlaceholdersAfter();
    }

    @Override // androidx.paging.NullPaddedList
    public int getStorageCount() {
        return this.storageCount;
    }

    @g
    public final ViewportHint.Initial initializeHint() {
        int storageCount = getStorageCount() / 2;
        return new ViewportHint.Initial(storageCount, storageCount, getOriginalPageOffsetFirst(), getOriginalPageOffsetLast());
    }

    public final void processEvent(@g PageEvent<T> pageEvent, @g ProcessPageEventCallback callback) {
        Intrinsics.checkNotNullParameter(pageEvent, "pageEvent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (pageEvent instanceof PageEvent.Insert) {
            insertPage((PageEvent.Insert) pageEvent, callback);
        } else if (pageEvent instanceof PageEvent.Drop) {
            dropPages((PageEvent.Drop) pageEvent, callback);
        } else if (pageEvent instanceof PageEvent.LoadStateUpdate) {
            PageEvent.LoadStateUpdate loadStateUpdate = (PageEvent.LoadStateUpdate) pageEvent;
            callback.onStateUpdate(loadStateUpdate.getSource(), loadStateUpdate.getMediator());
        }
    }

    @g
    public final ItemSnapshotList<T> snapshot() {
        int placeholdersBefore = getPlaceholdersBefore();
        int placeholdersAfter = getPlaceholdersAfter();
        List<TransformablePage<T>> list = this.pages;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((TransformablePage) it.next()).getData());
        }
        return new ItemSnapshotList<>(placeholdersBefore, placeholdersAfter, arrayList);
    }

    @g
    public String toString() {
        String joinToString$default;
        int storageCount = getStorageCount();
        ArrayList arrayList = new ArrayList(storageCount);
        for (int i4 = 0; i4 < storageCount; i4++) {
            arrayList.add(getFromStorage(i4));
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null);
        return "[(" + getPlaceholdersBefore() + " placeholders), " + joinToString$default + ", (" + getPlaceholdersAfter() + " placeholders)]";
    }
}
