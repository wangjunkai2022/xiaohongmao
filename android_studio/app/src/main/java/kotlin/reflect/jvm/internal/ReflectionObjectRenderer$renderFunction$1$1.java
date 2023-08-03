package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: ReflectionObjectRenderer.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
final class ReflectionObjectRenderer$renderFunction$1$1 extends Lambda implements Function1<ValueParameterDescriptor, CharSequence> {
    public static final ReflectionObjectRenderer$renderFunction$1$1 INSTANCE = new ReflectionObjectRenderer$renderFunction$1$1();

    ReflectionObjectRenderer$renderFunction$1$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final CharSequence invoke(ValueParameterDescriptor valueParameterDescriptor) {
        ReflectionObjectRenderer reflectionObjectRenderer = ReflectionObjectRenderer.INSTANCE;
        KotlinType type = valueParameterDescriptor.getType();
        Intrinsics.checkNotNullExpressionValue(type, "it.type");
        return reflectionObjectRenderer.renderType(type);
    }
}
