package com.qennnsad.aknkaksd.presentation.ui.room.gift;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.gift.SendGiftAction;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.j1;
import com.qennnsad.aknkaksd.util.o0;
import io.reactivex.b0;
import io.reactivex.c0;
import io.reactivex.z;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import n7.r;

/* loaded from: classes3.dex */
public class LocalAnimPlayerView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private Animation f53444a;

    /* renamed from: b  reason: collision with root package name */
    private Animation f53445b;

    /* renamed from: c  reason: collision with root package name */
    private Animation f53446c;

    /* renamed from: d  reason: collision with root package name */
    private Animation f53447d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53448e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f53449f;

    /* renamed from: g  reason: collision with root package name */
    private Queue<SendGiftAction> f53450g;

    /* renamed from: h  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.room.gift.a f53451h;

    /* renamed from: i  reason: collision with root package name */
    private SendGiftAction f53452i;

    /* renamed from: j  reason: collision with root package name */
    private CountDownTimer f53453j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f53454k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f53455l;

    /* renamed from: m  reason: collision with root package name */
    private TextView f53456m;

    /* renamed from: n  reason: collision with root package name */
    private ImageView f53457n;

    /* renamed from: o  reason: collision with root package name */
    private ImageView f53458o;

    /* renamed from: p  reason: collision with root package name */
    private ImageView f53459p;

    /* renamed from: q  reason: collision with root package name */
    private ImageView f53460q;

    /* renamed from: r  reason: collision with root package name */
    private ImageView f53461r;

    /* renamed from: s  reason: collision with root package name */
    private ImageView f53462s;

    /* renamed from: t  reason: collision with root package name */
    private ImageView f53463t;

    /* renamed from: u  reason: collision with root package name */
    private ViewGroup f53464u;

    /* renamed from: v  reason: collision with root package name */
    private Animation f53465v;

    /* renamed from: w  reason: collision with root package name */
    private io.reactivex.disposables.c f53466w;

    /* renamed from: x  reason: collision with root package name */
    private float f53467x;

    /* renamed from: y  reason: collision with root package name */
    private int f53468y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f53469z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements c0<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f53470a;

        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0443a extends c {
            C0443a(String str) {
                super(str);
            }

            @Override // com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView.c, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                LocalAnimPlayerView.this.f53458o.setVisibility(0);
                LocalAnimPlayerView localAnimPlayerView = LocalAnimPlayerView.this;
                localAnimPlayerView.O(localAnimPlayerView.f53458o, LocalAnimPlayerView.this.f53445b);
            }

            @Override // com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView.c, android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                super.onAnimationStart(animation);
                LocalAnimPlayerView.this.setVisibility(0);
            }
        }

        /* loaded from: classes3.dex */
        class b extends c {
            b(String str) {
                super(str);
            }

            @Override // com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView.c, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                LocalAnimPlayerView.this.Q();
            }

            @Override // com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView.c, android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                super.onAnimationStart(animation);
            }
        }

        /* loaded from: classes3.dex */
        class c extends c {
            c(String str) {
                super(str);
            }

            @Override // com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView.c, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
            }
        }

        /* loaded from: classes3.dex */
        class d extends c {
            d(String str) {
                super(str);
            }

            @Override // com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView.c, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                LocalAnimPlayerView.this.K();
            }
        }

        a(Context context) {
            this.f53470a = context;
        }

        @Override // io.reactivex.c0
        public void a(@m8.g b0<Object> b0Var) {
            LocalAnimPlayerView.this.f53444a = AnimationUtils.loadAnimation(this.f53470a, R.anim.local_gift_whole_in);
            LocalAnimPlayerView.this.f53445b = AnimationUtils.loadAnimation(this.f53470a, R.anim.local_gift_pic_in);
            LocalAnimPlayerView.this.f53446c = AnimationUtils.loadAnimation(this.f53470a, R.anim.local_gift_combo);
            LocalAnimPlayerView.this.f53447d = AnimationUtils.loadAnimation(this.f53470a, R.anim.local_gift_whole_out);
            LocalAnimPlayerView.this.f53444a.setAnimationListener(new C0443a("animWholeIn"));
            LocalAnimPlayerView.this.f53445b.setAnimationListener(new b("animGiftPicIn"));
            LocalAnimPlayerView.this.f53446c.setAnimationListener(new c("animCombo"));
            LocalAnimPlayerView.this.f53447d.setAnimationListener(new d("animWholeOut"));
            b0Var.onNext(new Object());
            b0Var.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends CountDownTimer {
        b(long j4, long j10) {
            super(j4, j10);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            LocalAnimPlayerView localAnimPlayerView = LocalAnimPlayerView.this;
            localAnimPlayerView.P(localAnimPlayerView.f53447d);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
        }
    }

    /* loaded from: classes3.dex */
    private static class c implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        private final String f53477a;

        public c(String str) {
            this.f53477a = str;
        }

        private void a(String str) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            a("onAnimationEnd");
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            a("onAnimationRepeat");
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            a("onAnimationStart");
        }
    }

    public LocalAnimPlayerView(Context context) {
        super(context);
        B(context);
    }

    private int A(int i4) {
        switch (i4) {
            case 0:
                return R.drawable.gift_0;
            case 1:
                return R.drawable.gift_1;
            case 2:
                return R.drawable.gift_2;
            case 3:
                return R.drawable.gift_3;
            case 4:
                return R.drawable.gift_4;
            case 5:
                return R.drawable.gift_5;
            case 6:
                return R.drawable.gift_6;
            case 7:
                return R.drawable.gift_7;
            case 8:
                return R.drawable.gift_8;
            case 9:
                return R.drawable.gift_9;
            default:
                return R.drawable.transparent;
        }
    }

    private void B(Context context) {
        this.f53454k = (TextView) LayoutInflater.from(context).inflate(R.layout.layout_gift_local_anim, this).findViewById(R.id.gift_anim_tv_combo);
        this.f53455l = (TextView) findViewById(R.id.gift_anim_tv_nickname);
        this.f53456m = (TextView) findViewById(R.id.gift_anim_tv_gift_action);
        this.f53458o = (ImageView) findViewById(R.id.gift_anim_drawee_gift);
        this.f53457n = (ImageView) findViewById(R.id.gift_anim_drawee_creator);
        this.f53459p = (ImageView) findViewById(R.id.gift_anim_gift_x);
        this.f53460q = (ImageView) findViewById(R.id.gift_anim_gift_num1);
        this.f53461r = (ImageView) findViewById(R.id.gift_anim_gift_num2);
        this.f53462s = (ImageView) findViewById(R.id.gift_anim_gift_num3);
        this.f53463t = (ImageView) findViewById(R.id.gift_anim_gift_num4);
        this.f53464u = (ViewGroup) findViewById(R.id.gift_anim_gift_layout);
        L();
        C(context);
        this.f53469z = getId() == R.id.local_gift_anim_2;
    }

    private void C(Context context) {
        this.f53458o.setVisibility(4);
        z.create(new a(context)).subscribeOn(io.reactivex.schedulers.b.a()).observeOn(io.reactivex.schedulers.b.a()).subscribe(new n7.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.gift.d
            @Override // n7.g
            public final void accept(Object obj) {
                LocalAnimPlayerView.this.E(obj);
            }
        }, e.f53481a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(Object obj) throws Exception {
        this.f53449f = true;
        com.qennnsad.aknkaksd.presentation.ui.room.gift.a aVar = this.f53451h;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        this.f53451h.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean H(Long l10) throws Exception {
        o0.b("View", "Filtering: currentCombo=%d", l10);
        return !this.f53450g.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(Long l10) throws Exception {
        CountDownTimer countDownTimer = this.f53453j;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        SendGiftAction poll = this.f53450g.poll();
        CountDownTimer y9 = y(poll.getEffortDuration());
        this.f53453j = y9;
        y9.start();
        int intcombe = poll.getIntcombe();
        if (intcombe >= 10000) {
            M(this.f53460q, 9);
            M(this.f53461r, 9);
            M(this.f53462s, 9);
            M(this.f53463t, 9);
        } else if (intcombe >= 1000) {
            M(this.f53460q, (intcombe / 1000) % 10);
            M(this.f53461r, (intcombe / 100) % 10);
            M(this.f53462s, (intcombe / 10) % 10);
            M(this.f53463t, (intcombe / 1) % 10);
        } else if (intcombe >= 100) {
            M(this.f53460q, (intcombe / 100) % 10);
            M(this.f53461r, (intcombe / 10) % 10);
            M(this.f53462s, (intcombe / 1) % 10);
            z(this.f53463t);
        } else if (intcombe >= 10) {
            M(this.f53460q, (intcombe / 10) % 10);
            M(this.f53461r, (intcombe / 1) % 10);
            z(this.f53462s);
            z(this.f53463t);
        } else {
            M(this.f53460q, intcombe % 10);
            z(this.f53461r);
            z(this.f53462s);
            z(this.f53463t);
        }
        this.f53459p.setImageResource(R.drawable.gift_x);
        O(this.f53464u, this.f53446c);
    }

    private void L() {
        this.f53454k.setText("");
        this.f53459p.setImageResource(R.drawable.transparent);
        this.f53460q.setImageResource(R.drawable.transparent);
        this.f53461r.setImageResource(R.drawable.transparent);
        this.f53462s.setImageResource(R.drawable.transparent);
        this.f53463t.setImageResource(R.drawable.transparent);
        this.f53458o.setVisibility(4);
    }

    private void M(ImageView imageView, int i4) {
        imageView.setImageResource(A(i4));
        imageView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(View view, Animation animation) {
        view.startAnimation(animation);
        this.f53465v = animation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(Animation animation) {
        O(this, animation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        o0.a("View", "Start Combo Animation:count comboQueue=" + this.f53450g.size());
        io.reactivex.disposables.c cVar = this.f53466w;
        if (cVar != null && !cVar.isDisposed()) {
            this.f53466w.dispose();
        }
        this.f53466w = z.interval(1L, 500L, TimeUnit.MILLISECONDS, io.reactivex.android.schedulers.a.c()).filter(new r() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.gift.g
            @Override // n7.r
            public final boolean test(Object obj) {
                boolean H;
                H = LocalAnimPlayerView.this.H((Long) obj);
                return H;
            }
        }).subscribeOn(io.reactivex.android.schedulers.a.c()).subscribe(new n7.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.gift.c
            @Override // n7.g
            public final void accept(Object obj) {
                LocalAnimPlayerView.this.I((Long) obj);
            }
        }, f.f53482a);
    }

    private void s(boolean z9) {
        clearAnimation();
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (z9) {
            setY((getY() * 2.0f) + (this.f53469z ? 0 : this.f53468y));
            if (this.f53469z) {
                viewGroup.setPadding(0, 0, 0, h1.f(getContext(), 5));
            } else {
                viewGroup.setPadding(0, 0, 0, 0);
            }
        } else {
            if (!this.f53469z) {
                h1.f(getContext(), 5);
            }
            setY(this.f53467x);
            viewGroup.setPadding(0, 0, 0, 0);
        }
        invalidate();
    }

    private CountDownTimer y(int i4) {
        return new b(i4 * 1000, 100L);
    }

    private void z(ImageView imageView) {
        imageView.setImageResource(R.drawable.transparent);
    }

    public synchronized void D(@NonNull SendGiftAction sendGiftAction) {
        Queue<SendGiftAction> queue = this.f53450g;
        if (queue == null) {
            return;
        }
        queue.offer(sendGiftAction);
    }

    void K() {
        io.reactivex.disposables.c cVar = this.f53466w;
        if (cVar != null && !cVar.isDisposed()) {
            this.f53466w.dispose();
            this.f53466w = null;
        }
        this.f53449f = true;
        this.f53448e = false;
        this.f53450g = new LinkedList();
        L();
        s(true);
        setVisibility(this.f53469z ? 8 : 4);
        if (this.f53451h != null) {
            post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.gift.b
                @Override // java.lang.Runnable
                public final void run() {
                    LocalAnimPlayerView.this.G();
                }
            });
        }
    }

    public void N(@NonNull List<SendGiftAction> list) {
        o0.h("View", "-----startAnim： %s-----", list);
        s(false);
        this.f53449f = false;
        this.f53448e = true;
        SendGiftAction sendGiftAction = list.get(0);
        this.f53452i = sendGiftAction;
        this.f53450g = new LinkedList(list);
        Context context = getContext();
        f5.e c10 = ((f5.d) dagger.hilt.c.a(context.getApplicationContext(), f5.d.class)).c();
        this.f53456m.setText(j1.a(context.getString(R.string.room_gift_description), sendGiftAction.getGiftName(), "", new ForegroundColorSpan(ContextCompat.getColor(context, R.color.animation_gift_name))));
        if (!TextUtils.isEmpty(sendGiftAction.getNickname())) {
            this.f53455l.setText(sendGiftAction.getNickname());
        }
        if (!TextUtils.isEmpty(sendGiftAction.getAvatar())) {
            com.qennnsad.aknkaksd.util.img.e.g(this.f53457n, c10.g().j(sendGiftAction.getAvatar()), false, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
        }
        if (!TextUtils.isEmpty(sendGiftAction.getGiftIcon())) {
            com.qennnsad.aknkaksd.util.img.e.e(this.f53458o, c10.g().j(sendGiftAction.getGiftIcon()), false, R.drawable.transparent, R.drawable.rank_medal_1);
        }
        P(this.f53444a);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        this.f53467x = i10;
        this.f53468y = i12 - i10;
    }

    public boolean t() {
        return this.f53449f && !isShown();
    }

    public void u(com.qennnsad.aknkaksd.presentation.ui.room.gift.a aVar) {
        this.f53451h = aVar;
    }

    public boolean v(@NonNull SendGiftAction sendGiftAction) {
        SendGiftAction sendGiftAction2 = this.f53452i;
        return sendGiftAction2 != null && this.f53448e && sendGiftAction2.canBeJoined(sendGiftAction);
    }

    public void w() {
        Animation animation = this.f53465v;
        if (animation != null && animation.isInitialized()) {
            this.f53465v.cancel();
        }
        x();
        K();
    }

    public void x() {
        Queue<SendGiftAction> queue = this.f53450g;
        if (queue != null) {
            queue.clear();
        }
    }

    public LocalAnimPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        B(context);
    }

    public LocalAnimPlayerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        B(context);
    }

    public LocalAnimPlayerView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        B(context);
    }
}
