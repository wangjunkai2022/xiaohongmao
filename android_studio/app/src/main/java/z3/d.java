package z3;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

/* loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f94867a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f94868b;

    /* renamed from: c  reason: collision with root package name */
    private final a f94869c;

    /* renamed from: d  reason: collision with root package name */
    private final c f94870d;

    /* renamed from: e  reason: collision with root package name */
    private float f94871e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f94867a = context;
        this.f94868b = (AudioManager) context.getSystemService("audio");
        this.f94869c = aVar;
        this.f94870d = cVar;
    }

    private boolean b(float f10) {
        return f10 != this.f94871e;
    }

    private float d() {
        return this.f94869c.a(this.f94868b.getStreamVolume(3), this.f94868b.getStreamMaxVolume(3));
    }

    private void e() {
        this.f94870d.a(this.f94871e);
    }

    public void a() {
        this.f94871e = d();
        e();
        this.f94867a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void c() {
        this.f94867a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z9) {
        super.onChange(z9);
        float d4 = d();
        if (b(d4)) {
            this.f94871e = d4;
            e();
        }
    }
}
