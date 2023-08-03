package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0005\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJJ\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0001\u0010\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\n2\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fH\u0016ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/z0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/a;", "Lkotlinx/coroutines/y0;", "Lkotlinx/coroutines/selects/d;", "p", "()Ljava/lang/Object;", "D", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "c", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", ExifInterface.LONGITUDE_WEST, "()Lkotlinx/coroutines/selects/d;", "onAwait", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class z0<T> extends a<T> implements y0<T>, kotlinx.coroutines.selects.d<T> {
    public z0(@m8.g CoroutineContext coroutineContext, boolean z9) {
        super(coroutineContext, true, z9);
    }

    @Override // kotlinx.coroutines.y0
    @m8.h
    public Object D(@m8.g Continuation<? super T> continuation) {
        return U(continuation);
    }

    @Override // kotlinx.coroutines.y0
    @m8.g
    public kotlinx.coroutines.selects.d<T> W() {
        return this;
    }

    @Override // kotlinx.coroutines.selects.d
    public <R> void c(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        W0(fVar, function2);
    }

    @Override // kotlinx.coroutines.y0
    public T p() {
        return (T) p0();
    }
}
