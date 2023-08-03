package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.GifAttachment;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0017\u001a\u0004\b\u001c\u0010\u0019¨\u0006$"}, d2 = {"Lcom/im/freechat/ui/chat/holder/z;", "Lcom/im/freechat/ui/chat/holder/d0;", "Lcom/im/freechat/ui/chat/holder/j0;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "", "position", "", "z0", "Landroidx/constraintlayout/widget/ConstraintLayout;", "w", "Landroidx/constraintlayout/widget/ConstraintLayout;", "C0", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "messageContent", "Landroid/widget/ImageView;", y.b.f83919g, "Landroid/widget/ImageView;", "O", "()Landroid/widget/ImageView;", "ivPreview", "", y.b.f83920h, "Ljava/lang/Void;", "E0", "()Ljava/lang/Void;", "tvTextContent", "z", "D0", "tvEditTag", "Lf4/s0;", "binding", "", "isGroup", "<init>", "(Lf4/s0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class z extends d0 implements j0 {
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final ConstraintLayout f43089w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ImageView f43090x;
    @m8.h

    /* renamed from: y  reason: collision with root package name */
    private final Void f43091y;
    @m8.h

    /* renamed from: z  reason: collision with root package name */
    private final Void f43092z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(@m8.g f4.s0 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        ConstraintLayout constraintLayout = binding.f65748d;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.messageContent");
        this.f43089w = constraintLayout;
        ImageView imageView = binding.f65747c;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivPre");
        this.f43090x = imageView;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: C0 */
    public ConstraintLayout U() {
        return this.f43089w;
    }

    @m8.h
    public Void D0() {
        return this.f43092z;
    }

    @m8.h
    public Void E0() {
        return this.f43091y;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public ImageView O() {
        return this.f43090x;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView X() {
        return (TextView) D0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView Y() {
        return (TextView) E0();
    }

    @Override // com.im.freechat.ui.chat.holder.d0
    public void z0(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, int i4) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        boolean z9 = com.im.freechat.extend.p.o(messageWrapper.i()) || com.im.freechat.extend.p.x(messageWrapper.i()) || messageWrapper.i().getRepliedMessage() != null;
        GifAttachment n9 = com.im.freechat.extend.p.n(messageWrapper.i());
        if (n9 != null) {
            B0(O(), n9.getWidth(), n9.getHeight(), z9);
            com.im.freechat.extend.m.q(n9.getRemoteUrl(), O(), 0, 4, null);
        }
        FileAttachment c10 = com.im.freechat.extend.p.c(messageWrapper.i());
        if (c10 != null) {
            B0(O(), 0, 0, z9);
            com.im.freechat.extend.m.q(com.im.freechat.extend.p.k(c10), O(), 0, 4, null);
        }
    }
}
