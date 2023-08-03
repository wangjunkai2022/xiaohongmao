package com.im.freechat.ui.chat.holder;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import b4.b;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.Message;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010%\u001a\u00020\b¢\u0006\u0004\b&\u0010'J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\u001c\u0010\u0010\u001a\u00020\n2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fH\u0016R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00198$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001bR\u0014\u0010\"\u001a\u00020\u001f8$X¤\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006("}, d2 = {"Lcom/im/freechat/ui/chat/holder/v;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "downloadInfos", "h0", "Lcom/im/freechat/shared/entities/message/FileAttachment;", "t", "Lcom/im/freechat/shared/entities/message/FileAttachment;", "A0", "()Lcom/im/freechat/shared/entities/message/FileAttachment;", "E0", "(Lcom/im/freechat/shared/entities/message/FileAttachment;)V", "message", "Landroid/widget/TextView;", "C0", "()Landroid/widget/TextView;", "tvFileName", "D0", "tvFileSize", "Landroid/widget/ProgressBar;", "B0", "()Landroid/widget/ProgressBar;", "pbLoaded", "Landroidx/viewbinding/ViewBinding;", "binding", "isGroup", "<init>", "(Landroidx/viewbinding/ViewBinding;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class v extends BaseChatHolder {

    /* renamed from: t  reason: collision with root package name */
    public FileAttachment f43063t;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public v(@m8.g androidx.viewbinding.ViewBinding r2, boolean r3) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.v.<init>(androidx.viewbinding.ViewBinding, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(v this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> K = this$0.K();
        if (K != null) {
            K.invoke(messageWrapper);
        }
    }

    @m8.g
    public final FileAttachment A0() {
        FileAttachment fileAttachment = this.f43063t;
        if (fileAttachment != null) {
            return fileAttachment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("message");
        return null;
    }

    @m8.g
    protected abstract ProgressBar B0();

    @m8.g
    protected abstract TextView C0();

    @m8.g
    protected abstract TextView D0();

    public final void E0(@m8.g FileAttachment fileAttachment) {
        Intrinsics.checkNotNullParameter(fileAttachment, "<set-?>");
        this.f43063t = fileAttachment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g final com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        E0(com.im.freechat.extend.p.E(messageWrapper.i()));
        int color = ContextCompat.getColor(M(), messageWrapper.i().getSender().isCurrentUser() ? b.f.V1 : b.f.Z1);
        C0().setText(A0().getFileName());
        C0().setTextColor(color);
        D0().setText(com.im.freechat.extend.n.c(A0().getFileSize()));
        D0().setTextColor(color);
        U().setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v.z0(v.this, messageWrapper, view);
            }
        });
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void h0(@m8.g Map<Long, DownloadInfo> downloadInfos) {
        Intrinsics.checkNotNullParameter(downloadInfos, "downloadInfos");
        super.h0(downloadInfos);
        if (A0().getLocalPath() != null) {
            B0().setProgress(100);
            return;
        }
        DownloadInfo downloadInfo = downloadInfos.get(Long.valueOf(A0().getMediaId()));
        int i4 = 0;
        if (downloadInfo != null && downloadInfo.getFileSize() != 0) {
            i4 = (int) ((downloadInfo.getDownloaded() * 100) / downloadInfo.getFileSize());
        }
        B0().setProgress(i4);
    }
}
