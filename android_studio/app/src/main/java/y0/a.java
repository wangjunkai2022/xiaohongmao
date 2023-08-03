package y0;

import android.graphics.drawable.Animatable;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: ImageLoadingTimeControllerListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a extends com.facebook.drawee.controller.b {

    /* renamed from: b  reason: collision with root package name */
    private long f94680b = -1;

    /* renamed from: c  reason: collision with root package name */
    private long f94681c = -1;
    @h

    /* renamed from: d  reason: collision with root package name */
    private b f94682d;

    public a(@h b imageLoadingTimeListener) {
        this.f94682d = imageLoadingTimeListener;
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void d(String id, @h Object imageInfo, @h Animatable animatable) {
        long currentTimeMillis = System.currentTimeMillis();
        this.f94681c = currentTimeMillis;
        b bVar = this.f94682d;
        if (bVar != null) {
            bVar.a(currentTimeMillis - this.f94680b);
        }
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void e(String id, Object callerContext) {
        this.f94680b = System.currentTimeMillis();
    }
}
