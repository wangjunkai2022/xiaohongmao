package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;

/* compiled from: SharedFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\b\u0000\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016J)\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/flow/a0;", "Lkotlinx/coroutines/flow/internal/c;", "Lkotlinx/coroutines/flow/y;", "flow", "", "c", "", "Lkotlin/coroutines/Continuation;", "", "d", "(Lkotlinx/coroutines/flow/y;)[Lkotlin/coroutines/Continuation;", "", "a", "J", "index", "b", "Lkotlin/coroutines/Continuation;", "cont", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class a0 extends kotlinx.coroutines.flow.internal.c<y<?>> {
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public long f85837a = -1;
    @m8.h
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public Continuation<? super Unit> f85838b;

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: c */
    public boolean a(@m8.g y<?> yVar) {
        if (this.f85837a >= 0) {
            return false;
        }
        this.f85837a = yVar.c0();
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    @m8.g
    /* renamed from: d */
    public Continuation<Unit>[] b(@m8.g y<?> yVar) {
        long j4 = this.f85837a;
        this.f85837a = -1L;
        this.f85838b = null;
        return yVar.b0(j4);
    }
}
