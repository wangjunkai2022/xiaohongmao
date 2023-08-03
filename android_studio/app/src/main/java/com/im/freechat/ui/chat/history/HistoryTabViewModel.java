package com.im.freechat.ui.chat.history;

import android.net.Uri;
import androidx.core.os.BundleKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.im.freechat.bean.PlaylistItem;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: HistoryTabViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B\u001f\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0003J\"\u0010\u000e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\fR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R.\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00180\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020!0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006*"}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;", "", "r", "Lcom/im/freechat/ui/chat/history/a;", "attachmentWrapper", "q", "l", "", "messageId", "startPos", "", "forcePause", "m", "Lcom/im/freechat/domain/h;", "c", "Lcom/im/freechat/domain/h;", "fileUtility", "Lcom/im/freechat/utils/f;", "d", "Lcom/im/freechat/utils/f;", "downloadUtil", "Landroidx/lifecycle/MutableLiveData;", "", "f", "Landroidx/lifecycle/MutableLiveData;", "k", "()Landroidx/lifecycle/MutableLiveData;", "p", "(Landroidx/lifecycle/MutableLiveData;)V", "currentList", "Landroidx/lifecycle/Observer;", "", "g", "Landroidx/lifecycle/Observer;", "playerObserver", "Lp4/e;", "playerUtil", "<init>", "(Lcom/im/freechat/domain/h;Lcom/im/freechat/utils/f;Lp4/e;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class HistoryTabViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.h f42868c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.utils.f f42869d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final p4.e f42870e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private MutableLiveData<List<com.im.freechat.ui.chat.history.a>> f42871f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Observer<Object> f42872g;

    /* compiled from: HistoryTabViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;", "", "(Ljava/lang/String;I)V", "CHAT_DETAILS", "GALLERY", "OPEN_FILE", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        CHAT_DETAILS,
        GALLERY,
        OPEN_FILE
    }

    /* compiled from: HistoryTabViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/DownloadInfo;", "it", "", "a", "(Lcom/im/freechat/shared/entities/DownloadInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<DownloadInfo, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FileAttachment f42874a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ HistoryTabViewModel f42875b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(FileAttachment fileAttachment, HistoryTabViewModel historyTabViewModel) {
            super(1);
            this.f42874a = fileAttachment;
            this.f42875b = historyTabViewModel;
        }

        public final void a(@m8.h DownloadInfo downloadInfo) {
            String localPath;
            if (downloadInfo == null || (localPath = downloadInfo.getLocalPath()) == null) {
                localPath = this.f42874a.getLocalPath();
                Intrinsics.checkNotNull(localPath);
            }
            File file = new File(localPath);
            HistoryTabViewModel historyTabViewModel = this.f42875b;
            Directions directions = Directions.OPEN_FILE;
            com.im.freechat.domain.h hVar = this.f42875b.f42868c;
            Uri fromFile = Uri.fromFile(file);
            Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(this)");
            String uri = fromFile.toString();
            Intrinsics.checkNotNullExpressionValue(uri, "file.toUri().toString()");
            historyTabViewModel.e(directions, BundleKt.bundleOf(TuplesKt.to(o.f42920c, file.getAbsolutePath()), TuplesKt.to(o.f42921d, hVar.g(uri))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DownloadInfo downloadInfo) {
            a(downloadInfo);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: HistoryTabViewModel.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f42876a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }
    }

    public HistoryTabViewModel(@m8.g com.im.freechat.domain.h fileUtility, @m8.g com.im.freechat.utils.f downloadUtil, @m8.g p4.e playerUtil) {
        List emptyList;
        Intrinsics.checkNotNullParameter(fileUtility, "fileUtility");
        Intrinsics.checkNotNullParameter(downloadUtil, "downloadUtil");
        Intrinsics.checkNotNullParameter(playerUtil, "playerUtil");
        this.f42868c = fileUtility;
        this.f42869d = downloadUtil;
        this.f42870e = playerUtil;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f42871f = new MutableLiveData<>(emptyList);
        this.f42872g = new Observer() { // from class: com.im.freechat.ui.chat.history.p
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                HistoryTabViewModel.o(HistoryTabViewModel.this, obj);
            }
        };
    }

    public static /* synthetic */ void n(HistoryTabViewModel historyTabViewModel, long j4, long j10, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            j10 = 0;
        }
        historyTabViewModel.m(j4, j10, (i4 & 4) != 0 ? false : z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(HistoryTabViewModel this$0, Object obj) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.r();
    }

    private final void r() {
    }

    @m8.g
    public final MutableLiveData<List<com.im.freechat.ui.chat.history.a>> k() {
        return this.f42871f;
    }

    public final void l() {
        this.f42870e.f().observeForever(this.f42872g);
        this.f42870e.h().observeForever(this.f42872g);
        this.f42870e.g().observeForever(this.f42872g);
    }

    public final void m(long j4, long j10, boolean z9) {
        int collectionSizeOrDefault;
        List<com.im.freechat.ui.chat.history.a> value = this.f42871f.getValue();
        if (value != null) {
            ArrayList<com.im.freechat.ui.chat.history.a> arrayList = new ArrayList();
            for (Object obj : value) {
                if (((com.im.freechat.ui.chat.history.a) obj).h() instanceof AudioAttachment) {
                    arrayList.add(obj);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (com.im.freechat.ui.chat.history.a aVar : arrayList) {
                Attachment h4 = aVar.h();
                Intrinsics.checkNotNull(h4);
                String valueOf = String.valueOf(h4.getMediaId());
                arrayList2.add(new PlaylistItem(String.valueOf(aVar.l().getUserId()), valueOf, aVar.i(), com.im.freechat.extend.p.j(aVar.h()), "", aVar.k(), false));
            }
            this.f42870e.k(String.valueOf(j4), arrayList2, j10, z9);
        }
    }

    public final void p(@m8.g MutableLiveData<List<com.im.freechat.ui.chat.history.a>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.f42871f = mutableLiveData;
    }

    public final void q(@m8.g com.im.freechat.ui.chat.history.a attachmentWrapper) {
        Intrinsics.checkNotNullParameter(attachmentWrapper, "attachmentWrapper");
        Attachment h4 = attachmentWrapper.h();
        Intrinsics.checkNotNull(h4, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.FileAttachment");
        FileAttachment fileAttachment = (FileAttachment) h4;
        this.f42869d.e(fileAttachment, attachmentWrapper.i(), new a(fileAttachment, this), b.f42876a);
    }
}
