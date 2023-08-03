package m5;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.didi.live.spring.R;

/* compiled from: CircleDrawable.java */
/* loaded from: classes3.dex */
public class b extends Drawable {

    /* renamed from: e  reason: collision with root package name */
    private static final int f86950e = -1308622848;

    /* renamed from: f  reason: collision with root package name */
    private static final int f86951f = 4;

    /* renamed from: a  reason: collision with root package name */
    private Paint f86952a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f86953b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f86954c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f86955d;

    public b(Bitmap bitmap) {
        this.f86953b = bitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Paint paint = new Paint();
        this.f86952a = paint;
        paint.setAntiAlias(true);
        this.f86952a.setShader(bitmapShader);
    }

    private void a(Context context) {
        Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), R.mipmap.ic_launcher);
        if (decodeResource != null) {
            Matrix matrix = new Matrix();
            matrix.postScale(0.8f, 0.8f);
            this.f86954c = Bitmap.createBitmap(decodeResource, 0, 0, decodeResource.getWidth(), decodeResource.getHeight(), matrix, true);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f86955d && this.f86954c != null) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setColor(f86950e);
            canvas.drawCircle((getIntrinsicWidth() / 2) + 4, (getIntrinsicHeight() / 2) + 4, (getIntrinsicWidth() / 2) + 4, paint);
            canvas.translate(4.0f, 4.0f);
            canvas.drawCircle(getIntrinsicWidth() / 2, getIntrinsicHeight() / 2, getIntrinsicWidth() / 2, this.f86952a);
            Rect rect = new Rect(0, 0, this.f86954c.getWidth(), this.f86954c.getHeight());
            Rect rect2 = new Rect((getIntrinsicWidth() - this.f86954c.getWidth()) + 8, (getIntrinsicHeight() - this.f86954c.getHeight()) + 8, getIntrinsicWidth() + 8, getIntrinsicHeight() + 8);
            Paint paint2 = new Paint(1);
            paint2.setFilterBitmap(true);
            paint2.setDither(true);
            canvas.drawBitmap(this.f86954c, rect, rect2, paint2);
            return;
        }
        canvas.drawCircle(getIntrinsicWidth() / 2, getIntrinsicHeight() / 2, getIntrinsicWidth() / 2, this.f86952a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f86953b.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f86953b.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        this.f86952a.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i4, int i10, int i11, int i12) {
        super.setBounds(i4, i10, i11, i12);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f86952a.setColorFilter(colorFilter);
    }

    public b(Context context, Bitmap bitmap, boolean z9) {
        this(bitmap);
        this.f86955d = z9;
        if (z9) {
            a(context);
        }
    }
}
