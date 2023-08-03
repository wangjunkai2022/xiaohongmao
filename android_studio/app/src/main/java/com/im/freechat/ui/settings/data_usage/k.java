package com.im.freechat.ui.settings.data_usage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.im.freechat.domain.NetworkType;
import f4.q1;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NetworkUsageAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/ui/settings/data_usage/k;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/domain/m;", "Lcom/im/freechat/ui/settings/data_usage/k$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "e", "holder", "position", "", "d", "<init>", "()V", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k extends ListAdapter<com.im.freechat.domain.m, a> {

    /* compiled from: NetworkUsageAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/ui/settings/data_usage/k$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/domain/NetworkType;", "type", "", "c", "Lcom/im/freechat/domain/m;", "item", "", "b", "Lf4/q1;", "binding", "<init>", "(Lf4/q1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final q1 f43669a;

        /* compiled from: NetworkUsageAdapter.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* renamed from: com.im.freechat.ui.settings.data_usage.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public /* synthetic */ class C0371a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[NetworkType.values().length];
                iArr[NetworkType.MOBILE.ordinal()] = 1;
                iArr[NetworkType.WI_FI.ordinal()] = 2;
                iArr[NetworkType.ROAMING.ordinal()] = 3;
                iArr[NetworkType.ALL.ordinal()] = 4;
                iArr[NetworkType.UNKNOWN.ordinal()] = 5;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g q1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43669a = binding;
        }

        private final int c(NetworkType networkType) {
            int i4 = C0371a.$EnumSwitchMapping$0[networkType.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 == 5) {
                                return b.s.E9;
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                        return b.s.C9;
                    }
                    return b.s.K8;
                }
                return b.s.M9;
            }
            return b.s.f2329m7;
        }

        public final void b(@m8.g com.im.freechat.domain.m item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.f43669a.f65710b.setText(c(item.h()));
            this.f43669a.f65711c.setText(com.im.freechat.extend.n.c(item.f()));
            this.f43669a.f65712d.setText(com.im.freechat.extend.n.c(item.g()));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public k() {
        /*
            r1 = this;
            com.im.freechat.ui.settings.data_usage.l$a r0 = com.im.freechat.ui.settings.data_usage.l.a()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.settings.data_usage.k.<init>():void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        com.im.freechat.domain.m item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.b(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: e */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        q1 d4 = q1.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.f….context), parent, false)");
        return new a(d4);
    }
}
