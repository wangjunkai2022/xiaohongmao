package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: DescriptorRendererOptionsImpl.kt */
/* loaded from: classes4.dex */
final class DescriptorRendererOptionsImpl$typeNormalizer$2 extends Lambda implements Function1<KotlinType, KotlinType> {
    public static final DescriptorRendererOptionsImpl$typeNormalizer$2 INSTANCE = new DescriptorRendererOptionsImpl$typeNormalizer$2();

    DescriptorRendererOptionsImpl$typeNormalizer$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final KotlinType invoke(@g KotlinType it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it;
    }
}
