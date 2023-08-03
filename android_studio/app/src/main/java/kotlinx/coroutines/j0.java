package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* compiled from: CompletionState.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aK\u0010\n\u001a\u0004\u0018\u00010\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012%\b\u0002\u0010\b\u001a\u001f\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a0\u0010\u000e\u001a\u0004\u0018\u00010\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0000ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a6\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Result;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "onCancellation", "", "b", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lkotlinx/coroutines/q;", "caller", "c", "(Ljava/lang/Object;Lkotlinx/coroutines/q;)Ljava/lang/Object;", t.b.f83859d, "Lkotlin/coroutines/Continuation;", "uCont", "a", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class j0 {
    @m8.g
    public static final <T> Object a(@m8.h Object obj, @m8.g Continuation<? super T> continuation) {
        if (obj instanceof e0) {
            Result.Companion companion = Result.Companion;
            return Result.m70constructorimpl(ResultKt.createFailure(((e0) obj).f85246a));
        }
        Result.Companion companion2 = Result.Companion;
        return Result.m70constructorimpl(obj);
    }

    @m8.h
    public static final <T> Object b(@m8.g Object obj, @m8.h Function1<? super Throwable, Unit> function1) {
        Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(obj);
        if (m73exceptionOrNullimpl == null) {
            return function1 != null ? new f0(obj, function1) : obj;
        }
        return new e0(m73exceptionOrNullimpl, false, 2, null);
    }

    @m8.h
    public static final <T> Object c(@m8.g Object obj, @m8.g q<?> qVar) {
        Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(obj);
        return m73exceptionOrNullimpl == null ? obj : new e0(m73exceptionOrNullimpl, false, 2, null);
    }

    public static /* synthetic */ Object d(Object obj, Function1 function1, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            function1 = null;
        }
        return b(obj, function1);
    }
}
