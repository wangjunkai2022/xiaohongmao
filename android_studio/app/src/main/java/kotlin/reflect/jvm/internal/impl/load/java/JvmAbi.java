package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;

/* compiled from: JvmAbi.kt */
/* loaded from: classes4.dex */
public final class JvmAbi {
    @g
    public static final JvmAbi INSTANCE = new JvmAbi();
    @JvmField
    @g
    public static final ClassId JVM_FIELD_ANNOTATION_CLASS_ID;
    @JvmField
    @g
    public static final FqName JVM_FIELD_ANNOTATION_FQ_NAME;
    @g
    private static final ClassId REFLECTION_FACTORY_IMPL;
    @g
    private static final ClassId REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION;

    static {
        FqName fqName = new FqName("kotlin.jvm.JvmField");
        JVM_FIELD_ANNOTATION_FQ_NAME = fqName;
        ClassId classId = ClassId.topLevel(fqName);
        Intrinsics.checkNotNullExpressionValue(classId, "topLevel(JVM_FIELD_ANNOTATION_FQ_NAME)");
        JVM_FIELD_ANNOTATION_CLASS_ID = classId;
        ClassId classId2 = ClassId.topLevel(new FqName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        Intrinsics.checkNotNullExpressionValue(classId2, "topLevel(FqName(\"kotlin.….ReflectionFactoryImpl\"))");
        REFLECTION_FACTORY_IMPL = classId2;
        ClassId fromString = ClassId.fromString("kotlin/jvm/internal/RepeatableContainer");
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(\"kotlin/jvm/i…nal/RepeatableContainer\")");
        REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION = fromString;
    }

    private JvmAbi() {
    }

    @JvmStatic
    @g
    public static final String getterName(@g String propertyName) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        if (startsWithIsPrefix(propertyName)) {
            return propertyName;
        }
        return "get" + CapitalizeDecapitalizeKt.capitalizeAsciiOnly(propertyName);
    }

    @JvmStatic
    public static final boolean isGetterName(@g String name) {
        boolean startsWith$default;
        boolean startsWith$default2;
        Intrinsics.checkNotNullParameter(name, "name");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "get", false, 2, null);
        if (!startsWith$default) {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(name, "is", false, 2, null);
            if (!startsWith$default2) {
                return false;
            }
        }
        return true;
    }

    @JvmStatic
    public static final boolean isSetterName(@g String name) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(name, "name");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "set", false, 2, null);
        return startsWith$default;
    }

    @JvmStatic
    @g
    public static final String setterName(@g String propertyName) {
        String capitalizeAsciiOnly;
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        StringBuilder sb = new StringBuilder();
        sb.append("set");
        if (startsWithIsPrefix(propertyName)) {
            capitalizeAsciiOnly = propertyName.substring(2);
            Intrinsics.checkNotNullExpressionValue(capitalizeAsciiOnly, "this as java.lang.String).substring(startIndex)");
        } else {
            capitalizeAsciiOnly = CapitalizeDecapitalizeKt.capitalizeAsciiOnly(propertyName);
        }
        sb.append(capitalizeAsciiOnly);
        return sb.toString();
    }

    @JvmStatic
    public static final boolean startsWithIsPrefix(@g String name) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(name, "name");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "is", false, 2, null);
        if (startsWith$default && name.length() != 2) {
            char charAt = name.charAt(2);
            return Intrinsics.compare(97, (int) charAt) > 0 || Intrinsics.compare((int) charAt, 122) > 0;
        }
        return false;
    }

    @g
    public final ClassId getREPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION() {
        return REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION;
    }
}
