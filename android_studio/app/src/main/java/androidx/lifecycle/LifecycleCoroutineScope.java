package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;

/* compiled from: Lifecycle.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0011\u0010\u0012J9\u0010\t\u001a\u00020\b2'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002¢\u0006\u0002\b\u0006ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ9\u0010\u000b\u001a\u00020\b2'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002¢\u0006\u0002\b\u0006ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\nJ9\u0010\f\u001a\u00020\b2'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002¢\u0006\u0002\b\u0006ø\u0001\u0000¢\u0006\u0004\b\f\u0010\nR\u0014\u0010\u0010\u001a\u00020\r8 X \u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Landroidx/lifecycle/LifecycleCoroutineScope;", "Lkotlinx/coroutines/s0;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/j2;", "launchWhenCreated", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;", "launchWhenStarted", "launchWhenResumed", "Landroidx/lifecycle/Lifecycle;", "getLifecycle$lifecycle_runtime_ktx_release", "()Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "()V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public abstract class LifecycleCoroutineScope implements s0 {
    @m8.g
    public abstract Lifecycle getLifecycle$lifecycle_runtime_ktx_release();

    @m8.g
    public final j2 launchWhenCreated(@m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
        j2 f10;
        Intrinsics.checkNotNullParameter(block, "block");
        f10 = l.f(this, null, null, new LifecycleCoroutineScope$launchWhenCreated$1(this, block, null), 3, null);
        return f10;
    }

    @m8.g
    public final j2 launchWhenResumed(@m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
        j2 f10;
        Intrinsics.checkNotNullParameter(block, "block");
        f10 = l.f(this, null, null, new LifecycleCoroutineScope$launchWhenResumed$1(this, block, null), 3, null);
        return f10;
    }

    @m8.g
    public final j2 launchWhenStarted(@m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
        j2 f10;
        Intrinsics.checkNotNullParameter(block, "block");
        f10 = l.f(this, null, null, new LifecycleCoroutineScope$launchWhenStarted$1(this, block, null), 3, null);
        return f10;
    }
}
