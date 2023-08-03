package com.im.freechat.ui.chat.message_gallery;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.message.VideoAttachment;
import f4.g1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: GalleryPagerAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b'\u0010(J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R6\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R0\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR*\u0010&\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/c;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/ui/chat/history/a;", "Lcom/im/freechat/ui/chat/message_gallery/c$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "h", "holder", "position", "", "g", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "a", "Lkotlin/jvm/functions/Function2;", "e", "()Lkotlin/jvm/functions/Function2;", "j", "(Lkotlin/jvm/functions/Function2;)V", "playListener", "Lkotlin/Function1;", "Landroid/widget/FrameLayout;", "b", "Lkotlin/jvm/functions/Function1;", "f", "()Lkotlin/jvm/functions/Function1;", "k", "(Lkotlin/jvm/functions/Function1;)V", "playerViewAttachListener", "value", "c", "I", "d", "()I", ContextChain.TAG_INFRA, "(I)V", "currentlyPlaying", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends ListAdapter<com.im.freechat.ui.chat.history.a, a> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function2<? super VideoAttachment, ? super Integer, Unit> f43142a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super FrameLayout, Unit> f43143b;

    /* renamed from: c  reason: collision with root package name */
    private int f43144c;

    /* compiled from: GalleryPagerAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J \u0010\u0007\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002J\u001a\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\bJ\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004R*\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0013¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "", "", "l", "e", "Lkotlin/Function1;", "Landroid/widget/FrameLayout;", "f", "Lcom/im/freechat/ui/chat/history/a;", "item", "position", "currentlyPlaying", "c", "b", "Lkotlin/jvm/functions/Function2;", "playListener", "Lkotlin/jvm/functions/Function1;", "playerViewAttachListener", "Lf4/g1;", "binding", "<init>", "(Lf4/g1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final g1 f43145a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private Function2<? super VideoAttachment, ? super Integer, Unit> f43146b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private Function1<? super FrameLayout, Unit> f43147c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g g1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43145a = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(a this$0, com.im.freechat.ui.chat.history.a item, int i4, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(item, "$item");
            Function2<? super VideoAttachment, ? super Integer, Unit> function2 = this$0.f43146b;
            if (function2 != null) {
                function2.invoke(item.h(), Integer.valueOf(i4));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x0100, code lost:
            if ((r1.length() > 0) == true) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void c(@m8.g final com.im.freechat.ui.chat.history.a r20, final int r21, int r22) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.message_gallery.c.a.c(com.im.freechat.ui.chat.history.a, int, int):void");
        }

        public final void e(@m8.g Function2<? super VideoAttachment, ? super Integer, Unit> l10) {
            Intrinsics.checkNotNullParameter(l10, "l");
            this.f43146b = l10;
        }

        public final void f(@m8.g Function1<? super FrameLayout, Unit> l10) {
            Intrinsics.checkNotNullParameter(l10, "l");
            this.f43147c = l10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GalleryPagerAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/im/freechat/shared/entities/message/VideoAttachment;", "video", "", ContextChain.TAG_INFRA, "", "a", "(Lcom/im/freechat/shared/entities/message/VideoAttachment;I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<VideoAttachment, Integer, Unit> {
        b() {
            super(2);
        }

        public final void a(@m8.g VideoAttachment video, int i4) {
            Intrinsics.checkNotNullParameter(video, "video");
            Function2<VideoAttachment, Integer, Unit> e4 = c.this.e();
            if (e4 != null) {
                e4.invoke(video, Integer.valueOf(i4));
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(VideoAttachment videoAttachment, Integer num) {
            a(videoAttachment, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GalleryPagerAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/widget/FrameLayout;", "it", "", "a", "(Landroid/widget/FrameLayout;)V"}, k = 3, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.ui.chat.message_gallery.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0355c extends Lambda implements Function1<FrameLayout, Unit> {
        C0355c() {
            super(1);
        }

        public final void a(@m8.g FrameLayout it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<FrameLayout, Unit> f10 = c.this.f();
            if (f10 != null) {
                f10.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FrameLayout frameLayout) {
            a(frameLayout);
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
            com.im.freechat.ui.chat.message_gallery.d$a r0 = com.im.freechat.ui.chat.message_gallery.d.a()
            r1.<init>(r0)
            r0 = -1
            r1.f43144c = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.message_gallery.c.<init>():void");
    }

    public final int d() {
        return this.f43144c;
    }

    @m8.h
    public final Function2<VideoAttachment, Integer, Unit> e() {
        return this.f43142a;
    }

    @m8.h
    public final Function1<FrameLayout, Unit> f() {
        return this.f43143b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.e(new b());
        holder.f(new C0355c());
        com.im.freechat.ui.chat.history.a item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.c(item, i4, this.f43144c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: h */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        g1 d4 = g1.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.f….context), parent, false)");
        return new a(d4);
    }

    public final void i(int i4) {
        this.f43144c = i4;
        notifyDataSetChanged();
    }

    public final void j(@m8.h Function2<? super VideoAttachment, ? super Integer, Unit> function2) {
        this.f43142a = function2;
    }

    public final void k(@m8.h Function1<? super FrameLayout, Unit> function1) {
        this.f43143b = function1;
    }
}
