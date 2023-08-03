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
import iamutkarshtiwari.github.io.ananas.editimage.view.SaturationView;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase;

/* compiled from: SaturationFragment.java */
/* loaded from: classes3.dex */
public class f0 extends h {

    /* renamed from: e  reason: collision with root package name */
    public static final int f69418e = 9;

    /* renamed from: f  reason: collision with root package name */
    private static final int f69419f = 100;

    /* renamed from: g  reason: collision with root package name */
    public static final String f69420g = f0.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private SaturationView f69421b;

    /* renamed from: c  reason: collision with root package name */
    private SeekBar f69422c;

    /* renamed from: d  reason: collision with root package name */
    private View f69423d;

    /* compiled from: SaturationFragment.java */
    /* loaded from: classes3.dex */
    class a implements SeekBar.OnSeekBarChangeListener {
        a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i4, boolean z9) {
            f0.this.f69443a.f69328p.setSaturation((i4 - (seekBar.getMax() / 2)) / 10.0f);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* compiled from: SaturationFragment.java */
    /* loaded from: classes3.dex */
    private final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f0.this.U();
        }

        /* synthetic */ b(f0 f0Var, a aVar) {
            this();
        }
    }

    private void Y() {
        SeekBar seekBar = this.f69422c;
        seekBar.setProgress(seekBar.getMax());
    }

    private void Z(View view) {
        this.f69422c = (SeekBar) view.findViewById(b.i.Z6);
    }

    public static f0 a0() {
        return new f0();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 0;
        editImageActivity.f69330r.setCurrentItem(0);
        this.f69443a.f69319g.setVisibility(0);
        this.f69443a.f69328p.setVisibility(8);
        this.f69443a.f69326n.showPrevious();
        this.f69443a.f69328p.setSaturation(100.0f);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 9;
        editImageActivity.f69319g.setImageBitmap(editImageActivity.h0());
        this.f69443a.f69319g.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
        this.f69443a.f69319g.setVisibility(8);
        EditImageActivity editImageActivity2 = this.f69443a;
        editImageActivity2.f69328p.setImageBitmap(editImageActivity2.h0());
        this.f69443a.f69328p.setVisibility(0);
        Y();
        this.f69443a.f69326n.showNext();
    }

    public void X() {
        if (this.f69422c.getProgress() == this.f69422c.getMax()) {
            U();
            return;
        }
        this.f69443a.d0(iamutkarshtiwari.github.io.ananas.editimage.utils.j.d(((BitmapDrawable) this.f69421b.getDrawable()).getBitmap(), this.f69421b.getSaturation()), true);
        U();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        View findViewById = this.f69423d.findViewById(b.i.M0);
        this.f69421b = V().f69328p;
        findViewById.setOnClickListener(new b(this, null));
        this.f69422c.setOnSeekBarChangeListener(new a());
        Y();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(b.l.f67067i0, (ViewGroup) null);
        this.f69423d = inflate;
        Z(inflate);
        return this.f69423d;
    }
}
