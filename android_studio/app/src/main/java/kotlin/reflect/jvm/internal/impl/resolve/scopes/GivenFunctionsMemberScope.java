package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.NonReportingOverrideStrategy;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import m8.g;

/* compiled from: GivenFunctionsMemberScope.kt */
/* loaded from: classes4.dex */
public abstract class GivenFunctionsMemberScope extends MemberScopeImpl {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GivenFunctionsMemberScope.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};
    @g
    private final NotNullLazyValue allDescriptors$delegate;
    @g
    private final ClassDescriptor containingClass;

    public GivenFunctionsMemberScope(@g StorageManager storageManager, @g ClassDescriptor containingClass) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(containingClass, "containingClass");
        this.containingClass = containingClass;
        this.allDescriptors$delegate = storageManager.createLazyValue(new GivenFunctionsMemberScope$allDescriptors$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<DeclarationDescriptor> createFakeOverrides(List<? extends FunctionDescriptor> list) {
        Collection<? extends CallableMemberDescriptor> emptyList;
        final ArrayList arrayList = new ArrayList(3);
        Collection<KotlinType> mo1364getSupertypes = this.containingClass.getTypeConstructor().mo1364getSupertypes();
        Intrinsics.checkNotNullExpressionValue(mo1364getSupertypes, "containingClass.typeConstructor.supertypes");
        ArrayList arrayList2 = new ArrayList();
        for (KotlinType kotlinType : mo1364getSupertypes) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, ResolutionScope.DefaultImpls.getContributedDescriptors$default(kotlinType.getMemberScope(), null, null, 3, null));
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (obj instanceof CallableMemberDescriptor) {
                arrayList3.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList3) {
            Name name = ((CallableMemberDescriptor) obj2).getName();
            Object obj3 = linkedHashMap.get(name);
            if (obj3 == null) {
                obj3 = new ArrayList();
                linkedHashMap.put(name, obj3);
            }
            ((List) obj3).add(obj2);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Name name2 = (Name) entry.getKey();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj4 : (List) entry.getValue()) {
                Boolean valueOf = Boolean.valueOf(((CallableMemberDescriptor) obj4) instanceof FunctionDescriptor);
                Object obj5 = linkedHashMap2.get(valueOf);
                if (obj5 == null) {
                    obj5 = new ArrayList();
                    linkedHashMap2.put(valueOf, obj5);
                }
                ((List) obj5).add(obj4);
            }
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                boolean booleanValue = ((Boolean) entry2.getKey()).booleanValue();
                List list2 = (List) entry2.getValue();
                OverridingUtil overridingUtil = OverridingUtil.DEFAULT;
                if (booleanValue) {
                    emptyList = new ArrayList<>();
                    for (Object obj6 : list) {
                        if (Intrinsics.areEqual(((FunctionDescriptor) obj6).getName(), name2)) {
                            emptyList.add(obj6);
                        }
                    }
                } else {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                }
                overridingUtil.generateOverridesInFunctionGroup(name2, list2, emptyList, this.containingClass, new NonReportingOverrideStrategy() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope$createFakeOverrides$4
                    @Override // kotlin.reflect.jvm.internal.impl.resolve.OverridingStrategy
                    public void addFakeOverride(@g CallableMemberDescriptor fakeOverride) {
                        Intrinsics.checkNotNullParameter(fakeOverride, "fakeOverride");
                        OverridingUtil.resolveUnknownVisibilityForMember(fakeOverride, null);
                        arrayList.add(fakeOverride);
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.resolve.NonReportingOverrideStrategy
                    protected void conflict(@g CallableMemberDescriptor fromSuper, @g CallableMemberDescriptor fromCurrent) {
                        Intrinsics.checkNotNullParameter(fromSuper, "fromSuper");
                        Intrinsics.checkNotNullParameter(fromCurrent, "fromCurrent");
                        throw new IllegalStateException(("Conflict in scope of " + this.getContainingClass() + ": " + fromSuper + " vs " + fromCurrent).toString());
                    }
                });
            }
        }
        return CollectionsKt.compact(arrayList);
    }

    private final List<DeclarationDescriptor> getAllDescriptors() {
        return (List) StorageKt.getValue(this.allDescriptors$delegate, this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract List<FunctionDescriptor> computeDeclaredFunctions();

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final ClassDescriptor getContainingClass() {
        return this.containingClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<DeclarationDescriptor> getContributedDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter) {
        List emptyList;
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        if (kindFilter.acceptsKinds(DescriptorKindFilter.CALLABLES.getKindMask())) {
            return getAllDescriptors();
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        List<DeclarationDescriptor> allDescriptors = getAllDescriptors();
        SmartList smartList = new SmartList();
        for (Object obj : allDescriptors) {
            if ((obj instanceof SimpleFunctionDescriptor) && Intrinsics.areEqual(((SimpleFunctionDescriptor) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        List<DeclarationDescriptor> allDescriptors = getAllDescriptors();
        SmartList smartList = new SmartList();
        for (Object obj : allDescriptors) {
            if ((obj instanceof PropertyDescriptor) && Intrinsics.areEqual(((PropertyDescriptor) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }
}
