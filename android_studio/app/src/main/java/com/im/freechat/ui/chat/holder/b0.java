package com.im.freechat.ui.chat.holder;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import com.im.freechat.shared.entities.message.Message;
import f4.o1;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010%\u001a\u00020\b¢\u0006\u0004\b&\u0010'J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0016R\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\"\u001a\u0004\u0018\u00010\u001a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\u001e¨\u0006("}, d2 = {"Lcom/im/freechat/ui/chat/holder/b0;", "Lcom/im/freechat/ui/chat/holder/d0;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "message", "I", "Landroidx/constraintlayout/widget/ConstraintLayout;", y.b.f83919g, "Landroidx/constraintlayout/widget/ConstraintLayout;", "C0", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "messageContent", "Landroid/widget/ImageView;", y.b.f83920h, "Landroid/widget/ImageView;", "O", "()Landroid/widget/ImageView;", "ivPreview", "", "z", "Ljava/lang/Void;", "E0", "()Ljava/lang/Void;", "tvTextContent", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "D0", "tvEditTag", "Lf4/o1;", "binding", "isGroup", "<init>", "(Lf4/o1;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b0 extends d0 {
    @m8.h
    private final Void A;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final o1 f42963w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ConstraintLayout f42964x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final ImageView f42965y;
    @m8.h

    /* renamed from: z  reason: collision with root package name */
    private final Void f42966z;

    /* compiled from: ImageMessageHolder.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Message.MessageStatus.values().length];
            iArr[Message.MessageStatus.SENDING.ordinal()] = 1;
            iArr[Message.MessageStatus.SEND_FAILED.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(@m8.g o1 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.f42963w = binding;
        ConstraintLayout constraintLayout = binding.f65676d;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.container");
        this.f42964x = constraintLayout;
        ImageView imageView = binding.f65677e;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivPre");
        this.f42965y = imageView;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: C0 */
    public ConstraintLayout U() {
        return this.f42964x;
    }

    @m8.h
    public Void D0() {
        return this.A;
    }

    @m8.h
    public Void E0() {
        return this.f42966z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.d0, com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        FrameLayout root = this.f42963w.f65675c.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.cbSelect.root");
        root.setVisibility(z9 ? 0 : 8);
        this.f42963w.f65675c.f65708b.setChecked(messageWrapper.j());
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void I(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "message");
        o1 o1Var = this.f42963w;
        int i4 = a.$EnumSwitchMapping$0[message.getMessageStatus().ordinal()];
        if (i4 == 1) {
            o1Var.f65678f.setVisibility(0);
            o1Var.f65674b.setVisibility(8);
        } else if (i4 != 2) {
            o1Var.f65678f.setVisibility(8);
            o1Var.f65674b.setVisibility(8);
        } else {
            o1Var.f65678f.setVisibility(8);
            o1Var.f65674b.setVisibility(0);
        }
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public ImageView O() {
        return this.f42965y;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView X() {
        return (TextView) D0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView Y() {
        return (TextView) E0();
    }
}
