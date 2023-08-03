package com.im.freechat.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import b4.b;
import com.im.freechat.extend.m;
import f4.t1;
import io.sentry.Session;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.concurrent.TimersKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatDetailsAudioRecordLayout.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018B\u0019\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u0017\u0010\u001bB!\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\r¢\u0006\u0004\b\u0017\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0002R\u0018\u0010\f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u000eR\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, d2 = {"Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;", "Landroid/widget/FrameLayout;", "", "d", "e", "", "up", "f", "c", "Ljava/util/Timer;", "a", "Ljava/util/Timer;", "mTimer", "", "I", "mStartTime", "Lf4/t1;", "binding", "Lf4/t1;", "getBinding", "()Lf4/t1;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", Session.b.f81849j, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "def", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatDetailsAudioRecordLayout extends FrameLayout {
    @h

    /* renamed from: a  reason: collision with root package name */
    private Timer f43710a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final t1 f43711b;

    /* renamed from: c  reason: collision with root package name */
    private int f43712c;

    /* compiled from: Timer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "", "run", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            ChatDetailsAudioRecordLayout.this.f43712c++;
            ChatDetailsAudioRecordLayout.this.getBinding().f65761c.post(new b());
        }
    }

    /* compiled from: ChatDetailsAudioRecordLayout.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ChatDetailsAudioRecordLayout.this.getBinding().f65761c.setText(m.h(ChatDetailsAudioRecordLayout.this.f43712c));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsAudioRecordLayout(@g Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        t1 d4 = t1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43711b = d4;
    }

    public final void c() {
        Timer timer = this.f43710a;
        if (timer != null) {
            timer.cancel();
        }
    }

    public final void d() {
        Timer timer = this.f43710a;
        if (timer != null) {
            timer.purge();
        }
        Timer timer2 = this.f43710a;
        if (timer2 != null) {
            timer2.cancel();
        }
        this.f43712c = 0;
        this.f43711b.f65761c.setText(m.h(0));
        Timer timer3 = TimersKt.timer("timer", true);
        timer3.schedule(new a(), 1000L, 1000L);
        this.f43710a = timer3;
    }

    public final void e() {
        Timer timer = this.f43710a;
        if (timer != null) {
            timer.cancel();
        }
        this.f43712c = 0;
    }

    public final void f(boolean z9) {
        this.f43711b.f65760b.setText(getContext().getString(z9 ? b.s.X0 : b.s.B0));
    }

    @g
    public final t1 getBinding() {
        return this.f43711b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsAudioRecordLayout(@g Context context, @g AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        t1 d4 = t1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43711b = d4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsAudioRecordLayout(@g Context context, @g AttributeSet attrs, int i4) {
        super(context, attrs, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        t1 d4 = t1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43711b = d4;
    }
}
