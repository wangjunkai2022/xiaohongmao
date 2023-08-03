package iamutkarshtiwari.github.io.ananas.editimage.gesture;

import android.content.Context;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import i7.f;

/* compiled from: MultiTouchListener.java */
/* loaded from: classes3.dex */
public class a implements View.OnTouchListener {

    /* renamed from: v  reason: collision with root package name */
    private static final int f69559v = -1;

    /* renamed from: a  reason: collision with root package name */
    private final GestureDetector f69560a;

    /* renamed from: h  reason: collision with root package name */
    private float f69567h;

    /* renamed from: i  reason: collision with root package name */
    private float f69568i;

    /* renamed from: j  reason: collision with root package name */
    private float f69569j;

    /* renamed from: k  reason: collision with root package name */
    private float f69570k;

    /* renamed from: n  reason: collision with root package name */
    private Rect f69573n;

    /* renamed from: o  reason: collision with root package name */
    private View f69574o;

    /* renamed from: p  reason: collision with root package name */
    private ImageView f69575p;

    /* renamed from: q  reason: collision with root package name */
    private RelativeLayout f69576q;

    /* renamed from: r  reason: collision with root package name */
    private i7.e f69577r;

    /* renamed from: s  reason: collision with root package name */
    private i7.b f69578s;

    /* renamed from: u  reason: collision with root package name */
    private f f69580u;

    /* renamed from: b  reason: collision with root package name */
    boolean f69561b = true;

    /* renamed from: c  reason: collision with root package name */
    boolean f69562c = true;

    /* renamed from: d  reason: collision with root package name */
    boolean f69563d = true;

    /* renamed from: e  reason: collision with root package name */
    float f69564e = 0.2f;

    /* renamed from: f  reason: collision with root package name */
    float f69565f = 10.0f;

    /* renamed from: g  reason: collision with root package name */
    private int f69566g = -1;

    /* renamed from: m  reason: collision with root package name */
    private int[] f69572m = new int[2];

    /* renamed from: t  reason: collision with root package name */
    boolean f69579t = true;

    /* renamed from: l  reason: collision with root package name */
    private iamutkarshtiwari.github.io.ananas.editimage.gesture.b f69571l = new iamutkarshtiwari.github.io.ananas.editimage.gesture.b(new c(this));

    /* compiled from: MultiTouchListener.java */
    /* loaded from: classes3.dex */
    private final class b extends GestureDetector.SimpleOnGestureListener {
        private b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (a.this.f69578s != null) {
                a.this.f69578s.b();
                return true;
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            if (a.this.f69578s != null) {
                a.this.f69578s.c();
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (a.this.f69578s != null) {
                a.this.f69578s.a();
                return true;
            }
            return true;
        }
    }

    public a(@Nullable View view, RelativeLayout relativeLayout, ImageView imageView, f fVar, Context context) {
        this.f69560a = new GestureDetector(context, new b());
        this.f69574o = view;
        this.f69576q = relativeLayout;
        this.f69575p = imageView;
        this.f69580u = fVar;
        if (view != null) {
            this.f69573n = new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            this.f69573n = new Rect(0, 0, 0, 0);
        }
    }

    private float b(float f10) {
        return f10 > 180.0f ? f10 - 360.0f : f10 < -180.0f ? f10 + 360.0f : f10;
    }

    private void c(View view, float f10, float f11) {
        float[] fArr = {f10, f11};
        view.getMatrix().mapVectors(fArr);
        view.setTranslationX(view.getTranslationX() + fArr[0]);
        view.setTranslationY(view.getTranslationY() + fArr[1]);
    }

    private void d(View view, float f10, float f11) {
        if (view.getPivotX() == f10 && view.getPivotY() == f11) {
            return;
        }
        float[] fArr = {0.0f, 0.0f};
        view.getMatrix().mapPoints(fArr);
        view.setPivotX(f10);
        view.setPivotY(f11);
        float[] fArr2 = {0.0f, 0.0f};
        view.getMatrix().mapPoints(fArr2);
        float f12 = fArr2[0] - fArr[0];
        float f13 = fArr2[1] - fArr[1];
        view.setTranslationX(view.getTranslationX() - f12);
        view.setTranslationY(view.getTranslationY() - f13);
    }

    private void e(View view, boolean z9) {
        if (view instanceof TextView) {
            if (this.f69577r != null) {
                f fVar = this.f69580u;
                if (fVar != null) {
                    if (z9) {
                        fVar.k();
                        return;
                    } else {
                        fVar.M();
                        return;
                    }
                }
                return;
            }
            f fVar2 = this.f69580u;
            if (fVar2 != null) {
                if (z9) {
                    fVar2.k();
                    return;
                } else {
                    fVar2.M();
                    return;
                }
            }
            return;
        }
        f fVar3 = this.f69580u;
        if (fVar3 != null) {
            if (z9) {
                fVar3.k();
            } else {
                fVar3.M();
            }
        }
    }

    private boolean f(View view, int i4, int i10) {
        view.getDrawingRect(this.f69573n);
        view.getLocationOnScreen(this.f69572m);
        Rect rect = this.f69573n;
        int[] iArr = this.f69572m;
        rect.offset(iArr[0], iArr[1]);
        return this.f69573n.contains(i4, i10);
    }

    private void i(i7.e eVar) {
        this.f69577r = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(View view, d dVar) {
        d(view, dVar.f69612e, dVar.f69613f);
        c(view, dVar.f69608a, dVar.f69609b);
        float max = Math.max(dVar.f69614g, Math.min(dVar.f69615h, view.getScaleX() * dVar.f69610c));
        view.setScaleX(max);
        view.setScaleY(max);
        view.setRotation(b(view.getRotation() + dVar.f69611d));
    }

    public void h(i7.b bVar) {
        this.f69578s = bVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.f69571l.o(view, motionEvent);
        this.f69560a.onTouchEvent(motionEvent);
        if (this.f69562c) {
            int action = motionEvent.getAction();
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            int actionMasked = motionEvent.getActionMasked() & action;
            if (actionMasked == 0) {
                this.f69567h = motionEvent.getX();
                this.f69568i = motionEvent.getY();
                this.f69569j = motionEvent.getRawX();
                this.f69570k = motionEvent.getRawY();
                this.f69566g = motionEvent.getPointerId(0);
                view.bringToFront();
                e(view, true);
            } else if (actionMasked == 1) {
                this.f69566g = -1;
                View view2 = this.f69574o;
                if (view2 != null && f(view2, rawX, rawY)) {
                    i7.e eVar = this.f69577r;
                    if (eVar != null) {
                        eVar.F(view);
                    }
                } else if (!f(this.f69575p, rawX, rawY)) {
                    view.animate().translationY(0.0f).translationY(0.0f);
                }
                e(view, false);
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f69566g);
                if (findPointerIndex != -1) {
                    float x9 = motionEvent.getX(findPointerIndex);
                    float y9 = motionEvent.getY(findPointerIndex);
                    if (!this.f69571l.n()) {
                        c(view, x9 - this.f69567h, y9 - this.f69568i);
                    }
                }
            } else if (actionMasked == 3) {
                this.f69566g = -1;
            } else if (actionMasked == 6) {
                int i4 = (65280 & action) >> 8;
                if (motionEvent.getPointerId(i4) == this.f69566g) {
                    int i10 = i4 == 0 ? 1 : 0;
                    this.f69567h = motionEvent.getX(i10);
                    this.f69568i = motionEvent.getY(i10);
                    this.f69566g = motionEvent.getPointerId(i10);
                }
            }
            return true;
        }
        return true;
    }
}
