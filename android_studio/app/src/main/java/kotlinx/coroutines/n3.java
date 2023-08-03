package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: ThreadContextElement.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0017\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/n3;", ExifInterface.LATITUDE_SOUTH, "Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "context", "l0", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "oldState", "", "K", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface n3<S> extends CoroutineContext.Element {

    /* compiled from: ThreadContextElement.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <S, R> R a(@m8.g n3<S> n3Var, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(n3Var, r9, function2);
        }

        @m8.h
        public static <S, E extends CoroutineContext.Element> E b(@m8.g n3<S> n3Var, @m8.g CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(n3Var, key);
        }

        @m8.g
        public static <S> CoroutineContext c(@m8.g n3<S> n3Var, @m8.g CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(n3Var, key);
        }

        @m8.g
        public static <S> CoroutineContext d(@m8.g n3<S> n3Var, @m8.g CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(n3Var, coroutineContext);
        }
    }

    void K(@m8.g CoroutineContext coroutineContext, S s9);

    S l0(@m8.g CoroutineContext coroutineContext);
}
