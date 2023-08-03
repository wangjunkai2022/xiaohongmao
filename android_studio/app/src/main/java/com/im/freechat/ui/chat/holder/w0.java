package com.im.freechat.ui.chat.holder;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.VideoAttachment;
import java.io.File;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00105\u001a\u00020\n¢\u0006\u0004\b6\u00107J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J*\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u001c\u0010\u0011\u001a\u00020\u00042\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0016R\"\u0010\u0018\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8$X¤\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020!8$X¤\u0004¢\u0006\u0006\u001a\u0004\b%\u0010#R\u0014\u0010*\u001a\u00020'8$X¤\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020'8$X¤\u0004¢\u0006\u0006\u001a\u0004\b+\u0010)R\u0014\u00100\u001a\u00020-8$X¤\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00102\u001a\u00020!8$X¤\u0004¢\u0006\u0006\u001a\u0004\b1\u0010#¨\u00068"}, d2 = {"Lcom/im/freechat/ui/chat/holder/w0;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "", "A0", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "F", "", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "downloadInfos", "h0", "t", "I", "D0", "()I", "L0", "(I)V", k4.b.f84734a, "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "u", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "F0", "()Lcom/im/freechat/shared/entities/message/VideoAttachment;", "M0", "(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V", "message", "Landroid/widget/ImageView;", "H0", "()Landroid/widget/ImageView;", "playBtn", "E0", "downloadBtn", "Landroid/widget/TextView;", "K0", "()Landroid/widget/TextView;", "tvStatus", "J0", "tvDuration", "Landroid/widget/ProgressBar;", "G0", "()Landroid/widget/ProgressBar;", "pbLoading", "I0", "stopBtn", "Landroidx/viewbinding/ViewBinding;", "binding", "isGroup", "<init>", "(Landroidx/viewbinding/ViewBinding;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class w0 extends BaseChatHolder {

    /* renamed from: t  reason: collision with root package name */
    private int f43072t;

    /* renamed from: u  reason: collision with root package name */
    public VideoAttachment f43073u;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public w0(@m8.g androidx.viewbinding.ViewBinding r2, boolean r3) {
        /*
            r1 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            android.view.View r2 = r2.getRoot()
            java.lang.String r0 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.w0.<init>(androidx.viewbinding.ViewBinding, boolean):void");
    }

    private final void A0(final com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
        M0(com.im.freechat.extend.p.H(dVar.i()));
        this.f43072t = dVar.i().getChatId();
        ImageView O = O();
        if (O != null) {
            com.im.freechat.extend.m.u(com.im.freechat.extend.p.i(F0()), null, O, 0, 10, null);
            O.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.v0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    w0.B0(w0.this, dVar, view);
                }
            });
        }
        I0().setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                w0.C0(w0.this, view);
            }
        });
        J0().setText(com.im.freechat.extend.m.y(F0().getDuration()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(w0 this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> K = this$0.K();
        if (K != null) {
            K.invoke(messageWrapper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(w0 this$0, View view) {
        List<Long> listOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.im.freechat.utils.f N = this$0.N();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(this$0.F0().getMediaId()));
        N.i(listOf);
    }

    public final int D0() {
        return this.f43072t;
    }

    @m8.g
    protected abstract ImageView E0();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        A0(messageWrapper);
    }

    @m8.g
    public final VideoAttachment F0() {
        VideoAttachment videoAttachment = this.f43073u;
        if (videoAttachment != null) {
            return videoAttachment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("message");
        return null;
    }

    @m8.g
    protected abstract ProgressBar G0();

    @m8.g
    protected abstract ImageView H0();

    @m8.g
    protected abstract ImageView I0();

    @m8.g
    protected abstract TextView J0();

    @m8.g
    protected abstract TextView K0();

    public final void L0(int i4) {
        this.f43072t = i4;
    }

    public final void M0(@m8.g VideoAttachment videoAttachment) {
        Intrinsics.checkNotNullParameter(videoAttachment, "<set-?>");
        this.f43073u = videoAttachment;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void h0(@m8.g Map<Long, DownloadInfo> downloadInfos) {
        DownloadInfo downloadInfo;
        Intrinsics.checkNotNullParameter(downloadInfos, "downloadInfos");
        super.h0(downloadInfos);
        DownloadInfo downloadInfo2 = downloadInfos.get(Long.valueOf(F0().getMediaId()));
        String localPath = F0().getLocalPath();
        String str = "";
        if (localPath != null) {
            File file = new File(localPath);
            int i4 = this.f43072t;
            long mediaId = F0().getMediaId();
            String remoteUrl = F0().getRemoteUrl();
            if (remoteUrl == null) {
                remoteUrl = "";
            }
            downloadInfo = new DownloadInfo(i4, mediaId, -1L, localPath, remoteUrl, file.length(), file.length(), 8);
        } else {
            downloadInfo = null;
        }
        if (downloadInfo2 == null) {
            downloadInfo2 = downloadInfo;
        }
        if (downloadInfo2 != null && downloadInfo2.getStatus() != 16) {
            if (downloadInfo2.getStatus() == 8) {
                K0().setVisibility(0);
                I0().setVisibility(8);
                G0().setVisibility(8);
                E0().setVisibility(8);
                H0().setVisibility(F0().getPlaying() ? 4 : 0);
                K0().setText(x0.a(downloadInfo2.getDownloaded()));
                return;
            }
            K0().setVisibility(0);
            I0().setVisibility(0);
            G0().setVisibility(0);
            long downloaded = downloadInfo2.getDownloaded();
            long fileSize = downloadInfo2.getFileSize() <= 0 ? F0().getFileSize() : downloadInfo2.getFileSize();
            int i10 = (fileSize > 0L ? 1 : (fileSize == 0L ? 0 : -1));
            if (i10 > 0) {
                str = com.fasterxml.jackson.core.e.f13819f + x0.a(fileSize);
            }
            K0().setText(x0.a(downloaded) + str);
            if (i10 > 0) {
                G0().setMax(100);
                G0().setProgress((int) ((downloaded * 100) / fileSize));
            }
            E0().setVisibility(8);
            H0().setVisibility(8);
            return;
        }
        I0().setVisibility(8);
        E0().setVisibility(0);
        H0().setVisibility(8);
        G0().setVisibility(8);
        if (F0().getFileSize() <= 0) {
            K0().setVisibility(8);
            return;
        }
        K0().setVisibility(0);
        K0().setText(x0.a(F0().getFileSize()));
    }
}
