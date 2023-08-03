package com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog;

import android.text.TextUtils;
import com.qennnsad.aknkaksd.data.bean.room.PrivateCheckBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.util.JwtUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: TicketRoomValidator.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\f\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;", "", "", "aid", "b", "ptid", "a", "", "c", "d", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;", "data", "e", "Lcom/qennnsad/aknkaksd/util/JwtUtil;", "Lcom/qennnsad/aknkaksd/util/JwtUtil;", "jwtUtil", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/util/JwtUtil;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f53956a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final JwtUtil f53957b;

    @u7.a
    public e(@g g5.a localDataManager, @g JwtUtil jwtUtil) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(jwtUtil, "jwtUtil");
        this.f53956a = localDataManager;
        this.f53957b = jwtUtil;
    }

    private final String a(String str) {
        StringBuilder sb = new StringBuilder();
        UserBean C = this.f53956a.C();
        Intrinsics.checkNotNull(C);
        sb.append(C.getId());
        sb.append(str);
        return sb.toString();
    }

    private final String b(String str) {
        return this.f53956a.u(a(str));
    }

    public final boolean c(@g String aid) {
        Intrinsics.checkNotNullParameter(aid, "aid");
        return b(aid).length() > 0;
    }

    public final boolean d(@g String aid) {
        Intrinsics.checkNotNullParameter(aid, "aid");
        String b10 = b(aid);
        if (TextUtils.isEmpty(b10)) {
            return false;
        }
        if (JwtUtil.isTicketValid$default(this.f53957b, b10, true, false, 4, null)) {
            return true;
        }
        this.f53956a.R(a(aid), "");
        return false;
    }

    public final boolean e(@g String aid, @g PrivateCheckBean data) {
        Intrinsics.checkNotNullParameter(aid, "aid");
        Intrinsics.checkNotNullParameter(data, "data");
        String ticket = data.getTicket();
        String a10 = a(aid);
        if (JwtUtil.isTicketValid$default(this.f53957b, ticket, false, false, 4, null)) {
            this.f53956a.R(a10, ticket);
            return true;
        }
        this.f53956a.R(a10, "");
        return false;
    }
}
