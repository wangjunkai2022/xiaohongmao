package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: DeserializedArrayValue.kt */
/* loaded from: classes4.dex */
public final class DeserializedArrayValue extends ArrayValue {
    @g
    private final KotlinType type;

    /* compiled from: DeserializedArrayValue.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedArrayValue$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static final class AnonymousClass1 extends Lambda implements Function1<ModuleDescriptor, KotlinType> {
        final /* synthetic */ KotlinType $type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(KotlinType kotlinType) {
            super(1);
            this.$type = kotlinType;
        }

        @Override // kotlin.jvm.functions.Function1
        @g
        public final KotlinType invoke(@g ModuleDescriptor it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return this.$type;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedArrayValue(@g List<? extends ConstantValue<?>> value, @g KotlinType type) {
        super(value, new AnonymousClass1(type));
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    @g
    public final KotlinType getType() {
        return this.type;
    }
}
