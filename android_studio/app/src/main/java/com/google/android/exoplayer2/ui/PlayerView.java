package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.ui.q;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.w1;
import com.google.android.exoplayer2.x1;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public class PlayerView extends FrameLayout implements c {
    public static final int B = 0;
    public static final int C = 1;
    public static final int D = 2;
    private static final int E = 0;
    private static final int F = 1;
    private static final int G = 2;
    private static final int H = 3;
    private static final int I = 4;
    private static final int J = 3;
    private static final int K = -1;
    private boolean A;

    /* renamed from: a  reason: collision with root package name */
    private final a f26170a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f26171b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f26172c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f26173d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f26174e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f26175f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final SubtitleView f26176g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f26177h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f26178i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final PlayerControlView f26179j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final FrameLayout f26180k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final FrameLayout f26181l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private v1 f26182m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26183n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private PlayerControlView.d f26184o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f26185p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Drawable f26186q;

    /* renamed from: r  reason: collision with root package name */
    private int f26187r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f26188s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.util.k<? super ExoPlaybackException> f26189t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private CharSequence f26190u;

    /* renamed from: v  reason: collision with root package name */
    private int f26191v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f26192w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f26193x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f26194y;

    /* renamed from: z  reason: collision with root package name */
    private int f26195z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class a implements v1.h, View.OnLayoutChangeListener, View.OnClickListener, PlayerControlView.d {

        /* renamed from: a  reason: collision with root package name */
        private final s2.b f26196a = new s2.b();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f26197b;

        public a() {
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
        public /* synthetic */ void A(com.google.android.exoplayer2.audio.e eVar) {
            x1.a(this, eVar);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void B(b1 b1Var, int i4) {
            x1.j(this, b1Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public void C(boolean z9, int i4) {
            PlayerView.this.O();
            PlayerView.this.Q();
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
        public /* synthetic */ void D(com.google.android.exoplayer2.device.b bVar) {
            x1.e(this, bVar);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void E(boolean z9) {
            x1.i(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void G(boolean z9) {
            w1.e(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void U(int i4) {
            w1.n(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void X() {
            w1.q(this);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i, com.google.android.exoplayer2.audio.u
        public /* synthetic */ void a(boolean z9) {
            x1.v(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void a0(boolean z9, int i4) {
            w1.m(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n, com.google.android.exoplayer2.video.z
        public /* synthetic */ void b(com.google.android.exoplayer2.video.b0 b0Var) {
            x1.A(this, b0Var);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void c(t1 t1Var) {
            x1.n(this, t1Var);
        }

        @Override // com.google.android.exoplayer2.video.n
        public void c0(int i4, int i10, int i11, float f10) {
            float f11 = (i10 == 0 || i4 == 0) ? 1.0f : (i4 * f10) / i10;
            if (PlayerView.this.f26173d instanceof TextureView) {
                if (i11 == 90 || i11 == 270) {
                    f11 = 1.0f / f11;
                }
                if (PlayerView.this.f26195z != 0) {
                    PlayerView.this.f26173d.removeOnLayoutChangeListener(this);
                }
                PlayerView.this.f26195z = i11;
                if (PlayerView.this.f26195z != 0) {
                    PlayerView.this.f26173d.addOnLayoutChangeListener(this);
                }
                PlayerView.r((TextureView) PlayerView.this.f26173d, PlayerView.this.f26195z);
            }
            PlayerView playerView = PlayerView.this;
            AspectRatioFrameLayout aspectRatioFrameLayout = playerView.f26171b;
            if (PlayerView.this.f26174e) {
                f11 = 0.0f;
            }
            playerView.C(aspectRatioFrameLayout, f11);
        }

        @Override // com.google.android.exoplayer2.ui.PlayerControlView.d
        public void d(int i4) {
            PlayerView.this.P();
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public void e(v1.l lVar, v1.l lVar2, int i4) {
            if (PlayerView.this.A() && PlayerView.this.f26193x) {
                PlayerView.this.x();
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void e0(s2 s2Var, Object obj, int i4) {
            w1.u(this, s2Var, obj, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void f(int i4) {
            x1.p(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void g(List list) {
            x1.w(this, list);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void h(v1.c cVar) {
            x1.c(this, cVar);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void i(int i4) {
            x1.t(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void j(s2 s2Var, int i4) {
            x1.y(this, s2Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
        public /* synthetic */ void k(int i4) {
            x1.b(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public void l(int i4) {
            PlayerView.this.O();
            PlayerView.this.R();
            PlayerView.this.Q();
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void m(f1 f1Var) {
            x1.k(this, f1Var);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void n(boolean z9) {
            x1.u(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.metadata.e
        public /* synthetic */ void o(Metadata metadata) {
            x1.l(this, metadata);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayerView.this.N();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            PlayerView.r((TextureView) view, PlayerView.this.f26195z);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
        public /* synthetic */ void p(int i4, boolean z9) {
            x1.f(this, i4, z9);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
        public void q() {
            if (PlayerView.this.f26172c != null) {
                PlayerView.this.f26172c.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.text.j
        public void r(List<com.google.android.exoplayer2.text.a> list) {
            if (PlayerView.this.f26176g != null) {
                PlayerView.this.f26176g.r(list);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
            v1 v1Var = (v1) com.google.android.exoplayer2.util.a.g(PlayerView.this.f26182m);
            s2 A0 = v1Var.A0();
            if (A0.v()) {
                this.f26197b = null;
            } else if (!v1Var.z0().isEmpty()) {
                this.f26197b = A0.k(v1Var.Y0(), this.f26196a, true).f24554b;
            } else {
                Object obj = this.f26197b;
                if (obj != null) {
                    int f10 = A0.f(obj);
                    if (f10 != -1) {
                        if (v1Var.j0() == A0.j(f10, this.f26196a).f24555c) {
                            return;
                        }
                    }
                    this.f26197b = null;
                }
            }
            PlayerView.this.S(false);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
        public /* synthetic */ void t(int i4, int i10) {
            x1.x(this, i4, i10);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void u(ExoPlaybackException exoPlaybackException) {
            x1.q(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void v(boolean z9) {
            x1.h(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
        public /* synthetic */ void w(float f10) {
            x1.B(this, f10);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public /* synthetic */ void z(v1 v1Var, v1.g gVar) {
            x1.g(this, v1Var, gVar);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A() {
        v1 v1Var = this.f26182m;
        return v1Var != null && v1Var.K() && this.f26182m.Q0();
    }

    private void B(boolean z9) {
        if (!(A() && this.f26193x) && U()) {
            boolean z10 = this.f26179j.J() && this.f26179j.getShowTimeoutMs() <= 0;
            boolean J2 = J();
            if (z9 || z10 || J2) {
                L(J2);
            }
        }
    }

    @RequiresNonNull({"artworkView"})
    private boolean F(Metadata metadata) {
        byte[] bArr;
        int i4;
        int i10 = -1;
        boolean z9 = false;
        for (int i11 = 0; i11 < metadata.length(); i11++) {
            Metadata.Entry entry = metadata.get(i11);
            if (entry instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) entry;
                bArr = apicFrame.pictureData;
                i4 = apicFrame.pictureType;
            } else if (entry instanceof PictureFrame) {
                PictureFrame pictureFrame = (PictureFrame) entry;
                bArr = pictureFrame.pictureData;
                i4 = pictureFrame.pictureType;
            } else {
                continue;
            }
            if (i10 == -1 || i4 == 3) {
                z9 = G(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
                if (i4 == 3) {
                    break;
                }
                i10 = i4;
            }
        }
        return z9;
    }

    @RequiresNonNull({"artworkView"})
    private boolean G(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                C(this.f26171b, intrinsicWidth / intrinsicHeight);
                this.f26175f.setImageDrawable(drawable);
                this.f26175f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void I(AspectRatioFrameLayout aspectRatioFrameLayout, int i4) {
        aspectRatioFrameLayout.setResizeMode(i4);
    }

    private boolean J() {
        v1 v1Var = this.f26182m;
        if (v1Var == null) {
            return true;
        }
        int c10 = v1Var.c();
        return this.f26192w && (c10 == 1 || c10 == 4 || !this.f26182m.Q0());
    }

    private void L(boolean z9) {
        if (U()) {
            this.f26179j.setShowTimeoutMs(z9 ? 0 : this.f26191v);
            this.f26179j.Q();
        }
    }

    public static void M(v1 v1Var, @Nullable PlayerView playerView, @Nullable PlayerView playerView2) {
        if (playerView == playerView2) {
            return;
        }
        if (playerView2 != null) {
            playerView2.setPlayer(v1Var);
        }
        if (playerView != null) {
            playerView.setPlayer(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N() {
        if (!U() || this.f26182m == null) {
            return false;
        }
        if (!this.f26179j.J()) {
            B(true);
        } else if (this.f26194y) {
            this.f26179j.G();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        int i4;
        if (this.f26177h != null) {
            v1 v1Var = this.f26182m;
            boolean z9 = true;
            if (v1Var == null || v1Var.c() != 2 || ((i4 = this.f26187r) != 2 && (i4 != 1 || !this.f26182m.Q0()))) {
                z9 = false;
            }
            this.f26177h.setVisibility(z9 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        PlayerControlView playerControlView = this.f26179j;
        if (playerControlView != null && this.f26183n) {
            if (playerControlView.getVisibility() == 0) {
                setContentDescription(this.f26194y ? getResources().getString(q.k.f26733g) : null);
                return;
            } else {
                setContentDescription(getResources().getString(q.k.f26748v));
                return;
            }
        }
        setContentDescription(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        if (A() && this.f26193x) {
            x();
        } else {
            B(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        com.google.android.exoplayer2.util.k<? super ExoPlaybackException> kVar;
        TextView textView = this.f26178i;
        if (textView != null) {
            CharSequence charSequence = this.f26190u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f26178i.setVisibility(0);
                return;
            }
            v1 v1Var = this.f26182m;
            ExoPlaybackException k02 = v1Var != null ? v1Var.k0() : null;
            if (k02 != null && (kVar = this.f26189t) != null) {
                this.f26178i.setText((CharSequence) kVar.a(k02).second);
                this.f26178i.setVisibility(0);
                return;
            }
            this.f26178i.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(boolean z9) {
        v1 v1Var = this.f26182m;
        if (v1Var != null && !v1Var.z0().isEmpty()) {
            if (z9 && !this.f26188s) {
                s();
            }
            if (com.google.android.exoplayer2.trackselection.n.b(v1Var.C0(), 2)) {
                w();
                return;
            }
            s();
            if (T()) {
                for (Metadata metadata : v1Var.S()) {
                    if (F(metadata)) {
                        return;
                    }
                }
                if (G(this.f26186q)) {
                    return;
                }
            }
            w();
        } else if (!this.f26188s) {
            w();
            s();
        }
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    private boolean T() {
        if (this.f26185p) {
            com.google.android.exoplayer2.util.a.k(this.f26175f);
            return true;
        }
        return false;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    private boolean U() {
        if (this.f26183n) {
            com.google.android.exoplayer2.util.a.k(this.f26179j);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(TextureView textureView, int i4) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i4 != 0) {
            float f10 = width / 2.0f;
            float f11 = height / 2.0f;
            matrix.postRotate(i4, f10, f11);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f10, f11);
        }
        textureView.setTransform(matrix);
    }

    private void s() {
        View view = this.f26172c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void t(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(q.e.f26592o));
        imageView.setBackgroundColor(resources.getColor(q.c.f26515f));
    }

    @RequiresApi(23)
    private static void u(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(q.e.f26592o, null));
        imageView.setBackgroundColor(resources.getColor(q.c.f26515f, null));
    }

    private void w() {
        ImageView imageView = this.f26175f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f26175f.setVisibility(4);
        }
    }

    @SuppressLint({"InlinedApi"})
    private boolean z(int i4) {
        return i4 == 19 || i4 == 270 || i4 == 22 || i4 == 271 || i4 == 20 || i4 == 269 || i4 == 21 || i4 == 268 || i4 == 23;
    }

    protected void C(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public void D() {
        View view = this.f26173d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void E() {
        View view = this.f26173d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    public void H(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.O(jArr, zArr);
    }

    public void K() {
        L(J());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        v1 v1Var = this.f26182m;
        if (v1Var != null && v1Var.K()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean z9 = z(keyEvent.getKeyCode());
        if (z9 && U() && !this.f26179j.J()) {
            B(true);
        } else if (!v(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            if (z9 && U()) {
                B(true);
                return false;
            }
            return false;
        } else {
            B(true);
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.ui.c
    public List<com.google.android.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f26181l;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 3, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.f26179j;
        if (playerControlView != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(playerControlView, 0));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    @Override // com.google.android.exoplayer2.ui.c
    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.l(this.f26180k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f26192w;
    }

    public boolean getControllerHideOnTouch() {
        return this.f26194y;
    }

    public int getControllerShowTimeoutMs() {
        return this.f26191v;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f26186q;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f26181l;
    }

    @Nullable
    public v1 getPlayer() {
        return this.f26182m;
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.k(this.f26171b);
        return this.f26171b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f26176g;
    }

    public boolean getUseArtwork() {
        return this.f26185p;
    }

    public boolean getUseController() {
        return this.f26183n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f26173d;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!U() || this.f26182m == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 && this.A) {
                this.A = false;
                performClick();
                return true;
            }
            return false;
        }
        this.A = true;
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!U() || this.f26182m == null) {
            return false;
        }
        B(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return N();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        com.google.android.exoplayer2.util.a.k(this.f26171b);
        this.f26171b.setAspectRatioListener(bVar);
    }

    public void setControlDispatcher(com.google.android.exoplayer2.j jVar) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setControlDispatcher(jVar);
    }

    public void setControllerAutoShow(boolean z9) {
        this.f26192w = z9;
    }

    public void setControllerHideDuringAds(boolean z9) {
        this.f26193x = z9;
    }

    public void setControllerHideOnTouch(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26194y = z9;
        P();
    }

    public void setControllerShowTimeoutMs(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26191v = i4;
        if (this.f26179j.J()) {
            K();
        }
    }

    public void setControllerVisibilityListener(@Nullable PlayerControlView.d dVar) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        PlayerControlView.d dVar2 = this.f26184o;
        if (dVar2 == dVar) {
            return;
        }
        if (dVar2 != null) {
            this.f26179j.K(dVar2);
        }
        this.f26184o = dVar;
        if (dVar != null) {
            this.f26179j.z(dVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.i(this.f26178i != null);
        this.f26190u = charSequence;
        R();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f26186q != drawable) {
            this.f26186q = drawable;
            S(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.k<? super ExoPlaybackException> kVar) {
        if (this.f26189t != kVar) {
            this.f26189t = kVar;
            R();
        }
    }

    @Deprecated
    public void setFastForwardIncrementMs(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setFastForwardIncrementMs(i4);
    }

    public void setKeepContentOnPlayerReset(boolean z9) {
        if (this.f26188s != z9) {
            this.f26188s = z9;
            S(false);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable u1 u1Var) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setPlaybackPreparer(u1Var);
    }

    public void setPlayer(@Nullable v1 v1Var) {
        com.google.android.exoplayer2.util.a.i(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(v1Var == null || v1Var.B0() == Looper.getMainLooper());
        v1 v1Var2 = this.f26182m;
        if (v1Var2 == v1Var) {
            return;
        }
        if (v1Var2 != null) {
            v1Var2.W(this.f26170a);
            if (v1Var2.t0(21)) {
                View view = this.f26173d;
                if (view instanceof TextureView) {
                    v1Var2.z((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    v1Var2.G((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.f26176g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f26182m = v1Var;
        if (U()) {
            this.f26179j.setPlayer(v1Var);
        }
        O();
        R();
        S(true);
        if (v1Var != null) {
            if (v1Var.t0(21)) {
                View view2 = this.f26173d;
                if (view2 instanceof TextureView) {
                    v1Var.t((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    v1Var.n((SurfaceView) view2);
                }
            }
            if (this.f26176g != null && v1Var.t0(22)) {
                this.f26176g.setCues(v1Var.q());
            }
            v1Var.p1(this.f26170a);
            B(false);
            return;
        }
        x();
    }

    public void setRepeatToggleModes(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setRepeatToggleModes(i4);
    }

    public void setResizeMode(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26171b);
        this.f26171b.setResizeMode(i4);
    }

    @Deprecated
    public void setRewindIncrementMs(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setRewindIncrementMs(i4);
    }

    public void setShowBuffering(int i4) {
        if (this.f26187r != i4) {
            this.f26187r = i4;
            O();
        }
    }

    public void setShowFastForwardButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setShowFastForwardButton(z9);
    }

    public void setShowMultiWindowTimeBar(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setShowMultiWindowTimeBar(z9);
    }

    public void setShowNextButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setShowNextButton(z9);
    }

    public void setShowPreviousButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setShowPreviousButton(z9);
    }

    public void setShowRewindButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setShowRewindButton(z9);
    }

    public void setShowShuffleButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26179j);
        this.f26179j.setShowShuffleButton(z9);
    }

    public void setShutterBackgroundColor(int i4) {
        View view = this.f26172c;
        if (view != null) {
            view.setBackgroundColor(i4);
        }
    }

    public void setUseArtwork(boolean z9) {
        com.google.android.exoplayer2.util.a.i((z9 && this.f26175f == null) ? false : true);
        if (this.f26185p != z9) {
            this.f26185p = z9;
            S(false);
        }
    }

    public void setUseController(boolean z9) {
        com.google.android.exoplayer2.util.a.i((z9 && this.f26179j == null) ? false : true);
        if (this.f26183n == z9) {
            return;
        }
        this.f26183n = z9;
        if (U()) {
            this.f26179j.setPlayer(this.f26182m);
        } else {
            PlayerControlView playerControlView = this.f26179j;
            if (playerControlView != null) {
                playerControlView.G();
                this.f26179j.setPlayer(null);
            }
        }
        P();
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        super.setVisibility(i4);
        View view = this.f26173d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i4);
        }
    }

    public boolean v(KeyEvent keyEvent) {
        return U() && this.f26179j.B(keyEvent);
    }

    public void x() {
        PlayerControlView playerControlView = this.f26179j;
        if (playerControlView != null) {
            playerControlView.G();
        }
    }

    public boolean y() {
        PlayerControlView playerControlView = this.f26179j;
        return playerControlView != null && playerControlView.J();
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        int i10;
        boolean z9;
        boolean z10;
        int i11;
        int i12;
        boolean z11;
        int i13;
        boolean z12;
        boolean z13;
        int i14;
        boolean z14;
        int i15;
        boolean z15;
        boolean z16;
        a aVar = new a();
        this.f26170a = aVar;
        if (isInEditMode()) {
            this.f26171b = null;
            this.f26172c = null;
            this.f26173d = null;
            this.f26174e = false;
            this.f26175f = null;
            this.f26176g = null;
            this.f26177h = null;
            this.f26178i = null;
            this.f26179j = null;
            this.f26180k = null;
            this.f26181l = null;
            ImageView imageView = new ImageView(context);
            if (com.google.android.exoplayer2.util.z0.f27743a >= 23) {
                u(getResources(), imageView);
            } else {
                t(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i16 = q.i.f26702d;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, q.m.G0, 0, 0);
            try {
                int i17 = q.m.f26805g1;
                boolean hasValue = obtainStyledAttributes.hasValue(i17);
                int color = obtainStyledAttributes.getColor(i17, 0);
                int resourceId = obtainStyledAttributes.getResourceId(q.m.U0, i16);
                boolean z17 = obtainStyledAttributes.getBoolean(q.m.f26825l1, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(q.m.N0, 0);
                boolean z18 = obtainStyledAttributes.getBoolean(q.m.f26829m1, true);
                int i18 = obtainStyledAttributes.getInt(q.m.f26809h1, 1);
                int i19 = obtainStyledAttributes.getInt(q.m.W0, 0);
                int i20 = obtainStyledAttributes.getInt(q.m.f26801f1, 5000);
                boolean z19 = obtainStyledAttributes.getBoolean(q.m.Q0, true);
                boolean z20 = obtainStyledAttributes.getBoolean(q.m.J0, true);
                i11 = obtainStyledAttributes.getInteger(q.m.f26793d1, 0);
                this.f26188s = obtainStyledAttributes.getBoolean(q.m.R0, this.f26188s);
                boolean z21 = obtainStyledAttributes.getBoolean(q.m.P0, true);
                obtainStyledAttributes.recycle();
                i10 = i18;
                i12 = i19;
                i14 = resourceId2;
                z12 = hasValue;
                z10 = z21;
                i16 = resourceId;
                z14 = z18;
                z13 = z17;
                i13 = color;
                z11 = z19;
                z9 = z20;
                i15 = i20;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i10 = 1;
            z9 = true;
            z10 = true;
            i11 = 0;
            i12 = 0;
            z11 = true;
            i13 = 0;
            z12 = false;
            z13 = true;
            i14 = 0;
            z14 = true;
            i15 = 5000;
        }
        LayoutInflater.from(context).inflate(i16, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(q.g.f26630e0);
        this.f26171b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            I(aspectRatioFrameLayout, i12);
        }
        View findViewById = findViewById(q.g.L0);
        this.f26172c = findViewById;
        if (findViewById != null && z12) {
            findViewById.setBackgroundColor(i13);
        }
        if (aspectRatioFrameLayout != null && i10 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i10 == 2) {
                this.f26173d = new TextureView(context);
            } else if (i10 == 3) {
                this.f26173d = new SphericalGLSurfaceView(context);
                z16 = true;
                this.f26173d.setLayoutParams(layoutParams);
                this.f26173d.setOnClickListener(aVar);
                this.f26173d.setClickable(false);
                aspectRatioFrameLayout.addView(this.f26173d, 0);
                z15 = z16;
            } else if (i10 != 4) {
                this.f26173d = new SurfaceView(context);
            } else {
                this.f26173d = new VideoDecoderGLSurfaceView(context);
            }
            z16 = false;
            this.f26173d.setLayoutParams(layoutParams);
            this.f26173d.setOnClickListener(aVar);
            this.f26173d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f26173d, 0);
            z15 = z16;
        } else {
            this.f26173d = null;
            z15 = false;
        }
        this.f26174e = z15;
        this.f26180k = (FrameLayout) findViewById(q.g.W);
        this.f26181l = (FrameLayout) findViewById(q.g.f26684w0);
        ImageView imageView2 = (ImageView) findViewById(q.g.X);
        this.f26175f = imageView2;
        this.f26185p = z13 && imageView2 != null;
        if (i14 != 0) {
            this.f26186q = ContextCompat.getDrawable(getContext(), i14);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(q.g.O0);
        this.f26176g = subtitleView;
        if (subtitleView != null) {
            subtitleView.G();
            subtitleView.H();
        }
        View findViewById2 = findViewById(q.g.f26621b0);
        this.f26177h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f26187r = i11;
        TextView textView = (TextView) findViewById(q.g.f26645j0);
        this.f26178i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i21 = q.g.f26633f0;
        PlayerControlView playerControlView = (PlayerControlView) findViewById(i21);
        View findViewById3 = findViewById(q.g.f26636g0);
        if (playerControlView != null) {
            this.f26179j = playerControlView;
        } else if (findViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f26179j = playerControlView2;
            playerControlView2.setId(i21);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            this.f26179j = null;
        }
        PlayerControlView playerControlView3 = this.f26179j;
        this.f26191v = playerControlView3 != null ? i15 : 0;
        this.f26194y = z11;
        this.f26192w = z9;
        this.f26193x = z10;
        this.f26183n = z14 && playerControlView3 != null;
        x();
        P();
        PlayerControlView playerControlView4 = this.f26179j;
        if (playerControlView4 != null) {
            playerControlView4.z(aVar);
        }
    }
}
