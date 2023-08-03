package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Future.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0007\u001a\u001a\u0010\u0007\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00052\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/j2;", "Ljava/util/concurrent/Future;", "future", "Lkotlinx/coroutines/l1;", "b", "Lkotlinx/coroutines/q;", "", "a", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/JobKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class n2 {
    public static final void a(@m8.g q<?> qVar, @m8.g Future<?> future) {
        qVar.k(new m(future));
    }

    @m8.g
    @e2
    public static final l1 b(@m8.g j2 j2Var, @m8.g Future<?> future) {
        return j2Var.H(new n(future));
    }
}
