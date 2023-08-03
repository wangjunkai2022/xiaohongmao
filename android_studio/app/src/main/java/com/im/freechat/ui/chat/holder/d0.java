package com.im.freechat.ui.chat.holder;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.im.freechat.shared.entities.message.ImageAttachment;
import com.im.freechat.shared.entities.message.Message;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001:\u0001\u001fB\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001c\u001a\u00020\b¢\u0006\u0004\b\u001d\u0010\u001eJ*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\u0018\u0010\f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J(\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\bH\u0004R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014¨\u0006 "}, d2 = {"Lcom/im/freechat/ui/chat/holder/d0;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "z0", "Landroid/view/View;", "resizeView", "width", "height", "hasText", "B0", "t", "I", "maxWidth", "u", "maxHeight", "v", "minSize", "Landroidx/viewbinding/ViewBinding;", "binding", "isGroup", "<init>", "(Landroidx/viewbinding/ViewBinding;Z)V", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class d0 extends BaseChatHolder {

    /* renamed from: t  reason: collision with root package name */
    private final int f42981t;

    /* renamed from: u  reason: collision with root package name */
    private final int f42982u;

    /* renamed from: v  reason: collision with root package name */
    private final int f42983v;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageMessageHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/ui/chat/holder/d0$a;", "", "", "a", "b", "width", "height", "c", "", "toString", "hashCode", "other", "", "equals", "I", "f", "()I", "e", "<init>", "(II)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f42984a;

        /* renamed from: b  reason: collision with root package name */
        private final int f42985b;

        public a(int i4, int i10) {
            this.f42984a = i4;
            this.f42985b = i10;
        }

        public static /* synthetic */ a d(a aVar, int i4, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i4 = aVar.f42984a;
            }
            if ((i11 & 2) != 0) {
                i10 = aVar.f42985b;
            }
            return aVar.c(i4, i10);
        }

        public final int a() {
            return this.f42984a;
        }

        public final int b() {
            return this.f42985b;
        }

        @m8.g
        public final a c(int i4, int i10) {
            return new a(i4, i10);
        }

        public final int e() {
            return this.f42985b;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f42984a == aVar.f42984a && this.f42985b == aVar.f42985b;
            }
            return false;
        }

        public final int f() {
            return this.f42984a;
        }

        public int hashCode() {
            return (this.f42984a * 31) + this.f42985b;
        }

        @m8.g
        public String toString() {
            return "Size(width=" + this.f42984a + ", height=" + this.f42985b + ')';
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public d0(@m8.g androidx.viewbinding.ViewBinding r2, boolean r3) {
        /*
            r1 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            android.view.View r2 = r2.getRoot()
            java.lang.String r0 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2, r3)
            android.content.Context r2 = r1.M()
            android.content.res.Resources r2 = r2.getResources()
            int r3 = b4.b.g.f1425v3
            float r2 = r2.getDimension(r3)
            int r2 = (int) r2
            r1.f42981t = r2
            android.content.Context r2 = r1.M()
            java.lang.String r3 = "getContext()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            int r2 = com.im.freechat.extend.f.v(r2)
            int r2 = r2 * 2
            int r2 = r2 / 5
            r1.f42982u = r2
            android.content.Context r2 = r1.M()
            android.content.res.Resources r2 = r2.getResources()
            int r3 = b4.b.g.f1435w3
            float r2 = r2.getDimension(r3)
            int r2 = (int) r2
            r1.f42983v = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.d0.<init>(androidx.viewbinding.ViewBinding, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(d0 this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> K = this$0.K();
        if (K != null) {
            K.invoke(messageWrapper);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void B0(@m8.g View resizeView, int i4, int i10, boolean z9) {
        a aVar;
        a aVar2;
        Intrinsics.checkNotNullParameter(resizeView, "resizeView");
        float f10 = (i4 == 0 || i10 == 0) ? 1.0f : i4 / i10;
        if (z9) {
            aVar = new a(Math.min(this.f42981t, i4), Math.min(this.f42982u * ((int) Math.min(1 / f10, 1.0f)), i10));
        } else if (i10 > 0 && i4 > 0) {
            int i11 = this.f42982u;
            if (i10 <= i11 && i4 <= this.f42981t) {
                int i12 = this.f42983v;
                if (i10 >= i12 && i4 >= i12) {
                    aVar = new a(i4, i10);
                } else if (f10 < 1.0f) {
                    aVar2 = new a(i12, (int) (i12 / f10));
                } else {
                    aVar2 = new a((int) (i12 * f10), i12);
                }
            } else if (f10 < 1.0f) {
                aVar2 = new a(Math.min((int) (i11 * f10), this.f42981t), this.f42982u);
            } else {
                int i13 = this.f42981t;
                aVar2 = new a(i13, Math.min((int) (i13 / f10), i11));
            }
            aVar = aVar2;
        } else {
            int i14 = this.f42983v;
            aVar = new a(i14, i14);
        }
        int a10 = aVar.a();
        int b10 = aVar.b();
        ViewGroup.LayoutParams layoutParams = resizeView.getLayoutParams();
        layoutParams.width = a10;
        layoutParams.height = b10;
        resizeView.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        z0(messageWrapper, i4);
    }

    public void z0(@m8.g final com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, int i4) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        ImageAttachment G = com.im.freechat.extend.p.G(messageWrapper.i());
        boolean z9 = com.im.freechat.extend.p.o(messageWrapper.i()) || com.im.freechat.extend.p.x(messageWrapper.i()) || messageWrapper.i().getRepliedMessage() != null;
        ImageView O = O();
        if (O != null) {
            B0(O, G.getWidth(), G.getHeight(), z9);
            com.im.freechat.extend.m.u(com.im.freechat.extend.p.l(G), com.im.freechat.extend.p.h(G), O, 0, 8, null);
            if (messageWrapper.i().getMessageStatus().isSent()) {
                O.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.c0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        d0.A0(d0.this, messageWrapper, view);
                    }
                });
            } else {
                O.setOnClickListener(null);
            }
        }
    }
}
