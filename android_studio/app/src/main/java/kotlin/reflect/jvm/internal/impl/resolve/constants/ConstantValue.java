package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: constantValues.kt */
/* loaded from: classes4.dex */
public abstract class ConstantValue<T> {
    private final T value;

    public ConstantValue(T t9) {
        this.value = t9;
    }

    public boolean equals(@h Object obj) {
        if (this != obj) {
            T value = getValue();
            ConstantValue constantValue = obj instanceof ConstantValue ? (ConstantValue) obj : null;
            if (!Intrinsics.areEqual(value, constantValue != null ? constantValue.getValue() : null)) {
                return false;
            }
        }
        return true;
    }

    @g
    public abstract KotlinType getType(@g ModuleDescriptor moduleDescriptor);

    public T getValue() {
        return this.value;
    }

    public int hashCode() {
        T value = getValue();
        if (value != null) {
            return value.hashCode();
        }
        return 0;
    }

    @g
    public String toString() {
        return String.valueOf(getValue());
    }
}
