package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import android.widget.ViewFlipper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.BaseActivity;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.view.StickerView;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;

/* compiled from: StickerFragment.java */
/* loaded from: classes3.dex */
public class m0 extends h {

    /* renamed from: h  reason: collision with root package name */
    public static final int f69457h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final String f69458i = m0.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private View f69459b;

    /* renamed from: c  reason: collision with root package name */
    private ViewFlipper f69460c;

    /* renamed from: d  reason: collision with root package name */
    private StickerView f69461d;

    /* renamed from: e  reason: collision with root package name */
    private iamutkarshtiwari.github.io.ananas.editimage.adapter.e f69462e;

    /* renamed from: f  reason: collision with root package name */
    private io.reactivex.disposables.b f69463f = new io.reactivex.disposables.b();

    /* renamed from: g  reason: collision with root package name */
    private Dialog f69464g;

    /* compiled from: StickerFragment.java */
    /* loaded from: classes3.dex */
    private final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.U();
        }
    }

    private io.reactivex.i0<Bitmap> d0(final Bitmap bitmap) {
        return io.reactivex.i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.h0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap h02;
                h02 = m0.this.h0(bitmap);
                return h02;
            }
        });
    }

    private StickerView f0() {
        return this.f69461d;
    }

    private void g0(Canvas canvas, Matrix matrix) {
        LinkedHashMap<Integer, iamutkarshtiwari.github.io.ananas.editimage.view.b> bank = this.f69461d.getBank();
        for (Integer num : bank.keySet()) {
            iamutkarshtiwari.github.io.ananas.editimage.view.b bVar = bank.get(num);
            bVar.f69771g.postConcat(matrix);
            canvas.drawBitmap(bVar.f69765a, bVar.f69771g, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap h0(Bitmap bitmap) throws Exception {
        Matrix imageViewMatrix = ((EditImageActivity) requireActivity()).f69319g.getImageViewMatrix();
        Bitmap copy = Bitmap.createBitmap(bitmap).copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(copy);
        float[] fArr = new float[9];
        imageViewMatrix.getValues(fArr);
        iamutkarshtiwari.github.io.ananas.editimage.utils.f c10 = new iamutkarshtiwari.github.io.ananas.editimage.utils.f(fArr).c();
        Matrix matrix = new Matrix();
        matrix.setValues(c10.b());
        g0(canvas, matrix);
        return copy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(io.reactivex.disposables.c cVar) throws Exception {
        this.f69464g.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0() throws Exception {
        this.f69464g.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(Bitmap bitmap) throws Exception {
        if (bitmap == null) {
            return;
        }
        this.f69461d.b();
        this.f69443a.d0(bitmap, true);
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(Throwable th) throws Exception {
        Toast.makeText(getActivity(), b.o.H0, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(View view) {
        this.f69460c.showPrevious();
    }

    public static m0 n0() {
        return new m0();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 0;
        editImageActivity.f69330r.setCurrentItem(0);
        this.f69461d.b();
        this.f69461d.setVisibility(8);
        this.f69443a.f69326n.showPrevious();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 1;
        editImageActivity.f69331s.f0().setVisibility(0);
        this.f69443a.f69326n.showNext();
    }

    public void e0() {
        this.f69463f.e();
        this.f69463f.b(d0(this.f69443a.h0()).c1(io.reactivex.schedulers.b.a()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.k0
            @Override // n7.g
            public final void accept(Object obj) {
                m0.this.i0((io.reactivex.disposables.c) obj);
            }
        }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.i0
            @Override // n7.a
            public final void run() {
                m0.this.j0();
            }
        }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.j0
            @Override // n7.g
            public final void accept(Object obj) {
                m0.this.k0((Bitmap) obj);
            }
        }, new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.l0
            @Override // n7.g
            public final void accept(Object obj) {
                m0.this.l0((Throwable) obj);
            }
        }));
    }

    public void o0(String str) {
        this.f69461d.a(BitmapFactory.decodeResource(getResources(), getResources().getIdentifier(str, "drawable", getContext().getPackageName())));
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f69461d = this.f69443a.f69317e;
        ViewFlipper viewFlipper = (ViewFlipper) this.f69459b.findViewById(b.i.f66861m3);
        this.f69460c = viewFlipper;
        viewFlipper.setInAnimation(this.f69443a, b.a.D);
        this.f69460c.setOutAnimation(this.f69443a, b.a.J);
        RecyclerView recyclerView = (RecyclerView) this.f69459b.findViewById(b.i.L7);
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f69443a);
        linearLayoutManager.setOrientation(0);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(new iamutkarshtiwari.github.io.ananas.editimage.adapter.f(this));
        RecyclerView recyclerView2 = (RecyclerView) this.f69459b.findViewById(b.i.K7);
        recyclerView2.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.f69443a);
        linearLayoutManager2.setOrientation(0);
        recyclerView2.setLayoutManager(linearLayoutManager2);
        iamutkarshtiwari.github.io.ananas.editimage.adapter.e eVar = new iamutkarshtiwari.github.io.ananas.editimage.adapter.e(this);
        this.f69462e = eVar;
        recyclerView2.setAdapter(eVar);
        this.f69459b.findViewById(b.i.M0).setOnClickListener(new b());
        this.f69459b.findViewById(b.i.N0).setOnClickListener(new View.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m0.this.m0(view);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@m8.g LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f69459b = layoutInflater.inflate(b.l.f67071j0, (ViewGroup) null);
        this.f69464g = BaseActivity.G(getActivity(), b.o.I0, false);
        return this.f69459b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f69463f.dispose();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f69463f.e();
        super.onPause();
    }

    public void p0(String str, int i4) {
        this.f69462e.e(str, i4);
        this.f69460c.showNext();
    }
}
