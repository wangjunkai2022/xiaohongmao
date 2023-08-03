package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;
import m8.h;

/* compiled from: LocalClassifierTypeSettings.kt */
/* loaded from: classes4.dex */
public interface LocalClassifierTypeSettings {

    /* compiled from: LocalClassifierTypeSettings.kt */
    /* loaded from: classes4.dex */
    public static final class Default implements LocalClassifierTypeSettings {
        @g
        public static final Default INSTANCE = new Default();

        private Default() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings
        @h
        public SimpleType getReplacementTypeForLocalClassifiers() {
            return null;
        }
    }

    @h
    SimpleType getReplacementTypeForLocalClassifiers();
}
