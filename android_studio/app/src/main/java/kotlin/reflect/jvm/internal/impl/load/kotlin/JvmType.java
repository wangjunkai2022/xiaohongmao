package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import m8.g;
import m8.h;

/* compiled from: methodSignatureMapping.kt */
/* loaded from: classes4.dex */
public abstract class JvmType {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final Primitive BOOLEAN = new Primitive(JvmPrimitiveType.BOOLEAN);
    @g
    private static final Primitive CHAR = new Primitive(JvmPrimitiveType.CHAR);
    @g
    private static final Primitive BYTE = new Primitive(JvmPrimitiveType.BYTE);
    @g
    private static final Primitive SHORT = new Primitive(JvmPrimitiveType.SHORT);
    @g
    private static final Primitive INT = new Primitive(JvmPrimitiveType.INT);
    @g
    private static final Primitive FLOAT = new Primitive(JvmPrimitiveType.FLOAT);
    @g
    private static final Primitive LONG = new Primitive(JvmPrimitiveType.LONG);
    @g
    private static final Primitive DOUBLE = new Primitive(JvmPrimitiveType.DOUBLE);

    /* compiled from: methodSignatureMapping.kt */
    /* loaded from: classes4.dex */
    public static final class Array extends JvmType {
        @g
        private final JvmType elementType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Array(@g JvmType elementType) {
            super(null);
            Intrinsics.checkNotNullParameter(elementType, "elementType");
            this.elementType = elementType;
        }

        @g
        public final JvmType getElementType() {
            return this.elementType;
        }
    }

    /* compiled from: methodSignatureMapping.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final Primitive getBOOLEAN$descriptors_jvm() {
            return JvmType.BOOLEAN;
        }

        @g
        public final Primitive getBYTE$descriptors_jvm() {
            return JvmType.BYTE;
        }

        @g
        public final Primitive getCHAR$descriptors_jvm() {
            return JvmType.CHAR;
        }

        @g
        public final Primitive getDOUBLE$descriptors_jvm() {
            return JvmType.DOUBLE;
        }

        @g
        public final Primitive getFLOAT$descriptors_jvm() {
            return JvmType.FLOAT;
        }

        @g
        public final Primitive getINT$descriptors_jvm() {
            return JvmType.INT;
        }

        @g
        public final Primitive getLONG$descriptors_jvm() {
            return JvmType.LONG;
        }

        @g
        public final Primitive getSHORT$descriptors_jvm() {
            return JvmType.SHORT;
        }
    }

    /* compiled from: methodSignatureMapping.kt */
    /* loaded from: classes4.dex */
    public static final class Object extends JvmType {
        @g
        private final String internalName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Object(@g String internalName) {
            super(null);
            Intrinsics.checkNotNullParameter(internalName, "internalName");
            this.internalName = internalName;
        }

        @g
        public final String getInternalName() {
            return this.internalName;
        }
    }

    /* compiled from: methodSignatureMapping.kt */
    /* loaded from: classes4.dex */
    public static final class Primitive extends JvmType {
        @h
        private final JvmPrimitiveType jvmPrimitiveType;

        public Primitive(@h JvmPrimitiveType jvmPrimitiveType) {
            super(null);
            this.jvmPrimitiveType = jvmPrimitiveType;
        }

        @h
        public final JvmPrimitiveType getJvmPrimitiveType() {
            return this.jvmPrimitiveType;
        }
    }

    private JvmType() {
    }

    public /* synthetic */ JvmType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @g
    public String toString() {
        return JvmTypeFactoryImpl.INSTANCE.toString(this);
    }
}
