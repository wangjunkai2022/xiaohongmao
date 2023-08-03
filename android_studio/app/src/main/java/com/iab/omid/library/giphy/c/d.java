package com.iab.omid.library.giphy.c;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.giphy.c.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f39397a = new int[2];

    private void c(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0297a interfaceC0297a) {
        for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
            interfaceC0297a.a(viewGroup.getChildAt(i4), this, jSONObject);
        }
    }

    @TargetApi(21)
    private void d(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0297a interfaceC0297a) {
        HashMap hashMap = new HashMap();
        for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
            View childAt = viewGroup.getChildAt(i4);
            ArrayList arrayList = (ArrayList) hashMap.get(Float.valueOf(childAt.getZ()));
            if (arrayList == null) {
                arrayList = new ArrayList();
                hashMap.put(Float.valueOf(childAt.getZ()), arrayList);
            }
            arrayList.add(childAt);
        }
        ArrayList arrayList2 = new ArrayList(hashMap.keySet());
        Collections.sort(arrayList2);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((ArrayList) hashMap.get((Float) it.next())).iterator();
            while (it2.hasNext()) {
                interfaceC0297a.a((View) it2.next(), this, jSONObject);
            }
        }
    }

    @Override // com.iab.omid.library.giphy.c.a
    public JSONObject a(View view) {
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f39397a);
        int[] iArr = this.f39397a;
        return com.iab.omid.library.giphy.d.b.b(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.giphy.c.a
    public void b(View view, JSONObject jSONObject, a.InterfaceC0297a interfaceC0297a, boolean z9) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (z9) {
                d(viewGroup, jSONObject, interfaceC0297a);
            } else {
                c(viewGroup, jSONObject, interfaceC0297a);
            }
        }
    }
}
