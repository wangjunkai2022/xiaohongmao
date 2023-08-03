package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import m8.g;
import m8.h;

/* compiled from: NewCapturedType.kt */
/* loaded from: classes4.dex */
public final class NewCapturedType extends SimpleType implements CapturedTypeMarker {
    @g
    private final TypeAttributes attributes;
    @g
    private final CaptureStatus captureStatus;
    @g
    private final NewCapturedTypeConstructor constructor;
    private final boolean isMarkedNullable;
    private final boolean isProjectionNotNull;
    @h
    private final UnwrappedType lowerType;

    public /* synthetic */ NewCapturedType(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, UnwrappedType unwrappedType, TypeAttributes typeAttributes, boolean z9, boolean z10, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(captureStatus, newCapturedTypeConstructor, unwrappedType, (i4 & 8) != 0 ? TypeAttributes.Companion.getEmpty() : typeAttributes, (i4 & 16) != 0 ? false : z9, (i4 & 32) != 0 ? false : z10);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public List<TypeProjection> getArguments() {
        List<TypeProjection> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public TypeAttributes getAttributes() {
        return this.attributes;
    }

    @g
    public final CaptureStatus getCaptureStatus() {
        return this.captureStatus;
    }

    @h
    public final UnwrappedType getLowerType() {
        return this.lowerType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public MemberScope getMemberScope() {
        return ErrorUtils.createErrorScope(ErrorScopeKind.CAPTURED_TYPE_SCOPE, true, new String[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    public final boolean isProjectionNotNull() {
        return this.isProjectionNotNull;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public NewCapturedTypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return new NewCapturedType(this.captureStatus, getConstructor(), this.lowerType, newAttributes, isMarkedNullable(), this.isProjectionNotNull);
    }

    public NewCapturedType(@g CaptureStatus captureStatus, @g NewCapturedTypeConstructor constructor, @h UnwrappedType unwrappedType, @g TypeAttributes attributes, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(captureStatus, "captureStatus");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        this.captureStatus = captureStatus;
        this.constructor = constructor;
        this.lowerType = unwrappedType;
        this.attributes = attributes;
        this.isMarkedNullable = z9;
        this.isProjectionNotNull = z10;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public NewCapturedType makeNullableAsSpecified(boolean z9) {
        return new NewCapturedType(this.captureStatus, getConstructor(), this.lowerType, getAttributes(), z9, false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public NewCapturedType refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        CaptureStatus captureStatus = this.captureStatus;
        NewCapturedTypeConstructor refine = getConstructor().refine(kotlinTypeRefiner);
        UnwrappedType unwrappedType = this.lowerType;
        return new NewCapturedType(captureStatus, refine, unwrappedType != null ? kotlinTypeRefiner.refineType((KotlinTypeMarker) unwrappedType).unwrap() : null, getAttributes(), isMarkedNullable(), false, 32, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedType(@g CaptureStatus captureStatus, @h UnwrappedType unwrappedType, @g TypeProjection projection, @g TypeParameterDescriptor typeParameter) {
        this(captureStatus, new NewCapturedTypeConstructor(projection, null, null, typeParameter, 6, null), unwrappedType, null, false, false, 56, null);
        Intrinsics.checkNotNullParameter(captureStatus, "captureStatus");
        Intrinsics.checkNotNullParameter(projection, "projection");
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
    }
}
