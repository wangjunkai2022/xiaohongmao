package com.google.android.gms.internal.common;

import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class h0 {
    public static String a(@r7.a String str, @r7.a Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String sb;
        int i4 = 0;
        int i10 = 0;
        while (true) {
            length = objArr.length;
            if (i10 >= length) {
                break;
            }
            Object obj = objArr[i10];
            if (obj == null) {
                sb = "null";
            } else {
                try {
                    sb = obj.toString();
                } catch (Exception e4) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String sb3 = sb2.toString();
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", sb3.length() != 0 ? "Exception during lenientFormat for ".concat(sb3) : new String("Exception during lenientFormat for "), (Throwable) e4);
                    String name2 = e4.getClass().getName();
                    StringBuilder sb4 = new StringBuilder(sb3.length() + 9 + name2.length());
                    sb4.append("<");
                    sb4.append(sb3);
                    sb4.append(" threw ");
                    sb4.append(name2);
                    sb4.append(">");
                    sb = sb4.toString();
                }
            }
            objArr[i10] = sb;
            i10++;
        }
        StringBuilder sb5 = new StringBuilder(str.length() + (length * 16));
        int i11 = 0;
        while (true) {
            length2 = objArr.length;
            if (i4 >= length2 || (indexOf = str.indexOf("%s", i11)) == -1) {
                break;
            }
            sb5.append((CharSequence) str, i11, indexOf);
            sb5.append(objArr[i4]);
            i11 = indexOf + 2;
            i4++;
        }
        sb5.append((CharSequence) str, i11, str.length());
        if (i4 < length2) {
            sb5.append(" [");
            sb5.append(objArr[i4]);
            for (int i12 = i4 + 1; i12 < objArr.length; i12++) {
                sb5.append(", ");
                sb5.append(objArr[i12]);
            }
            sb5.append(']');
        }
        return sb5.toString();
    }
}
