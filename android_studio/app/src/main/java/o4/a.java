package o4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: Event.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0016\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B\u000f\u0012\u0006\u0010\f\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0004R$\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00068\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lo4/a;", ExifInterface.GPS_DIRECTION_TRUE, "", "a", "()Ljava/lang/Object;", "c", "", "<set-?>", "hasBeenHandled", "Z", "b", "()Z", "content", "<init>", "(Ljava/lang/Object;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f89942a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f89943b;

    public a(T t9) {
        this.f89942a = t9;
    }

    @m8.h
    public final T a() {
        if (this.f89943b) {
            return null;
        }
        this.f89943b = true;
        return this.f89942a;
    }

    public final boolean b() {
        return this.f89943b;
    }

    public final T c() {
        return this.f89942a;
    }
}
