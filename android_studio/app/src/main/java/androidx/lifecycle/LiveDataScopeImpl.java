package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l1;

/* compiled from: CoroutineLiveData.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0010\u0019\u001a\u00020\u0013¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0000H\u0097@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bR(\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u0004\u0018\u00018\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Landroidx/lifecycle/LiveDataScopeImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveDataScope;", "Landroidx/lifecycle/LiveData;", v.b.f83881a, "Lkotlinx/coroutines/l1;", "emitSource", "(Landroidx/lifecycle/LiveData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/CoroutineLiveData;", TypedValues.Attributes.S_TARGET, "Landroidx/lifecycle/CoroutineLiveData;", "getTarget$lifecycle_livedata_ktx_release", "()Landroidx/lifecycle/CoroutineLiveData;", "setTarget$lifecycle_livedata_ktx_release", "(Landroidx/lifecycle/CoroutineLiveData;)V", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getLatestValue", "()Ljava/lang/Object;", "latestValue", "context", "<init>", "(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/coroutines/CoroutineContext;)V", "lifecycle-livedata-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class LiveDataScopeImpl<T> implements LiveDataScope<T> {
    @m8.g
    private final CoroutineContext coroutineContext;
    @m8.g
    private CoroutineLiveData<T> target;

    public LiveDataScopeImpl(@m8.g CoroutineLiveData<T> target, @m8.g CoroutineContext context) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(context, "context");
        this.target = target;
        this.coroutineContext = context.plus(i1.e().p0());
    }

    @Override // androidx.lifecycle.LiveDataScope
    @m8.h
    @SuppressLint({"NullSafeMutableLiveData"})
    public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object h4 = j.h(this.coroutineContext, new LiveDataScopeImpl$emit$2(this, t9, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return h4 == coroutine_suspended ? h4 : Unit.INSTANCE;
    }

    @Override // androidx.lifecycle.LiveDataScope
    @m8.h
    public Object emitSource(@m8.g LiveData<T> liveData, @m8.g Continuation<? super l1> continuation) {
        return j.h(this.coroutineContext, new LiveDataScopeImpl$emitSource$2(this, liveData, null), continuation);
    }

    @Override // androidx.lifecycle.LiveDataScope
    @m8.h
    public T getLatestValue() {
        return this.target.getValue();
    }

    @m8.g
    public final CoroutineLiveData<T> getTarget$lifecycle_livedata_ktx_release() {
        return this.target;
    }

    public final void setTarget$lifecycle_livedata_ktx_release(@m8.g CoroutineLiveData<T> coroutineLiveData) {
        Intrinsics.checkNotNullParameter(coroutineLiveData, "<set-?>");
        this.target = coroutineLiveData;
    }
}
