package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo;
import com.qennnsad.aknkaksd.util.s1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* compiled from: AdminListActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\u001a\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u001a\u0010\b\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0007R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\rR\u0014\u0010\u0015\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\rR\u0014\u0010\u0017\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R$\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R$\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0017\u0010!\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010#\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b\u001b\u0010%¨\u0006*"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lkotlin/Function1;", "", "", com.alipay.sdk.authjs.a.f6838i, ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", "j", "admin", "d", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "ivUserAvatar", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "tvUserNickname", "c", "ivSex", "ivLevel", "e", "tvId", "f", "Lkotlin/jvm/functions/Function1;", "itemClickCallback", "g", "itemLongClickCallback", "Lcom/qennnsad/aknkaksd/data/repository/m;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "h", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lf5/e;", "helper", "Lf5/e;", "()Lf5/e;", "Landroid/view/View;", "v", "<init>", "(Landroid/view/View;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends RecyclerView.ViewHolder {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f53551a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final TextView f53552b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final ImageView f53553c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final ImageView f53554d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final TextView f53555e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Function1<? super String, Unit> f53556f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Function1<? super RoomAdminInfo, Unit> f53557g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final f5.e f53558h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f53559i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@m8.g View v9) {
        super(v9);
        Intrinsics.checkNotNullParameter(v9, "v");
        View findViewById = v9.findViewById(R.id.iv_avatar);
        Intrinsics.checkNotNullExpressionValue(findViewById, "v.findViewById(R.id.iv_avatar)");
        this.f53551a = (ImageView) findViewById;
        View findViewById2 = v9.findViewById(R.id.tv_nickname);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "v.findViewById(R.id.tv_nickname)");
        this.f53552b = (TextView) findViewById2;
        View findViewById3 = v9.findViewById(R.id.iv_sex);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "v.findViewById(R.id.iv_sex)");
        this.f53553c = (ImageView) findViewById3;
        View findViewById4 = v9.findViewById(R.id.iv_level);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "v.findViewById(R.id.iv_level)");
        this.f53554d = (ImageView) findViewById4;
        View findViewById5 = v9.findViewById(R.id.tv_id);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "v.findViewById(R.id.tv_id)");
        this.f53555e = (TextView) findViewById5;
        f5.e c10 = ((f5.d) dagger.hilt.c.a(v9.getContext().getApplicationContext(), f5.d.class)).c();
        this.f53558h = c10;
        this.f53559i = c10.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(i this$0, RoomAdminInfo admin, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(admin, "$admin");
        Function1<? super String, Unit> function1 = this$0.f53556f;
        if (function1 != null) {
            function1.invoke(admin.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(i this$0, RoomAdminInfo admin, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(admin, "$admin");
        Function1<? super RoomAdminInfo, Unit> function1 = this$0.f53557g;
        if (function1 != null) {
            function1.invoke(admin);
            return true;
        }
        return true;
    }

    public final void d(@m8.g final RoomAdminInfo admin) {
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(admin, "admin");
        String avatar = admin.getAvatar();
        if (avatar != null) {
            com.qennnsad.aknkaksd.util.img.e.g(this.f53551a, this.f53559i.j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
        }
        TextView textView = this.f53552b;
        String nickname = admin.getNickname();
        if (nickname == null) {
            nickname = "";
        }
        textView.setText(nickname);
        this.f53555e.setText(admin.getIntro());
        ImageView imageView = this.f53553c;
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(admin.getSex());
        s1.w(imageView, intOrNull);
        s1.A(this.f53554d, admin.getLevel(), false);
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.manage.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i.e(i.this, admin, view);
            }
        });
        this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.manage.h
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean f10;
                f10 = i.f(i.this, admin, view);
                return f10;
            }
        });
    }

    @m8.g
    public final f5.e g() {
        return this.f53558h;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m h() {
        return this.f53559i;
    }

    public final void i(@m8.g Function1<? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f53556f = callback;
    }

    public final void j(@m8.g Function1<? super RoomAdminInfo, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f53557g = callback;
    }
}
