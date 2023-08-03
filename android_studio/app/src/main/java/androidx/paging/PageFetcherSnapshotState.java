package androidx.paging;

import androidx.annotation.CheckResult;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import androidx.paging.PagingSource;
import androidx.paging.ViewportHint;
import com.coremedia.iso.boxes.i1;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.protocol.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.channels.m;
import kotlinx.coroutines.channels.p;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.sync.e;
import m8.g;
import m8.h;
import org.aspectj.lang.c;

/* compiled from: PageFetcherSnapshotState.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0001PB\u0011\b\u0002\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\bN\u0010OJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\nJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\nJ-\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u000f\u0010\u0010J,\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rH\u0007J\u0014\u0010\u0019\u001a\u00020\u00182\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0016J\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aJ%\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0000¢\u0006\u0004\b \u0010!R\u0014\u0010$\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R&\u0010'\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R,\u0010*\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r0)8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b*\u0010(\u001a\u0004\b+\u0010,R$\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00068\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010/R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010/R\u0016\u00104\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010/R\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010/R\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020\u0006068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u001a\u00109\u001a\b\u0012\u0004\u0012\u00020\u0006068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00108R&\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001a0:8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R$\u0010@\u001a\u00020?2\u0006\u0010-\u001a\u00020?8\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0014\u0010E\u001a\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bD\u00101R$\u0010J\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00068@@@X\u0080\u000e¢\u0006\f\u001a\u0004\bG\u00101\"\u0004\bH\u0010IR$\u0010M\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00068@@@X\u0080\u000e¢\u0006\f\u001a\u0004\bK\u00101\"\u0004\bL\u0010I¨\u0006Q"}, d2 = {"Landroidx/paging/PageFetcherSnapshotState;", "", "Key", "Value", "Landroidx/paging/LoadType;", "loadType", "", "generationId$paging_common", "(Landroidx/paging/LoadType;)I", "generationId", "Lkotlinx/coroutines/flow/i;", "consumePrependGenerationIdAsFlow", "consumeAppendGenerationIdAsFlow", "Landroidx/paging/PagingSource$LoadResult$Page;", "Landroidx/paging/PageEvent;", "toPageEvent$paging_common", "(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent;", "toPageEvent", "loadId", f.f47744a, "", "insert", "Landroidx/paging/PageEvent$Drop;", "event", "", "drop", "Landroidx/paging/ViewportHint;", i1.f10181o, "dropEventOrNull", "Landroidx/paging/ViewportHint$Access;", "viewportHint", "Landroidx/paging/PagingState;", "currentPagingState$paging_common", "(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;", "currentPagingState", "Landroidx/paging/PagingConfig;", "config", "Landroidx/paging/PagingConfig;", "", "_pages", "Ljava/util/List;", "", "pages", "getPages$paging_common", "()Ljava/util/List;", "<set-?>", "initialPageIndex", "I", "getInitialPageIndex$paging_common", "()I", "_placeholdersBefore", "_placeholdersAfter", "prependGenerationId", "appendGenerationId", "Lkotlinx/coroutines/channels/m;", "prependGenerationIdCh", "Lkotlinx/coroutines/channels/m;", "appendGenerationIdCh", "", "failedHintsByLoadType", "Ljava/util/Map;", "getFailedHintsByLoadType$paging_common", "()Ljava/util/Map;", "Landroidx/paging/MutableLoadStateCollection;", "sourceLoadStates", "Landroidx/paging/MutableLoadStateCollection;", "getSourceLoadStates$paging_common", "()Landroidx/paging/MutableLoadStateCollection;", "getStorageCount$paging_common", "storageCount", "value", "getPlaceholdersBefore$paging_common", "setPlaceholdersBefore$paging_common", "(I)V", "placeholdersBefore", "getPlaceholdersAfter$paging_common", "setPlaceholdersAfter$paging_common", "placeholdersAfter", "<init>", "(Landroidx/paging/PagingConfig;)V", "Holder", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class PageFetcherSnapshotState<Key, Value> {
    @g
    private final List<PagingSource.LoadResult.Page<Key, Value>> _pages;
    private int _placeholdersAfter;
    private int _placeholdersBefore;
    private int appendGenerationId;
    @g
    private final m<Integer> appendGenerationIdCh;
    @g
    private final PagingConfig config;
    @g
    private final Map<LoadType, ViewportHint> failedHintsByLoadType;
    private int initialPageIndex;
    @g
    private final List<PagingSource.LoadResult.Page<Key, Value>> pages;
    private int prependGenerationId;
    @g
    private final m<Integer> prependGenerationIdCh;
    @g
    private MutableLoadStateCollection sourceLoadStates;

    /* compiled from: PageFetcherSnapshotState.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0014\u0010\u0015JH\u0010\u000b\u001a\u00028\u0004\"\u0004\b\u0004\u0010\u00042-\u0010\n\u001a)\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00040\u0005H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Landroidx/paging/PageFetcherSnapshotState$Holder;", "", "Key", "Value", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "Landroidx/paging/PageFetcherSnapshotState;", "Lkotlin/ParameterName;", "name", t.b.f83859d, "block", "withLock", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/PagingConfig;", "config", "Landroidx/paging/PagingConfig;", "Lkotlinx/coroutines/sync/c;", c.f91028k, "Lkotlinx/coroutines/sync/c;", "Landroidx/paging/PageFetcherSnapshotState;", "<init>", "(Landroidx/paging/PagingConfig;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class Holder<Key, Value> {
        @g
        private final PagingConfig config;
        @g
        private final kotlinx.coroutines.sync.c lock;
        @g
        private final PageFetcherSnapshotState<Key, Value> state;

        public Holder(@g PagingConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            this.config = config;
            this.lock = e.b(false, 1, null);
            this.state = new PageFetcherSnapshotState<>(config, null);
        }

        private final <T> Object withLock$$forInline(Function1<? super PageFetcherSnapshotState<Key, Value>, ? extends T> function1, Continuation<? super T> continuation) {
            kotlinx.coroutines.sync.c cVar = this.lock;
            InlineMarker.mark(0);
            cVar.c(null, continuation);
            InlineMarker.mark(1);
            try {
                return function1.invoke(this.state);
            } finally {
                InlineMarker.finallyStart(1);
                cVar.d(null);
                InlineMarker.finallyEnd(1);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final <T> java.lang.Object withLock(@m8.g kotlin.jvm.functions.Function1<? super androidx.paging.PageFetcherSnapshotState<Key, Value>, ? extends T> r6, @m8.g kotlin.coroutines.Continuation<? super T> r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof androidx.paging.PageFetcherSnapshotState$Holder$withLock$1
                if (r0 == 0) goto L13
                r0 = r7
                androidx.paging.PageFetcherSnapshotState$Holder$withLock$1 r0 = (androidx.paging.PageFetcherSnapshotState$Holder$withLock$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.PageFetcherSnapshotState$Holder$withLock$1 r0 = new androidx.paging.PageFetcherSnapshotState$Holder$withLock$1
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L40
                if (r2 != r4) goto L38
                java.lang.Object r6 = r0.L$2
                kotlinx.coroutines.sync.c r6 = (kotlinx.coroutines.sync.c) r6
                java.lang.Object r1 = r0.L$1
                kotlin.jvm.functions.Function1 r1 = (kotlin.jvm.functions.Function1) r1
                java.lang.Object r0 = r0.L$0
                androidx.paging.PageFetcherSnapshotState$Holder r0 = (androidx.paging.PageFetcherSnapshotState.Holder) r0
                kotlin.ResultKt.throwOnFailure(r7)
                r7 = r6
                r6 = r1
                goto L57
            L38:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L40:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlinx.coroutines.sync.c r7 = access$getLock$p(r5)
                r0.L$0 = r5
                r0.L$1 = r6
                r0.L$2 = r7
                r0.label = r4
                java.lang.Object r0 = r7.c(r3, r0)
                if (r0 != r1) goto L56
                return r1
            L56:
                r0 = r5
            L57:
                androidx.paging.PageFetcherSnapshotState r0 = access$getState$p(r0)     // Catch: java.lang.Throwable -> L69
                java.lang.Object r6 = r6.invoke(r0)     // Catch: java.lang.Throwable -> L69
                kotlin.jvm.internal.InlineMarker.finallyStart(r4)
                r7.d(r3)
                kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
                return r6
            L69:
                r6 = move-exception
                kotlin.jvm.internal.InlineMarker.finallyStart(r4)
                r7.d(r3)
                kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshotState.Holder.withLock(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* compiled from: PageFetcherSnapshotState.kt */
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

    private PageFetcherSnapshotState(PagingConfig pagingConfig) {
        this.config = pagingConfig;
        ArrayList arrayList = new ArrayList();
        this._pages = arrayList;
        this.pages = arrayList;
        this.prependGenerationIdCh = p.d(-1, null, null, 6, null);
        this.appendGenerationIdCh = p.d(-1, null, null, 6, null);
        this.failedHintsByLoadType = new LinkedHashMap();
        MutableLoadStateCollection mutableLoadStateCollection = new MutableLoadStateCollection();
        mutableLoadStateCollection.set(LoadType.REFRESH, LoadState.Loading.INSTANCE);
        Unit unit = Unit.INSTANCE;
        this.sourceLoadStates = mutableLoadStateCollection;
    }

    public /* synthetic */ PageFetcherSnapshotState(PagingConfig pagingConfig, DefaultConstructorMarker defaultConstructorMarker) {
        this(pagingConfig);
    }

    @g
    public final i<Integer> consumeAppendGenerationIdAsFlow() {
        return k.l1(k.X(this.appendGenerationIdCh), new PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1(this, null));
    }

    @g
    public final i<Integer> consumePrependGenerationIdAsFlow() {
        return k.l1(k.X(this.prependGenerationIdCh), new PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1(this, null));
    }

    @g
    public final PagingState<Key, Value> currentPagingState$paging_common(@h ViewportHint.Access access) {
        List list;
        int lastIndex;
        Integer valueOf;
        int size;
        list = CollectionsKt___CollectionsKt.toList(this.pages);
        if (access == null) {
            valueOf = null;
        } else {
            int placeholdersBefore$paging_common = getPlaceholdersBefore$paging_common();
            int i4 = -getInitialPageIndex$paging_common();
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(getPages$paging_common());
            int initialPageIndex$paging_common = lastIndex - getInitialPageIndex$paging_common();
            int pageOffset = access.getPageOffset();
            if (i4 < pageOffset) {
                int i10 = i4;
                while (true) {
                    int i11 = i10 + 1;
                    if (i10 > initialPageIndex$paging_common) {
                        size = this.config.pageSize;
                    } else {
                        size = getPages$paging_common().get(i10 + getInitialPageIndex$paging_common()).getData().size();
                    }
                    placeholdersBefore$paging_common += size;
                    if (i11 >= pageOffset) {
                        break;
                    }
                    i10 = i11;
                }
            }
            int indexInPage = placeholdersBefore$paging_common + access.getIndexInPage();
            if (access.getPageOffset() < i4) {
                indexInPage -= this.config.pageSize;
            }
            valueOf = Integer.valueOf(indexInPage);
        }
        return new PagingState<>(list, valueOf, this.config, getPlaceholdersBefore$paging_common());
    }

    public final void drop(@g PageEvent.Drop<Value> event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getPageCount() <= this.pages.size()) {
            this.failedHintsByLoadType.remove(event.getLoadType());
            this.sourceLoadStates.set(event.getLoadType(), LoadState.NotLoading.Companion.getIncomplete$paging_common());
            int i4 = WhenMappings.$EnumSwitchMapping$0[event.getLoadType().ordinal()];
            if (i4 != 2) {
                if (i4 == 3) {
                    int pageCount = event.getPageCount();
                    for (int i10 = 0; i10 < pageCount; i10++) {
                        this._pages.remove(getPages$paging_common().size() - 1);
                    }
                    setPlaceholdersAfter$paging_common(event.getPlaceholdersRemaining());
                    int i11 = this.appendGenerationId + 1;
                    this.appendGenerationId = i11;
                    this.appendGenerationIdCh.mo51trySendJP2dKIU(Integer.valueOf(i11));
                    return;
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus("cannot drop ", event.getLoadType()));
            }
            int pageCount2 = event.getPageCount();
            for (int i12 = 0; i12 < pageCount2; i12++) {
                this._pages.remove(0);
            }
            this.initialPageIndex -= event.getPageCount();
            setPlaceholdersBefore$paging_common(event.getPlaceholdersRemaining());
            int i13 = this.prependGenerationId + 1;
            this.prependGenerationId = i13;
            this.prependGenerationIdCh.mo51trySendJP2dKIU(Integer.valueOf(i13));
            return;
        }
        throw new IllegalStateException(("invalid drop count. have " + getPages$paging_common().size() + " but wanted to drop " + event.getPageCount()).toString());
    }

    @h
    public final PageEvent.Drop<Value> dropEventOrNull(@g LoadType loadType, @g ViewportHint hint) {
        int lastIndex;
        int i4;
        int lastIndex2;
        int i10;
        int lastIndex3;
        int size;
        int presentedItemsAfter;
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(hint, "hint");
        PageEvent.Drop<Value> drop = null;
        if (this.config.maxSize != Integer.MAX_VALUE && this.pages.size() > 2 && getStorageCount$paging_common() > this.config.maxSize) {
            int i11 = 0;
            if (loadType != LoadType.REFRESH) {
                int i12 = 0;
                int i13 = 0;
                while (i12 < this.pages.size() && getStorageCount$paging_common() - i13 > this.config.maxSize) {
                    int[] iArr = WhenMappings.$EnumSwitchMapping$0;
                    if (iArr[loadType.ordinal()] == 2) {
                        size = this.pages.get(i12).getData().size();
                    } else {
                        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
                        lastIndex3 = CollectionsKt__CollectionsKt.getLastIndex(list);
                        size = list.get(lastIndex3 - i12).getData().size();
                    }
                    if (iArr[loadType.ordinal()] == 2) {
                        presentedItemsAfter = hint.getPresentedItemsBefore();
                    } else {
                        presentedItemsAfter = hint.getPresentedItemsAfter();
                    }
                    if ((presentedItemsAfter - i13) - size < this.config.prefetchDistance) {
                        break;
                    }
                    i13 += size;
                    i12++;
                }
                if (i12 != 0) {
                    int[] iArr2 = WhenMappings.$EnumSwitchMapping$0;
                    if (iArr2[loadType.ordinal()] == 2) {
                        i4 = -this.initialPageIndex;
                    } else {
                        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.pages);
                        i4 = (lastIndex - this.initialPageIndex) - (i12 - 1);
                    }
                    if (iArr2[loadType.ordinal()] == 2) {
                        i10 = (i12 - 1) - this.initialPageIndex;
                    } else {
                        lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(this.pages);
                        i10 = lastIndex2 - this.initialPageIndex;
                    }
                    if (this.config.enablePlaceholders) {
                        i11 = (loadType == LoadType.PREPEND ? getPlaceholdersBefore$paging_common() : getPlaceholdersAfter$paging_common()) + i13;
                    }
                    drop = new PageEvent.Drop<>(loadType, i4, i10, i11);
                }
                return drop;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("Drop LoadType must be PREPEND or APPEND, but got ", loadType).toString());
        }
        return null;
    }

    public final int generationId$paging_common(@g LoadType loadType) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return this.appendGenerationId;
                }
                throw new NoWhenBranchMatchedException();
            }
            return this.prependGenerationId;
        }
        throw new IllegalArgumentException("Cannot get loadId for loadType: REFRESH");
    }

    @g
    public final Map<LoadType, ViewportHint> getFailedHintsByLoadType$paging_common() {
        return this.failedHintsByLoadType;
    }

    public final int getInitialPageIndex$paging_common() {
        return this.initialPageIndex;
    }

    @g
    public final List<PagingSource.LoadResult.Page<Key, Value>> getPages$paging_common() {
        return this.pages;
    }

    public final int getPlaceholdersAfter$paging_common() {
        if (this.config.enablePlaceholders) {
            return this._placeholdersAfter;
        }
        return 0;
    }

    public final int getPlaceholdersBefore$paging_common() {
        if (this.config.enablePlaceholders) {
            return this._placeholdersBefore;
        }
        return 0;
    }

    @g
    public final MutableLoadStateCollection getSourceLoadStates$paging_common() {
        return this.sourceLoadStates;
    }

    public final int getStorageCount$paging_common() {
        Iterator<T> it = this.pages.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            i4 += ((PagingSource.LoadResult.Page) it.next()).getData().size();
        }
        return i4;
    }

    @CheckResult
    public final boolean insert(int i4, @g LoadType loadType, @g PagingSource.LoadResult.Page<Key, Value> page) {
        int itemsBefore;
        int itemsAfter;
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(page, "page");
        int i10 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    if (!this.pages.isEmpty()) {
                        if (i4 != this.appendGenerationId) {
                            return false;
                        }
                        this._pages.add(page);
                        if (page.getItemsAfter() == Integer.MIN_VALUE) {
                            itemsAfter = RangesKt___RangesKt.coerceAtLeast(getPlaceholdersAfter$paging_common() - page.getData().size(), 0);
                        } else {
                            itemsAfter = page.getItemsAfter();
                        }
                        setPlaceholdersAfter$paging_common(itemsAfter);
                        this.failedHintsByLoadType.remove(LoadType.APPEND);
                    } else {
                        throw new IllegalStateException("should've received an init before append".toString());
                    }
                }
            } else if (!this.pages.isEmpty()) {
                if (i4 != this.prependGenerationId) {
                    return false;
                }
                this._pages.add(0, page);
                this.initialPageIndex++;
                if (page.getItemsBefore() == Integer.MIN_VALUE) {
                    itemsBefore = RangesKt___RangesKt.coerceAtLeast(getPlaceholdersBefore$paging_common() - page.getData().size(), 0);
                } else {
                    itemsBefore = page.getItemsBefore();
                }
                setPlaceholdersBefore$paging_common(itemsBefore);
                this.failedHintsByLoadType.remove(LoadType.PREPEND);
            } else {
                throw new IllegalStateException("should've received an init before prepend".toString());
            }
        } else if (!this.pages.isEmpty()) {
            throw new IllegalStateException("cannot receive multiple init calls".toString());
        } else {
            if (i4 == 0) {
                this._pages.add(page);
                this.initialPageIndex = 0;
                setPlaceholdersAfter$paging_common(page.getItemsAfter());
                setPlaceholdersBefore$paging_common(page.getItemsBefore());
            } else {
                throw new IllegalStateException("init loadId must be the initial value, 0".toString());
            }
        }
        return true;
    }

    public final void setPlaceholdersAfter$paging_common(int i4) {
        if (i4 == Integer.MIN_VALUE) {
            i4 = 0;
        }
        this._placeholdersAfter = i4;
    }

    public final void setPlaceholdersBefore$paging_common(int i4) {
        if (i4 == Integer.MIN_VALUE) {
            i4 = 0;
        }
        this._placeholdersBefore = i4;
    }

    @g
    public final PageEvent<Value> toPageEvent$paging_common(@g PagingSource.LoadResult.Page<Key, Value> page, @g LoadType loadType) {
        List listOf;
        Intrinsics.checkNotNullParameter(page, "<this>");
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i4 = iArr[loadType.ordinal()];
        int i10 = 0;
        if (i4 != 1) {
            if (i4 == 2) {
                i10 = 0 - this.initialPageIndex;
            } else if (i4 != 3) {
                throw new NoWhenBranchMatchedException();
            } else {
                i10 = (this.pages.size() - this.initialPageIndex) - 1;
            }
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new TransformablePage(i10, page.getData()));
        int i11 = iArr[loadType.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    return PageEvent.Insert.Companion.Append(listOf, getPlaceholdersAfter$paging_common(), this.sourceLoadStates.snapshot(), null);
                }
                throw new NoWhenBranchMatchedException();
            }
            return PageEvent.Insert.Companion.Prepend(listOf, getPlaceholdersBefore$paging_common(), this.sourceLoadStates.snapshot(), null);
        }
        return PageEvent.Insert.Companion.Refresh(listOf, getPlaceholdersBefore$paging_common(), getPlaceholdersAfter$paging_common(), this.sourceLoadStates.snapshot(), null);
    }
}
