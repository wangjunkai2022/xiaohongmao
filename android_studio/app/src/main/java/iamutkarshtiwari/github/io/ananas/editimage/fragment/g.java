package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import iamutkarshtiwari.github.io.ananas.editimage.layout.ZoomLayout;
import iamutkarshtiwari.github.io.ananas.editimage.view.TextStickerView;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: AddTextFragment.java */
/* loaded from: classes3.dex */
public class g extends h implements i7.f, View.OnClickListener, i7.d, i7.e {

    /* renamed from: h  reason: collision with root package name */
    public static final int f69426h = 5;

    /* renamed from: i  reason: collision with root package name */
    public static final String f69427i = g.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private View f69428b;

    /* renamed from: c  reason: collision with root package name */
    private TextStickerView f69429c;

    /* renamed from: d  reason: collision with root package name */
    private ZoomLayout f69430d;

    /* renamed from: e  reason: collision with root package name */
    private InputMethodManager f69431e;

    /* renamed from: f  reason: collision with root package name */
    private io.reactivex.disposables.b f69432f = new io.reactivex.disposables.b();

    /* renamed from: g  reason: collision with root package name */
    private List<View> f69433g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AddTextFragment.java */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            g.this.f69429c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            g.this.y0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AddTextFragment.java */
    /* loaded from: classes3.dex */
    public class b implements i7.b {

        /* renamed from: a  reason: collision with root package name */
        boolean f69435a = false;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FrameLayout f69436b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f69437c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ View f69438d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ImageView f69439e;

        b(FrameLayout frameLayout, TextView textView, View view, ImageView imageView) {
            this.f69436b = frameLayout;
            this.f69437c = textView;
            this.f69438d = view;
            this.f69439e = imageView;
        }

        @Override // i7.b
        public void a() {
            if (!(this.f69436b.getTag() != null && ((Boolean) this.f69436b.getTag()).booleanValue()) || this.f69435a) {
                return;
            }
            g.this.z0(this.f69438d, this.f69437c.getText().toString(), this.f69437c.getCurrentTextColor());
        }

        @Override // i7.b
        public void b() {
            if (!(this.f69436b.getTag() != null && ((Boolean) this.f69436b.getTag()).booleanValue())) {
                this.f69436b.setBackgroundResource(b.h.F0);
                this.f69439e.setVisibility(0);
                this.f69436b.setTag(Boolean.TRUE);
                g.this.A0(this.f69438d);
                this.f69435a = true;
                return;
            }
            this.f69435a = false;
        }

        @Override // i7.b
        public void c() {
        }
    }

    /* compiled from: AddTextFragment.java */
    /* loaded from: classes3.dex */
    private final class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.U();
        }

        /* synthetic */ c(g gVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(@Nullable View view) {
        for (View view2 : this.f69433g) {
            if (view2 != view) {
                FrameLayout frameLayout = (FrameLayout) view2.findViewById(b.i.H7);
                frameLayout.setBackgroundResource(0);
                ((ImageView) view2.findViewById(b.i.I7)).setVisibility(8);
                frameLayout.setTag(Boolean.FALSE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void h0(String str, int i4) {
        View p02 = p0();
        TextView textView = (TextView) p02.findViewById(b.i.f66936t8);
        ImageView imageView = (ImageView) p02.findViewById(b.i.I7);
        textView.setText(str);
        textView.setTextColor(i4);
        textView.setTextSize(2, getResources().getDimension(b.g.f66595x7));
        iamutkarshtiwari.github.io.ananas.editimage.gesture.a aVar = new iamutkarshtiwari.github.io.ananas.editimage.gesture.a(imageView, this.f69429c, this.f69443a.f69319g, this, getContext());
        aVar.h(new b((FrameLayout) p02.findViewById(b.i.H7), textView, p02, imageView));
        p02.setOnTouchListener(aVar);
        i0(p02);
    }

    private void i0(View view) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        this.f69429c.addView(view, layoutParams);
        this.f69433g.add(view);
        A0(view);
    }

    private void k0() {
        this.f69429c.getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void l0() {
        this.f69429c.removeAllViews();
    }

    private void m0(View view) {
        this.f69429c.removeView(view);
        this.f69433g.remove(view);
        this.f69429c.invalidate();
        A0(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public void w0(View view, String str, int i4) {
        TextView textView = (TextView) view.findViewById(b.i.f66936t8);
        if (textView == null || !this.f69433g.contains(view) || TextUtils.isEmpty(str)) {
            return;
        }
        textView.setText(str);
        textView.setTextColor(i4);
        this.f69429c.updateViewLayout(view, view.getLayoutParams());
        int indexOf = this.f69433g.indexOf(view);
        if (indexOf > -1) {
            this.f69433g.set(indexOf, view);
        }
    }

    private Bitmap o0(View view) {
        Bitmap copy = view.getDrawingCache().copy(Bitmap.Config.ARGB_8888, true);
        int height = this.f69429c.getBitmapHolderImageView().getHeight();
        int width = this.f69429c.getBitmapHolderImageView().getWidth();
        return Bitmap.createBitmap(copy, (this.f69429c.getWidth() / 2) - (width / 2), (this.f69429c.getHeight() / 2) - (height / 2), width, height);
    }

    private View p0() {
        final View inflate = LayoutInflater.from(getContext()).inflate(b.l.f67077k2, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(b.i.f66936t8);
        if (textView != null) {
            textView.setGravity(17);
            ImageView imageView = (ImageView) inflate.findViewById(b.i.I7);
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        g.this.v0(inflate, view);
                    }
                });
            }
        }
        return inflate;
    }

    private boolean r0() {
        return this.f69431e.isActive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap s0() throws Exception {
        return o0(this.f69429c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(Bitmap bitmap) throws Exception {
        if (this.f69433g.size() > 0) {
            this.f69443a.d0(bitmap, true);
        }
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(Throwable th) throws Exception {
        th.printStackTrace();
        U();
        Toast.makeText(getContext(), getString(b.o.H0), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(View view, View view2) {
        m0(view);
    }

    public static g x0() {
        return new g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0() {
        float width = this.f69430d.getWidth();
        float height = this.f69430d.getHeight();
        float width2 = this.f69429c.getWidth();
        float height2 = this.f69429c.getHeight();
        if (height2 == 0.0f || width2 == 0.0f || height == 0.0f || width == 0.0f) {
            return;
        }
        this.f69430d.setChildScale(Math.min(width / width2, height / height2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0(final View view, String str, int i4) {
        p0.a0(this.f69443a, str, i4).Y(new i7.h() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.c
            @Override // i7.h
            public final void a(String str2, int i10) {
                g.this.w0(view, str2, i10);
            }
        });
    }

    @Override // i7.e
    public void F(View view) {
    }

    @Override // i7.f
    public void M() {
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void U() {
        q0();
        l0();
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 0;
        editImageActivity.f69330r.setCurrentItem(0);
        this.f69443a.f69319g.setVisibility(0);
        this.f69443a.f69326n.showPrevious();
        this.f69429c.setVisibility(8);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h
    public void W() {
        EditImageActivity editImageActivity = this.f69443a;
        editImageActivity.f69321i = 5;
        editImageActivity.f69319g.setVisibility(8);
        this.f69429c.b(this.f69443a.h0());
        this.f69443a.f69326n.showNext();
        this.f69429c.setVisibility(0);
        k0();
    }

    @Override // i7.f
    public void f(int i4) {
    }

    @Override // i7.d
    public void j() {
        this.f69429c.b(this.f69443a.h0());
    }

    public void j0() {
        A0(null);
        this.f69432f.b(io.reactivex.z.fromCallable(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap s02;
                s02 = g.this.s0();
                return s02;
            }
        }).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.e
            @Override // n7.g
            public final void accept(Object obj) {
                g.this.t0((Bitmap) obj);
            }
        }, new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.f
            @Override // n7.g
            public final void accept(Object obj) {
                g.this.u0((Throwable) obj);
            }
        }));
    }

    @Override // i7.f
    public void k() {
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.fragment.h, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        EditImageActivity V = V();
        this.f69431e = (InputMethodManager) V.getSystemService("input_method");
        TextStickerView textStickerView = (TextStickerView) V.findViewById(b.i.f66916r8);
        this.f69429c = textStickerView;
        textStickerView.setDrawingCacheEnabled(true);
        this.f69433g = new ArrayList();
        this.f69430d = (ZoomLayout) V.findViewById(b.i.f66926s8);
        this.f69428b.findViewById(b.i.M0).setOnClickListener(new c(this, null));
        ((LinearLayout) this.f69428b.findViewById(b.i.f66898q0)).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == b.i.f66898q0) {
            p0.Z(this.f69443a).Y(new i7.h() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.b
                @Override // i7.h
                public final void a(String str, int i4) {
                    g.this.h0(str, i4);
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(b.l.f67039b0, viewGroup, false);
        this.f69428b = inflate;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f69432f.dispose();
        super.onDestroy();
    }

    @Override // i7.f
    public void q(int i4) {
    }

    public void q0() {
        if (getActivity() == null || getActivity().getCurrentFocus() == null || !r0()) {
            return;
        }
        this.f69431e.hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 2);
    }
}
