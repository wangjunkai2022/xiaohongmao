package androidx.core.util;

import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import io.sentry.protocol.y;

/* loaded from: classes.dex */
public final class SizeFCompat {
    private final float mHeight;
    private final float mWidth;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    private static final class Api21Impl {
        private Api21Impl() {
        }

        @NonNull
        @DoNotInline
        static SizeF toSizeF(@NonNull SizeFCompat sizeFCompat) {
            Preconditions.checkNotNull(sizeFCompat);
            return new SizeF(sizeFCompat.getWidth(), sizeFCompat.getHeight());
        }

        @NonNull
        @DoNotInline
        static SizeFCompat toSizeFCompat(@NonNull SizeF sizeF) {
            Preconditions.checkNotNull(sizeF);
            return new SizeFCompat(sizeF.getWidth(), sizeF.getHeight());
        }
    }

    public SizeFCompat(float f10, float f11) {
        this.mWidth = Preconditions.checkArgumentFinite(f10, "width");
        this.mHeight = Preconditions.checkArgumentFinite(f11, "height");
    }

    @NonNull
    @RequiresApi(21)
    public static SizeFCompat toSizeFCompat(@NonNull SizeF sizeF) {
        return Api21Impl.toSizeFCompat(sizeF);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SizeFCompat) {
            SizeFCompat sizeFCompat = (SizeFCompat) obj;
            return sizeFCompat.mWidth == this.mWidth && sizeFCompat.mHeight == this.mHeight;
        }
        return false;
    }

    public float getHeight() {
        return this.mHeight;
    }

    public float getWidth() {
        return this.mWidth;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.mWidth) ^ Float.floatToIntBits(this.mHeight);
    }

    @NonNull
    @RequiresApi(21)
    public SizeF toSizeF() {
        return Api21Impl.toSizeF(this);
    }

    @NonNull
    public String toString() {
        return this.mWidth + y.b.f83919g + this.mHeight;
    }
}
