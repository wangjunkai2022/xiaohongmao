package m4;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.usage.NetworkStats;
import android.app.usage.NetworkStatsManager;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.im.freechat.domain.NetworkType;
import com.im.freechat.domain.l;
import com.im.freechat.domain.m;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: NetworkStatsNetworkUsage.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0003J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016¨\u0006\u0013"}, d2 = {"Lm4/c;", "Lcom/im/freechat/domain/l;", "Lcom/im/freechat/domain/m;", "c", "", "b", "", "network", "Landroid/app/usage/NetworkStats;", "d", "a", "Landroid/app/usage/NetworkStatsManager;", "networkStatsManager", "Landroid/telephony/TelephonyManager;", "telephonyManager", "Landroid/content/pm/ApplicationInfo;", "appInfo", "<init>", "(Landroid/app/usage/NetworkStatsManager;Landroid/telephony/TelephonyManager;Landroid/content/pm/ApplicationInfo;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
@TargetApi(23)
/* loaded from: classes3.dex */
public final class c implements l {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final NetworkStatsManager f86945a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final TelephonyManager f86946b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final ApplicationInfo f86947c;

    public c(@g NetworkStatsManager networkStatsManager, @g TelephonyManager telephonyManager, @g ApplicationInfo appInfo) {
        Intrinsics.checkNotNullParameter(networkStatsManager, "networkStatsManager");
        Intrinsics.checkNotNullParameter(telephonyManager, "telephonyManager");
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        this.f86945a = networkStatsManager;
        this.f86946b = telephonyManager;
        this.f86947c = appInfo;
    }

    private final List<m> b() {
        NetworkStats d4 = d(0);
        NetworkStats.Bucket bucket = new NetworkStats.Bucket();
        m mVar = new m(0L, 0L, NetworkType.MOBILE, 3, null);
        m mVar2 = null;
        while (d4.hasNextBucket()) {
            d4.getNextBucket(bucket);
            if (Build.VERSION.SDK_INT >= 24 && bucket.getRoaming() == 2) {
                if (mVar2 != null) {
                    mVar2.i(mVar2.f() + bucket.getRxBytes());
                    mVar2.j(mVar2.g() + bucket.getTxBytes());
                } else {
                    mVar2 = new m(bucket.getRxBytes(), bucket.getTxBytes(), NetworkType.ROAMING);
                }
            }
            mVar.i(mVar.f() + bucket.getRxBytes());
            mVar.j(mVar.g() + bucket.getTxBytes());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(mVar);
        if (mVar2 != null) {
            arrayList.add(mVar2);
        }
        return arrayList;
    }

    private final m c() {
        NetworkStats d4 = d(1);
        NetworkStats.Bucket bucket = new NetworkStats.Bucket();
        m mVar = new m(0L, 0L, NetworkType.WI_FI, 3, null);
        while (d4.hasNextBucket()) {
            d4.getNextBucket(bucket);
            mVar.i(mVar.f() + bucket.getRxBytes());
            mVar.j(mVar.g() + bucket.getTxBytes());
        }
        return mVar;
    }

    @SuppressLint({"MissingPermission", "HardwareIds"})
    private final NetworkStats d(int i4) {
        NetworkStats queryDetailsForUid = this.f86945a.queryDetailsForUid(i4, Build.VERSION.SDK_INT >= 29 ? null : this.f86946b.getSubscriberId(), 0L, System.currentTimeMillis(), this.f86947c.uid);
        Intrinsics.checkNotNullExpressionValue(queryDetailsForUid, "networkStatsManager.quer…    appInfo.uid\n        )");
        return queryDetailsForUid;
    }

    @Override // com.im.freechat.domain.l
    @g
    public List<m> a() {
        ArrayList<m> arrayList = new ArrayList();
        m mVar = new m(0L, 0L, NetworkType.ALL, 3, null);
        arrayList.addAll(b());
        arrayList.add(c());
        for (m mVar2 : arrayList) {
            mVar.i(mVar.f() + mVar2.f());
            mVar.j(mVar.g() + mVar2.g());
        }
        arrayList.add(mVar);
        return arrayList;
    }
}
