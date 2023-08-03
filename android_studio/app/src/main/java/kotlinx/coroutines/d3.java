package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/d3;", "Lkotlinx/coroutines/p2;", "", "cause", "", "g0", "Lkotlin/coroutines/Continuation;", "e", "Lkotlin/coroutines/Continuation;", "continuation", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class d3 extends p2 {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Continuation<Unit> f85153e;

    /* JADX WARN: Multi-variable type inference failed */
    public d3(@m8.g Continuation<? super Unit> continuation) {
        this.f85153e = continuation;
    }

    @Override // kotlinx.coroutines.g0
    public void g0(@m8.h Throwable th) {
        Continuation<Unit> continuation = this.f85153e;
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        g0(th);
        return Unit.INSTANCE;
    }
}
