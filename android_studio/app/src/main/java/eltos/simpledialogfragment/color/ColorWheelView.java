package eltos.simpledialogfragment.color;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import eltos.simpledialogfragment.c;

/* loaded from: classes3.dex */
public class ColorWheelView extends View {

    /* renamed from: i  reason: collision with root package name */
    public static int f65022i = -3193017;

    /* renamed from: a  reason: collision with root package name */
    private c f65023a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f65024b;

    /* renamed from: c  reason: collision with root package name */
    private g f65025c;

    /* renamed from: d  reason: collision with root package name */
    private d f65026d;

    /* renamed from: e  reason: collision with root package name */
    private final RectF f65027e;

    /* renamed from: f  reason: collision with root package name */
    private final Paint f65028f;

    /* renamed from: g  reason: collision with root package name */
    private b f65029g;

    /* renamed from: h  reason: collision with root package name */
    private e f65030h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int saveAlpha;
        float[] saveColor;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i4) {
                return new SavedState[i4];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            super.writeToParcel(parcel, i4);
            parcel.writeFloatArray(this.saveColor);
            parcel.writeInt(this.saveAlpha);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.saveColor = parcel.createFloatArray();
            this.saveAlpha = parcel.readInt();
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: e  reason: collision with root package name */
        private b f65038e;

        /* renamed from: f  reason: collision with root package name */
        private final Paint f65039f;

        /* renamed from: g  reason: collision with root package name */
        private final Paint f65040g;

        /* renamed from: a  reason: collision with root package name */
        private RectF f65034a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        private PointF f65035b = new PointF();

        /* renamed from: c  reason: collision with root package name */
        private float f65036c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        private float f65037d = 0.0f;

        /* renamed from: h  reason: collision with root package name */
        private float[] f65041h = {0.0f, 0.0f, 0.0f, 0.0f};

        d() {
            this.f65038e = new b((int) ViewCompat.MEASURED_STATE_MASK);
            Paint paint = new Paint(1);
            this.f65039f = paint;
            paint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint(1);
            this.f65040g = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(ColorWheelView.this.e(1));
        }

        private void f() {
            this.f65040g.setColor(new b(255, this.f65038e.k(), 1.0f, 1.0f).m().o());
            float cos = (float) Math.cos(Math.toRadians(this.f65038e.k()));
            float sin = (float) Math.sin(Math.toRadians(this.f65038e.k()));
            PointF pointF = this.f65035b;
            float f10 = pointF.x;
            float f11 = this.f65036c;
            float f12 = this.f65037d;
            float f13 = pointF.y;
            this.f65041h = new float[]{((f11 - (f12 / 3.0f)) * cos) + f10, ((f11 - (f12 / 3.0f)) * sin) + f13, f10 + (((f12 / 3.0f) + f11) * cos), f13 + ((f11 + (f12 / 3.0f)) * sin)};
        }

        private void g() {
            int[] iArr = {SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -16711936, -16711681, -16776961, -65281, SupportMenu.CATEGORY_MASK};
            PointF pointF = this.f65035b;
            this.f65039f.setShader(new SweepGradient(pointF.x, pointF.y, iArr, (float[]) null));
        }

        void a(Canvas canvas) {
            canvas.save();
            canvas.rotate(-90.0f, canvas.getWidth() / 2, canvas.getHeight() / 2);
            canvas.drawArc(this.f65034a, 0.0f, 360.0f, false, this.f65039f);
            canvas.drawLines(this.f65041h, this.f65040g);
            canvas.restore();
        }

        boolean b(PointF pointF) {
            double sqrt = Math.sqrt(Math.pow(pointF.x - this.f65035b.x, 2.0d) + Math.pow(pointF.y - this.f65035b.y, 2.0d));
            float f10 = this.f65036c;
            float f11 = this.f65037d;
            return ((double) (f10 - f11)) <= sqrt && sqrt <= ((double) (f10 + f11));
        }

        float c(PointF pointF) {
            ColorWheelView colorWheelView = ColorWheelView.this;
            float f10 = pointF.y;
            PointF pointF2 = this.f65035b;
            return colorWheelView.f((float) (Math.toDegrees(Math.atan2(f10 - pointF2.y, pointF.x - pointF2.x)) + 90.0d), 360.0f);
        }

        void d(b bVar) {
            if (this.f65038e.k() != bVar.k()) {
                this.f65038e = bVar;
                f();
            }
            this.f65038e = bVar;
        }

        void e(PointF pointF, float f10, float f11) {
            this.f65035b = pointF;
            this.f65036c = f10;
            this.f65037d = f11;
            this.f65039f.setStrokeWidth(f11);
            float f12 = pointF.x;
            float f13 = pointF.y;
            this.f65034a = new RectF(f12 - f10, f13 - f10, f12 + f10, f13 + f10);
            g();
            f();
        }
    }

    /* loaded from: classes3.dex */
    private enum e {
        NONE,
        TRIANGLE,
        SUGGESTION,
        HUE
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class f {

        /* renamed from: e  reason: collision with root package name */
        b f65052e;

        /* renamed from: o  reason: collision with root package name */
        private final Paint f65062o;

        /* renamed from: p  reason: collision with root package name */
        private final Paint f65063p;

        /* renamed from: q  reason: collision with root package name */
        private float f65064q;

        /* renamed from: a  reason: collision with root package name */
        PointF f65048a = new PointF();

        /* renamed from: b  reason: collision with root package name */
        float f65049b = 0.0f;

        /* renamed from: c  reason: collision with root package name */
        float f65050c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        float f65051d = 0.0f;

        /* renamed from: f  reason: collision with root package name */
        boolean f65053f = true;

        /* renamed from: g  reason: collision with root package name */
        boolean f65054g = true;

        /* renamed from: h  reason: collision with root package name */
        boolean f65055h = true;

        /* renamed from: i  reason: collision with root package name */
        boolean f65056i = true;

        /* renamed from: j  reason: collision with root package name */
        boolean f65057j = true;

        /* renamed from: k  reason: collision with root package name */
        private PointF f65058k = new PointF();

        /* renamed from: l  reason: collision with root package name */
        private PointF f65059l = new PointF();

        /* renamed from: m  reason: collision with root package name */
        private PointF f65060m = new PointF();

        /* renamed from: n  reason: collision with root package name */
        protected Path f65061n = new Path();

        /* renamed from: r  reason: collision with root package name */
        private PointF f65065r = new PointF();

        f() {
            this.f65052e = new b((int) ViewCompat.MEASURED_STATE_MASK);
            this.f65064q = 0.0f;
            this.f65064q = ColorWheelView.this.e(4);
            float e4 = ColorWheelView.this.e(1);
            Paint paint = new Paint(1);
            this.f65062o = paint;
            paint.setStyle(Paint.Style.FILL);
            Paint paint2 = new Paint(1);
            this.f65063p = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(e4);
            ColorWheelView.this.setLayerType(1, null);
        }

        private float h(PointF pointF, PointF pointF2, PointF pointF3) {
            float f10 = pointF.x;
            float f11 = pointF3.x;
            float f12 = pointF2.y;
            float f13 = pointF3.y;
            return ((f10 - f11) * (f12 - f13)) - ((pointF2.x - f11) * (pointF.y - f13));
        }

        b a(PointF pointF) {
            PointF pointF2 = new PointF(pointF.x, pointF.y);
            float f10 = pointF2.y;
            PointF pointF3 = this.f65060m;
            float f11 = pointF3.y;
            PointF pointF4 = this.f65059l;
            float f12 = pointF4.x;
            float f13 = pointF3.x;
            float f14 = pointF2.x;
            float f15 = pointF4.y;
            float f16 = ((f10 - f11) * (f12 - f13)) - ((f14 - f13) * (f15 - f11));
            float f17 = f10 - f11;
            PointF pointF5 = this.f65058k;
            float f18 = pointF5.x;
            float f19 = f16 / ((f17 * (f12 - f18)) - ((f14 - f13) * (f15 - pointF5.y)));
            float f20 = (f14 - f13) / ((((f18 - f12) * f19) + f12) - f13);
            if (f20 < 0.0f) {
                f19 *= -1.0f;
            }
            b bVar = new b(ColorWheelView.this, this.f65052e);
            bVar.s(f19);
            bVar.u(f20);
            return bVar;
        }

        public void b(Canvas canvas) {
            canvas.drawPath(this.f65061n, this.f65062o);
            PointF pointF = this.f65065r;
            canvas.drawCircle(pointF.x, pointF.y, this.f65064q, this.f65063p);
        }

        boolean c(PointF pointF) {
            boolean z9 = h(pointF, this.f65058k, this.f65059l) < 0.0f;
            boolean z10 = h(pointF, this.f65059l, this.f65060m) < 0.0f;
            return z9 == z10 && z10 == ((h(pointF, this.f65060m, this.f65058k) > 0.0f ? 1 : (h(pointF, this.f65060m, this.f65058k) == 0.0f ? 0 : -1)) < 0);
        }

        void d() {
            if (this.f65053f) {
                j();
            }
            if (this.f65053f || this.f65054g) {
                k();
            }
            boolean z9 = this.f65053f;
            if (z9 || this.f65054g || this.f65057j) {
                boolean z10 = true;
                boolean z11 = z9 || this.f65054g || this.f65056i;
                if (!z9 && !this.f65054g && !this.f65055h) {
                    z10 = false;
                }
                i(z11, z10);
            }
            this.f65053f = false;
            this.f65054g = false;
            this.f65055h = false;
            this.f65056i = false;
            this.f65057j = false;
        }

        public void e(b bVar) {
            if (!this.f65052e.h(bVar)) {
                this.f65057j = true;
            }
            this.f65056i |= !this.f65052e.i(bVar);
            this.f65055h |= this.f65052e.k() != bVar.k();
            this.f65052e = bVar;
        }

        void f(PointF pointF, float f10, float f11) {
            if (!this.f65048a.equals(pointF) || f10 != this.f65049b || f11 != this.f65050c) {
                this.f65053f = true;
            }
            this.f65048a = pointF;
            this.f65049b = f10;
            this.f65050c = f11;
        }

        void g(float f10) {
            if (this.f65051d != f10) {
                this.f65054g = true;
            }
            this.f65051d = f10;
        }

        protected void i(boolean z9, boolean z10) {
            if (z10) {
                PointF pointF = this.f65058k;
                float f10 = pointF.x;
                float f11 = pointF.y;
                PointF pointF2 = this.f65059l;
                float f12 = pointF2.x;
                PointF pointF3 = this.f65060m;
                LinearGradient linearGradient = new LinearGradient(f10, f11, (f12 + pointF3.x) / 2.0f, (pointF2.y + pointF3.y) / 2.0f, Color.HSVToColor(new float[]{this.f65052e.k(), 1.0f, 1.0f}), (int) ViewCompat.MEASURED_STATE_MASK, Shader.TileMode.CLAMP);
                PointF pointF4 = this.f65058k;
                float f13 = pointF4.x;
                PointF pointF5 = this.f65060m;
                float f14 = (f13 + pointF5.x) / 2.0f;
                float f15 = (pointF4.y + pointF5.y) / 2.0f;
                PointF pointF6 = this.f65059l;
                this.f65062o.setShader(new ComposeShader(linearGradient, new LinearGradient(f14, f15, pointF6.x, pointF6.y, (int) ViewCompat.MEASURED_STATE_MASK, -1, Shader.TileMode.CLAMP), PorterDuff.Mode.ADD));
            }
            if (z9) {
                this.f65063p.setColor(this.f65052e.m().o());
                float f16 = this.f65060m.x;
                float f17 = this.f65059l.x;
                float r9 = f16 + (((f17 - f16) + ((this.f65058k.x - f17) * this.f65052e.r())) * this.f65052e.t());
                float f18 = this.f65060m.y;
                float f19 = this.f65059l.y;
                this.f65065r = new PointF(r9, f18 + (((f19 - f18) + ((this.f65058k.y - f19) * this.f65052e.r())) * this.f65052e.t()));
            }
        }

        protected void j() {
        }

        protected void k() {
            this.f65058k.set(this.f65048a.x + ((this.f65049b - this.f65050c) * ((float) Math.cos(Math.toRadians(this.f65051d - 90.0f)))), this.f65048a.y + ((this.f65049b - this.f65050c) * ((float) Math.sin(Math.toRadians(this.f65051d - 90.0f)))));
            this.f65059l.set(this.f65048a.x + ((this.f65049b - this.f65050c) * ((float) Math.cos(Math.toRadians(this.f65051d + 30.0f)))), this.f65048a.y + ((this.f65049b - this.f65050c) * ((float) Math.sin(Math.toRadians(this.f65051d + 30.0f)))));
            this.f65060m.set(this.f65048a.x + ((this.f65049b - this.f65050c) * ((float) Math.cos(Math.toRadians(this.f65051d + 150.0f)))), this.f65048a.y + ((this.f65049b - this.f65050c) * ((float) Math.sin(Math.toRadians(this.f65051d + 150.0f)))));
            Path path = new Path();
            this.f65061n = path;
            PointF pointF = this.f65058k;
            path.moveTo(pointF.x, pointF.y);
            Path path2 = this.f65061n;
            PointF pointF2 = this.f65059l;
            path2.lineTo(pointF2.x, pointF2.y);
            Path path3 = this.f65061n;
            PointF pointF3 = this.f65060m;
            path3.lineTo(pointF3.x, pointF3.y);
            this.f65061n.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class g extends f {

        /* renamed from: t  reason: collision with root package name */
        private a[] f65067t;

        /* renamed from: u  reason: collision with root package name */
        private Paint f65068u;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class a {

            /* renamed from: c  reason: collision with root package name */
            private b f65072c;

            /* renamed from: d  reason: collision with root package name */
            private Paint f65073d;

            /* renamed from: a  reason: collision with root package name */
            private Path f65070a = new Path();

            /* renamed from: b  reason: collision with root package name */
            private Path f65071b = new Path();

            /* renamed from: e  reason: collision with root package name */
            float f65074e = 0.0f;

            /* renamed from: f  reason: collision with root package name */
            float f65075f = 0.0f;

            a() {
                this.f65072c = new b((int) ViewCompat.MEASURED_STATE_MASK);
                Paint paint = new Paint(1);
                this.f65073d = paint;
                paint.setStyle(Paint.Style.FILL);
            }
        }

        g() {
            super();
            this.f65067t = new a[9];
            this.f65068u = new Paint(1);
            Paint paint = new Paint(1);
            this.f65068u = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.f65068u.setColor(InputDeviceCompat.SOURCE_ANY);
            int i4 = 0;
            while (true) {
                a[] aVarArr = this.f65067t;
                if (i4 >= aVarArr.length) {
                    return;
                }
                aVarArr[i4] = new a();
                i4++;
            }
        }

        private PointF l(float f10, float f11, float f12, boolean z9) {
            float tan;
            double d4;
            float radians = (float) Math.toRadians(f12);
            float tan2 = (float) Math.tan(Math.toRadians(30.0d));
            int i4 = (f12 > 90.0f ? 1 : (f12 == 90.0f ? 0 : -1));
            float tan3 = i4 == 0 ? f10 * tan2 : (float) ((i4 == 0 ? 0.0f : (float) (f10 / ((Math.tan(radians) / tan2) + 1.0d))) * Math.tan(radians));
            float sqrt = (float) Math.sqrt((tan * tan) + (tan3 * tan3));
            double radians2 = (float) (z9 ? Math.toRadians(30.0d) + radians : Math.toRadians(150.0d) - radians);
            float sqrt2 = (float) Math.sqrt(Math.pow(sqrt + ((float) (Math.abs(((Math.cos(radians2) * 0.5d) - 1.0d) / Math.sin(radians2)) * d4)), 2.0d) + (Math.pow(f11, 2.0d) / 4.0d));
            float asin = (float) Math.asin((f11 / 2.0f) / sqrt2);
            double d10 = z9 ? radians + asin : radians - asin;
            return new PointF(((float) Math.cos(d10)) * sqrt2, sqrt2 * ((float) Math.sin(d10)));
        }

        private void m(a aVar, float f10, float f11) {
            int i4;
            float f12 = ColorWheelView.this.f(f10, 360.0f);
            int i10 = f12 < 120.0f ? 0 : f12 < 240.0f ? 1 : 2;
            float f13 = ColorWheelView.this.f(f12, 120.0f);
            float f14 = this.f65049b;
            float f15 = this.f65050c;
            float f16 = f14 - f15;
            PointF l10 = l(f16, f15, f13, true);
            float f17 = f11 + f13;
            PointF l11 = l(f16, f15, f17, false);
            float degrees = (float) Math.toDegrees(Math.asin((f15 / 2.0f) / f16));
            float f18 = f13 + degrees;
            float f19 = f17 - degrees;
            PointF pointF = this.f65048a;
            l10.offset(pointF.x, pointF.y);
            PointF pointF2 = this.f65048a;
            l11.offset(pointF2.x, pointF2.y);
            PointF pointF3 = this.f65048a;
            float f20 = pointF3.x;
            float f21 = pointF3.y;
            RectF rectF = new RectF(f20 - f16, f21 - f16, f20 + f16, f21 + f16);
            aVar.f65070a = new Path();
            aVar.f65070a.moveTo(l10.x, l10.y);
            aVar.f65070a.arcTo(rectF, f18, f19 - f18);
            aVar.f65070a.lineTo(l11.x, l11.y);
            aVar.f65070a.close();
            Matrix matrix = new Matrix();
            PointF pointF4 = this.f65048a;
            matrix.postRotate(i4 - 90, pointF4.x, pointF4.y);
            aVar.f65070a.transform(matrix);
            float f22 = i10 * 120;
            aVar.f65074e = ColorWheelView.this.f((f18 - 90.0f) + f22, 360.0f);
            aVar.f65075f = ColorWheelView.this.f((f19 - 90.0f) + f22, 360.0f);
        }

        @Override // eltos.simpledialogfragment.color.ColorWheelView.f
        public void b(Canvas canvas) {
            a[] aVarArr;
            super.b(canvas);
            for (a aVar : this.f65067t) {
                canvas.drawPath(aVar.f65071b, aVar.f65073d);
            }
        }

        @Override // eltos.simpledialogfragment.color.ColorWheelView.f
        protected void i(boolean z9, boolean z10) {
            a[] aVarArr;
            super.i(z9, z10);
            this.f65067t[0].f65072c = new b(ColorWheelView.this, this.f65052e).s(0.75f);
            this.f65067t[1].f65072c = new b(ColorWheelView.this, this.f65052e).s(0.5f);
            this.f65067t[2].f65072c = new b(ColorWheelView.this, this.f65052e).s(0.25f);
            this.f65067t[3].f65072c = new b(ColorWheelView.this, this.f65052e).q(120.0f);
            this.f65067t[4].f65072c = new b(ColorWheelView.this, this.f65052e).q(180.0f);
            this.f65067t[5].f65072c = new b(ColorWheelView.this, this.f65052e).q(240.0f);
            this.f65067t[6].f65072c = new b(ColorWheelView.this, this.f65052e).u(0.25f);
            this.f65067t[7].f65072c = new b(ColorWheelView.this, this.f65052e).u(0.5f);
            this.f65067t[8].f65072c = new b(ColorWheelView.this, this.f65052e).u(0.75f);
            if (z9) {
                for (a aVar : this.f65067t) {
                    aVar.f65073d.setColor(aVar.f65072c.o());
                }
            }
        }

        @Override // eltos.simpledialogfragment.color.ColorWheelView.f
        protected void j() {
            super.j();
            int i4 = 0;
            while (true) {
                a[] aVarArr = this.f65067t;
                if (i4 >= aVarArr.length) {
                    return;
                }
                m(aVarArr[i4], (i4 * 35) + 7.5f + ((i4 / 3) * 15), 35.0f);
                i4++;
            }
        }

        @Override // eltos.simpledialogfragment.color.ColorWheelView.f
        protected void k() {
            a[] aVarArr;
            super.k();
            Matrix matrix = new Matrix();
            float f10 = this.f65051d;
            PointF pointF = this.f65048a;
            matrix.postRotate(f10, pointF.x, pointF.y);
            for (a aVar : this.f65067t) {
                aVar.f65070a.transform(matrix, aVar.f65071b);
            }
        }

        b n(PointF pointF) {
            a[] aVarArr;
            if (Math.sqrt(Math.pow(pointF.x - this.f65048a.x, 2.0d) + Math.pow(pointF.y - this.f65048a.y, 2.0d)) <= this.f65049b - this.f65050c && !c(pointF)) {
                ColorWheelView colorWheelView = ColorWheelView.this;
                float f10 = pointF.y;
                PointF pointF2 = this.f65048a;
                float f11 = colorWheelView.f((float) (Math.toDegrees(Math.atan2(f10 - pointF2.y, pointF.x - pointF2.x)) - this.f65051d), 360.0f);
                for (a aVar : this.f65067t) {
                    if (ColorWheelView.this.d(aVar.f65074e, f11, aVar.f65075f)) {
                        return aVar.f65072c;
                    }
                }
                return null;
            }
            return null;
        }
    }

    public ColorWheelView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(float f10, float f11, float f12) {
        float f13 = f(f10, 360.0f);
        float f14 = f(f11, 360.0f);
        float f15 = f(f12, 360.0f);
        return f13 < f15 ? f13 <= f14 && f14 <= f15 : f13 <= f14 || f14 <= f15;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float e(int i4) {
        return TypedValue.applyDimension(1, i4, getResources().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float f(float f10, float f11) {
        return ((f10 % f11) + f11) % f11;
    }

    private void h(b bVar, boolean z9) {
        c cVar;
        boolean z10 = !this.f65029g.i(bVar);
        boolean z11 = !this.f65029g.h(bVar);
        this.f65029g = bVar;
        this.f65025c.e(bVar);
        this.f65025c.g(this.f65029g.k());
        this.f65025c.d();
        this.f65026d.d(this.f65029g);
        this.f65028f.setColor(this.f65029g.p());
        if (z10) {
            invalidate();
        }
        if (z11 && (cVar = this.f65023a) != null && z9) {
            cVar.a(getColor());
        }
    }

    private void setColorInternal(b bVar) {
        h(bVar, true);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        b n9;
        boolean z9;
        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            if (this.f65026d.b(pointF)) {
                this.f65030h = e.HUE;
                setColorInternal(new b(this, this.f65029g).l(this.f65026d.c(pointF)));
            } else if (this.f65025c.c(pointF)) {
                this.f65030h = e.TRIANGLE;
                setColorInternal(this.f65025c.a(pointF));
            } else {
                if (this.f65025c.n(pointF) != null) {
                    this.f65030h = e.SUGGESTION;
                }
                z9 = false;
            }
            z9 = true;
        } else if (motionEvent.getAction() == 2) {
            e eVar = this.f65030h;
            if (eVar == e.HUE) {
                setColorInternal(new b(this, this.f65029g).l(this.f65026d.c(pointF)));
            } else if (eVar == e.TRIANGLE) {
                setColorInternal(this.f65025c.a(pointF));
            } else {
                if (eVar == e.SUGGESTION) {
                    if (this.f65025c.n(pointF) == null) {
                        this.f65030h = e.NONE;
                    }
                }
                z9 = false;
            }
            z9 = true;
        } else {
            if (motionEvent.getAction() == 1) {
                if (this.f65030h == e.SUGGESTION && (n9 = this.f65025c.n(pointF)) != null) {
                    setColorInternal(n9);
                }
                this.f65030h = e.NONE;
                z9 = true;
            }
            z9 = false;
        }
        if (z9) {
            if (getParent() != null && motionEvent.getAction() == 0) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void g(int i4, boolean z9) {
        h(new b(i4), z9);
    }

    public int getColor() {
        return this.f65029g.p();
    }

    public void i(int i4) {
        j(i4, true);
    }

    public void j(int i4, boolean z9) {
        b bVar = new b(this, this.f65029g);
        bVar.d(i4);
        h(bVar, z9);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f65025c.b(canvas);
        this.f65026d.a(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int size;
        super.onMeasure(i4, i10);
        Boolean bool = this.f65024b;
        if (bool == null) {
            size = (int) e(50);
        } else if (bool.booleanValue()) {
            size = View.MeasureSpec.getSize(i4);
        } else {
            size = View.MeasureSpec.getSize(i10);
        }
        if (View.MeasureSpec.getMode(i10) == 1073741824 || View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            size = Math.min(size, View.MeasureSpec.getSize(i10));
        }
        if (View.MeasureSpec.getMode(i4) == 1073741824 || View.MeasureSpec.getMode(i4) == Integer.MIN_VALUE) {
            size = Math.min(size, View.MeasureSpec.getSize(i4));
        }
        setMeasuredDimension(size, size);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i4 = savedState.saveAlpha;
        float[] fArr = savedState.saveColor;
        this.f65029g = new b(i4, (int) fArr[0], fArr[1], fArr[2]);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.saveColor = this.f65029g.f65032b;
        savedState.saveAlpha = this.f65029g.f65031a;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        float max = Math.max(e(10), Math.min(e(35), (e(30) * Math.min(i4, i10)) / 1000.0f));
        float max2 = Math.max(e(5), Math.min(e(10), (e(7) * Math.min(i4, i10)) / 1000.0f));
        PointF pointF = new PointF(i4 / 2, i10 / 2);
        float min = ((Math.min(i4, i10) - max2) - max) / 2.0f;
        this.f65026d.e(pointF, min, max);
        this.f65025c.f(pointF, min - (max / 2.0f), max2);
        this.f65025c.d();
        RectF rectF = this.f65027e;
        float f10 = pointF.x;
        float f11 = pointF.y;
        rectF.set(f10 - min, f11 - min, f10 + min, f11 + min);
        this.f65028f.setStyle(Paint.Style.FILL);
    }

    public void setColor(int i4) {
        g(i4, true);
    }

    public void setOnColorChangeListener(c cVar) {
        this.f65023a = cVar;
    }

    public ColorWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorWheelView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f65024b = null;
        this.f65027e = new RectF();
        this.f65028f = new Paint(1);
        this.f65029g = new b(f65022i);
        this.f65030h = e.NONE;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, c.p.G6, 0, 0);
        try {
            Integer valueOf = Integer.valueOf(obtainStyledAttributes.getInteger(c.p.H6, 0));
            if (valueOf.intValue() == 0) {
                this.f65024b = Boolean.TRUE;
            } else if (valueOf.intValue() == 1) {
                this.f65024b = Boolean.FALSE;
            }
            obtainStyledAttributes.recycle();
            this.f65025c = new g();
            this.f65026d = new d();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private int f65031a;

        /* renamed from: b  reason: collision with root package name */
        private float[] f65032b;

        b(int i4, float f10, float f11, float f12) {
            this.f65031a = 255;
            this.f65032b = new float[3];
            d(i4);
            l(f10);
            s(f11);
            u(f12);
        }

        int c() {
            return this.f65031a;
        }

        void d(int i4) {
            this.f65031a = i4 & 255;
        }

        int e() {
            return o() & 255;
        }

        @Deprecated
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                if (bVar.f65031a != this.f65031a) {
                    return false;
                }
                float[] fArr = bVar.f65032b;
                float f10 = fArr[0];
                float[] fArr2 = this.f65032b;
                if (f10 != fArr2[0] || fArr[1] != fArr2[1] || fArr[2] != fArr2[2]) {
                    return false;
                }
            }
            return true;
        }

        b f() {
            if ((n() * 0.299d) + (j() * 0.587d) + (e() * 0.144d) >= 128.0d) {
                return new b((int) ViewCompat.MEASURED_STATE_MASK);
            }
            return new b(-1);
        }

        boolean g(b bVar) {
            return bVar.f65031a == this.f65031a;
        }

        boolean h(b bVar) {
            return g(bVar) && i(bVar);
        }

        boolean i(b bVar) {
            float[] fArr = bVar.f65032b;
            float f10 = fArr[0];
            float[] fArr2 = this.f65032b;
            return f10 == fArr2[0] && fArr[1] == fArr2[1] && fArr[2] == fArr2[2];
        }

        int j() {
            return (o() >> 8) & 255;
        }

        float k() {
            return this.f65032b[0];
        }

        b l(float f10) {
            this.f65032b[0] = ColorWheelView.this.f(f10, 360.0f);
            return this;
        }

        b m() {
            return new b(Color.argb(this.f65031a, 255 - n(), 255 - j(), 255 - e()));
        }

        int n() {
            return (o() >> 16) & 255;
        }

        int o() {
            return Color.HSVToColor(this.f65032b);
        }

        int p() {
            return Color.HSVToColor(this.f65031a, this.f65032b);
        }

        b q(float f10) {
            return new b(c(), k() + f10, r(), t());
        }

        float r() {
            return this.f65032b[1];
        }

        b s(float f10) {
            this.f65032b[1] = Math.min(1.0f, Math.max(0.0f, f10));
            return this;
        }

        float t() {
            return this.f65032b[2];
        }

        b u(float f10) {
            this.f65032b[2] = Math.min(1.0f, Math.max(0.0f, f10));
            return this;
        }

        b(int i4) {
            this.f65031a = 255;
            this.f65032b = new float[3];
            float[] fArr = new float[3];
            Color.colorToHSV(i4, fArr);
            d(Color.alpha(i4));
            l(fArr[0]);
            s(fArr[1]);
            u(fArr[2]);
        }

        b(ColorWheelView colorWheelView, b bVar) {
            this(bVar.c(), bVar.k(), bVar.r(), bVar.t());
        }
    }
}
