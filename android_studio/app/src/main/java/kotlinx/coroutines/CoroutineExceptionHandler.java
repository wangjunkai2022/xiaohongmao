package kotlinx.coroutines;

import io.sentry.h4;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: CoroutineExceptionHandler.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u0000 \b2\u00020\u0001:\u0001\tJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "context", "", h4.b.f83287e, "", "handleException", "j2", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface CoroutineExceptionHandler extends CoroutineContext.Element {
    @m8.g

    /* renamed from: j2  reason: collision with root package name */
    public static final b f84777j2 = b.f84778a;

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <R> R a(@m8.g CoroutineExceptionHandler coroutineExceptionHandler, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(coroutineExceptionHandler, r9, function2);
        }

        @m8.h
        public static <E extends CoroutineContext.Element> E b(@m8.g CoroutineExceptionHandler coroutineExceptionHandler, @m8.g CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(coroutineExceptionHandler, key);
        }

        @m8.g
        public static CoroutineContext c(@m8.g CoroutineExceptionHandler coroutineExceptionHandler, @m8.g CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(coroutineExceptionHandler, key);
        }

        @m8.g
        public static CoroutineContext d(@m8.g CoroutineExceptionHandler coroutineExceptionHandler, @m8.g CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(coroutineExceptionHandler, coroutineContext);
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler$b;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements CoroutineContext.Key<CoroutineExceptionHandler> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f84778a = new b();

        private b() {
        }
    }

    void handleException(@m8.g CoroutineContext coroutineContext, @m8.g Throwable th);
}
