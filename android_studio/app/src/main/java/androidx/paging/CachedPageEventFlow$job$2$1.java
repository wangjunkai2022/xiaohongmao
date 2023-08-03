package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.s;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CachedPageEventFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class CachedPageEventFlow$job$2$1 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ CachedPageEventFlow<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedPageEventFlow$job$2$1(CachedPageEventFlow<T> cachedPageEventFlow) {
        super(1);
        this.this$0 = cachedPageEventFlow;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@h Throwable th) {
        s sVar;
        sVar = ((CachedPageEventFlow) this.this$0).mutableSharedSrc;
        sVar.c(null);
    }
}
