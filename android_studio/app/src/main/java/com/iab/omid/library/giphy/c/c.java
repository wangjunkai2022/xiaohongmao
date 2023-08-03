package com.iab.omid.library.giphy.c;

import a.f0;
import android.view.View;
import com.iab.omid.library.giphy.adsession.g;
import com.iab.omid.library.giphy.c.a;
import com.iab.omid.library.giphy.d.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final a f39396a;

    public c(a aVar) {
        this.f39396a = aVar;
    }

    @Override // com.iab.omid.library.giphy.c.a
    public JSONObject a(View view) {
        return com.iab.omid.library.giphy.d.b.b(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.giphy.c.a
    public void b(View view, JSONObject jSONObject, a.InterfaceC0297a interfaceC0297a, boolean z9) {
        Iterator<View> it = c().iterator();
        while (it.hasNext()) {
            interfaceC0297a.a(it.next(), this.f39396a, jSONObject);
        }
    }

    @f0
    ArrayList<View> c() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.giphy.b.a a10 = com.iab.omid.library.giphy.b.a.a();
        if (a10 != null) {
            Collection<g> e4 = a10.e();
            IdentityHashMap identityHashMap = new IdentityHashMap((e4.size() * 2) + 3);
            for (g gVar : e4) {
                View o9 = gVar.o();
                if (o9 != null && f.c(o9) && (rootView = o9.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float a11 = f.a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && f.a(arrayList.get(size - 1)) > a11) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }
}
