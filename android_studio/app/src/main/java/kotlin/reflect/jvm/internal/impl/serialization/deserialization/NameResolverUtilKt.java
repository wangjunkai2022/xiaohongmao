package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: NameResolverUtil.kt */
/* loaded from: classes4.dex */
public final class NameResolverUtilKt {
    @g
    public static final ClassId getClassId(@g NameResolver nameResolver, int i4) {
        Intrinsics.checkNotNullParameter(nameResolver, "<this>");
        ClassId fromString = ClassId.fromString(nameResolver.getQualifiedClassName(i4), nameResolver.isLocalClassName(i4));
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(getQualifiedC… isLocalClassName(index))");
        return fromString;
    }

    @g
    public static final Name getName(@g NameResolver nameResolver, int i4) {
        Intrinsics.checkNotNullParameter(nameResolver, "<this>");
        Name guessByFirstCharacter = Name.guessByFirstCharacter(nameResolver.getString(i4));
        Intrinsics.checkNotNullExpressionValue(guessByFirstCharacter, "guessByFirstCharacter(getString(index))");
        return guessByFirstCharacter;
    }
}
