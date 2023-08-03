package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import java.util.LinkedHashMap;

/* loaded from: classes3.dex */
public class StickerView extends View {

    /* renamed from: j  reason: collision with root package name */
    private static int f69744j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static int f69745k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static int f69746l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static int f69747m = 3;

    /* renamed from: a  reason: collision with root package name */
    private int f69748a;

    /* renamed from: b  reason: collision with root package name */
    private Context f69749b;

    /* renamed from: c  reason: collision with root package name */
    private int f69750c;

    /* renamed from: d  reason: collision with root package name */
    private b f69751d;

    /* renamed from: e  reason: collision with root package name */
    private float f69752e;

    /* renamed from: f  reason: collision with root package name */
    private float f69753f;

    /* renamed from: g  reason: collision with root package name */
    private Paint f69754g;

    /* renamed from: h  reason: collision with root package name */
    private Paint f69755h;

    /* renamed from: i  reason: collision with root package name */
    private LinkedHashMap<Integer, b> f69756i;

    public StickerView(Context context) {
        super(context);
        this.f69754g = new Paint();
        this.f69755h = new Paint();
        this.f69756i = new LinkedHashMap<>();
        c(context);
    }

    private void c(Context context) {
        this.f69749b = context;
        this.f69750c = f69744j;
        this.f69754g.setColor(SupportMenu.CATEGORY_MASK);
        this.f69754g.setAlpha(100);
    }

    public void a(Bitmap bitmap) {
        b bVar = new b(getContext());
        bVar.b(bitmap, this);
        b bVar2 = this.f69751d;
        if (bVar2 != null) {
            bVar2.f69773i = false;
        }
        LinkedHashMap<Integer, b> linkedHashMap = this.f69756i;
        int i4 = this.f69748a + 1;
        this.f69748a = i4;
        linkedHashMap.put(Integer.valueOf(i4), bVar);
        invalidate();
    }

    public void b() {
        this.f69756i.clear();
        invalidate();
    }

    public LinkedHashMap<Integer, b> getBank() {
        return this.f69756i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (Integer num : this.f69756i.keySet()) {
            this.f69756i.get(num).a(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar;
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        float x9 = motionEvent.getX();
        float y9 = motionEvent.getY();
        int i4 = action & 255;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 == 2) {
                    int i10 = this.f69750c;
                    if (i10 == f69745k) {
                        float f10 = x9 - this.f69752e;
                        float f11 = y9 - this.f69753f;
                        b bVar2 = this.f69751d;
                        if (bVar2 != null) {
                            bVar2.d(f10, f11);
                            invalidate();
                        }
                        this.f69752e = x9;
                        this.f69753f = y9;
                    } else if (i10 == f69747m) {
                        float f12 = this.f69752e;
                        float f13 = x9 - f12;
                        float f14 = this.f69753f;
                        float f15 = y9 - f14;
                        b bVar3 = this.f69751d;
                        if (bVar3 != null) {
                            bVar3.e(f12, f14, f13, f15);
                            invalidate();
                        }
                        this.f69752e = x9;
                        this.f69753f = y9;
                    }
                    return true;
                } else if (i4 != 3) {
                    return onTouchEvent;
                }
            }
            this.f69750c = f69744j;
            return false;
        }
        int i11 = -1;
        for (Integer num : this.f69756i.keySet()) {
            b bVar4 = this.f69756i.get(num);
            if (bVar4.f69778n.contains(x9, y9)) {
                i11 = num.intValue();
                this.f69750c = f69746l;
            } else {
                if (bVar4.f69777m.contains(x9, y9)) {
                    b bVar5 = this.f69751d;
                    if (bVar5 != null) {
                        bVar5.f69773i = false;
                    }
                    this.f69751d = bVar4;
                    bVar4.f69773i = true;
                    this.f69750c = f69747m;
                    this.f69752e = x9;
                    this.f69753f = y9;
                } else if (bVar4.f69766b.contains(x9, y9)) {
                    b bVar6 = this.f69751d;
                    if (bVar6 != null) {
                        bVar6.f69773i = false;
                    }
                    this.f69751d = bVar4;
                    bVar4.f69773i = true;
                    this.f69750c = f69745k;
                    this.f69752e = x9;
                    this.f69753f = y9;
                }
                onTouchEvent = true;
            }
        }
        if (!onTouchEvent && (bVar = this.f69751d) != null && this.f69750c == f69744j) {
            bVar.f69773i = false;
            this.f69751d = null;
            invalidate();
        }
        if (i11 <= 0 || this.f69750c != f69746l) {
            return onTouchEvent;
        }
        this.f69756i.remove(Integer.valueOf(i11));
        this.f69750c = f69744j;
        invalidate();
        return onTouchEvent;
    }

    public StickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69754g = new Paint();
        this.f69755h = new Paint();
        this.f69756i = new LinkedHashMap<>();
        c(context);
    }

    public StickerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f69754g = new Paint();
        this.f69755h = new Paint();
        this.f69756i = new LinkedHashMap<>();
        c(context);
    }
}
