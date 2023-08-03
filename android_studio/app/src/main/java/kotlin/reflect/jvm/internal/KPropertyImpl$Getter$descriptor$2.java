package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KPropertyImpl.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b\u0000\u0010\u0003 \u0001\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;", "kotlin.jvm.PlatformType", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KPropertyImpl$Getter$descriptor$2 extends Lambda implements Function0<PropertyGetterDescriptor> {
    final /* synthetic */ KPropertyImpl.Getter<V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KPropertyImpl$Getter$descriptor$2(KPropertyImpl.Getter<? extends V> getter) {
        super(0);
        this.this$0 = getter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final PropertyGetterDescriptor invoke() {
        PropertyGetterDescriptor getter = this.this$0.getProperty().getDescriptor().getGetter();
        return getter == null ? DescriptorFactory.createDefaultGetter(this.this$0.getProperty().getDescriptor(), Annotations.Companion.getEMPTY()) : getter;
    }
}
