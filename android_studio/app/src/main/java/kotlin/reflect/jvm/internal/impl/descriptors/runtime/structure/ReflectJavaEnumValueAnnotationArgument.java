package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaAnnotationArguments.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaEnumValueAnnotationArgument extends ReflectJavaAnnotationArgument implements JavaEnumValueAnnotationArgument {
    @g
    private final Enum<?> value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReflectJavaEnumValueAnnotationArgument(@h Name name, @g Enum<?> value) {
        super(name, null);
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaEnumValueAnnotationArgument
    @h
    public Name getEntryName() {
        return Name.identifier(this.value.name());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaEnumValueAnnotationArgument
    @h
    public ClassId getEnumClassId() {
        Class<?> enumClass = this.value.getClass();
        if (!enumClass.isEnum()) {
            enumClass = enumClass.getEnclosingClass();
        }
        Intrinsics.checkNotNullExpressionValue(enumClass, "enumClass");
        return ReflectClassUtilKt.getClassId(enumClass);
    }
}
