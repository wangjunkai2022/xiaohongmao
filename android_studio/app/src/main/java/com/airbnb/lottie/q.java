package com.airbnb.lottie;

import android.util.Log;
import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PerformanceTracker.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4739a = false;

    /* renamed from: b  reason: collision with root package name */
    private final Set<b> f4740b = new ArraySet();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, com.airbnb.lottie.utils.f> f4741c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Comparator<Pair<String, Float>> f4742d = new a();

    /* compiled from: PerformanceTracker.java */
    /* loaded from: classes.dex */
    class a implements Comparator<Pair<String, Float>> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = pair.second.floatValue();
            float floatValue2 = pair2.second.floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            return floatValue > floatValue2 ? -1 : 0;
        }
    }

    /* compiled from: PerformanceTracker.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(float f10);
    }

    public void a(b bVar) {
        this.f4740b.add(bVar);
    }

    public void b() {
        this.f4741c.clear();
    }

    public List<Pair<String, Float>> c() {
        if (!this.f4739a) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.f4741c.size());
        for (Map.Entry<String, com.airbnb.lottie.utils.f> entry : this.f4741c.entrySet()) {
            arrayList.add(new Pair(entry.getKey(), Float.valueOf(entry.getValue().b())));
        }
        Collections.sort(arrayList, this.f4742d);
        return arrayList;
    }

    public void d() {
        if (this.f4739a) {
            List<Pair<String, Float>> c10 = c();
            Log.d(e.f4247b, "Render times:");
            for (int i4 = 0; i4 < c10.size(); i4++) {
                Pair<String, Float> pair = c10.get(i4);
                Log.d(e.f4247b, String.format("\t\t%30s:%.2f", pair.first, pair.second));
            }
        }
    }

    public void e(String str, float f10) {
        if (this.f4739a) {
            com.airbnb.lottie.utils.f fVar = this.f4741c.get(str);
            if (fVar == null) {
                fVar = new com.airbnb.lottie.utils.f();
                this.f4741c.put(str, fVar);
            }
            fVar.a(f10);
            if (str.equals("__container")) {
                for (b bVar : this.f4740b) {
                    bVar.a(f10);
                }
            }
        }
    }

    public void f(b bVar) {
        this.f4740b.remove(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z9) {
        this.f4739a = z9;
    }
}
