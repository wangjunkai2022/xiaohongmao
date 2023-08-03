package com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.im.freechat.extend.r;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.utils.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: ContactListAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R0\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "k", "holder", "position", "", "h", "Lkotlin/Function1;", "a", "Lkotlin/jvm/functions/Function1;", "f", "()Lkotlin/jvm/functions/Function1;", "l", "(Lkotlin/jvm/functions/Function1;)V", "itemClickListener", "b", "g", "m", "itemLongClickListener", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends ListAdapter<UserModel, a> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super UserModel, Unit> f52668a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super UserModel, Unit> f52669b;

    /* compiled from: ContactListAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u001c\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\r\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\fR\u001c\u0010\u000f\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u001c\u0010\u0011\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "b", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "a", "Landroid/widget/ImageView;", "ivAvatar", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "tvUsername", "c", "tvLastOnline", "d", "tvAvatarPlaceholder", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private final ImageView f52670a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f52671b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f52672c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f52673d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            this.f52670a = (ImageView) view.findViewById(R.id.ivAvatar);
            this.f52671b = (TextView) view.findViewById(R.id.tvUsername);
            this.f52672c = (TextView) view.findViewById(R.id.tvLastOnline);
            this.f52673d = (TextView) view.findViewById(R.id.tvAvatarPlaceholder);
        }

        public final void b(@m8.g UserModel contact) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(contact, "contact");
            String displayName = contact.getDisplayName();
            TextView textView = this.f52671b;
            textView.setText(displayName + " (ID: " + contact.getUserId() + ')');
            Intrinsics.checkNotNullExpressionValue(textView, "");
            v.d(textView, com.im.freechat.extend.m.m(contact.getManagementRole()), false, false, true, false, 22, null);
            TextView textView2 = this.f52673d;
            firstOrNull = StringsKt___StringsKt.firstOrNull(displayName);
            textView2.setText(String.valueOf(firstOrNull != null ? firstOrNull : ""));
            this.f52673d.setBackgroundTintList(ColorStateList.valueOf(r.a(displayName)));
            if (contact.getAvatar() != null) {
                ImageView ivAvatar = this.f52670a;
                Intrinsics.checkNotNullExpressionValue(ivAvatar, "ivAvatar");
                ivAvatar.setVisibility(0);
                ImageView ivAvatar2 = this.f52670a;
                Intrinsics.checkNotNullExpressionValue(ivAvatar2, "ivAvatar");
                com.im.freechat.extend.m.o(ivAvatar2, contact.getAvatar());
            } else {
                ImageView ivAvatar3 = this.f52670a;
                Intrinsics.checkNotNullExpressionValue(ivAvatar3, "ivAvatar");
                ivAvatar3.setVisibility(8);
            }
            TextView textView3 = this.f52672c;
            Context context = textView3.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "tvLastOnline.context");
            textView3.setText(com.im.freechat.extend.m.l(contact, context));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c() {
        /*
            r1 = this;
            com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.d$a r0 = com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.d.a()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.c.<init>():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(c this$0, int i4, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super UserModel, Unit> function1 = this$0.f52668a;
        if (function1 != null) {
            UserModel item = this$0.getItem(i4);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
            function1.invoke(item);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(c this$0, int i4, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super UserModel, Unit> function1 = this$0.f52669b;
        if (function1 != null) {
            UserModel item = this$0.getItem(i4);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
            function1.invoke(item);
            Unit unit = Unit.INSTANCE;
            return true;
        }
        return false;
    }

    @m8.h
    public final Function1<UserModel, Unit> f() {
        return this.f52668a;
    }

    @m8.h
    public final Function1<UserModel, Unit> g() {
        return this.f52669b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onBindViewHolder(@m8.g a holder, final int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        UserModel item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.b(item);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.i(c.this, i4, view);
            }
        });
        holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.b
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean j4;
                j4 = c.j(c.this, i4, view);
                return j4;
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: k */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_chat_contact, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …t_contact, parent, false)");
        return new a(inflate);
    }

    public final void l(@m8.h Function1<? super UserModel, Unit> function1) {
        this.f52668a = function1;
    }

    public final void m(@m8.h Function1<? super UserModel, Unit> function1) {
        this.f52669b = function1;
    }
}
