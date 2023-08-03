package kotlinx.coroutines;

import io.sentry.h4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/j3;", "Lkotlinx/coroutines/a;", "", "", h4.b.f83287e, "", "z0", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class j3 extends a<Unit> {
    public j3(@m8.g CoroutineContext coroutineContext, boolean z9) {
        super(coroutineContext, true, z9);
    }

    @Override // kotlinx.coroutines.q2
    protected boolean z0(@m8.g Throwable th) {
        p0.b(getContext(), th);
        return true;
    }
}
