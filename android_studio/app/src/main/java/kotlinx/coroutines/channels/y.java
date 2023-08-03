package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* compiled from: Actor.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003BO\u0012\u0006\u0010%\u001a\u00020$\u0012\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&\u0012-\u0010\u001b\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000(\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0018¢\u0006\u0002\b)ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\b\u0010\u0006\u001a\u00020\u0005H\u0014J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0013\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016JX\u0010\u001c\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u00152\u0006\u0010\u0017\u001a\u00028\u00002(\u0010\u001b\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0018H\u0016ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR&\u0010#\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006,"}, d2 = {"Lkotlinx/coroutines/channels/y;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d;", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/j0;", "", "T0", "element", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "offer", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/channels/q;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "", "cause", "close", "R", "Lkotlinx/coroutines/selects/f;", "select", com.alipay.sdk.authjs.a.f6841l, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "n", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "d", "Lkotlin/coroutines/Continuation;", "continuation", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/m;", "channel", "Lkotlinx/coroutines/channels/f;", "Lkotlin/ExtensionFunctionType;", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/m;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class y<E> extends d<E> implements kotlinx.coroutines.selects.e<E, j0<? super E>> {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private Continuation<? super Unit> f85143d;

    public y(@m8.g CoroutineContext coroutineContext, @m8.g m<E> mVar, @m8.g Function2<? super f<E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, mVar, false);
        Continuation<? super Unit> createCoroutineUnintercepted;
        createCoroutineUnintercepted = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
        this.f85143d = createCoroutineUnintercepted;
    }

    @Override // kotlinx.coroutines.q2
    protected void T0() {
        z7.a.c(this.f85143d, this);
    }

    @Override // kotlinx.coroutines.channels.n, kotlinx.coroutines.channels.j0
    public boolean close(@m8.h Throwable th) {
        boolean close = super.close(th);
        start();
        return close;
    }

    @Override // kotlinx.coroutines.channels.n, kotlinx.coroutines.channels.j0
    @m8.g
    public kotlinx.coroutines.selects.e<E, j0<E>> getOnSend() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.e
    public <R> void n(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, E e4, @m8.g Function2<? super j0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        start();
        super.getOnSend().n(fVar, e4, function2);
    }

    @Override // kotlinx.coroutines.channels.n, kotlinx.coroutines.channels.j0
    public boolean offer(E e4) {
        start();
        return super.offer(e4);
    }

    @Override // kotlinx.coroutines.channels.n, kotlinx.coroutines.channels.j0
    @m8.h
    public Object send(E e4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        start();
        Object send = super.send(e4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return send == coroutine_suspended ? send : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.n, kotlinx.coroutines.channels.j0
    @m8.g
    /* renamed from: trySend-JP2dKIU */
    public Object mo51trySendJP2dKIU(E e4) {
        start();
        return super.mo51trySendJP2dKIU(e4);
    }
}
