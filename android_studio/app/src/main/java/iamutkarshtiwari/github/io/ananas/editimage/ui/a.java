package iamutkarshtiwari.github.io.ananas.editimage.ui;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.TextView;
import f7.b;

/* compiled from: ColorPicker.java */
/* loaded from: classes3.dex */
public class a extends Dialog implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: p  reason: collision with root package name */
    private static final String f69676p = "#%02x%02x%02x";

    /* renamed from: a  reason: collision with root package name */
    public Activity f69677a;

    /* renamed from: b  reason: collision with root package name */
    public Dialog f69678b;

    /* renamed from: c  reason: collision with root package name */
    View f69679c;

    /* renamed from: d  reason: collision with root package name */
    SeekBar f69680d;

    /* renamed from: e  reason: collision with root package name */
    SeekBar f69681e;

    /* renamed from: f  reason: collision with root package name */
    SeekBar f69682f;

    /* renamed from: g  reason: collision with root package name */
    TextView f69683g;

    /* renamed from: h  reason: collision with root package name */
    TextView f69684h;

    /* renamed from: i  reason: collision with root package name */
    TextView f69685i;

    /* renamed from: j  reason: collision with root package name */
    EditText f69686j;

    /* renamed from: k  reason: collision with root package name */
    private int f69687k;

    /* renamed from: l  reason: collision with root package name */
    private int f69688l;

    /* renamed from: m  reason: collision with root package name */
    private int f69689m;

    /* renamed from: n  reason: collision with root package name */
    int f69690n;

    /* renamed from: o  reason: collision with root package name */
    Rect f69691o;

    public a(Activity activity) {
        super(activity);
        this.f69677a = activity;
        this.f69687k = 0;
        this.f69688l = 0;
        this.f69689m = 0;
    }

    private void e(String str) {
        if (str.matches("-?[0-9a-fA-F]+")) {
            int parseLong = (int) Long.parseLong(str, 16);
            int i4 = (parseLong >> 16) & 255;
            this.f69687k = i4;
            int i10 = (parseLong >> 8) & 255;
            this.f69688l = i10;
            int i11 = (parseLong >> 0) & 255;
            this.f69689m = i11;
            this.f69679c.setBackgroundColor(Color.rgb(i4, i10, i11));
            this.f69680d.setProgress(this.f69687k);
            this.f69681e.setProgress(this.f69688l);
            this.f69682f.setProgress(this.f69689m);
            return;
        }
        this.f69686j.setError(this.f69677a.getResources().getText(b.o.f67192q1));
    }

    public int a() {
        return this.f69689m;
    }

    public int b() {
        return Color.rgb(this.f69687k, this.f69688l, this.f69689m);
    }

    public int c() {
        return this.f69688l;
    }

    public int d() {
        return this.f69687k;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(b.l.C0);
        this.f69679c = findViewById(b.i.K1);
        this.f69680d = (SeekBar) findViewById(b.i.f66864m6);
        this.f69681e = (SeekBar) findViewById(b.i.f66951v3);
        this.f69682f = (SeekBar) findViewById(b.i.U0);
        this.f69690n = this.f69680d.getPaddingLeft();
        this.f69683g = (TextView) findViewById(b.i.f66874n6);
        this.f69684h = (TextView) findViewById(b.i.f66961w3);
        this.f69685i = (TextView) findViewById(b.i.V0);
        this.f69686j = (EditText) findViewById(b.i.G1);
        this.f69680d.setOnSeekBarChangeListener(this);
        this.f69681e.setOnSeekBarChangeListener(this);
        this.f69682f.setOnSeekBarChangeListener(this);
        this.f69680d.setProgress(this.f69687k);
        this.f69681e.setProgress(this.f69688l);
        this.f69682f.setProgress(this.f69689m);
        this.f69679c.setBackgroundColor(Color.rgb(this.f69687k, this.f69688l, this.f69689m));
        this.f69686j.setText(String.format(f69676p, Integer.valueOf(this.f69687k), Integer.valueOf(this.f69688l), Integer.valueOf(this.f69689m)));
        this.f69686j.setEnabled(false);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i4, boolean z9) {
        if (seekBar.getId() == b.i.f66864m6) {
            this.f69687k = i4;
            Rect bounds = seekBar.getThumb().getBounds();
            this.f69691o = bounds;
            this.f69683g.setX(this.f69690n + bounds.left);
            if (i4 < 10) {
                TextView textView = this.f69683g;
                textView.setText("  " + this.f69687k);
            } else if (i4 < 100) {
                TextView textView2 = this.f69683g;
                textView2.setText(" " + this.f69687k);
            } else {
                TextView textView3 = this.f69683g;
                textView3.setText(this.f69687k + "");
            }
        } else if (seekBar.getId() == b.i.f66951v3) {
            this.f69688l = i4;
            this.f69691o = seekBar.getThumb().getBounds();
            this.f69684h.setX(seekBar.getPaddingLeft() + this.f69691o.left);
            if (i4 < 10) {
                TextView textView4 = this.f69684h;
                textView4.setText("  " + this.f69688l);
            } else if (i4 < 100) {
                TextView textView5 = this.f69684h;
                textView5.setText(" " + this.f69688l);
            } else {
                TextView textView6 = this.f69684h;
                textView6.setText(this.f69688l + "");
            }
        } else if (seekBar.getId() == b.i.U0) {
            this.f69689m = i4;
            Rect bounds2 = seekBar.getThumb().getBounds();
            this.f69691o = bounds2;
            this.f69685i.setX(this.f69690n + bounds2.left);
            if (i4 < 10) {
                TextView textView7 = this.f69685i;
                textView7.setText("  " + this.f69689m);
            } else if (i4 < 100) {
                TextView textView8 = this.f69685i;
                textView8.setText(" " + this.f69689m);
            } else {
                TextView textView9 = this.f69685i;
                textView9.setText(this.f69689m + "");
            }
        }
        this.f69679c.setBackgroundColor(Color.rgb(this.f69687k, this.f69688l, this.f69689m));
        this.f69686j.setText(String.format(f69676p, Integer.valueOf(this.f69687k), Integer.valueOf(this.f69688l), Integer.valueOf(this.f69689m)));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z9) {
        Rect bounds = this.f69680d.getThumb().getBounds();
        this.f69691o = bounds;
        this.f69683g.setX(this.f69690n + bounds.left);
        int i4 = this.f69687k;
        if (i4 < 10) {
            TextView textView = this.f69683g;
            textView.setText("  " + this.f69687k);
        } else if (i4 < 100) {
            TextView textView2 = this.f69683g;
            textView2.setText(" " + this.f69687k);
        } else {
            TextView textView3 = this.f69683g;
            textView3.setText(this.f69687k + "");
        }
        Rect bounds2 = this.f69681e.getThumb().getBounds();
        this.f69691o = bounds2;
        this.f69684h.setX(this.f69690n + bounds2.left);
        if (this.f69688l < 10) {
            TextView textView4 = this.f69684h;
            textView4.setText("  " + this.f69688l);
        } else if (this.f69687k < 100) {
            TextView textView5 = this.f69684h;
            textView5.setText(" " + this.f69688l);
        } else {
            TextView textView6 = this.f69684h;
            textView6.setText(this.f69688l + "");
        }
        Rect bounds3 = this.f69682f.getThumb().getBounds();
        this.f69691o = bounds3;
        this.f69685i.setX(this.f69690n + bounds3.left);
        int i10 = this.f69689m;
        if (i10 < 10) {
            TextView textView7 = this.f69685i;
            textView7.setText("  " + this.f69689m);
        } else if (i10 < 100) {
            TextView textView8 = this.f69685i;
            textView8.setText(" " + this.f69689m);
        } else {
            TextView textView9 = this.f69685i;
            textView9.setText(this.f69689m + "");
        }
    }

    public a(Activity activity, int i4, int i10, int i11) {
        super(activity);
        this.f69677a = activity;
        if (i4 >= 0 && i4 <= 255) {
            this.f69687k = i4;
        } else {
            this.f69687k = 0;
        }
        if (i4 >= 0 && i4 <= 255) {
            this.f69688l = i10;
        } else {
            this.f69688l = 0;
        }
        if (i4 >= 0 && i4 <= 255) {
            this.f69689m = i11;
        } else {
            this.f69688l = 0;
        }
    }
}
