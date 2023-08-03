package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: predefinedEnhancementInfo.kt */
/* loaded from: classes4.dex */
public final class PredefinedFunctionEnhancementInfo {
    @g
    private final List<TypeEnhancementInfo> parametersInfo;
    @h
    private final TypeEnhancementInfo returnTypeInfo;

    public PredefinedFunctionEnhancementInfo() {
        this(null, null, 3, null);
    }

    public PredefinedFunctionEnhancementInfo(@h TypeEnhancementInfo typeEnhancementInfo, @g List<TypeEnhancementInfo> parametersInfo) {
        Intrinsics.checkNotNullParameter(parametersInfo, "parametersInfo");
        this.returnTypeInfo = typeEnhancementInfo;
        this.parametersInfo = parametersInfo;
    }

    @g
    public final List<TypeEnhancementInfo> getParametersInfo() {
        return this.parametersInfo;
    }

    @h
    public final TypeEnhancementInfo getReturnTypeInfo() {
        return this.returnTypeInfo;
    }

    public /* synthetic */ PredefinedFunctionEnhancementInfo(TypeEnhancementInfo typeEnhancementInfo, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : typeEnhancementInfo, (i4 & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}
