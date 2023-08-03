package iamutkarshtiwari.github.io.ananas.editimage.widget;

import android.graphics.Bitmap;
import android.view.View;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.widget.a;

/* compiled from: RedoUndoController.java */
/* loaded from: classes3.dex */
public class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private View f69836a;

    /* renamed from: b  reason: collision with root package name */
    private View f69837b;

    /* renamed from: c  reason: collision with root package name */
    private View f69838c;

    /* renamed from: d  reason: collision with root package name */
    private EditImageActivity f69839d;

    /* renamed from: e  reason: collision with root package name */
    private iamutkarshtiwari.github.io.ananas.editimage.widget.a f69840e = new iamutkarshtiwari.github.io.ananas.editimage.widget.a();

    /* renamed from: f  reason: collision with root package name */
    private a.InterfaceC0534a f69841f = new a();

    /* compiled from: RedoUndoController.java */
    /* loaded from: classes3.dex */
    class a implements a.InterfaceC0534a {
        a() {
        }

        @Override // iamutkarshtiwari.github.io.ananas.editimage.widget.a.InterfaceC0534a
        public void a(iamutkarshtiwari.github.io.ananas.editimage.widget.a aVar) {
            b.this.e();
        }
    }

    public b(EditImageActivity editImageActivity, View view) {
        this.f69839d = editImageActivity;
        this.f69836a = view;
        this.f69837b = view.findViewById(b.i.T8);
        this.f69838c = this.f69836a.findViewById(b.i.f66884o6);
        this.f69837b.setOnClickListener(this);
        this.f69838c.setOnClickListener(this);
        e();
        this.f69840e.a(this.f69841f);
    }

    public void a() {
        iamutkarshtiwari.github.io.ananas.editimage.widget.a aVar = this.f69840e;
        if (aVar != null) {
            aVar.p(this.f69841f);
            this.f69840e.o();
        }
    }

    protected void b() {
        Bitmap j4 = this.f69840e.j();
        if (j4 == null || j4.isRecycled()) {
            return;
        }
        this.f69839d.d0(j4, false);
    }

    public void c(Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f69840e.n(bitmap);
        this.f69840e.n(bitmap2);
    }

    protected void d() {
        Bitmap i4 = this.f69840e.i();
        if (i4 == null || i4.isRecycled()) {
            return;
        }
        this.f69839d.d0(i4, false);
    }

    public void e() {
        this.f69837b.setVisibility(this.f69840e.b() ? 0 : 4);
        this.f69838c.setVisibility(this.f69840e.c() ? 0 : 4);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f69837b) {
            d();
        } else if (view == this.f69838c) {
            b();
        }
    }
}
