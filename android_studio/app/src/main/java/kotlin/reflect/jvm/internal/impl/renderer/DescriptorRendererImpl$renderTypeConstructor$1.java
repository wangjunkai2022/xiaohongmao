package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.StubTypeForBuilderInference;
import m8.g;

/* compiled from: DescriptorRendererImpl.kt */
/* loaded from: classes4.dex */
final class DescriptorRendererImpl$renderTypeConstructor$1 extends Lambda implements Function1<KotlinType, Object> {
    public static final DescriptorRendererImpl$renderTypeConstructor$1 INSTANCE = new DescriptorRendererImpl$renderTypeConstructor$1();

    DescriptorRendererImpl$renderTypeConstructor$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Object invoke(@g KotlinType it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it instanceof StubTypeForBuilderInference ? ((StubTypeForBuilderInference) it).getOriginalTypeVariable() : it;
    }
}
