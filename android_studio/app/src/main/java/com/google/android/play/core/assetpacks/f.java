package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class f {
    public static f c(Bundle bundle, x1 x1Var, m3 m3Var) {
        return f(bundle, x1Var, m3Var, new ArrayList(), n0.f31471a);
    }

    public static f d(Bundle bundle, x1 x1Var, m3 m3Var, m0 m0Var) {
        return f(bundle, x1Var, m3Var, new ArrayList(), m0Var);
    }

    public static f e(Bundle bundle, x1 x1Var, m3 m3Var, List list) {
        return f(bundle, x1Var, m3Var, list, n0.f31471a);
    }

    private static f f(Bundle bundle, x1 x1Var, m3 m3Var, List list, m0 m0Var) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap hashMap = new HashMap();
        int size = stringArrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            String str = stringArrayList.get(i4);
            hashMap.put(str, AssetPackState.i(bundle, str, x1Var, m3Var, m0Var));
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            hashMap.put(str2, AssetPackState.h(str2, 4, 0, 0L, 0L, 0.0d, 1, "", ""));
        }
        return new w0(bundle.getLong("total_bytes_to_download"), hashMap);
    }

    public abstract Map<String, AssetPackState> a();

    public abstract long b();
}
