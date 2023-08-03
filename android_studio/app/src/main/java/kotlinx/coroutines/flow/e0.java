package kotlinx.coroutines.flow;

import kotlin.Metadata;

/* compiled from: SharingStarted.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\t\u001a\u00020\bH\u0016¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/e0;", "Lkotlinx/coroutines/flow/c0;", "Lkotlinx/coroutines/flow/h0;", "", "subscriptionCount", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/SharingCommand;", "a", "", "toString", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class e0 implements c0 {
    @Override // kotlinx.coroutines.flow.c0
    @m8.g
    public i<SharingCommand> a(@m8.g h0<Integer> h0Var) {
        return k.L0(SharingCommand.START);
    }

    @m8.g
    public String toString() {
        return "SharingStarted.Eagerly";
    }
}
