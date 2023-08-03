package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: predefinedEnhancementInfo.kt */
/* loaded from: classes4.dex */
public final class TypeEnhancementInfo {
    @g
    private final Map<Integer, JavaTypeQualifiers> map;

    public TypeEnhancementInfo(@g Map<Integer, JavaTypeQualifiers> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.map = map;
    }

    @g
    public final Map<Integer, JavaTypeQualifiers> getMap() {
        return this.map;
    }
}
