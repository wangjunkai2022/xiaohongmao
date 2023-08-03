package com.im.freechat.ui.chat.history;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.GifAttachment;
import com.im.freechat.shared.entities.message.ImageAttachment;
import com.im.freechat.shared.entities.message.VideoAttachment;
import f4.i1;
import f4.j1;
import f4.k1;
import f4.l1;
import f4.m1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0015\u0010\u000fR\u0014\u0010\u0018\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0017\u0010\u000fR\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\r\u0010\u000fR\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\n\u0010\u000fR0\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u0015\u0010\u001e\"\u0004\b\u001c\u0010\u001fR4\u0010'\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b\u0017\u0010%\"\u0004\b#\u0010&¨\u0006*"}, d2 = {"Lcom/im/freechat/ui/chat/history/k;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/ui/chat/history/a;", "Lcom/im/freechat/ui/chat/history/g;", "", "position", "getItemViewType", "Landroid/view/ViewGroup;", "parent", "viewType", "g", "holder", "", "f", "a", "I", "ITEM_IMAGE", "b", "ITEM_VIDEO", "c", "ITEM_AUDIO", "d", "ITEM_FILE", "e", "ITEM_LINK", "ITEM_GIF", "ITEM_OTHER", "Lkotlin/Function1;", "h", "Lkotlin/jvm/functions/Function1;", "()Lkotlin/jvm/functions/Function1;", "(Lkotlin/jvm/functions/Function1;)V", "itemClickListener", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/AudioAttachment;", ContextChain.TAG_INFRA, "Lkotlin/jvm/functions/Function2;", "()Lkotlin/jvm/functions/Function2;", "(Lkotlin/jvm/functions/Function2;)V", "onAudioSeek", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k extends ListAdapter<com.im.freechat.ui.chat.history.a, g> {

    /* renamed from: a  reason: collision with root package name */
    private final int f42904a;

    /* renamed from: b  reason: collision with root package name */
    private final int f42905b;

    /* renamed from: c  reason: collision with root package name */
    private final int f42906c;

    /* renamed from: d  reason: collision with root package name */
    private final int f42907d;

    /* renamed from: e  reason: collision with root package name */
    private final int f42908e;

    /* renamed from: f  reason: collision with root package name */
    private final int f42909f;

    /* renamed from: g  reason: collision with root package name */
    private final int f42910g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Function1<? super com.im.freechat.ui.chat.history.a, Unit> f42911h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private Function2<? super AudioAttachment, ? super Integer, Unit> f42912i;

    /* compiled from: HistoryMediaAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/im/freechat/shared/entities/message/AudioAttachment;", "audio", "", ContextChain.TAG_INFRA, "", "a", "(Lcom/im/freechat/shared/entities/message/AudioAttachment;I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function2<AudioAttachment, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f42913a = new a();

        a() {
            super(2);
        }

        public final void a(@m8.g AudioAttachment audio, int i4) {
            Intrinsics.checkNotNullParameter(audio, "audio");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(AudioAttachment audioAttachment, Integer num) {
            a(audioAttachment, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HistoryMediaAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/history/a;", "it", "", "a", "(Lcom/im/freechat/ui/chat/history/a;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<com.im.freechat.ui.chat.history.a, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g com.im.freechat.ui.chat.history.a it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<com.im.freechat.ui.chat.history.a, Unit> d4 = k.this.d();
            if (d4 != null) {
                d4.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.history.a aVar) {
            a(aVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public k() {
        /*
            r1 = this;
            com.im.freechat.ui.chat.history.l$a r0 = com.im.freechat.ui.chat.history.l.a()
            r1.<init>(r0)
            r0 = 1
            r1.f42905b = r0
            r0 = 2
            r1.f42906c = r0
            r0 = 3
            r1.f42907d = r0
            r0 = 4
            r1.f42908e = r0
            r0 = 5
            r1.f42909f = r0
            r0 = 6
            r1.f42910g = r0
            com.im.freechat.ui.chat.history.k$a r0 = com.im.freechat.ui.chat.history.k.a.f42913a
            r1.f42912i = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.history.k.<init>():void");
    }

    @m8.h
    public final Function1<com.im.freechat.ui.chat.history.a, Unit> d() {
        return this.f42911h;
    }

    @m8.g
    public final Function2<AudioAttachment, Integer, Unit> e() {
        return this.f42912i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(@m8.g g holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        com.im.freechat.ui.chat.history.a item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.b(item);
        holder.e(new b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: g */
    public g onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i4 == this.f42904a) {
            k1 d4 = k1.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.f….context), parent, false)");
            return new i(d4);
        } else if (i4 == this.f42909f) {
            k1 d10 = k1.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d10, "inflate(LayoutInflater.f….context), parent, false)");
            return new f(d10);
        } else if (i4 == this.f42905b) {
            m1 d11 = m1.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d11, "inflate(LayoutInflater.f….context), parent, false)");
            return new HistoryVideoHolder(d11);
        } else if (i4 == this.f42906c) {
            i1 d12 = i1.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d12, "inflate(LayoutInflater.f….context), parent, false)");
            return new c(d12, this.f42912i);
        } else if (i4 == this.f42907d) {
            j1 d13 = j1.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d13, "inflate(LayoutInflater.f….context), parent, false)");
            return new HistoryFileHolder(d13);
        } else if (i4 == this.f42908e) {
            l1 d14 = l1.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d14, "inflate(LayoutInflater.f….context), parent, false)");
            return new j(d14);
        } else {
            throw new IllegalStateException("Illegal view type".toString());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        com.im.freechat.ui.chat.history.a item = getItem(i4);
        return item.h() instanceof ImageAttachment ? this.f42904a : item.h() instanceof GifAttachment ? this.f42909f : item.h() instanceof VideoAttachment ? this.f42905b : item.h() instanceof AudioAttachment ? this.f42906c : item.h() instanceof FileAttachment ? this.f42907d : item.j() != null ? this.f42908e : this.f42910g;
    }

    public final void h(@m8.h Function1<? super com.im.freechat.ui.chat.history.a, Unit> function1) {
        this.f42911h = function1;
    }

    public final void i(@m8.g Function2<? super AudioAttachment, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f42912i = function2;
    }
}
