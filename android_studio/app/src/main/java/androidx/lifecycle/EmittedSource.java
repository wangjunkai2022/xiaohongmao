package androidx.lifecycle;

import androidx.annotation.MainThread;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.t0;

/* compiled from: CoroutineLiveData.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0003J\u0013\u0010\u0004\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0018\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/EmittedSource;", "Lkotlinx/coroutines/l1;", "", "removeSource", "disposeNow", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispose", "Landroidx/lifecycle/LiveData;", v.b.f83881a, "Landroidx/lifecycle/LiveData;", "Landroidx/lifecycle/MediatorLiveData;", "mediator", "Landroidx/lifecycle/MediatorLiveData;", "", "disposed", "Z", "<init>", "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/MediatorLiveData;)V", "lifecycle-livedata-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class EmittedSource implements l1 {
    private boolean disposed;
    @m8.g
    private final MediatorLiveData<?> mediator;
    @m8.g
    private final LiveData<?> source;

    public EmittedSource(@m8.g LiveData<?> source, @m8.g MediatorLiveData<?> mediator) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(mediator, "mediator");
        this.source = source;
        this.mediator = mediator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void removeSource() {
        if (this.disposed) {
            return;
        }
        this.mediator.removeSource(this.source);
        this.disposed = true;
    }

    @Override // kotlinx.coroutines.l1
    public void dispose() {
        l.f(t0.a(i1.e().p0()), null, null, new EmittedSource$dispose$1(this, null), 3, null);
    }

    @m8.h
    public final Object disposeNow(@m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object h4 = j.h(i1.e().p0(), new EmittedSource$disposeNow$2(this, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return h4 == coroutine_suspended ? h4 : Unit.INSTANCE;
    }
}
