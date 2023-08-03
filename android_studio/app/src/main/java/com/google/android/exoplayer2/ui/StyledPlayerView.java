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
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
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
public class StyledPlayerView extends FrameLayout implements c {
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
    private final a f26263a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f26264b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f26265c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f26266d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f26267e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f26268f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final SubtitleView f26269g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f26270h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f26271i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final StyledPlayerControlView f26272j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final FrameLayout f26273k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final FrameLayout f26274l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private v1 f26275m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26276n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private StyledPlayerControlView.m f26277o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f26278p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Drawable f26279q;

    /* renamed from: r  reason: collision with root package name */
    private int f26280r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f26281s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.util.k<? super ExoPlaybackException> f26282t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private CharSequence f26283u;

    /* renamed from: v  reason: collision with root package name */
    private int f26284v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f26285w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f26286x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f26287y;

    /* renamed from: z  reason: collision with root package name */
    private int f26288z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class a implements v1.h, View.OnLayoutChangeListener, View.OnClickListener, StyledPlayerControlView.m {

        /* renamed from: a  reason: collision with root package name */
        private final s2.b f26289a = new s2.b();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f26290b;

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
            StyledPlayerView.this.O();
            StyledPlayerView.this.Q();
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
            if (StyledPlayerView.this.f26266d instanceof TextureView) {
                if (i11 == 90 || i11 == 270) {
                    f11 = 1.0f / f11;
                }
                if (StyledPlayerView.this.f26288z != 0) {
                    StyledPlayerView.this.f26266d.removeOnLayoutChangeListener(this);
                }
                StyledPlayerView.this.f26288z = i11;
                if (StyledPlayerView.this.f26288z != 0) {
                    StyledPlayerView.this.f26266d.addOnLayoutChangeListener(this);
                }
                StyledPlayerView.r((TextureView) StyledPlayerView.this.f26266d, StyledPlayerView.this.f26288z);
            }
            StyledPlayerView styledPlayerView = StyledPlayerView.this;
            AspectRatioFrameLayout aspectRatioFrameLayout = styledPlayerView.f26264b;
            if (StyledPlayerView.this.f26267e) {
                f11 = 0.0f;
            }
            styledPlayerView.C(aspectRatioFrameLayout, f11);
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.m
        public void d(int i4) {
            StyledPlayerView.this.P();
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public void e(v1.l lVar, v1.l lVar2, int i4) {
            if (StyledPlayerView.this.A() && StyledPlayerView.this.f26286x) {
                StyledPlayerView.this.x();
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
            StyledPlayerView.this.O();
            StyledPlayerView.this.R();
            StyledPlayerView.this.Q();
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
            StyledPlayerView.this.N();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            StyledPlayerView.r((TextureView) view, StyledPlayerView.this.f26288z);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
        public /* synthetic */ void p(int i4, boolean z9) {
            x1.f(this, i4, z9);
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
        public void q() {
            if (StyledPlayerView.this.f26265c != null) {
                StyledPlayerView.this.f26265c.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.text.j
        public void r(List<com.google.android.exoplayer2.text.a> list) {
            if (StyledPlayerView.this.f26269g != null) {
                StyledPlayerView.this.f26269g.r(list);
            }
        }

        @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
        public void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
            v1 v1Var = (v1) com.google.android.exoplayer2.util.a.g(StyledPlayerView.this.f26275m);
            s2 A0 = v1Var.A0();
            if (A0.v()) {
                this.f26290b = null;
            } else if (!v1Var.z0().isEmpty()) {
                this.f26290b = A0.k(v1Var.Y0(), this.f26289a, true).f24554b;
            } else {
                Object obj = this.f26290b;
                if (obj != null) {
                    int f10 = A0.f(obj);
                    if (f10 != -1) {
                        if (v1Var.j0() == A0.j(f10, this.f26289a).f24555c) {
                            return;
                        }
                    }
                    this.f26290b = null;
                }
            }
            StyledPlayerView.this.S(false);
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

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A() {
        v1 v1Var = this.f26275m;
        return v1Var != null && v1Var.K() && this.f26275m.Q0();
    }

    private void B(boolean z9) {
        if (!(A() && this.f26286x) && U()) {
            boolean z10 = this.f26272j.i0() && this.f26272j.getShowTimeoutMs() <= 0;
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
                C(this.f26264b, intrinsicWidth / intrinsicHeight);
                this.f26268f.setImageDrawable(drawable);
                this.f26268f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void I(AspectRatioFrameLayout aspectRatioFrameLayout, int i4) {
        aspectRatioFrameLayout.setResizeMode(i4);
    }

    private boolean J() {
        v1 v1Var = this.f26275m;
        if (v1Var == null) {
            return true;
        }
        int c10 = v1Var.c();
        return this.f26285w && !this.f26275m.A0().v() && (c10 == 1 || c10 == 4 || !((v1) com.google.android.exoplayer2.util.a.g(this.f26275m)).Q0());
    }

    private void L(boolean z9) {
        if (U()) {
            this.f26272j.setShowTimeoutMs(z9 ? 0 : this.f26284v);
            this.f26272j.v0();
        }
    }

    public static void M(v1 v1Var, @Nullable StyledPlayerView styledPlayerView, @Nullable StyledPlayerView styledPlayerView2) {
        if (styledPlayerView == styledPlayerView2) {
            return;
        }
        if (styledPlayerView2 != null) {
            styledPlayerView2.setPlayer(v1Var);
        }
        if (styledPlayerView != null) {
            styledPlayerView.setPlayer(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N() {
        if (U() && this.f26275m != null) {
            if (!this.f26272j.i0()) {
                B(true);
                return true;
            } else if (this.f26287y) {
                this.f26272j.d0();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        int i4;
        if (this.f26270h != null) {
            v1 v1Var = this.f26275m;
            boolean z9 = true;
            if (v1Var == null || v1Var.c() != 2 || ((i4 = this.f26280r) != 2 && (i4 != 1 || !this.f26275m.Q0()))) {
                z9 = false;
            }
            this.f26270h.setVisibility(z9 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        StyledPlayerControlView styledPlayerControlView = this.f26272j;
        if (styledPlayerControlView != null && this.f26276n) {
            if (styledPlayerControlView.i0()) {
                setContentDescription(this.f26287y ? getResources().getString(q.k.f26733g) : null);
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
        if (A() && this.f26286x) {
            x();
        } else {
            B(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        com.google.android.exoplayer2.util.k<? super ExoPlaybackException> kVar;
        TextView textView = this.f26271i;
        if (textView != null) {
            CharSequence charSequence = this.f26283u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f26271i.setVisibility(0);
                return;
            }
            v1 v1Var = this.f26275m;
            ExoPlaybackException k02 = v1Var != null ? v1Var.k0() : null;
            if (k02 != null && (kVar = this.f26282t) != null) {
                this.f26271i.setText((CharSequence) kVar.a(k02).second);
                this.f26271i.setVisibility(0);
                return;
            }
            this.f26271i.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(boolean z9) {
        v1 v1Var = this.f26275m;
        if (v1Var != null && !v1Var.z0().isEmpty()) {
            if (z9 && !this.f26281s) {
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
                if (G(this.f26279q)) {
                    return;
                }
            }
            w();
        } else if (!this.f26281s) {
            w();
            s();
        }
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    private boolean T() {
        if (this.f26278p) {
            com.google.android.exoplayer2.util.a.k(this.f26268f);
            return true;
        }
        return false;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    private boolean U() {
        if (this.f26276n) {
            com.google.android.exoplayer2.util.a.k(this.f26272j);
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
        View view = this.f26265c;
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
        ImageView imageView = this.f26268f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f26268f.setVisibility(4);
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
        View view = this.f26266d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void E() {
        View view = this.f26266d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    public void H(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.t0(jArr, zArr);
    }

    public void K() {
        L(J());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        v1 v1Var = this.f26275m;
        if (v1Var != null && v1Var.K()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean z9 = z(keyEvent.getKeyCode());
        if (z9 && U() && !this.f26272j.i0()) {
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
        FrameLayout frameLayout = this.f26274l;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 3, "Transparent overlay does not impact viewability"));
        }
        StyledPlayerControlView styledPlayerControlView = this.f26272j;
        if (styledPlayerControlView != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(styledPlayerControlView, 0));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    @Override // com.google.android.exoplayer2.ui.c
    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.l(this.f26273k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f26285w;
    }

    public boolean getControllerHideOnTouch() {
        return this.f26287y;
    }

    public int getControllerShowTimeoutMs() {
        return this.f26284v;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f26279q;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f26274l;
    }

    @Nullable
    public v1 getPlayer() {
        return this.f26275m;
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.k(this.f26264b);
        return this.f26264b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f26269g;
    }

    public boolean getUseArtwork() {
        return this.f26278p;
    }

    public boolean getUseController() {
        return this.f26276n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f26266d;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!U() || this.f26275m == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 && this.A) {
                this.A = false;
                return performClick();
            }
            return false;
        }
        this.A = true;
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!U() || this.f26275m == null) {
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
        com.google.android.exoplayer2.util.a.k(this.f26264b);
        this.f26264b.setAspectRatioListener(bVar);
    }

    public void setControlDispatcher(com.google.android.exoplayer2.j jVar) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setControlDispatcher(jVar);
    }

    public void setControllerAutoShow(boolean z9) {
        this.f26285w = z9;
    }

    public void setControllerHideDuringAds(boolean z9) {
        this.f26286x = z9;
    }

    public void setControllerHideOnTouch(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26287y = z9;
        P();
    }

    public void setControllerOnFullScreenModeChangedListener(@Nullable StyledPlayerControlView.d dVar) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26284v = i4;
        if (this.f26272j.i0()) {
            K();
        }
    }

    public void setControllerVisibilityListener(@Nullable StyledPlayerControlView.m mVar) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        StyledPlayerControlView.m mVar2 = this.f26277o;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.f26272j.p0(mVar2);
        }
        this.f26277o = mVar;
        if (mVar != null) {
            this.f26272j.U(mVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.i(this.f26271i != null);
        this.f26283u = charSequence;
        R();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f26279q != drawable) {
            this.f26279q = drawable;
            S(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.k<? super ExoPlaybackException> kVar) {
        if (this.f26282t != kVar) {
            this.f26282t = kVar;
            R();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z9) {
        if (this.f26281s != z9) {
            this.f26281s = z9;
            S(false);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable u1 u1Var) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setPlaybackPreparer(u1Var);
    }

    public void setPlayer(@Nullable v1 v1Var) {
        com.google.android.exoplayer2.util.a.i(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(v1Var == null || v1Var.B0() == Looper.getMainLooper());
        v1 v1Var2 = this.f26275m;
        if (v1Var2 == v1Var) {
            return;
        }
        if (v1Var2 != null) {
            v1Var2.W(this.f26263a);
            View view = this.f26266d;
            if (view instanceof TextureView) {
                v1Var2.z((TextureView) view);
            } else if (view instanceof SurfaceView) {
                v1Var2.G((SurfaceView) view);
            }
        }
        SubtitleView subtitleView = this.f26269g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f26275m = v1Var;
        if (U()) {
            this.f26272j.setPlayer(v1Var);
        }
        O();
        R();
        S(true);
        if (v1Var != null) {
            if (v1Var.t0(21)) {
                View view2 = this.f26266d;
                if (view2 instanceof TextureView) {
                    v1Var.t((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    v1Var.n((SurfaceView) view2);
                }
            }
            if (this.f26269g != null && v1Var.t0(22)) {
                this.f26269g.setCues(v1Var.q());
            }
            v1Var.p1(this.f26263a);
            B(false);
            return;
        }
        x();
    }

    public void setRepeatToggleModes(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setRepeatToggleModes(i4);
    }

    public void setResizeMode(int i4) {
        com.google.android.exoplayer2.util.a.k(this.f26264b);
        this.f26264b.setResizeMode(i4);
    }

    public void setShowBuffering(int i4) {
        if (this.f26280r != i4) {
            this.f26280r = i4;
            O();
        }
    }

    public void setShowFastForwardButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowFastForwardButton(z9);
    }

    public void setShowMultiWindowTimeBar(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowMultiWindowTimeBar(z9);
    }

    public void setShowNextButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowNextButton(z9);
    }

    public void setShowPreviousButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowPreviousButton(z9);
    }

    public void setShowRewindButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowRewindButton(z9);
    }

    public void setShowShuffleButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowShuffleButton(z9);
    }

    public void setShowSubtitleButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowSubtitleButton(z9);
    }

    public void setShowVrButton(boolean z9) {
        com.google.android.exoplayer2.util.a.k(this.f26272j);
        this.f26272j.setShowVrButton(z9);
    }

    public void setShutterBackgroundColor(int i4) {
        View view = this.f26265c;
        if (view != null) {
            view.setBackgroundColor(i4);
        }
    }

    public void setUseArtwork(boolean z9) {
        com.google.android.exoplayer2.util.a.i((z9 && this.f26268f == null) ? false : true);
        if (this.f26278p != z9) {
            this.f26278p = z9;
            S(false);
        }
    }

    public void setUseController(boolean z9) {
        com.google.android.exoplayer2.util.a.i((z9 && this.f26272j == null) ? false : true);
        if (this.f26276n == z9) {
            return;
        }
        this.f26276n = z9;
        if (U()) {
            this.f26272j.setPlayer(this.f26275m);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f26272j;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.d0();
                this.f26272j.setPlayer(null);
            }
        }
        P();
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        super.setVisibility(i4);
        View view = this.f26266d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i4);
        }
    }

    public boolean v(KeyEvent keyEvent) {
        return U() && this.f26272j.W(keyEvent);
    }

    public void x() {
        StyledPlayerControlView styledPlayerControlView = this.f26272j;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.d0();
        }
    }

    public boolean y() {
        StyledPlayerControlView styledPlayerControlView = this.f26272j;
        return styledPlayerControlView != null && styledPlayerControlView.i0();
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet, int i4) {
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
        this.f26263a = aVar;
        if (isInEditMode()) {
            this.f26264b = null;
            this.f26265c = null;
            this.f26266d = null;
            this.f26267e = false;
            this.f26268f = null;
            this.f26269g = null;
            this.f26270h = null;
            this.f26271i = null;
            this.f26272j = null;
            this.f26273k = null;
            this.f26274l = null;
            ImageView imageView = new ImageView(context);
            if (com.google.android.exoplayer2.util.z0.f27743a >= 23) {
                u(getResources(), imageView);
            } else {
                t(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i16 = q.i.f26706h;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, q.m.f26794d2, 0, 0);
            try {
                int i17 = q.m.H2;
                boolean hasValue = obtainStyledAttributes.hasValue(i17);
                int color = obtainStyledAttributes.getColor(i17, 0);
                int resourceId = obtainStyledAttributes.getResourceId(q.m.f26858t2, i16);
                boolean z17 = obtainStyledAttributes.getBoolean(q.m.M2, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(q.m.f26830m2, 0);
                boolean z18 = obtainStyledAttributes.getBoolean(q.m.N2, true);
                int i18 = obtainStyledAttributes.getInt(q.m.I2, 1);
                int i19 = obtainStyledAttributes.getInt(q.m.f26866v2, 0);
                int i20 = obtainStyledAttributes.getInt(q.m.F2, 5000);
                boolean z19 = obtainStyledAttributes.getBoolean(q.m.f26842p2, true);
                boolean z20 = obtainStyledAttributes.getBoolean(q.m.f26810h2, true);
                i11 = obtainStyledAttributes.getInteger(q.m.C2, 0);
                this.f26281s = obtainStyledAttributes.getBoolean(q.m.f26846q2, this.f26281s);
                boolean z21 = obtainStyledAttributes.getBoolean(q.m.f26838o2, true);
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
        this.f26264b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            I(aspectRatioFrameLayout, i12);
        }
        View findViewById = findViewById(q.g.L0);
        this.f26265c = findViewById;
        if (findViewById != null && z12) {
            findViewById.setBackgroundColor(i13);
        }
        if (aspectRatioFrameLayout != null && i10 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i10 == 2) {
                this.f26266d = new TextureView(context);
            } else if (i10 == 3) {
                this.f26266d = new SphericalGLSurfaceView(context);
                z16 = true;
                this.f26266d.setLayoutParams(layoutParams);
                this.f26266d.setOnClickListener(aVar);
                this.f26266d.setClickable(false);
                aspectRatioFrameLayout.addView(this.f26266d, 0);
                z15 = z16;
            } else if (i10 != 4) {
                this.f26266d = new SurfaceView(context);
            } else {
                this.f26266d = new VideoDecoderGLSurfaceView(context);
            }
            z16 = false;
            this.f26266d.setLayoutParams(layoutParams);
            this.f26266d.setOnClickListener(aVar);
            this.f26266d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f26266d, 0);
            z15 = z16;
        } else {
            this.f26266d = null;
            z15 = false;
        }
        this.f26267e = z15;
        this.f26273k = (FrameLayout) findViewById(q.g.W);
        this.f26274l = (FrameLayout) findViewById(q.g.f26684w0);
        ImageView imageView2 = (ImageView) findViewById(q.g.X);
        this.f26268f = imageView2;
        this.f26278p = z13 && imageView2 != null;
        if (i14 != 0) {
            this.f26279q = ContextCompat.getDrawable(getContext(), i14);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(q.g.O0);
        this.f26269g = subtitleView;
        if (subtitleView != null) {
            subtitleView.G();
            subtitleView.H();
        }
        View findViewById2 = findViewById(q.g.f26621b0);
        this.f26270h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f26280r = i11;
        TextView textView = (TextView) findViewById(q.g.f26645j0);
        this.f26271i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i21 = q.g.f26633f0;
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(i21);
        View findViewById3 = findViewById(q.g.f26636g0);
        if (styledPlayerControlView != null) {
            this.f26272j = styledPlayerControlView;
        } else if (findViewById3 != null) {
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f26272j = styledPlayerControlView2;
            styledPlayerControlView2.setId(i21);
            styledPlayerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(styledPlayerControlView2, indexOfChild);
        } else {
            this.f26272j = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f26272j;
        this.f26284v = styledPlayerControlView3 != null ? i15 : 0;
        this.f26287y = z11;
        this.f26285w = z9;
        this.f26286x = z10;
        this.f26276n = z14 && styledPlayerControlView3 != null;
        if (styledPlayerControlView3 != null) {
            styledPlayerControlView3.e0();
            this.f26272j.U(aVar);
        }
        P();
    }
}
