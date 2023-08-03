package i1;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import v1.t;

/* compiled from: ControllerListener2.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface c<INFO> {

    /* compiled from: ControllerListener2.java */
    /* loaded from: classes.dex */
    public static class a {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        public Map<String, Object> f69241a;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        public Map<String, Object> f69242b;
        @r7.h

        /* renamed from: c  reason: collision with root package name */
        public Map<String, Object> f69243c;
        @r7.h

        /* renamed from: d  reason: collision with root package name */
        public Map<String, Object> f69244d;
        @r7.h

        /* renamed from: e  reason: collision with root package name */
        public Object f69245e;
        @r7.h

        /* renamed from: f  reason: collision with root package name */
        public Uri f69246f;
        @r7.h

        /* renamed from: i  reason: collision with root package name */
        public Object f69249i;

        /* renamed from: g  reason: collision with root package name */
        public int f69247g = -1;

        /* renamed from: h  reason: collision with root package name */
        public int f69248h = -1;

        /* renamed from: j  reason: collision with root package name */
        public float f69250j = -1.0f;

        /* renamed from: k  reason: collision with root package name */
        public float f69251k = -1.0f;

        private static Map<String, Object> a(@t Map<String, Object> map) {
            if (map == null) {
                return null;
            }
            return new ConcurrentHashMap(map);
        }

        public static a c(@r7.h Map<String, Object> componentExtras) {
            a aVar = new a();
            aVar.f69241a = componentExtras;
            return aVar;
        }

        public a b() {
            a aVar = new a();
            aVar.f69241a = a(this.f69241a);
            aVar.f69242b = a(this.f69242b);
            aVar.f69243c = a(this.f69243c);
            aVar.f69244d = a(this.f69244d);
            aVar.f69245e = this.f69245e;
            aVar.f69246f = this.f69246f;
            aVar.f69247g = this.f69247g;
            aVar.f69248h = this.f69248h;
            aVar.f69249i = this.f69249i;
            aVar.f69250j = this.f69250j;
            aVar.f69251k = this.f69251k;
            return aVar;
        }
    }

    void a(String id, @r7.h INFO imageInfo);

    void b(String id, @r7.h INFO imageInfo, @r7.h a extraData);

    void d(String id, @r7.h Throwable throwable, @r7.h a extraData);

    void h(String id);

    void i(String id, @r7.h Object callerContext, @r7.h a extraData);

    void k(String id, @r7.h a extraData);
}
