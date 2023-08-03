package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.h0;
import kotlinx.coroutines.flow.y;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractSharedFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/flow/internal/w;", "Lkotlinx/coroutines/flow/h0;", "", "Lkotlinx/coroutines/flow/y;", "delta", "", "e0", "d0", "()Ljava/lang/Integer;", "value", "initialValue", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class w extends y<Integer> implements h0<Integer> {
    public w(int i4) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        c(Integer.valueOf(i4));
    }

    @Override // kotlinx.coroutines.flow.h0
    @m8.g
    /* renamed from: d0 */
    public Integer getValue() {
        Integer valueOf;
        synchronized (this) {
            valueOf = Integer.valueOf(P().intValue());
        }
        return valueOf;
    }

    public final boolean e0(int i4) {
        boolean c10;
        synchronized (this) {
            c10 = c(Integer.valueOf(P().intValue() + i4));
        }
        return c10;
    }
}
