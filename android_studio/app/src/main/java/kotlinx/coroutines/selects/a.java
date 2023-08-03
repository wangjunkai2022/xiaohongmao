package kotlinx.coroutines.selects;

import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.y1;

/* compiled from: Select.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002J5\u0010\b\u001a\u00020\u0007*\u00020\u00032\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H¦\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJG\u0010\r\u001a\u00020\u0007\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u00028\u00010\u000b2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\fH¦\u0002ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ[\u0010\u0012\u001a\u00020\u0007\"\u0004\b\u0001\u0010\u000f\"\u0004\b\u0002\u0010\n*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\fH¦\u0002ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013JU\u0010\u0014\u001a\u00020\u0007\"\u0004\b\u0001\u0010\u000f\"\u0004\b\u0002\u0010\n*\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0004\u0012\u00028\u00020\u00102\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\fH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J8\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H'ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/selects/a;", "R", "", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "block", "", "c", "(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/d;", "Lkotlin/Function2;", y.b.f83920h, "(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/e;", com.alipay.sdk.authjs.a.f6841l, "g", "(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "s", "(Lkotlinx/coroutines/selects/e;Lkotlin/jvm/functions/Function2;)V", "", "timeMillis", "n", "(JLkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface a<R> {

    /* compiled from: Select.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: kotlinx.coroutines.selects.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0764a {
        /* JADX WARN: Multi-variable type inference failed */
        public static <R, P, Q> void a(@m8.g a<? super R> aVar, @m8.g e<? super P, ? extends Q> eVar, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
            aVar.g(eVar, null, function2);
        }
    }

    void c(@m8.g c cVar, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1);

    <P, Q> void g(@m8.g e<? super P, ? extends Q> eVar, P p9, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);

    @y1
    void n(long j4, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1);

    <P, Q> void s(@m8.g e<? super P, ? extends Q> eVar, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);

    <Q> void y(@m8.g d<? extends Q> dVar, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);
}
