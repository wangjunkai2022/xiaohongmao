package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import m8.g;

/* compiled from: ClassifierNamePolicy.kt */
/* loaded from: classes4.dex */
public interface ClassifierNamePolicy {

    /* compiled from: ClassifierNamePolicy.kt */
    /* loaded from: classes4.dex */
    public static final class FULLY_QUALIFIED implements ClassifierNamePolicy {
        @g
        public static final FULLY_QUALIFIED INSTANCE = new FULLY_QUALIFIED();

        private FULLY_QUALIFIED() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.ClassifierNamePolicy
        @g
        public String renderClassifier(@g ClassifierDescriptor classifier, @g DescriptorRenderer renderer) {
            Intrinsics.checkNotNullParameter(classifier, "classifier");
            Intrinsics.checkNotNullParameter(renderer, "renderer");
            if (classifier instanceof TypeParameterDescriptor) {
                Name name = ((TypeParameterDescriptor) classifier).getName();
                Intrinsics.checkNotNullExpressionValue(name, "classifier.name");
                return renderer.renderName(name, false);
            }
            FqNameUnsafe fqName = DescriptorUtils.getFqName(classifier);
            Intrinsics.checkNotNullExpressionValue(fqName, "getFqName(classifier)");
            return renderer.renderFqName(fqName);
        }
    }

    /* compiled from: ClassifierNamePolicy.kt */
    /* loaded from: classes4.dex */
    public static final class SHORT implements ClassifierNamePolicy {
        @g
        public static final SHORT INSTANCE = new SHORT();

        private SHORT() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.ClassifierNamePolicy
        @g
        public String renderClassifier(@g ClassifierDescriptor classifier, @g DescriptorRenderer renderer) {
            boolean z9;
            List asReversedMutable;
            Intrinsics.checkNotNullParameter(classifier, "classifier");
            Intrinsics.checkNotNullParameter(renderer, "renderer");
            if (classifier instanceof TypeParameterDescriptor) {
                Name name = ((TypeParameterDescriptor) classifier).getName();
                Intrinsics.checkNotNullExpressionValue(name, "classifier.name");
                return renderer.renderName(name, false);
            }
            ArrayList arrayList = new ArrayList();
            ClassifierDescriptor classifierDescriptor = classifier;
            do {
                arrayList.add(classifierDescriptor.getName());
                DeclarationDescriptor containingDeclaration = classifierDescriptor.getContainingDeclaration();
                z9 = containingDeclaration instanceof ClassDescriptor;
                classifierDescriptor = containingDeclaration;
            } while (z9);
            asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(arrayList);
            return RenderingUtilsKt.renderFqName(asReversedMutable);
        }
    }

    /* compiled from: ClassifierNamePolicy.kt */
    /* loaded from: classes4.dex */
    public static final class SOURCE_CODE_QUALIFIED implements ClassifierNamePolicy {
        @g
        public static final SOURCE_CODE_QUALIFIED INSTANCE = new SOURCE_CODE_QUALIFIED();

        private SOURCE_CODE_QUALIFIED() {
        }

        private final String qualifiedNameForSourceCode(ClassifierDescriptor classifierDescriptor) {
            Name name = classifierDescriptor.getName();
            Intrinsics.checkNotNullExpressionValue(name, "descriptor.name");
            String render = RenderingUtilsKt.render(name);
            if (classifierDescriptor instanceof TypeParameterDescriptor) {
                return render;
            }
            DeclarationDescriptor containingDeclaration = classifierDescriptor.getContainingDeclaration();
            Intrinsics.checkNotNullExpressionValue(containingDeclaration, "descriptor.containingDeclaration");
            String qualifierName = qualifierName(containingDeclaration);
            if (qualifierName == null || Intrinsics.areEqual(qualifierName, "")) {
                return render;
            }
            return qualifierName + '.' + render;
        }

        private final String qualifierName(DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor instanceof ClassDescriptor) {
                return qualifiedNameForSourceCode((ClassifierDescriptor) declarationDescriptor);
            }
            if (declarationDescriptor instanceof PackageFragmentDescriptor) {
                FqNameUnsafe unsafe = ((PackageFragmentDescriptor) declarationDescriptor).getFqName().toUnsafe();
                Intrinsics.checkNotNullExpressionValue(unsafe, "descriptor.fqName.toUnsafe()");
                return RenderingUtilsKt.render(unsafe);
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.ClassifierNamePolicy
        @g
        public String renderClassifier(@g ClassifierDescriptor classifier, @g DescriptorRenderer renderer) {
            Intrinsics.checkNotNullParameter(classifier, "classifier");
            Intrinsics.checkNotNullParameter(renderer, "renderer");
            return qualifiedNameForSourceCode(classifier);
        }
    }

    @g
    String renderClassifier(@g ClassifierDescriptor classifierDescriptor, @g DescriptorRenderer descriptorRenderer);
}
