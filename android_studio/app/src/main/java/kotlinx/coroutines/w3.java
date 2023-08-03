package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

/* compiled from: CoroutineContext.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\n\u001a\u00020\tJ\u0012\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0014R*\u0010\u0011\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000e0\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/w3;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/l0;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "oldValue", "", "r1", "", "q1", t.b.f83859d, "k1", "Ljava/lang/ThreadLocal;", "Lkotlin/Pair;", "d", "Ljava/lang/ThreadLocal;", "threadStateToRecover", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class w3<T> extends kotlinx.coroutines.internal.l0<T> {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private ThreadLocal<Pair<CoroutineContext, Object>> f86858d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public w3(@m8.g kotlin.coroutines.CoroutineContext r3, @m8.g kotlin.coroutines.Continuation<? super T> r4) {
        /*
            r2 = this;
            kotlinx.coroutines.x3 r0 = kotlinx.coroutines.x3.f86863a
            kotlin.coroutines.CoroutineContext$Element r1 = r3.get(r0)
            if (r1 != 0) goto Lc
            kotlin.coroutines.CoroutineContext r3 = r3.plus(r0)
        Lc:
            r2.<init>(r3, r4)
            java.lang.ThreadLocal r3 = new java.lang.ThreadLocal
            r3.<init>()
            r2.f86858d = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.w3.<init>(kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):void");
    }

    @Override // kotlinx.coroutines.internal.l0, kotlinx.coroutines.a
    protected void k1(@m8.h Object obj) {
        Pair<CoroutineContext, Object> pair = this.f86858d.get();
        if (pair != null) {
            kotlinx.coroutines.internal.u0.a(pair.component1(), pair.component2());
            this.f86858d.set(null);
        }
        Object a10 = j0.a(obj, this.f86274c);
        Continuation<T> continuation = this.f86274c;
        CoroutineContext context = continuation.getContext();
        Object c10 = kotlinx.coroutines.internal.u0.c(context, null);
        w3<?> g4 = c10 != kotlinx.coroutines.internal.u0.f86295a ? m0.g(continuation, context, c10) : null;
        try {
            this.f86274c.resumeWith(a10);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (g4 == null || g4.q1()) {
                kotlinx.coroutines.internal.u0.a(context, c10);
            }
        }
    }

    public final boolean q1() {
        if (this.f86858d.get() == null) {
            return false;
        }
        this.f86858d.set(null);
        return true;
    }

    public final void r1(@m8.g CoroutineContext coroutineContext, @m8.h Object obj) {
        this.f86858d.set(TuplesKt.to(coroutineContext, obj));
    }
}
