package com.im.freechat.ui.chat.message_gallery;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.OneShotPreDrawListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import b4.b;
import com.google.android.exoplayer2.ui.PlayerView;
import com.im.freechat.base.BaseViewModelActivity;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.VideoAttachment;
import com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel;
import io.sentry.Session;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: MessageGalleryActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b?\u0010@J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010 \u001a\u00020\u0004H\u0014J\b\u0010!\u001a\u00020\u0004H\u0014R\u001b\u0010'\u001a\u00020\"8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010$\u001a\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010>\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006A"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;", "Lcom/im/freechat/base/BaseViewModelActivity;", "Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$Directions;", "Lf4/d;", "", "r0", "p0", "", "position", "o0", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "attachment", "u0", "i0", "Landroid/view/LayoutInflater;", "inflater", "v0", Session.b.f81842c, "direction", "Landroid/os/Bundle;", "extras", "t0", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "onPause", "onResume", "Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;", "b", "Lkotlin/Lazy;", "k0", "()Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;", "viewModel", "Lcom/im/freechat/ui/chat/message_gallery/c;", "c", "j0", "()Lcom/im/freechat/ui/chat/message_gallery/c;", "galleryAdapter", "Lcom/google/android/exoplayer2/ui/PlayerView;", "d", "Lcom/google/android/exoplayer2/ui/PlayerView;", "playerView", "Landroidx/recyclerview/widget/LinearLayoutManager;", "e", "Landroidx/recyclerview/widget/LinearLayoutManager;", "layoutManager", "Landroidx/recyclerview/widget/SnapHelper;", "f", "Landroidx/recyclerview/widget/SnapHelper;", "snapHelper", "g", "I", "currentPosition", "h", "Z", "initialized", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MessageGalleryActivity extends BaseViewModelActivity<MessageGalleryViewModel.Directions, f4.d> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43098b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f43099c;

    /* renamed from: d  reason: collision with root package name */
    private PlayerView f43100d;

    /* renamed from: e  reason: collision with root package name */
    private LinearLayoutManager f43101e;

    /* renamed from: f  reason: collision with root package name */
    private SnapHelper f43102f;

    /* renamed from: g  reason: collision with root package name */
    private int f43103g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f43104h;

    /* compiled from: View.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0000H\n¨\u0006\u0001"}, d2 = {"", "androidx/core/view/ViewKt$doOnPreDraw$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f43111a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MessageGalleryActivity f43112b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f43113c;

        public a(View view, MessageGalleryActivity messageGalleryActivity, int i4) {
            this.f43111a = view;
            this.f43112b = messageGalleryActivity;
            this.f43113c = i4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            LinearLayoutManager linearLayoutManager = this.f43112b.f43101e;
            LinearLayoutManager linearLayoutManager2 = null;
            if (linearLayoutManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutManager");
                linearLayoutManager = null;
            }
            View findViewByPosition = linearLayoutManager.findViewByPosition(this.f43113c);
            if (findViewByPosition == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue(findViewByPosition, "layoutManager.findViewBy…on) ?: return@doOnPreDraw");
            SnapHelper snapHelper = this.f43112b.f43102f;
            if (snapHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("snapHelper");
                snapHelper = null;
            }
            LinearLayoutManager linearLayoutManager3 = this.f43112b.f43101e;
            if (linearLayoutManager3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutManager");
                linearLayoutManager3 = null;
            }
            int[] calculateDistanceToFinalSnap = snapHelper.calculateDistanceToFinalSnap(linearLayoutManager3, findViewByPosition);
            if (calculateDistanceToFinalSnap == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue(calculateDistanceToFinalSnap, "snapHelper.calculateDist…    ?: return@doOnPreDraw");
            LinearLayoutManager linearLayoutManager4 = this.f43112b.f43101e;
            if (linearLayoutManager4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutManager");
            } else {
                linearLayoutManager2 = linearLayoutManager4;
            }
            linearLayoutManager2.scrollToPositionWithOffset(this.f43113c, -calculateDistanceToFinalSnap[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessageGalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/im/freechat/shared/entities/message/VideoAttachment;", "videoAttachment", "", "position", "", "a", "(Lcom/im/freechat/shared/entities/message/VideoAttachment;I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<VideoAttachment, Integer, Unit> {
        b() {
            super(2);
        }

        public final void a(@m8.g VideoAttachment videoAttachment, int i4) {
            Intrinsics.checkNotNullParameter(videoAttachment, "videoAttachment");
            MessageGalleryActivity.this.u0(videoAttachment, i4);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(VideoAttachment videoAttachment, Integer num) {
            a(videoAttachment, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessageGalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/widget/FrameLayout;", "it", "", "a", "(Landroid/widget/FrameLayout;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<FrameLayout, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g FrameLayout it) {
            Intrinsics.checkNotNullParameter(it, "it");
            MessageGalleryActivity.this.i0();
            PlayerView playerView = MessageGalleryActivity.this.f43100d;
            if (playerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerView");
                playerView = null;
            }
            it.addView(playerView);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FrameLayout frameLayout) {
            a(frameLayout);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessageGalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<Integer, Unit> {
        d() {
            super(1);
        }

        public final void a(int i4) {
            MessageGalleryActivity.this.f43103g = i4;
            TextView textView = MessageGalleryActivity.b0(MessageGalleryActivity.this).f65463e;
            MessageGalleryActivity messageGalleryActivity = MessageGalleryActivity.this;
            int i10 = b.s.T4;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(i4 + 1);
            List<com.im.freechat.ui.chat.history.a> value = MessageGalleryActivity.this.J().k().getValue();
            objArr[1] = value != null ? Integer.valueOf(value.size()) : null;
            textView.setText(messageGalleryActivity.getString(i10, objArr));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessageGalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<Integer, Unit> {
        e() {
            super(1);
        }

        public final void a(int i4) {
            if (MessageGalleryActivity.this.j0().d() != -1) {
                MessageGalleryActivity.this.j0().i(-1);
                MessageGalleryActivity.this.J().p();
                MessageGalleryActivity.this.i0();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    public MessageGalleryActivity() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MessageGalleryActivity$special$$inlined$inject$default$1(this, null, null));
        this.f43098b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MessageGalleryActivity$special$$inlined$inject$default$2(this, null, null));
        this.f43099c = lazy2;
    }

    public static final /* synthetic */ f4.d b0(MessageGalleryActivity messageGalleryActivity) {
        return messageGalleryActivity.I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0() {
        PlayerView playerView = this.f43100d;
        PlayerView playerView2 = null;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        ViewGroup viewGroup = (ViewGroup) playerView.getParent();
        if (viewGroup == null) {
            return;
        }
        PlayerView playerView3 = this.f43100d;
        if (playerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
        } else {
            playerView2 = playerView3;
        }
        int indexOfChild = viewGroup.indexOfChild(playerView2);
        if (indexOfChild >= 0) {
            viewGroup.removeViewAt(indexOfChild);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.im.freechat.ui.chat.message_gallery.c j0() {
        return (com.im.freechat.ui.chat.message_gallery.c) this.f43099c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(final MessageGalleryActivity this$0, final List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null || list.isEmpty()) {
            return;
        }
        this$0.j0().submitList(list, new Runnable() { // from class: com.im.freechat.ui.chat.message_gallery.h
            @Override // java.lang.Runnable
            public final void run() {
                MessageGalleryActivity.m0(MessageGalleryActivity.this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(final MessageGalleryActivity this$0, final List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f43104h) {
            return;
        }
        this$0.I().f65463e.setText(this$0.getString(b.s.T4, new Object[]{1, Integer.valueOf(it.size())}));
        long longExtra = this$0.getIntent().getLongExtra(com.im.freechat.ui.chat.message_gallery.a.f43138b, 0L);
        if (longExtra != 0) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            Iterator it2 = it.iterator();
            final int i4 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i4 = -1;
                    break;
                }
                Attachment h4 = ((com.im.freechat.ui.chat.history.a) it2.next()).h();
                if (h4 != null && h4.getMediaId() == longExtra) {
                    break;
                }
                i4++;
            }
            if (i4 >= 0) {
                this$0.o0(i4);
                if (((com.im.freechat.ui.chat.history.a) it.get(i4)).h() instanceof VideoAttachment) {
                    this$0.I().f65462d.postDelayed(new Runnable() { // from class: com.im.freechat.ui.chat.message_gallery.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            MessageGalleryActivity.n0(MessageGalleryActivity.this, it, i4);
                        }
                    }, 100L);
                }
                this$0.f43104h = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(MessageGalleryActivity this$0, List list, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Attachment h4 = ((com.im.freechat.ui.chat.history.a) list.get(i4)).h();
        Intrinsics.checkNotNull(h4, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.VideoAttachment");
        this$0.u0((VideoAttachment) h4, i4);
    }

    private final void o0(int i4) {
        LinearLayoutManager linearLayoutManager = this.f43101e;
        if (linearLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutManager");
            linearLayoutManager = null;
        }
        linearLayoutManager.scrollToPosition(i4);
        RecyclerView recyclerView = I().f65462d;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.recycler");
        Intrinsics.checkNotNullExpressionValue(OneShotPreDrawListener.add(recyclerView, new a(recyclerView, this, i4)), "View.doOnPreDraw(\n    cr…dd(this) { action(this) }");
    }

    private final void p0() {
        Toolbar toolbar = I().f65460b;
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
        ActionBar supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setDisplayHomeAsUpEnabled(true);
        }
        ActionBar supportActionBar3 = getSupportActionBar();
        if (supportActionBar3 != null) {
            supportActionBar3.setHomeButtonEnabled(true);
        }
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.message_gallery.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessageGalleryActivity.q0(MessageGalleryActivity.this, view);
            }
        });
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon != null) {
            navigationIcon.setTint(ResourcesCompat.getColor(toolbar.getResources(), b.f.f1138o5, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(MessageGalleryActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onBackPressed();
    }

    private final void r0() {
        getWindow().setStatusBarColor(ContextCompat.getColor(this, 17170444));
        SnapHelper snapHelper = null;
        View rootView = LayoutInflater.from(getApplicationContext()).inflate(b.m.Y0, (ViewGroup) null, false).getRootView();
        Intrinsics.checkNotNull(rootView, "null cannot be cast to non-null type com.google.android.exoplayer2.ui.PlayerView");
        this.f43100d = (PlayerView) rootView;
        this.f43101e = new MessageGalleryLayoutManager(this, 0.0f, 0.0f, 6, null);
        this.f43102f = new PagerSnapHelper();
        RecyclerView recyclerView = I().f65462d;
        recyclerView.setItemViewCacheSize(6);
        LinearLayoutManager linearLayoutManager = this.f43101e;
        if (linearLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutManager");
            linearLayoutManager = null;
        }
        recyclerView.setLayoutManager(linearLayoutManager);
        com.im.freechat.ui.chat.message_gallery.c j02 = j0();
        j02.j(new b());
        j02.k(new c());
        recyclerView.setAdapter(j02);
        Intrinsics.checkNotNullExpressionValue(recyclerView, "");
        SnapHelper snapHelper2 = this.f43102f;
        if (snapHelper2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snapHelper");
        } else {
            snapHelper = snapHelper2;
        }
        j.a(recyclerView, snapHelper, new d(), new e());
        p0();
        I().f65461c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.message_gallery.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessageGalleryActivity.s0(MessageGalleryActivity.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(MessageGalleryActivity this$0, View view) {
        com.im.freechat.ui.chat.history.a aVar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent();
        List<com.im.freechat.ui.chat.history.a> value = this$0.J().k().getValue();
        if (value != null && (aVar = value.get(this$0.f43103g)) != null) {
            Long[] lArr = new Long[1];
            Attachment h4 = aVar.h();
            lArr[0] = h4 != null ? Long.valueOf(h4.getMediaId()) : null;
            intent.putExtra(k4.b.f84737d, (Serializable) lArr);
            intent.putExtra(k4.b.f84734a, aVar.i());
        }
        Unit unit = Unit.INSTANCE;
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0(VideoAttachment videoAttachment, int i4) {
        J().r(videoAttachment);
        j0().i(i4);
    }

    @Override // com.im.freechat.base.BaseViewModelActivity
    protected void init() {
        r0();
        J().m(getIntent().getIntExtra(k4.b.f84734a, 0));
        J().k().observe(this, new Observer() { // from class: com.im.freechat.ui.chat.message_gallery.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MessageGalleryActivity.l0(MessageGalleryActivity.this, (List) obj);
            }
        });
        p4.a l10 = J().l();
        PlayerView playerView = this.f43100d;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "lifecycle");
        l10.K(playerView, lifecycle);
    }

    @Override // com.im.freechat.base.BaseViewModelActivity
    @m8.g
    /* renamed from: k0 */
    public MessageGalleryViewModel J() {
        return (MessageGalleryViewModel) this.f43098b.getValue();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@m8.g Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        o0(this.f43103g);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(@m8.g Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        getMenuInflater().inflate(b.n.f2183c, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(@m8.g MenuItem item) {
        List<com.im.freechat.ui.chat.history.a> value;
        com.im.freechat.ui.chat.history.a aVar;
        com.im.freechat.ui.chat.history.a aVar2;
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == b.j.J0) {
            Intent intent = new Intent();
            List<com.im.freechat.ui.chat.history.a> value2 = J().k().getValue();
            if (value2 != null && (aVar2 = value2.get(this.f43103g)) != null) {
                Attachment h4 = aVar2.h();
                intent.putExtra(k4.b.f84736c, h4 != null ? Long.valueOf(h4.getMediaId()) : null);
                intent.putExtra(k4.b.f84734a, aVar2.i());
            }
            Unit unit = Unit.INSTANCE;
            setResult(-1, intent);
            finish();
        } else if (itemId == b.j.D0 && (value = J().k().getValue()) != null && (aVar = value.get(this.f43103g)) != null) {
            J().q(aVar);
        }
        return super.onOptionsItemSelected(item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        J().n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        J().o();
    }

    @Override // com.im.freechat.base.BaseViewModelActivity
    /* renamed from: t0 */
    public void M(@m8.g MessageGalleryViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // com.im.freechat.base.BaseViewModelActivity
    @m8.g
    /* renamed from: v0 */
    public f4.d R(@m8.g LayoutInflater inflater) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        f4.d c10 = f4.d.c(inflater);
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(inflater)");
        return c10;
    }
}
