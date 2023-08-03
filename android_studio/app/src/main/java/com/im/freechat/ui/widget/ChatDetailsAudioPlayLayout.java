package com.im.freechat.ui.widget;

import android.content.Context;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.extend.r;
import f4.u1;
import io.sentry.Session;
import io.sentry.protocol.t;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.component.a;

/* compiled from: ChatDetailsAudioPlayLayout.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+B\u0019\b\u0016\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b*\u0010.B!\b\u0016\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010-\u001a\u00020,\u0012\u0006\u00100\u001a\u00020/¢\u0006\u0004\b*\u00101J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u001c\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bJ\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u0005R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R$\u0010'\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010\u0012\"\u0004\b%\u0010&¨\u00062"}, d2 = {"Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;", "Landroid/widget/FrameLayout;", "Lorg/koin/core/component/a;", "Landroid/support/v4/media/session/PlaybackStateCompat;", t.b.f83859d, "", ContextChain.TAG_INFRA, "Landroid/support/v4/media/MediaMetadataCompat;", com.google.android.exoplayer2.text.ttml.d.f25744y, "m", "h", "Landroid/view/View;", "view", "fullScreenIcon", "playIcon", "l", "", "j", "()Ljava/lang/Long;", "k", "", "a", "Ljava/lang/String;", "TAG", "c", "Landroid/view/View;", "playerView", "d", "Lp4/e;", "e", "Lkotlin/Lazy;", "getPlayerUtil", "()Lp4/e;", "playerUtil", "f", "Ljava/lang/Long;", "getLastplayed", "setLastplayed", "(Ljava/lang/Long;)V", "lastplayed", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", Session.b.f81849j, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "def", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatDetailsAudioPlayLayout extends FrameLayout implements org.koin.core.component.a {
    @g

    /* renamed from: a */
    private final String f43695a;
    @g

    /* renamed from: b */
    private final u1 f43696b;
    @h

    /* renamed from: c */
    private View f43697c;
    @h

    /* renamed from: d */
    private View f43698d;
    @g

    /* renamed from: e */
    private final Lazy f43699e;
    @h

    /* renamed from: f */
    private Long f43700f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsAudioPlayLayout(@g Context context) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        String simpleName = ChatDetailsAudioPlayLayout.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "this.javaClass.simpleName");
        this.f43695a = simpleName;
        u1 d4 = u1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43696b = d4;
        lazy = LazyKt__LazyJVMKt.lazy(d9.b.f62011a.b(), (Function0) new ChatDetailsAudioPlayLayout$special$$inlined$inject$default$1(this, null, null));
        this.f43699e = lazy;
        d4.f65783c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsAudioPlayLayout.f(ChatDetailsAudioPlayLayout.this, view);
            }
        });
        d4.f65782b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsAudioPlayLayout.g(ChatDetailsAudioPlayLayout.this, view);
            }
        });
        getPlayerUtil().h().observeForever(new d(this));
        getPlayerUtil().f().observeForever(new Observer() { // from class: com.im.freechat.ui.widget.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsAudioPlayLayout.this.h((MediaMetadataCompat) obj);
            }
        });
    }

    public static final void f(ChatDetailsAudioPlayLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPlayerUtil().r();
    }

    public static final void g(ChatDetailsAudioPlayLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPlayerUtil().m();
    }

    private final p4.e getPlayerUtil() {
        return (p4.e) this.f43699e.getValue();
    }

    public final void h(MediaMetadataCompat mediaMetadataCompat) {
        String str;
        this.f43696b.f65785e.setText(mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_TITLE));
        PlaybackStateCompat value = getPlayerUtil().h().getValue();
        Intrinsics.checkNotNull(value);
        m(mediaMetadataCompat, value);
        TextView textView = this.f43696b.f65784d;
        String string = mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_DATE);
        if (string != null) {
            String string2 = getContext().getString(b.s.D8);
            Intrinsics.checkNotNullExpressionValue(string2, "context.getString(R.string.player_date_pattern)");
            str = r.b(string, string2);
        } else {
            str = null;
        }
        textView.setText(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i(android.support.v4.media.session.PlaybackStateCompat r8) {
        /*
            r7 = this;
            r0 = 3
            java.lang.Integer[] r1 = new java.lang.Integer[r0]
            r2 = 6
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)
            r4 = 0
            r1[r4] = r3
            java.lang.Integer r3 = java.lang.Integer.valueOf(r0)
            r5 = 1
            r1[r5] = r3
            r3 = 2
            java.lang.Integer r6 = java.lang.Integer.valueOf(r3)
            r1[r3] = r6
            int r3 = r8.getState()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            boolean r1 = kotlin.collections.ArraysKt.contains(r1, r3)
            if (r1 == 0) goto L35
            int r1 = r8.getState()
            if (r1 != r5) goto L2f
            r1 = 1
            goto L30
        L2f:
            r1 = 0
        L30:
            if (r1 == 0) goto L33
            goto L35
        L33:
            r1 = 0
            goto L36
        L35:
            r1 = 1
        L36:
            r3 = 8
            if (r1 == 0) goto L3d
            r1 = 8
            goto L3e
        L3d:
            r1 = 0
        L3e:
            r7.setVisibility(r1)
            android.view.View r1 = r7.f43698d
            if (r1 != 0) goto L46
            goto L5d
        L46:
            int r6 = r8.getState()
            if (r6 == r2) goto L55
            int r6 = r8.getState()
            if (r6 != r0) goto L53
            goto L55
        L53:
            r6 = 0
            goto L56
        L55:
            r6 = 1
        L56:
            r6 = r6 ^ r5
            if (r6 == 0) goto L5a
            r3 = 0
        L5a:
            r1.setVisibility(r3)
        L5d:
            int r1 = r8.getState()
            if (r1 == r2) goto L69
            int r1 = r8.getState()
            if (r1 != r0) goto L6a
        L69:
            r4 = 1
        L6a:
            r0 = r4 ^ 1
            r7.setSelected(r0)
            p4.e r0 = r7.getPlayerUtil()
            androidx.lifecycle.MutableLiveData r0 = r0.f()
            java.lang.Object r0 = r0.getValue()
            android.support.v4.media.MediaMetadataCompat r0 = (android.support.v4.media.MediaMetadataCompat) r0
            r7.m(r0, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.widget.ChatDetailsAudioPlayLayout.i(android.support.v4.media.session.PlaybackStateCompat):void");
    }

    private final void m(MediaMetadataCompat mediaMetadataCompat, PlaybackStateCompat playbackStateCompat) {
        boolean contains;
        View view = this.f43697c;
        if (view == null) {
            return;
        }
        boolean z9 = true;
        if (mediaMetadataCompat != null && playbackStateCompat != null) {
            contains = ArraysKt___ArraysKt.contains(new Integer[]{6, 3, 2}, Integer.valueOf(playbackStateCompat.getState()));
            if (contains) {
                if (!(playbackStateCompat.getState() == 1) && Intrinsics.areEqual(mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_ALBUM), "1")) {
                    z9 = false;
                }
            }
        }
        view.setVisibility(z9 ? 8 : 0);
    }

    @Override // org.koin.core.component.a
    @g
    public Koin getKoin() {
        return a.C0815a.a(this);
    }

    @h
    public final Long getLastplayed() {
        return this.f43700f;
    }

    @h
    public final Long j() {
        Long l10 = this.f43700f;
        this.f43700f = null;
        return l10;
    }

    public final void k() {
        getPlayerUtil().h().removeObserver(new d(this));
    }

    public final void l(@g View view, @g View fullScreenIcon, @g View playIcon) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(fullScreenIcon, "fullScreenIcon");
        Intrinsics.checkNotNullParameter(playIcon, "playIcon");
    }

    public final void setLastplayed(@h Long l10) {
        this.f43700f = l10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsAudioPlayLayout(@g Context context, @g AttributeSet attrs) {
        super(context, attrs);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        String simpleName = ChatDetailsAudioPlayLayout.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "this.javaClass.simpleName");
        this.f43695a = simpleName;
        u1 d4 = u1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43696b = d4;
        lazy = LazyKt__LazyJVMKt.lazy(d9.b.f62011a.b(), (Function0) new ChatDetailsAudioPlayLayout$special$$inlined$inject$default$2(this, null, null));
        this.f43699e = lazy;
        d4.f65783c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsAudioPlayLayout.f(ChatDetailsAudioPlayLayout.this, view);
            }
        });
        d4.f65782b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsAudioPlayLayout.g(ChatDetailsAudioPlayLayout.this, view);
            }
        });
        getPlayerUtil().h().observeForever(new d(this));
        getPlayerUtil().f().observeForever(new Observer() { // from class: com.im.freechat.ui.widget.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsAudioPlayLayout.this.h((MediaMetadataCompat) obj);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsAudioPlayLayout(@g Context context, @g AttributeSet attrs, int i4) {
        super(context, attrs, i4);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        String simpleName = ChatDetailsAudioPlayLayout.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "this.javaClass.simpleName");
        this.f43695a = simpleName;
        u1 d4 = u1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43696b = d4;
        lazy = LazyKt__LazyJVMKt.lazy(d9.b.f62011a.b(), (Function0) new ChatDetailsAudioPlayLayout$special$$inlined$inject$default$3(this, null, null));
        this.f43699e = lazy;
        d4.f65783c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsAudioPlayLayout.f(ChatDetailsAudioPlayLayout.this, view);
            }
        });
        d4.f65782b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsAudioPlayLayout.g(ChatDetailsAudioPlayLayout.this, view);
            }
        });
        getPlayerUtil().h().observeForever(new d(this));
        getPlayerUtil().f().observeForever(new Observer() { // from class: com.im.freechat.ui.widget.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsAudioPlayLayout.this.h((MediaMetadataCompat) obj);
            }
        });
    }
}
