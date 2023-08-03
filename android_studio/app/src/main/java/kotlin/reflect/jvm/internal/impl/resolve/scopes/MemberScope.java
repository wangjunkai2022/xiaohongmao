package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import m8.g;
import m8.h;

/* compiled from: MemberScope.kt */
/* loaded from: classes4.dex */
public interface MemberScope extends ResolutionScope {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: MemberScope.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final Function1<Name, Boolean> ALL_NAME_FILTER = MemberScope$Companion$ALL_NAME_FILTER$1.INSTANCE;

        private Companion() {
        }

        @g
        public final Function1<Name, Boolean> getALL_NAME_FILTER() {
            return ALL_NAME_FILTER;
        }
    }

    /* compiled from: MemberScope.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static void recordLookup(@g MemberScope memberScope, @g Name name, @g LookupLocation location) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            ResolutionScope.DefaultImpls.recordLookup(memberScope, name, location);
        }
    }

    /* compiled from: MemberScope.kt */
    /* loaded from: classes4.dex */
    public static final class Empty extends MemberScopeImpl {
        @g
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        @g
        public Set<Name> getClassifierNames() {
            Set<Name> emptySet;
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        @g
        public Set<Name> getFunctionNames() {
            Set<Name> emptySet;
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        @g
        public Set<Name> getVariableNames() {
            Set<Name> emptySet;
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }
    }

    @h
    Set<Name> getClassifierNames();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @g
    Collection<? extends SimpleFunctionDescriptor> getContributedFunctions(@g Name name, @g LookupLocation lookupLocation);

    @g
    Collection<? extends PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation lookupLocation);

    @g
    Set<Name> getFunctionNames();

    @g
    Set<Name> getVariableNames();
}
