package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.BaseActivity;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.view.RotateImageView;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase;
import java.util.concurrent.Callable;

/* compiled from: RotateFragment.java */
/* loaded from: classes3.dex */
public class e0 extends h implements View.OnClickListener {

    /* renamed from: f  reason: collision with root package name */
    public static final int f69409f = 4;

    /* renamed from: g  reason: collision with root package name */
    public static final String f69410g = e0.class.getName();

    /* renamed from: h  reason: collision with root package name */
    private static final int f69411h = 90;

    /* renamed from: b  reason: collision with root package name */
    private View f69412b;

    /* renamed from: c  reason: collision with root package name */
    private RotateImageView f69413c;

    /* renamed from: d  reason: collision with root package name */
    private Dialog f69414d;

    /* renamed from: e  reason: collision with root package name */
    private io.reactivex.disposables.b f69415e = new io.reactivex.disposables.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RotateFragment.java */
    /* loaded from: classes3.dex */
    public final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e0.this.U();
        }
    }

    private void c0(Bitmap bitmap) {
        this.f69443a.d0(bitmap, true);
        U();
    }

    private io.reactivex.i0<Bitmap> e0(final Bitmap bitmap) {
        return io.reactivex.i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.z
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap j02;
                j02 = e0.this.j0(bitmap);
                return j02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(io.reactivex.disposables.c cVar) throws Exception {
        this.f69414d.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0() throws Exception {
        this.f69414d.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(Bitmap bitmap) throws Exception {
        if (bitmap == null) {
            return;
        }
        c0(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i0(Throwable th) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap j0(Bitmap bitmap) throws Exception {
        RectF imageNewRect = this.f69413c.getImageNewRect();
        Bitmap createBitmap = Bitmap.createBitmap((int) imageNewRect.width(), (int) imageNewRect.height(), Bitmap.Config.ARGB_4444);
        Canvas canvas = new Canvas(createBitmap);
        float width = (imageNewRect.width() / 2.0f) - (bitmap.getWidth() >> 1);
        float height = (imageNewRect.height() / 2.0f) - (bitmap.getHeight() >> 1);
        RectF rectF = new RectF(width, height, bitmap.getWidth() + width, bitmap.getHeight() + height);
        canvas.save();
        canvas.rotate(this.f69413c.getRotateAngle(), imageNewRect.width() / 2.0f, imageNewRect.height() / 2.0f);
        canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rectF, (Paint) null);
        canvas.restore();
        return createBitmap;
    }

    public static e0 k0() {
        return new e0();
    }

    private void l0() {
        this.f69412b.findViewById(b.i.M0).setOnClickListener(new b());
        ((ImageView) this.f69412b.findViewById(b.i.f66974x6)).setOnClickListener(this);
        ((ImageView) this.f69412b.findViewById(b.i.f66994z6)).setOnClickListener(this);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 0;
        editImageActivity.f69330r.setCurrentItem(0);
        this.f69443a.f69319g.setVisibility(0);
        this.f69413c.setVisibility(8);
        this.f69443a.f69326n.showPrevious();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 4;
        editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
        this.f69443a.f69319g.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
        this.f69443a.f69319g.setVisibility(8);
        EditImageActivity editImageActivity2 = this.f69443a;
        editImageActivity2.f69329q.a(editImageActivity2.h0(), this.f69443a.f69319g.getBitmapRect());
        this.f69443a.f69329q.d();
        this.f69443a.f69329q.setVisibility(0);
        this.f69443a.f69326n.showNext();
    }

    public void d0() {
        if (this.f69413c.getRotateAngle() != 0 && this.f69413c.getRotateAngle() % 360 != 0) {
            this.f69415e.b(e0(this.f69443a.h0()).c1(io.reactivex.schedulers.b.a()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.c0
                @Override // n7.g
                public final void accept(Object obj) {
                    e0.this.f0((io.reactivex.disposables.c) obj);
                }
            }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.a0
                @Override // n7.a
                public final void run() {
                    e0.this.g0();
                }
            }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.b0
                @Override // n7.g
                public final void accept(Object obj) {
                    e0.this.h0((Bitmap) obj);
                }
            }, d0.f69407a));
            return;
        }
        U();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f69413c = V().f69329q;
        l0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == b.i.f66974x6) {
            this.f69413c.e(this.f69413c.getRotateAngle() - 90);
        } else if (id == b.i.f66994z6) {
            this.f69413c.e(this.f69413c.getRotateAngle() + 90);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f69412b = layoutInflater.inflate(b.l.f67063h0, (ViewGroup) null);
        this.f69414d = BaseActivity.G(getActivity(), b.o.f67209v0, false);
        return this.f69412b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f69415e.dispose();
        super.onDestroy();
    }
}
