package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(R\u001a\u0010\u0007\u001a\u00020\u00028\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\n\u001a\u00020\u00028\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u001a\u0010\u0010\u001a\u00020\u000b8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u00118\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u001bR\u001c\u0010\"\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010\u0019\u001a\u0004\b!\u0010\u001b¨\u0006)"}, d2 = {"Lcom/im/freechat/ui/chat/holder/x;", "Lcom/im/freechat/ui/chat/holder/v;", "Landroid/widget/TextView;", "v", "Landroid/widget/TextView;", "C0", "()Landroid/widget/TextView;", "tvFileName", "w", "D0", "tvFileSize", "Landroid/widget/ProgressBar;", y.b.f83919g, "Landroid/widget/ProgressBar;", "B0", "()Landroid/widget/ProgressBar;", "pbLoaded", "Landroidx/cardview/widget/CardView;", y.b.f83920h, "Landroidx/cardview/widget/CardView;", "G0", "()Landroidx/cardview/widget/CardView;", "messageContent", "", "z", "Ljava/lang/Void;", "I0", "()Ljava/lang/Void;", "tvTextContent", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "H0", "tvEditTag", "B", "F0", "ivPreview", "Lf4/j0;", "binding", "", "isGroup", "<init>", "(Lf4/j0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class x extends v {
    @m8.h
    private final Void A;
    @m8.h
    private final Void B;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final f4.h0 f43074u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final TextView f43075v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final TextView f43076w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ProgressBar f43077x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final CardView f43078y;
    @m8.h

    /* renamed from: z  reason: collision with root package name */
    private final Void f43079z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(@m8.g f4.j0 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        f4.h0 a10 = f4.h0.a(binding.getRoot());
        Intrinsics.checkNotNullExpressionValue(a10, "bind(binding.root)");
        this.f43074u = a10;
        TextView textView = a10.f65537d;
        Intrinsics.checkNotNullExpressionValue(textView, "contentBinding.tvFileName");
        this.f43075v = textView;
        TextView textView2 = a10.f65538e;
        Intrinsics.checkNotNullExpressionValue(textView2, "contentBinding.tvFileSize");
        this.f43076w = textView2;
        ProgressBar progressBar = a10.f65536c;
        Intrinsics.checkNotNullExpressionValue(progressBar, "contentBinding.pbLoaded");
        this.f43077x = progressBar;
        CardView cardView = binding.f65590c;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.messageContent");
        this.f43078y = cardView;
    }

    @Override // com.im.freechat.ui.chat.holder.v
    @m8.g
    protected ProgressBar B0() {
        return this.f43077x;
    }

    @Override // com.im.freechat.ui.chat.holder.v
    @m8.g
    protected TextView C0() {
        return this.f43075v;
    }

    @Override // com.im.freechat.ui.chat.holder.v
    @m8.g
    protected TextView D0() {
        return this.f43076w;
    }

    @m8.h
    public Void F0() {
        return this.B;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: G0 */
    public CardView U() {
        return this.f43078y;
    }

    @m8.h
    public Void H0() {
        return this.A;
    }

    @m8.h
    public Void I0() {
        return this.f43079z;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ ImageView O() {
        return (ImageView) F0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView X() {
        return (TextView) H0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView Y() {
        return (TextView) I0();
    }
}
