package androidx.paging;

import androidx.annotation.VisibleForTesting;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import m8.h;

/* compiled from: CachedPageEventFlow.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013J\u0012\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00130\u0015J\u0016\u0010\u0016\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0002J\u0016\u0010\u0018\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0002J\u0016\u0010\u001a\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/paging/FlattenedPageEventStorage;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "mediatorStates", "Landroidx/paging/LoadStates;", "pages", "Lkotlin/collections/ArrayDeque;", "Landroidx/paging/TransformablePage;", "placeholdersAfter", "", "placeholdersBefore", "receivedFirstEvent", "", "sourceStates", "Landroidx/paging/MutableLoadStateCollection;", "add", "", "event", "Landroidx/paging/PageEvent;", "getAsEvents", "", "handleInsert", "Landroidx/paging/PageEvent$Insert;", "handleLoadStateUpdate", "Landroidx/paging/PageEvent$LoadStateUpdate;", "handlePageDrop", "Landroidx/paging/PageEvent$Drop;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting(otherwise = 2)
/* loaded from: classes.dex */
public final class FlattenedPageEventStorage<T> {
    @h
    private LoadStates mediatorStates;
    private int placeholdersAfter;
    private int placeholdersBefore;
    private boolean receivedFirstEvent;
    @g
    private final ArrayDeque<TransformablePage<T>> pages = new ArrayDeque<>();
    @g
    private final MutableLoadStateCollection sourceStates = new MutableLoadStateCollection();

    /* compiled from: CachedPageEventFlow.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.PREPEND.ordinal()] = 1;
            iArr[LoadType.APPEND.ordinal()] = 2;
            iArr[LoadType.REFRESH.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void handleInsert(PageEvent.Insert<T> insert) {
        IntProgression downTo;
        this.sourceStates.set(insert.getSourceLoadStates());
        this.mediatorStates = insert.getMediatorLoadStates();
        int i4 = WhenMappings.$EnumSwitchMapping$0[insert.getLoadType().ordinal()];
        if (i4 == 1) {
            this.placeholdersBefore = insert.getPlaceholdersBefore();
            downTo = RangesKt___RangesKt.downTo(insert.getPages().size() - 1, 0);
            Iterator<Integer> it = downTo.iterator();
            while (it.hasNext()) {
                this.pages.addFirst(insert.getPages().get(((IntIterator) it).nextInt()));
            }
        } else if (i4 == 2) {
            this.placeholdersAfter = insert.getPlaceholdersAfter();
            this.pages.addAll(insert.getPages());
        } else if (i4 != 3) {
        } else {
            this.pages.clear();
            this.placeholdersAfter = insert.getPlaceholdersAfter();
            this.placeholdersBefore = insert.getPlaceholdersBefore();
            this.pages.addAll(insert.getPages());
        }
    }

    private final void handleLoadStateUpdate(PageEvent.LoadStateUpdate<T> loadStateUpdate) {
        this.sourceStates.set(loadStateUpdate.getSource());
        this.mediatorStates = loadStateUpdate.getMediator();
    }

    private final void handlePageDrop(PageEvent.Drop<T> drop) {
        this.sourceStates.set(drop.getLoadType(), LoadState.NotLoading.Companion.getIncomplete$paging_common());
        int i4 = WhenMappings.$EnumSwitchMapping$0[drop.getLoadType().ordinal()];
        int i10 = 0;
        if (i4 == 1) {
            this.placeholdersBefore = drop.getPlaceholdersRemaining();
            int pageCount = drop.getPageCount();
            while (i10 < pageCount) {
                this.pages.removeFirst();
                i10++;
            }
        } else if (i4 == 2) {
            this.placeholdersAfter = drop.getPlaceholdersRemaining();
            int pageCount2 = drop.getPageCount();
            while (i10 < pageCount2) {
                this.pages.removeLast();
                i10++;
            }
        } else {
            throw new IllegalArgumentException("Page drop type must be prepend or append");
        }
    }

    public final void add(@g PageEvent<T> event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.receivedFirstEvent = true;
        if (event instanceof PageEvent.Insert) {
            handleInsert((PageEvent.Insert) event);
        } else if (event instanceof PageEvent.Drop) {
            handlePageDrop((PageEvent.Drop) event);
        } else if (event instanceof PageEvent.LoadStateUpdate) {
            handleLoadStateUpdate((PageEvent.LoadStateUpdate) event);
        }
    }

    @g
    public final List<PageEvent<T>> getAsEvents() {
        List<TransformablePage<T>> list;
        List<PageEvent<T>> emptyList;
        if (!this.receivedFirstEvent) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        LoadStates snapshot = this.sourceStates.snapshot();
        if (!this.pages.isEmpty()) {
            PageEvent.Insert.Companion companion = PageEvent.Insert.Companion;
            list = CollectionsKt___CollectionsKt.toList(this.pages);
            arrayList.add(companion.Refresh(list, this.placeholdersBefore, this.placeholdersAfter, snapshot, this.mediatorStates));
        } else {
            arrayList.add(new PageEvent.LoadStateUpdate(snapshot, this.mediatorStates));
        }
        return arrayList;
    }
}
