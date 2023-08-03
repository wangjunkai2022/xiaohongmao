package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import m8.g;

/* compiled from: InlineClassRepresentation.kt */
/* loaded from: classes4.dex */
public final class InlineClassRepresentation<Type extends SimpleTypeMarker> extends ValueClassRepresentation<Type> {
    @g
    private final Name underlyingPropertyName;
    @g
    private final Type underlyingType;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InlineClassRepresentation(@g Name underlyingPropertyName, @g Type underlyingType) {
        super(null);
        Intrinsics.checkNotNullParameter(underlyingPropertyName, "underlyingPropertyName");
        Intrinsics.checkNotNullParameter(underlyingType, "underlyingType");
        this.underlyingPropertyName = underlyingPropertyName;
        this.underlyingType = underlyingType;
    }

    @g
    public final Name getUnderlyingPropertyName() {
        return this.underlyingPropertyName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation
    @g
    public List<Pair<Name, Type>> getUnderlyingPropertyNamesToTypes() {
        List<Pair<Name, Type>> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(TuplesKt.to(this.underlyingPropertyName, this.underlyingType));
        return listOf;
    }

    @g
    public final Type getUnderlyingType() {
        return this.underlyingType;
    }
}
