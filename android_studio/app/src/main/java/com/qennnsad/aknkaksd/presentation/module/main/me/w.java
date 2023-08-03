package com.qennnsad.aknkaksd.presentation.module.main.me;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.util.s1;
import e5.u2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: MeProfileMenusAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB/\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R#\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u000f\u001a\u0004\b\u0014\u0010\u0011¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", ContextChain.TAG_INFRA, "holder", "position", "", "h", "Lkotlin/Function1;", "a", "Lkotlin/jvm/functions/Function1;", "f", "()Lkotlin/jvm/functions/Function1;", "onClick", "b", "g", "onLongClick", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class w extends ListAdapter<i, a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Function1<i, Unit> f51818a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<i, Unit> f51819b;

    /* compiled from: MeProfileMenusAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", MessageBundle.TITLE_ENTRY, "", "c", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;", "data", "", "b", "Le5/u2;", "binding", "<init>", "(Le5/u2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final u2 f51820a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g u2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f51820a = binding;
        }

        private final int c(String str) {
            switch (str.hashCode()) {
                case -1780753251:
                    if (str.equals("修改手机号")) {
                        return R.drawable.item_frag_me_change_phone;
                    }
                    break;
                case -1649663323:
                    if (str.equals("我的粉丝牌")) {
                        return R.drawable.item_frag_me_fanclub;
                    }
                    break;
                case 625018736:
                    if (str.equals("会员签到")) {
                        return R.drawable.item_frag_me_member_sign_in;
                    }
                    break;
                case 972050016:
                    if (str.equals("等级介绍")) {
                        return R.drawable.item_frag_me_grade_intro;
                    }
                    break;
                case 972252936:
                    if (str.equals("金币筹码互换")) {
                        return R.drawable.item_frag_me_swap_coin;
                    }
                    break;
                case 1008169857:
                    if (str.equals("收藏回家地址")) {
                        return R.drawable.item_frag_me_collection_home_address;
                    }
                    break;
                case 1596745070:
                    if (str.equals("纪定收款方式")) {
                        return R.drawable.item_frag_me_collect_methods;
                    }
                    break;
                case 2142610336:
                    if (str.equals("看广告领金币")) {
                        return R.drawable.item_frag_me_watch_ad;
                    }
                    break;
            }
            return 0;
        }

        public final void b(@m8.g i data) {
            Intrinsics.checkNotNullParameter(data, "data");
            u2 u2Var = this.f51820a;
            ImageView itemMeImgLeft = u2Var.f63194c;
            Intrinsics.checkNotNullExpressionValue(itemMeImgLeft, "itemMeImgLeft");
            itemMeImgLeft.setVisibility(0);
            boolean z9 = true;
            if (data instanceof c0) {
                c0 c0Var = (c0) data;
                int c10 = c(c0Var.n());
                String k10 = c0Var.k();
                if (((k10 == null || k10.length() == 0) ? 1 : 1) == 0) {
                    com.bumptech.glide.c.F(u2Var.f63194c).b(c0Var.k()).k1(u2Var.f63194c);
                } else if (c10 != 0) {
                    u2Var.f63194c.setImageResource(c10);
                } else {
                    ImageView itemMeImgLeft2 = u2Var.f63194c;
                    Intrinsics.checkNotNullExpressionValue(itemMeImgLeft2, "itemMeImgLeft");
                    itemMeImgLeft2.setVisibility(8);
                }
                u2Var.f63196e.setText(c0Var.n());
                TextView itemMeTip = u2Var.f63195d;
                Intrinsics.checkNotNullExpressionValue(itemMeTip, "itemMeTip");
                itemMeTip.setVisibility(8);
            } else if (data instanceof g) {
                g gVar = (g) data;
                if (gVar.b() != null) {
                    u2Var.f63194c.setImageResource(gVar.b().intValue());
                } else {
                    ImageView itemMeImgLeft3 = u2Var.f63194c;
                    Intrinsics.checkNotNullExpressionValue(itemMeImgLeft3, "itemMeImgLeft");
                    itemMeImgLeft3.setVisibility(8);
                }
                u2Var.f63196e.setText(gVar.f());
                TextView itemMeTip2 = u2Var.f63195d;
                Intrinsics.checkNotNullExpressionValue(itemMeTip2, "itemMeTip");
                String d4 = gVar.d();
                if ((d4 == null || d4.length() == 0) && gVar.e() == null) {
                    z9 = false;
                }
                itemMeTip2.setVisibility(z9 ? 0 : 8);
                Integer e4 = gVar.e();
                String string = e4 != null ? this.itemView.getContext().getString(e4.intValue()) : null;
                TextView textView = u2Var.f63195d;
                String d10 = gVar.d();
                if (d10 != null) {
                    string = d10;
                } else if (string == null) {
                    string = "";
                }
                textView.setText(string);
                TextView itemMeTip3 = u2Var.f63195d;
                Intrinsics.checkNotNullExpressionValue(itemMeTip3, "itemMeTip");
                s1.o(itemMeTip3, Integer.valueOf((int) R.drawable.coin_room_top_2), false, false, gVar.c(), false, 22, null);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public w(@m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.presentation.module.main.me.i, kotlin.Unit> r2, @m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.presentation.module.main.me.i, kotlin.Unit> r3) {
        /*
            r1 = this;
            java.lang.String r0 = "onClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "onLongClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            com.qennnsad.aknkaksd.presentation.module.main.me.x$a r0 = com.qennnsad.aknkaksd.presentation.module.main.me.x.a()
            r1.<init>(r0)
            r1.f51818a = r2
            r1.f51819b = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.me.w.<init>(kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(w this$0, a this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Function1<i, Unit> function1 = this$0.f51818a;
        i item = this$0.getItem(this_apply.getBindingAdapterPosition());
        Intrinsics.checkNotNullExpressionValue(item, "getItem(bindingAdapterPosition)");
        function1.invoke(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(w this$0, a this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Function1<i, Unit> function1 = this$0.f51819b;
        i item = this$0.getItem(this_apply.getBindingAdapterPosition());
        Intrinsics.checkNotNullExpressionValue(item, "getItem(bindingAdapterPosition)");
        function1.invoke(item);
        return true;
    }

    @m8.g
    public final Function1<i, Unit> f() {
        return this.f51818a;
    }

    @m8.g
    public final Function1<i, Unit> g() {
        return this.f51819b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        i item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.b(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: i */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        u2 d4 = u2.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        final a aVar = new a(d4);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                w.j(w.this, aVar, view);
            }
        });
        aVar.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.me.v
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean k10;
                k10 = w.k(w.this, aVar, view);
                return k10;
            }
        });
        return aVar;
    }
}
