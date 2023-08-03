package com.qennnsad.aknkaksd.presentation.module.main.followers;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.util.s1;
import e5.c3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FollowersAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB#\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a;", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "h", "holder", "position", "", "g", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "f", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "e", "()Lkotlin/jvm/functions/Function1;", "onClick", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends PagingDataAdapter<UserInfo, C0420a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f51627a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<UserInfo, Unit> f51628b;

    /* compiled from: FollowersAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "data", "", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Le5/c3;", "binding", "Le5/c3;", "c", "()Le5/c3;", "<init>", "(Le5/c3;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.followers.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0420a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final c3 f51629a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final com.qennnsad.aknkaksd.data.repository.m f51630b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0420a(@m8.g c3 binding, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
            this.f51629a = binding;
            this.f51630b = sourceFactory;
        }

        public final void b(@m8.g UserInfo data) {
            Intrinsics.checkNotNullParameter(data, "data");
            c3 c3Var = this.f51629a;
            ImageView imageView = c3Var.f62298b;
            com.qennnsad.aknkaksd.data.repository.m mVar = this.f51630b;
            String avatar = data.getAvatar();
            Intrinsics.checkNotNullExpressionValue(avatar, "avatar");
            com.qennnsad.aknkaksd.util.img.e.g(imageView, mVar.j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            c3Var.f62303g.setText(data.getNickname());
            c3Var.f62302f.setText(data.getIntro());
            TextView tvId = c3Var.f62302f;
            Intrinsics.checkNotNullExpressionValue(tvId, "tvId");
            tvId.setVisibility(data.isMystery() ^ true ? 0 : 8);
            ImageView ivSex = c3Var.f62300d;
            Intrinsics.checkNotNullExpressionValue(ivSex, "ivSex");
            s1.w(ivSex, Integer.valueOf(data.getSex()));
            ImageView ivSex2 = c3Var.f62300d;
            Intrinsics.checkNotNullExpressionValue(ivSex2, "ivSex");
            ivSex2.setVisibility(data.isMystery() ^ true ? 0 : 8);
            ImageView ivLevel = c3Var.f62299c;
            Intrinsics.checkNotNullExpressionValue(ivLevel, "ivLevel");
            s1.A(ivLevel, data.getLevel(), data.isMystery());
        }

        @m8.g
        public final c3 c() {
            return this.f51629a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FollowersAdapter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C0420a f51632b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(C0420a c0420a) {
            super(0);
            this.f51632b = c0420a;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            UserInfo d4 = a.d(a.this, this.f51632b.getBindingAdapterPosition());
            if (d4 != null) {
                a.this.e().invoke(d4);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public a(@m8.g com.qennnsad.aknkaksd.data.repository.m r8, @m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.data.bean.me.UserInfo, kotlin.Unit> r9) {
        /*
            r7 = this;
            java.lang.String r0 = "sourceFactory"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "onClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            com.qennnsad.aknkaksd.presentation.module.main.followers.b$a r2 = com.qennnsad.aknkaksd.presentation.module.main.followers.b.a()
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.f51627a = r8
            r7.f51628b = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.followers.a.<init>(com.qennnsad.aknkaksd.data.repository.m, kotlin.jvm.functions.Function1):void");
    }

    public static final /* synthetic */ UserInfo d(a aVar, int i4) {
        return aVar.getItem(i4);
    }

    @m8.g
    public final Function1<UserInfo, Unit> e() {
        return this.f51628b;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m f() {
        return this.f51627a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@m8.g C0420a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        UserInfo item = getItem(i4);
        if (item == null) {
            return;
        }
        holder.b(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: h */
    public C0420a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        c3 d4 = c3.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        C0420a c0420a = new C0420a(d4, this.f51627a);
        View itemView = c0420a.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        s1.U(itemView, 0L, new b(c0420a), 1, null);
        return c0420a;
    }
}
