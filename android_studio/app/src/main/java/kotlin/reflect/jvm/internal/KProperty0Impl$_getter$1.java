package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.KProperty0Impl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KProperty0Impl.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u0002H\u0002 \u0003*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00010\u0001\"\u0006\b\u0000\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KProperty0Impl$_getter$1 extends Lambda implements Function0<KProperty0Impl.Getter<? extends V>> {
    final /* synthetic */ KProperty0Impl<V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KProperty0Impl$_getter$1(KProperty0Impl<? extends V> kProperty0Impl) {
        super(0);
        this.this$0 = kProperty0Impl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final KProperty0Impl.Getter<V> invoke() {
        return new KProperty0Impl.Getter<>(this.this$0);
    }
}