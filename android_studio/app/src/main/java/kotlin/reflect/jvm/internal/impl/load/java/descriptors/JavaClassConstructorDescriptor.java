package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import io.sentry.protocol.v;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public class JavaClassConstructorDescriptor extends ClassConstructorDescriptorImpl implements JavaCallableMemberDescriptor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Boolean hasStableParameterNames;
    private Boolean hasSynthesizedParameterNames;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 11 || i4 == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 11 || i4 == 18) ? 2 : 3];
        switch (i4) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = v.b.f83881a;
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i4 == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i4 != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i4) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i4 != 11 && i4 != 18) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected JavaClassConstructorDescriptor(@g ClassDescriptor classDescriptor, @h JavaClassConstructorDescriptor javaClassConstructorDescriptor, @g Annotations annotations, boolean z9, @g CallableMemberDescriptor.Kind kind, @g SourceElement sourceElement) {
        super(classDescriptor, javaClassConstructorDescriptor, annotations, z9, kind, sourceElement);
        if (classDescriptor == null) {
            $$$reportNull$$$0(0);
        }
        if (annotations == null) {
            $$$reportNull$$$0(1);
        }
        if (kind == null) {
            $$$reportNull$$$0(2);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(3);
        }
        this.hasStableParameterNames = null;
        this.hasSynthesizedParameterNames = null;
    }

    @g
    public static JavaClassConstructorDescriptor createJavaConstructor(@g ClassDescriptor classDescriptor, @g Annotations annotations, boolean z9, @g SourceElement sourceElement) {
        if (classDescriptor == null) {
            $$$reportNull$$$0(4);
        }
        if (annotations == null) {
            $$$reportNull$$$0(5);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(6);
        }
        return new JavaClassConstructorDescriptor(classDescriptor, null, annotations, z9, CallableMemberDescriptor.Kind.DECLARATION, sourceElement);
    }

    @g
    protected JavaClassConstructorDescriptor createDescriptor(@g ClassDescriptor classDescriptor, @h JavaClassConstructorDescriptor javaClassConstructorDescriptor, @g CallableMemberDescriptor.Kind kind, @g SourceElement sourceElement, @g Annotations annotations) {
        if (classDescriptor == null) {
            $$$reportNull$$$0(12);
        }
        if (kind == null) {
            $$$reportNull$$$0(13);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(14);
        }
        if (annotations == null) {
            $$$reportNull$$$0(15);
        }
        return new JavaClassConstructorDescriptor(classDescriptor, javaClassConstructorDescriptor, annotations, this.isPrimary, kind, sourceElement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor
    public /* bridge */ /* synthetic */ JavaCallableMemberDescriptor enhance(KotlinType kotlinType, List list, KotlinType kotlinType2, Pair pair) {
        return enhance(kotlinType, (List<KotlinType>) list, kotlinType2, (Pair<CallableDescriptor.UserDataKey<?>, ?>) pair);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public boolean hasStableParameterNames() {
        return this.hasStableParameterNames.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public boolean hasSynthesizedParameterNames() {
        return this.hasSynthesizedParameterNames.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void setHasStableParameterNames(boolean z9) {
        this.hasStableParameterNames = Boolean.valueOf(z9);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void setHasSynthesizedParameterNames(boolean z9) {
        this.hasSynthesizedParameterNames = Boolean.valueOf(z9);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor
    @g
    public JavaClassConstructorDescriptor enhance(@h KotlinType kotlinType, @g List<KotlinType> list, @g KotlinType kotlinType2, @h Pair<CallableDescriptor.UserDataKey<?>, ?> pair) {
        List<ReceiverParameterDescriptor> emptyList;
        if (list == null) {
            $$$reportNull$$$0(16);
        }
        if (kotlinType2 == null) {
            $$$reportNull$$$0(17);
        }
        JavaClassConstructorDescriptor createSubstitutedCopy = createSubstitutedCopy((DeclarationDescriptor) getContainingDeclaration(), (FunctionDescriptor) null, getKind(), (Name) null, getAnnotations(), getSource());
        ReceiverParameterDescriptor createExtensionReceiverParameterForCallable = kotlinType == null ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(createSubstitutedCopy, kotlinType, Annotations.Companion.getEMPTY());
        ReceiverParameterDescriptor dispatchReceiverParameter = getDispatchReceiverParameter();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        createSubstitutedCopy.initialize(createExtensionReceiverParameterForCallable, dispatchReceiverParameter, emptyList, getTypeParameters(), UtilKt.copyValueParameters(list, getValueParameters(), createSubstitutedCopy), kotlinType2, getModality(), getVisibility());
        if (pair != null) {
            createSubstitutedCopy.putInUserDataMap(pair.getFirst(), pair.getSecond());
        }
        return createSubstitutedCopy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    @g
    public JavaClassConstructorDescriptor createSubstitutedCopy(@g DeclarationDescriptor declarationDescriptor, @h FunctionDescriptor functionDescriptor, @g CallableMemberDescriptor.Kind kind, @h Name name, @g Annotations annotations, @g SourceElement sourceElement) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(7);
        }
        if (kind == null) {
            $$$reportNull$$$0(8);
        }
        if (annotations == null) {
            $$$reportNull$$$0(9);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(10);
        }
        if (kind != CallableMemberDescriptor.Kind.DECLARATION && kind != CallableMemberDescriptor.Kind.SYNTHESIZED) {
            throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + declarationDescriptor + "\nkind: " + kind);
        }
        JavaClassConstructorDescriptor createDescriptor = createDescriptor((ClassDescriptor) declarationDescriptor, (JavaClassConstructorDescriptor) functionDescriptor, kind, sourceElement, annotations);
        createDescriptor.setHasStableParameterNames(hasStableParameterNames());
        createDescriptor.setHasSynthesizedParameterNames(hasSynthesizedParameterNames());
        return createDescriptor;
    }
}
