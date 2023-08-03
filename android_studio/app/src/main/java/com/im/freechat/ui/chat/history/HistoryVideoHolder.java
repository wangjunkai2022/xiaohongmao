package com.im.freechat.ui.chat.history;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.message.VideoAttachment;
import com.im.freechat.ui.chat.holder.x0;
import f4.m1;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.a;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u001c\u0010\b\u001a\u00020\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016R\u001b\u0010\u0011\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R&\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00030\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\""}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;", "Lcom/im/freechat/ui/chat/history/g;", "Lorg/koin/core/component/a;", "", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "downloadInfos", "", "n", "Lcom/im/freechat/ui/chat/history/a;", "attachmentWrapper", "b", "Lcom/im/freechat/utils/f;", "c", "Lkotlin/Lazy;", "l", "()Lcom/im/freechat/utils/f;", "downloadUtil", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "d", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "k", "()Lcom/im/freechat/shared/entities/message/VideoAttachment;", "o", "(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V", "attachment", "Landroidx/lifecycle/Observer;", "e", "Landroidx/lifecycle/Observer;", "observer", "Lf4/m1;", "binding", "<init>", "(Lf4/m1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class HistoryVideoHolder extends g implements org.koin.core.component.a {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m1 f42877b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f42878c;

    /* renamed from: d  reason: collision with root package name */
    public VideoAttachment f42879d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Observer<Map<Long, DownloadInfo>> f42880e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HistoryVideoHolder(@m8.g f4.m1 r3) {
        /*
            r2 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r3.getRoot()
            java.lang.String r1 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0)
            r2.f42877b = r3
            d9.b r3 = d9.b.f62011a
            kotlin.LazyThreadSafetyMode r3 = r3.b()
            com.im.freechat.ui.chat.history.HistoryVideoHolder$special$$inlined$inject$default$1 r0 = new com.im.freechat.ui.chat.history.HistoryVideoHolder$special$$inlined$inject$default$1
            r1 = 0
            r0.<init>(r2, r1, r1)
            kotlin.Lazy r3 = kotlin.LazyKt.lazy(r3, r0)
            r2.f42878c = r3
            com.im.freechat.ui.chat.history.s r3 = new com.im.freechat.ui.chat.history.s
            r3.<init>()
            r2.f42880e = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.history.HistoryVideoHolder.<init>(f4.m1):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(HistoryVideoHolder this$0, a attachmentWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(attachmentWrapper, "$attachmentWrapper");
        Function1<a, Unit> c10 = this$0.c();
        if (c10 != null) {
            c10.invoke(attachmentWrapper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(HistoryVideoHolder this$0, View view) {
        List<Long> listOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.im.freechat.utils.f l10 = this$0.l();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(this$0.k().getMediaId()));
        l10.i(listOf);
    }

    private final com.im.freechat.utils.f l() {
        return (com.im.freechat.utils.f) this.f42878c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void m(HistoryVideoHolder this$0, Map map) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (map == null) {
            map = MapsKt__MapsKt.emptyMap();
        }
        this$0.n(map);
    }

    private final void n(Map<Long, DownloadInfo> map) {
        String str;
        DownloadInfo downloadInfo = map.get(Long.valueOf(k().getMediaId()));
        if (downloadInfo != null && downloadInfo.getStatus() != 16) {
            if (downloadInfo.getStatus() == 8) {
                TextView textView = this.f42877b.f65648g;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.tvStatus");
                textView.setVisibility(0);
                ImageView imageView = this.f42877b.f65646e;
                Intrinsics.checkNotNullExpressionValue(imageView, "binding.stopBtn");
                imageView.setVisibility(8);
                ProgressBar progressBar = this.f42877b.f65645d;
                Intrinsics.checkNotNullExpressionValue(progressBar, "binding.pbLoaded");
                progressBar.setVisibility(8);
                this.f42877b.f65648g.setText(x0.a(downloadInfo.getDownloaded()));
                return;
            }
            TextView textView2 = this.f42877b.f65648g;
            Intrinsics.checkNotNullExpressionValue(textView2, "binding.tvStatus");
            textView2.setVisibility(0);
            ImageView imageView2 = this.f42877b.f65646e;
            Intrinsics.checkNotNullExpressionValue(imageView2, "binding.stopBtn");
            imageView2.setVisibility(0);
            ProgressBar progressBar2 = this.f42877b.f65645d;
            Intrinsics.checkNotNullExpressionValue(progressBar2, "binding.pbLoaded");
            progressBar2.setVisibility(0);
            long downloaded = downloadInfo.getDownloaded();
            long fileSize = downloadInfo.getFileSize() <= 0 ? k().getFileSize() : downloadInfo.getFileSize();
            int i4 = (fileSize > 0L ? 1 : (fileSize == 0L ? 0 : -1));
            if (i4 <= 0) {
                str = "";
            } else {
                str = com.fasterxml.jackson.core.e.f13819f + x0.a(fileSize);
            }
            this.f42877b.f65648g.setText(x0.a(downloaded) + str);
            if (i4 > 0) {
                this.f42877b.f65645d.setMax(100);
                this.f42877b.f65645d.setProgress((int) ((downloaded * 100) / fileSize));
                return;
            }
            return;
        }
        ImageView imageView3 = this.f42877b.f65646e;
        Intrinsics.checkNotNullExpressionValue(imageView3, "binding.stopBtn");
        imageView3.setVisibility(8);
        ProgressBar progressBar3 = this.f42877b.f65645d;
        Intrinsics.checkNotNullExpressionValue(progressBar3, "binding.pbLoaded");
        progressBar3.setVisibility(8);
        if (k().getFileSize() <= 0) {
            TextView textView3 = this.f42877b.f65648g;
            Intrinsics.checkNotNullExpressionValue(textView3, "binding.tvStatus");
            textView3.setVisibility(8);
            return;
        }
        TextView textView4 = this.f42877b.f65648g;
        Intrinsics.checkNotNullExpressionValue(textView4, "binding.tvStatus");
        textView4.setVisibility(0);
        this.f42877b.f65648g.setText(x0.a(k().getFileSize()));
    }

    @Override // com.im.freechat.ui.chat.history.g
    public void b(@m8.g final a attachmentWrapper) {
        Intrinsics.checkNotNullParameter(attachmentWrapper, "attachmentWrapper");
        if (attachmentWrapper.h() instanceof VideoAttachment) {
            o((VideoAttachment) attachmentWrapper.h());
            ImageView imageView = this.f42877b.f65644c;
            Intrinsics.checkNotNullExpressionValue(imageView, "");
            com.im.freechat.extend.m.s(imageView, com.im.freechat.extend.p.i(k()), 0.4f, true, 0, 8, null);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.history.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HistoryVideoHolder.i(HistoryVideoHolder.this, attachmentWrapper, view);
                }
            });
            this.f42877b.f65647f.setText(com.im.freechat.extend.m.y(k().getDuration()));
            this.f42877b.f65646e.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.history.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HistoryVideoHolder.j(HistoryVideoHolder.this, view);
                }
            });
            l().h().observeForever(this.f42880e);
        }
    }

    @Override // org.koin.core.component.a
    @m8.g
    public Koin getKoin() {
        return a.C0815a.a(this);
    }

    @m8.g
    public final VideoAttachment k() {
        VideoAttachment videoAttachment = this.f42879d;
        if (videoAttachment != null) {
            return videoAttachment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attachment");
        return null;
    }

    public final void o(@m8.g VideoAttachment videoAttachment) {
        Intrinsics.checkNotNullParameter(videoAttachment, "<set-?>");
        this.f42879d = videoAttachment;
    }
}
