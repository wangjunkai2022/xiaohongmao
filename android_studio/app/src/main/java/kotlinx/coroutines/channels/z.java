package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;

/* compiled from: Broadcast.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BO\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012-\u0010\u0013\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f¢\u0006\u0002\b\u0012ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0014R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/channels/z;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/k;", "Lkotlinx/coroutines/channels/f0;", "g", "", "T0", "Lkotlin/coroutines/Continuation;", "d", "Lkotlin/coroutines/Continuation;", "continuation", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/i;", "channel", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/d0;", "", "Lkotlin/ExtensionFunctionType;", "block", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/i;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class z<E> extends k<E> {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Continuation<Unit> f85144d;

    public z(@m8.g CoroutineContext coroutineContext, @m8.g i<E> iVar, @m8.g Function2<? super d0<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, iVar, false);
        Continuation<Unit> createCoroutineUnintercepted;
        createCoroutineUnintercepted = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
        this.f85144d = createCoroutineUnintercepted;
    }

    @Override // kotlinx.coroutines.q2
    protected void T0() {
        z7.a.c(this.f85144d, this);
    }

    @Override // kotlinx.coroutines.channels.k, kotlinx.coroutines.channels.i
    @m8.g
    public f0<E> g() {
        f0<E> g4 = p1().g();
        start();
        return g4;
    }
}
