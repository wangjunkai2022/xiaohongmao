package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102R\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000b\u001a\u00020\u00038\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\t\u0010\u0005\u001a\u0004\b\n\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\u00038\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\f\u0010\u0005\u001a\u0004\b\r\u0010\u0007R\u001a\u0010\u0014\u001a\u00020\u000f8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u000f8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0016\u0010\u0013R\u001a\u0010\u001d\u001a\u00020\u00188\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010 \u001a\u00020\u00038\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u0005\u001a\u0004\b\u001f\u0010\u0007R\u001a\u0010&\u001a\u00020!8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001a\u0010)\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b'\u0010\u0011\u001a\u0004\b(\u0010\u0013R\u001a\u0010,\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b*\u0010\u0011\u001a\u0004\b+\u0010\u0013¨\u00063"}, d2 = {"Lcom/im/freechat/ui/chat/holder/y0;", "Lcom/im/freechat/ui/chat/holder/w0;", "Lcom/im/freechat/ui/chat/holder/j0;", "Landroid/widget/ImageView;", "w", "Landroid/widget/ImageView;", "O", "()Landroid/widget/ImageView;", "ivPreview", y.b.f83919g, "H0", "playBtn", y.b.f83920h, "E0", "downloadBtn", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "K0", "()Landroid/widget/TextView;", "tvStatus", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "J0", "tvDuration", "Landroid/widget/ProgressBar;", "B", "Landroid/widget/ProgressBar;", "G0", "()Landroid/widget/ProgressBar;", "pbLoading", "C", "I0", "stopBtn", "Landroidx/cardview/widget/CardView;", "D", "Landroidx/cardview/widget/CardView;", "N0", "()Landroidx/cardview/widget/CardView;", "messageContent", ExifInterface.LONGITUDE_EAST, "Y", "tvTextContent", "F", "X", "tvEditTag", "Lf4/z0;", "binding", "", "isGroup", "<init>", "(Lf4/z0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class y0 extends w0 implements j0 {
    @m8.g
    private final TextView A;
    @m8.g
    private final ProgressBar B;
    @m8.g
    private final ImageView C;
    @m8.g
    private final CardView D;
    @m8.g
    private final TextView E;
    @m8.g
    private final TextView F;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final f4.y0 f43084v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final ImageView f43085w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ImageView f43086x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final ImageView f43087y;
    @m8.g

    /* renamed from: z  reason: collision with root package name */
    private final TextView f43088z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(@m8.g f4.z0 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        f4.y0 a10 = f4.y0.a(binding.getRoot());
        Intrinsics.checkNotNullExpressionValue(a10, "bind(binding.root)");
        this.f43084v = a10;
        ImageView imageView = a10.f65857c;
        Intrinsics.checkNotNullExpressionValue(imageView, "contentBinding.ivPre");
        this.f43085w = imageView;
        ImageView imageView2 = a10.f65859e;
        Intrinsics.checkNotNullExpressionValue(imageView2, "contentBinding.playBtn");
        this.f43086x = imageView2;
        ImageView imageView3 = a10.f65856b;
        Intrinsics.checkNotNullExpressionValue(imageView3, "contentBinding.downloadBtn");
        this.f43087y = imageView3;
        TextView textView = a10.f65863i;
        Intrinsics.checkNotNullExpressionValue(textView, "contentBinding.tvStatus");
        this.f43088z = textView;
        TextView textView2 = a10.f65862h;
        Intrinsics.checkNotNullExpressionValue(textView2, "contentBinding.tvDuration");
        this.A = textView2;
        ProgressBar progressBar = a10.f65858d;
        Intrinsics.checkNotNullExpressionValue(progressBar, "contentBinding.pbLoaded");
        this.B = progressBar;
        ImageView imageView4 = a10.f65860f;
        Intrinsics.checkNotNullExpressionValue(imageView4, "contentBinding.stopBtn");
        this.C = imageView4;
        CardView cardView = binding.f65878c;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.messageContent");
        this.D = cardView;
        TextView textView3 = a10.f65861g;
        Intrinsics.checkNotNullExpressionValue(textView3, "contentBinding.tvDesc");
        this.E = textView3;
        TextView textView4 = binding.f65879d;
        Intrinsics.checkNotNullExpressionValue(textView4, "binding.tvEdited");
        this.F = textView4;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ImageView E0() {
        return this.f43087y;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ProgressBar G0() {
        return this.B;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ImageView H0() {
        return this.f43086x;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected ImageView I0() {
        return this.C;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected TextView J0() {
        return this.A;
    }

    @Override // com.im.freechat.ui.chat.holder.w0
    @m8.g
    protected TextView K0() {
        return this.f43088z;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: N0 */
    public CardView U() {
        return this.D;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public ImageView O() {
        return this.f43085w;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView X() {
        return this.F;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView Y() {
        return this.E;
    }
}
