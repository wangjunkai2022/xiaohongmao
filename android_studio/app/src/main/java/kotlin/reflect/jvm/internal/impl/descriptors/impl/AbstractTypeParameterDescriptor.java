package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import io.sentry.protocol.v;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public abstract class AbstractTypeParameterDescriptor extends DeclarationDescriptorNonRootImpl implements TypeParameterDescriptor {
    private final NotNullLazyValue<SimpleType> defaultType;
    private final int index;
    private final boolean reified;
    private final StorageManager storageManager;
    private final NotNullLazyValue<TypeConstructor> typeConstructor;
    private final Variance variance;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class TypeParameterTypeConstructor extends AbstractTypeConstructor {
        private final SupertypeLoopChecker supertypeLoopChecker;
        final /* synthetic */ AbstractTypeParameterDescriptor this$0;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5 || i4 == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5 || i4 == 8) ? 2 : 3];
            switch (i4) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
                    break;
                case 6:
                    objArr[0] = "type";
                    break;
                case 7:
                    objArr[0] = "supertypes";
                    break;
                case 9:
                    objArr[0] = "classifier";
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (i4 == 1) {
                objArr[1] = "computeSupertypes";
            } else if (i4 == 2) {
                objArr[1] = "getParameters";
            } else if (i4 == 3) {
                objArr[1] = "getDeclarationDescriptor";
            } else if (i4 == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i4 == 5) {
                objArr[1] = "getSupertypeLoopChecker";
            } else if (i4 != 8) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
            } else {
                objArr[1] = "processSupertypesWithoutCycles";
            }
            switch (i4) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    break;
                case 6:
                    objArr[2] = "reportSupertypeLoopError";
                    break;
                case 7:
                    objArr[2] = "processSupertypesWithoutCycles";
                    break;
                case 9:
                    objArr[2] = "isSameClassifier";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String format = String.format(str, objArr);
            if (i4 != 1 && i4 != 2 && i4 != 3 && i4 != 4 && i4 != 5 && i4 != 8) {
                throw new IllegalArgumentException(format);
            }
            throw new IllegalStateException(format);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TypeParameterTypeConstructor(@g AbstractTypeParameterDescriptor abstractTypeParameterDescriptor, StorageManager storageManager, SupertypeLoopChecker supertypeLoopChecker) {
            super(storageManager);
            if (storageManager == null) {
                $$$reportNull$$$0(0);
            }
            this.this$0 = abstractTypeParameterDescriptor;
            this.supertypeLoopChecker = supertypeLoopChecker;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        @g
        public Collection<KotlinType> computeSupertypes() {
            List<KotlinType> resolveUpperBounds = this.this$0.resolveUpperBounds();
            if (resolveUpperBounds == null) {
                $$$reportNull$$$0(1);
            }
            return resolveUpperBounds;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        @h
        public KotlinType defaultSupertypeIfEmpty() {
            return ErrorUtils.createErrorType(ErrorTypeKind.CYCLIC_UPPER_BOUNDS, new String[0]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public KotlinBuiltIns getBuiltIns() {
            KotlinBuiltIns builtIns = DescriptorUtilsKt.getBuiltIns(this.this$0);
            if (builtIns == null) {
                $$$reportNull$$$0(4);
            }
            return builtIns;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.ClassifierBasedTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public ClassifierDescriptor getDeclarationDescriptor() {
            AbstractTypeParameterDescriptor abstractTypeParameterDescriptor = this.this$0;
            if (abstractTypeParameterDescriptor == null) {
                $$$reportNull$$$0(3);
            }
            return abstractTypeParameterDescriptor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public List<TypeParameterDescriptor> getParameters() {
            List<TypeParameterDescriptor> emptyList = Collections.emptyList();
            if (emptyList == null) {
                $$$reportNull$$$0(2);
            }
            return emptyList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        @g
        public SupertypeLoopChecker getSupertypeLoopChecker() {
            SupertypeLoopChecker supertypeLoopChecker = this.supertypeLoopChecker;
            if (supertypeLoopChecker == null) {
                $$$reportNull$$$0(5);
            }
            return supertypeLoopChecker;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public boolean isDenotable() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.ClassifierBasedTypeConstructor
        protected boolean isSameClassifier(@g ClassifierDescriptor classifierDescriptor) {
            if (classifierDescriptor == null) {
                $$$reportNull$$$0(9);
            }
            return (classifierDescriptor instanceof TypeParameterDescriptor) && DescriptorEquivalenceForOverrides.INSTANCE.areTypeParametersEquivalent(this.this$0, (TypeParameterDescriptor) classifierDescriptor, true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        @g
        public List<KotlinType> processSupertypesWithoutCycles(@g List<KotlinType> list) {
            if (list == null) {
                $$$reportNull$$$0(7);
            }
            List<KotlinType> processBoundsWithoutCycles = this.this$0.processBoundsWithoutCycles(list);
            if (processBoundsWithoutCycles == null) {
                $$$reportNull$$$0(8);
            }
            return processBoundsWithoutCycles;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public void reportSupertypeLoopError(@g KotlinType kotlinType) {
            if (kotlinType == null) {
                $$$reportNull$$$0(6);
            }
            this.this$0.reportSupertypeLoopError(kotlinType);
        }

        public String toString() {
            return this.this$0.getName().toString();
        }
    }

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str;
        int i10;
        switch (i4) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i4) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                i10 = 2;
                break;
            case 12:
            default:
                i10 = 3;
                break;
        }
        Object[] objArr = new Object[i10];
        switch (i4) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = v.b.f83881a;
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 12:
                objArr[0] = "bounds";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i4) {
            case 7:
                objArr[1] = "getVariance";
                break;
            case 8:
                objArr[1] = "getUpperBounds";
                break;
            case 9:
                objArr[1] = "getTypeConstructor";
                break;
            case 10:
                objArr[1] = "getDefaultType";
                break;
            case 11:
                objArr[1] = "getOriginal";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 13:
                objArr[1] = "processBoundsWithoutCycles";
                break;
            case 14:
                objArr[1] = "getStorageManager";
                break;
        }
        switch (i4) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                break;
            case 12:
                objArr[2] = "processBoundsWithoutCycles";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i4) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                throw new IllegalStateException(format);
            case 12:
            default:
                throw new IllegalArgumentException(format);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeParameterDescriptor(@g final StorageManager storageManager, @g DeclarationDescriptor declarationDescriptor, @g Annotations annotations, @g final Name name, @g Variance variance, boolean z9, int i4, @g SourceElement sourceElement, @g final SupertypeLoopChecker supertypeLoopChecker) {
        super(declarationDescriptor, annotations, name, sourceElement);
        if (storageManager == null) {
            $$$reportNull$$$0(0);
        }
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(1);
        }
        if (annotations == null) {
            $$$reportNull$$$0(2);
        }
        if (name == null) {
            $$$reportNull$$$0(3);
        }
        if (variance == null) {
            $$$reportNull$$$0(4);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(5);
        }
        if (supertypeLoopChecker == null) {
            $$$reportNull$$$0(6);
        }
        this.variance = variance;
        this.reified = z9;
        this.index = i4;
        this.typeConstructor = storageManager.createLazyValue(new Function0<TypeConstructor>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.1
            @Override // kotlin.jvm.functions.Function0
            public TypeConstructor invoke() {
                return new TypeParameterTypeConstructor(AbstractTypeParameterDescriptor.this, storageManager, supertypeLoopChecker);
            }
        });
        this.defaultType = storageManager.createLazyValue(new Function0<SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.2
            @Override // kotlin.jvm.functions.Function0
            public SimpleType invoke() {
                return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(TypeAttributes.Companion.getEmpty(), AbstractTypeParameterDescriptor.this.getTypeConstructor(), Collections.emptyList(), false, new LazyScopeAdapter(new Function0<MemberScope>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.2.1
                    @Override // kotlin.jvm.functions.Function0
                    public MemberScope invoke() {
                        return TypeIntersectionScope.create("Scope for type parameter " + name.asString(), AbstractTypeParameterDescriptor.this.getUpperBounds());
                    }
                }));
            }
        });
        this.storageManager = storageManager;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public <R, D> R accept(DeclarationDescriptorVisitor<R, D> declarationDescriptorVisitor, D d4) {
        return declarationDescriptorVisitor.visitTypeParameterDescriptor(this, d4);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public SimpleType getDefaultType() {
        SimpleType invoke = this.defaultType.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(10);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public int getIndex() {
        return this.index;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    @g
    public StorageManager getStorageManager() {
        StorageManager storageManager = this.storageManager;
        if (storageManager == null) {
            $$$reportNull$$$0(14);
        }
        return storageManager;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public final TypeConstructor getTypeConstructor() {
        TypeConstructor invoke = this.typeConstructor.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(9);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    @g
    public List<KotlinType> getUpperBounds() {
        List<KotlinType> mo1364getSupertypes = ((TypeParameterTypeConstructor) getTypeConstructor()).mo1364getSupertypes();
        if (mo1364getSupertypes == null) {
            $$$reportNull$$$0(8);
        }
        return mo1364getSupertypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    @g
    public Variance getVariance() {
        Variance variance = this.variance;
        if (variance == null) {
            $$$reportNull$$$0(7);
        }
        return variance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public boolean isCapturedFromOuterDeclaration() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public boolean isReified() {
        return this.reified;
    }

    @g
    protected List<KotlinType> processBoundsWithoutCycles(@g List<KotlinType> list) {
        if (list == null) {
            $$$reportNull$$$0(12);
        }
        if (list == null) {
            $$$reportNull$$$0(13);
        }
        return list;
    }

    protected abstract void reportSupertypeLoopError(@g KotlinType kotlinType);

    @g
    protected abstract List<KotlinType> resolveUpperBounds();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public TypeParameterDescriptor getOriginal() {
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) super.getOriginal();
        if (typeParameterDescriptor == null) {
            $$$reportNull$$$0(11);
        }
        return typeParameterDescriptor;
    }
}
