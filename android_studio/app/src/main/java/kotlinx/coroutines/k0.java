package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n3;

/* compiled from: ThreadContextElement.kt */
@c1
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H&J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H&¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/k0;", ExifInterface.LATITUDE_SOUTH, "Lkotlinx/coroutines/n3;", "J", "Lkotlin/coroutines/CoroutineContext$Element;", "overwritingElement", "Lkotlin/coroutines/CoroutineContext;", "q", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@y1
/* loaded from: classes4.dex */
public interface k0<S> extends n3<S> {

    /* compiled from: ThreadContextElement.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <S, R> R a(@m8.g k0<S> k0Var, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) n3.a.a(k0Var, r9, function2);
        }

        @m8.h
        public static <S, E extends CoroutineContext.Element> E b(@m8.g k0<S> k0Var, @m8.g CoroutineContext.Key<E> key) {
            return (E) n3.a.b(k0Var, key);
        }

        @m8.g
        public static <S> CoroutineContext c(@m8.g k0<S> k0Var, @m8.g CoroutineContext.Key<?> key) {
            return n3.a.c(k0Var, key);
        }

        @m8.g
        public static <S> CoroutineContext d(@m8.g k0<S> k0Var, @m8.g CoroutineContext coroutineContext) {
            return n3.a.d(k0Var, coroutineContext);
        }
    }

    @m8.g
    k0<S> J();

    @m8.g
    CoroutineContext q(@m8.g CoroutineContext.Element element);
}
