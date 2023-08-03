package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.k0;
import io.sentry.protocol.f;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;

/* compiled from: RxSingle.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\r¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/rx2/u;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/a;", "value", "", "n1", "(Ljava/lang/Object;)V", "", "cause", "", f.b.f83682d, "m1", "Lio/reactivex/k0;", "c", "Lio/reactivex/k0;", "subscriber", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/k0;)V", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class u<T> extends kotlinx.coroutines.a<T> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final k0<T> f86614c;

    public u(@m8.g CoroutineContext coroutineContext, @m8.g k0<T> k0Var) {
        super(coroutineContext, false, true);
        this.f86614c = k0Var;
    }

    @Override // kotlinx.coroutines.a
    protected void m1(@m8.g Throwable th, boolean z9) {
        try {
            if (this.f86614c.a(th)) {
                return;
            }
        } catch (Throwable th2) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
        e.a(th, getContext());
    }

    @Override // kotlinx.coroutines.a
    protected void n1(@m8.g T t9) {
        try {
            this.f86614c.onSuccess(t9);
        } catch (Throwable th) {
            e.a(th, getContext());
        }
    }
}
