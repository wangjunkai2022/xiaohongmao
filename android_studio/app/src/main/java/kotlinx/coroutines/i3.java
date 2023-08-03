package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B6\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u001c\u0010\u0010\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR-\u0010\u0010\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/i3;", "R", "Lkotlinx/coroutines/p2;", "", "cause", "", "g0", "Lkotlinx/coroutines/selects/f;", "e", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "f", "Lkotlin/jvm/functions/Function1;", "block", "<init>", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class i3<R> extends p2 {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final kotlinx.coroutines.selects.f<R> f86201e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Function1<Continuation<? super R>, Object> f86202f;

    /* JADX WARN: Multi-variable type inference failed */
    public i3(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f86201e = fVar;
        this.f86202f = function1;
    }

    @Override // kotlinx.coroutines.g0
    public void g0(@m8.h Throwable th) {
        if (this.f86201e.t()) {
            z7.a.d(this.f86202f, this.f86201e.u());
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        g0(th);
        return Unit.INSTANCE;
    }
}
