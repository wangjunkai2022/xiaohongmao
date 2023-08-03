package iamutkarshtiwari.github.io.ananas.editimage.fragment.paint;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import f7.b;
import iamutkarshtiwari.github.io.ananas.BaseActivity;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.b;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.c;
import iamutkarshtiwari.github.io.ananas.editimage.view.CustomPaintView;
import io.reactivex.i0;
import io.reactivex.o0;
import java.util.concurrent.Callable;

/* compiled from: PaintFragment.java */
/* loaded from: classes3.dex */
public class j extends iamutkarshtiwari.github.io.ananas.editimage.fragment.h implements View.OnClickListener, b.a, c.a {

    /* renamed from: p  reason: collision with root package name */
    public static final int f69506p = 6;

    /* renamed from: q  reason: collision with root package name */
    public static final String f69507q = j.class.getName();

    /* renamed from: r  reason: collision with root package name */
    private static final float f69508r = 100.0f;

    /* renamed from: s  reason: collision with root package name */
    private static final float f69509s = 255.0f;

    /* renamed from: t  reason: collision with root package name */
    private static final float f69510t = 50.0f;

    /* renamed from: b  reason: collision with root package name */
    private View f69511b;

    /* renamed from: d  reason: collision with root package name */
    private View f69513d;

    /* renamed from: e  reason: collision with root package name */
    private CustomPaintView f69514e;

    /* renamed from: f  reason: collision with root package name */
    private LinearLayout f69515f;

    /* renamed from: g  reason: collision with root package name */
    private LinearLayout f69516g;

    /* renamed from: h  reason: collision with root package name */
    private b f69517h;

    /* renamed from: i  reason: collision with root package name */
    private c f69518i;

    /* renamed from: j  reason: collision with root package name */
    private Dialog f69519j;

    /* renamed from: c  reason: collision with root package name */
    private boolean f69512c = false;

    /* renamed from: k  reason: collision with root package name */
    private float f69520k = 50.0f;

    /* renamed from: l  reason: collision with root package name */
    private float f69521l = 50.0f;

    /* renamed from: m  reason: collision with root package name */
    private float f69522m = f69509s;

    /* renamed from: n  reason: collision with root package name */
    private int f69523n = -1;

    /* renamed from: o  reason: collision with root package name */
    private io.reactivex.disposables.b f69524o = new io.reactivex.disposables.b();

    private i0<Bitmap> d0(final Bitmap bitmap) {
        return i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap g02;
                g02 = j.this.g0(bitmap);
                return g02;
            }
        });
    }

    private void e0(Canvas canvas, Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float f10 = fArr[0];
        float f11 = fArr[4];
        canvas.save();
        canvas.translate((int) fArr[2], (int) fArr[5]);
        canvas.scale(f10, f11);
        if (this.f69514e.getPaintBit() != null) {
            canvas.drawBitmap(this.f69514e.getPaintBit(), 0.0f, 0.0f, (Paint) null);
        }
        canvas.restore();
    }

    private void f0() {
        this.f69514e.setWidth(50.0f);
        this.f69514e.setColor(-1);
        this.f69514e.setStrokeAlpha(f69509s);
        this.f69514e.setEraserStrokeWidth(50.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap g0(Bitmap bitmap) throws Exception {
        Matrix imageViewMatrix = this.f69443a.f69319g.getImageViewMatrix();
        Bitmap copy = Bitmap.createBitmap(bitmap).copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(copy);
        float[] fArr = new float[9];
        imageViewMatrix.getValues(fArr);
        iamutkarshtiwari.github.io.ananas.editimage.utils.f c10 = new iamutkarshtiwari.github.io.ananas.editimage.utils.f(fArr).c();
        Matrix matrix = new Matrix();
        matrix.setValues(c10.b());
        e0(canvas, matrix);
        return copy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o0 h0(Bitmap bitmap) throws Exception {
        if (bitmap == null) {
            return i0.X(new Throwable("Error occurred while applying paint"));
        }
        return i0.q0(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(io.reactivex.disposables.c cVar) throws Exception {
        this.f69519j.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0() throws Exception {
        this.f69519j.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(Bitmap bitmap) throws Exception {
        this.f69514e.c();
        this.f69443a.d0(bitmap, true);
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l0(Throwable th) throws Exception {
    }

    public static j m0() {
        return new j();
    }

    private void o0() {
        this.f69516g.setOnClickListener(this);
        this.f69515f.setOnClickListener(this);
    }

    private void p0() {
        b bVar = new b();
        this.f69517h = bVar;
        bVar.W(this);
        c cVar = new c();
        this.f69518i = cVar;
        cVar.U(this);
    }

    private void q0(BottomSheetDialogFragment bottomSheetDialogFragment) {
        String tag = bottomSheetDialogFragment.getTag();
        if (bottomSheetDialogFragment.isAdded()) {
            return;
        }
        bottomSheetDialogFragment.show(requireFragmentManager(), tag);
        if (this.f69512c) {
            t0();
        } else {
            s0();
        }
    }

    private void r0() {
        boolean z9 = !this.f69512c;
        this.f69512c = z9;
        this.f69514e.setEraser(z9);
        ((ImageView) this.f69515f.findViewById(b.i.Z2)).setImageResource(this.f69512c ? b.h.f66721x1 : b.h.f66717w1);
        ((ImageView) this.f69516g.findViewById(b.i.f66744b1)).setImageResource(this.f69512c ? b.h.f66693q1 : b.h.f66697r1);
    }

    private void s0() {
        this.f69514e.setColor(this.f69523n);
        this.f69514e.setWidth(this.f69520k);
        this.f69514e.setStrokeAlpha(this.f69522m);
    }

    private void t0() {
        this.f69514e.setEraserStrokeWidth(this.f69521l);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.b.a
    public void I(int i4) {
        this.f69522m = (i4 / f69508r) * f69509s;
        s0();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 0;
        editImageActivity.f69330r.setCurrentItem(0);
        this.f69443a.f69319g.setVisibility(0);
        this.f69443a.f69326n.showPrevious();
        this.f69514e.c();
        this.f69514e.setVisibility(8);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 6;
        editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
        this.f69443a.f69326n.showNext();
        this.f69514e.setVisibility(0);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.b.a, iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.c.a
    public void d(int i4) {
        if (this.f69512c) {
            this.f69521l = i4;
            t0();
            return;
        }
        this.f69520k = i4;
        s0();
    }

    public void n0() {
        this.f69524o.b(d0(this.f69443a.h0()).a0(i.f69505a).c1(io.reactivex.schedulers.b.a()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.g
            @Override // n7.g
            public final void accept(Object obj) {
                j.this.i0((io.reactivex.disposables.c) obj);
            }
        }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.e
            @Override // n7.a
            public final void run() {
                j.this.j0();
            }
        }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.f
            @Override // n7.g
            public final void accept(Object obj) {
                j.this.k0((Bitmap) obj);
            }
        }, h.f69504a));
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f69519j = BaseActivity.G(getActivity(), b.o.f67209v0, false);
        this.f69514e = (CustomPaintView) V().findViewById(b.i.f66880o2);
        this.f69513d = this.f69511b.findViewById(b.i.M0);
        this.f69515f = (LinearLayout) this.f69511b.findViewById(b.i.Y2);
        this.f69516g = (LinearLayout) this.f69511b.findViewById(b.i.f66733a1);
        this.f69511b.findViewById(b.i.f66771d7).setOnClickListener(this);
        p0();
        this.f69513d.setOnClickListener(this);
        o0();
        f0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f69513d) {
            U();
        } else if (view == this.f69515f) {
            if (this.f69512c) {
                return;
            }
            r0();
        } else if (view == this.f69516g) {
            if (this.f69512c) {
                r0();
            }
        } else if (view.getId() == b.i.f66771d7) {
            q0(this.f69512c ? this.f69518i : this.f69517h);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(b.l.f67075k0, (ViewGroup) null);
        this.f69511b = inflate;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f69524o.dispose();
        super.onDestroy();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.b.a
    public void t(int i4) {
        this.f69523n = i4;
        s0();
    }
}
