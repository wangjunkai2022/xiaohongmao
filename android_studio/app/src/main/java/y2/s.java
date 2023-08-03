package y2;

import androidx.annotation.NonNull;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class s {
    @u2.a
    public static void a(@NonNull StringBuilder sb, @NonNull HashMap<String, String> hashMap) {
        sb.append("{");
        boolean z9 = true;
        for (String str : hashMap.keySet()) {
            if (!z9) {
                sb.append(",");
            }
            String str2 = hashMap.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
            z9 = false;
        }
        sb.append(com.alipay.sdk.util.i.f6967d);
    }
}
