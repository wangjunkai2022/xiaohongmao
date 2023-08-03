package iamutkarshtiwari.github.io.ananas.editimage.gesture;

import android.view.View;
import i7.g;

/* compiled from: ScaleGestureListener.java */
/* loaded from: classes3.dex */
public class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private a f69604a;

    /* renamed from: b  reason: collision with root package name */
    private float f69605b;

    /* renamed from: c  reason: collision with root package name */
    private float f69606c;

    /* renamed from: d  reason: collision with root package name */
    private Vector2D f69607d = new Vector2D();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f69604a = aVar;
    }

    @Override // i7.g
    public boolean a(View view, b bVar) {
        d dVar = new d();
        dVar.f69610c = this.f69604a.f69563d ? bVar.l() : 1.0f;
        dVar.f69611d = this.f69604a.f69561b ? e.a(this.f69607d, bVar.c()) : 0.0f;
        dVar.f69608a = this.f69604a.f69562c ? bVar.g() - this.f69605b : 0.0f;
        dVar.f69609b = this.f69604a.f69562c ? bVar.h() - this.f69606c : 0.0f;
        dVar.f69612e = this.f69605b;
        dVar.f69613f = this.f69606c;
        a aVar = this.f69604a;
        dVar.f69614g = aVar.f69564e;
        dVar.f69615h = aVar.f69565f;
        aVar.g(view, dVar);
        return !this.f69604a.f69579t;
    }

    @Override // i7.g
    public boolean b(View view, b bVar) {
        this.f69605b = bVar.g();
        this.f69606c = bVar.h();
        this.f69607d.set(bVar.c());
        return this.f69604a.f69579t;
    }

    @Override // i7.g
    public void c(View view, b bVar) {
    }
}
