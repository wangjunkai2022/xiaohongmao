package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.room.BlacklistedUserBean;
import e5.f2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BlacklistAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR$\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0010R\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lkotlin/Function1;", "", "", com.alipay.sdk.authjs.a.f6838i, "g", "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;", "user", "c", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "f", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/jvm/functions/Function1;", "itemClickCallback", "Le5/f2;", "binding", "Le5/f2;", "e", "()Le5/f2;", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Le5/f2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends RecyclerView.ViewHolder {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f53212a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final f2 f53213b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Function1<? super String, Unit> f53214c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g f2 binding) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.f53212a = sourceFactory;
        this.f53213b = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(g this$0, BlacklistedUserBean user, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(user, "$user");
        Function1<? super String, Unit> function1 = this$0.f53214c;
        if (function1 != null) {
            function1.invoke(user.getId());
        }
    }

    public final void c(@m8.g final BlacklistedUserBean user) {
        Intrinsics.checkNotNullParameter(user, "user");
        f2 f2Var = this.f53213b;
        String avatar = user.getAvatar();
        if (avatar != null) {
            com.qennnsad.aknkaksd.util.img.e.g(f2Var.f62402c, this.f53212a.j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
        }
        TextView textView = f2Var.f62403d;
        String nickname = user.getNickname();
        if (nickname == null) {
            nickname = "";
        }
        textView.setText(nickname);
        f2Var.f62401b.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.setting.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.d(g.this, user, view);
            }
        });
    }

    @m8.g
    public final f2 e() {
        return this.f53213b;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m f() {
        return this.f53212a;
    }

    public final void g(@m8.g Function1<? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f53214c = callback;
    }
}
