package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.q;
import m8.h;

/* compiled from: SimpleChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class SimpleProducerScopeImpl$awaitClose$2$1 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ q<Unit> $cont;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SimpleProducerScopeImpl$awaitClose$2$1(q<? super Unit> qVar) {
        super(1);
        this.$cont = qVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@h Throwable th) {
        q<Unit> qVar = this.$cont;
        Unit unit = Unit.INSTANCE;
        Result.Companion companion = Result.Companion;
        qVar.resumeWith(Result.m70constructorimpl(unit));
    }
}
