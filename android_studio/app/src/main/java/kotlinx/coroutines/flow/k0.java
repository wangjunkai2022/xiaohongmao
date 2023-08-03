package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.p0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\b\u0002\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\rJ\u001b\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b0\u00072\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\tH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/flow/k0;", "Lkotlinx/coroutines/flow/internal/c;", "Lkotlinx/coroutines/flow/i0;", "flow", "", "c", "(Lkotlinx/coroutines/flow/i0;)Z", "", "Lkotlin/coroutines/Continuation;", "", "e", "(Lkotlinx/coroutines/flow/i0;)[Lkotlin/coroutines/Continuation;", "f", "()V", "g", "()Z", "d", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class k0 extends kotlinx.coroutines.flow.internal.c<i0<?>> {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f86048a = AtomicReferenceFieldUpdater.newUpdater(k0.class, Object.class, "_state");
    @m8.g
    volatile /* synthetic */ Object _state = null;

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: c */
    public boolean a(@m8.g i0<?> i0Var) {
        p0 p0Var;
        if (this._state != null) {
            return false;
        }
        p0Var = j0.f86045a;
        this._state = p0Var;
        return true;
    }

    @m8.h
    public final Object d(@m8.g Continuation<? super Unit> continuation) {
        Continuation intercepted;
        p0 p0Var;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86048a;
        p0Var = j0.f86045a;
        if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, p0Var, rVar)) {
            Result.Companion companion = Result.Companion;
            rVar.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
        }
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return A == coroutine_suspended2 ? A : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    @m8.g
    /* renamed from: e */
    public Continuation<Unit>[] b(@m8.g i0<?> i0Var) {
        this._state = null;
        return kotlinx.coroutines.flow.internal.b.f85909a;
    }

    public final void f() {
        p0 p0Var;
        p0 p0Var2;
        p0 p0Var3;
        p0 p0Var4;
        while (true) {
            Object obj = this._state;
            if (obj == null) {
                return;
            }
            p0Var = j0.f86046b;
            if (obj == p0Var) {
                return;
            }
            p0Var2 = j0.f86045a;
            if (obj == p0Var2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86048a;
                p0Var3 = j0.f86046b;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, p0Var3)) {
                    return;
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f86048a;
                p0Var4 = j0.f86045a;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, obj, p0Var4)) {
                    Result.Companion companion = Result.Companion;
                    ((kotlinx.coroutines.r) obj).resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
                    return;
                }
            }
        }
    }

    public final boolean g() {
        p0 p0Var;
        p0 p0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86048a;
        p0Var = j0.f86045a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, p0Var);
        Intrinsics.checkNotNull(andSet);
        p0Var2 = j0.f86046b;
        return andSet == p0Var2;
    }
}
