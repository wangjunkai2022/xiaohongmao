package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;

/* compiled from: CoroutineLiveData.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Be\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012-\u0010\r\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t¢\u0006\u0002\b\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0004\u001a\u00020\u0003H\u0007J\b\u0010\u0005\u001a\u00020\u0003H\u0007R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR>\u0010\r\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t¢\u0006\u0002\b\f8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Landroidx/lifecycle/BlockRunner;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "maybeRun", "cancel", "Landroidx/lifecycle/CoroutineLiveData;", "liveData", "Landroidx/lifecycle/CoroutineLiveData;", "Lkotlin/Function2;", "Landroidx/lifecycle/LiveDataScope;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlin/jvm/functions/Function2;", "", "timeoutInMs", "J", "Lkotlinx/coroutines/s0;", "scope", "Lkotlinx/coroutines/s0;", "Lkotlin/Function0;", "onDone", "Lkotlin/jvm/functions/Function0;", "Lkotlinx/coroutines/j2;", "runningJob", "Lkotlinx/coroutines/j2;", "cancellationJob", "<init>", "(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/jvm/functions/Function2;JLkotlinx/coroutines/s0;Lkotlin/jvm/functions/Function0;)V", "lifecycle-livedata-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class BlockRunner<T> {
    @m8.g
    private final Function2<LiveDataScope<T>, Continuation<? super Unit>, Object> block;
    @m8.h
    private j2 cancellationJob;
    @m8.g
    private final CoroutineLiveData<T> liveData;
    @m8.g
    private final Function0<Unit> onDone;
    @m8.h
    private j2 runningJob;
    @m8.g
    private final s0 scope;
    private final long timeoutInMs;

    /* JADX WARN: Multi-variable type inference failed */
    public BlockRunner(@m8.g CoroutineLiveData<T> liveData, @m8.g Function2<? super LiveDataScope<T>, ? super Continuation<? super Unit>, ? extends Object> block, long j4, @m8.g s0 scope, @m8.g Function0<Unit> onDone) {
        Intrinsics.checkNotNullParameter(liveData, "liveData");
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onDone, "onDone");
        this.liveData = liveData;
        this.block = block;
        this.timeoutInMs = j4;
        this.scope = scope;
        this.onDone = onDone;
    }

    @MainThread
    public final void cancel() {
        j2 f10;
        if (this.cancellationJob == null) {
            f10 = l.f(this.scope, i1.e().p0(), null, new BlockRunner$cancel$1(this, null), 2, null);
            this.cancellationJob = f10;
            return;
        }
        throw new IllegalStateException("Cancel call cannot happen without a maybeRun".toString());
    }

    @MainThread
    public final void maybeRun() {
        j2 f10;
        j2 j2Var = this.cancellationJob;
        if (j2Var != null) {
            j2.a.b(j2Var, null, 1, null);
        }
        this.cancellationJob = null;
        if (this.runningJob != null) {
            return;
        }
        f10 = l.f(this.scope, null, null, new BlockRunner$maybeRun$1(this, null), 3, null);
        this.runningJob = f10;
    }
}
