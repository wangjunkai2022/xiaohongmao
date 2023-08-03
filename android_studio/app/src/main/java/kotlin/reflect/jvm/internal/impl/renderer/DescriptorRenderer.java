package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import m8.g;
import m8.h;

/* compiled from: DescriptorRenderer.kt */
/* loaded from: classes4.dex */
public abstract class DescriptorRenderer {
    @JvmField
    @g
    public static final DescriptorRenderer COMPACT;
    @JvmField
    @g
    public static final DescriptorRenderer COMPACT_WITHOUT_SUPERTYPES;
    @JvmField
    @g
    public static final DescriptorRenderer COMPACT_WITH_MODIFIERS;
    @JvmField
    @g
    public static final DescriptorRenderer COMPACT_WITH_SHORT_TYPES;
    @g
    public static final Companion Companion;
    @JvmField
    @g
    public static final DescriptorRenderer DEBUG_TEXT;
    @JvmField
    @g
    public static final DescriptorRenderer FQ_NAMES_IN_TYPES;
    @JvmField
    @g
    public static final DescriptorRenderer FQ_NAMES_IN_TYPES_WITH_ANNOTATIONS;
    @JvmField
    @g
    public static final DescriptorRenderer HTML;
    @JvmField
    @g
    public static final DescriptorRenderer ONLY_NAMES_WITH_SHORT_TYPES;
    @JvmField
    @g
    public static final DescriptorRenderer SHORT_NAMES_IN_TYPES;

    /* compiled from: DescriptorRenderer.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {

        /* compiled from: DescriptorRenderer.kt */
        /* loaded from: classes4.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ClassKind.values().length];
                iArr[ClassKind.CLASS.ordinal()] = 1;
                iArr[ClassKind.INTERFACE.ordinal()] = 2;
                iArr[ClassKind.ENUM_CLASS.ordinal()] = 3;
                iArr[ClassKind.OBJECT.ordinal()] = 4;
                iArr[ClassKind.ANNOTATION_CLASS.ordinal()] = 5;
                iArr[ClassKind.ENUM_ENTRY.ordinal()] = 6;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final String getClassifierKindPrefix(@g ClassifierDescriptorWithTypeParameters classifier) {
            Intrinsics.checkNotNullParameter(classifier, "classifier");
            if (classifier instanceof TypeAliasDescriptor) {
                return "typealias";
            }
            if (classifier instanceof ClassDescriptor) {
                ClassDescriptor classDescriptor = (ClassDescriptor) classifier;
                if (classDescriptor.isCompanionObject()) {
                    return "companion object";
                }
                switch (WhenMappings.$EnumSwitchMapping$0[classDescriptor.getKind().ordinal()]) {
                    case 1:
                        return "class";
                    case 2:
                        return "interface";
                    case 3:
                        return "enum class";
                    case 4:
                        return "object";
                    case 5:
                        return "annotation class";
                    case 6:
                        return "enum entry";
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
            throw new AssertionError("Unexpected classifier: " + classifier);
        }

        @g
        public final DescriptorRenderer withOptions(@g Function1<? super DescriptorRendererOptions, Unit> changeOptions) {
            Intrinsics.checkNotNullParameter(changeOptions, "changeOptions");
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = new DescriptorRendererOptionsImpl();
            changeOptions.invoke(descriptorRendererOptionsImpl);
            descriptorRendererOptionsImpl.lock();
            return new DescriptorRendererImpl(descriptorRendererOptionsImpl);
        }
    }

    /* compiled from: DescriptorRenderer.kt */
    /* loaded from: classes4.dex */
    public interface ValueParametersHandler {

        /* compiled from: DescriptorRenderer.kt */
        /* loaded from: classes4.dex */
        public static final class DEFAULT implements ValueParametersHandler {
            @g
            public static final DEFAULT INSTANCE = new DEFAULT();

            private DEFAULT() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public void appendAfterValueParameter(@g ValueParameterDescriptor parameter, int i4, int i10, @g StringBuilder builder) {
                Intrinsics.checkNotNullParameter(parameter, "parameter");
                Intrinsics.checkNotNullParameter(builder, "builder");
                if (i4 != i10 - 1) {
                    builder.append(", ");
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public void appendAfterValueParameters(int i4, @g StringBuilder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                builder.append(")");
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public void appendBeforeValueParameter(@g ValueParameterDescriptor parameter, int i4, int i10, @g StringBuilder builder) {
                Intrinsics.checkNotNullParameter(parameter, "parameter");
                Intrinsics.checkNotNullParameter(builder, "builder");
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public void appendBeforeValueParameters(int i4, @g StringBuilder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                builder.append("(");
            }
        }

        void appendAfterValueParameter(@g ValueParameterDescriptor valueParameterDescriptor, int i4, int i10, @g StringBuilder sb);

        void appendAfterValueParameters(int i4, @g StringBuilder sb);

        void appendBeforeValueParameter(@g ValueParameterDescriptor valueParameterDescriptor, int i4, int i10, @g StringBuilder sb);

        void appendBeforeValueParameters(int i4, @g StringBuilder sb);
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        COMPACT_WITH_MODIFIERS = companion.withOptions(DescriptorRenderer$Companion$COMPACT_WITH_MODIFIERS$1.INSTANCE);
        COMPACT = companion.withOptions(DescriptorRenderer$Companion$COMPACT$1.INSTANCE);
        COMPACT_WITHOUT_SUPERTYPES = companion.withOptions(DescriptorRenderer$Companion$COMPACT_WITHOUT_SUPERTYPES$1.INSTANCE);
        COMPACT_WITH_SHORT_TYPES = companion.withOptions(DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1.INSTANCE);
        ONLY_NAMES_WITH_SHORT_TYPES = companion.withOptions(DescriptorRenderer$Companion$ONLY_NAMES_WITH_SHORT_TYPES$1.INSTANCE);
        FQ_NAMES_IN_TYPES = companion.withOptions(DescriptorRenderer$Companion$FQ_NAMES_IN_TYPES$1.INSTANCE);
        FQ_NAMES_IN_TYPES_WITH_ANNOTATIONS = companion.withOptions(DescriptorRenderer$Companion$FQ_NAMES_IN_TYPES_WITH_ANNOTATIONS$1.INSTANCE);
        SHORT_NAMES_IN_TYPES = companion.withOptions(DescriptorRenderer$Companion$SHORT_NAMES_IN_TYPES$1.INSTANCE);
        DEBUG_TEXT = companion.withOptions(DescriptorRenderer$Companion$DEBUG_TEXT$1.INSTANCE);
        HTML = companion.withOptions(DescriptorRenderer$Companion$HTML$1.INSTANCE);
    }

    public static /* synthetic */ String renderAnnotation$default(DescriptorRenderer descriptorRenderer, AnnotationDescriptor annotationDescriptor, AnnotationUseSiteTarget annotationUseSiteTarget, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                annotationUseSiteTarget = null;
            }
            return descriptorRenderer.renderAnnotation(annotationDescriptor, annotationUseSiteTarget);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: renderAnnotation");
    }

    @g
    public abstract String render(@g DeclarationDescriptor declarationDescriptor);

    @g
    public abstract String renderAnnotation(@g AnnotationDescriptor annotationDescriptor, @h AnnotationUseSiteTarget annotationUseSiteTarget);

    @g
    public abstract String renderFlexibleType(@g String str, @g String str2, @g KotlinBuiltIns kotlinBuiltIns);

    @g
    public abstract String renderFqName(@g FqNameUnsafe fqNameUnsafe);

    @g
    public abstract String renderName(@g Name name, boolean z9);

    @g
    public abstract String renderType(@g KotlinType kotlinType);

    @g
    public abstract String renderTypeProjection(@g TypeProjection typeProjection);

    @g
    public final DescriptorRenderer withOptions(@g Function1<? super DescriptorRendererOptions, Unit> changeOptions) {
        Intrinsics.checkNotNullParameter(changeOptions, "changeOptions");
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type org.jetbrains.kotlin.renderer.DescriptorRendererImpl");
        DescriptorRendererOptionsImpl copy = ((DescriptorRendererImpl) this).getOptions().copy();
        changeOptions.invoke(copy);
        copy.lock();
        return new DescriptorRendererImpl(copy);
    }
}
