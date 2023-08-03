package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B<\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\"\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR3\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/h3;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/p2;", "", "cause", "", "g0", "Lkotlinx/coroutines/selects/f;", "e", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "f", "Lkotlin/jvm/functions/Function2;", "block", "<init>", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class h3<T, R> extends p2 {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final kotlinx.coroutines.selects.f<R> f86193e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Function2<T, Continuation<? super R>, Object> f86194f;

    /* JADX WARN: Multi-variable type inference failed */
    public h3(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f86193e = fVar;
        this.f86194f = function2;
    }

    @Override // kotlinx.coroutines.g0
    public void g0(@m8.h Throwable th) {
        if (this.f86193e.t()) {
            h0().Y0(this.f86193e, this.f86194f);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        g0(th);
        return Unit.INSTANCE;
    }
}
