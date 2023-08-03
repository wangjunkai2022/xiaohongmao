package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import m8.g;

/* compiled from: annotationUtil.kt */
/* loaded from: classes4.dex */
public final class AnnotationUtilKt {
    @g
    private static final Name DEPRECATED_LEVEL_NAME;
    @g
    private static final Name DEPRECATED_MESSAGE_NAME;
    @g
    private static final Name DEPRECATED_REPLACE_WITH_NAME;
    @g
    private static final Name REPLACE_WITH_EXPRESSION_NAME;
    @g
    private static final Name REPLACE_WITH_IMPORTS_NAME;

    static {
        Name identifier = Name.identifier("message");
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(\"message\")");
        DEPRECATED_MESSAGE_NAME = identifier;
        Name identifier2 = Name.identifier("replaceWith");
        Intrinsics.checkNotNullExpressionValue(identifier2, "identifier(\"replaceWith\")");
        DEPRECATED_REPLACE_WITH_NAME = identifier2;
        Name identifier3 = Name.identifier("level");
        Intrinsics.checkNotNullExpressionValue(identifier3, "identifier(\"level\")");
        DEPRECATED_LEVEL_NAME = identifier3;
        Name identifier4 = Name.identifier("expression");
        Intrinsics.checkNotNullExpressionValue(identifier4, "identifier(\"expression\")");
        REPLACE_WITH_EXPRESSION_NAME = identifier4;
        Name identifier5 = Name.identifier("imports");
        Intrinsics.checkNotNullExpressionValue(identifier5, "identifier(\"imports\")");
        REPLACE_WITH_IMPORTS_NAME = identifier5;
    }

    @g
    public static final AnnotationDescriptor createDeprecatedAnnotation(@g KotlinBuiltIns kotlinBuiltIns, @g String message, @g String replaceWith, @g String level) {
        List emptyList;
        Map mapOf;
        Map mapOf2;
        Intrinsics.checkNotNullParameter(kotlinBuiltIns, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(replaceWith, "replaceWith");
        Intrinsics.checkNotNullParameter(level, "level");
        FqName fqName = StandardNames.FqNames.replaceWith;
        Name name = REPLACE_WITH_IMPORTS_NAME;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(REPLACE_WITH_EXPRESSION_NAME, new StringValue(replaceWith)), TuplesKt.to(name, new ArrayValue(emptyList, new AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1(kotlinBuiltIns))));
        BuiltInAnnotationDescriptor builtInAnnotationDescriptor = new BuiltInAnnotationDescriptor(kotlinBuiltIns, fqName, mapOf);
        FqName fqName2 = StandardNames.FqNames.deprecated;
        Name name2 = DEPRECATED_LEVEL_NAME;
        ClassId classId = ClassId.topLevel(StandardNames.FqNames.deprecationLevel);
        Intrinsics.checkNotNullExpressionValue(classId, "topLevel(StandardNames.FqNames.deprecationLevel)");
        Name identifier = Name.identifier(level);
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(level)");
        mapOf2 = MapsKt__MapsKt.mapOf(TuplesKt.to(DEPRECATED_MESSAGE_NAME, new StringValue(message)), TuplesKt.to(DEPRECATED_REPLACE_WITH_NAME, new AnnotationValue(builtInAnnotationDescriptor)), TuplesKt.to(name2, new EnumValue(classId, identifier)));
        return new BuiltInAnnotationDescriptor(kotlinBuiltIns, fqName2, mapOf2);
    }

    public static /* synthetic */ AnnotationDescriptor createDeprecatedAnnotation$default(KotlinBuiltIns kotlinBuiltIns, String str, String str2, String str3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str2 = "";
        }
        if ((i4 & 4) != 0) {
            str3 = "WARNING";
        }
        return createDeprecatedAnnotation(kotlinBuiltIns, str, str2, str3);
    }
}
