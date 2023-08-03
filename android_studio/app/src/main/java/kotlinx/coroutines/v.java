package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0018\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/v;", "Lkotlinx/coroutines/k2;", "", "cause", "", "g0", "Lkotlinx/coroutines/r;", "e", "Lkotlinx/coroutines/r;", "child", "<init>", "(Lkotlinx/coroutines/r;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class v extends k2 {
    @JvmField
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public final r<?> f86842e;

    public v(@m8.g r<?> rVar) {
        this.f86842e = rVar;
    }

    @Override // kotlinx.coroutines.g0
    public void g0(@m8.h Throwable th) {
        r<?> rVar = this.f86842e;
        rVar.L(rVar.y(h0()));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        g0(th);
        return Unit.INSTANCE;
    }
}
