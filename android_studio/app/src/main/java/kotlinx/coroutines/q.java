package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* compiled from: CancellableContinuation.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002J%\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H'¢\u0006\u0004\b\u0006\u0010\u0007JH\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042#\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\bH'¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\tH'J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0004H'J\b\u0010\u0015\u001a\u00020\rH'J\u0014\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\tH&J1\u0010\u001a\u001a\u00020\r2'\u0010\u0019\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\bj\u0002`\u0018H&J\u001b\u0010\u001c\u001a\u00020\r*\u00020\u001b2\u0006\u0010\u0003\u001a\u00028\u0000H'¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u001e\u001a\u00020\r*\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\tH'J<\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00028\u00002#\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\bH'¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0014\u0010%\u001a\u00020\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\"R\u0014\u0010&\u001a\u00020\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\"¨\u0006'"}, d2 = {"Lkotlinx/coroutines/q;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "value", "", "idempotent", "j", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "onCancellation", "z", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", h4.b.f83287e, "l", "token", "I", "C", "", "b", "Lkotlinx/coroutines/CompletionHandler;", "handler", "k", "Lkotlinx/coroutines/n0;", "B", "(Lkotlinx/coroutines/n0;Ljava/lang/Object;)V", "m", "r", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "a", "()Z", "isActive", ContextChain.TAG_INFRA, "isCompleted", "isCancelled", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface q<T> extends Continuation<T> {

    /* compiled from: CancellableContinuation.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static /* synthetic */ boolean a(q qVar, Throwable th, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    th = null;
                }
                return qVar.b(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static /* synthetic */ Object b(q qVar, Object obj, Object obj2, int i4, Object obj3) {
            if (obj3 == null) {
                if ((i4 & 2) != 0) {
                    obj2 = null;
                }
                return qVar.j(obj, obj2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
        }
    }

    @y1
    void B(@m8.g n0 n0Var, T t9);

    @e2
    void C();

    @e2
    void I(@m8.g Object obj);

    boolean a();

    boolean b(@m8.h Throwable th);

    boolean i();

    boolean isCancelled();

    @m8.h
    @e2
    Object j(T t9, @m8.h Object obj);

    void k(@m8.g Function1<? super Throwable, Unit> function1);

    @m8.h
    @e2
    Object l(@m8.g Throwable th);

    @y1
    void m(@m8.g n0 n0Var, @m8.g Throwable th);

    @y1
    void r(T t9, @m8.h Function1<? super Throwable, Unit> function1);

    @m8.h
    @e2
    Object z(T t9, @m8.h Object obj, @m8.h Function1<? super Throwable, Unit> function1);
}
