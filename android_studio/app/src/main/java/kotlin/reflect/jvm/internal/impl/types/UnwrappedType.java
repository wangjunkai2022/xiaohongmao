package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: KotlinType.kt */
/* loaded from: classes4.dex */
public abstract class UnwrappedType extends KotlinType {
    private UnwrappedType() {
        super(null);
    }

    public /* synthetic */ UnwrappedType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @g
    public abstract UnwrappedType makeNullableAsSpecified(boolean z9);

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public abstract UnwrappedType refine(@g KotlinTypeRefiner kotlinTypeRefiner);

    @g
    public abstract UnwrappedType replaceAttributes(@g TypeAttributes typeAttributes);

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public final UnwrappedType unwrap() {
        return this;
    }
}
