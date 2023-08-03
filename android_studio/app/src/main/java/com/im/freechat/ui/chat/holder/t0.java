package com.im.freechat.ui.chat.holder;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import com.im.freechat.shared.entities.message.Message;
import f4.p1;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010;\u001a\u00020:\u0012\u0006\u0010<\u001a\u00020\b¢\u0006\u0004\b=\u0010>J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0016R\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000e8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000e8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0010\u001a\u0004\b\u0018\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u001a8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\"\u001a\u00020\u001a8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\u001eR\u001a\u0010(\u001a\u00020#8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001a\u0010+\u001a\u00020\u000e8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b)\u0010\u0010\u001a\u0004\b*\u0010\u0012R\u001a\u00101\u001a\u00020,8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001c\u00106\u001a\u0004\u0018\u0001028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u00103\u001a\u0004\b4\u00105R\u001c\u00109\u001a\u0004\u0018\u0001028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b7\u00103\u001a\u0004\b8\u00105¨\u0006?"}, d2 = {"Lcom/im/freechat/ui/chat/holder/t0;", "Lcom/im/freechat/ui/chat/holder/w0;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "message", "I", "Landroid/widget/ImageView;", y.b.f83919g, "Landroid/widget/ImageView;", "O", "()Landroid/widget/ImageView;", "ivPreview", y.b.f83920h, "H0", "playBtn", "z", "E0", "downloadBtn", "Landroid/widget/TextView;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Landroid/widget/TextView;", "K0", "()Landroid/widget/TextView;", "tvStatus", "B", "J0", "tvDuration", "Landroid/widget/ProgressBar;", "C", "Landroid/widget/ProgressBar;", "G0", "()Landroid/widget/ProgressBar;", "pbLoading", "D", "I0", "stopBtn", "Landroidx/constraintlayout/widget/ConstraintLayout;", ExifInterface.LONGITUDE_EAST, "Landroidx/constraintlayout/widget/ConstraintLayout;", "N0", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "messageContent", "", "Ljava/lang/Void;", "P0", "()Ljava/lang/Void;", "tvTextContent", "G", "O0", "tvEditTag", "Lf4/p1;", "binding", "isGroup", "<init>", "(Lf4/p1;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class t0 extends w0 {
    @m8.g
    private final TextView A;
    @m8.g
    private final TextView B;
    @m8.g
    private final ProgressBar C;
    @m8.g
    private final ImageView D;
    @m8.g
    private final ConstraintLayout E;
    @m8.h
    private final Void F;
    @m8.h
    private final Void G;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final p1 f43055v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final f4.y0 f43056w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ImageView f43057x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final ImageView f43058y;
    @m8.g

    /* renamed from: z  reason: collision with root package name */
    private final ImageView f43059z;

    /* compiled from: VideoMessageHolder.kt */
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
    public t0(@m8.g p1 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.f43055v = binding;
        f4.y0 a10 = f4.y0.a(binding.getRoot());
        Intrinsics.checkNotNullExpressionValue(a10, "bind(binding.root)");
        this.f43056w = a10;
        ImageView imageView = a10.f65857c;
        Intrinsics.checkNotNullExpressionValue(imageView, "contentBinding.ivPre");
        this.f43057x = imageView;
        ImageView imageView2 = a10.f65859e;
        Intrinsics.checkNotNullExpressionValue(imageView2, "contentBinding.playBtn");
        this.f43058y = imageView2;
        ImageView imageView3 = a10.f65856b;
        Intrinsics.checkNotNullExpressionValue(imageView3, "contentBinding.downloadBtn");
        this.f43059z = imageView3;
        TextView textView = a10.f65863i;
        Intrinsics.checkNotNullExpressionValue(textView, "contentBinding.tvStatus");
        this.A = textView;
        TextView textView2 = a10.f65862h;
        Intrinsics.checkNotNullExpressionValue(textView2, "contentBinding.tvDuration");
        this.B = textView2;
        ProgressBar progressBar = a10.f65858d;
        Intrinsics.checkNotNullExpressionValue(progressBar, "contentBinding.pbLoaded");
        this.C = progressBar;
        ImageView imageView4 = a10.f65860f;
        Intrinsics.checkNotNullExpressionValue(imageView4, "contentBinding.stopBtn");
        this.D = imageView4;
        ConstraintLayout constraintLayout = binding.f65695d;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.container");
        this.E = constraintLayout;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ImageView E0() {
        return this.f43059z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.w0, com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        FrameLayout root = this.f43055v.f65694c.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.cbSelect.root");
        root.setVisibility(z9 ? 0 : 8);
        this.f43055v.f65694c.f65708b.setChecked(messageWrapper.j());
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ProgressBar G0() {
        return this.C;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ImageView H0() {
        return this.f43058y;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void I(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "message");
        p1 p1Var = this.f43055v;
        int i4 = a.$EnumSwitchMapping$0[message.getMessageStatus().ordinal()];
        if (i4 == 1) {
            p1Var.f65696e.setVisibility(0);
            p1Var.f65693b.setVisibility(8);
        } else if (i4 != 2) {
            p1Var.f65696e.setVisibility(8);
            p1Var.f65693b.setVisibility(8);
        } else {
            p1Var.f65696e.setVisibility(8);
            p1Var.f65693b.setVisibility(0);
        }
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ImageView I0() {
        return this.D;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected TextView J0() {
        return this.B;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected TextView K0() {
        return this.A;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: N0 */
    public ConstraintLayout U() {
        return this.E;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public ImageView O() {
        return this.f43057x;
    }

    @m8.h
    public Void O0() {
        return this.G;
    }

    @m8.h
    public Void P0() {
        return this.F;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView X() {
        return (TextView) O0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView Y() {
        return (TextView) P0();
    }
}
