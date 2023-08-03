package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import m8.g;
import m8.h;

/* compiled from: JavaTypeResolver.kt */
/* loaded from: classes4.dex */
public final class JavaTypeResolverKt {
    @g
    private static final FqName JAVA_LANG_CLASS_FQ_NAME = new FqName("java.lang.Class");

    public static final /* synthetic */ FqName access$getJAVA_LANG_CLASS_FQ_NAME$p() {
        return JAVA_LANG_CLASS_FQ_NAME;
    }

    @g
    public static final TypeProjection makeStarProjection(@g TypeParameterDescriptor typeParameter, @g JavaTypeAttributes attr) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        Intrinsics.checkNotNullParameter(attr, "attr");
        if (attr.getHowThisTypeIsUsed() == TypeUsage.SUPERTYPE) {
            return new TypeProjectionImpl(StarProjectionImplKt.starProjectionType(typeParameter));
        }
        return new StarProjectionImpl(typeParameter);
    }

    @g
    public static final JavaTypeAttributes toAttributes(@g TypeUsage typeUsage, boolean z9, @h TypeParameterDescriptor typeParameterDescriptor) {
        Intrinsics.checkNotNullParameter(typeUsage, "<this>");
        return new JavaTypeAttributes(typeUsage, null, z9, typeParameterDescriptor != null ? SetsKt__SetsJVMKt.setOf(typeParameterDescriptor) : null, null, 18, null);
    }

    public static /* synthetic */ JavaTypeAttributes toAttributes$default(TypeUsage typeUsage, boolean z9, TypeParameterDescriptor typeParameterDescriptor, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        if ((i4 & 2) != 0) {
            typeParameterDescriptor = null;
        }
        return toAttributes(typeUsage, z9, typeParameterDescriptor);
    }
}
