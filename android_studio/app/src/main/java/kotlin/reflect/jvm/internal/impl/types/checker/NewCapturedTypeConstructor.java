package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: NewCapturedType.kt */
/* loaded from: classes4.dex */
public final class NewCapturedTypeConstructor implements CapturedTypeConstructor {
    @g
    private final Lazy boundSupertypes$delegate;
    @h
    private final NewCapturedTypeConstructor original;
    @g
    private final TypeProjection projection;
    @h
    private UnwrappedType projectionSupertype;
    @h
    private Function0<? extends List<? extends UnwrappedType>> supertypesComputation;
    @h
    private final TypeParameterDescriptor typeParameter;

    /* compiled from: NewCapturedType.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static final class AnonymousClass1 extends Lambda implements Function0<List<? extends UnwrappedType>> {
        final /* synthetic */ List<UnwrappedType> $supertypes;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(List<? extends UnwrappedType> list) {
            super(0);
            this.$supertypes = list;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final List<? extends UnwrappedType> invoke() {
            return this.$supertypes;
        }
    }

    public NewCapturedTypeConstructor(@g TypeProjection projection, @h Function0<? extends List<? extends UnwrappedType>> function0, @h NewCapturedTypeConstructor newCapturedTypeConstructor, @h TypeParameterDescriptor typeParameterDescriptor) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(projection, "projection");
        this.projection = projection;
        this.supertypesComputation = function0;
        this.original = newCapturedTypeConstructor;
        this.typeParameter = typeParameterDescriptor;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new NewCapturedTypeConstructor$boundSupertypes$2(this));
        this.boundSupertypes$delegate = lazy;
    }

    private final List<UnwrappedType> getBoundSupertypes() {
        return (List) this.boundSupertypes$delegate.getValue();
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(NewCapturedTypeConstructor.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor");
            NewCapturedTypeConstructor newCapturedTypeConstructor = (NewCapturedTypeConstructor) obj;
            NewCapturedTypeConstructor newCapturedTypeConstructor2 = this.original;
            if (newCapturedTypeConstructor2 == null) {
                newCapturedTypeConstructor2 = this;
            }
            NewCapturedTypeConstructor newCapturedTypeConstructor3 = newCapturedTypeConstructor.original;
            if (newCapturedTypeConstructor3 != null) {
                newCapturedTypeConstructor = newCapturedTypeConstructor3;
            }
            return newCapturedTypeConstructor2 == newCapturedTypeConstructor;
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public KotlinBuiltIns getBuiltIns() {
        KotlinType type = getProjection().getType();
        Intrinsics.checkNotNullExpressionValue(type, "projection.type");
        return TypeUtilsKt.getBuiltIns(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @h
    public ClassifierDescriptor getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public List<TypeParameterDescriptor> getParameters() {
        List<TypeParameterDescriptor> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor
    @g
    public TypeProjection getProjection() {
        return this.projection;
    }

    public int hashCode() {
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.original;
        return newCapturedTypeConstructor != null ? newCapturedTypeConstructor.hashCode() : super.hashCode();
    }

    public final void initializeSupertypes(@h UnwrappedType unwrappedType, @g List<? extends UnwrappedType> boundSupertypes) {
        Intrinsics.checkNotNullParameter(boundSupertypes, "boundSupertypes");
        this.projectionSupertype = unwrappedType;
        this.supertypesComputation = new NewCapturedTypeConstructor$initializeSupertypes$2(boundSupertypes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public boolean isDenotable() {
        return false;
    }

    @g
    public String toString() {
        return "CapturedType(" + getProjection() + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    /* renamed from: getSupertypes */
    public List<UnwrappedType> mo1364getSupertypes() {
        List createListBuilder;
        List<UnwrappedType> build;
        createListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder();
        UnwrappedType unwrappedType = this.projectionSupertype;
        if (unwrappedType != null) {
            createListBuilder.add(unwrappedType);
        }
        List<UnwrappedType> boundSupertypes = getBoundSupertypes();
        if (boundSupertypes != null) {
            createListBuilder.addAll(boundSupertypes);
        }
        build = CollectionsKt__CollectionsJVMKt.build(createListBuilder);
        return build;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public NewCapturedTypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        TypeProjection refine = getProjection().refine(kotlinTypeRefiner);
        Intrinsics.checkNotNullExpressionValue(refine, "projection.refine(kotlinTypeRefiner)");
        NewCapturedTypeConstructor$refine$1$1 newCapturedTypeConstructor$refine$1$1 = this.supertypesComputation != null ? new NewCapturedTypeConstructor$refine$1$1(this, kotlinTypeRefiner) : null;
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.original;
        if (newCapturedTypeConstructor == null) {
            newCapturedTypeConstructor = this;
        }
        return new NewCapturedTypeConstructor(refine, newCapturedTypeConstructor$refine$1$1, newCapturedTypeConstructor, this.typeParameter);
    }

    public /* synthetic */ NewCapturedTypeConstructor(TypeProjection typeProjection, Function0 function0, NewCapturedTypeConstructor newCapturedTypeConstructor, TypeParameterDescriptor typeParameterDescriptor, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeProjection, (i4 & 2) != 0 ? null : function0, (i4 & 4) != 0 ? null : newCapturedTypeConstructor, (i4 & 8) != 0 ? null : typeParameterDescriptor);
    }

    public /* synthetic */ NewCapturedTypeConstructor(TypeProjection typeProjection, List list, NewCapturedTypeConstructor newCapturedTypeConstructor, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeProjection, list, (i4 & 4) != 0 ? null : newCapturedTypeConstructor);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor(@g TypeProjection projection, @g List<? extends UnwrappedType> supertypes, @h NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this(projection, new AnonymousClass1(supertypes), newCapturedTypeConstructor, null, 8, null);
        Intrinsics.checkNotNullParameter(projection, "projection");
        Intrinsics.checkNotNullParameter(supertypes, "supertypes");
    }
}
