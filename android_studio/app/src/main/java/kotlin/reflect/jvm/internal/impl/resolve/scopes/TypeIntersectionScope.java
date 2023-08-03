package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.util.collectionUtils.ScopeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import m8.g;

/* compiled from: TypeIntersectionScope.kt */
/* loaded from: classes4.dex */
public final class TypeIntersectionScope extends AbstractScopeAdapter {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final String debugName;
    @g
    private final MemberScope workerScope;

    /* compiled from: TypeIntersectionScope.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public final MemberScope create(@g String message, @g Collection<? extends KotlinType> types) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(types, "types");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (KotlinType kotlinType : types) {
                arrayList.add(kotlinType.getMemberScope());
            }
            SmartList<MemberScope> listOfNonEmptyScopes = ScopeUtilsKt.listOfNonEmptyScopes(arrayList);
            MemberScope createOrSingle$descriptors = ChainedMemberScope.Companion.createOrSingle$descriptors(message, listOfNonEmptyScopes);
            return listOfNonEmptyScopes.size() <= 1 ? createOrSingle$descriptors : new TypeIntersectionScope(message, createOrSingle$descriptors, null);
        }
    }

    private TypeIntersectionScope(String str, MemberScope memberScope) {
        this.debugName = str;
        this.workerScope = memberScope;
    }

    public /* synthetic */ TypeIntersectionScope(String str, MemberScope memberScope, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, memberScope);
    }

    @JvmStatic
    @g
    public static final MemberScope create(@g String str, @g Collection<? extends KotlinType> collection) {
        return Companion.create(str, collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<DeclarationDescriptor> getContributedDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter) {
        List plus;
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        Collection<DeclarationDescriptor> contributedDescriptors = super.getContributedDescriptors(kindFilter, nameFilter);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : contributedDescriptors) {
            if (((DeclarationDescriptor) obj) instanceof CallableDescriptor) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list = (List) pair.component1();
        Intrinsics.checkNotNull(list, "null cannot be cast to non-null type kotlin.collections.Collection<org.jetbrains.kotlin.descriptors.CallableDescriptor>");
        plus = CollectionsKt___CollectionsKt.plus(OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(list, TypeIntersectionScope$getContributedDescriptors$2.INSTANCE), (Iterable) ((List) pair.component2()));
        return plus;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(super.getContributedFunctions(name, location), TypeIntersectionScope$getContributedFunctions$1.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(super.getContributedVariables(name, location), TypeIntersectionScope$getContributedVariables$1.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter
    @g
    protected MemberScope getWorkerScope() {
        return this.workerScope;
    }
}
