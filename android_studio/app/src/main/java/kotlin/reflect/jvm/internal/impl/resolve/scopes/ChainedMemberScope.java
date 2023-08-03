package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.util.collectionUtils.ScopeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import m8.g;
import m8.h;

/* compiled from: ChainedMemberScope.kt */
/* loaded from: classes4.dex */
public final class ChainedMemberScope implements MemberScope {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final String debugName;
    @g
    private final MemberScope[] scopes;

    /* compiled from: ChainedMemberScope.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final MemberScope create(@g String debugName, @g Iterable<? extends MemberScope> scopes) {
            Intrinsics.checkNotNullParameter(debugName, "debugName");
            Intrinsics.checkNotNullParameter(scopes, "scopes");
            SmartList smartList = new SmartList();
            for (MemberScope memberScope : scopes) {
                if (memberScope != MemberScope.Empty.INSTANCE) {
                    if (memberScope instanceof ChainedMemberScope) {
                        CollectionsKt__MutableCollectionsKt.addAll(smartList, ((ChainedMemberScope) memberScope).scopes);
                    } else {
                        smartList.add(memberScope);
                    }
                }
            }
            return createOrSingle$descriptors(debugName, smartList);
        }

        @g
        public final MemberScope createOrSingle$descriptors(@g String debugName, @g List<? extends MemberScope> scopes) {
            Intrinsics.checkNotNullParameter(debugName, "debugName");
            Intrinsics.checkNotNullParameter(scopes, "scopes");
            int size = scopes.size();
            if (size != 0) {
                if (size != 1) {
                    Object[] array = scopes.toArray(new MemberScope[0]);
                    Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    return new ChainedMemberScope(debugName, (MemberScope[]) array, null);
                }
                return scopes.get(0);
            }
            return MemberScope.Empty.INSTANCE;
        }
    }

    private ChainedMemberScope(String str, MemberScope[] memberScopeArr) {
        this.debugName = str;
        this.scopes = memberScopeArr;
    }

    public /* synthetic */ ChainedMemberScope(String str, MemberScope[] memberScopeArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, memberScopeArr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @h
    public Set<Name> getClassifierNames() {
        Iterable asIterable;
        asIterable = ArraysKt___ArraysKt.asIterable(this.scopes);
        return MemberScopeKt.flatMapClassifierNamesOrNull(asIterable);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @h
    public ClassifierDescriptor getContributedClassifier(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        ClassifierDescriptor classifierDescriptor = null;
        for (MemberScope memberScope : this.scopes) {
            ClassifierDescriptor contributedClassifier = memberScope.getContributedClassifier(name, location);
            if (contributedClassifier != null) {
                if (!(contributedClassifier instanceof ClassifierDescriptorWithTypeParameters) || !((ClassifierDescriptorWithTypeParameters) contributedClassifier).isExpect()) {
                    return contributedClassifier;
                }
                if (classifierDescriptor == null) {
                    classifierDescriptor = contributedClassifier;
                }
            }
        }
        return classifierDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<DeclarationDescriptor> getContributedDescriptors(@g DescriptorKindFilter kindFilter, @g Function1<? super Name, Boolean> nameFilter) {
        List emptyList;
        Set emptySet;
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        MemberScope[] memberScopeArr = this.scopes;
        int length = memberScopeArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        if (length != 1) {
            Collection<DeclarationDescriptor> collection = null;
            for (MemberScope memberScope : memberScopeArr) {
                collection = ScopeUtilsKt.concat(collection, memberScope.getContributedDescriptors(kindFilter, nameFilter));
            }
            if (collection == null) {
                emptySet = SetsKt__SetsKt.emptySet();
                return emptySet;
            }
            return collection;
        }
        return memberScopeArr[0].getContributedDescriptors(kindFilter, nameFilter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    public Collection<SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation location) {
        List emptyList;
        Set emptySet;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        MemberScope[] memberScopeArr = this.scopes;
        int length = memberScopeArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        if (length != 1) {
            Collection<SimpleFunctionDescriptor> collection = null;
            for (MemberScope memberScope : memberScopeArr) {
                collection = ScopeUtilsKt.concat(collection, memberScope.getContributedFunctions(name, location));
            }
            if (collection == null) {
                emptySet = SetsKt__SetsKt.emptySet();
                return emptySet;
            }
            return collection;
        }
        return memberScopeArr[0].getContributedFunctions(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
        List emptyList;
        Set emptySet;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        MemberScope[] memberScopeArr = this.scopes;
        int length = memberScopeArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        if (length != 1) {
            Collection<PropertyDescriptor> collection = null;
            for (MemberScope memberScope : memberScopeArr) {
                collection = ScopeUtilsKt.concat(collection, memberScope.getContributedVariables(name, location));
            }
            if (collection == null) {
                emptySet = SetsKt__SetsKt.emptySet();
                return emptySet;
            }
            return collection;
        }
        return memberScopeArr[0].getContributedVariables(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getFunctionNames() {
        MemberScope[] memberScopeArr = this.scopes;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArr) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, memberScope.getFunctionNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Set<Name> getVariableNames() {
        MemberScope[] memberScopeArr = this.scopes;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArr) {
            CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, memberScope.getVariableNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public void recordLookup(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        for (MemberScope memberScope : this.scopes) {
            memberScope.recordLookup(name, location);
        }
    }

    @g
    public String toString() {
        return this.debugName;
    }
}
