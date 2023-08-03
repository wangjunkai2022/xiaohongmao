package com.im.freechat.ui.contacts;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.extend.r;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.contacts.c;
import com.im.freechat.utils.v;
import f4.c1;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: ContactListAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\rH\u0016R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R0\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R0\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001d\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!¨\u0006)"}, d2 = {"Lcom/im/freechat/ui/contacts/c;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "Lcom/im/freechat/ui/contacts/c$a;", "Lf4/c1;", "binding", "", "l", "", "list", "submitList", "Landroid/view/ViewGroup;", "parent", "", "viewType", "k", "holder", "position", ContextChain.TAG_INFRA, "", "a", "Z", "h", "()Z", "o", "(Z)V", "smallItemView", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "f", "()Lkotlin/jvm/functions/Function1;", "m", "(Lkotlin/jvm/functions/Function1;)V", "itemClickListener", "c", "g", "n", "removeClickListener", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends ListAdapter<UserModel, a> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f43436a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super UserModel, Unit> f43437b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Function1<? super UserModel, Unit> f43438c;

    /* compiled from: ContactListAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R0\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/ui/contacts/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "removeEnabled", "", "c", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "e", "()Lkotlin/jvm/functions/Function1;", "f", "(Lkotlin/jvm/functions/Function1;)V", "removedClickListener", "Lf4/c1;", "binding", "<init>", "(Lf4/c1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final c1 f43439a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private Function1<? super UserModel, Unit> f43440b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g c1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43439a = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(a this$0, UserModel contact, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(contact, "$contact");
            Function1<? super UserModel, Unit> function1 = this$0.f43440b;
            if (function1 != null) {
                function1.invoke(contact);
            }
        }

        public final void c(@m8.g final UserModel contact, boolean z9) {
            char first;
            char first2;
            Intrinsics.checkNotNullParameter(contact, "contact");
            c1 c1Var = this.f43439a;
            if (contact.isService()) {
                String string = c1Var.getRoot().getContext().getString(b.s.Q8);
                Intrinsics.checkNotNullExpressionValue(string, "root.context.getString(R.string.service_contact)");
                c1Var.f65457i.setText(string);
                TextView textView = c1Var.f65455g;
                first2 = StringsKt___StringsKt.first(string);
                textView.setText(String.valueOf(first2));
                c1Var.f65455g.setBackgroundTintList(ColorStateList.valueOf(r.a(contact.getNickname())));
                ImageView ivAvatar = c1Var.f65453e;
                Intrinsics.checkNotNullExpressionValue(ivAvatar, "ivAvatar");
                ivAvatar.setVisibility(8);
            } else {
                String displayName = contact.getDisplayName();
                TextView textView2 = c1Var.f65457i;
                textView2.setText(displayName + " (ID: " + contact.getUserId() + ')');
                Intrinsics.checkNotNullExpressionValue(textView2, "");
                v.d(textView2, com.im.freechat.extend.m.m(contact.getManagementRole()), false, false, true, false, 22, null);
                TextView textView3 = c1Var.f65455g;
                first = StringsKt___StringsKt.first(displayName);
                textView3.setText(String.valueOf(first));
                c1Var.f65455g.setBackgroundTintList(ColorStateList.valueOf(r.a(displayName)));
                if (contact.getAvatar() != null) {
                    ImageView ivAvatar2 = c1Var.f65453e;
                    Intrinsics.checkNotNullExpressionValue(ivAvatar2, "ivAvatar");
                    ivAvatar2.setVisibility(0);
                    ImageView ivAvatar3 = c1Var.f65453e;
                    Intrinsics.checkNotNullExpressionValue(ivAvatar3, "ivAvatar");
                    com.im.freechat.extend.m.o(ivAvatar3, contact.getAvatar());
                } else {
                    ImageView ivAvatar4 = c1Var.f65453e;
                    Intrinsics.checkNotNullExpressionValue(ivAvatar4, "ivAvatar");
                    ivAvatar4.setVisibility(8);
                }
            }
            TextView tvGlobal = c1Var.f65456h;
            Intrinsics.checkNotNullExpressionValue(tvGlobal, "tvGlobal");
            tvGlobal.setVisibility(contact.isGlobalSearch() ? 0 : 8);
            ImageButton btnRemove = c1Var.f65452d;
            Intrinsics.checkNotNullExpressionValue(btnRemove, "btnRemove");
            btnRemove.setVisibility(!contact.isService() && z9 ? 0 : 8);
            c1Var.f65452d.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.contacts.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.a.d(c.a.this, contact, view);
                }
            });
        }

        @m8.h
        public final Function1<UserModel, Unit> e() {
            return this.f43440b;
        }

        public final void f(@m8.h Function1<? super UserModel, Unit> function1) {
            this.f43440b = function1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "a", "(Lcom/im/freechat/shared/entities/contact/UserModel;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<UserModel, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43442b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4) {
            super(1);
            this.f43442b = i4;
        }

        public final void a(@m8.g UserModel it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<UserModel, Unit> g4 = c.this.g();
            if (g4 != null) {
                UserModel e4 = c.e(c.this, this.f43442b);
                Intrinsics.checkNotNullExpressionValue(e4, "getItem(position)");
                g4.invoke(e4);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserModel userModel) {
            a(userModel);
            return Unit.INSTANCE;
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
            com.im.freechat.ui.contacts.d$a r0 = com.im.freechat.ui.contacts.d.a()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.contacts.c.<init>():void");
    }

    public static final /* synthetic */ UserModel e(c cVar, int i4) {
        return cVar.getItem(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(c this$0, int i4, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super UserModel, Unit> function1 = this$0.f43437b;
        if (function1 != null) {
            UserModel item = this$0.getItem(i4);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
            function1.invoke(item);
        }
    }

    private final void l(c1 c1Var) {
        int dimension = (int) c1Var.getRoot().getResources().getDimension(b.g.O0);
        TextView textView = c1Var.f65455g;
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        layoutParams.width = dimension;
        layoutParams.height = dimension;
        textView.setLayoutParams(layoutParams);
        c1Var.f65455g.setTextSize(16.0f);
        ImageView imageView = c1Var.f65453e;
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        layoutParams2.width = dimension;
        layoutParams2.height = dimension;
        imageView.setLayoutParams(layoutParams2);
        c1Var.f65457i.setTextSize(12.0f);
    }

    @m8.h
    public final Function1<UserModel, Unit> f() {
        return this.f43437b;
    }

    @m8.h
    public final Function1<UserModel, Unit> g() {
        return this.f43438c;
    }

    public final boolean h() {
        return this.f43436a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: i */
    public void onBindViewHolder(@m8.g a holder, final int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        UserModel item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.c(item, this.f43438c != null);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.contacts.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.j(c.this, i4, view);
            }
        });
        holder.f(new b(i4));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: k */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        c1 d4 = c1.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, parent, false)");
        if (this.f43436a) {
            l(d4);
        }
        return new a(d4);
    }

    public final void m(@m8.h Function1<? super UserModel, Unit> function1) {
        this.f43437b = function1;
    }

    public final void n(@m8.h Function1<? super UserModel, Unit> function1) {
        this.f43438c = function1;
    }

    public final void o(boolean z9) {
        this.f43436a = z9;
    }

    @Override // androidx.recyclerview.widget.ListAdapter
    public void submitList(@m8.h List<UserModel> list) {
        if (Intrinsics.areEqual(list, getCurrentList())) {
            notifyDataSetChanged();
        } else {
            super.submitList(list);
        }
    }
}
