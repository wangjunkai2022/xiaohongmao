package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/x;", "Lkotlinx/coroutines/k2;", "Lkotlinx/coroutines/w;", "", "cause", "", "g0", "", "e", "Lkotlinx/coroutines/y;", "Lkotlinx/coroutines/y;", "childJob", "Lkotlinx/coroutines/j2;", "getParent", "()Lkotlinx/coroutines/j2;", "parent", "<init>", "(Lkotlinx/coroutines/y;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class x extends k2 implements w {
    @JvmField
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public final y f86859e;

    public x(@m8.g y yVar) {
        this.f86859e = yVar;
    }

    @Override // kotlinx.coroutines.w
    public boolean e(@m8.g Throwable th) {
        return h0().e0(th);
    }

    @Override // kotlinx.coroutines.g0
    public void g0(@m8.h Throwable th) {
        this.f86859e.E(h0());
    }

    @Override // kotlinx.coroutines.w
    @m8.g
    public j2 getParent() {
        return h0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        g0(th);
        return Unit.INSTANCE;
    }
}
