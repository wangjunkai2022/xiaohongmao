package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;
import m8.h;

/* compiled from: LazyJavaScope.kt */
/* loaded from: classes4.dex */
public abstract class LazyJavaScope extends MemberScopeImpl {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaScope.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};
    @g
    private final NotNullLazyValue<Collection<DeclarationDescriptor>> allDescriptors;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final LazyJavaResolverContext f84761c;
    @g
    private final NotNullLazyValue classNamesLazy$delegate;
    @g
    private final MemoizedFunctionToNullable<Name, PropertyDescriptor> declaredField;
    @g
    private final MemoizedFunctionToNotNull<Name, Collection<SimpleFunctionDescriptor>> declaredFunctions;
    @g
    private final NotNullLazyValue<DeclaredMemberIndex> declaredMemberIndex;
    @g
    private final NotNullLazyValue functionNamesLazy$delegate;
    @g
    private final MemoizedFunctionToNotNull<Name, Collection<SimpleFunctionDescriptor>> functions;
    @h
    private final LazyJavaScope mainScope;
    @g
    private final MemoizedFunctionToNotNull<Name, List<PropertyDescriptor>> properties;
    @g
    private final NotNullLazyValue propertyNamesLazy$delegate;

    /* compiled from: LazyJavaScope.kt */
    /* loaded from: classes4.dex */
    protected static final class MethodSignatureData {
        @g
        private final List<String> errors;
        private final boolean hasStableParameterNames;
        @h
        private final KotlinType receiverType;
        @g
        private final KotlinType returnType;
        @g
        private final List<TypeParameterDescriptor> typeParameters;
        @g
        private final List<ValueParameterDescriptor> valueParameters;

        /* JADX WARN: Multi-variable type inference failed */
        public MethodSignatureData(@g KotlinType returnType, @h KotlinType kotlinType, @g List<? extends ValueParameterDescriptor> valueParameters, @g List<? extends TypeParameterDescriptor> typeParameters, boolean z9, @g List<String> errors) {
            Intrinsics.checkNotNullParameter(returnType, "returnType");
            Intrinsics.checkNotNullParameter(valueParameters, "valueParameters");
            Intrinsics.checkNotNullParameter(typeParameters, "typeParameters");
            Intrinsics.checkNotNullParameter(errors, "errors");
            this.returnType = returnType;
            this.receiverType = kotlinType;
            this.valueParameters = valueParameters;
            this.typeParameters = typeParameters;
            this.hasStableParameterNames = z9;
            this.errors = errors;
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MethodSignatureData) {
                MethodSignatureData methodSignatureData = (MethodSignatureData) obj;
                return Intrinsics.areEqual(this.returnType, methodSignatureData.returnType) && Intrinsics.areEqual(this.receiverType, methodSignatureData.receiverType) && Intrinsics.areEqual(this.valueParameters, methodSignatureData.valueParameters) && Intrinsics.areEqual(this.typeParameters, methodSignatureData.typeParameters) && this.hasStableParameterNames == methodSignatureData.hasStableParameterNames && Intrinsics.areEqual(this.errors, methodSignatureData.errors);
            }
            return false;
        }

        @g
        public final List<String> getErrors() {
            return this.errors;
        }

        public final boolean getHasStableParameterNames() {
            return this.hasStableParameterNames;
        }

        @h
        public final KotlinType getReceiverType() {
            return this.receiverType;
        }

        @g
        public final KotlinType getReturnType() {
            return this.returnType;
        }

        @g
        public final List<TypeParameterDescriptor> getTypeParameters() {
            return this.typeParameters;
        }

        @g
        public final List<ValueParameterDescriptor> getValueParameters() {
            return this.valueParameters;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.returnType.hashCode() * 31;
            KotlinType kotlinType = this.receiverType;
            int hashCode2 = (((((hashCode + (kotlinType == null ? 0 : kotlinType.hashCode())) * 31) + this.valueParameters.hashCode()) * 31) + this.typeParameters.hashCode()) * 31;
            boolean z9 = this.hasStableParameterNames;
            int i4 = z9;
            if (z9 != 0) {
                i4 = 1;
            }
            return ((hashCode2 + i4) * 31) + this.errors.hashCode();
        }

        @g
        public String toString() {
            return "MethodSignatureData(returnType=" + this.returnType + ", receiverType=" + this.receiverType + ", valueParameters=" + this.valueParameters + ", typeParameters=" + this.typeParameters + ", hasStableParameterNames=" + this.hasStableParameterNames + ", errors=" + this.errors + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: LazyJavaScope.kt */
    /* loaded from: classes4.dex */
    public static final class ResolvedValueParameters {
        @g
        private final List<ValueParameterDescriptor> descriptors;
        private final boolean hasSynthesizedNames;

        /* JADX WARN: Multi-variable type inference failed */
        public ResolvedValueParameters(@g List<? extends ValueParameterDescriptor> descriptors, boolean z9) {
            Intrinsics.checkNotNullParameter(descriptors, "descriptors");
            this.descriptors = descriptors;
            this.hasSynthesizedNames = z9;
        }

        @g
        public final List<ValueParameterDescriptor> getDescriptors() {
            return this.descriptors;
        }

        public final boolean getHasSynthesizedNames() {
            return this.hasSynthesizedNames;
        }
    }

    public /* synthetic */ LazyJavaScope(LazyJavaResolverContext lazyJavaResolverContext, LazyJavaScope lazyJavaScope, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, (i4 & 2) != 0 ? null : lazyJavaScope);
    }

    private final PropertyDescriptorImpl createPropertyDescriptor(JavaField javaField) {
        JavaPropertyDescriptor create = JavaPropertyDescriptor.create(getOwnerDescriptor(), LazyJavaAnnotationsKt.resolveAnnotations(this.f84761c, javaField), Modality.FINAL, UtilsKt.toDescriptorVisibility(javaField.getVisibility()), !javaField.isFinal(), javaField.getName(), this.f84761c.getComponents().getSourceElementFactory().source(javaField), isFinalStatic(javaField));
        Intrinsics.checkNotNullExpressionValue(create, "create(\n            owne…d.isFinalStatic\n        )");
        return create;
    }

    private final Set<Name> getClassNamesLazy() {
        return (Set) StorageKt.getValue(this.classNamesLazy$delegate, this, $$delegatedProperties[2]);
    }

    private final Set<Name> getFunctionNamesLazy() {
        return (Set) StorageKt.getValue(this.functionNamesLazy$delegate, this, $$delegatedProperties[0]);
    }

    private final Set<Name> getPropertyNamesLazy() {
        return (Set) StorageKt.getValue(this.propertyNamesLazy$delegate, this, $$delegatedProperties[1]);
    }

    private final KotlinType getPropertyType(JavaField javaField) {
        boolean z9 = false;
        KotlinType transformJavaType = this.f84761c.getTypeResolver().transformJavaType(javaField.getType(), JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, null, 3, null));
        if ((KotlinBuiltIns.isPrimitiveType(transformJavaType) || KotlinBuiltIns.isString(transformJavaType)) && isFinalStatic(javaField) && javaField.getHasConstantNotNullInitializer()) {
            z9 = true;
        }
        if (z9) {
            KotlinType makeNotNullable = TypeUtils.makeNotNullable(transformJavaType);
            Intrinsics.checkNotNullExpressionValue(makeNotNullable, "makeNotNullable(propertyType)");
            return makeNotNullable;
        }
        return transformJavaType;
    }

    private final boolean isFinalStatic(JavaField javaField) {
        return javaField.isFinal() && javaField.isStatic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PropertyDescriptor resolveProperty(JavaField javaField) {
        List<? extends TypeParameterDescriptor> emptyList;
        List<ReceiverParameterDescriptor> emptyList2;
        PropertyDescriptorImpl createPropertyDescriptor = createPropertyDescriptor(javaField);
        createPropertyDescriptor.initialize(null, null, null, null);
        KotlinType propertyType = getPropertyType(javaField);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        ReceiverParameterDescriptor dispatchReceiverParameter = getDispatchReceiverParameter();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        createPropertyDescriptor.setType(propertyType, emptyList, dispatchReceiverParameter, null, emptyList2);
        if (DescriptorUtils.shouldRecordInitializerForProperty(createPropertyDescriptor, createPropertyDescriptor.getType())) {
            createPropertyDescriptor.setCompileTimeInitializerFactory(new LazyJavaScope$resolveProperty$1(this, javaField, createPropertyDescriptor));
        }
        this.f84761c.getComponents().getJavaResolverCache().recordField(javaField, createPropertyDescriptor);
        return createPropertyDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void retainMostSpecificMethods(Set<SimpleFunctionDescriptor> set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            String computeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default((SimpleFunctionDescriptor) obj, false, false, 2, null);
            Object obj2 = linkedHashMap.get(computeJvmDescriptor$default);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(computeJvmDescriptor$default, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (List list : linkedHashMap.values()) {
            if (list.size() != 1) {
                Collection<? extends SimpleFunctionDescriptor> selectMostSpecificInEachOverridableGroup = OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(list, LazyJavaScope$retainMostSpecificMethods$mostSpecificMethods$1.INSTANCE);
                set.removeAll(list);
                set.addAll(selectMostSpecificInEachOverridableGroup);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract Set<Name> computeClassNames(@g DescriptorKindFilter descriptorKindFilter, @h Function1<? super Name, Boolean> function1);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final List<DeclarationDescriptor> computeDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter) {
        List<DeclarationDescriptor> list;
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        NoLookupLocation noLookupLocation = NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getCLASSIFIERS_MASK())) {
            for (Name name : computeClassNames(kindFilter, nameFilter)) {
                if (nameFilter.invoke(name).booleanValue()) {
                    CollectionsKt.addIfNotNull(linkedHashSet, getContributedClassifier(name, noLookupLocation));
                }
            }
        }
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getFUNCTIONS_MASK()) && !kindFilter.getExcludes().contains(DescriptorKindExclude.NonExtensions.INSTANCE)) {
            for (Name name2 : computeFunctionNames(kindFilter, nameFilter)) {
                if (nameFilter.invoke(name2).booleanValue()) {
                    linkedHashSet.addAll(getContributedFunctions(name2, noLookupLocation));
                }
            }
        }
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getVARIABLES_MASK()) && !kindFilter.getExcludes().contains(DescriptorKindExclude.NonExtensions.INSTANCE)) {
            for (Name name3 : computePropertyNames(kindFilter, nameFilter)) {
                if (nameFilter.invoke(name3).booleanValue()) {
                    linkedHashSet.addAll(getContributedVariables(name3, noLookupLocation));
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract Set<Name> computeFunctionNames(@g DescriptorKindFilter descriptorKindFilter, @h Function1<? super Name, Boolean> function1);

    /* JADX INFO: Access modifiers changed from: protected */
    public void computeImplicitlyDeclaredFunctions(@g Collection<SimpleFunctionDescriptor> result, @g Name name) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(name, "name");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract DeclaredMemberIndex computeMemberIndex();

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final KotlinType computeMethodReturnType(@g JavaMethod method, @g LazyJavaResolverContext c10) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(c10, "c");
        return c10.getTypeResolver().transformJavaType(method.getReturnType(), JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, method.getContainingClass().isAnnotationType(), null, 2, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void computeNonDeclaredFunctions(@g Collection<SimpleFunctionDescriptor> collection, @g Name name);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void computeNonDeclaredProperties(@g Name name, @g Collection<PropertyDescriptor> collection);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract Set<Name> computePropertyNames(@g DescriptorKindFilter descriptorKindFilter, @h Function1<? super Name, Boolean> function1);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final NotNullLazyValue<Collection<DeclarationDescriptor>> getAllDescriptors() {
        return this.allDescriptors;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final LazyJavaResolverContext getC() {
        return this.f84761c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getClassifierNames() {
        return getClassNamesLazy();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<DeclarationDescriptor> getContributedDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        return this.allDescriptors.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
        List emptyList;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        if (getFunctionNames().contains(name)) {
            return this.functions.invoke(name);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
        List emptyList;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        if (getVariableNames().contains(name)) {
            return this.properties.invoke(name);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final NotNullLazyValue<DeclaredMemberIndex> getDeclaredMemberIndex() {
        return this.declaredMemberIndex;
    }

    @h
    protected abstract ReceiverParameterDescriptor getDispatchReceiverParameter();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getFunctionNames() {
        return getFunctionNamesLazy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final LazyJavaScope getMainScope() {
        return this.mainScope;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract DeclarationDescriptor getOwnerDescriptor();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getVariableNames() {
        return getPropertyNamesLazy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isVisibleAsFunction(@g JavaMethodDescriptor javaMethodDescriptor) {
        Intrinsics.checkNotNullParameter(javaMethodDescriptor, "<this>");
        return true;
    }

    @g
    protected abstract MethodSignatureData resolveMethodSignature(@g JavaMethod javaMethod, @g List<? extends TypeParameterDescriptor> list, @g KotlinType kotlinType, @g List<? extends ValueParameterDescriptor> list2);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final JavaMethodDescriptor resolveMethodToFunctionDescriptor(@g JavaMethod method) {
        int collectionSizeOrDefault;
        List<ReceiverParameterDescriptor> emptyList;
        Map<? extends CallableDescriptor.UserDataKey<?>, ?> emptyMap;
        Object first;
        Intrinsics.checkNotNullParameter(method, "method");
        JavaMethodDescriptor createJavaMethod = JavaMethodDescriptor.createJavaMethod(getOwnerDescriptor(), LazyJavaAnnotationsKt.resolveAnnotations(this.f84761c, method), method.getName(), this.f84761c.getComponents().getSourceElementFactory().source(method), this.declaredMemberIndex.invoke().findRecordComponentByName(method.getName()) != null && method.getValueParameters().isEmpty());
        Intrinsics.checkNotNullExpressionValue(createJavaMethod, "createJavaMethod(\n      …eters.isEmpty()\n        )");
        LazyJavaResolverContext childForMethod$default = ContextKt.childForMethod$default(this.f84761c, createJavaMethod, method, 0, 4, null);
        List<JavaTypeParameter> typeParameters = method.getTypeParameters();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10);
        List<? extends TypeParameterDescriptor> arrayList = new ArrayList<>(collectionSizeOrDefault);
        for (JavaTypeParameter javaTypeParameter : typeParameters) {
            TypeParameterDescriptor resolveTypeParameter = childForMethod$default.getTypeParameterResolver().resolveTypeParameter(javaTypeParameter);
            Intrinsics.checkNotNull(resolveTypeParameter);
            arrayList.add(resolveTypeParameter);
        }
        ResolvedValueParameters resolveValueParameters = resolveValueParameters(childForMethod$default, createJavaMethod, method.getValueParameters());
        MethodSignatureData resolveMethodSignature = resolveMethodSignature(method, arrayList, computeMethodReturnType(method, childForMethod$default), resolveValueParameters.getDescriptors());
        KotlinType receiverType = resolveMethodSignature.getReceiverType();
        ReceiverParameterDescriptor createExtensionReceiverParameterForCallable = receiverType != null ? DescriptorFactory.createExtensionReceiverParameterForCallable(createJavaMethod, receiverType, Annotations.Companion.getEMPTY()) : null;
        ReceiverParameterDescriptor dispatchReceiverParameter = getDispatchReceiverParameter();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        List<TypeParameterDescriptor> typeParameters2 = resolveMethodSignature.getTypeParameters();
        List<ValueParameterDescriptor> valueParameters = resolveMethodSignature.getValueParameters();
        KotlinType returnType = resolveMethodSignature.getReturnType();
        Modality convertFromFlags = Modality.Companion.convertFromFlags(false, method.isAbstract(), !method.isFinal());
        DescriptorVisibility descriptorVisibility = UtilsKt.toDescriptorVisibility(method.getVisibility());
        if (resolveMethodSignature.getReceiverType() != null) {
            CallableDescriptor.UserDataKey<ValueParameterDescriptor> userDataKey = JavaMethodDescriptor.ORIGINAL_VALUE_PARAMETER_FOR_EXTENSION_RECEIVER;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) resolveValueParameters.getDescriptors());
            emptyMap = MapsKt__MapsJVMKt.mapOf(TuplesKt.to(userDataKey, first));
        } else {
            emptyMap = MapsKt__MapsKt.emptyMap();
        }
        createJavaMethod.initialize(createExtensionReceiverParameterForCallable, dispatchReceiverParameter, emptyList, typeParameters2, valueParameters, returnType, convertFromFlags, descriptorVisibility, emptyMap);
        createJavaMethod.setParameterNamesStatus(resolveMethodSignature.getHasStableParameterNames(), resolveValueParameters.getHasSynthesizedNames());
        if (!resolveMethodSignature.getErrors().isEmpty()) {
            childForMethod$default.getComponents().getSignaturePropagator().reportSignatureErrors(createJavaMethod, resolveMethodSignature.getErrors());
        }
        return createJavaMethod;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final ResolvedValueParameters resolveValueParameters(@g LazyJavaResolverContext lazyJavaResolverContext, @g FunctionDescriptor function, @g List<? extends JavaValueParameter> jValueParameters) {
        Iterable<IndexedValue> withIndex;
        int collectionSizeOrDefault;
        List list;
        Pair pair;
        Name name;
        LazyJavaResolverContext c10 = lazyJavaResolverContext;
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(function, "function");
        Intrinsics.checkNotNullParameter(jValueParameters, "jValueParameters");
        withIndex = CollectionsKt___CollectionsKt.withIndex(jValueParameters);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(withIndex, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        boolean z9 = false;
        boolean z10 = false;
        for (IndexedValue indexedValue : withIndex) {
            int component1 = indexedValue.component1();
            JavaValueParameter javaValueParameter = (JavaValueParameter) indexedValue.component2();
            Annotations resolveAnnotations = LazyJavaAnnotationsKt.resolveAnnotations(c10, javaValueParameter);
            JavaTypeAttributes attributes$default = JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, z9, null, 3, null);
            if (javaValueParameter.isVararg()) {
                JavaType type = javaValueParameter.getType();
                JavaArrayType javaArrayType = type instanceof JavaArrayType ? (JavaArrayType) type : null;
                if (javaArrayType != null) {
                    KotlinType transformArrayType = lazyJavaResolverContext.getTypeResolver().transformArrayType(javaArrayType, attributes$default, true);
                    pair = TuplesKt.to(transformArrayType, lazyJavaResolverContext.getModule().getBuiltIns().getArrayElementType(transformArrayType));
                } else {
                    throw new AssertionError("Vararg parameter should be an array: " + javaValueParameter);
                }
            } else {
                pair = TuplesKt.to(lazyJavaResolverContext.getTypeResolver().transformJavaType(javaValueParameter.getType(), attributes$default), null);
            }
            KotlinType kotlinType = (KotlinType) pair.component1();
            KotlinType kotlinType2 = (KotlinType) pair.component2();
            if (Intrinsics.areEqual(function.getName().asString(), "equals") && jValueParameters.size() == 1 && Intrinsics.areEqual(lazyJavaResolverContext.getModule().getBuiltIns().getNullableAnyType(), kotlinType)) {
                name = Name.identifier("other");
            } else {
                name = javaValueParameter.getName();
                if (name == null) {
                    z10 = true;
                }
                if (name == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('p');
                    sb.append(component1);
                    name = Name.identifier(sb.toString());
                    Intrinsics.checkNotNullExpressionValue(name, "identifier(\"p$index\")");
                }
            }
            Name name2 = name;
            Intrinsics.checkNotNullExpressionValue(name2, "if (function.name.asStri…(\"p$index\")\n            }");
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(function, null, component1, resolveAnnotations, name2, kotlinType, false, false, false, kotlinType2, lazyJavaResolverContext.getComponents().getSourceElementFactory().source(javaValueParameter)));
            arrayList = arrayList2;
            z10 = z10;
            z9 = false;
            c10 = lazyJavaResolverContext;
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return new ResolvedValueParameters(list, z10);
    }

    @g
    public String toString() {
        return "Lazy scope for " + getOwnerDescriptor();
    }

    public LazyJavaScope(@g LazyJavaResolverContext c10, @h LazyJavaScope lazyJavaScope) {
        List emptyList;
        Intrinsics.checkNotNullParameter(c10, "c");
        this.f84761c = c10;
        this.mainScope = lazyJavaScope;
        StorageManager storageManager = c10.getStorageManager();
        LazyJavaScope$allDescriptors$1 lazyJavaScope$allDescriptors$1 = new LazyJavaScope$allDescriptors$1(this);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.allDescriptors = storageManager.createRecursionTolerantLazyValue(lazyJavaScope$allDescriptors$1, emptyList);
        this.declaredMemberIndex = c10.getStorageManager().createLazyValue(new LazyJavaScope$declaredMemberIndex$1(this));
        this.declaredFunctions = c10.getStorageManager().createMemoizedFunction(new LazyJavaScope$declaredFunctions$1(this));
        this.declaredField = c10.getStorageManager().createMemoizedFunctionWithNullableValues(new LazyJavaScope$declaredField$1(this));
        this.functions = c10.getStorageManager().createMemoizedFunction(new LazyJavaScope$functions$1(this));
        this.functionNamesLazy$delegate = c10.getStorageManager().createLazyValue(new LazyJavaScope$functionNamesLazy$2(this));
        this.propertyNamesLazy$delegate = c10.getStorageManager().createLazyValue(new LazyJavaScope$propertyNamesLazy$2(this));
        this.classNamesLazy$delegate = c10.getStorageManager().createLazyValue(new LazyJavaScope$classNamesLazy$2(this));
        this.properties = c10.getStorageManager().createMemoizedFunction(new LazyJavaScope$properties$1(this));
    }
}
