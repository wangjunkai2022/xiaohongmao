package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import m8.g;
import m8.h;

/* compiled from: TypeSubstitution.kt */
/* loaded from: classes4.dex */
public final class IndexedParametersSubstitution extends TypeSubstitution {
    private final boolean approximateContravariantCapturedTypes;
    @g
    private final TypeProjection[] arguments;
    @g
    private final TypeParameterDescriptor[] parameters;

    public /* synthetic */ IndexedParametersSubstitution(TypeParameterDescriptor[] typeParameterDescriptorArr, TypeProjection[] typeProjectionArr, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeParameterDescriptorArr, typeProjectionArr, (i4 & 4) != 0 ? false : z9);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateContravariantCapturedTypes() {
        return this.approximateContravariantCapturedTypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    @h
    public TypeProjection get(@g KotlinType key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ClassifierDescriptor declarationDescriptor = key.getConstructor().getDeclarationDescriptor();
        TypeParameterDescriptor typeParameterDescriptor = declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null;
        if (typeParameterDescriptor == null) {
            return null;
        }
        int index = typeParameterDescriptor.getIndex();
        TypeParameterDescriptor[] typeParameterDescriptorArr = this.parameters;
        if (index >= typeParameterDescriptorArr.length || !Intrinsics.areEqual(typeParameterDescriptorArr[index].getTypeConstructor(), typeParameterDescriptor.getTypeConstructor())) {
            return null;
        }
        return this.arguments[index];
    }

    @g
    public final TypeProjection[] getArguments() {
        return this.arguments;
    }

    @g
    public final TypeParameterDescriptor[] getParameters() {
        return this.parameters;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean isEmpty() {
        return this.arguments.length == 0;
    }

    public IndexedParametersSubstitution(@g TypeParameterDescriptor[] parameters, @g TypeProjection[] arguments, boolean z9) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        this.parameters = parameters;
        this.arguments = arguments;
        this.approximateContravariantCapturedTypes = z9;
        int length = parameters.length;
        int length2 = arguments.length;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public IndexedParametersSubstitution(@m8.g java.util.List<? extends kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor> r9, @m8.g java.util.List<? extends kotlin.reflect.jvm.internal.impl.types.TypeProjection> r10) {
        /*
            r8 = this;
            java.lang.String r0 = "parameters"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "argumentsList"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            r0 = 0
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[] r1 = new kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[r0]
            java.lang.Object[] r9 = r9.toArray(r1)
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9, r1)
            r3 = r9
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[] r3 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[]) r3
            kotlin.reflect.jvm.internal.impl.types.TypeProjection[] r9 = new kotlin.reflect.jvm.internal.impl.types.TypeProjection[r0]
            java.lang.Object[] r9 = r10.toArray(r9)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9, r1)
            r4 = r9
            kotlin.reflect.jvm.internal.impl.types.TypeProjection[] r4 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection[]) r4
            r5 = 0
            r6 = 4
            r7 = 0
            r2 = r8
            r2.<init>(r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.IndexedParametersSubstitution.<init>(java.util.List, java.util.List):void");
    }
}
