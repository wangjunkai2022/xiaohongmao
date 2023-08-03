package y2;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class z {
    private z() {
    }

    @NonNull
    @u2.a
    public static String[] a(@NonNull Set<Scope> set) {
        com.google.android.gms.common.internal.u.l(set, "scopes can't be null.");
        Scope[] scopeArr = (Scope[]) set.toArray(new Scope[set.size()]);
        com.google.android.gms.common.internal.u.l(scopeArr, "scopes can't be null.");
        String[] strArr = new String[scopeArr.length];
        for (int i4 = 0; i4 < scopeArr.length; i4++) {
            strArr[i4] = scopeArr[i4].getScopeUri();
        }
        return strArr;
    }
}
