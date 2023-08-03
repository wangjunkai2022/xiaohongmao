package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DeserializedDeclarationsFromSupertypeConflictDataKey;
import kotlin.reflect.jvm.internal.impl.descriptors.DeserializedDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.CliSealedClassInheritorsProvider;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.NonReportingOverrideStrategy;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextClassReceiver;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;
import m8.h;

/* compiled from: DeserializedClassDescriptor.kt */
/* loaded from: classes4.dex */
public final class DeserializedClassDescriptor extends AbstractClassDescriptor implements DeserializedDescriptor {
    @g
    private final Annotations annotations;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final DeserializationContext f84768c;
    @g
    private final ClassId classId;
    @g
    private final ProtoBuf.Class classProto;
    @g
    private final NullableLazyValue<ClassDescriptor> companionObjectDescriptor;
    @g
    private final NotNullLazyValue<Collection<ClassConstructorDescriptor>> constructors;
    @g
    private final DeclarationDescriptor containingDeclaration;
    @h
    private final EnumEntryClassDescriptors enumEntries;
    @g
    private final ClassKind kind;
    @g
    private final ScopesHolderForClass<DeserializedClassMemberScope> memberScopeHolder;
    @g
    private final BinaryVersion metadataVersion;
    @g
    private final Modality modality;
    @g
    private final NullableLazyValue<ClassConstructorDescriptor> primaryConstructor;
    @g
    private final NotNullLazyValue<Collection<ClassDescriptor>> sealedSubclasses;
    @g
    private final SourceElement sourceElement;
    @g
    private final MemberScopeImpl staticScope;
    @g
    private final ProtoContainer.Class thisAsProtoContainer;
    @g
    private final DeserializedClassTypeConstructor typeConstructor;
    @g
    private final NullableLazyValue<ValueClassRepresentation<SimpleType>> valueClassRepresentation;
    @g
    private final DescriptorVisibility visibility;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedClassDescriptor.kt */
    /* loaded from: classes4.dex */
    public final class DeserializedClassMemberScope extends DeserializedMemberScope {
        @g
        private final NotNullLazyValue<Collection<DeclarationDescriptor>> allDescriptors;
        @g
        private final KotlinTypeRefiner kotlinTypeRefiner;
        @g
        private final NotNullLazyValue<Collection<KotlinType>> refinedSupertypes;
        final /* synthetic */ DeserializedClassDescriptor this$0;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public DeserializedClassMemberScope(@m8.g kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor r8, kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner r9) {
            /*
                r7 = this;
                java.lang.String r0 = "kotlinTypeRefiner"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                r7.this$0 = r8
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r2 = r8.getC()
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r0 = r8.getClassProto()
                java.util.List r3 = r0.getFunctionList()
                java.lang.String r0 = "classProto.functionList"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r0 = r8.getClassProto()
                java.util.List r4 = r0.getPropertyList()
                java.lang.String r0 = "classProto.propertyList"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r0 = r8.getClassProto()
                java.util.List r5 = r0.getTypeAliasList()
                java.lang.String r0 = "classProto.typeAliasList"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r0 = r8.getClassProto()
                java.util.List r0 = r0.getNestedClassNameList()
                java.lang.String r1 = "classProto.nestedClassNameList"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r8 = r8.getC()
                kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r8 = r8.getNameResolver()
                java.util.ArrayList r1 = new java.util.ArrayList
                r6 = 10
                int r6 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r0, r6)
                r1.<init>(r6)
                java.util.Iterator r0 = r0.iterator()
            L56:
                boolean r6 = r0.hasNext()
                if (r6 == 0) goto L6e
                java.lang.Object r6 = r0.next()
                java.lang.Number r6 = (java.lang.Number) r6
                int r6 = r6.intValue()
                kotlin.reflect.jvm.internal.impl.name.Name r6 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt.getName(r8, r6)
                r1.add(r6)
                goto L56
            L6e:
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$2$1 r6 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$2$1
                r6.<init>(r1)
                r1 = r7
                r1.<init>(r2, r3, r4, r5, r6)
                r7.kotlinTypeRefiner = r9
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r8 = r7.getC()
                kotlin.reflect.jvm.internal.impl.storage.StorageManager r8 = r8.getStorageManager()
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$allDescriptors$1 r9 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$allDescriptors$1
                r9.<init>(r7)
                kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue r8 = r8.createLazyValue(r9)
                r7.allDescriptors = r8
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r8 = r7.getC()
                kotlin.reflect.jvm.internal.impl.storage.StorageManager r8 = r8.getStorageManager()
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1 r9 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1
                r9.<init>(r7)
                kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue r8 = r8.createLazyValue(r9)
                r7.refinedSupertypes = r8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor.DeserializedClassMemberScope.<init>(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor, kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner):void");
        }

        private final <D extends CallableMemberDescriptor> void generateFakeOverrides(Name name, Collection<? extends D> collection, final List<D> list) {
            getC().getComponents().getKotlinTypeChecker().getOverridingUtil().generateOverridesInFunctionGroup(name, collection, new ArrayList(list), getClassDescriptor(), new NonReportingOverrideStrategy() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$generateFakeOverrides$1
                @Override // kotlin.reflect.jvm.internal.impl.resolve.OverridingStrategy
                public void addFakeOverride(@g CallableMemberDescriptor fakeOverride) {
                    Intrinsics.checkNotNullParameter(fakeOverride, "fakeOverride");
                    OverridingUtil.resolveUnknownVisibilityForMember(fakeOverride, null);
                    list.add(fakeOverride);
                }

                @Override // kotlin.reflect.jvm.internal.impl.resolve.NonReportingOverrideStrategy
                protected void conflict(@g CallableMemberDescriptor fromSuper, @g CallableMemberDescriptor fromCurrent) {
                    Intrinsics.checkNotNullParameter(fromSuper, "fromSuper");
                    Intrinsics.checkNotNullParameter(fromCurrent, "fromCurrent");
                    if (fromCurrent instanceof FunctionDescriptorImpl) {
                        ((FunctionDescriptorImpl) fromCurrent).putInUserDataMap(DeserializedDeclarationsFromSupertypeConflictDataKey.INSTANCE, fromSuper);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DeserializedClassDescriptor getClassDescriptor() {
            return this.this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void addEnumEntryDescriptors(@g Collection<DeclarationDescriptor> result, @g Function1<? super Name, Boolean> nameFilter) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
            EnumEntryClassDescriptors enumEntryClassDescriptors = getClassDescriptor().enumEntries;
            Collection<ClassDescriptor> all = enumEntryClassDescriptors != null ? enumEntryClassDescriptors.all() : null;
            if (all == null) {
                all = CollectionsKt__CollectionsKt.emptyList();
            }
            result.addAll(all);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void computeNonDeclaredFunctions(@g Name name, @g List<SimpleFunctionDescriptor> functions) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(functions, "functions");
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : this.refinedSupertypes.invoke()) {
                arrayList.addAll(kotlinType.getMemberScope().getContributedFunctions(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            functions.addAll(getC().getComponents().getAdditionalClassPartsProvider().getFunctions(name, this.this$0));
            generateFakeOverrides(name, arrayList, functions);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void computeNonDeclaredProperties(@g Name name, @g List<PropertyDescriptor> descriptors) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(descriptors, "descriptors");
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : this.refinedSupertypes.invoke()) {
                arrayList.addAll(kotlinType.getMemberScope().getContributedVariables(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            generateFakeOverrides(name, arrayList, descriptors);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        @g
        protected ClassId createClassId(@g Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            ClassId createNestedClassId = this.this$0.classId.createNestedClassId(name);
            Intrinsics.checkNotNullExpressionValue(createNestedClassId, "classId.createNestedClassId(name)");
            return createNestedClassId;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        @h
        public ClassifierDescriptor getContributedClassifier(@g Name name, @g LookupLocation location) {
            ClassDescriptor findEnumEntry;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            recordLookup(name, location);
            EnumEntryClassDescriptors enumEntryClassDescriptors = getClassDescriptor().enumEntries;
            return (enumEntryClassDescriptors == null || (findEnumEntry = enumEntryClassDescriptors.findEnumEntry(name)) == null) ? super.getContributedClassifier(name, location) : findEnumEntry;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        @g
        public Collection<DeclarationDescriptor> getContributedDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter) {
            Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
            Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
            return this.allDescriptors.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        @g
        public Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            recordLookup(name, location);
            return super.getContributedFunctions(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        @g
        public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            recordLookup(name, location);
            return super.getContributedVariables(name, location);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        @h
        public Set<Name> getNonDeclaredClassifierNames() {
            List<KotlinType> mo1364getSupertypes = getClassDescriptor().typeConstructor.mo1364getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (KotlinType kotlinType : mo1364getSupertypes) {
                Set<Name> classifierNames = kotlinType.getMemberScope().getClassifierNames();
                if (classifierNames == null) {
                    return null;
                }
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, classifierNames);
            }
            return linkedHashSet;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        @g
        public Set<Name> getNonDeclaredFunctionNames() {
            List<KotlinType> mo1364getSupertypes = getClassDescriptor().typeConstructor.mo1364getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (KotlinType kotlinType : mo1364getSupertypes) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, kotlinType.getMemberScope().getFunctionNames());
            }
            linkedHashSet.addAll(getC().getComponents().getAdditionalClassPartsProvider().getFunctionsNames(this.this$0));
            return linkedHashSet;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        @g
        public Set<Name> getNonDeclaredVariableNames() {
            List<KotlinType> mo1364getSupertypes = getClassDescriptor().typeConstructor.mo1364getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (KotlinType kotlinType : mo1364getSupertypes) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, kotlinType.getMemberScope().getVariableNames());
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected boolean isDeclaredFunctionAvailable(@g SimpleFunctionDescriptor function) {
            Intrinsics.checkNotNullParameter(function, "function");
            return getC().getComponents().getPlatformDependentDeclarationFilter().isFunctionAvailable(this.this$0, function);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public void recordLookup(@g Name name, @g LookupLocation location) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            UtilsKt.record(getC().getComponents().getLookupTracker(), location, getClassDescriptor(), name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedClassDescriptor.kt */
    /* loaded from: classes4.dex */
    public final class EnumEntryClassDescriptors {
        @g
        private final MemoizedFunctionToNullable<Name, ClassDescriptor> enumEntryByName;
        @g
        private final Map<Name, ProtoBuf.EnumEntry> enumEntryProtos;
        @g
        private final NotNullLazyValue<Set<Name>> enumMemberNames;

        public EnumEntryClassDescriptors() {
            int collectionSizeOrDefault;
            int mapCapacity;
            int coerceAtLeast;
            List<ProtoBuf.EnumEntry> enumEntryList = DeserializedClassDescriptor.this.getClassProto().getEnumEntryList();
            Intrinsics.checkNotNullExpressionValue(enumEntryList, "classProto.enumEntryList");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enumEntryList, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (Object obj : enumEntryList) {
                linkedHashMap.put(NameResolverUtilKt.getName(DeserializedClassDescriptor.this.getC().getNameResolver(), ((ProtoBuf.EnumEntry) obj).getName()), obj);
            }
            this.enumEntryProtos = linkedHashMap;
            this.enumEntryByName = DeserializedClassDescriptor.this.getC().getStorageManager().createMemoizedFunctionWithNullableValues(new DeserializedClassDescriptor$EnumEntryClassDescriptors$enumEntryByName$1(this, DeserializedClassDescriptor.this));
            this.enumMemberNames = DeserializedClassDescriptor.this.getC().getStorageManager().createLazyValue(new DeserializedClassDescriptor$EnumEntryClassDescriptors$enumMemberNames$1(this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<Name> computeEnumMemberNames() {
            Set<Name> plus;
            HashSet hashSet = new HashSet();
            for (KotlinType kotlinType : DeserializedClassDescriptor.this.getTypeConstructor().mo1364getSupertypes()) {
                for (DeclarationDescriptor declarationDescriptor : ResolutionScope.DefaultImpls.getContributedDescriptors$default(kotlinType.getMemberScope(), null, null, 3, null)) {
                    if ((declarationDescriptor instanceof SimpleFunctionDescriptor) || (declarationDescriptor instanceof PropertyDescriptor)) {
                        hashSet.add(declarationDescriptor.getName());
                    }
                }
            }
            List<ProtoBuf.Function> functionList = DeserializedClassDescriptor.this.getClassProto().getFunctionList();
            Intrinsics.checkNotNullExpressionValue(functionList, "classProto.functionList");
            DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            for (ProtoBuf.Function function : functionList) {
                hashSet.add(NameResolverUtilKt.getName(deserializedClassDescriptor.getC().getNameResolver(), function.getName()));
            }
            List<ProtoBuf.Property> propertyList = DeserializedClassDescriptor.this.getClassProto().getPropertyList();
            Intrinsics.checkNotNullExpressionValue(propertyList, "classProto.propertyList");
            DeserializedClassDescriptor deserializedClassDescriptor2 = DeserializedClassDescriptor.this;
            for (ProtoBuf.Property property : propertyList) {
                hashSet.add(NameResolverUtilKt.getName(deserializedClassDescriptor2.getC().getNameResolver(), property.getName()));
            }
            plus = SetsKt___SetsKt.plus((Set) hashSet, (Iterable) hashSet);
            return plus;
        }

        @g
        public final Collection<ClassDescriptor> all() {
            Set<Name> keySet = this.enumEntryProtos.keySet();
            ArrayList arrayList = new ArrayList();
            for (Name name : keySet) {
                ClassDescriptor findEnumEntry = findEnumEntry(name);
                if (findEnumEntry != null) {
                    arrayList.add(findEnumEntry);
                }
            }
            return arrayList;
        }

        @h
        public final ClassDescriptor findEnumEntry(@g Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return this.enumEntryByName.invoke(name);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(@g DeserializationContext outerContext, @g ProtoBuf.Class classProto, @g NameResolver nameResolver, @g BinaryVersion metadataVersion, @g SourceElement sourceElement) {
        super(outerContext.getStorageManager(), NameResolverUtilKt.getClassId(nameResolver, classProto.getFqName()).getShortClassName());
        Annotations nonEmptyDeserializedAnnotations;
        Intrinsics.checkNotNullParameter(outerContext, "outerContext");
        Intrinsics.checkNotNullParameter(classProto, "classProto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        Intrinsics.checkNotNullParameter(sourceElement, "sourceElement");
        this.classProto = classProto;
        this.metadataVersion = metadataVersion;
        this.sourceElement = sourceElement;
        this.classId = NameResolverUtilKt.getClassId(nameResolver, classProto.getFqName());
        ProtoEnumFlags protoEnumFlags = ProtoEnumFlags.INSTANCE;
        this.modality = protoEnumFlags.modality(Flags.MODALITY.get(classProto.getFlags()));
        this.visibility = ProtoEnumFlagsUtilsKt.descriptorVisibility(protoEnumFlags, Flags.VISIBILITY.get(classProto.getFlags()));
        ClassKind classKind = protoEnumFlags.classKind(Flags.CLASS_KIND.get(classProto.getFlags()));
        this.kind = classKind;
        List<ProtoBuf.TypeParameter> typeParameterList = classProto.getTypeParameterList();
        Intrinsics.checkNotNullExpressionValue(typeParameterList, "classProto.typeParameterList");
        ProtoBuf.TypeTable typeTable = classProto.getTypeTable();
        Intrinsics.checkNotNullExpressionValue(typeTable, "classProto.typeTable");
        TypeTable typeTable2 = new TypeTable(typeTable);
        VersionRequirementTable.Companion companion = VersionRequirementTable.Companion;
        ProtoBuf.VersionRequirementTable versionRequirementTable = classProto.getVersionRequirementTable();
        Intrinsics.checkNotNullExpressionValue(versionRequirementTable, "classProto.versionRequirementTable");
        DeserializationContext childContext = outerContext.childContext(this, typeParameterList, nameResolver, typeTable2, companion.create(versionRequirementTable), metadataVersion);
        this.f84768c = childContext;
        ClassKind classKind2 = ClassKind.ENUM_CLASS;
        this.staticScope = classKind == classKind2 ? new StaticScopeForKotlinEnum(childContext.getStorageManager(), this) : MemberScope.Empty.INSTANCE;
        this.typeConstructor = new DeserializedClassTypeConstructor();
        this.memberScopeHolder = ScopesHolderForClass.Companion.create(this, childContext.getStorageManager(), childContext.getComponents().getKotlinTypeChecker().getKotlinTypeRefiner(), new DeserializedClassDescriptor$memberScopeHolder$1(this));
        this.enumEntries = classKind == classKind2 ? new EnumEntryClassDescriptors() : null;
        DeclarationDescriptor containingDeclaration = outerContext.getContainingDeclaration();
        this.containingDeclaration = containingDeclaration;
        this.primaryConstructor = childContext.getStorageManager().createNullableLazyValue(new DeserializedClassDescriptor$primaryConstructor$1(this));
        this.constructors = childContext.getStorageManager().createLazyValue(new DeserializedClassDescriptor$constructors$1(this));
        this.companionObjectDescriptor = childContext.getStorageManager().createNullableLazyValue(new DeserializedClassDescriptor$companionObjectDescriptor$1(this));
        this.sealedSubclasses = childContext.getStorageManager().createLazyValue(new DeserializedClassDescriptor$sealedSubclasses$1(this));
        this.valueClassRepresentation = childContext.getStorageManager().createNullableLazyValue(new DeserializedClassDescriptor$valueClassRepresentation$1(this));
        NameResolver nameResolver2 = childContext.getNameResolver();
        TypeTable typeTable3 = childContext.getTypeTable();
        DeserializedClassDescriptor deserializedClassDescriptor = containingDeclaration instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) containingDeclaration : null;
        this.thisAsProtoContainer = new ProtoContainer.Class(classProto, nameResolver2, typeTable3, sourceElement, deserializedClassDescriptor != null ? deserializedClassDescriptor.thisAsProtoContainer : null);
        if (!Flags.HAS_ANNOTATIONS.get(classProto.getFlags()).booleanValue()) {
            nonEmptyDeserializedAnnotations = Annotations.Companion.getEMPTY();
        } else {
            nonEmptyDeserializedAnnotations = new NonEmptyDeserializedAnnotations(childContext.getStorageManager(), new DeserializedClassDescriptor$annotations$1(this));
        }
        this.annotations = nonEmptyDeserializedAnnotations;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClassDescriptor computeCompanionObjectDescriptor() {
        if (this.classProto.hasCompanionObjectName()) {
            ClassifierDescriptor contributedClassifier = getMemberScope().getContributedClassifier(NameResolverUtilKt.getName(this.f84768c.getNameResolver(), this.classProto.getCompanionObjectName()), NoLookupLocation.FROM_DESERIALIZATION);
            if (contributedClassifier instanceof ClassDescriptor) {
                return (ClassDescriptor) contributedClassifier;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<ClassConstructorDescriptor> computeConstructors() {
        List listOfNotNull;
        List plus;
        List plus2;
        List<ClassConstructorDescriptor> computeSecondaryConstructors = computeSecondaryConstructors();
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(getUnsubstitutedPrimaryConstructor());
        plus = CollectionsKt___CollectionsKt.plus((Collection) computeSecondaryConstructors, (Iterable) listOfNotNull);
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) this.f84768c.getComponents().getAdditionalClassPartsProvider().getConstructors(this));
        return plus2;
    }

    private final InlineClassRepresentation<SimpleType> computeInlineClassRepresentation() {
        Object first;
        Name name;
        SimpleType simpleType;
        Object obj = null;
        if (isInline() || isValue()) {
            if (!isValue() || this.classProto.hasInlineClassUnderlyingPropertyName() || this.classProto.hasInlineClassUnderlyingType() || this.classProto.hasInlineClassUnderlyingTypeId() || this.classProto.getMultiFieldValueClassUnderlyingNameCount() <= 0) {
                if (this.classProto.hasInlineClassUnderlyingPropertyName()) {
                    name = NameResolverUtilKt.getName(this.f84768c.getNameResolver(), this.classProto.getInlineClassUnderlyingPropertyName());
                } else if (!this.metadataVersion.isAtLeast(1, 5, 1)) {
                    ClassConstructorDescriptor unsubstitutedPrimaryConstructor = getUnsubstitutedPrimaryConstructor();
                    if (unsubstitutedPrimaryConstructor != null) {
                        List<ValueParameterDescriptor> valueParameters = unsubstitutedPrimaryConstructor.getValueParameters();
                        Intrinsics.checkNotNullExpressionValue(valueParameters, "constructor.valueParameters");
                        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) valueParameters);
                        name = ((ValueParameterDescriptor) first).getName();
                        Intrinsics.checkNotNullExpressionValue(name, "{\n                // Bef…irst().name\n            }");
                    } else {
                        throw new IllegalStateException(("Inline class has no primary constructor: " + this).toString());
                    }
                } else {
                    throw new IllegalStateException(("Inline class has no underlying property name in metadata: " + this).toString());
                }
                ProtoBuf.Type inlineClassUnderlyingType = ProtoTypeTableUtilKt.inlineClassUnderlyingType(this.classProto, this.f84768c.getTypeTable());
                if (inlineClassUnderlyingType == null || (simpleType = TypeDeserializer.simpleType$default(this.f84768c.getTypeDeserializer(), inlineClassUnderlyingType, false, 2, null)) == null) {
                    Iterator<T> it = getMemberScope().getContributedVariables(name, NoLookupLocation.FROM_DESERIALIZATION).iterator();
                    Object obj2 = null;
                    boolean z9 = false;
                    while (true) {
                        if (it.hasNext()) {
                            Object next = it.next();
                            if (((PropertyDescriptor) next).getExtensionReceiverParameter() == null) {
                                if (z9) {
                                    break;
                                }
                                obj2 = next;
                                z9 = true;
                            }
                        } else if (z9) {
                            obj = obj2;
                        }
                    }
                    PropertyDescriptor propertyDescriptor = (PropertyDescriptor) obj;
                    if (propertyDescriptor != null) {
                        KotlinType type = propertyDescriptor.getType();
                        Intrinsics.checkNotNull(type, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
                        simpleType = (SimpleType) type;
                    } else {
                        throw new IllegalStateException(("Value class has no underlying property: " + this).toString());
                    }
                }
                return new InlineClassRepresentation<>(name, simpleType);
            }
            return null;
        }
        return null;
    }

    private final MultiFieldValueClassRepresentation<SimpleType> computeMultiFieldValueClassRepresentation() {
        int collectionSizeOrDefault;
        List<ProtoBuf.Type> multiFieldValueClassUnderlyingTypeList;
        int collectionSizeOrDefault2;
        List zip;
        int collectionSizeOrDefault3;
        List<Integer> multiFieldValueClassUnderlyingNameList = this.classProto.getMultiFieldValueClassUnderlyingNameList();
        Intrinsics.checkNotNullExpressionValue(multiFieldValueClassUnderlyingNameList, "classProto.multiFieldValueClassUnderlyingNameList");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(multiFieldValueClassUnderlyingNameList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Integer it : multiFieldValueClassUnderlyingNameList) {
            NameResolver nameResolver = this.f84768c.getNameResolver();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(NameResolverUtilKt.getName(nameResolver, it.intValue()));
        }
        if (!(!arrayList.isEmpty())) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        if (isValue()) {
            Pair pair = TuplesKt.to(Integer.valueOf(this.classProto.getMultiFieldValueClassUnderlyingTypeIdCount()), Integer.valueOf(this.classProto.getMultiFieldValueClassUnderlyingTypeCount()));
            if (Intrinsics.areEqual(pair, TuplesKt.to(Integer.valueOf(arrayList.size()), 0))) {
                List<Integer> multiFieldValueClassUnderlyingTypeIdList = this.classProto.getMultiFieldValueClassUnderlyingTypeIdList();
                Intrinsics.checkNotNullExpressionValue(multiFieldValueClassUnderlyingTypeIdList, "classProto.multiFieldVal…ClassUnderlyingTypeIdList");
                collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(multiFieldValueClassUnderlyingTypeIdList, 10);
                multiFieldValueClassUnderlyingTypeList = new ArrayList<>(collectionSizeOrDefault3);
                for (Integer it2 : multiFieldValueClassUnderlyingTypeIdList) {
                    TypeTable typeTable = this.f84768c.getTypeTable();
                    Intrinsics.checkNotNullExpressionValue(it2, "it");
                    multiFieldValueClassUnderlyingTypeList.add(typeTable.get(it2.intValue()));
                }
            } else if (!Intrinsics.areEqual(pair, TuplesKt.to(0, Integer.valueOf(arrayList.size())))) {
                throw new IllegalStateException(("Illegal multi-field value class representation: " + this).toString());
            } else {
                multiFieldValueClassUnderlyingTypeList = this.classProto.getMultiFieldValueClassUnderlyingTypeList();
            }
            Intrinsics.checkNotNullExpressionValue(multiFieldValueClassUnderlyingTypeList, "when (typeIdCount to typ…tation: $this\")\n        }");
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(multiFieldValueClassUnderlyingTypeList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (ProtoBuf.Type it3 : multiFieldValueClassUnderlyingTypeList) {
                TypeDeserializer typeDeserializer = this.f84768c.getTypeDeserializer();
                Intrinsics.checkNotNullExpressionValue(it3, "it");
                arrayList2.add(TypeDeserializer.simpleType$default(typeDeserializer, it3, false, 2, null));
            }
            zip = CollectionsKt___CollectionsKt.zip(arrayList, arrayList2);
            return new MultiFieldValueClassRepresentation<>(zip);
        }
        throw new IllegalArgumentException(("Not a value class: " + this).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClassConstructorDescriptor computePrimaryConstructor() {
        Object obj;
        if (this.kind.isSingleton()) {
            ClassConstructorDescriptorImpl createPrimaryConstructorForObject = DescriptorFactory.createPrimaryConstructorForObject(this, SourceElement.NO_SOURCE);
            createPrimaryConstructorForObject.setReturnType(getDefaultType());
            return createPrimaryConstructorForObject;
        }
        List<ProtoBuf.Constructor> constructorList = this.classProto.getConstructorList();
        Intrinsics.checkNotNullExpressionValue(constructorList, "classProto.constructorList");
        Iterator<T> it = constructorList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!Flags.IS_SECONDARY.get(((ProtoBuf.Constructor) obj).getFlags()).booleanValue()) {
                break;
            }
        }
        ProtoBuf.Constructor constructor = (ProtoBuf.Constructor) obj;
        if (constructor != null) {
            return this.f84768c.getMemberDeserializer().loadConstructor(constructor, true);
        }
        return null;
    }

    private final List<ClassConstructorDescriptor> computeSecondaryConstructors() {
        int collectionSizeOrDefault;
        List<ProtoBuf.Constructor> constructorList = this.classProto.getConstructorList();
        Intrinsics.checkNotNullExpressionValue(constructorList, "classProto.constructorList");
        ArrayList<ProtoBuf.Constructor> arrayList = new ArrayList();
        for (Object obj : constructorList) {
            Boolean bool = Flags.IS_SECONDARY.get(((ProtoBuf.Constructor) obj).getFlags());
            Intrinsics.checkNotNullExpressionValue(bool, "IS_SECONDARY.get(it.flags)");
            if (bool.booleanValue()) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Constructor it : arrayList) {
            MemberDeserializer memberDeserializer = this.f84768c.getMemberDeserializer();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList2.add(memberDeserializer.loadConstructor(it, false));
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<ClassDescriptor> computeSubclassesForSealedClass() {
        List emptyList;
        if (this.modality != Modality.SEALED) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<Integer> fqNames = this.classProto.getSealedSubclassFqNameList();
        Intrinsics.checkNotNullExpressionValue(fqNames, "fqNames");
        if (!fqNames.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Integer index : fqNames) {
                DeserializationComponents components = this.f84768c.getComponents();
                NameResolver nameResolver = this.f84768c.getNameResolver();
                Intrinsics.checkNotNullExpressionValue(index, "index");
                ClassDescriptor deserializeClass = components.deserializeClass(NameResolverUtilKt.getClassId(nameResolver, index.intValue()));
                if (deserializeClass != null) {
                    arrayList.add(deserializeClass);
                }
            }
            return arrayList;
        }
        return CliSealedClassInheritorsProvider.INSTANCE.computeSealedSubclasses(this, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ValueClassRepresentation<SimpleType> computeValueClassRepresentation() {
        InlineClassRepresentation<SimpleType> computeInlineClassRepresentation = computeInlineClassRepresentation();
        MultiFieldValueClassRepresentation<SimpleType> computeMultiFieldValueClassRepresentation = computeMultiFieldValueClassRepresentation();
        if (computeInlineClassRepresentation != null && computeMultiFieldValueClassRepresentation != null) {
            throw new IllegalArgumentException("Class cannot have both inline class representation and multi field class representation: " + this);
        } else if ((!isValue() && !isInline()) || computeInlineClassRepresentation != null || computeMultiFieldValueClassRepresentation != null) {
            return computeInlineClassRepresentation != null ? computeInlineClassRepresentation : computeMultiFieldValueClassRepresentation;
        } else {
            throw new IllegalArgumentException("Value class has no value class representation: " + this);
        }
    }

    private final DeserializedClassMemberScope getMemberScope() {
        return this.memberScopeHolder.getScope(this.f84768c.getComponents().getKotlinTypeChecker().getKotlinTypeRefiner());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    @g
    public Annotations getAnnotations() {
        return this.annotations;
    }

    @g
    public final DeserializationContext getC() {
        return this.f84768c;
    }

    @g
    public final ProtoBuf.Class getClassProto() {
        return this.classProto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @h
    public ClassDescriptor getCompanionObjectDescriptor() {
        return this.companionObjectDescriptor.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public Collection<ClassConstructorDescriptor> getConstructors() {
        return this.constructors.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public DeclarationDescriptor getContainingDeclaration() {
        return this.containingDeclaration;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public List<ReceiverParameterDescriptor> getContextReceivers() {
        int collectionSizeOrDefault;
        List<ProtoBuf.Type> contextReceiverTypeList = this.classProto.getContextReceiverTypeList();
        Intrinsics.checkNotNullExpressionValue(contextReceiverTypeList, "classProto.contextReceiverTypeList");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(contextReceiverTypeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ProtoBuf.Type it : contextReceiverTypeList) {
            TypeDeserializer typeDeserializer = this.f84768c.getTypeDeserializer();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(new ReceiverParameterDescriptorImpl(getThisAsReceiverParameter(), new ContextClassReceiver(this, typeDeserializer.type(it), null), Annotations.Companion.getEMPTY()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    @g
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.f84768c.getTypeDeserializer().getOwnTypeParameters();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public ClassKind getKind() {
        return this.kind;
    }

    @g
    public final BinaryVersion getMetadataVersion() {
        return this.metadataVersion;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    @g
    public Modality getModality() {
        return this.modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public Collection<ClassDescriptor> getSealedSubclasses() {
        return this.sealedSubclasses.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    @g
    public SourceElement getSource() {
        return this.sourceElement;
    }

    @g
    public final ProtoContainer.Class getThisAsProtoContainer$deserialization() {
        return this.thisAsProtoContainer;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public TypeConstructor getTypeConstructor() {
        return this.typeConstructor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    @g
    public MemberScope getUnsubstitutedMemberScope(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.memberScopeHolder.getScope(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @h
    public ClassConstructorDescriptor getUnsubstitutedPrimaryConstructor() {
        return this.primaryConstructor.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @h
    public ValueClassRepresentation<SimpleType> getValueClassRepresentation() {
        return this.valueClassRepresentation.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    @g
    public DescriptorVisibility getVisibility() {
        return this.visibility;
    }

    public final boolean hasNestedClass$deserialization(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return getMemberScope().getClassNames$deserialization().contains(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isCompanionObject() {
        return Flags.CLASS_KIND.get(this.classProto.getFlags()) == ProtoBuf.Class.Kind.COMPANION_OBJECT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isData() {
        Boolean bool = Flags.IS_DATA.get(this.classProto.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_DATA.get(classProto.flags)");
        return bool.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExpect() {
        Boolean bool = Flags.IS_EXPECT_CLASS.get(this.classProto.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_EXPECT_CLASS.get(classProto.flags)");
        return bool.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExternal() {
        Boolean bool = Flags.IS_EXTERNAL_CLASS.get(this.classProto.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_EXTERNAL_CLASS.get(classProto.flags)");
        return bool.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isFun() {
        Boolean bool = Flags.IS_FUN_INTERFACE.get(this.classProto.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_FUN_INTERFACE.get(classProto.flags)");
        return bool.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isInline() {
        Boolean bool = Flags.IS_VALUE_CLASS.get(this.classProto.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_VALUE_CLASS.get(classProto.flags)");
        return bool.booleanValue() && this.metadataVersion.isAtMost(1, 4, 1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public boolean isInner() {
        Boolean bool = Flags.IS_INNER.get(this.classProto.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_INNER.get(classProto.flags)");
        return bool.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public boolean isValue() {
        Boolean bool = Flags.IS_VALUE_CLASS.get(this.classProto.getFlags());
        Intrinsics.checkNotNullExpressionValue(bool, "IS_VALUE_CLASS.get(classProto.flags)");
        return bool.booleanValue() && this.metadataVersion.isAtLeast(1, 4, 2);
    }

    @g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("deserialized ");
        sb.append(isExpect() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedClassDescriptor.kt */
    /* loaded from: classes4.dex */
    public final class DeserializedClassTypeConstructor extends AbstractClassTypeConstructor {
        @g
        private final NotNullLazyValue<List<TypeParameterDescriptor>> parameters;

        public DeserializedClassTypeConstructor() {
            super(DeserializedClassDescriptor.this.getC().getStorageManager());
            this.parameters = DeserializedClassDescriptor.this.getC().getStorageManager().createLazyValue(new DeserializedClassDescriptor$DeserializedClassTypeConstructor$parameters$1(DeserializedClassDescriptor.this));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        @g
        public Collection<KotlinType> computeSupertypes() {
            int collectionSizeOrDefault;
            List<KotlinType> plus;
            List list;
            int collectionSizeOrDefault2;
            String asString;
            FqName asSingleFqName;
            List<ProtoBuf.Type> supertypes = ProtoTypeTableUtilKt.supertypes(DeserializedClassDescriptor.this.getClassProto(), DeserializedClassDescriptor.this.getC().getTypeTable());
            DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supertypes, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (ProtoBuf.Type type : supertypes) {
                arrayList.add(deserializedClassDescriptor.getC().getTypeDeserializer().type(type));
            }
            plus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) DeserializedClassDescriptor.this.getC().getComponents().getAdditionalClassPartsProvider().getSupertypes(DeserializedClassDescriptor.this));
            ArrayList<NotFoundClasses.MockClassDescriptor> arrayList2 = new ArrayList();
            for (KotlinType kotlinType : plus) {
                ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                NotFoundClasses.MockClassDescriptor mockClassDescriptor = declarationDescriptor instanceof NotFoundClasses.MockClassDescriptor ? (NotFoundClasses.MockClassDescriptor) declarationDescriptor : null;
                if (mockClassDescriptor != null) {
                    arrayList2.add(mockClassDescriptor);
                }
            }
            if (!arrayList2.isEmpty()) {
                ErrorReporter errorReporter = DeserializedClassDescriptor.this.getC().getComponents().getErrorReporter();
                DeserializedClassDescriptor deserializedClassDescriptor2 = DeserializedClassDescriptor.this;
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                for (NotFoundClasses.MockClassDescriptor mockClassDescriptor2 : arrayList2) {
                    ClassId classId = DescriptorUtilsKt.getClassId(mockClassDescriptor2);
                    if (classId == null || (asSingleFqName = classId.asSingleFqName()) == null || (asString = asSingleFqName.asString()) == null) {
                        asString = mockClassDescriptor2.getName().asString();
                    }
                    arrayList3.add(asString);
                }
                errorReporter.reportIncompleteHierarchy(deserializedClassDescriptor2, arrayList3);
            }
            list = CollectionsKt___CollectionsKt.toList(plus);
            return list;
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
            return SupertypeLoopChecker.EMPTY.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public boolean isDenotable() {
            return true;
        }

        @g
        public String toString() {
            String name = DeserializedClassDescriptor.this.getName().toString();
            Intrinsics.checkNotNullExpressionValue(name, "name.toString()");
            return name;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.ClassifierBasedTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public DeserializedClassDescriptor getDeclarationDescriptor() {
            return DeserializedClassDescriptor.this;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    @g
    public MemberScopeImpl getStaticScope() {
        return this.staticScope;
    }
}
