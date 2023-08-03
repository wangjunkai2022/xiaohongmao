package b5;

import android.app.Activity;
import android.util.Range;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.pk.PkBean;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.util.z0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import timber.log.Timber;

/* compiled from: DataExt.kt */
@Metadata(bv = {}, d1 = {"\u0000t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0000\u001a(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u001a \u0010\u000e\u001a\u00020\r*\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\t\u001a\u0014\u0010\u0011\u001a\u00020\u0005*\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000f\u001a \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000*\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u000f\u001a \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\u000f\u001a\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0000*\b\u0012\u0004\u0012\u00020\u00150\u0000\u001a\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u0000*\b\u0012\u0004\u0012\u00020\u00150\u0000\u001a\"\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00000\u0018*\b\u0012\u0004\u0012\u00020\u00150\u0000\u001a\n\u0010\u001b\u001a\u00020\u0001*\u00020\u001a\u001a\n\u0010\u001c\u001a\u00020\u001a*\u00020\u001a\u001a\n\u0010\u001e\u001a\u00020\u0005*\u00020\u001d\u001a\f\u0010\u001f\u001a\u00020\u0005*\u0004\u0018\u00010\u001d\u001a\f\u0010 \u001a\u00020\u0003*\u0004\u0018\u00010\u0012\u001a\n\u0010\"\u001a\u00020\u001a*\u00020!\u001a\u0012\u0010'\u001a\u00020&*\u00020#2\u0006\u0010%\u001a\u00020$¨\u0006("}, d2 = {"", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "l", "", "id", "", "returnTrail", "m", "", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "district", "anchor", "", "d", "", "serverDate", "j", "", "b", "c", "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", "e", "f", "", "o", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "p", "k", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", ContextChain.TAG_INFRA, "h", "q", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;", "a", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "Landroid/app/Activity;", TypedValues.Transition.S_FROM, "", "g", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @g
    public static final UserInfo a(@g SendGiftMsg sendGiftMsg) {
        Intrinsics.checkNotNullParameter(sendGiftMsg, "<this>");
        UserInfo userInfo = new UserInfo();
        userInfo.setId(sendGiftMsg.getFromUserId());
        userInfo.setAvatar(sendGiftMsg.getFromUserAvatar());
        userInfo.setNickname(sendGiftMsg.getFromUserName());
        userInfo.setLevel(userInfo.getLevel().toString());
        userInfo.setPeerage_id(sendGiftMsg.getFrom_user_peerage_id());
        userInfo.setIsMystery(sendGiftMsg.getIsMystery());
        return userInfo;
    }

    @g
    public static final List<HotAnchorSummary> b(@h List<Object> list, long j4) {
        List<HotAnchorSummary> emptyList;
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof HotAnchorSummary) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (j((HotAnchorSummary) obj2, j4)) {
                    arrayList2.add(obj2);
                }
            }
            return arrayList2;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0002, code lost:
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toList(r3);
     */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.util.List<com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary> c(@m8.h java.util.List<com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary> r3, long r4) {
        /*
            if (r3 == 0) goto L28
            java.util.List r3 = kotlin.collections.CollectionsKt.toList(r3)
            if (r3 == 0) goto L28
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r3 = r3.iterator()
        L11:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L2c
            java.lang.Object r1 = r3.next()
            r2 = r1
            com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary r2 = (com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary) r2
            boolean r2 = j(r2, r4)
            if (r2 == 0) goto L11
            r0.add(r1)
            goto L11
        L28:
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b5.a.c(java.util.List, long):java.util.List");
    }

    public static final int d(@g List<LiveSummary> list, @g DistrictType district, @g LiveSummary anchor) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(district, "district");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Iterator<LiveSummary> it = list.iterator();
        int i4 = 0;
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            } else if (Intrinsics.areEqual(it.next().getId(), anchor.getId())) {
                break;
            } else {
                i4++;
            }
        }
        return i4 == -1 ? z4.a.f94872a.a(district, anchor) : i4;
    }

    @g
    public static final List<Gift> e(@g List<? extends Gift> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Gift) obj).getIsFan() == 1) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @g
    public static final List<Gift> f(@g List<? extends Gift> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Gift) obj).getIsFan() == 0) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final void g(@g PrivateLimitBean privateLimitBean, @g Activity from) {
        Intrinsics.checkNotNullParameter(privateLimitBean, "<this>");
        Intrinsics.checkNotNullParameter(from, "from");
        PrivateLimitBean.AnchorBean anchor = privateLimitBean.getAnchor();
        Intrinsics.checkNotNullExpressionValue(anchor, "getAnchor()");
        HotAnchorSummary hotAnchorSummary = new HotAnchorSummary();
        hotAnchorSummary.setAvatar(anchor.getAvatar());
        hotAnchorSummary.setSnap(anchor.getSnap());
        hotAnchorSummary.setCurrentRoomNum(anchor.getCurroomnum());
        hotAnchorSummary.setId(anchor.getIdX());
        hotAnchorSummary.setNickname(anchor.getNickname());
        PlayerActivity.f53641e3.b(from, hotAnchorSummary, DistrictType.Hot);
    }

    public static final boolean h(@h UserBean userBean) {
        return userBean != null && userBean.is_im() == 1;
    }

    public static final boolean i(@g UserBean userBean) {
        Intrinsics.checkNotNullParameter(userBean, "<this>");
        Integer realtimeTranslationEnable = userBean.getRealtimeTranslationEnable();
        return realtimeTranslationEnable != null && realtimeTranslationEnable.intValue() == 1;
    }

    public static final boolean j(@h LiveSummary liveSummary, long j4) {
        PkBean pk;
        return (liveSummary == null || (pk = liveSummary.getPk()) == null || j4 >= (pk.getStartTime().longValue() + ((long) pk.getDuration())) * ((long) 1000)) ? false : true;
    }

    @g
    public static final UserInfo k(@g UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(userInfo, "<this>");
        if (userInfo.getPeerage_id() != 0 && !z0.f55131a.contains((Range<Integer>) Integer.valueOf(userInfo.getPeerage_id()))) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("Abnormal peerage_id=" + userInfo.getPeerage_id() + " is normalized to 0", new Object[0]);
            userInfo.setPeerage_id(0);
        }
        return userInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public static final List<HotAnchorSummary> l(@h List<? extends HotAnchorSummary> list) {
        List<HotAnchorSummary> emptyList;
        if (list == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public static final List<HotAnchorSummary> m(@g List<? extends HotAnchorSummary> list, @g String id, boolean z9) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator it = list.iterator();
        int i4 = 0;
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            } else if (Intrinsics.areEqual(((HotAnchorSummary) it.next()).getId(), id)) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 < 0) {
            return list;
        }
        return z9 ? list.subList(i4 + 1, list.size()) : list.subList(0, i4);
    }

    public static /* synthetic */ List n(List list, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = true;
        }
        return m(list, str, z9);
    }

    @g
    public static final Map<Boolean, List<Gift>> o(@g List<? extends Gift> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<Gift> e4 = e(list);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : e4) {
            Boolean valueOf = Boolean.valueOf(((Gift) obj).getIsFree() == 1);
            Object obj2 = linkedHashMap.get(valueOf);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(valueOf, obj2);
            }
            ((List) obj2).add(obj);
        }
        return linkedHashMap;
    }

    @g
    public static final HotAnchorSummary p(@g UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(userInfo, "<this>");
        HotAnchorSummary hotAnchorSummary = new HotAnchorSummary();
        hotAnchorSummary.setAvatar(userInfo.getAvatar());
        hotAnchorSummary.setSnap(userInfo.getSnap());
        hotAnchorSummary.setCurrentRoomNum(userInfo.getCurrentRoomNum());
        hotAnchorSummary.setId(userInfo.getId());
        hotAnchorSummary.setNickname(userInfo.getNickname());
        hotAnchorSummary.setOnlineCount(0);
        hotAnchorSummary.setToyStatus(userInfo.getToy_status());
        hotAnchorSummary.setCity(userInfo.getCity());
        hotAnchorSummary.setIntro(userInfo.getIntro());
        hotAnchorSummary.setSex(userInfo.getSex());
        return hotAnchorSummary;
    }

    @g
    public static final String q(@h Object obj) {
        String obj2;
        return (obj == null || (obj2 = obj.toString()) == null) ? "" : obj2;
    }
}
