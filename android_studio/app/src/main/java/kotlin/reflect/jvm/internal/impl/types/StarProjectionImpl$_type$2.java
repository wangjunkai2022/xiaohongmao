package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StarProjectionImpl.kt */
/* loaded from: classes4.dex */
public final class StarProjectionImpl$_type$2 extends Lambda implements Function0<KotlinType> {
    final /* synthetic */ StarProjectionImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StarProjectionImpl$_type$2(StarProjectionImpl starProjectionImpl) {
        super(0);
        this.this$0 = starProjectionImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final KotlinType invoke() {
        TypeParameterDescriptor typeParameterDescriptor;
        typeParameterDescriptor = this.this$0.typeParameter;
        return StarProjectionImplKt.starProjectionType(typeParameterDescriptor);
    }
}
