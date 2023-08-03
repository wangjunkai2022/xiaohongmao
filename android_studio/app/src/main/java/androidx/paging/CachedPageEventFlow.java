package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.flow.s;
import kotlinx.coroutines.flow.x;
import kotlinx.coroutines.flow.z;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;
import m8.g;

/* compiled from: CachedPageEventFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B#\u0012\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\u0013\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0006\u0010\u0004\u001a\u00020\u0003R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R(\u0010\u000b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0018\u00010\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR(\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0018\u00010\t0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R#\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, d2 = {"Landroidx/paging/CachedPageEventFlow;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "close", "Landroidx/paging/FlattenedPageController;", "pageController", "Landroidx/paging/FlattenedPageController;", "Lkotlinx/coroutines/flow/s;", "Lkotlin/collections/IndexedValue;", "Landroidx/paging/PageEvent;", "mutableSharedSrc", "Lkotlinx/coroutines/flow/s;", "Lkotlinx/coroutines/flow/x;", "sharedForDownstream", "Lkotlinx/coroutines/flow/x;", "Lkotlinx/coroutines/j2;", "job", "Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/flow/i;", "downstreamFlow", "Lkotlinx/coroutines/flow/i;", "getDownstreamFlow", "()Lkotlinx/coroutines/flow/i;", "src", "Lkotlinx/coroutines/s0;", "scope", "<init>", "(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class CachedPageEventFlow<T> {
    @g
    private final i<PageEvent<T>> downstreamFlow;
    @g
    private final j2 job;
    @g
    private final s<IndexedValue<PageEvent<T>>> mutableSharedSrc;
    @g
    private final FlattenedPageController<T> pageController;
    @g
    private final x<IndexedValue<PageEvent<T>>> sharedForDownstream;

    public CachedPageEventFlow(@g i<? extends PageEvent<T>> src, @g s0 scope) {
        j2 f10;
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.pageController = new FlattenedPageController<>();
        s<IndexedValue<PageEvent<T>>> a10 = z.a(1, Integer.MAX_VALUE, BufferOverflow.SUSPEND);
        this.mutableSharedSrc = a10;
        this.sharedForDownstream = k.m1(a10, new CachedPageEventFlow$sharedForDownstream$1(this, null));
        f10 = l.f(scope, null, CoroutineStart.LAZY, new CachedPageEventFlow$job$1(src, this, null), 1, null);
        f10.H(new CachedPageEventFlow$job$2$1(this));
        Unit unit = Unit.INSTANCE;
        this.job = f10;
        this.downstreamFlow = k.I0(new CachedPageEventFlow$downstreamFlow$1(this, null));
    }

    public final void close() {
        j2.a.b(this.job, null, 1, null);
    }

    @g
    public final i<PageEvent<T>> getDownstreamFlow() {
        return this.downstreamFlow;
    }
}
