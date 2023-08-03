package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;
import m8.h;

/* compiled from: AbstractTypeConstructor.kt */
/* loaded from: classes4.dex */
public abstract class AbstractTypeConstructor extends ClassifierBasedTypeConstructor {
    private final boolean shouldReportCyclicScopeWithCompanionWarning;
    @g
    private final NotNullLazyValue<Supertypes> supertypes;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractTypeConstructor.kt */
    /* loaded from: classes4.dex */
    public final class ModuleViewTypeConstructor implements TypeConstructor {
        @g
        private final KotlinTypeRefiner kotlinTypeRefiner;
        @g
        private final Lazy refinedSupertypes$delegate;
        final /* synthetic */ AbstractTypeConstructor this$0;

        public ModuleViewTypeConstructor(@g AbstractTypeConstructor abstractTypeConstructor, KotlinTypeRefiner kotlinTypeRefiner) {
            Lazy lazy;
            Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.this$0 = abstractTypeConstructor;
            this.kotlinTypeRefiner = kotlinTypeRefiner;
            lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new AbstractTypeConstructor$ModuleViewTypeConstructor$refinedSupertypes$2(this, abstractTypeConstructor));
            this.refinedSupertypes$delegate = lazy;
        }

        private final List<KotlinType> getRefinedSupertypes() {
            return (List) this.refinedSupertypes$delegate.getValue();
        }

        public boolean equals(@h Object obj) {
            return this.this$0.equals(obj);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public KotlinBuiltIns getBuiltIns() {
            KotlinBuiltIns builtIns = this.this$0.getBuiltIns();
            Intrinsics.checkNotNullExpressionValue(builtIns, "this@AbstractTypeConstructor.builtIns");
            return builtIns;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public ClassifierDescriptor getDeclarationDescriptor() {
            return this.this$0.getDeclarationDescriptor();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public List<TypeParameterDescriptor> getParameters() {
            List<TypeParameterDescriptor> parameters = this.this$0.getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "this@AbstractTypeConstructor.parameters");
            return parameters;
        }

        public int hashCode() {
            return this.this$0.hashCode();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public boolean isDenotable() {
            return this.this$0.isDenotable();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        public TypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
            Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this.this$0.refine(kotlinTypeRefiner);
        }

        @g
        public String toString() {
            return this.this$0.toString();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        @g
        /* renamed from: getSupertypes */
        public List<KotlinType> mo1364getSupertypes() {
            return getRefinedSupertypes();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractTypeConstructor.kt */
    /* loaded from: classes4.dex */
    public static final class Supertypes {
        @g
        private final Collection<KotlinType> allSupertypes;
        @g
        private List<? extends KotlinType> supertypesWithoutCycles;

        /* JADX WARN: Multi-variable type inference failed */
        public Supertypes(@g Collection<? extends KotlinType> allSupertypes) {
            List<? extends KotlinType> listOf;
            Intrinsics.checkNotNullParameter(allSupertypes, "allSupertypes");
            this.allSupertypes = allSupertypes;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(ErrorUtils.INSTANCE.getErrorTypeForLoopInSupertypes());
            this.supertypesWithoutCycles = listOf;
        }

        @g
        public final Collection<KotlinType> getAllSupertypes() {
            return this.allSupertypes;
        }

        @g
        public final List<KotlinType> getSupertypesWithoutCycles() {
            return this.supertypesWithoutCycles;
        }

        public final void setSupertypesWithoutCycles(@g List<? extends KotlinType> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.supertypesWithoutCycles = list;
        }
    }

    public AbstractTypeConstructor(@g StorageManager storageManager) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        this.supertypes = storageManager.createLazyValueWithPostCompute(new AbstractTypeConstructor$supertypes$1(this), AbstractTypeConstructor$supertypes$2.INSTANCE, new AbstractTypeConstructor$supertypes$3(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000b, code lost:
        r4 = kotlin.collections.CollectionsKt___CollectionsKt.plus((java.util.Collection) r0.supertypes.invoke().getAllSupertypes(), (java.lang.Iterable) r0.getAdditionalNeighboursInSupertypeGraph(r4));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.impl.types.KotlinType> computeNeighbours(kotlin.reflect.jvm.internal.impl.types.TypeConstructor r3, boolean r4) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
            if (r0 == 0) goto L8
            r0 = r3
            kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor r0 = (kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor) r0
            goto L9
        L8:
            r0 = 0
        L9:
            if (r0 == 0) goto L22
            kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue<kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$Supertypes> r1 = r0.supertypes
            java.lang.Object r1 = r1.invoke()
            kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$Supertypes r1 = (kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor.Supertypes) r1
            java.util.Collection r1 = r1.getAllSupertypes()
            java.util.Collection r4 = r0.getAdditionalNeighboursInSupertypeGraph(r4)
            java.util.List r4 = kotlin.collections.CollectionsKt.plus(r1, r4)
            if (r4 == 0) goto L22
            goto L2b
        L22:
            java.util.Collection r4 = r3.mo1364getSupertypes()
            java.lang.String r3 = "supertypes"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)
        L2b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor.computeNeighbours(kotlin.reflect.jvm.internal.impl.types.TypeConstructor, boolean):java.util.Collection");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract Collection<KotlinType> computeSupertypes();

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public KotlinType defaultSupertypeIfEmpty() {
        return null;
    }

    @g
    protected Collection<KotlinType> getAdditionalNeighboursInSupertypeGraph(boolean z9) {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getShouldReportCyclicScopeWithCompanionWarning() {
        return this.shouldReportCyclicScopeWithCompanionWarning;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract SupertypeLoopChecker getSupertypeLoopChecker();

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public List<KotlinType> processSupertypesWithoutCycles(@g List<KotlinType> supertypes) {
        Intrinsics.checkNotNullParameter(supertypes, "supertypes");
        return supertypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public TypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new ModuleViewTypeConstructor(this, kotlinTypeRefiner);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportScopesLoopError(@g KotlinType type) {
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportSupertypeLoopError(@g KotlinType type) {
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    /* renamed from: getSupertypes */
    public List<KotlinType> mo1364getSupertypes() {
        return this.supertypes.invoke().getSupertypesWithoutCycles();
    }
}
