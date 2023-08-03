package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import m8.g;

/* loaded from: classes4.dex */
public class BitEncoding {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean FORCE_8TO7_ENCODING;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 1 || i4 == 3 || i4 == 6 || i4 == 8 || i4 == 10 || i4 == 12 || i4 == 14) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 1 || i4 == 3 || i4 == 6 || i4 == 8 || i4 == 10 || i4 == 12 || i4 == 14) ? 2 : 3];
        if (i4 == 1 || i4 == 3 || i4 == 6 || i4 == 8 || i4 == 10 || i4 == 12 || i4 == 14) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding";
        } else {
            objArr[0] = "data";
        }
        if (i4 == 1) {
            objArr[1] = "encodeBytes";
        } else if (i4 == 3) {
            objArr[1] = "encode8to7";
        } else if (i4 == 6) {
            objArr[1] = "splitBytesToStringArray";
        } else if (i4 == 8) {
            objArr[1] = "decodeBytes";
        } else if (i4 == 10) {
            objArr[1] = "dropMarker";
        } else if (i4 == 12) {
            objArr[1] = "combineStringArrayIntoBytes";
        } else if (i4 != 14) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding";
        } else {
            objArr[1] = "decode7to8";
        }
        switch (i4) {
            case 1:
            case 3:
            case 6:
            case 8:
            case 10:
            case 12:
            case 14:
                break;
            case 2:
                objArr[2] = "encode8to7";
                break;
            case 4:
                objArr[2] = "addModuloByte";
                break;
            case 5:
                objArr[2] = "splitBytesToStringArray";
                break;
            case 7:
                objArr[2] = "decodeBytes";
                break;
            case 9:
                objArr[2] = "dropMarker";
                break;
            case 11:
                objArr[2] = "combineStringArrayIntoBytes";
                break;
            case 13:
                objArr[2] = "decode7to8";
                break;
            default:
                objArr[2] = "encodeBytes";
                break;
        }
        String format = String.format(str, objArr);
        if (i4 != 1 && i4 != 3 && i4 != 6 && i4 != 8 && i4 != 10 && i4 != 12 && i4 != 14) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    static {
        String str;
        try {
            str = System.getProperty("kotlin.jvm.serialization.use8to7");
        } catch (SecurityException unused) {
            str = null;
        }
        FORCE_8TO7_ENCODING = "true".equals(str);
    }

    private BitEncoding() {
    }

    private static void addModuloByte(@g byte[] bArr, int i4) {
        if (bArr == null) {
            $$$reportNull$$$0(4);
        }
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = (byte) ((bArr[i10] + i4) & 127);
        }
    }

    @g
    private static byte[] combineStringArrayIntoBytes(@g String[] strArr) {
        if (strArr == null) {
            $$$reportNull$$$0(11);
        }
        int i4 = 0;
        for (String str : strArr) {
            i4 += str.length();
        }
        byte[] bArr = new byte[i4];
        int i10 = 0;
        for (String str2 : strArr) {
            int length = str2.length();
            int i11 = 0;
            while (i11 < length) {
                bArr[i10] = (byte) str2.charAt(i11);
                i11++;
                i10++;
            }
        }
        return bArr;
    }

    @g
    private static byte[] decode7to8(@g byte[] bArr) {
        if (bArr == null) {
            $$$reportNull$$$0(13);
        }
        int length = (bArr.length * 7) / 8;
        byte[] bArr2 = new byte[length];
        int i4 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i4++;
            int i12 = i10 + 1;
            bArr2[i11] = (byte) (((bArr[i4] & 255) >>> i10) + ((bArr[i4] & ((1 << i12) - 1)) << (7 - i10)));
            if (i10 == 6) {
                i4++;
                i10 = 0;
            } else {
                i10 = i12;
            }
        }
        return bArr2;
    }

    @g
    public static byte[] decodeBytes(@g String[] strArr) {
        if (strArr == null) {
            $$$reportNull$$$0(7);
        }
        if (strArr.length > 0 && !strArr[0].isEmpty()) {
            char charAt = strArr[0].charAt(0);
            if (charAt == 0) {
                byte[] stringsToBytes = UtfEncodingKt.stringsToBytes(dropMarker(strArr));
                if (stringsToBytes == null) {
                    $$$reportNull$$$0(8);
                }
                return stringsToBytes;
            } else if (charAt == 65535) {
                strArr = dropMarker(strArr);
            }
        }
        byte[] combineStringArrayIntoBytes = combineStringArrayIntoBytes(strArr);
        addModuloByte(combineStringArrayIntoBytes, 127);
        return decode7to8(combineStringArrayIntoBytes);
    }

    @g
    private static String[] dropMarker(@g String[] strArr) {
        if (strArr == null) {
            $$$reportNull$$$0(9);
        }
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[0] = strArr2[0].substring(1);
        return strArr2;
    }
}
