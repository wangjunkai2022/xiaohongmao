package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/c3;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/p2;", "", "cause", "", "g0", "Lkotlinx/coroutines/r;", "e", "Lkotlinx/coroutines/r;", "continuation", "<init>", "(Lkotlinx/coroutines/r;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class c3<T> extends p2 {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final r<T> f84801e;

    /* JADX WARN: Multi-variable type inference failed */
    public c3(@m8.g r<? super T> rVar) {
        this.f84801e = rVar;
    }

    @Override // kotlinx.coroutines.g0
    public void g0(@m8.h Throwable th) {
        Object y02 = h0().y0();
        if (y02 instanceof e0) {
            r<T> rVar = this.f84801e;
            Result.Companion companion = Result.Companion;
            rVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(((e0) y02).f85246a)));
            return;
        }
        r<T> rVar2 = this.f84801e;
        Result.Companion companion2 = Result.Companion;
        rVar2.resumeWith(Result.m70constructorimpl(r2.o(y02)));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        g0(th);
        return Unit.INSTANCE;
    }
}
