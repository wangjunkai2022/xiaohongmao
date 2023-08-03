package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KProperty0Impl.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\b\u0000\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KProperty0Impl$delegateValue$1 extends Lambda implements Function0<Object> {
    final /* synthetic */ KProperty0Impl<V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KProperty0Impl$delegateValue$1(KProperty0Impl<? extends V> kProperty0Impl) {
        super(0);
        this.this$0 = kProperty0Impl;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final Object invoke() {
        KPropertyImpl kPropertyImpl = this.this$0;
        return kPropertyImpl.getDelegateImpl(kPropertyImpl.computeDelegateSource(), null, null);
    }
}
