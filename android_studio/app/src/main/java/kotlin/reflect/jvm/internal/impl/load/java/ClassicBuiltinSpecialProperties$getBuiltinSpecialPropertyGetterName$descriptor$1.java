package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import m8.g;

/* compiled from: ClassicBuiltinSpecialProperties.kt */
/* loaded from: classes4.dex */
final class ClassicBuiltinSpecialProperties$getBuiltinSpecialPropertyGetterName$descriptor$1 extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
    public static final ClassicBuiltinSpecialProperties$getBuiltinSpecialPropertyGetterName$descriptor$1 INSTANCE = new ClassicBuiltinSpecialProperties$getBuiltinSpecialPropertyGetterName$descriptor$1();

    ClassicBuiltinSpecialProperties$getBuiltinSpecialPropertyGetterName$descriptor$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g CallableMemberDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(ClassicBuiltinSpecialProperties.INSTANCE.hasBuiltinSpecialPropertyFqName(it));
    }
}
