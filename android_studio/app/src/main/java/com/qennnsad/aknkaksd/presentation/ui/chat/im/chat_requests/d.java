package com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.extend.m;
import com.im.freechat.extend.r;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.im.freechat.shared.entities.contact.UserModel;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: FriendRequestAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR0\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R0\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "g", "holder", "position", "", "f", "", "a", "Z", h.f52599a, "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "d", "()Lkotlin/jvm/functions/Function1;", "h", "(Lkotlin/jvm/functions/Function1;)V", "acceptClickListener", "c", "e", ContextChain.TAG_INFRA, "declineClickListener", "<init>", "(Z)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends ListAdapter<FriendStatus, a> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f52569a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super FriendStatus, Unit> f52570b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Function1<? super FriendStatus, Unit> f52571c;

    /* compiled from: FriendRequestAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR0\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R0\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0019\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0018R\u001c\u0010\u001d\u001a\n \u0017*\u0004\u0018\u00010\u001a0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001f\u001a\n \u0017*\u0004\u0018\u00010\u001a0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u001c\u0010 \u001a\n \u0017*\u0004\u0018\u00010\u001a0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001cR\u001c\u0010#\u001a\n \u0017*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\"R\u001c\u0010$\u001a\n \u0017*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\"¨\u0006)"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "chatRequest", "", "d", "", "a", "Z", h.f52599a, "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "g", "()Lkotlin/jvm/functions/Function1;", ContextChain.TAG_INFRA, "(Lkotlin/jvm/functions/Function1;)V", "acceptedClickListener", "c", "h", "j", "declinedClickListener", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "Landroid/widget/ImageView;", "ivAvatar", "Landroid/widget/TextView;", "e", "Landroid/widget/TextView;", "tvUsername", "f", "tvReason", "tvAvatarPlaceholder", "Landroid/widget/Button;", "Landroid/widget/Button;", "btnAccept", "btnDecline", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;Z)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f52572a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private Function1<? super FriendStatus, Unit> f52573b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private Function1<? super FriendStatus, Unit> f52574c;

        /* renamed from: d  reason: collision with root package name */
        private final ImageView f52575d;

        /* renamed from: e  reason: collision with root package name */
        private final TextView f52576e;

        /* renamed from: f  reason: collision with root package name */
        private final TextView f52577f;

        /* renamed from: g  reason: collision with root package name */
        private final TextView f52578g;

        /* renamed from: h  reason: collision with root package name */
        private final Button f52579h;

        /* renamed from: i  reason: collision with root package name */
        private final Button f52580i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g View view, boolean z9) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            this.f52572a = z9;
            this.f52575d = (ImageView) view.findViewById(R.id.ivAvatar);
            this.f52576e = (TextView) view.findViewById(R.id.tvUsername);
            this.f52577f = (TextView) view.findViewById(R.id.tvReason);
            this.f52578g = (TextView) view.findViewById(R.id.tvAvatarPlaceholder);
            this.f52579h = (Button) view.findViewById(R.id.btn_accept);
            this.f52580i = (Button) view.findViewById(R.id.btn_decline);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(a this$0, FriendStatus chatRequest, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(chatRequest, "$chatRequest");
            Function1<? super FriendStatus, Unit> function1 = this$0.f52573b;
            if (function1 != null) {
                function1.invoke(chatRequest);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(a this$0, FriendStatus chatRequest, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(chatRequest, "$chatRequest");
            Function1<? super FriendStatus, Unit> function1 = this$0.f52574c;
            if (function1 != null) {
                function1.invoke(chatRequest);
            }
        }

        public final void d(@m8.g final FriendStatus chatRequest) {
            char first;
            Intrinsics.checkNotNullParameter(chatRequest, "chatRequest");
            UserModel user = chatRequest.getUser();
            TextView textView = this.f52576e;
            textView.setText(user.getNickname() + " (ID: " + user.getUserId() + ')');
            String nickname = user.getNickname();
            if (nickname == null) {
                nickname = String.valueOf(user.getUserId());
            }
            TextView textView2 = this.f52578g;
            first = StringsKt___StringsKt.first(nickname);
            textView2.setText(String.valueOf(first));
            this.f52578g.setBackgroundTintList(ColorStateList.valueOf(r.a(nickname)));
            if (user.getAvatar() != null) {
                ImageView ivAvatar = this.f52575d;
                Intrinsics.checkNotNullExpressionValue(ivAvatar, "ivAvatar");
                ivAvatar.setVisibility(0);
                ImageView ivAvatar2 = this.f52575d;
                Intrinsics.checkNotNullExpressionValue(ivAvatar2, "ivAvatar");
                m.o(ivAvatar2, user.getAvatar());
            } else {
                ImageView ivAvatar3 = this.f52575d;
                Intrinsics.checkNotNullExpressionValue(ivAvatar3, "ivAvatar");
                ivAvatar3.setVisibility(8);
            }
            this.f52577f.setText(chatRequest.getReason());
            Button btnAccept = this.f52579h;
            Intrinsics.checkNotNullExpressionValue(btnAccept, "btnAccept");
            btnAccept.setVisibility(this.f52572a ? 0 : 8);
            this.f52579h.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.a.e(d.a.this, chatRequest, view);
                }
            });
            this.f52580i.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.a.f(d.a.this, chatRequest, view);
                }
            });
        }

        @m8.h
        public final Function1<FriendStatus, Unit> g() {
            return this.f52573b;
        }

        @m8.h
        public final Function1<FriendStatus, Unit> h() {
            return this.f52574c;
        }

        public final void i(@m8.h Function1<? super FriendStatus, Unit> function1) {
            this.f52573b = function1;
        }

        public final void j(@m8.h Function1<? super FriendStatus, Unit> function1) {
            this.f52574c = function1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendRequestAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<FriendStatus, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g FriendStatus it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<FriendStatus, Unit> d4 = d.this.d();
            if (d4 != null) {
                d4.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FriendStatus friendStatus) {
            a(friendStatus);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendRequestAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<FriendStatus, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g FriendStatus it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<FriendStatus, Unit> e4 = d.this.e();
            if (e4 != null) {
                e4.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FriendStatus friendStatus) {
            a(friendStatus);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public d(boolean r2) {
        /*
            r1 = this;
            com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.e$a r0 = com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.e.a()
            r1.<init>(r0)
            r1.f52569a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d.<init>(boolean):void");
    }

    @m8.h
    public final Function1<FriendStatus, Unit> d() {
        return this.f52570b;
    }

    @m8.h
    public final Function1<FriendStatus, Unit> e() {
        return this.f52571c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        FriendStatus item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.d(item);
        holder.i(new b());
        holder.j(new c());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: g */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_chat_request, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context).inf…t_request, parent, false)");
        return new a(inflate, this.f52569a);
    }

    public final void h(@m8.h Function1<? super FriendStatus, Unit> function1) {
        this.f52570b = function1;
    }

    public final void i(@m8.h Function1<? super FriendStatus, Unit> function1) {
        this.f52571c = function1;
    }
}
