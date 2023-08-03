package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: DescriptorRenderer.kt */
/* loaded from: classes4.dex */
public final class ExcludedTypeAnnotations {
    @g
    public static final ExcludedTypeAnnotations INSTANCE = new ExcludedTypeAnnotations();
    @g
    private static final Set<FqName> internalAnnotationsForResolve;

    static {
        Set<FqName> of;
        of = SetsKt__SetsKt.setOf((Object[]) new FqName[]{new FqName("kotlin.internal.NoInfer"), new FqName("kotlin.internal.Exact")});
        internalAnnotationsForResolve = of;
    }

    private ExcludedTypeAnnotations() {
    }

    @g
    public final Set<FqName> getInternalAnnotationsForResolve() {
        return internalAnnotationsForResolve;
    }
}
