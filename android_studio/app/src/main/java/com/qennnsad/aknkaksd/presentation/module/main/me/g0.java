package com.qennnsad.aknkaksd.presentation.module.main.me;

import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MeProfileMenu.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001c\u0010\u0006\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/me/g0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;", "", "g", "()Ljava/lang/Integer;", "balance", "h", "(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/module/main/me/g0;", "", "toString", "hashCode", "", "other", "", "equals", "f", "Ljava/lang/Integer;", "j", "<init>", "(Ljava/lang/Integer;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g0 extends g {
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private final Integer f51803f;

    public g0(@m8.h Integer num) {
        super(R.string.me_get, Integer.valueOf((int) R.drawable.item_frag_me_diamond), b5.a.q(num), true, null, 16, null);
        this.f51803f = num;
    }

    public static /* synthetic */ g0 i(g0 g0Var, Integer num, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = g0Var.f51803f;
        }
        return g0Var.h(num);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g0) && Intrinsics.areEqual(this.f51803f, ((g0) obj).f51803f);
    }

    @m8.h
    public final Integer g() {
        return this.f51803f;
    }

    @m8.g
    public final g0 h(@m8.h Integer num) {
        return new g0(num);
    }

    public int hashCode() {
        Integer num = this.f51803f;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    @m8.h
    public final Integer j() {
        return this.f51803f;
    }

    @m8.g
    public String toString() {
        return "WithdrawMenuItem(balance=" + this.f51803f + ')';
    }
}
