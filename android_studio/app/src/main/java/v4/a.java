package v4;

import android.util.Log;
import io.sentry.protocol.y;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: DefaultLogCat.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J$\u0010\f\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000f"}, d2 = {"Lv4/a;", "Lv4/b;", "", y.b.f83916d, "msg", "", "c", "d", com.bumptech.glide.integration.webp.a.f8238c, "a", "", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "b", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class a implements b {
    @Override // v4.b
    public void a(@g String str, @g String str2) {
        Log.w(str, str2);
    }

    @Override // v4.b
    public void b(@g String str, @h String str2, @h Throwable th) {
        Log.e(str, str2, th);
    }

    @Override // v4.b
    public void c(@g String str, @g String str2) {
        Log.v(str, str2);
    }

    @Override // v4.b
    public void d(@g String str, @g String str2) {
        Log.i(str, str2);
    }

    @Override // v4.b
    public void debug(@g String str, @g String str2) {
        Log.d(str, str2);
    }
}
