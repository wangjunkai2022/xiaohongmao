package z4;

import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.repository.f;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.util.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import timber.log.Timber;

/* compiled from: AnchorsPageCache.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J*\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u0018\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0007J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011¨\u0006\u0016"}, d2 = {"Lz4/a;", "", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "district", "", f.f47744a, "", "toReplace", "", "e", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "c", "", "userId", "d", "", "b", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", "anchor", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static final int f94873b = 50;
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final a f94872a = new a();
    @g

    /* renamed from: c  reason: collision with root package name */
    private static Map<DistrictType, List<Object>> f94874c = new LinkedHashMap();

    private a() {
    }

    @JvmStatic
    public static final int b(@g DistrictType district) {
        Intrinsics.checkNotNullParameter(district, "district");
        List<Object> list = f94874c.get(district);
        if (list != null) {
            return 1 + ((list.size() - 1) / 50);
        }
        return 1;
    }

    @JvmStatic
    @h
    public static final List<HotAnchorSummary> c(@g DistrictType district) {
        Intrinsics.checkNotNullParameter(district, "district");
        List<Object> list = f94874c.get(district);
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof HotAnchorSummary) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        return null;
    }

    @JvmStatic
    @g
    public static final DistrictType d(@g String userId) {
        Object firstOrNull;
        Object obj;
        Intrinsics.checkNotNullParameter(userId, "userId");
        Map<DistrictType, List<Object>> map = f94874c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<DistrictType, List<Object>> entry : map.entrySet()) {
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : entry.getValue()) {
                if (obj2 instanceof HotAnchorSummary) {
                    arrayList.add(obj2);
                }
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((HotAnchorSummary) obj).getId(), userId)) {
                    break;
                }
            }
            if (((HotAnchorSummary) obj) != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(linkedHashMap.keySet());
        DistrictType districtType = (DistrictType) firstOrNull;
        return districtType == null ? DistrictType.Vegan : districtType;
    }

    @JvmStatic
    public static final void e(@g DistrictType district, @h List<? extends Object> list, boolean z9) {
        Intrinsics.checkNotNullParameter(district, "district");
        if (list != null) {
            if (f94874c.get(district) == null || z9) {
                f94874c.put(district, new ArrayList());
            }
            List<Object> list2 = f94874c.get(district);
            if (list2 != null) {
                list2.addAll(list);
                o.f54868a.g(list2);
            }
        }
    }

    public static /* synthetic */ void f(DistrictType districtType, List list, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        e(districtType, list, z9);
    }

    public final int a(@g DistrictType district, @g LiveSummary anchor) {
        Intrinsics.checkNotNullParameter(district, "district");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        if (f94874c.get(district) == null) {
            f94874c.put(district, new ArrayList());
        }
        List<Object> list = f94874c.get(district);
        Intrinsics.checkNotNull(list);
        List<Object> list2 = list;
        int size = list2.size() / 2;
        list2.add(size, anchor);
        Timber.b bVar = Timber.f93860a;
        bVar.k("Temporarily inserted anchor to the middle. Anchor: " + anchor.getId() + " now at position " + size, new Object[0]);
        return size;
    }
}
