package androidx.paging;

import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagePresenter;
import com.google.android.gms.common.internal.x;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.protocol.s;
import io.sentry.protocol.v;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.flow.z;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.n0;
import m8.g;
import m8.h;

/* compiled from: PagingDataDiffer.kt */
@Metadata(bv = {}, d1 = {"\u0000¡\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n*\u0001@\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0019\u0012\u0006\u0010)\u001a\u00020(\u0012\b\b\u0002\u0010,\u001a\u00020+¢\u0006\u0004\bP\u0010QJ!\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0000¢\u0006\u0004\b\u0007\u0010\bJG\u0010\u0011\u001a\u0004\u0018\u00010\r2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fH¦@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0014\u001a\u00020\u0013H\u0016J!\u0010\u0017\u001a\u00020\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u001c\u0010\u001a\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\u0019\u001a\u00020\rH\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\u0019\u001a\u00020\r¢\u0006\u0004\b\u001c\u0010\u001bJ\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dJ\u0006\u0010\u001f\u001a\u00020\u0006J\u0006\u0010 \u001a\u00020\u0006J\u0014\u0010\"\u001a\u00020\u00062\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fJ\u0014\u0010#\u001a\u00020\u00062\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fJ\u001a\u0010&\u001a\u00020\u00062\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00060$J\u001a\u0010'\u001a\u00020\u00062\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00060$R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u001c\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00102\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R \u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000f078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010=\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010?R\u001a\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u001d\u0010D\u001a\b\u0012\u0004\u0012\u00020%0C8\u0006¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR\u001a\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00060H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u0011\u0010M\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\bK\u0010LR\u0017\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00060C8F¢\u0006\u0006\u001a\u0004\bN\u0010G\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006R"}, d2 = {"Landroidx/paging/PagingDataDiffer;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/LoadStates;", v.b.f83881a, "mediator", "", "dispatchLoadStates$paging_common", "(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V", "dispatchLoadStates", "Landroidx/paging/NullPaddedList;", "previousList", "newList", "", "lastAccessedIndex", "Lkotlin/Function0;", "onListPresentable", "presentNewList", "(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "postEvents", "Landroidx/paging/PagingData;", "pagingData", "collectFrom", "(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "index", "get", "(I)Ljava/lang/Object;", "peek", "Landroidx/paging/ItemSnapshotList;", s.b.f83846c, "retry", "refresh", x.a.f29212a, "addOnPagesUpdatedListener", "removeOnPagesUpdatedListener", "Lkotlin/Function1;", "Landroidx/paging/CombinedLoadStates;", "addLoadStateListener", "removeLoadStateListener", "Landroidx/paging/DifferCallback;", "differCallback", "Landroidx/paging/DifferCallback;", "Lkotlinx/coroutines/n0;", "mainDispatcher", "Lkotlinx/coroutines/n0;", "Landroidx/paging/PagePresenter;", "presenter", "Landroidx/paging/PagePresenter;", "Landroidx/paging/UiReceiver;", "receiver", "Landroidx/paging/UiReceiver;", "Landroidx/paging/MutableCombinedLoadStateCollection;", "combinedLoadStatesCollection", "Landroidx/paging/MutableCombinedLoadStateCollection;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "onPagesUpdatedListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/paging/SingleRunner;", "collectFromRunner", "Landroidx/paging/SingleRunner;", "lastAccessedIndexUnfulfilled", "Z", "I", "androidx/paging/PagingDataDiffer$processPageEventCallback$1", "processPageEventCallback", "Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;", "Lkotlinx/coroutines/flow/i;", "loadStateFlow", "Lkotlinx/coroutines/flow/i;", "getLoadStateFlow", "()Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/s;", "_onPagesUpdatedFlow", "Lkotlinx/coroutines/flow/s;", "getSize", "()I", f.f47745b, "getOnPagesUpdatedFlow", "onPagesUpdatedFlow", "<init>", "(Landroidx/paging/DifferCallback;Lkotlinx/coroutines/n0;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class PagingDataDiffer<T> {
    @g
    private final kotlinx.coroutines.flow.s<Unit> _onPagesUpdatedFlow;
    @g
    private final SingleRunner collectFromRunner;
    @g
    private final MutableCombinedLoadStateCollection combinedLoadStatesCollection;
    @g
    private final DifferCallback differCallback;
    private volatile int lastAccessedIndex;
    private volatile boolean lastAccessedIndexUnfulfilled;
    @g
    private final i<CombinedLoadStates> loadStateFlow;
    @g
    private final n0 mainDispatcher;
    @g
    private final CopyOnWriteArrayList<Function0<Unit>> onPagesUpdatedListeners;
    @g
    private PagePresenter<T> presenter;
    @g
    private final PagingDataDiffer$processPageEventCallback$1 processPageEventCallback;
    @h
    private UiReceiver receiver;

    /* compiled from: PagingDataDiffer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: androidx.paging.PagingDataDiffer$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static final class AnonymousClass1 extends Lambda implements Function0<Unit> {
        final /* synthetic */ PagingDataDiffer<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PagingDataDiffer<T> pagingDataDiffer) {
            super(0);
            this.this$0 = pagingDataDiffer;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((PagingDataDiffer) this.this$0)._onPagesUpdatedFlow.c(Unit.INSTANCE);
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.paging.PagingDataDiffer$processPageEventCallback$1] */
    public PagingDataDiffer(@g DifferCallback differCallback, @g n0 mainDispatcher) {
        Intrinsics.checkNotNullParameter(differCallback, "differCallback");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        this.differCallback = differCallback;
        this.mainDispatcher = mainDispatcher;
        this.presenter = PagePresenter.Companion.initial$paging_common();
        MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection = new MutableCombinedLoadStateCollection();
        this.combinedLoadStatesCollection = mutableCombinedLoadStateCollection;
        this.onPagesUpdatedListeners = new CopyOnWriteArrayList<>();
        this.collectFromRunner = new SingleRunner(false, 1, null);
        this.processPageEventCallback = new PagePresenter.ProcessPageEventCallback(this) { // from class: androidx.paging.PagingDataDiffer$processPageEventCallback$1
            final /* synthetic */ PagingDataDiffer<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PagePresenter.ProcessPageEventCallback
            public void onChanged(int i4, int i10) {
                DifferCallback differCallback2;
                differCallback2 = ((PagingDataDiffer) this.this$0).differCallback;
                differCallback2.onChanged(i4, i10);
            }

            @Override // androidx.paging.PagePresenter.ProcessPageEventCallback
            public void onInserted(int i4, int i10) {
                DifferCallback differCallback2;
                differCallback2 = ((PagingDataDiffer) this.this$0).differCallback;
                differCallback2.onInserted(i4, i10);
            }

            @Override // androidx.paging.PagePresenter.ProcessPageEventCallback
            public void onRemoved(int i4, int i10) {
                DifferCallback differCallback2;
                differCallback2 = ((PagingDataDiffer) this.this$0).differCallback;
                differCallback2.onRemoved(i4, i10);
            }

            @Override // androidx.paging.PagePresenter.ProcessPageEventCallback
            public void onStateUpdate(@g LoadStates source, @h LoadStates loadStates) {
                Intrinsics.checkNotNullParameter(source, "source");
                this.this$0.dispatchLoadStates$paging_common(source, loadStates);
            }

            @Override // androidx.paging.PagePresenter.ProcessPageEventCallback
            public void onStateUpdate(@g LoadType loadType, boolean z9, @g LoadState loadState) {
                MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection2;
                MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection3;
                Intrinsics.checkNotNullParameter(loadType, "loadType");
                Intrinsics.checkNotNullParameter(loadState, "loadState");
                mutableCombinedLoadStateCollection2 = ((PagingDataDiffer) this.this$0).combinedLoadStatesCollection;
                if (Intrinsics.areEqual(mutableCombinedLoadStateCollection2.get(loadType, z9), loadState)) {
                    return;
                }
                mutableCombinedLoadStateCollection3 = ((PagingDataDiffer) this.this$0).combinedLoadStatesCollection;
                mutableCombinedLoadStateCollection3.set(loadType, z9, loadState);
            }
        };
        this.loadStateFlow = mutableCombinedLoadStateCollection.getFlow();
        this._onPagesUpdatedFlow = z.a(0, 64, BufferOverflow.DROP_OLDEST);
        addOnPagesUpdatedListener(new AnonymousClass1(this));
    }

    public final void addLoadStateListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.combinedLoadStatesCollection.addListener(listener);
    }

    public final void addOnPagesUpdatedListener(@g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onPagesUpdatedListeners.add(listener);
    }

    @h
    public final Object collectFrom(@g PagingData<T> pagingData, @g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object runInIsolation$default = SingleRunner.runInIsolation$default(this.collectFromRunner, 0, new PagingDataDiffer$collectFrom$2(this, pagingData, null), continuation, 1, null);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return runInIsolation$default == coroutine_suspended ? runInIsolation$default : Unit.INSTANCE;
    }

    public final void dispatchLoadStates$paging_common(@g LoadStates source, @h LoadStates loadStates) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (Intrinsics.areEqual(this.combinedLoadStatesCollection.getSource(), source) && Intrinsics.areEqual(this.combinedLoadStatesCollection.getMediator(), loadStates)) {
            return;
        }
        this.combinedLoadStatesCollection.set(source, loadStates);
    }

    @h
    public final T get(@IntRange(from = 0) int i4) {
        this.lastAccessedIndexUnfulfilled = true;
        this.lastAccessedIndex = i4;
        UiReceiver uiReceiver = this.receiver;
        if (uiReceiver != null) {
            uiReceiver.accessHint(this.presenter.accessHintForPresenterIndex(i4));
        }
        return this.presenter.get(i4);
    }

    @g
    public final i<CombinedLoadStates> getLoadStateFlow() {
        return this.loadStateFlow;
    }

    @g
    public final i<Unit> getOnPagesUpdatedFlow() {
        return k.l(this._onPagesUpdatedFlow);
    }

    public final int getSize() {
        return this.presenter.getSize();
    }

    @h
    public final T peek(@IntRange(from = 0) int i4) {
        return this.presenter.get(i4);
    }

    public boolean postEvents() {
        return false;
    }

    @h
    public abstract Object presentNewList(@g NullPaddedList<T> nullPaddedList, @g NullPaddedList<T> nullPaddedList2, int i4, @g Function0<Unit> function0, @g Continuation<? super Integer> continuation);

    public final void refresh() {
        UiReceiver uiReceiver = this.receiver;
        if (uiReceiver == null) {
            return;
        }
        uiReceiver.refresh();
    }

    public final void removeLoadStateListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.combinedLoadStatesCollection.removeListener(listener);
    }

    public final void removeOnPagesUpdatedListener(@g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onPagesUpdatedListeners.remove(listener);
    }

    public final void retry() {
        UiReceiver uiReceiver = this.receiver;
        if (uiReceiver == null) {
            return;
        }
        uiReceiver.retry();
    }

    @g
    public final ItemSnapshotList<T> snapshot() {
        return this.presenter.snapshot();
    }

    public /* synthetic */ PagingDataDiffer(DifferCallback differCallback, n0 n0Var, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(differCallback, (i4 & 2) != 0 ? i1.e() : n0Var);
    }
}
