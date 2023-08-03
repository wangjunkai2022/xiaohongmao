package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import f7.b;

/* compiled from: MainMenuFragment.java */
/* loaded from: classes3.dex */
public class y extends h implements View.OnClickListener, h7.a {

    /* renamed from: o  reason: collision with root package name */
    public static final int f69541o = 0;

    /* renamed from: p  reason: collision with root package name */
    public static final String f69542p = y.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private View f69543b;

    /* renamed from: c  reason: collision with root package name */
    private View f69544c;

    /* renamed from: d  reason: collision with root package name */
    private View f69545d;

    /* renamed from: e  reason: collision with root package name */
    private View f69546e;

    /* renamed from: f  reason: collision with root package name */
    private View f69547f;

    /* renamed from: g  reason: collision with root package name */
    private View f69548g;

    /* renamed from: h  reason: collision with root package name */
    private View f69549h;

    /* renamed from: i  reason: collision with root package name */
    private View f69550i;

    /* renamed from: j  reason: collision with root package name */
    private View f69551j;

    /* renamed from: k  reason: collision with root package name */
    private View f69552k;

    /* renamed from: l  reason: collision with root package name */
    private Bundle f69553l;

    /* renamed from: m  reason: collision with root package name */
    private final io.reactivex.subjects.b<Boolean> f69554m = io.reactivex.subjects.b.i();

    /* renamed from: n  reason: collision with root package name */
    private final io.reactivex.disposables.b f69555n = new io.reactivex.disposables.b();

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z(Boolean bool) throws Exception {
        this.f69544c.setClickable(bool.booleanValue());
        this.f69545d.setClickable(bool.booleanValue());
        this.f69546e.setClickable(bool.booleanValue());
        this.f69547f.setClickable(bool.booleanValue());
        this.f69548g.setClickable(bool.booleanValue());
        this.f69549h.setClickable(bool.booleanValue());
        this.f69550i.setClickable(bool.booleanValue());
        this.f69551j.setClickable(bool.booleanValue());
        this.f69552k.setClickable(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a0(Throwable th) throws Exception {
    }

    public static y b0() {
        return new y();
    }

    private void c0() {
        this.f69443a.f69330r.setCurrentItem(5);
        this.f69443a.f69335w.W();
    }

    private void d0() {
        this.f69443a.f69330r.setCurrentItem(7);
        this.f69443a.f69337y.W();
    }

    private void e0() {
        this.f69443a.f69330r.setCurrentItem(8);
        this.f69443a.f69338z.W();
    }

    private void f0() {
        this.f69443a.f69330r.setCurrentItem(9);
        this.f69443a.A.W();
    }

    private void g0() {
        this.f69443a.f69330r.setCurrentItem(3);
        this.f69443a.f69333u.W();
    }

    private void h0() {
        this.f69443a.f69330r.setCurrentItem(2);
        this.f69443a.f69332t.W();
    }

    private void i0() {
        this.f69443a.f69330r.setCurrentItem(6);
        this.f69443a.f69336x.W();
    }

    private void j0() {
        this.f69443a.f69330r.setCurrentItem(4);
        this.f69443a.f69334v.W();
    }

    private void k0() {
        this.f69443a.f69330r.setCurrentItem(1);
        this.f69443a.f69331s.W();
    }

    private void l0() {
        this.f69555n.b(this.f69554m.subscribeOn(io.reactivex.android.schedulers.a.c()).subscribe(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.w
            @Override // n7.g
            public final void accept(Object obj) {
                y.this.Z((Boolean) obj);
            }
        }, x.f69540a));
    }

    @Override // h7.a
    public void E(boolean z9) {
        this.f69554m.onNext(Boolean.valueOf(z9));
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f69544c = this.f69543b.findViewById(b.i.f66827j1);
        this.f69545d = this.f69543b.findViewById(b.i.f66797g1);
        this.f69546e = this.f69543b.findViewById(b.i.f66786f1);
        this.f69547f = this.f69543b.findViewById(b.i.f66817i1);
        this.f69548g = this.f69543b.findViewById(b.i.f66837k1);
        this.f69549h = this.f69543b.findViewById(b.i.f66807h1);
        this.f69550i = this.f69543b.findViewById(b.i.f66755c1);
        this.f69551j = this.f69543b.findViewById(b.i.f66766d1);
        this.f69552k = this.f69543b.findViewById(b.i.f66776e1);
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69656n, false)) {
            this.f69544c.setVisibility(0);
            this.f69544c.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69650h, false)) {
            this.f69545d.setVisibility(0);
            this.f69545d.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69652j, false)) {
            this.f69546e.setVisibility(0);
            this.f69546e.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69651i, false)) {
            this.f69547f.setVisibility(0);
            this.f69547f.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69648f, false)) {
            this.f69548g.setVisibility(0);
            this.f69548g.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69649g, false)) {
            this.f69549h.setVisibility(0);
            this.f69549h.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69655m, false)) {
            this.f69550i.setVisibility(0);
            this.f69550i.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69653k, false)) {
            this.f69551j.setVisibility(0);
            this.f69551j.setOnClickListener(this);
        }
        if (this.f69553l.getBoolean(iamutkarshtiwari.github.io.ananas.editimage.p.f69654l, false)) {
            this.f69552k.setVisibility(0);
            this.f69552k.setOnClickListener(this);
        }
        l0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f69544c) {
            k0();
        } else if (view == this.f69545d) {
            h0();
        } else if (view == this.f69546e) {
            g0();
        } else if (view == this.f69547f) {
            j0();
        } else if (view == this.f69548g) {
            c0();
        } else if (view == this.f69549h) {
            i0();
        } else if (view == this.f69550i) {
            d0();
        } else if (view == this.f69551j) {
            e0();
        } else if (view == this.f69552k) {
            f0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f69543b = layoutInflater.inflate(b.l.f67059g0, (ViewGroup) null);
        this.f69553l = getArguments();
        return this.f69543b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f69555n.dispose();
        super.onDestroyView();
    }
}
