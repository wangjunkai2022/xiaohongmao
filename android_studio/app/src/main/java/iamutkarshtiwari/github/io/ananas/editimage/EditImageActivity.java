package iamutkarshtiwari.github.io.ananas.editimage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;
import androidx.activity.result.ActivityResultLauncher;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.theartofdev.edmodo.cropper.CropImageView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.BaseActivity;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.e0;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.f0;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.m0;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.v;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.y;
import iamutkarshtiwari.github.io.ananas.editimage.view.BrightnessView;
import iamutkarshtiwari.github.io.ananas.editimage.view.CustomPaintView;
import iamutkarshtiwari.github.io.ananas.editimage.view.CustomViewPager;
import iamutkarshtiwari.github.io.ananas.editimage.view.RotateImageView;
import iamutkarshtiwari.github.io.ananas.editimage.view.SaturationView;
import iamutkarshtiwari.github.io.ananas.editimage.view.StickerView;
import iamutkarshtiwari.github.io.ananas.editimage.view.TextStickerView;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouch;
import iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase;
import io.reactivex.i0;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public class EditImageActivity extends BaseActivity implements i7.c {
    public static final String K = "is_image_edited";
    public static final int L = 0;
    public static final int M = 1;
    public static final int N = 2;
    public static final int O = 3;
    public static final int P = 4;
    public static final int Q = 5;
    public static final int R = 6;
    public static final int S = 7;
    public static final int T = 8;
    public static final int U = 9;
    private static final int V = 110;
    public f0 A;
    private int C;
    private int D;
    private Bitmap E;
    private Dialog F;
    private y G;
    private iamutkarshtiwari.github.io.ananas.editimage.widget.b H;
    private i7.d I;

    /* renamed from: b  reason: collision with root package name */
    public String f69314b;

    /* renamed from: c  reason: collision with root package name */
    public String f69315c;

    /* renamed from: d  reason: collision with root package name */
    public String f69316d;

    /* renamed from: e  reason: collision with root package name */
    public StickerView f69317e;

    /* renamed from: f  reason: collision with root package name */
    public CropImageView f69318f;

    /* renamed from: g  reason: collision with root package name */
    public ImageViewTouch f69319g;

    /* renamed from: h  reason: collision with root package name */
    public TextStickerView f69320h;

    /* renamed from: m  reason: collision with root package name */
    public CustomPaintView f69325m;

    /* renamed from: n  reason: collision with root package name */
    public ViewFlipper f69326n;

    /* renamed from: o  reason: collision with root package name */
    public BrightnessView f69327o;

    /* renamed from: p  reason: collision with root package name */
    public SaturationView f69328p;

    /* renamed from: q  reason: collision with root package name */
    public RotateImageView f69329q;

    /* renamed from: r  reason: collision with root package name */
    public CustomViewPager f69330r;

    /* renamed from: s  reason: collision with root package name */
    public m0 f69331s;

    /* renamed from: t  reason: collision with root package name */
    public v f69332t;

    /* renamed from: u  reason: collision with root package name */
    public iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.g f69333u;

    /* renamed from: v  reason: collision with root package name */
    public e0 f69334v;

    /* renamed from: w  reason: collision with root package name */
    public iamutkarshtiwari.github.io.ananas.editimage.fragment.g f69335w;

    /* renamed from: x  reason: collision with root package name */
    public iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.j f69336x;

    /* renamed from: y  reason: collision with root package name */
    public iamutkarshtiwari.github.io.ananas.editimage.fragment.n f69337y;

    /* renamed from: z  reason: collision with root package name */
    public iamutkarshtiwari.github.io.ananas.editimage.fragment.o f69338z;

    /* renamed from: a  reason: collision with root package name */
    private final String[] f69313a = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: i  reason: collision with root package name */
    public int f69321i = 0;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f69322j = false;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f69323k = false;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f69324l = false;
    protected int B = 0;
    private final io.reactivex.disposables.b J = new io.reactivex.disposables.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditImageActivity editImageActivity = EditImageActivity.this;
            switch (editImageActivity.f69321i) {
                case 1:
                    editImageActivity.f69331s.e0();
                    return;
                case 2:
                    editImageActivity.f69332t.e0();
                    return;
                case 3:
                    editImageActivity.f69333u.h0();
                    return;
                case 4:
                    editImageActivity.f69334v.d0();
                    return;
                case 5:
                    editImageActivity.f69335w.j0();
                    return;
                case 6:
                    editImageActivity.f69336x.n0();
                    return;
                case 7:
                    editImageActivity.f69337y.c0();
                    return;
                case 8:
                    editImageActivity.f69338z.X();
                    return;
                case 9:
                    editImageActivity.A.X();
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class c extends FragmentPagerAdapter {
        c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 10;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i4) {
            switch (i4) {
                case 0:
                    return EditImageActivity.this.G;
                case 1:
                    return EditImageActivity.this.f69331s;
                case 2:
                    return EditImageActivity.this.f69332t;
                case 3:
                    return EditImageActivity.this.f69333u;
                case 4:
                    return EditImageActivity.this.f69334v;
                case 5:
                    return EditImageActivity.this.f69335w;
                case 6:
                    return EditImageActivity.this.f69336x;
                case 7:
                    return EditImageActivity.this.f69337y;
                case 8:
                    return EditImageActivity.this.f69338z;
                case 9:
                    return EditImageActivity.this.A;
                default:
                    return y.b0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class d implements View.OnClickListener {
        private d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditImageActivity editImageActivity = EditImageActivity.this;
            if (editImageActivity.B == 0) {
                editImageActivity.A0();
            } else {
                editImageActivity.f0();
            }
        }
    }

    private i0<Boolean> C0(final Bitmap bitmap) {
        return i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean x02;
                x02 = EditImageActivity.this.x0(bitmap);
                return x02;
            }
        });
    }

    private void E0(i7.d dVar) {
        this.I = dVar;
    }

    private void F0(@StringRes int i4) {
        Toast.makeText(this, i4, 0).show();
    }

    public static void G0(ActivityResultLauncher<Intent> activityResultLauncher, Intent intent, Context context) {
        if (TextUtils.isEmpty(intent.getStringExtra(p.f69657o))) {
            Toast.makeText(context, b.o.f67218y0, 0).show();
        } else {
            activityResultLauncher.launch(intent);
        }
    }

    private void e0() {
        if (this.f69335w.isAdded()) {
            this.f69335w.q0();
        }
    }

    private void g0() {
        this.f69323k = getIntent().getBooleanExtra(p.f69659q, false);
        this.f69324l = getIntent().getBooleanExtra(p.f69661s, false);
        this.f69314b = getIntent().getStringExtra(p.f69657o);
        this.f69315c = getIntent().getStringExtra(p.f69658p);
        this.f69316d = getIntent().getStringExtra(p.f69660r);
    }

    private void initView() {
        TextView textView = (TextView) findViewById(b.i.C8);
        String str = this.f69316d;
        if (str != null) {
            textView.setText(str);
        }
        this.F = BaseActivity.G(this, b.o.f67209v0, false);
        if (getSupportActionBar() != null) {
            if (this.f69324l) {
                getSupportActionBar().show();
            } else {
                getSupportActionBar().hide();
            }
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.C = displayMetrics.widthPixels / 2;
        this.D = displayMetrics.heightPixels / 2;
        ViewFlipper viewFlipper = (ViewFlipper) findViewById(b.i.P0);
        this.f69326n = viewFlipper;
        viewFlipper.setInAnimation(this, b.a.D);
        this.f69326n.setOutAnimation(this, b.a.J);
        findViewById(b.i.D0).setOnClickListener(new b());
        findViewById(b.i.D6).setOnClickListener(new d());
        this.f69319g = (ImageViewTouch) findViewById(b.i.f66872n4);
        findViewById(b.i.L0).setOnClickListener(new View.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditImageActivity.this.n0(view);
            }
        });
        this.f69317e = (StickerView) findViewById(b.i.J7);
        this.f69318f = (CropImageView) findViewById(b.i.f66818i2);
        this.f69329q = (RotateImageView) findViewById(b.i.f66984y6);
        this.f69320h = (TextStickerView) findViewById(b.i.f66916r8);
        this.f69325m = (CustomPaintView) findViewById(b.i.f66880o2);
        this.f69327o = (BrightnessView) findViewById(b.i.Z0);
        this.f69328p = (SaturationView) findViewById(b.i.X1);
        this.f69330r = (CustomViewPager) findViewById(b.i.X0);
        y b02 = y.b0();
        this.G = b02;
        b02.setArguments(getIntent().getExtras());
        c cVar = new c(getSupportFragmentManager());
        this.f69331s = m0.n0();
        this.f69332t = v.l0();
        this.f69333u = iamutkarshtiwari.github.io.ananas.editimage.fragment.crop.g.p0();
        this.f69334v = e0.k0();
        this.f69336x = iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.j.m0();
        this.f69337y = iamutkarshtiwari.github.io.ananas.editimage.fragment.n.k0();
        this.f69338z = iamutkarshtiwari.github.io.ananas.editimage.fragment.o.a0();
        this.A = f0.a0();
        iamutkarshtiwari.github.io.ananas.editimage.fragment.g x02 = iamutkarshtiwari.github.io.ananas.editimage.fragment.g.x0();
        this.f69335w = x02;
        E0(x02);
        this.f69330r.setAdapter(cVar);
        this.f69319g.setFlingListener(new ImageViewTouch.b() { // from class: iamutkarshtiwari.github.io.ananas.editimage.i
            @Override // iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouch.b
            public final void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
                EditImageActivity.this.o0(motionEvent, motionEvent2, f10, f11);
            }
        });
        this.H = new iamutkarshtiwari.github.io.ananas.editimage.widget.b(this, findViewById(b.i.f66894p6));
        if (!iamutkarshtiwari.github.io.ananas.editimage.utils.h.c(this, this.f69313a)) {
            ActivityCompat.requestPermissions(this, this.f69313a, 110);
        }
        z0(this.f69314b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(io.reactivex.disposables.c cVar) throws Exception {
        this.F.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0() throws Exception {
        this.F.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            B0();
            A0();
            return;
        }
        F0(b.o.H0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(Throwable th) throws Exception {
        F0(b.o.H0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(View view) {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        if (f11 > 1.0f) {
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap p0(String str) throws Exception {
        return iamutkarshtiwari.github.io.ananas.editimage.utils.a.l(str, this.C, this.D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(Bitmap bitmap) throws Exception {
        this.G.E(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0() throws Exception {
        this.F.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(Bitmap bitmap) throws Exception {
        d0(bitmap, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(Throwable th) throws Exception {
        F0(b.o.f67206u0);
        Log.wtf("Error", th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(io.reactivex.disposables.c cVar) throws Exception {
        this.F.show();
        this.G.E(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(DialogInterface dialogInterface, int i4) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean x0(Bitmap bitmap) throws Exception {
        if (TextUtils.isEmpty(this.f69315c)) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(iamutkarshtiwari.github.io.ananas.editimage.utils.a.u(bitmap, this.f69315c));
    }

    private i0<Bitmap> y0(final String str) {
        return i0.h0(new Callable() { // from class: iamutkarshtiwari.github.io.ananas.editimage.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bitmap p02;
                p02 = EditImageActivity.this.p0(str);
                return p02;
            }
        });
    }

    private void z0(String str) {
        this.J.b(y0(str).c1(io.reactivex.schedulers.b.d()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.c
            @Override // n7.g
            public final void accept(Object obj) {
                EditImageActivity.this.u0((io.reactivex.disposables.c) obj);
            }
        }).U(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.o
            @Override // n7.g
            public final void accept(Object obj) {
                EditImageActivity.this.q0((Bitmap) obj);
            }
        }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.m
            @Override // n7.a
            public final void run() {
                EditImageActivity.this.r0();
            }
        }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.n
            @Override // n7.g
            public final void accept(Object obj) {
                EditImageActivity.this.s0((Bitmap) obj);
            }
        }, new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.f
            @Override // n7.g
            public final void accept(Object obj) {
                EditImageActivity.this.t0((Throwable) obj);
            }
        }));
    }

    protected void A0() {
        Intent intent = new Intent();
        intent.putExtra(p.f69657o, this.f69314b);
        intent.putExtra(p.f69658p, this.f69315c);
        intent.putExtra(K, this.B > 0);
        setResult(-1, intent);
        finish();
    }

    public void B0() {
        this.f69322j = true;
    }

    protected void D0(boolean z9) {
        setRequestedOrientation(z9 ? 14 : 10);
    }

    @Override // i7.c
    public void a() {
        this.F.dismiss();
    }

    @Override // i7.c
    public void c() {
        this.F.show();
    }

    public boolean c0() {
        return this.f69322j || this.B == 0;
    }

    public void d0(Bitmap bitmap, boolean z9) {
        if (bitmap == null) {
            return;
        }
        Bitmap bitmap2 = this.E;
        if (bitmap2 == null || bitmap2 != bitmap) {
            if (z9) {
                this.H.c(bitmap2, bitmap);
                i0();
            }
            this.E = bitmap;
            this.f69319g.setImageBitmap(bitmap);
            this.f69319g.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
            if (this.f69321i == 5) {
                this.I.j();
            }
        }
    }

    protected void f0() {
        if (this.B <= 0) {
            return;
        }
        this.J.b(C0(this.E).c1(io.reactivex.schedulers.b.d()).H0(io.reactivex.android.schedulers.a.c()).T(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.b
            @Override // n7.g
            public final void accept(Object obj) {
                EditImageActivity.this.j0((io.reactivex.disposables.c) obj);
            }
        }).P(new n7.a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.l
            @Override // n7.a
            public final void run() {
                EditImageActivity.this.k0();
            }
        }).a1(new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.d
            @Override // n7.g
            public final void accept(Object obj) {
                EditImageActivity.this.l0((Boolean) obj);
            }
        }, new n7.g() { // from class: iamutkarshtiwari.github.io.ananas.editimage.e
            @Override // n7.g
            public final void accept(Object obj) {
                EditImageActivity.this.m0((Throwable) obj);
            }
        }));
    }

    public Bitmap h0() {
        return this.E;
    }

    public void i0() {
        this.B++;
        this.f69322j = false;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        switch (this.f69321i) {
            case 1:
                this.f69331s.U();
                return;
            case 2:
                this.f69332t.U();
                return;
            case 3:
                this.f69333u.U();
                return;
            case 4:
                this.f69334v.U();
                return;
            case 5:
                this.f69335w.U();
                return;
            case 6:
                this.f69336x.U();
                return;
            case 7:
                this.f69337y.U();
                return;
            case 8:
                this.f69338z.U();
                return;
            case 9:
                this.A.U();
                return;
            default:
                if (c0()) {
                    A0();
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage(b.o.f67179n0).setCancelable(false).setPositiveButton(b.o.f67159i0, new DialogInterface.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.a
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        EditImageActivity.this.v0(dialogInterface, i4);
                    }
                }).setNegativeButton(b.o.f67155h0, g.f69558a);
                builder.create().show();
                return;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(b.l.C);
        g0();
        initView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.J.dispose();
        iamutkarshtiwari.github.io.ananas.editimage.widget.b bVar = this.H;
        if (bVar != null) {
            bVar.a();
        }
        if (this.f69323k) {
            return;
        }
        D0(false);
    }

    @Override // android.view.Window.Callback
    public void onPointerCaptureChanged(boolean z9) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i4, @m8.g String[] strArr, @m8.g int[] iArr) {
        if (i4 == 110 && (iArr.length <= 0 || iArr[0] != 0)) {
            finish();
        }
        super.onRequestPermissionsResult(i4, strArr, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f69323k) {
            setRequestedOrientation(1);
        } else {
            D0(true);
        }
    }
}
