package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlinx.coroutines.flow.c0;

/* compiled from: SharingStarted.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a+\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/flow/c0$a;", "Lkotlin/time/Duration;", "stopTimeout", "replayExpiration", "Lkotlinx/coroutines/flow/c0;", "a", "(Lkotlinx/coroutines/flow/c0$a;JJ)Lkotlinx/coroutines/flow/c0;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class d0 {
    @m8.g
    public static final c0 a(@m8.g c0.a aVar, long j4, long j10) {
        return new g0(Duration.m1429getInWholeMillisecondsimpl(j4), Duration.m1429getInWholeMillisecondsimpl(j10));
    }

    public static /* synthetic */ c0 b(c0.a aVar, long j4, long j10, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = Duration.Companion.m1513getZEROUwyO8pc();
        }
        if ((i4 & 2) != 0) {
            j10 = Duration.Companion.m1511getINFINITEUwyO8pc();
        }
        return a(aVar, j4, j10);
    }
}
