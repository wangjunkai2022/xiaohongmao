package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.BaseActivity;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.fliter.PhotoProcessing;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase;
import java.util.concurrent.Callable;

/* compiled from: FilterListFragment.java */
/* loaded from: classes3.dex */
public class v extends h {

    /* renamed from: g  reason: collision with root package name */
    public static final int f69531g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f69532h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final String f69533i = v.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private View f69534b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f69535c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f69536d;

    /* renamed from: e  reason: collision with root package name */
    private Dialog f69537e;

    /* renamed from: f  reason: collision with root package name */
    private io.reactivex.disposables.b f69538f = new io.reactivex.disposables.b();

    private io.reactivex.i0<Bitmap> d0(final int i4) {
        return io.reactivex.i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.q
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap g02;
                g02 = v.this.g0(i4);
                return g02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap g0(int i4) throws Exception {
        return PhotoProcessing.a(Bitmap.createBitmap(this.f69443a.h0().copy(Bitmap.Config.RGB_565, true)), i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(io.reactivex.disposables.c cVar) throws Exception {
        this.f69537e.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0() throws Exception {
        this.f69537e.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(Throwable th) throws Exception {
        n0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(View view) {
        U();
    }

    public static v l0() {
        return new v();
    }

    private void n0() {
        Toast.makeText(getActivity(), b.o.H0, 0).show();
    }

    private void o0() {
        Bitmap bitmap = this.f69535c;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f69535c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        Bitmap bitmap2 = this.f69535c;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.f69535c.recycle();
        }
        this.f69535c = bitmap;
        this.f69443a.f69319g.setImageBitmap(bitmap);
        this.f69536d = this.f69535c;
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        this.f69536d = this.f69443a.h0();
        this.f69535c = null;
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
        EditImageActivity editImageActivity2 = this.f69443a;
        editImageActivity2.f69321i = 0;
        editImageActivity2.f69330r.setCurrentItem(0);
        this.f69443a.f69319g.setScaleEnabled(true);
        this.f69443a.f69326n.showPrevious();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 2;
        editImageActivity.f69332t.m0(editImageActivity.h0());
        EditImageActivity editImageActivity2 = this.f69443a;
        editImageActivity2.f69319g.setImageBitmap(editImageActivity2.h0());
        this.f69443a.f69319g.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
        this.f69443a.f69319g.setScaleEnabled(false);
        this.f69443a.f69326n.showNext();
    }

    public void e0() {
        if (this.f69536d == this.f69443a.h0()) {
            U();
            return;
        }
        this.f69443a.d0(this.f69535c, true);
        U();
    }

    public void f0(int i4) {
        if (i4 == 0) {
            EditImageActivity editImageActivity = this.f69443a;
            editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
            this.f69536d = this.f69443a.h0();
            return;
        }
        this.f69538f.b(d0(i4).c1(io.reactivex.schedulers.b.a()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.t
            @Override // n7.g
            public final void accept(Object obj) {
                v.this.h0((io.reactivex.disposables.c) obj);
            }
        }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.r
            @Override // n7.a
            public final void run() {
                v.this.i0();
            }
        }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.s
            @Override // n7.g
            public final void accept(Object obj) {
                v.this.p0((Bitmap) obj);
            }
        }, new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.u
            @Override // n7.g
            public final void accept(Object obj) {
                v.this.j0((Throwable) obj);
            }
        }));
    }

    public void m0(Bitmap bitmap) {
        this.f69536d = bitmap;
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        RecyclerView recyclerView = (RecyclerView) this.f69534b.findViewById(b.i.f66819i3);
        iamutkarshtiwari.github.io.ananas.editimage.adapter.d dVar = new iamutkarshtiwari.github.io.ananas.editimage.adapter.d(this, getContext());
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        recyclerView.setAdapter(dVar);
        this.f69534b.findViewById(b.i.M0).setOnClickListener(new View.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v.this.k0(view);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f69534b = layoutInflater.inflate(b.l.f67055f0, (ViewGroup) null);
        this.f69537e = BaseActivity.G(getActivity(), b.o.f67209v0, false);
        return this.f69534b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        o0();
        this.f69538f.dispose();
        super.onDestroy();
    }
}
