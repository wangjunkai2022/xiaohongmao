package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.view.BrightnessView;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase;

/* compiled from: BrightnessFragment.java */
/* loaded from: classes3.dex */
public class o extends h {

    /* renamed from: e  reason: collision with root package name */
    public static final int f69479e = 8;

    /* renamed from: f  reason: collision with root package name */
    public static final String f69480f = o.class.getName();

    /* renamed from: g  reason: collision with root package name */
    private static final int f69481g = 0;

    /* renamed from: b  reason: collision with root package name */
    private BrightnessView f69482b;

    /* renamed from: c  reason: collision with root package name */
    private SeekBar f69483c;

    /* renamed from: d  reason: collision with root package name */
    private View f69484d;

    /* compiled from: BrightnessFragment.java */
    /* loaded from: classes3.dex */
    class a implements SeekBar.OnSeekBarChangeListener {
        a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i4, boolean z9) {
            o.this.f69443a.f69327o.setBright((i4 - (seekBar.getMax() / 2)) / 10.0f);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* compiled from: BrightnessFragment.java */
    /* loaded from: classes3.dex */
    private final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.U();
        }

        /* synthetic */ b(o oVar, a aVar) {
            this();
        }
    }

    private void Y() {
        SeekBar seekBar = this.f69483c;
        seekBar.setProgress(seekBar.getMax() / 2);
    }

    private void Z(View view) {
        this.f69483c = (SeekBar) view.findViewById(b.i.Z6);
    }

    public static o a0() {
        return new o();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 0;
        editImageActivity.f69330r.setCurrentItem(0);
        this.f69443a.f69319g.setVisibility(0);
        this.f69443a.f69327o.setVisibility(8);
        this.f69443a.f69326n.showPrevious();
        this.f69443a.f69327o.setBright(0.0f);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 8;
        editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
        this.f69443a.f69319g.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
        this.f69443a.f69319g.setVisibility(8);
        EditImageActivity editImageActivity2 = this.f69443a;
        editImageActivity2.f69327o.setImageBitmap(editImageActivity2.h0());
        this.f69443a.f69327o.setVisibility(0);
        Y();
        this.f69443a.f69326n.showNext();
    }

    public void X() {
        if (this.f69483c.getProgress() == this.f69483c.getMax() / 2) {
            U();
            return;
        }
        this.f69443a.d0(iamutkarshtiwari.github.io.ananas.editimage.utils.j.a(((BitmapDrawable) this.f69482b.getDrawable()).getBitmap(), this.f69482b.getBright()), true);
        U();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        View findViewById = this.f69484d.findViewById(b.i.M0);
        this.f69482b = V().f69327o;
        findViewById.setOnClickListener(new b(this, null));
        this.f69483c.setOnSeekBarChangeListener(new a());
        Y();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(b.l.f67047d0, (ViewGroup) null);
        this.f69484d = inflate;
        Z(inflate);
        return this.f69484d;
    }
}
