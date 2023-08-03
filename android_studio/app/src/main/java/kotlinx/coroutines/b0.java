package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Result;

/* compiled from: CompletableDeferred.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a.\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u001a!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/z;", "Lkotlin/Result;", "result", "", "d", "(Lkotlinx/coroutines/z;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/j2;", "parent", "b", "value", "a", "(Ljava/lang/Object;)Lkotlinx/coroutines/z;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b0 {
    @m8.g
    public static final <T> z<T> a(T t9) {
        a0 a0Var = new a0(null);
        a0Var.L(t9);
        return a0Var;
    }

    @m8.g
    public static final <T> z<T> b(@m8.h j2 j2Var) {
        return new a0(j2Var);
    }

    public static /* synthetic */ z c(j2 j2Var, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j2Var = null;
        }
        return b(j2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean d(@m8.g z<T> zVar, @m8.g Object obj) {
        Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(obj);
        return m73exceptionOrNullimpl == null ? zVar.L(obj) : zVar.h(m73exceptionOrNullimpl);
    }
}
