package com.im.freechat.ui.chatlist;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.extend.p;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Message;
import f4.b1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ChatAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b!\u0010\"J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R0\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/im/freechat/ui/chatlist/d;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/shared/entities/chat/Chat;", "Lcom/im/freechat/ui/chatlist/d$a;", "Landroid/view/ViewGroup;", "parent", "", "p1", "h", "holder", "position", "", "g", "Lkotlin/Function1;", "a", "Lkotlin/jvm/functions/Function1;", "d", "()Lkotlin/jvm/functions/Function1;", ContextChain.TAG_INFRA, "(Lkotlin/jvm/functions/Function1;)V", "clickCallback", "b", "f", "k", "longClickCallback", "", "c", "Z", "e", "()Z", "j", "(Z)V", "forProfileTab", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends ListAdapter<Chat, a> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super Chat, Unit> f43321a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super Chat, Unit> f43322b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f43323c;

    /* compiled from: ChatAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\nR0\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR0\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u0018\"\u0004\b\u001e\u0010\u001a¨\u0006$"}, d2 = {"Lcom/im/freechat/ui/chatlist/d$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "Landroid/content/Context;", "context", "", "k", "", "message", "", "isPlainMessage", "l", "h", "sender", "content", "g", "forProfileTab", "", "d", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", ContextChain.TAG_INFRA, "()Lkotlin/jvm/functions/Function1;", "m", "(Lkotlin/jvm/functions/Function1;)V", "itemClickCallback", "c", "j", "n", "itemLongClickCallback", "Lf4/b1;", "binding", "<init>", "(Lf4/b1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final b1 f43324a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private Function1<? super Chat, Unit> f43325b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private Function1<? super Chat, Unit> f43326c;

        /* compiled from: ChatAdapter.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* renamed from: com.im.freechat.ui.chatlist.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public /* synthetic */ class C0363a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Message.MessageStatus.values().length];
                iArr[Message.MessageStatus.HAVE_READ.ordinal()] = 1;
                iArr[Message.MessageStatus.SEND_COMPLETED.ordinal()] = 2;
                iArr[Message.MessageStatus.SENDING.ordinal()] = 3;
                iArr[Message.MessageStatus.SEND_FAILED.ordinal()] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChatAdapter.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "userId", "", "a", "(I)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function1<Integer, CharSequence> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Chat f43327a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Chat chat) {
                super(1);
                this.f43327a = chat;
            }

            @m8.g
            public final CharSequence a(int i4) {
                String displayName;
                UserModel userModel = this.f43327a.getContacts().get(Integer.valueOf(i4));
                return (userModel == null || (displayName = userModel.getDisplayName()) == null) ? String.valueOf(i4) : displayName;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
                return a(num.intValue());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g b1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43324a = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(a this$0, Chat chat, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(chat, "$chat");
            Function1<? super Chat, Unit> function1 = this$0.f43325b;
            if (function1 != null) {
                function1.invoke(chat);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean f(a this$0, Chat chat, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(chat, "$chat");
            Function1<? super Chat, Unit> function1 = this$0.f43326c;
            if (function1 != null) {
                function1.invoke(chat);
                return true;
            }
            return true;
        }

        private final CharSequence g(String str, String str2, boolean z9, Context context) {
            SpannableString spannableString = new SpannableString(str + ": " + str2);
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, b.f.A3)), 0, z9 ? str.length() + 1 : spannableString.length(), 17);
            return spannableString;
        }

        private final CharSequence h(String str, Context context) {
            String string = context.getString(b.s.f2445y3);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.string.draft_message)");
            SpannableString spannableString = new SpannableString(string + ' ' + str);
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, b.f.f1041a0)), 0, string.length(), 17);
            return spannableString;
        }

        private final CharSequence k(Chat chat, Context context) {
            String string = context.getString(b.s.A3);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.string.empty_chat_message)");
            Message lastChatMessage = chat.getLastChatMessage();
            if (lastChatMessage != null) {
                boolean A = p.A(lastChatMessage);
                String f10 = p.f(lastChatMessage, context, chat.getType() == Chat.Type.GROUP);
                return chat.getType() == Chat.Type.SINGLE ? l(f10, A, context) : g(lastChatMessage.getSender().getDisplayName(), f10, A, context);
            }
            return string;
        }

        private final CharSequence l(String str, boolean z9, Context context) {
            if (z9) {
                return str;
            }
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, b.f.A3)), 0, spannableString.length(), 17);
            return spannableString;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0139  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0165  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void d(@m8.g final com.im.freechat.shared.entities.chat.Chat r25, boolean r26) {
            /*
                Method dump skipped, instructions count: 670
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chatlist.d.a.d(com.im.freechat.shared.entities.chat.Chat, boolean):void");
        }

        @m8.h
        public final Function1<Chat, Unit> i() {
            return this.f43325b;
        }

        @m8.h
        public final Function1<Chat, Unit> j() {
            return this.f43326c;
        }

        public final void m(@m8.h Function1<? super Chat, Unit> function1) {
            this.f43325b = function1;
        }

        public final void n(@m8.h Function1<? super Chat, Unit> function1) {
            this.f43326c = function1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<Chat, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g Chat it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<Chat, Unit> d4 = d.this.d();
            if (d4 != null) {
                d4.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<Chat, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g Chat it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<Chat, Unit> f10 = d.this.f();
            if (f10 != null) {
                f10.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    public d() {
        super(new com.im.freechat.ui.chatlist.a());
    }

    @m8.h
    public final Function1<Chat, Unit> d() {
        return this.f43321a;
    }

    public final boolean e() {
        return this.f43323c;
    }

    @m8.h
    public final Function1<Chat, Unit> f() {
        return this.f43322b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Chat item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.d(item, this.f43323c);
        holder.m(new b());
        holder.n(new c());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: h */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        b1 d4 = b1.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        return new a(d4);
    }

    public final void i(@m8.h Function1<? super Chat, Unit> function1) {
        this.f43321a = function1;
    }

    public final void j(boolean z9) {
        this.f43323c = z9;
    }

    public final void k(@m8.h Function1<? super Chat, Unit> function1) {
        this.f43322b = function1;
    }
}
