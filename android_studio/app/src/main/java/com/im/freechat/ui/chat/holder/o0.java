package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import com.im.freechat.shared.entities.message.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ServiceMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010 \u001a\u00020\b¢\u0006\u0004\b!\u0010\"J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014R\u001a\u0010\u0011\u001a\u00020\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0014\u001a\u0004\b\u001c\u0010\u0016¨\u0006#"}, d2 = {"Lcom/im/freechat/ui/chat/holder/o0;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "Landroid/widget/TextView;", "t", "Landroid/widget/TextView;", "z0", "()Landroid/widget/TextView;", "messageContent", "", "u", "Ljava/lang/Void;", "B0", "()Ljava/lang/Void;", "tvTextContent", "v", "A0", "tvEditTag", "w", "y0", "ivPreview", "Lf4/r0;", "binding", "isGroup", "<init>", "(Lf4/r0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class o0 extends BaseChatHolder {
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final TextView f43028t;
    @m8.h

    /* renamed from: u  reason: collision with root package name */
    private final Void f43029u;
    @m8.h

    /* renamed from: v  reason: collision with root package name */
    private final Void f43030v;
    @m8.h

    /* renamed from: w  reason: collision with root package name */
    private final Void f43031w;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public o0(@m8.g f4.r0 r3, boolean r4) {
        /*
            r2 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            android.widget.FrameLayout r0 = r3.getRoot()
            java.lang.String r1 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0, r4)
            android.widget.TextView r3 = r3.f65723b
            java.lang.String r4 = "binding.tvMessage"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r2.f43028t = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.o0.<init>(f4.r0, boolean):void");
    }

    @m8.h
    public Void A0() {
        return this.f43030v;
    }

    @m8.h
    public Void B0() {
        return this.f43029u;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        U().setText(messageWrapper.i().getContent());
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ ImageView O() {
        return (ImageView) y0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView X() {
        return (TextView) A0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView Y() {
        return (TextView) B0();
    }

    @m8.h
    public Void y0() {
        return this.f43031w;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: z0 */
    public TextView U() {
        return this.f43028t;
    }
}
