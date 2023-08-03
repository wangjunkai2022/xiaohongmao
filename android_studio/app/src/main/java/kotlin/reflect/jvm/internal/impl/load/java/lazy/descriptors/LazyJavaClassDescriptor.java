package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.MappingUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNamesUtilKt;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.InnerClassesScopeWrapper;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;
import m8.h;

/* compiled from: LazyJavaClassDescriptor.kt */
/* loaded from: classes4.dex */
public final class LazyJavaClassDescriptor extends ClassDescriptorBase implements JavaClassDescriptor {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final Set<String> PUBLIC_METHOD_NAMES_IN_OBJECT;
    @h
    private final ClassDescriptor additionalSupertypeClassDescriptor;
    @g
    private final Annotations annotations;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final LazyJavaResolverContext f84759c;
    @g
    private final NotNullLazyValue<List<TypeParameterDescriptor>> declaredParameters;
    @g
    private final InnerClassesScopeWrapper innerClassesScope;
    private final boolean isInner;
    @g
    private final JavaClass jClass;
    @g
    private final ClassKind kind;
    @g
    private final Modality modality;
    @g
    private final Lazy moduleAnnotations$delegate;
    @g
    private final LazyJavaResolverContext outerContext;
    @g
    private final ScopesHolderForClass<LazyJavaClassMemberScope> scopeHolder;
    @g
    private final LazyJavaStaticClassScope staticScope;
    @g
    private final LazyJavaClassTypeConstructor typeConstructor;
    @g
    private final LazyJavaClassMemberScope unsubstitutedMemberScope;
    @g
    private final Visibility visibility;

    /* compiled from: LazyJavaClassDescriptor.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LazyJavaClassDescriptor.kt */
    /* loaded from: classes4.dex */
    public final class LazyJavaClassTypeConstructor extends AbstractClassTypeConstructor {
        @g
        private final NotNullLazyValue<List<TypeParameterDescriptor>> parameters;

        public LazyJavaClassTypeConstructor() {
            super(LazyJavaClassDescriptor.this.f84759c.getStorageManager());
            this.parameters = LazyJavaClassDescriptor.this.f84759c.getStorageManager().createLazyValue(new LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$parameters$1(LazyJavaClassDescriptor.this));
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
            if ((!r0.isRoot() && r0.startsWith(kotlin.reflect.jvm.internal.impl.builtins.StandardNames.BUILT_INS_PACKAGE_NAME)) != false) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final kotlin.reflect.jvm.internal.impl.types.KotlinType getPurelyImplementedSupertype() {
            /*
                r8 = this;
                kotlin.reflect.jvm.internal.impl.name.FqName r0 = r8.getPurelyImplementsFqNameFromAnnotation()
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L1c
                boolean r3 = r0.isRoot()
                if (r3 != 0) goto L18
                kotlin.reflect.jvm.internal.impl.name.Name r3 = kotlin.reflect.jvm.internal.impl.builtins.StandardNames.BUILT_INS_PACKAGE_NAME
                boolean r3 = r0.startsWith(r3)
                if (r3 == 0) goto L18
                r3 = 1
                goto L19
            L18:
                r3 = 0
            L19:
                if (r3 == 0) goto L1c
                goto L1d
            L1c:
                r0 = r2
            L1d:
                if (r0 != 0) goto L2e
                kotlin.reflect.jvm.internal.impl.load.java.FakePureImplementationsProvider r3 = kotlin.reflect.jvm.internal.impl.load.java.FakePureImplementationsProvider.INSTANCE
                kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor r4 = kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.this
                kotlin.reflect.jvm.internal.impl.name.FqName r4 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getFqNameSafe(r4)
                kotlin.reflect.jvm.internal.impl.name.FqName r3 = r3.getPurelyImplementedInterface(r4)
                if (r3 != 0) goto L2f
                return r2
            L2e:
                r3 = r0
            L2f:
                kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor r4 = kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.this
                kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext r4 = kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.access$getC$p(r4)
                kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor r4 = r4.getModule()
                kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation r5 = kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation.FROM_JAVA_LOADER
                kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r3 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.resolveTopLevelClass(r4, r3, r5)
                if (r3 != 0) goto L42
                return r2
            L42:
                kotlin.reflect.jvm.internal.impl.types.TypeConstructor r4 = r3.getTypeConstructor()
                java.util.List r4 = r4.getParameters()
                int r4 = r4.size()
                kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor r5 = kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.this
                kotlin.reflect.jvm.internal.impl.types.TypeConstructor r5 = r5.getTypeConstructor()
                java.util.List r5 = r5.getParameters()
                java.lang.String r6 = "getTypeConstructor().parameters"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
                int r6 = r5.size()
                r7 = 10
                if (r6 != r4) goto L8d
                java.util.ArrayList r0 = new java.util.ArrayList
                int r1 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r5, r7)
                r0.<init>(r1)
                java.util.Iterator r1 = r5.iterator()
            L72:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto Lc7
                java.lang.Object r2 = r1.next()
                kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r2
                kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl r4 = new kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl
                kotlin.reflect.jvm.internal.impl.types.Variance r5 = kotlin.reflect.jvm.internal.impl.types.Variance.INVARIANT
                kotlin.reflect.jvm.internal.impl.types.SimpleType r2 = r2.getDefaultType()
                r4.<init>(r5, r2)
                r0.add(r4)
                goto L72
            L8d:
                if (r6 != r1) goto Ld2
                if (r4 <= r1) goto Ld2
                if (r0 != 0) goto Ld2
                kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl r0 = new kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl
                kotlin.reflect.jvm.internal.impl.types.Variance r2 = kotlin.reflect.jvm.internal.impl.types.Variance.INVARIANT
                java.lang.Object r5 = kotlin.collections.CollectionsKt.single(r5)
                kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r5 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r5
                kotlin.reflect.jvm.internal.impl.types.SimpleType r5 = r5.getDefaultType()
                r0.<init>(r2, r5)
                kotlin.ranges.IntRange r2 = new kotlin.ranges.IntRange
                r2.<init>(r1, r4)
                java.util.ArrayList r1 = new java.util.ArrayList
                int r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r2, r7)
                r1.<init>(r4)
                java.util.Iterator r2 = r2.iterator()
            Lb6:
                boolean r4 = r2.hasNext()
                if (r4 == 0) goto Lc6
                r4 = r2
                kotlin.collections.IntIterator r4 = (kotlin.collections.IntIterator) r4
                r4.nextInt()
                r1.add(r0)
                goto Lb6
            Lc6:
                r0 = r1
            Lc7:
                kotlin.reflect.jvm.internal.impl.types.TypeAttributes$Companion r1 = kotlin.reflect.jvm.internal.impl.types.TypeAttributes.Companion
                kotlin.reflect.jvm.internal.impl.types.TypeAttributes r1 = r1.getEmpty()
                kotlin.reflect.jvm.internal.impl.types.SimpleType r0 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory.simpleNotNullType(r1, r3, r0)
                return r0
            Ld2:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.LazyJavaClassTypeConstructor.getPurelyImplementedSupertype():kotlin.reflect.jvm.internal.impl.types.KotlinType");
        }

        private final FqName getPurelyImplementsFqNameFromAnnotation() {
            Object singleOrNull;
            String value;
            Annotations annotations = LazyJavaClassDescriptor.this.getAnnotations();
            FqName PURELY_IMPLEMENTS_ANNOTATION = JvmAnnotationNames.PURELY_IMPLEMENTS_ANNOTATION;
            Intrinsics.checkNotNullExpressionValue(PURELY_IMPLEMENTS_ANNOTATION, "PURELY_IMPLEMENTS_ANNOTATION");
            AnnotationDescriptor findAnnotation = annotations.findAnnotation(PURELY_IMPLEMENTS_ANNOTATION);
            if (findAnnotation == null) {
                return null;
            }
            singleOrNull = CollectionsKt___CollectionsKt.singleOrNull(findAnnotation.getAllValueArguments().values());
            StringValue stringValue = singleOrNull instanceof StringValue ? (StringValue) singleOrNull : null;
            if (stringValue == null || (value = stringValue.getValue()) == null || !FqNamesUtilKt.isValidJavaFqName(value)) {
                return null;
            }
            return new FqName(value);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        @g
        public Collection<KotlinType> computeSupertypes() {
            List listOf;
            List list;
            int collectionSizeOrDefault;
            Collection<JavaClassifierType> supertypes = LazyJavaClassDescriptor.this.getJClass().getSupertypes();
            ArrayList arrayList = new ArrayList(supertypes.size());
            ArrayList<JavaType> arrayList2 = new ArrayList(0);
            KotlinType purelyImplementedSupertype = getPurelyImplementedSupertype();
            Iterator<JavaClassifierType> it = supertypes.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JavaClassifierType next = it.next();
                KotlinType enhanceSuperType = LazyJavaClassDescriptor.this.f84759c.getComponents().getSignatureEnhancement().enhanceSuperType(LazyJavaClassDescriptor.this.f84759c.getTypeResolver().transformJavaType(next, JavaTypeResolverKt.toAttributes$default(TypeUsage.SUPERTYPE, false, null, 3, null)), LazyJavaClassDescriptor.this.f84759c);
                if (enhanceSuperType.getConstructor().getDeclarationDescriptor() instanceof NotFoundClasses.MockClassDescriptor) {
                    arrayList2.add(next);
                }
                if (!Intrinsics.areEqual(enhanceSuperType.getConstructor(), purelyImplementedSupertype != null ? purelyImplementedSupertype.getConstructor() : null) && !KotlinBuiltIns.isAnyOrNullableAny(enhanceSuperType)) {
                    arrayList.add(enhanceSuperType);
                }
            }
            ClassDescriptor classDescriptor = LazyJavaClassDescriptor.this.additionalSupertypeClassDescriptor;
            CollectionsKt.addIfNotNull(arrayList, classDescriptor != null ? MappingUtilKt.createMappedTypeParametersSubstitution(classDescriptor, LazyJavaClassDescriptor.this).buildSubstitutor().substitute(classDescriptor.getDefaultType(), Variance.INVARIANT) : null);
            CollectionsKt.addIfNotNull(arrayList, purelyImplementedSupertype);
            if (!arrayList2.isEmpty()) {
                ErrorReporter errorReporter = LazyJavaClassDescriptor.this.f84759c.getComponents().getErrorReporter();
                ClassDescriptor declarationDescriptor = getDeclarationDescriptor();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                for (JavaType javaType : arrayList2) {
                    Intrinsics.checkNotNull(javaType, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType");
                    arrayList3.add(((JavaClassifierType) javaType).getPresentableText());
                }
                errorReporter.reportIncompleteHierarchy(declarationDescriptor, arrayList3);
            }
            if (!arrayList.isEmpty()) {
                list = CollectionsKt___CollectionsKt.toList(arrayList);
                return list;
            }
            listOf = CollectionsKt__CollectionsJVMKt.listOf(LazyJavaClassDescriptor.this.f84759c.getModule().getBuiltIns().getAnyType());
            return listOf;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public List<TypeParameterDescriptor> getParameters() {
            return this.parameters.invoke();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        @g
        public SupertypeLoopChecker getSupertypeLoopChecker() {
            return LazyJavaClassDescriptor.this.f84759c.getComponents().getSupertypeLoopChecker();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public boolean isDenotable() {
            return true;
        }

        @g
        public String toString() {
            String asString = LazyJavaClassDescriptor.this.getName().asString();
            Intrinsics.checkNotNullExpressionValue(asString, "name.asString()");
            return asString;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.ClassifierBasedTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public ClassDescriptor getDeclarationDescriptor() {
            return LazyJavaClassDescriptor.this;
        }
    }

    static {
        Set<String> of;
        of = SetsKt__SetsKt.setOf((Object[]) new String[]{"equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString"});
        PUBLIC_METHOD_NAMES_IN_OBJECT = of;
    }

    public /* synthetic */ LazyJavaClassDescriptor(LazyJavaResolverContext lazyJavaResolverContext, DeclarationDescriptor declarationDescriptor, JavaClass javaClass, ClassDescriptor classDescriptor, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, declarationDescriptor, javaClass, (i4 & 8) != 0 ? null : classDescriptor);
    }

    @g
    public final LazyJavaClassDescriptor copy$descriptors_jvm(@g JavaResolverCache javaResolverCache, @h ClassDescriptor classDescriptor) {
        Intrinsics.checkNotNullParameter(javaResolverCache, "javaResolverCache");
        LazyJavaResolverContext lazyJavaResolverContext = this.f84759c;
        LazyJavaResolverContext replaceComponents = ContextKt.replaceComponents(lazyJavaResolverContext, lazyJavaResolverContext.getComponents().replace(javaResolverCache));
        DeclarationDescriptor containingDeclaration = getContainingDeclaration();
        Intrinsics.checkNotNullExpressionValue(containingDeclaration, "containingDeclaration");
        return new LazyJavaClassDescriptor(replaceComponents, containingDeclaration, this.jClass, classDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    @g
    public Annotations getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @h
    public ClassDescriptor getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    @g
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.declaredParameters.invoke();
    }

    @g
    public final JavaClass getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public ClassKind getKind() {
        return this.kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    @g
    public Modality getModality() {
        return this.modality;
    }

    @h
    public final List<JavaAnnotation> getModuleAnnotations() {
        return (List) this.moduleAnnotations$delegate.getValue();
    }

    @g
    public final LazyJavaResolverContext getOuterContext() {
        return this.outerContext;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public Collection<ClassDescriptor> getSealedSubclasses() {
        List emptyList;
        List sortedWith;
        if (this.modality == Modality.SEALED) {
            JavaTypeAttributes attributes$default = JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, null, 3, null);
            Collection<JavaClassifierType> permittedTypes = this.jClass.getPermittedTypes();
            ArrayList arrayList = new ArrayList();
            for (JavaClassifierType javaClassifierType : permittedTypes) {
                ClassifierDescriptor declarationDescriptor = this.f84759c.getTypeResolver().transformJavaType(javaClassifierType, attributes$default).getConstructor().getDeclarationDescriptor();
                ClassDescriptor classDescriptor = declarationDescriptor instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptor : null;
                if (classDescriptor != null) {
                    arrayList.add(classDescriptor);
                }
            }
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$getSealedSubclasses$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t9, T t10) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(DescriptorUtilsKt.getFqNameSafe((ClassDescriptor) t9).asString(), DescriptorUtilsKt.getFqNameSafe((ClassDescriptor) t10).asString());
                    return compareValues;
                }
            });
            return sortedWith;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public MemberScope getStaticScope() {
        return this.staticScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public TypeConstructor getTypeConstructor() {
        return this.typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public MemberScope getUnsubstitutedInnerClassesScope() {
        return this.innerClassesScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @h
    public ClassConstructorDescriptor getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @h
    public ValueClassRepresentation<SimpleType> getValueClassRepresentation() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    @g
    public DescriptorVisibility getVisibility() {
        if (Intrinsics.areEqual(this.visibility, DescriptorVisibilities.PRIVATE) && this.jClass.getOuterClass() == null) {
            DescriptorVisibility descriptorVisibility = JavaDescriptorVisibilities.PACKAGE_VISIBILITY;
            Intrinsics.checkNotNullExpressionValue(descriptorVisibility, "{\n            JavaDescri…KAGE_VISIBILITY\n        }");
            return descriptorVisibility;
        }
        return UtilsKt.toDescriptorVisibility(this.visibility);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public boolean isInner() {
        return this.isInner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isValue() {
        return false;
    }

    @g
    public String toString() {
        return "Lazy Java class " + DescriptorUtilsKt.getFqNameUnsafe(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor(@g LazyJavaResolverContext outerContext, @g DeclarationDescriptor containingDeclaration, @g JavaClass jClass, @h ClassDescriptor classDescriptor) {
        super(outerContext.getStorageManager(), containingDeclaration, jClass.getName(), outerContext.getComponents().getSourceElementFactory().source(jClass), false);
        Lazy lazy;
        ClassKind classKind;
        Modality modality;
        Intrinsics.checkNotNullParameter(outerContext, "outerContext");
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        this.outerContext = outerContext;
        this.jClass = jClass;
        this.additionalSupertypeClassDescriptor = classDescriptor;
        LazyJavaResolverContext childForClassOrPackage$default = ContextKt.childForClassOrPackage$default(outerContext, this, jClass, 0, 4, null);
        this.f84759c = childForClassOrPackage$default;
        childForClassOrPackage$default.getComponents().getJavaResolverCache().recordClass(jClass, this);
        jClass.getLightClassOriginKind();
        lazy = LazyKt__LazyJVMKt.lazy(new LazyJavaClassDescriptor$moduleAnnotations$2(this));
        this.moduleAnnotations$delegate = lazy;
        if (jClass.isAnnotationType()) {
            classKind = ClassKind.ANNOTATION_CLASS;
        } else if (jClass.isInterface()) {
            classKind = ClassKind.INTERFACE;
        } else {
            classKind = jClass.isEnum() ? ClassKind.ENUM_CLASS : ClassKind.CLASS;
        }
        this.kind = classKind;
        if (!jClass.isAnnotationType() && !jClass.isEnum()) {
            modality = Modality.Companion.convertFromFlags(jClass.isSealed(), jClass.isSealed() || jClass.isAbstract() || jClass.isInterface(), !jClass.isFinal());
        } else {
            modality = Modality.FINAL;
        }
        this.modality = modality;
        this.visibility = jClass.getVisibility();
        this.isInner = (jClass.getOuterClass() == null || jClass.isStatic()) ? false : true;
        this.typeConstructor = new LazyJavaClassTypeConstructor();
        LazyJavaClassMemberScope lazyJavaClassMemberScope = new LazyJavaClassMemberScope(childForClassOrPackage$default, this, jClass, classDescriptor != null, null, 16, null);
        this.unsubstitutedMemberScope = lazyJavaClassMemberScope;
        this.scopeHolder = ScopesHolderForClass.Companion.create(this, childForClassOrPackage$default.getStorageManager(), childForClassOrPackage$default.getComponents().getKotlinTypeChecker().getKotlinTypeRefiner(), new LazyJavaClassDescriptor$scopeHolder$1(this));
        this.innerClassesScope = new InnerClassesScopeWrapper(lazyJavaClassMemberScope);
        this.staticScope = new LazyJavaStaticClassScope(childForClassOrPackage$default, jClass, this);
        this.annotations = LazyJavaAnnotationsKt.resolveAnnotations(childForClassOrPackage$default, jClass);
        this.declaredParameters = childForClassOrPackage$default.getStorageManager().createLazyValue(new LazyJavaClassDescriptor$declaredParameters$1(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public List<ClassConstructorDescriptor> getConstructors() {
        return this.unsubstitutedMemberScope.getConstructors$descriptors_jvm().invoke();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    @g
    public LazyJavaClassMemberScope getUnsubstitutedMemberScope(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.scopeHolder.getScope(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public LazyJavaClassMemberScope getUnsubstitutedMemberScope() {
        MemberScope unsubstitutedMemberScope = super.getUnsubstitutedMemberScope();
        Intrinsics.checkNotNull(unsubstitutedMemberScope, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope");
        return (LazyJavaClassMemberScope) unsubstitutedMemberScope;
    }
}
