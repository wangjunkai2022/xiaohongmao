package kotlinx.coroutines.rx2;

import io.sentry.protocol.f;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;

/* compiled from: RxCompletable.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/rx2/g;", "Lkotlinx/coroutines/a;", "", "value", "p1", "(Lkotlin/Unit;)V", "", "cause", "", f.b.f83682d, "m1", "Lio/reactivex/c;", "c", "Lio/reactivex/c;", "subscriber", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/c;)V", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class g extends kotlinx.coroutines.a<Unit> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final io.reactivex.c f86551c;

    public g(@m8.g CoroutineContext coroutineContext, @m8.g io.reactivex.c cVar) {
        super(coroutineContext, false, true);
        this.f86551c = cVar;
    }

    @Override // kotlinx.coroutines.a
    protected void m1(@m8.g Throwable th, boolean z9) {
        try {
            if (this.f86551c.a(th)) {
                return;
            }
        } catch (Throwable th2) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
        e.a(th, getContext());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* renamed from: p1 */
    public void n1(@m8.g Unit unit) {
        try {
            this.f86551c.onComplete();
        } catch (Throwable th) {
            e.a(th, getContext());
        }
    }
}
