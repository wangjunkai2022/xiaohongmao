package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JvmBuiltInsCustomizer.kt */
/* loaded from: classes4.dex */
public final class JvmBuiltInsCustomizer$createMockJavaIoSerializableType$superTypes$1 extends Lambda implements Function0<KotlinType> {
    final /* synthetic */ JvmBuiltInsCustomizer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmBuiltInsCustomizer$createMockJavaIoSerializableType$superTypes$1(JvmBuiltInsCustomizer jvmBuiltInsCustomizer) {
        super(0);
        this.this$0 = jvmBuiltInsCustomizer;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final KotlinType invoke() {
        ModuleDescriptor moduleDescriptor;
        moduleDescriptor = this.this$0.moduleDescriptor;
        SimpleType anyType = moduleDescriptor.getBuiltIns().getAnyType();
        Intrinsics.checkNotNullExpressionValue(anyType, "moduleDescriptor.builtIns.anyType");
        return anyType;
    }
}
