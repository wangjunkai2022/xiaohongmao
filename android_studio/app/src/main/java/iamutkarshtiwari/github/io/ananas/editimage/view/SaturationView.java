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
public class SaturationView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private float f69740a;

    /* renamed from: b  reason: collision with root package name */
    private e<Float> f69741b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements g<ColorMatrixColorFilter> {
        a() {
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(ColorMatrixColorFilter colorMatrixColorFilter) throws Exception {
            SaturationView.this.setColorFilter(colorMatrixColorFilter);
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
            return SaturationView.this.d(f10.floatValue());
        }
    }

    public SaturationView(Context context) {
        super(context);
        c();
    }

    private ColorMatrixColorFilter b(float f10) {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(f10);
        return new ColorMatrixColorFilter(colorMatrix);
    }

    private void c() {
        e<Float> i4 = e.i();
        this.f69741b = i4;
        i4.debounce(0L, TimeUnit.MILLISECONDS).distinctUntilChanged().switchMap(new b()).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public z<ColorMatrixColorFilter> d(float f10) {
        return z.just(b(f10));
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }

    public float getSaturation() {
        return this.f69740a;
    }

    public void setSaturation(@FloatRange(from = 0.0d, to = 100.0d) float f10) {
        float f11 = f10 / 100.0f;
        this.f69740a = f11;
        this.f69741b.onNext(Float.valueOf(f11));
    }

    public SaturationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public SaturationView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        c();
    }
}
