package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.ui.widget.TextMessageView;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010&\u001a\u00020\b¢\u0006\u0004\b'\u0010(J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014R\u001a\u0010\u0011\u001a\u00020\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010#\u001a\u0004\u0018\u00010\u001e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006)"}, d2 = {"Lcom/im/freechat/ui/chat/holder/s0;", "Lcom/im/freechat/ui/chat/holder/q0;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "Landroid/widget/TextView;", "u", "Landroid/widget/TextView;", "X", "()Landroid/widget/TextView;", "tvEditTag", "Landroidx/constraintlayout/widget/ConstraintLayout;", "v", "Landroidx/constraintlayout/widget/ConstraintLayout;", "A0", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "messageContent", "Lcom/im/freechat/ui/widget/TextMessageView;", "w", "Lcom/im/freechat/ui/widget/TextMessageView;", "B0", "()Lcom/im/freechat/ui/widget/TextMessageView;", "tvTextContent", "", y.b.f83919g, "Ljava/lang/Void;", "z0", "()Ljava/lang/Void;", "ivPreview", "Lf4/w0;", "binding", "isGroup", "<init>", "(Lf4/w0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class s0 extends q0 {
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final f4.w0 f43049t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final TextView f43050u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final ConstraintLayout f43051v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final TextMessageView f43052w;
    @m8.h

    /* renamed from: x  reason: collision with root package name */
    private final Void f43053x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(@m8.g f4.w0 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.f43049t = binding;
        TextView textView = binding.f65831d;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvEdited");
        this.f43050u = textView;
        ConstraintLayout constraintLayout = binding.f65830c;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.messageContent");
        this.f43051v = constraintLayout;
        TextMessageView textMessageView = binding.f65832e;
        Intrinsics.checkNotNullExpressionValue(textMessageView, "binding.tvMessage");
        this.f43052w = textMessageView;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: A0 */
    public ConstraintLayout U() {
        return this.f43051v;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: B0 */
    public TextMessageView Y() {
        return this.f43052w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.q0, com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        TextView textView = this.f43049t.f65833f;
        Message i10 = messageWrapper.i();
        Intrinsics.checkNotNullExpressionValue(textView, "");
        textView.setVisibility(d0() && !com.im.freechat.extend.p.x(i10) ? 0 : 8);
        textView.setText(i10.getSender().getDisplayName());
        com.im.freechat.utils.v.d(textView, com.im.freechat.extend.m.m(i10.getSender().getManagementRole()), false, false, true, false, 22, null);
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ ImageView O() {
        return (ImageView) z0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView X() {
        return this.f43050u;
    }

    @m8.h
    public Void z0() {
        return this.f43053x;
    }
}
