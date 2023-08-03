package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.emoji2.widget.EmojiTextView;
import com.im.freechat.shared.entities.message.Message;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014R\u001a\u0010\u0011\u001a\u00020\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010#\u001a\u0004\u0018\u00010\u001e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006("}, d2 = {"Lcom/im/freechat/ui/chat/holder/p0;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "Landroid/widget/TextView;", "u", "Landroid/widget/TextView;", "X", "()Landroid/widget/TextView;", "tvEditTag", "Landroidx/constraintlayout/widget/ConstraintLayout;", "v", "Landroidx/constraintlayout/widget/ConstraintLayout;", "z0", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "messageContent", "Landroidx/emoji2/widget/EmojiTextView;", "w", "Landroidx/emoji2/widget/EmojiTextView;", "A0", "()Landroidx/emoji2/widget/EmojiTextView;", "tvTextContent", "", y.b.f83919g, "Ljava/lang/Void;", "y0", "()Ljava/lang/Void;", "ivPreview", "Lf4/u0;", "binding", "<init>", "(Lf4/u0;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p0 extends BaseChatHolder {
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final f4.u0 f43034t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final TextView f43035u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final ConstraintLayout f43036v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final EmojiTextView f43037w;
    @m8.h

    /* renamed from: x  reason: collision with root package name */
    private final Void f43038x;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public p0(@m8.g f4.u0 r3) {
        /*
            r2 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r3.getRoot()
            java.lang.String r1 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 0
            r2.<init>(r0, r1)
            r2.f43034t = r3
            android.widget.TextView r0 = r3.f65780f
            java.lang.String r1 = "binding.tvTime"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.f43035u = r0
            androidx.constraintlayout.widget.ConstraintLayout r0 = r3.f65777c
            java.lang.String r1 = "binding.messageContent"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.f43036v = r0
            androidx.emoji2.widget.EmojiTextView r3 = r3.f65778d
            java.lang.String r0 = "binding.tvMessage"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            r2.f43037w = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.p0.<init>(f4.u0):void");
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: A0 */
    public EmojiTextView Y() {
        return this.f43037w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        v0(Y(), messageWrapper.i());
        TextView textView = this.f43034t.f65779e;
        textView.setText(com.im.freechat.extend.m.g(messageWrapper.i().getSendTime()));
        Intrinsics.checkNotNullExpressionValue(textView, "");
        textView.setVisibility(message == null || com.im.freechat.extend.m.f(message.getSendTime(), Long.valueOf(messageWrapper.i().getSendTime())) ? 0 : 8);
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ ImageView O() {
        return (ImageView) y0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView X() {
        return this.f43035u;
    }

    @m8.h
    public Void y0() {
        return this.f43038x;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: z0 */
    public ConstraintLayout U() {
        return this.f43036v;
    }
}
