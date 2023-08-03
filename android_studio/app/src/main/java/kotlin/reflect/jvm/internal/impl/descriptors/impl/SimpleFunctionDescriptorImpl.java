package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import io.sentry.protocol.v;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public class SimpleFunctionDescriptorImpl extends FunctionDescriptorImpl implements SimpleFunctionDescriptor {
    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 13 || i4 == 18 || i4 == 23 || i4 == 24 || i4 == 29 || i4 == 30) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 13 || i4 == 18 || i4 == 23 || i4 == 24 || i4 == 29 || i4 == 30) ? 2 : 3];
        switch (i4) {
            case 1:
            case 6:
            case 27:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 8:
            case 26:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 28:
                objArr[0] = v.b.f83881a;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 15:
            case 20:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case 16:
            case 21:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case 17:
            case 22:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case 14:
            case 19:
                objArr[0] = "contextReceiverParameters";
                break;
            case 25:
                objArr[0] = "newOwner";
                break;
        }
        if (i4 == 13 || i4 == 18 || i4 == 23) {
            objArr[1] = "initialize";
        } else if (i4 == 24) {
            objArr[1] = "getOriginal";
        } else if (i4 == 29) {
            objArr[1] = "copy";
        } else if (i4 != 30) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (i4) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                break;
            case 25:
            case 26:
            case 27:
            case 28:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i4 != 13 && i4 != 18 && i4 != 23 && i4 != 24 && i4 != 29 && i4 != 30) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleFunctionDescriptorImpl(@g DeclarationDescriptor declarationDescriptor, @h SimpleFunctionDescriptor simpleFunctionDescriptor, @g Annotations annotations, @g Name name, @g CallableMemberDescriptor.Kind kind, @g SourceElement sourceElement) {
        super(declarationDescriptor, simpleFunctionDescriptor, annotations, name, kind, sourceElement);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(0);
        }
        if (annotations == null) {
            $$$reportNull$$$0(1);
        }
        if (name == null) {
            $$$reportNull$$$0(2);
        }
        if (kind == null) {
            $$$reportNull$$$0(3);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(4);
        }
    }

    @g
    public static SimpleFunctionDescriptorImpl create(@g DeclarationDescriptor declarationDescriptor, @g Annotations annotations, @g Name name, @g CallableMemberDescriptor.Kind kind, @g SourceElement sourceElement) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(5);
        }
        if (annotations == null) {
            $$$reportNull$$$0(6);
        }
        if (name == null) {
            $$$reportNull$$$0(7);
        }
        if (kind == null) {
            $$$reportNull$$$0(8);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(9);
        }
        return new SimpleFunctionDescriptorImpl(declarationDescriptor, null, annotations, name, kind, sourceElement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    @g
    protected FunctionDescriptorImpl createSubstitutedCopy(@g DeclarationDescriptor declarationDescriptor, @h FunctionDescriptor functionDescriptor, @g CallableMemberDescriptor.Kind kind, @h Name name, @g Annotations annotations, @g SourceElement sourceElement) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(25);
        }
        if (kind == null) {
            $$$reportNull$$$0(26);
        }
        if (annotations == null) {
            $$$reportNull$$$0(27);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(28);
        }
        SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) functionDescriptor;
        if (name == null) {
            name = getName();
        }
        return new SimpleFunctionDescriptorImpl(declarationDescriptor, simpleFunctionDescriptor, annotations, name, kind, sourceElement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public /* bridge */ /* synthetic */ FunctionDescriptorImpl initialize(ReceiverParameterDescriptor receiverParameterDescriptor, ReceiverParameterDescriptor receiverParameterDescriptor2, List list, List list2, List list3, KotlinType kotlinType, Modality modality, DescriptorVisibility descriptorVisibility) {
        return initialize(receiverParameterDescriptor, receiverParameterDescriptor2, (List<ReceiverParameterDescriptor>) list, (List<? extends TypeParameterDescriptor>) list2, (List<ValueParameterDescriptor>) list3, kotlinType, modality, descriptorVisibility);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    @g
    public FunctionDescriptor.CopyBuilder<? extends SimpleFunctionDescriptor> newCopyBuilder() {
        FunctionDescriptor.CopyBuilder newCopyBuilder = super.newCopyBuilder();
        if (newCopyBuilder == null) {
            $$$reportNull$$$0(30);
        }
        return newCopyBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    @g
    public SimpleFunctionDescriptorImpl initialize(@h ReceiverParameterDescriptor receiverParameterDescriptor, @h ReceiverParameterDescriptor receiverParameterDescriptor2, @g List<ReceiverParameterDescriptor> list, @g List<? extends TypeParameterDescriptor> list2, @g List<ValueParameterDescriptor> list3, @h KotlinType kotlinType, @h Modality modality, @g DescriptorVisibility descriptorVisibility) {
        if (list == null) {
            $$$reportNull$$$0(14);
        }
        if (list2 == null) {
            $$$reportNull$$$0(15);
        }
        if (list3 == null) {
            $$$reportNull$$$0(16);
        }
        if (descriptorVisibility == null) {
            $$$reportNull$$$0(17);
        }
        SimpleFunctionDescriptorImpl initialize = initialize(receiverParameterDescriptor, receiverParameterDescriptor2, list, list2, list3, kotlinType, modality, descriptorVisibility, null);
        if (initialize == null) {
            $$$reportNull$$$0(18);
        }
        return initialize;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    @g
    public SimpleFunctionDescriptor copy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, CallableMemberDescriptor.Kind kind, boolean z9) {
        SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) super.copy(declarationDescriptor, modality, descriptorVisibility, kind, z9);
        if (simpleFunctionDescriptor == null) {
            $$$reportNull$$$0(29);
        }
        return simpleFunctionDescriptor;
    }

    @g
    public SimpleFunctionDescriptorImpl initialize(@h ReceiverParameterDescriptor receiverParameterDescriptor, @h ReceiverParameterDescriptor receiverParameterDescriptor2, @g List<ReceiverParameterDescriptor> list, @g List<? extends TypeParameterDescriptor> list2, @g List<ValueParameterDescriptor> list3, @h KotlinType kotlinType, @h Modality modality, @g DescriptorVisibility descriptorVisibility, @h Map<? extends CallableDescriptor.UserDataKey<?>, ?> map) {
        if (list == null) {
            $$$reportNull$$$0(19);
        }
        if (list2 == null) {
            $$$reportNull$$$0(20);
        }
        if (list3 == null) {
            $$$reportNull$$$0(21);
        }
        if (descriptorVisibility == null) {
            $$$reportNull$$$0(22);
        }
        super.initialize(receiverParameterDescriptor, receiverParameterDescriptor2, list, list2, list3, kotlinType, modality, descriptorVisibility);
        if (map != null && !map.isEmpty()) {
            this.userDataMap = new LinkedHashMap(map);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public SimpleFunctionDescriptor getOriginal() {
        SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) super.getOriginal();
        if (simpleFunctionDescriptor == null) {
            $$$reportNull$$$0(24);
        }
        return simpleFunctionDescriptor;
    }
}
