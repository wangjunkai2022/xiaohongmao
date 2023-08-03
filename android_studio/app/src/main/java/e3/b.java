package e3;

import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Map f62217a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map f62218b;

    static {
        HashMap hashMap = new HashMap();
        f62217a = hashMap;
        HashMap hashMap2 = new HashMap();
        f62218b = hashMap2;
        hashMap.put(-1, "The Play Store app is either not installed or not the official version.");
        hashMap.put(-2, "Call first requestReviewFlow to get the ReviewInfo.");
        hashMap2.put(-1, "PLAY_STORE_NOT_FOUND");
        hashMap2.put(-2, "INVALID_REQUEST");
    }

    public static String a(int i4) {
        Map map = f62217a;
        Integer valueOf = Integer.valueOf(i4);
        if (map.containsKey(valueOf)) {
            String str = (String) map.get(valueOf);
            String str2 = (String) f62218b.get(valueOf);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 106 + String.valueOf(str2).length());
            sb.append(str);
            sb.append(" (https://developer.android.com/reference/com/google/android/play/core/review/model/ReviewErrorCode.html#");
            sb.append(str2);
            sb.append(")");
            return sb.toString();
        }
        return "";
    }
}
