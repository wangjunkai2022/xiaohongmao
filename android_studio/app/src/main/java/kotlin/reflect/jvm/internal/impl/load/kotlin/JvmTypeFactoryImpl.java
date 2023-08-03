package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.exifinterface.media.ExifInterface;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: methodSignatureMapping.kt */
/* loaded from: classes4.dex */
final class JvmTypeFactoryImpl implements JvmTypeFactory<JvmType> {
    @g
    public static final JvmTypeFactoryImpl INSTANCE = new JvmTypeFactoryImpl();

    /* compiled from: methodSignatureMapping.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PrimitiveType.values().length];
            iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
            iArr[PrimitiveType.CHAR.ordinal()] = 2;
            iArr[PrimitiveType.BYTE.ordinal()] = 3;
            iArr[PrimitiveType.SHORT.ordinal()] = 4;
            iArr[PrimitiveType.INT.ordinal()] = 5;
            iArr[PrimitiveType.FLOAT.ordinal()] = 6;
            iArr[PrimitiveType.LONG.ordinal()] = 7;
            iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private JvmTypeFactoryImpl() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactory
    @g
    public JvmType boxType(@g JvmType possiblyPrimitiveType) {
        Intrinsics.checkNotNullParameter(possiblyPrimitiveType, "possiblyPrimitiveType");
        if (possiblyPrimitiveType instanceof JvmType.Primitive) {
            JvmType.Primitive primitive = (JvmType.Primitive) possiblyPrimitiveType;
            if (primitive.getJvmPrimitiveType() != null) {
                String internalName = JvmClassName.byFqNameWithoutInnerClasses(primitive.getJvmPrimitiveType().getWrapperFqName()).getInternalName();
                Intrinsics.checkNotNullExpressionValue(internalName, "byFqNameWithoutInnerClas…apperFqName).internalName");
                return createObjectType(internalName);
            }
            return possiblyPrimitiveType;
        }
        return possiblyPrimitiveType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactory
    @g
    public JvmType createFromString(@g String representation) {
        JvmPrimitiveType jvmPrimitiveType;
        JvmType object;
        Intrinsics.checkNotNullParameter(representation, "representation");
        representation.length();
        char charAt = representation.charAt(0);
        JvmPrimitiveType[] values = JvmPrimitiveType.values();
        int length = values.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                jvmPrimitiveType = null;
                break;
            }
            jvmPrimitiveType = values[i4];
            if (jvmPrimitiveType.getDesc().charAt(0) == charAt) {
                break;
            }
            i4++;
        }
        if (jvmPrimitiveType != null) {
            return new JvmType.Primitive(jvmPrimitiveType);
        }
        if (charAt == 'V') {
            return new JvmType.Primitive(null);
        }
        if (charAt == '[') {
            String substring = representation.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            object = new JvmType.Array(createFromString(substring));
        } else {
            if (charAt == 'L') {
                StringsKt__StringsKt.endsWith$default((CharSequence) representation, ';', false, 2, (Object) null);
            }
            String substring2 = representation.substring(1, representation.length() - 1);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            object = new JvmType.Object(substring2);
        }
        return object;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactory
    @g
    public JvmType createObjectType(@g String internalName) {
        Intrinsics.checkNotNullParameter(internalName, "internalName");
        return new JvmType.Object(internalName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactory
    @g
    public JvmType createPrimitiveType(@g PrimitiveType primitiveType) {
        Intrinsics.checkNotNullParameter(primitiveType, "primitiveType");
        switch (WhenMappings.$EnumSwitchMapping$0[primitiveType.ordinal()]) {
            case 1:
                return JvmType.Companion.getBOOLEAN$descriptors_jvm();
            case 2:
                return JvmType.Companion.getCHAR$descriptors_jvm();
            case 3:
                return JvmType.Companion.getBYTE$descriptors_jvm();
            case 4:
                return JvmType.Companion.getSHORT$descriptors_jvm();
            case 5:
                return JvmType.Companion.getINT$descriptors_jvm();
            case 6:
                return JvmType.Companion.getFLOAT$descriptors_jvm();
            case 7:
                return JvmType.Companion.getLONG$descriptors_jvm();
            case 8:
                return JvmType.Companion.getDOUBLE$descriptors_jvm();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactory
    @g
    public JvmType getJavaLangClassType() {
        return createObjectType("java/lang/Class");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactory
    @g
    public String toString(@g JvmType type) {
        String desc;
        Intrinsics.checkNotNullParameter(type, "type");
        if (type instanceof JvmType.Array) {
            return '[' + toString(((JvmType.Array) type).getElementType());
        } else if (type instanceof JvmType.Primitive) {
            JvmPrimitiveType jvmPrimitiveType = ((JvmType.Primitive) type).getJvmPrimitiveType();
            return (jvmPrimitiveType == null || (desc = jvmPrimitiveType.getDesc()) == null) ? ExifInterface.GPS_MEASUREMENT_INTERRUPTED : desc;
        } else if (type instanceof JvmType.Object) {
            return Matrix.MATRIX_TYPE_RANDOM_LT + ((JvmType.Object) type).getInternalName() + ';';
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
