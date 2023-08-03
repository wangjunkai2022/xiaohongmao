package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.Okio;
import org.json.JSONObject;

/* compiled from: LottieCompositionFactory.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, o<com.airbnb.lottie.f>> f4271a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class a implements com.airbnb.lottie.j<com.airbnb.lottie.f> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f4272a;

        a(String str) {
            this.f4272a = str;
        }

        @Override // com.airbnb.lottie.j
        /* renamed from: b */
        public void a(com.airbnb.lottie.f fVar) {
            g.f4271a.remove(this.f4272a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class b implements com.airbnb.lottie.j<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f4273a;

        b(String str) {
            this.f4273a = str;
        }

        @Override // com.airbnb.lottie.j
        /* renamed from: b */
        public void a(Throwable th) {
            g.f4271a.remove(this.f4273a);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    class c implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f4274a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4275b;

        c(Context context, String str) {
            this.f4274a = context;
            this.f4275b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return com.airbnb.lottie.network.b.e(this.f4274a, this.f4275b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class d implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f4276a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4277b;

        d(Context context, String str) {
            this.f4276a = context;
            this.f4277b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return g.e(this.f4276a, this.f4277b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class e implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WeakReference f4278a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f4279b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f4280c;

        e(WeakReference weakReference, Context context, int i4) {
            this.f4278a = weakReference;
            this.f4279b = context;
            this.f4280c = i4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            Context context = (Context) this.f4278a.get();
            if (context == null) {
                context = this.f4279b;
            }
            return g.q(context, this.f4280c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class f implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f4281a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4282b;

        f(InputStream inputStream, String str) {
            this.f4281a = inputStream;
            this.f4282b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return g.h(this.f4281a, this.f4282b);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* renamed from: com.airbnb.lottie.g$g  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class CallableC0032g implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JSONObject f4283a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4284b;

        CallableC0032g(JSONObject jSONObject, String str) {
            this.f4283a = jSONObject;
            this.f4284b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return g.o(this.f4283a, this.f4284b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class h implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f4285a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4286b;

        h(String str, String str2) {
            this.f4285a = str;
            this.f4286b = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return g.n(this.f4285a, this.f4286b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class i implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JsonReader f4287a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4288b;

        i(JsonReader jsonReader, String str) {
            this.f4287a = jsonReader;
            this.f4288b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return g.k(this.f4287a, this.f4288b);
        }
    }

    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    class j implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ZipInputStream f4289a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f4290b;

        j(ZipInputStream zipInputStream, String str) {
            this.f4289a = zipInputStream;
            this.f4290b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return g.u(this.f4289a, this.f4290b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieCompositionFactory.java */
    /* loaded from: classes.dex */
    public class k implements Callable<n<com.airbnb.lottie.f>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.f f4291a;

        k(com.airbnb.lottie.f fVar) {
            this.f4291a = fVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public n<com.airbnb.lottie.f> call() {
            return new n<>(this.f4291a);
        }
    }

    private g() {
    }

    private static o<com.airbnb.lottie.f> b(@Nullable String str, Callable<n<com.airbnb.lottie.f>> callable) {
        com.airbnb.lottie.f b10 = str == null ? null : com.airbnb.lottie.model.f.c().b(str);
        if (b10 != null) {
            return new o<>(new k(b10));
        }
        if (str != null) {
            Map<String, o<com.airbnb.lottie.f>> map = f4271a;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        o<com.airbnb.lottie.f> oVar = new o<>(callable);
        oVar.f(new a(str));
        oVar.e(new b(str));
        f4271a.put(str, oVar);
        return oVar;
    }

    @Nullable
    private static com.airbnb.lottie.i c(com.airbnb.lottie.f fVar, String str) {
        for (com.airbnb.lottie.i iVar : fVar.i().values()) {
            if (iVar.c().equals(str)) {
                return iVar;
            }
        }
        return null;
    }

    public static o<com.airbnb.lottie.f> d(Context context, String str) {
        return b(str, new d(context.getApplicationContext(), str));
    }

    @WorkerThread
    public static n<com.airbnb.lottie.f> e(Context context, String str) {
        try {
            String str2 = "asset_" + str;
            if (str.endsWith(".zip")) {
                return u(new ZipInputStream(context.getAssets().open(str)), str2);
            }
            return h(context.getAssets().open(str), str2);
        } catch (IOException e4) {
            return new n<>(e4);
        }
    }

    @Deprecated
    public static o<com.airbnb.lottie.f> f(JSONObject jSONObject, @Nullable String str) {
        return b(str, new CallableC0032g(jSONObject, str));
    }

    public static o<com.airbnb.lottie.f> g(InputStream inputStream, @Nullable String str) {
        return b(str, new f(inputStream, str));
    }

    @WorkerThread
    public static n<com.airbnb.lottie.f> h(InputStream inputStream, @Nullable String str) {
        return i(inputStream, str, true);
    }

    @WorkerThread
    private static n<com.airbnb.lottie.f> i(InputStream inputStream, @Nullable String str, boolean z9) {
        try {
            return k(JsonReader.A(Okio.buffer(Okio.source(inputStream))), str);
        } finally {
            if (z9) {
                com.airbnb.lottie.utils.h.c(inputStream);
            }
        }
    }

    public static o<com.airbnb.lottie.f> j(JsonReader jsonReader, @Nullable String str) {
        return b(str, new i(jsonReader, str));
    }

    @WorkerThread
    public static n<com.airbnb.lottie.f> k(JsonReader jsonReader, @Nullable String str) {
        return l(jsonReader, str, true);
    }

    private static n<com.airbnb.lottie.f> l(JsonReader jsonReader, @Nullable String str, boolean z9) {
        try {
            try {
                com.airbnb.lottie.f a10 = com.airbnb.lottie.parser.t.a(jsonReader);
                if (str != null) {
                    com.airbnb.lottie.model.f.c().d(str, a10);
                }
                n<com.airbnb.lottie.f> nVar = new n<>(a10);
                if (z9) {
                    com.airbnb.lottie.utils.h.c(jsonReader);
                }
                return nVar;
            } catch (Exception e4) {
                n<com.airbnb.lottie.f> nVar2 = new n<>(e4);
                if (z9) {
                    com.airbnb.lottie.utils.h.c(jsonReader);
                }
                return nVar2;
            }
        } catch (Throwable th) {
            if (z9) {
                com.airbnb.lottie.utils.h.c(jsonReader);
            }
            throw th;
        }
    }

    public static o<com.airbnb.lottie.f> m(String str, @Nullable String str2) {
        return b(str2, new h(str, str2));
    }

    @WorkerThread
    public static n<com.airbnb.lottie.f> n(String str, @Nullable String str2) {
        return k(JsonReader.A(Okio.buffer(Okio.source(new ByteArrayInputStream(str.getBytes())))), str2);
    }

    @WorkerThread
    @Deprecated
    public static n<com.airbnb.lottie.f> o(JSONObject jSONObject, @Nullable String str) {
        return n(jSONObject.toString(), str);
    }

    public static o<com.airbnb.lottie.f> p(Context context, @RawRes int i4) {
        return b(x(context, i4), new e(new WeakReference(context), context.getApplicationContext(), i4));
    }

    @WorkerThread
    public static n<com.airbnb.lottie.f> q(Context context, @RawRes int i4) {
        try {
            return h(context.getResources().openRawResource(i4), x(context, i4));
        } catch (Resources.NotFoundException e4) {
            return new n<>(e4);
        }
    }

    public static o<com.airbnb.lottie.f> r(Context context, String str) {
        return b("url_" + str, new c(context, str));
    }

    @WorkerThread
    public static n<com.airbnb.lottie.f> s(Context context, String str) {
        return com.airbnb.lottie.network.b.e(context, str);
    }

    public static o<com.airbnb.lottie.f> t(ZipInputStream zipInputStream, @Nullable String str) {
        return b(str, new j(zipInputStream, str));
    }

    @WorkerThread
    public static n<com.airbnb.lottie.f> u(ZipInputStream zipInputStream, @Nullable String str) {
        try {
            return v(zipInputStream, str);
        } finally {
            com.airbnb.lottie.utils.h.c(zipInputStream);
        }
    }

    @WorkerThread
    private static n<com.airbnb.lottie.f> v(ZipInputStream zipInputStream, @Nullable String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            com.airbnb.lottie.f fVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    fVar = l(JsonReader.A(Okio.buffer(Okio.source(zipInputStream))), null, false).b();
                } else {
                    if (!name.contains(".png") && !name.contains(".webp")) {
                        zipInputStream.closeEntry();
                    }
                    hashMap.put(name.split("/")[split.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (fVar == null) {
                return new n<>(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                com.airbnb.lottie.i c10 = c(fVar, (String) entry.getKey());
                if (c10 != null) {
                    c10.g(com.airbnb.lottie.utils.h.m((Bitmap) entry.getValue(), c10.f(), c10.d()));
                }
            }
            for (Map.Entry<String, com.airbnb.lottie.i> entry2 : fVar.i().entrySet()) {
                if (entry2.getValue().a() == null) {
                    return new n<>(new IllegalStateException("There is no image for " + entry2.getValue().c()));
                }
            }
            if (str != null) {
                com.airbnb.lottie.model.f.c().d(str, fVar);
            }
            return new n<>(fVar);
        } catch (IOException e4) {
            return new n<>(e4);
        }
    }

    private static boolean w(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static String x(Context context, @RawRes int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("rawRes");
        sb.append(w(context) ? "_night_" : "_day_");
        sb.append(i4);
        return sb.toString();
    }

    public static void y(int i4) {
        com.airbnb.lottie.model.f.c().e(i4);
    }
}
