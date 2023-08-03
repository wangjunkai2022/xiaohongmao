package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.util.AttributeSet;
import androidx.annotation.FloatRange;
import androidx.appcompat.widget.AppCompatImageView;
import io.reactivex.e0;
import io.reactivex.subjects.e;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import n7.g;
import n7.o;

/* loaded from: classes3.dex */
public class BrightnessView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private float f69708a;

    /* renamed from: b  reason: collision with root package name */
    private e<Float> f69709b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements g<ColorMatrixColorFilter> {
        a() {
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(ColorMatrixColorFilter colorMatrixColorFilter) throws Exception {
            BrightnessView.this.setColorFilter(colorMatrixColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements o<Float, e0<ColorMatrixColorFilter>> {
        b() {
        }

        @Override // n7.o
        /* renamed from: a */
        public e0<ColorMatrixColorFilter> apply(Float f10) throws Exception {
            return BrightnessView.this.d(f10.floatValue());
        }
    }

    public BrightnessView(Context context) {
        super(context);
        c();
    }

    private ColorMatrixColorFilter b(float f10) {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.set(new float[]{1.0f, 0.0f, 0.0f, 0.0f, f10, 0.0f, 1.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, 1.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
        return new ColorMatrixColorFilter(colorMatrix);
    }

    private void c() {
        e<Float> i4 = e.i();
        this.f69709b = i4;
        i4.debounce(0L, TimeUnit.MILLISECONDS).distinctUntilChanged().switchMap(new b()).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public z<ColorMatrixColorFilter> d(float f10) {
        return z.just(b(f10));
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }

    public float getBright() {
        return this.f69708a;
    }

    public void setBright(@FloatRange(from = -100.0d, to = 100.0d) float f10) {
        this.f69708a = f10;
        this.f69709b.onNext(Float.valueOf(f10));
    }

    public BrightnessView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public BrightnessView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        c();
    }
}
