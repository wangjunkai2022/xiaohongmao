package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;
import m8.g;
import m8.h;

/* compiled from: LazyJavaPackageScope.kt */
/* loaded from: classes4.dex */
public final class LazyJavaPackageScope extends LazyJavaStaticScope {
    @g
    private final MemoizedFunctionToNullable<FindClassRequest, ClassDescriptor> classes;
    @g
    private final JavaPackage jPackage;
    @g
    private final NullableLazyValue<Set<String>> knownClassNamesInPackage;
    @g
    private final LazyJavaPackageFragment ownerDescriptor;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LazyJavaPackageScope.kt */
    /* loaded from: classes4.dex */
    public static final class FindClassRequest {
        @h
        private final JavaClass javaClass;
        @g
        private final Name name;

        public FindClassRequest(@g Name name, @h JavaClass javaClass) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.javaClass = javaClass;
        }

        public boolean equals(@h Object obj) {
            return (obj instanceof FindClassRequest) && Intrinsics.areEqual(this.name, ((FindClassRequest) obj).name);
        }

        @h
        public final JavaClass getJavaClass() {
            return this.javaClass;
        }

        @g
        public final Name getName() {
            return this.name;
        }

        public int hashCode() {
            return this.name.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LazyJavaPackageScope.kt */
    /* loaded from: classes4.dex */
    public static abstract class KotlinClassLookupResult {

        /* compiled from: LazyJavaPackageScope.kt */
        /* loaded from: classes4.dex */
        public static final class Found extends KotlinClassLookupResult {
            @g
            private final ClassDescriptor descriptor;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Found(@g ClassDescriptor descriptor) {
                super(null);
                Intrinsics.checkNotNullParameter(descriptor, "descriptor");
                this.descriptor = descriptor;
            }

            @g
            public final ClassDescriptor getDescriptor() {
                return this.descriptor;
            }
        }

        /* compiled from: LazyJavaPackageScope.kt */
        /* loaded from: classes4.dex */
        public static final class NotFound extends KotlinClassLookupResult {
            @g
            public static final NotFound INSTANCE = new NotFound();

            private NotFound() {
                super(null);
            }
        }

        /* compiled from: LazyJavaPackageScope.kt */
        /* loaded from: classes4.dex */
        public static final class SyntheticClass extends KotlinClassLookupResult {
            @g
            public static final SyntheticClass INSTANCE = new SyntheticClass();

            private SyntheticClass() {
                super(null);
            }
        }

        private KotlinClassLookupResult() {
        }

        public /* synthetic */ KotlinClassLookupResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageScope(@g LazyJavaResolverContext c10, @g JavaPackage jPackage, @g LazyJavaPackageFragment ownerDescriptor) {
        super(c10);
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(jPackage, "jPackage");
        Intrinsics.checkNotNullParameter(ownerDescriptor, "ownerDescriptor");
        this.jPackage = jPackage;
        this.ownerDescriptor = ownerDescriptor;
        this.knownClassNamesInPackage = c10.getStorageManager().createNullableLazyValue(new LazyJavaPackageScope$knownClassNamesInPackage$1(c10, this));
        this.classes = c10.getStorageManager().createMemoizedFunctionWithNullableValues(new LazyJavaPackageScope$classes$1(this, c10));
    }

    private final ClassDescriptor findClassifier(Name name, JavaClass javaClass) {
        if (SpecialNames.INSTANCE.isSafeIdentifier(name)) {
            Set<String> invoke = this.knownClassNamesInPackage.invoke();
            if (javaClass != null || invoke == null || invoke.contains(name.asString())) {
                return this.classes.invoke(new FindClassRequest(name, javaClass));
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KotlinClassLookupResult resolveKotlinBinaryClass(KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        if (kotlinJvmBinaryClass == null) {
            return KotlinClassLookupResult.NotFound.INSTANCE;
        }
        if (kotlinJvmBinaryClass.getClassHeader().getKind() == KotlinClassHeader.Kind.CLASS) {
            ClassDescriptor resolveClass = getC().getComponents().getDeserializedDescriptorResolver().resolveClass(kotlinJvmBinaryClass);
            return resolveClass != null ? new KotlinClassLookupResult.Found(resolveClass) : KotlinClassLookupResult.NotFound.INSTANCE;
        }
        return KotlinClassLookupResult.SyntheticClass.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    @g
    protected Set<Name> computeClassNames(@g DescriptorKindFilter kindFilter, @h Function1<? super Name, Boolean> function1) {
        Set<Name> emptySet;
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        if (!kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getNON_SINGLETON_CLASSIFIERS_MASK())) {
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }
        Set<String> invoke = this.knownClassNamesInPackage.invoke();
        if (invoke != null) {
            HashSet hashSet = new HashSet();
            for (String str : invoke) {
                hashSet.add(Name.identifier(str));
            }
            return hashSet;
        }
        JavaPackage javaPackage = this.jPackage;
        if (function1 == null) {
            function1 = FunctionsKt.alwaysTrue();
        }
        Collection<JavaClass> classes = javaPackage.getClasses(function1);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (JavaClass javaClass : classes) {
            Name name = javaClass.getLightClassOriginKind() == LightClassOriginKind.SOURCE ? null : javaClass.getName();
            if (name != null) {
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    @g
    protected Set<Name> computeFunctionNames(@g DescriptorKindFilter kindFilter, @h Function1<? super Name, Boolean> function1) {
        Set<Name> emptySet;
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        emptySet = SetsKt__SetsKt.emptySet();
        return emptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    @g
    protected DeclaredMemberIndex computeMemberIndex() {
        return DeclaredMemberIndex.Empty.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void computeNonDeclaredFunctions(@g Collection<SimpleFunctionDescriptor> result, @g Name name) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(name, "name");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    @g
    protected Set<Name> computePropertyNames(@g DescriptorKindFilter kindFilter, @h Function1<? super Name, Boolean> function1) {
        Set<Name> emptySet;
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        emptySet = SetsKt__SetsKt.emptySet();
        return emptySet;
    }

    @h
    public final ClassDescriptor findClassifierByJavaClass$descriptors_jvm(@g JavaClass javaClass) {
        Intrinsics.checkNotNullParameter(javaClass, "javaClass");
        return findClassifier(javaClass.getName(), javaClass);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0033 A[SYNTHETIC] */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor> getContributedDescriptors(@m8.g kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter r5, @m8.g kotlin.jvm.functions.Function1<? super kotlin.reflect.jvm.internal.impl.name.Name, java.lang.Boolean> r6) {
        /*
            r4 = this;
            java.lang.String r0 = "kindFilter"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "nameFilter"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter$Companion r0 = kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter.Companion
            int r1 = r0.getCLASSIFIERS_MASK()
            int r0 = r0.getNON_SINGLETON_CLASSIFIERS_MASK()
            r0 = r0 | r1
            boolean r5 = r5.acceptsKinds(r0)
            if (r5 != 0) goto L20
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            goto L65
        L20:
            kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue r5 = r4.getAllDescriptors()
            java.lang.Object r5 = r5.invoke()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r5 = r5.iterator()
        L33:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L64
            java.lang.Object r1 = r5.next()
            r2 = r1
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor) r2
            boolean r3 = r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
            if (r3 == 0) goto L5d
            kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor) r2
            kotlin.reflect.jvm.internal.impl.name.Name r2 = r2.getName()
            java.lang.String r3 = "it.name"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            java.lang.Object r2 = r6.invoke(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L5d
            r2 = 1
            goto L5e
        L5d:
            r2 = 0
        L5e:
            if (r2 == 0) goto L33
            r0.add(r1)
            goto L33
        L64:
            r5 = r0
        L65:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope.getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter, kotlin.jvm.functions.Function1):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    @g
    public Collection<PropertyDescriptor> getContributedVariables(@g Name name, @g LookupLocation location) {
        List emptyList;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    @h
    public ClassDescriptor getContributedClassifier(@g Name name, @g LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return findClassifier(name, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    @g
    public LazyJavaPackageFragment getOwnerDescriptor() {
        return this.ownerDescriptor;
    }
}
