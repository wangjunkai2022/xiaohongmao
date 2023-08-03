package com.ta.utdid2.android.utils;

/* compiled from: StringUtils.java */
/* loaded from: classes3.dex */
public class i {
    public static String a(Object obj) {
        if (obj != null) {
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof Integer) {
                return "" + ((Integer) obj).intValue();
            } else if (obj instanceof Long) {
                return "" + ((Long) obj).longValue();
            } else if (obj instanceof Double) {
                return "" + ((Double) obj).doubleValue();
            } else if (obj instanceof Float) {
                return "" + ((Float) obj).floatValue();
            } else if (obj instanceof Short) {
                return "" + ((int) ((Short) obj).shortValue());
            } else if (obj instanceof Byte) {
                return "" + ((int) ((Byte) obj).byteValue());
            } else if (obj instanceof Boolean) {
                return ((Boolean) obj).toString();
            } else {
                if (obj instanceof Character) {
                    return ((Character) obj).toString();
                }
                return obj.toString();
            }
        }
        return "";
    }

    public static int b(String str) {
        if (str.length() > 0) {
            int i4 = 0;
            for (char c10 : str.toCharArray()) {
                i4 = (i4 * 31) + c10;
            }
            return i4;
        }
        return 0;
    }

    public static boolean c(String str) {
        return str == null || str.length() <= 0;
    }
}
