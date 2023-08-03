package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;

/* compiled from: DebugStrings.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u001a\u0010\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0000H\u0000\"\u0018\u0010\u0006\u001a\u00020\u0001*\u00020\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0018\u0010\b\u001a\u00020\u0001*\u00020\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\t"}, d2 = {"Lkotlin/coroutines/Continuation;", "", "c", "", "b", "(Ljava/lang/Object;)Ljava/lang/String;", "hexAddress", "a", "classSimpleName", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class v0 {
    @m8.g
    public static final String a(@m8.g Object obj) {
        return obj.getClass().getSimpleName();
    }

    @m8.g
    public static final String b(@m8.g Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    @m8.g
    public static final String c(@m8.g Continuation<?> continuation) {
        String m70constructorimpl;
        if (continuation instanceof kotlinx.coroutines.internal.l) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(continuation + '@' + b(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m73exceptionOrNullimpl(m70constructorimpl) != null) {
            m70constructorimpl = ((Object) continuation.getClass().getName()) + '@' + b(continuation);
        }
        return (String) m70constructorimpl;
    }
}
