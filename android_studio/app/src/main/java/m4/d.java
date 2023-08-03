package m4;

import android.content.pm.ApplicationInfo;
import android.net.TrafficStats;
import com.im.freechat.domain.NetworkType;
import com.im.freechat.domain.l;
import com.im.freechat.domain.m;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: TrafficStatsNetworkUsage.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¨\u0006\t"}, d2 = {"Lm4/d;", "Lcom/im/freechat/domain/l;", "", "Lcom/im/freechat/domain/m;", "a", "Landroid/content/pm/ApplicationInfo;", "appInfo", "<init>", "(Landroid/content/pm/ApplicationInfo;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d implements l {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final ApplicationInfo f86948a;

    public d(@g ApplicationInfo appInfo) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        this.f86948a = appInfo;
    }

    @Override // com.im.freechat.domain.l
    @g
    public List<m> a() {
        int i4 = this.f86948a.uid;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new m(TrafficStats.getUidRxBytes(i4), TrafficStats.getUidTxBytes(i4), NetworkType.ALL));
        return arrayList;
    }
}
