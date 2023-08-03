package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import f7.b;
import iamutkarshtiwari.github.io.ananas.BaseActivity;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.fliter.PhotoProcessing;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase;
import java.util.concurrent.Callable;

/* compiled from: BeautyFragment.java */
/* loaded from: classes3.dex */
public class n extends h implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: k  reason: collision with root package name */
    public static final String f69466k = n.class.getName();

    /* renamed from: l  reason: collision with root package name */
    public static final int f69467l = 7;

    /* renamed from: b  reason: collision with root package name */
    private View f69468b;

    /* renamed from: c  reason: collision with root package name */
    private Dialog f69469c;

    /* renamed from: d  reason: collision with root package name */
    private SeekBar f69470d;

    /* renamed from: e  reason: collision with root package name */
    private SeekBar f69471e;

    /* renamed from: g  reason: collision with root package name */
    private io.reactivex.disposables.c f69473g;

    /* renamed from: h  reason: collision with root package name */
    private Bitmap f69474h;

    /* renamed from: f  reason: collision with root package name */
    private io.reactivex.disposables.b f69472f = new io.reactivex.disposables.b();

    /* renamed from: i  reason: collision with root package name */
    private int f69475i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f69476j = 0;

    /* compiled from: BeautyFragment.java */
    /* loaded from: classes3.dex */
    private final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n.this.U();
        }
    }

    private io.reactivex.i0<Bitmap> d0(final int i4, final int i10) {
        return io.reactivex.i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap f02;
                f02 = n.this.f0(i4, i10);
                return f02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap f0(int i4, int i10) throws Exception {
        Bitmap createBitmap = Bitmap.createBitmap(this.f69443a.h0().copy(Bitmap.Config.ARGB_8888, true));
        PhotoProcessing.handleSmoothAndWhiteSkin(createBitmap, i4, i10);
        return createBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(io.reactivex.disposables.c cVar) throws Exception {
        this.f69469c.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0() throws Exception {
        this.f69469c.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(Bitmap bitmap) throws Exception {
        if (bitmap == null) {
            return;
        }
        this.f69443a.f69319g.setImageBitmap(bitmap);
        this.f69474h = bitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j0(Throwable th) throws Exception {
    }

    public static n k0() {
        return new n();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        this.f69475i = 0;
        this.f69476j = 0;
        this.f69470d.setProgress(0);
        this.f69471e.setProgress(0);
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 0;
        editImageActivity.f69330r.setCurrentItem(0);
        EditImageActivity editImageActivity2 = this.f69443a;
        editImageActivity2.f69319g.setImageBitmap(editImageActivity2.h0());
        this.f69443a.f69319g.setVisibility(0);
        this.f69443a.f69319g.setScaleEnabled(true);
        this.f69443a.f69326n.showPrevious();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 7;
        editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
        this.f69443a.f69319g.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
        this.f69443a.f69319g.setScaleEnabled(false);
        this.f69443a.f69326n.showNext();
    }

    public void c0() {
        Bitmap bitmap = this.f69474h;
        if (bitmap != null && (this.f69475i != 0 || this.f69476j != 0)) {
            this.f69443a.d0(bitmap, true);
        }
        U();
    }

    protected void e0() {
        io.reactivex.disposables.c cVar = this.f69473g;
        if (cVar != null && !cVar.isDisposed()) {
            this.f69473g.dispose();
        }
        this.f69475i = this.f69470d.getProgress();
        int progress = this.f69471e.getProgress();
        this.f69476j = progress;
        int i4 = this.f69475i;
        if (i4 == 0 && progress == 0) {
            EditImageActivity editImageActivity = this.f69443a;
            editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
            return;
        }
        io.reactivex.disposables.c a12 = d0(i4, progress).c1(io.reactivex.schedulers.b.a()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.l
            @Override // n7.g
            public final void accept(Object obj) {
                n.this.g0((io.reactivex.disposables.c) obj);
            }
        }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.j
            @Override // n7.a
            public final void run() {
                n.this.h0();
            }
        }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.k
            @Override // n7.g
            public final void accept(Object obj) {
                n.this.i0((Bitmap) obj);
            }
        }, m.f69456a);
        this.f69473g = a12;
        this.f69472f.b(a12);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f69468b.findViewById(b.i.M0).setOnClickListener(new b());
        this.f69470d.setOnSeekBarChangeListener(this);
        this.f69471e.setOnSeekBarChangeListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(b.l.f67043c0, (ViewGroup) null);
        this.f69468b = inflate;
        this.f69470d = (SeekBar) inflate.findViewById(b.i.f66843k7);
        this.f69471e = (SeekBar) this.f69468b.findViewById(b.i.f66804g9);
        this.f69469c = BaseActivity.G(getActivity(), b.o.f67209v0, false);
        return this.f69468b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f69472f.dispose();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i4, boolean z9) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        e0();
    }
}
