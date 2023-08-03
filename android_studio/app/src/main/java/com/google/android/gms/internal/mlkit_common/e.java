package com.google.android.gms.internal.mlkit_common;

import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class e {
    public static String a(@r7.a String str, @r7.a Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String str2;
        int i4 = 0;
        int i10 = 0;
        while (true) {
            length = objArr.length;
            if (i10 >= length) {
                break;
            }
            Object obj = objArr[i10];
            if (obj == null) {
                str2 = "null";
            } else {
                try {
                    str2 = obj.toString();
                } catch (Exception e4) {
                    String str3 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(str3), (Throwable) e4);
                    str2 = "<" + str3 + " threw " + e4.getClass().getName() + ">";
                }
            }
            objArr[i10] = str2;
            i10++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i11 = 0;
        while (true) {
            length2 = objArr.length;
            if (i4 >= length2 || (indexOf = str.indexOf("%s", i11)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i11, indexOf);
            sb.append(objArr[i4]);
            i11 = indexOf + 2;
            i4++;
        }
        sb.append((CharSequence) str, i11, str.length());
        if (i4 < length2) {
            sb.append(" [");
            sb.append(objArr[i4]);
            for (int i12 = i4 + 1; i12 < objArr.length; i12++) {
                sb.append(", ");
                sb.append(objArr[i12]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static String b(@r7.a String str) {
        return c.a(str);
    }

    public static boolean c(@r7.a String str) {
        return c.b(str);
    }
}
