package kotlinx.coroutines.android;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.u2;
import m8.g;
import m8.h;

/* compiled from: HandlerDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0005\u001a\u00020\u00008&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0001\u0001\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/android/c;", "Lkotlinx/coroutines/u2;", "Lkotlinx/coroutines/a1;", "r0", "()Lkotlinx/coroutines/android/c;", "immediate", "<init>", "()V", "Lkotlinx/coroutines/android/b;", "kotlinx-coroutines-android"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class c extends u2 implements a1 {
    private c() {
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @g
    public l1 I(long j4, @g Runnable runnable, @g CoroutineContext coroutineContext) {
        return a1.a.b(this, j4, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.a1
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @h
    public Object g0(long j4, @g Continuation<? super Unit> continuation) {
        return a1.a.a(this, j4, continuation);
    }

    @g
    public abstract c r0();
}
