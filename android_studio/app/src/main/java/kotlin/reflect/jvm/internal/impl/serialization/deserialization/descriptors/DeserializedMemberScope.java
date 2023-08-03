package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.MemberComparator;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;
import m8.h;

/* compiled from: DeserializedMemberScope.kt */
/* loaded from: classes4.dex */
public abstract class DeserializedMemberScope extends MemberScopeImpl {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DeserializedMemberScope.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DeserializedMemberScope.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};
    @g

    /* renamed from: c  reason: collision with root package name */
    private final DeserializationContext f84769c;
    @g
    private final NotNullLazyValue classNames$delegate;
    @g
    private final NullableLazyValue classifierNamesLazy$delegate;
    @g
    private final Implementation impl;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedMemberScope.kt */
    /* loaded from: classes4.dex */
    public interface Implementation {
        void addFunctionsAndPropertiesTo(@g Collection<DeclarationDescriptor> collection, @g DescriptorKindFilter descriptorKindFilter, @g Function1<? super Name, Boolean> function1, @g LookupLocation lookupLocation);

        @g
        Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation lookupLocation);

        @g
        Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation lookupLocation);

        @g
        Set<Name> getFunctionNames();

        @h
        TypeAliasDescriptor getTypeAliasByName(@g Name name);

        @g
        Set<Name> getTypeAliasNames();

        @g
        Set<Name> getVariableNames();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedMemberScope.kt */
    /* loaded from: classes4.dex */
    public final class NoReorderImplementation implements Implementation {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "declaredFunctions", "getDeclaredFunctions()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "declaredProperties", "getDeclaredProperties()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "allTypeAliases", "getAllTypeAliases()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "allFunctions", "getAllFunctions()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "allProperties", "getAllProperties()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "typeAliasesByName", "getTypeAliasesByName()Ljava/util/Map;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "functionsByName", "getFunctionsByName()Ljava/util/Map;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "propertiesByName", "getPropertiesByName()Ljava/util/Map;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
        @g
        private final NotNullLazyValue allFunctions$delegate;
        @g
        private final NotNullLazyValue allProperties$delegate;
        @g
        private final NotNullLazyValue allTypeAliases$delegate;
        @g
        private final NotNullLazyValue declaredFunctions$delegate;
        @g
        private final NotNullLazyValue declaredProperties$delegate;
        @g
        private final List<ProtoBuf.Function> functionList;
        @g
        private final NotNullLazyValue functionNames$delegate;
        @g
        private final NotNullLazyValue functionsByName$delegate;
        @g
        private final NotNullLazyValue propertiesByName$delegate;
        @g
        private final List<ProtoBuf.Property> propertyList;
        final /* synthetic */ DeserializedMemberScope this$0;
        @g
        private final List<ProtoBuf.TypeAlias> typeAliasList;
        @g
        private final NotNullLazyValue typeAliasesByName$delegate;
        @g
        private final NotNullLazyValue variableNames$delegate;

        public NoReorderImplementation(@g DeserializedMemberScope deserializedMemberScope, @g List<ProtoBuf.Function> functionList, @g List<ProtoBuf.Property> propertyList, List<ProtoBuf.TypeAlias> typeAliasList) {
            Intrinsics.checkNotNullParameter(functionList, "functionList");
            Intrinsics.checkNotNullParameter(propertyList, "propertyList");
            Intrinsics.checkNotNullParameter(typeAliasList, "typeAliasList");
            this.this$0 = deserializedMemberScope;
            this.functionList = functionList;
            this.propertyList = propertyList;
            this.typeAliasList = deserializedMemberScope.getC().getComponents().getConfiguration().getTypeAliasesAllowed() ? typeAliasList : CollectionsKt__CollectionsKt.emptyList();
            this.declaredFunctions$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$declaredFunctions$2(this));
            this.declaredProperties$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$declaredProperties$2(this));
            this.allTypeAliases$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$allTypeAliases$2(this));
            this.allFunctions$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$allFunctions$2(this));
            this.allProperties$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$allProperties$2(this));
            this.typeAliasesByName$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$typeAliasesByName$2(this));
            this.functionsByName$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$functionsByName$2(this));
            this.propertiesByName$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$propertiesByName$2(this));
            this.functionNames$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$functionNames$2(this, deserializedMemberScope));
            this.variableNames$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$NoReorderImplementation$variableNames$2(this, deserializedMemberScope));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<SimpleFunctionDescriptor> computeAllNonDeclaredFunctions() {
            Set<Name> nonDeclaredFunctionNames = this.this$0.getNonDeclaredFunctionNames();
            ArrayList arrayList = new ArrayList();
            for (Name name : nonDeclaredFunctionNames) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, computeNonDeclaredFunctionsForName(name));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<PropertyDescriptor> computeAllNonDeclaredProperties() {
            Set<Name> nonDeclaredVariableNames = this.this$0.getNonDeclaredVariableNames();
            ArrayList arrayList = new ArrayList();
            for (Name name : nonDeclaredVariableNames) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, computeNonDeclaredPropertiesForName(name));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<SimpleFunctionDescriptor> computeFunctions() {
            List<ProtoBuf.Function> list = this.functionList;
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (MessageLite messageLite : list) {
                SimpleFunctionDescriptor loadFunction = deserializedMemberScope.getC().getMemberDeserializer().loadFunction((ProtoBuf.Function) messageLite);
                if (!deserializedMemberScope.isDeclaredFunctionAvailable(loadFunction)) {
                    loadFunction = null;
                }
                if (loadFunction != null) {
                    arrayList.add(loadFunction);
                }
            }
            return arrayList;
        }

        private final List<SimpleFunctionDescriptor> computeNonDeclaredFunctionsForName(Name name) {
            List<SimpleFunctionDescriptor> declaredFunctions = getDeclaredFunctions();
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (Object obj : declaredFunctions) {
                if (Intrinsics.areEqual(((DeclarationDescriptor) obj).getName(), name)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.computeNonDeclaredFunctions(name, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        private final List<PropertyDescriptor> computeNonDeclaredPropertiesForName(Name name) {
            List<PropertyDescriptor> declaredProperties = getDeclaredProperties();
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (Object obj : declaredProperties) {
                if (Intrinsics.areEqual(((DeclarationDescriptor) obj).getName(), name)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.computeNonDeclaredProperties(name, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<PropertyDescriptor> computeProperties() {
            List<ProtoBuf.Property> list = this.propertyList;
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (MessageLite messageLite : list) {
                PropertyDescriptor loadProperty = deserializedMemberScope.getC().getMemberDeserializer().loadProperty((ProtoBuf.Property) messageLite);
                if (loadProperty != null) {
                    arrayList.add(loadProperty);
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<TypeAliasDescriptor> computeTypeAliases() {
            List<ProtoBuf.TypeAlias> list = this.typeAliasList;
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (MessageLite messageLite : list) {
                TypeAliasDescriptor loadTypeAlias = deserializedMemberScope.getC().getMemberDeserializer().loadTypeAlias((ProtoBuf.TypeAlias) messageLite);
                if (loadTypeAlias != null) {
                    arrayList.add(loadTypeAlias);
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<SimpleFunctionDescriptor> getAllFunctions() {
            return (List) StorageKt.getValue(this.allFunctions$delegate, this, $$delegatedProperties[3]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<PropertyDescriptor> getAllProperties() {
            return (List) StorageKt.getValue(this.allProperties$delegate, this, $$delegatedProperties[4]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<TypeAliasDescriptor> getAllTypeAliases() {
            return (List) StorageKt.getValue(this.allTypeAliases$delegate, this, $$delegatedProperties[2]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<SimpleFunctionDescriptor> getDeclaredFunctions() {
            return (List) StorageKt.getValue(this.declaredFunctions$delegate, this, $$delegatedProperties[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<PropertyDescriptor> getDeclaredProperties() {
            return (List) StorageKt.getValue(this.declaredProperties$delegate, this, $$delegatedProperties[1]);
        }

        private final Map<Name, Collection<SimpleFunctionDescriptor>> getFunctionsByName() {
            return (Map) StorageKt.getValue(this.functionsByName$delegate, this, $$delegatedProperties[6]);
        }

        private final Map<Name, Collection<PropertyDescriptor>> getPropertiesByName() {
            return (Map) StorageKt.getValue(this.propertiesByName$delegate, this, $$delegatedProperties[7]);
        }

        private final Map<Name, TypeAliasDescriptor> getTypeAliasesByName() {
            return (Map) StorageKt.getValue(this.typeAliasesByName$delegate, this, $$delegatedProperties[5]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public void addFunctionsAndPropertiesTo(@g Collection<DeclarationDescriptor> result, @g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter, @g LookupLocation location) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
            Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
            Intrinsics.checkNotNullParameter(location, "location");
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getVARIABLES_MASK())) {
                for (Object obj : getAllProperties()) {
                    Name name = ((PropertyDescriptor) obj).getName();
                    Intrinsics.checkNotNullExpressionValue(name, "it.name");
                    if (nameFilter.invoke(name).booleanValue()) {
                        result.add(obj);
                    }
                }
            }
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getFUNCTIONS_MASK())) {
                for (Object obj2 : getAllFunctions()) {
                    Name name2 = ((SimpleFunctionDescriptor) obj2).getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "it.name");
                    if (nameFilter.invoke(name2).booleanValue()) {
                        result.add(obj2);
                    }
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
            List emptyList;
            List emptyList2;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            if (!getFunctionNames().contains(name)) {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                return emptyList2;
            }
            Collection<SimpleFunctionDescriptor> collection = getFunctionsByName().get(name);
            if (collection == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            return collection;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
            List emptyList;
            List emptyList2;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            if (!getVariableNames().contains(name)) {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                return emptyList2;
            }
            Collection<PropertyDescriptor> collection = getPropertiesByName().get(name);
            if (collection == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            return collection;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Set<Name> getFunctionNames() {
            return (Set) StorageKt.getValue(this.functionNames$delegate, this, $$delegatedProperties[8]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @h
        public TypeAliasDescriptor getTypeAliasByName(@g Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return getTypeAliasesByName().get(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Set<Name> getTypeAliasNames() {
            List<ProtoBuf.TypeAlias> list = this.typeAliasList;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            for (MessageLite messageLite : list) {
                linkedHashSet.add(NameResolverUtilKt.getName(deserializedMemberScope.getC().getNameResolver(), ((ProtoBuf.TypeAlias) messageLite).getName()));
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Set<Name> getVariableNames() {
            return (Set) StorageKt.getValue(this.variableNames$delegate, this, $$delegatedProperties[9]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedMemberScope.kt */
    /* loaded from: classes4.dex */
    public final class OptimizedImplementation implements Implementation {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(OptimizedImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(OptimizedImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
        @g
        private final NotNullLazyValue functionNames$delegate;
        @g
        private final Map<Name, byte[]> functionProtosBytes;
        @g
        private final MemoizedFunctionToNotNull<Name, Collection<SimpleFunctionDescriptor>> functions;
        @g
        private final MemoizedFunctionToNotNull<Name, Collection<PropertyDescriptor>> properties;
        @g
        private final Map<Name, byte[]> propertyProtosBytes;
        final /* synthetic */ DeserializedMemberScope this$0;
        @g
        private final MemoizedFunctionToNullable<Name, TypeAliasDescriptor> typeAliasByName;
        @g
        private final Map<Name, byte[]> typeAliasBytes;
        @g
        private final NotNullLazyValue variableNames$delegate;

        public OptimizedImplementation(@g DeserializedMemberScope deserializedMemberScope, @g List<ProtoBuf.Function> functionList, @g List<ProtoBuf.Property> propertyList, List<ProtoBuf.TypeAlias> typeAliasList) {
            Map<Name, byte[]> emptyMap;
            Intrinsics.checkNotNullParameter(functionList, "functionList");
            Intrinsics.checkNotNullParameter(propertyList, "propertyList");
            Intrinsics.checkNotNullParameter(typeAliasList, "typeAliasList");
            this.this$0 = deserializedMemberScope;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : functionList) {
                Name name = NameResolverUtilKt.getName(deserializedMemberScope.getC().getNameResolver(), ((ProtoBuf.Function) ((MessageLite) obj)).getName());
                Object obj2 = linkedHashMap.get(name);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(name, obj2);
                }
                ((List) obj2).add(obj);
            }
            this.functionProtosBytes = packToByteArray(linkedHashMap);
            DeserializedMemberScope deserializedMemberScope2 = this.this$0;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : propertyList) {
                Name name2 = NameResolverUtilKt.getName(deserializedMemberScope2.getC().getNameResolver(), ((ProtoBuf.Property) ((MessageLite) obj3)).getName());
                Object obj4 = linkedHashMap2.get(name2);
                if (obj4 == null) {
                    obj4 = new ArrayList();
                    linkedHashMap2.put(name2, obj4);
                }
                ((List) obj4).add(obj3);
            }
            this.propertyProtosBytes = packToByteArray(linkedHashMap2);
            if (this.this$0.getC().getComponents().getConfiguration().getTypeAliasesAllowed()) {
                DeserializedMemberScope deserializedMemberScope3 = this.this$0;
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (Object obj5 : typeAliasList) {
                    Name name3 = NameResolverUtilKt.getName(deserializedMemberScope3.getC().getNameResolver(), ((ProtoBuf.TypeAlias) ((MessageLite) obj5)).getName());
                    Object obj6 = linkedHashMap3.get(name3);
                    if (obj6 == null) {
                        obj6 = new ArrayList();
                        linkedHashMap3.put(name3, obj6);
                    }
                    ((List) obj6).add(obj5);
                }
                emptyMap = packToByteArray(linkedHashMap3);
            } else {
                emptyMap = MapsKt__MapsKt.emptyMap();
            }
            this.typeAliasBytes = emptyMap;
            this.functions = this.this$0.getC().getStorageManager().createMemoizedFunction(new DeserializedMemberScope$OptimizedImplementation$functions$1(this));
            this.properties = this.this$0.getC().getStorageManager().createMemoizedFunction(new DeserializedMemberScope$OptimizedImplementation$properties$1(this));
            this.typeAliasByName = this.this$0.getC().getStorageManager().createMemoizedFunctionWithNullableValues(new DeserializedMemberScope$OptimizedImplementation$typeAliasByName$1(this));
            this.functionNames$delegate = this.this$0.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$OptimizedImplementation$functionNames$2(this, this.this$0));
            this.variableNames$delegate = this.this$0.getC().getStorageManager().createLazyValue(new DeserializedMemberScope$OptimizedImplementation$variableNames$2(this, this.this$0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
            if (r0 != null) goto L5;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor> computeFunctions(kotlin.reflect.jvm.internal.impl.name.Name r7) {
            /*
                r6 = this;
                java.util.Map<kotlin.reflect.jvm.internal.impl.name.Name, byte[]> r0 = r6.functionProtosBytes
                kotlin.reflect.jvm.internal.impl.protobuf.Parser<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Function.PARSER
                java.lang.String r2 = "PARSER"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r2 = r6.this$0
                java.lang.Object r0 = r0.get(r7)
                byte[] r0 = (byte[]) r0
                if (r0 == 0) goto L2a
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r3 = r6.this$0
                java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream
                r4.<init>(r0)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1 r0 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1
                r0.<init>(r1, r4, r3)
                kotlin.sequences.Sequence r0 = kotlin.sequences.SequencesKt.generateSequence(r0)
                java.util.List r0 = kotlin.sequences.SequencesKt.toList(r0)
                if (r0 == 0) goto L2a
                goto L2e
            L2a:
                java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            L2e:
                java.util.ArrayList r1 = new java.util.ArrayList
                int r3 = r0.size()
                r1.<init>(r3)
                java.util.Iterator r0 = r0.iterator()
            L3b:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L66
                java.lang.Object r3 = r0.next()
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Function) r3
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r4 = r2.getC()
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer r4 = r4.getMemberDeserializer()
                java.lang.String r5 = "it"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)
                kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor r3 = r4.loadFunction(r3)
                boolean r4 = r2.isDeclaredFunctionAvailable(r3)
                if (r4 == 0) goto L5f
                goto L60
            L5f:
                r3 = 0
            L60:
                if (r3 == 0) goto L3b
                r1.add(r3)
                goto L3b
            L66:
                r2.computeNonDeclaredFunctions(r7, r1)
                java.util.List r7 = kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.compact(r1)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.OptimizedImplementation.computeFunctions(kotlin.reflect.jvm.internal.impl.name.Name):java.util.Collection");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
            if (r0 != null) goto L5;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor> computeProperties(kotlin.reflect.jvm.internal.impl.name.Name r7) {
            /*
                r6 = this;
                java.util.Map<kotlin.reflect.jvm.internal.impl.name.Name, byte[]> r0 = r6.propertyProtosBytes
                kotlin.reflect.jvm.internal.impl.protobuf.Parser<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Property.PARSER
                java.lang.String r2 = "PARSER"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r2 = r6.this$0
                java.lang.Object r0 = r0.get(r7)
                byte[] r0 = (byte[]) r0
                if (r0 == 0) goto L2a
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r3 = r6.this$0
                java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream
                r4.<init>(r0)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1 r0 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1
                r0.<init>(r1, r4, r3)
                kotlin.sequences.Sequence r0 = kotlin.sequences.SequencesKt.generateSequence(r0)
                java.util.List r0 = kotlin.sequences.SequencesKt.toList(r0)
                if (r0 == 0) goto L2a
                goto L2e
            L2a:
                java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            L2e:
                java.util.ArrayList r1 = new java.util.ArrayList
                int r3 = r0.size()
                r1.<init>(r3)
                java.util.Iterator r0 = r0.iterator()
            L3b:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L5e
                java.lang.Object r3 = r0.next()
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Property) r3
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r4 = r2.getC()
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer r4 = r4.getMemberDeserializer()
                java.lang.String r5 = "it"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)
                kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r3 = r4.loadProperty(r3)
                if (r3 == 0) goto L3b
                r1.add(r3)
                goto L3b
            L5e:
                r2.computeNonDeclaredProperties(r7, r1)
                java.util.List r7 = kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.compact(r1)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.OptimizedImplementation.computeProperties(kotlin.reflect.jvm.internal.impl.name.Name):java.util.Collection");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TypeAliasDescriptor createTypeAlias(Name name) {
            ProtoBuf.TypeAlias parseDelimitedFrom;
            byte[] bArr = this.typeAliasBytes.get(name);
            if (bArr == null || (parseDelimitedFrom = ProtoBuf.TypeAlias.parseDelimitedFrom(new ByteArrayInputStream(bArr), this.this$0.getC().getComponents().getExtensionRegistryLite())) == null) {
                return null;
            }
            return this.this$0.getC().getMemberDeserializer().loadTypeAlias(parseDelimitedFrom);
        }

        private final Map<Name, byte[]> packToByteArray(Map<Name, ? extends Collection<? extends AbstractMessageLite>> map) {
            int mapCapacity;
            int collectionSizeOrDefault;
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(map.size());
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
            Iterator<T> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable<AbstractMessageLite> iterable = (Iterable) entry.getValue();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (AbstractMessageLite abstractMessageLite : iterable) {
                    abstractMessageLite.writeDelimitedTo(byteArrayOutputStream);
                    arrayList.add(Unit.INSTANCE);
                }
                linkedHashMap.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public void addFunctionsAndPropertiesTo(@g Collection<DeclarationDescriptor> result, @g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter, @g LookupLocation location) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
            Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
            Intrinsics.checkNotNullParameter(location, "location");
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getVARIABLES_MASK())) {
                Set<Name> variableNames = getVariableNames();
                ArrayList arrayList = new ArrayList();
                for (Name name : variableNames) {
                    if (nameFilter.invoke(name).booleanValue()) {
                        arrayList.addAll(getContributedVariables(name, location));
                    }
                }
                MemberComparator.NameAndTypeMemberComparator INSTANCE = MemberComparator.NameAndTypeMemberComparator.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(INSTANCE, "INSTANCE");
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, INSTANCE);
                result.addAll(arrayList);
            }
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getFUNCTIONS_MASK())) {
                Set<Name> functionNames = getFunctionNames();
                ArrayList arrayList2 = new ArrayList();
                for (Name name2 : functionNames) {
                    if (nameFilter.invoke(name2).booleanValue()) {
                        arrayList2.addAll(getContributedFunctions(name2, location));
                    }
                }
                MemberComparator.NameAndTypeMemberComparator INSTANCE2 = MemberComparator.NameAndTypeMemberComparator.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(INSTANCE2, "INSTANCE");
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList2, INSTANCE2);
                result.addAll(arrayList2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
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

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
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

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Set<Name> getFunctionNames() {
            return (Set) StorageKt.getValue(this.functionNames$delegate, this, $$delegatedProperties[0]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @h
        public TypeAliasDescriptor getTypeAliasByName(@g Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return this.typeAliasByName.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Set<Name> getTypeAliasNames() {
            return this.typeAliasBytes.keySet();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        @g
        public Set<Name> getVariableNames() {
            return (Set) StorageKt.getValue(this.variableNames$delegate, this, $$delegatedProperties[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializedMemberScope(@g DeserializationContext c10, @g List<ProtoBuf.Function> functionList, @g List<ProtoBuf.Property> propertyList, @g List<ProtoBuf.TypeAlias> typeAliasList, @g Function0<? extends Collection<Name>> classNames) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(functionList, "functionList");
        Intrinsics.checkNotNullParameter(propertyList, "propertyList");
        Intrinsics.checkNotNullParameter(typeAliasList, "typeAliasList");
        Intrinsics.checkNotNullParameter(classNames, "classNames");
        this.f84769c = c10;
        this.impl = createImplementation(functionList, propertyList, typeAliasList);
        this.classNames$delegate = c10.getStorageManager().createLazyValue(new DeserializedMemberScope$classNames$2(classNames));
        this.classifierNamesLazy$delegate = c10.getStorageManager().createNullableLazyValue(new DeserializedMemberScope$classifierNamesLazy$2(this));
    }

    private final Implementation createImplementation(List<ProtoBuf.Function> list, List<ProtoBuf.Property> list2, List<ProtoBuf.TypeAlias> list3) {
        if (this.f84769c.getComponents().getConfiguration().getPreserveDeclarationsOrdering()) {
            return new NoReorderImplementation(this, list, list2, list3);
        }
        return new OptimizedImplementation(this, list, list2, list3);
    }

    private final ClassDescriptor deserializeClass(Name name) {
        return this.f84769c.getComponents().deserializeClass(createClassId(name));
    }

    private final Set<Name> getClassifierNamesLazy() {
        return (Set) StorageKt.getValue(this.classifierNamesLazy$delegate, this, $$delegatedProperties[1]);
    }

    private final TypeAliasDescriptor getTypeAliasByName(Name name) {
        return this.impl.getTypeAliasByName(name);
    }

    protected abstract void addEnumEntryDescriptors(@g Collection<DeclarationDescriptor> collection, @g Function1<? super Name, Boolean> function1);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final Collection<DeclarationDescriptor> computeDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        Intrinsics.checkNotNullParameter(location, "location");
        ArrayList arrayList = new ArrayList(0);
        DescriptorKindFilter.Companion companion = DescriptorKindFilter.Companion;
        if (kindFilter.acceptsKinds(companion.getSINGLETON_CLASSIFIERS_MASK())) {
            addEnumEntryDescriptors(arrayList, nameFilter);
        }
        this.impl.addFunctionsAndPropertiesTo(arrayList, kindFilter, nameFilter, location);
        if (kindFilter.acceptsKinds(companion.getCLASSIFIERS_MASK())) {
            for (Name name : getClassNames$deserialization()) {
                if (nameFilter.invoke(name).booleanValue()) {
                    CollectionsKt.addIfNotNull(arrayList, deserializeClass(name));
                }
            }
        }
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getTYPE_ALIASES_MASK())) {
            for (Name name2 : this.impl.getTypeAliasNames()) {
                if (nameFilter.invoke(name2).booleanValue()) {
                    CollectionsKt.addIfNotNull(arrayList, this.impl.getTypeAliasByName(name2));
                }
            }
        }
        return CollectionsKt.compact(arrayList);
    }

    protected void computeNonDeclaredFunctions(@g Name name, @g List<SimpleFunctionDescriptor> functions) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(functions, "functions");
    }

    protected void computeNonDeclaredProperties(@g Name name, @g List<PropertyDescriptor> descriptors) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(descriptors, "descriptors");
    }

    @g
    protected abstract ClassId createClassId(@g Name name);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final DeserializationContext getC() {
        return this.f84769c;
    }

    @g
    public final Set<Name> getClassNames$deserialization() {
        return (Set) StorageKt.getValue(this.classNames$delegate, this, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @h
    public Set<Name> getClassifierNames() {
        return getClassifierNamesLazy();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @h
    public ClassifierDescriptor getContributedClassifier(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        if (hasClass(name)) {
            return deserializeClass(name);
        }
        if (this.impl.getTypeAliasNames().contains(name)) {
            return getTypeAliasByName(name);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return this.impl.getContributedFunctions(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return this.impl.getContributedVariables(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getFunctionNames() {
        return this.impl.getFunctionNames();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public abstract Set<Name> getNonDeclaredClassifierNames();

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract Set<Name> getNonDeclaredFunctionNames();

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract Set<Name> getNonDeclaredVariableNames();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getVariableNames() {
        return this.impl.getVariableNames();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasClass(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return getClassNames$deserialization().contains(name);
    }

    protected boolean isDeclaredFunctionAvailable(@g SimpleFunctionDescriptor function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return true;
    }
}
