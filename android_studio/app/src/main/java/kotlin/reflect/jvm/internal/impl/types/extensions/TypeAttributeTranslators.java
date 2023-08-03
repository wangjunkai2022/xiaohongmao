package kotlin.reflect.jvm.internal.impl.types.extensions;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator;
import m8.g;

/* compiled from: TypeAttributeTranslators.kt */
/* loaded from: classes4.dex */
public final class TypeAttributeTranslators {
    @g
    private final List<TypeAttributeTranslator> translators;

    /* JADX WARN: Multi-variable type inference failed */
    public TypeAttributeTranslators(@g List<? extends TypeAttributeTranslator> translators) {
        Intrinsics.checkNotNullParameter(translators, "translators");
        this.translators = translators;
    }

    @g
    public final List<TypeAttributeTranslator> getTranslators() {
        return this.translators;
    }
}
