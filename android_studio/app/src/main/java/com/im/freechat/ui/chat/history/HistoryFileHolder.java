package com.im.freechat.ui.chat.history;

import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.message.FileAttachment;
import f4.j1;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.a;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u001c\u0010\b\u001a\u00020\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016R\u001b\u0010\u0011\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R&\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00030\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\""}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryFileHolder;", "Lcom/im/freechat/ui/chat/history/g;", "Lorg/koin/core/component/a;", "", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "downloadInfos", "", "l", "Lcom/im/freechat/ui/chat/history/a;", "attachmentWrapper", "b", "Lcom/im/freechat/utils/f;", "c", "Lkotlin/Lazy;", "j", "()Lcom/im/freechat/utils/f;", "downloadUtil", "Lcom/im/freechat/shared/entities/message/FileAttachment;", "d", "Lcom/im/freechat/shared/entities/message/FileAttachment;", ContextChain.TAG_INFRA, "()Lcom/im/freechat/shared/entities/message/FileAttachment;", "m", "(Lcom/im/freechat/shared/entities/message/FileAttachment;)V", "attachment", "Landroidx/lifecycle/Observer;", "e", "Landroidx/lifecycle/Observer;", "observer", "Lf4/j1;", "binding", "<init>", "(Lf4/j1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class HistoryFileHolder extends g implements org.koin.core.component.a {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final j1 f42841b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f42842c;

    /* renamed from: d  reason: collision with root package name */
    public FileAttachment f42843d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Observer<Map<Long, DownloadInfo>> f42844e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HistoryFileHolder(@m8.g f4.j1 r3) {
        /*
            r2 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r3.getRoot()
            java.lang.String r1 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0)
            r2.f42841b = r3
            d9.b r3 = d9.b.f62011a
            kotlin.LazyThreadSafetyMode r3 = r3.b()
            com.im.freechat.ui.chat.history.HistoryFileHolder$special$$inlined$inject$default$1 r0 = new com.im.freechat.ui.chat.history.HistoryFileHolder$special$$inlined$inject$default$1
            r1 = 0
            r0.<init>(r2, r1, r1)
            kotlin.Lazy r3 = kotlin.LazyKt.lazy(r3, r0)
            r2.f42842c = r3
            com.im.freechat.ui.chat.history.e r3 = new com.im.freechat.ui.chat.history.e
            r3.<init>()
            r2.f42844e = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.history.HistoryFileHolder.<init>(f4.j1):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(HistoryFileHolder this$0, a attachmentWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(attachmentWrapper, "$attachmentWrapper");
        Function1<a, Unit> c10 = this$0.c();
        if (c10 != null) {
            c10.invoke(attachmentWrapper);
        }
    }

    private final com.im.freechat.utils.f j() {
        return (com.im.freechat.utils.f) this.f42842c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void k(HistoryFileHolder this$0, Map map) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (map == null) {
            map = MapsKt__MapsKt.emptyMap();
        }
        this$0.l(map);
    }

    private final void l(Map<Long, DownloadInfo> map) {
        DownloadInfo downloadInfo = map.get(Long.valueOf(i().getMediaId()));
        int i4 = 0;
        if (downloadInfo != null && downloadInfo.getFileSize() != 0) {
            i4 = (int) ((downloadInfo.getDownloaded() * 100) / downloadInfo.getFileSize());
        }
        this.f42841b.f65594d.setProgress(i4);
    }

    @Override // com.im.freechat.ui.chat.history.g
    public void b(@m8.g final a attachmentWrapper) {
        Intrinsics.checkNotNullParameter(attachmentWrapper, "attachmentWrapper");
        if (attachmentWrapper.h() instanceof FileAttachment) {
            m((FileAttachment) attachmentWrapper.h());
            j1 j1Var = this.f42841b;
            j1Var.f65595e.setText(i().getFileName());
            TextView textView = j1Var.f65596f;
            textView.setText(com.im.freechat.extend.n.c(i().getFileSize()) + ", " + com.im.freechat.extend.f.o(attachmentWrapper.k()));
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.history.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HistoryFileHolder.h(HistoryFileHolder.this, attachmentWrapper, view);
                }
            });
            j().h().observeForever(this.f42844e);
        }
    }

    @Override // org.koin.core.component.a
    @m8.g
    public Koin getKoin() {
        return a.C0815a.a(this);
    }

    @m8.g
    public final FileAttachment i() {
        FileAttachment fileAttachment = this.f42843d;
        if (fileAttachment != null) {
            return fileAttachment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attachment");
        return null;
    }

    public final void m(@m8.g FileAttachment fileAttachment) {
        Intrinsics.checkNotNullParameter(fileAttachment, "<set-?>");
        this.f42843d = fileAttachment;
    }
}
