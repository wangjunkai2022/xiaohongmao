package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DebugProbesImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0007\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"", "R", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "owner", "invoke", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;)Ljava/lang/Object;", "kotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$1$3", "<anonymous>"}, k = 3, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1 extends Lambda implements Function1<DebugProbesImpl.a<?>, d> {
    public DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @m8.h
    public final d invoke(@m8.g DebugProbesImpl.a<?> aVar) {
        CoroutineContext c10;
        if (DebugProbesImpl.f85154a.y(aVar) || (c10 = aVar.f85167b.c()) == null) {
            return null;
        }
        return new d(aVar.f85167b, c10);
    }
}
