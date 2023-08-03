package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: typeSignatureMapping.kt */
/* loaded from: classes4.dex */
public class JvmDescriptorTypeWriter<T> {
    @h
    private T jvmCurrentType;
    private int jvmCurrentTypeArrayLevel;
    @g
    private final JvmTypeFactory<T> jvmTypeFactory;

    public void writeArrayEnd() {
    }

    public void writeArrayType() {
        if (this.jvmCurrentType == null) {
            this.jvmCurrentTypeArrayLevel++;
        }
    }

    public void writeClass(@g T objectType) {
        Intrinsics.checkNotNullParameter(objectType, "objectType");
        writeJvmTypeAsIs(objectType);
    }

    protected final void writeJvmTypeAsIs(@g T type) {
        String repeat;
        Intrinsics.checkNotNullParameter(type, "type");
        if (this.jvmCurrentType == null) {
            if (this.jvmCurrentTypeArrayLevel > 0) {
                JvmTypeFactory<T> jvmTypeFactory = this.jvmTypeFactory;
                StringBuilder sb = new StringBuilder();
                repeat = StringsKt__StringsJVMKt.repeat("[", this.jvmCurrentTypeArrayLevel);
                sb.append(repeat);
                sb.append(this.jvmTypeFactory.toString(type));
                type = jvmTypeFactory.createFromString(sb.toString());
            }
            this.jvmCurrentType = type;
        }
    }

    public void writeTypeVariable(@g Name name, @g T type) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        writeJvmTypeAsIs(type);
    }
}
