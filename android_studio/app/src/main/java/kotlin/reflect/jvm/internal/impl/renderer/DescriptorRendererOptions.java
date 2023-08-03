package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.Set;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: DescriptorRenderer.kt */
/* loaded from: classes4.dex */
public interface DescriptorRendererOptions {

    /* compiled from: DescriptorRenderer.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static boolean getIncludeAnnotationArguments(@g DescriptorRendererOptions descriptorRendererOptions) {
            return descriptorRendererOptions.getAnnotationArgumentsRenderingPolicy().getIncludeAnnotationArguments();
        }

        public static boolean getIncludeEmptyAnnotationArguments(@g DescriptorRendererOptions descriptorRendererOptions) {
            return descriptorRendererOptions.getAnnotationArgumentsRenderingPolicy().getIncludeEmptyAnnotationArguments();
        }
    }

    @g
    AnnotationArgumentsRenderingPolicy getAnnotationArgumentsRenderingPolicy();

    boolean getDebugMode();

    boolean getEnhancedTypes();

    @g
    Set<FqName> getExcludedTypeAnnotationClasses();

    void setAnnotationArgumentsRenderingPolicy(@g AnnotationArgumentsRenderingPolicy annotationArgumentsRenderingPolicy);

    void setClassifierNamePolicy(@g ClassifierNamePolicy classifierNamePolicy);

    void setDebugMode(boolean z9);

    void setExcludedTypeAnnotationClasses(@g Set<FqName> set);

    void setModifiers(@g Set<? extends DescriptorRendererModifier> set);

    void setParameterNameRenderingPolicy(@g ParameterNameRenderingPolicy parameterNameRenderingPolicy);

    void setReceiverAfterName(boolean z9);

    void setRenderCompanionObjectName(boolean z9);

    void setStartFromName(boolean z9);

    void setTextFormat(@g RenderingFormat renderingFormat);

    void setVerbose(boolean z9);

    void setWithDefinedIn(boolean z9);

    void setWithoutSuperTypes(boolean z9);

    void setWithoutTypeParameters(boolean z9);
}
