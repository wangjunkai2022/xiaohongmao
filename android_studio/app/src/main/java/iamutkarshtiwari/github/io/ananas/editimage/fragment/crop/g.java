package iamutkarshtiwari.github.io.ananas.editimage.fragment.crop;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.ColorRes;
import androidx.core.content.ContextCompat;
import com.theartofdev.edmodo.cropper.CropImageView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.h;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase;
import io.reactivex.i0;
import java.util.concurrent.Callable;

/* compiled from: CropFragment.java */
/* loaded from: classes3.dex */
public class g extends h {

    /* renamed from: i  reason: collision with root package name */
    public static final int f69393i = 3;

    /* renamed from: j  reason: collision with root package name */
    public static final String f69394j = g.class.getName();

    /* renamed from: k  reason: collision with root package name */
    private static int f69395k = b.f.F3;

    /* renamed from: l  reason: collision with root package name */
    private static int f69396l = b.f.C3;

    /* renamed from: b  reason: collision with root package name */
    private View f69397b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f69398c;

    /* renamed from: d  reason: collision with root package name */
    private CropImageView f69399d;

    /* renamed from: e  reason: collision with root package name */
    private i7.c f69400e;

    /* renamed from: g  reason: collision with root package name */
    private TextView f69402g;

    /* renamed from: f  reason: collision with root package name */
    private c f69401f = new c();

    /* renamed from: h  reason: collision with root package name */
    private io.reactivex.disposables.b f69403h = new io.reactivex.disposables.b();

    /* compiled from: CropFragment.java */
    /* loaded from: classes3.dex */
    private final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.U();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CropFragment.java */
    /* loaded from: classes3.dex */
    public final class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g gVar = g.this;
            gVar.r0(gVar.f69402g, false);
            TextView textView = (TextView) view;
            g.this.r0(textView, true);
            g.this.f69402g = textView;
            RatioText ratioText = (RatioText) textView.getTag();
            if (ratioText == RatioText.FREE) {
                g.this.f69399d.setFixedAspectRatio(false);
            } else if (ratioText == RatioText.FIT_IMAGE) {
                Bitmap h02 = g.this.V().h0();
                g.this.f69399d.F(h02.getWidth(), h02.getHeight());
            } else {
                iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.a aspectRatio = ratioText.getAspectRatio();
                g.this.f69399d.F(aspectRatio.e(), aspectRatio.f());
            }
        }
    }

    private int i0(@ColorRes int i4) {
        return ContextCompat.getColor(this.f69443a, i4);
    }

    private i0<Bitmap> j0() {
        return i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap o02;
                o02 = g.this.o0();
                return o02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(io.reactivex.disposables.c cVar) throws Exception {
        this.f69400e.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0() throws Exception {
        this.f69400e.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(Bitmap bitmap) throws Exception {
        this.f69443a.d0(bitmap, true);
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(Throwable th) throws Exception {
        th.printStackTrace();
        U();
        Toast.makeText(getContext(), "Error while saving image", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap o0() throws Exception {
        return this.f69399d.getCroppedImage();
    }

    public static g p0() {
        return new g();
    }

    private void q0() {
        this.f69398c.removeAllViews();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.leftMargin = 20;
        layoutParams.rightMargin = 20;
        Object[] values = RatioText.values();
        for (int i4 = 0; i4 < values.length; i4++) {
            TextView textView = new TextView(this.f69443a);
            r0(textView, false);
            textView.setTextSize(15.0f);
            textView.setAllCaps(true);
            textView.setTypeface(textView.getTypeface(), 1);
            textView.setText(getResources().getText(values[i4].getRatioTextId()));
            this.f69398c.addView(textView, layoutParams);
            if (i4 == 0) {
                this.f69402g = textView;
            }
            textView.setTag(values[i4]);
            textView.setOnClickListener(this.f69401f);
        }
        r0(this.f69402g, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0(TextView textView, boolean z9) {
        textView.setTextColor(i0(z9 ? f69395k : f69396l));
        textView.setTypeface(z9 ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        this.f69443a.f69321i = 0;
        this.f69399d.setVisibility(8);
        this.f69443a.f69319g.setVisibility(0);
        this.f69443a.f69319g.setScaleEnabled(true);
        this.f69443a.f69330r.setCurrentItem(0);
        TextView textView = this.f69402g;
        if (textView != null) {
            textView.setTextColor(i0(f69396l));
        }
        this.f69443a.f69326n.showPrevious();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 3;
        editImageActivity.f69319g.setVisibility(8);
        this.f69399d.setVisibility(0);
        EditImageActivity editImageActivity2 = this.f69443a;
        editImageActivity2.f69319g.setImageBitmap(editImageActivity2.h0());
        this.f69443a.f69319g.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
        this.f69443a.f69319g.setScaleEnabled(false);
        this.f69443a.f69326n.showNext();
        this.f69399d.setImageBitmap(this.f69443a.h0());
        this.f69399d.setFixedAspectRatio(false);
    }

    public void h0() {
        this.f69403h.b(j0().c1(io.reactivex.android.schedulers.a.c()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.e
            @Override // n7.g
            public final void accept(Object obj) {
                g.this.k0((io.reactivex.disposables.c) obj);
            }
        }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.c
            @Override // n7.a
            public final void run() {
                g.this.l0();
            }
        }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.d
            @Override // n7.g
            public final void accept(Object obj) {
                g.this.m0((Bitmap) obj);
            }
        }, new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.f
            @Override // n7.g
            public final void accept(Object obj) {
                g.this.n0((Throwable) obj);
            }
        }));
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f69400e = V();
        View findViewById = this.f69397b.findViewById(b.i.M0);
        this.f69398c = (LinearLayout) this.f69397b.findViewById(b.i.f66831j6);
        q0();
        this.f69399d = V().f69318f;
        findViewById.setOnClickListener(new b());
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@m8.g LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(b.l.f67051e0, (ViewGroup) null);
        this.f69397b = inflate;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f69403h.dispose();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.f69403h.e();
        super.onStop();
    }
}
