package i;

import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class a {
    public static String a(Map<String, Integer> map, String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2 + ":");
        if (str == null || str.length() <= 0) {
            return sb.toString();
        }
        String[] split = str.split(",");
        if (split == null || split.length <= 0) {
            return sb.toString();
        }
        if (map == null || map.size() <= 0) {
            return sb.toString();
        }
        Set<String> keySet = map.keySet();
        if (keySet == null || keySet.size() <= 0) {
            return sb.toString();
        }
        try {
            int length = (split.length / 8) + 1;
            byte[] bArr = new byte[length];
            for (int i4 = 0; i4 < length; i4++) {
                bArr[i4] = 0;
            }
            int i10 = 0;
            for (String str3 : split) {
                int i11 = bArr[i10 / 8];
                if (keySet.contains(str3)) {
                    i11 |= 128 >> (i10 % 8);
                }
                bArr[i10 / 8] = (byte) (i11 & 255);
                i10++;
            }
            sb.append(com.alipay.security.mobile.module.commonutils.crypto.a.b(bArr));
        } catch (Throwable unused) {
        }
        return sb.toString();
    }
}
