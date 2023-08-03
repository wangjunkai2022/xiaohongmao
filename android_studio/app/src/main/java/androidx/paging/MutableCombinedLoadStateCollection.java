package androidx.paging;

import androidx.paging.LoadState;
import com.google.android.gms.common.internal.x;
import io.sentry.protocol.s;
import io.sentry.protocol.t;
import io.sentry.protocol.v;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.k;
import m8.g;
import m8.h;

/* compiled from: MutableCombinedLoadStateCollection.kt */
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b2\u00103J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J*\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\fJ\u001e\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012J\u001a\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0016J\u001a\u0010\u0019\u001a\u00020\u00042\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0016R\u0016\u0010\u001a\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR&\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00160\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010 R\u0016\u0010\"\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R$\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R(\u0010(\u001a\u0004\u0018\u00010\f2\b\u0010#\u001a\u0004\u0018\u00010\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b(\u0010%\u001a\u0004\b)\u0010'R\u001c\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u001d\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00020-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00064"}, d2 = {"Landroidx/paging/MutableCombinedLoadStateCollection;", "", "Landroidx/paging/CombinedLoadStates;", s.b.f83846c, "", "updateHelperStatesAndDispatch", "Landroidx/paging/LoadState;", "previousState", "sourceRefreshState", "sourceState", "remoteState", "computeHelperState", "Landroidx/paging/LoadStates;", "sourceLoadStates", "remoteLoadStates", "set", "Landroidx/paging/LoadType;", "type", "", "remote", t.b.f83859d, "get", "Lkotlin/Function1;", x.a.f29212a, "addListener", "removeListener", "isInitialized", "Z", "Ljava/util/concurrent/CopyOnWriteArrayList;", "listeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "refresh", "Landroidx/paging/LoadState;", "prepend", "append", "<set-?>", v.b.f83881a, "Landroidx/paging/LoadStates;", "getSource", "()Landroidx/paging/LoadStates;", "mediator", "getMediator", "Lkotlinx/coroutines/flow/t;", "_stateFlow", "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/i;", "flow", "Lkotlinx/coroutines/flow/i;", "getFlow", "()Lkotlinx/coroutines/flow/i;", "<init>", "()V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class MutableCombinedLoadStateCollection {
    @g
    private final kotlinx.coroutines.flow.t<CombinedLoadStates> _stateFlow;
    @g
    private LoadState append;
    @g
    private final i<CombinedLoadStates> flow;
    private boolean isInitialized;
    @g
    private final CopyOnWriteArrayList<Function1<CombinedLoadStates, Unit>> listeners = new CopyOnWriteArrayList<>();
    @h
    private LoadStates mediator;
    @g
    private LoadState prepend;
    @g
    private LoadState refresh;
    @g
    private LoadStates source;

    public MutableCombinedLoadStateCollection() {
        LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
        this.refresh = companion.getIncomplete$paging_common();
        this.prepend = companion.getIncomplete$paging_common();
        this.append = companion.getIncomplete$paging_common();
        this.source = LoadStates.Companion.getIDLE();
        kotlinx.coroutines.flow.t<CombinedLoadStates> a10 = j0.a(null);
        this._stateFlow = a10;
        this.flow = k.s0(a10);
    }

    private final LoadState computeHelperState(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadState loadState4) {
        return loadState4 == null ? loadState3 : (!(loadState instanceof LoadState.Loading) || ((loadState2 instanceof LoadState.NotLoading) && (loadState4 instanceof LoadState.NotLoading)) || (loadState4 instanceof LoadState.Error)) ? loadState4 : loadState;
    }

    private final CombinedLoadStates snapshot() {
        if (this.isInitialized) {
            return new CombinedLoadStates(this.refresh, this.prepend, this.append, this.source, this.mediator);
        }
        return null;
    }

    private final void updateHelperStatesAndDispatch() {
        LoadState loadState = this.refresh;
        LoadState refresh = this.source.getRefresh();
        LoadState refresh2 = this.source.getRefresh();
        LoadStates loadStates = this.mediator;
        this.refresh = computeHelperState(loadState, refresh, refresh2, loadStates == null ? null : loadStates.getRefresh());
        LoadState loadState2 = this.prepend;
        LoadState refresh3 = this.source.getRefresh();
        LoadState prepend = this.source.getPrepend();
        LoadStates loadStates2 = this.mediator;
        this.prepend = computeHelperState(loadState2, refresh3, prepend, loadStates2 == null ? null : loadStates2.getPrepend());
        LoadState loadState3 = this.append;
        LoadState refresh4 = this.source.getRefresh();
        LoadState append = this.source.getAppend();
        LoadStates loadStates3 = this.mediator;
        this.append = computeHelperState(loadState3, refresh4, append, loadStates3 != null ? loadStates3.getAppend() : null);
        CombinedLoadStates snapshot = snapshot();
        if (snapshot != null) {
            this._stateFlow.setValue(snapshot);
            Iterator<T> it = this.listeners.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(snapshot);
            }
        }
    }

    public final void addListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
        CombinedLoadStates snapshot = snapshot();
        if (snapshot == null) {
            return;
        }
        listener.invoke(snapshot);
    }

    @h
    public final LoadState get(@g LoadType type, boolean z9) {
        Intrinsics.checkNotNullParameter(type, "type");
        LoadStates loadStates = z9 ? this.mediator : this.source;
        if (loadStates == null) {
            return null;
        }
        return loadStates.get$paging_common(type);
    }

    @g
    public final i<CombinedLoadStates> getFlow() {
        return this.flow;
    }

    @h
    public final LoadStates getMediator() {
        return this.mediator;
    }

    @g
    public final LoadStates getSource() {
        return this.source;
    }

    public final void removeListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }

    public final void set(@g LoadStates sourceLoadStates, @h LoadStates loadStates) {
        Intrinsics.checkNotNullParameter(sourceLoadStates, "sourceLoadStates");
        this.isInitialized = true;
        this.source = sourceLoadStates;
        this.mediator = loadStates;
        updateHelperStatesAndDispatch();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4, r5) == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4, r5) == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean set(@m8.g androidx.paging.LoadType r4, boolean r5, @m8.g androidx.paging.LoadState r6) {
        /*
            r3 = this;
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "state"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            r0 = 1
            r3.isInitialized = r0
            r1 = 0
            if (r5 == 0) goto L29
            androidx.paging.LoadStates r5 = r3.mediator
            if (r5 != 0) goto L1b
            androidx.paging.LoadStates$Companion r2 = androidx.paging.LoadStates.Companion
            androidx.paging.LoadStates r2 = r2.getIDLE()
            goto L1c
        L1b:
            r2 = r5
        L1c:
            androidx.paging.LoadStates r4 = r2.modifyState$paging_common(r4, r6)
            r3.mediator = r4
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 != 0) goto L38
            goto L39
        L29:
            androidx.paging.LoadStates r5 = r3.source
            androidx.paging.LoadStates r4 = r5.modifyState$paging_common(r4, r6)
            r3.source = r4
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 != 0) goto L38
            goto L39
        L38:
            r0 = 0
        L39:
            r3.updateHelperStatesAndDispatch()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.MutableCombinedLoadStateCollection.set(androidx.paging.LoadType, boolean, androidx.paging.LoadState):boolean");
    }
}
