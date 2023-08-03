package com.bumptech.glide;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.d;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.k;
import com.bumptech.glide.load.engine.prefill.d;
import com.bumptech.glide.load.model.a;
import com.bumptech.glide.load.model.b;
import com.bumptech.glide.load.model.d;
import com.bumptech.glide.load.model.e;
import com.bumptech.glide.load.model.f;
import com.bumptech.glide.load.model.k;
import com.bumptech.glide.load.model.s;
import com.bumptech.glide.load.model.stream.b;
import com.bumptech.glide.load.model.stream.d;
import com.bumptech.glide.load.model.stream.e;
import com.bumptech.glide.load.model.stream.f;
import com.bumptech.glide.load.model.stream.g;
import com.bumptech.glide.load.model.t;
import com.bumptech.glide.load.model.u;
import com.bumptech.glide.load.model.v;
import com.bumptech.glide.load.model.w;
import com.bumptech.glide.load.model.x;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.a0;
import com.bumptech.glide.load.resource.bitmap.d0;
import com.bumptech.glide.load.resource.bitmap.f0;
import com.bumptech.glide.load.resource.bitmap.h0;
import com.bumptech.glide.load.resource.bitmap.r;
import com.bumptech.glide.load.resource.bitmap.w;
import com.bumptech.glide.load.resource.bitmap.y;
import com.bumptech.glide.manager.o;
import com.bumptech.glide.request.target.p;
import com.bumptech.glide.util.m;
import e0.a;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Glide.java */
/* loaded from: classes.dex */
public class c implements ComponentCallbacks2 {

    /* renamed from: m  reason: collision with root package name */
    private static final String f7132m = "image_manager_disk_cache";

    /* renamed from: n  reason: collision with root package name */
    private static final String f7133n = "Glide";
    @GuardedBy("Glide.class")

    /* renamed from: o  reason: collision with root package name */
    private static volatile c f7134o;

    /* renamed from: p  reason: collision with root package name */
    private static volatile boolean f7135p;

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.k f7136a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f7137b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.cache.j f7138c;

    /* renamed from: d  reason: collision with root package name */
    private final e f7139d;

    /* renamed from: e  reason: collision with root package name */
    private final Registry f7140e;

    /* renamed from: f  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f7141f;

    /* renamed from: g  reason: collision with root package name */
    private final o f7142g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.manager.d f7143h;

    /* renamed from: j  reason: collision with root package name */
    private final a f7145j;
    @Nullable
    @GuardedBy("this")

    /* renamed from: l  reason: collision with root package name */
    private com.bumptech.glide.load.engine.prefill.b f7147l;
    @GuardedBy("managers")

    /* renamed from: i  reason: collision with root package name */
    private final List<k> f7144i = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private MemoryCategory f7146k = MemoryCategory.NORMAL;

    /* compiled from: Glide.java */
    /* loaded from: classes.dex */
    public interface a {
        @NonNull
        com.bumptech.glide.request.h build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v2, types: [com.bumptech.glide.load.resource.bitmap.k] */
    public c(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.k kVar, @NonNull com.bumptech.glide.load.engine.cache.j jVar, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar, @NonNull o oVar, @NonNull com.bumptech.glide.manager.d dVar, int i4, @NonNull a aVar, @NonNull Map<Class<?>, l<?, ?>> map, @NonNull List<com.bumptech.glide.request.g<Object>> list, f fVar) {
        Object obj;
        com.bumptech.glide.load.g d0Var;
        com.bumptech.glide.load.resource.bitmap.j jVar2;
        int i10;
        this.f7136a = kVar;
        this.f7137b = eVar;
        this.f7141f = bVar;
        this.f7138c = jVar;
        this.f7142g = oVar;
        this.f7143h = dVar;
        this.f7145j = aVar;
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.f7140e = registry;
        registry.t(new DefaultImageHeaderParser());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 27) {
            registry.t(new r());
        }
        List<ImageHeaderParser> g4 = registry.g();
        com.bumptech.glide.load.resource.gif.a aVar2 = new com.bumptech.glide.load.resource.gif.a(context, g4, eVar, bVar);
        com.bumptech.glide.load.g<ParcelFileDescriptor, Bitmap> h4 = h0.h(eVar);
        com.bumptech.glide.load.resource.bitmap.o oVar2 = new com.bumptech.glide.load.resource.bitmap.o(registry.g(), resources.getDisplayMetrics(), eVar, bVar);
        if (i11 >= 28 && fVar.b(d.C0040d.class)) {
            d0Var = new w();
            jVar2 = new com.bumptech.glide.load.resource.bitmap.k();
            obj = String.class;
        } else {
            com.bumptech.glide.load.resource.bitmap.j jVar3 = new com.bumptech.glide.load.resource.bitmap.j(oVar2);
            obj = String.class;
            d0Var = new d0(oVar2, bVar);
            jVar2 = jVar3;
        }
        if (i11 < 28 || !fVar.b(d.c.class)) {
            i10 = i11;
        } else {
            i10 = i11;
            registry.e("Animation", InputStream.class, Drawable.class, com.bumptech.glide.load.resource.drawable.a.f(g4, bVar));
            registry.e("Animation", ByteBuffer.class, Drawable.class, com.bumptech.glide.load.resource.drawable.a.a(g4, bVar));
        }
        com.bumptech.glide.load.resource.drawable.f fVar2 = new com.bumptech.glide.load.resource.drawable.f(context);
        s.c cVar = new s.c(resources);
        s.d dVar2 = new s.d(resources);
        s.b bVar2 = new s.b(resources);
        s.a aVar3 = new s.a(resources);
        com.bumptech.glide.load.resource.bitmap.e eVar2 = new com.bumptech.glide.load.resource.bitmap.e(bVar);
        com.bumptech.glide.load.resource.transcode.a aVar4 = new com.bumptech.glide.load.resource.transcode.a();
        com.bumptech.glide.load.resource.transcode.d dVar3 = new com.bumptech.glide.load.resource.transcode.d();
        ContentResolver contentResolver = context.getContentResolver();
        registry.a(ByteBuffer.class, new com.bumptech.glide.load.model.c()).a(InputStream.class, new t(bVar)).e(Registry.f7118m, ByteBuffer.class, Bitmap.class, jVar2).e(Registry.f7118m, InputStream.class, Bitmap.class, d0Var);
        if (ParcelFileDescriptorRewinder.c()) {
            registry.e(Registry.f7118m, ParcelFileDescriptor.class, Bitmap.class, new y(oVar2));
        }
        registry.e(Registry.f7118m, ParcelFileDescriptor.class, Bitmap.class, h4).e(Registry.f7118m, AssetFileDescriptor.class, Bitmap.class, h0.c(eVar)).d(Bitmap.class, Bitmap.class, v.a.b()).e(Registry.f7118m, Bitmap.class, Bitmap.class, new f0()).b(Bitmap.class, eVar2).e(Registry.f7119n, ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, jVar2)).e(Registry.f7119n, InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, d0Var)).e(Registry.f7119n, ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, h4)).b(BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.b(eVar, eVar2)).e("Animation", InputStream.class, com.bumptech.glide.load.resource.gif.c.class, new com.bumptech.glide.load.resource.gif.j(g4, aVar2, bVar)).e("Animation", ByteBuffer.class, com.bumptech.glide.load.resource.gif.c.class, aVar2).b(com.bumptech.glide.load.resource.gif.c.class, new com.bumptech.glide.load.resource.gif.d()).d(com.bumptech.glide.gifdecoder.a.class, com.bumptech.glide.gifdecoder.a.class, v.a.b()).e(Registry.f7118m, com.bumptech.glide.gifdecoder.a.class, Bitmap.class, new com.bumptech.glide.load.resource.gif.h(eVar)).c(Uri.class, Drawable.class, fVar2).c(Uri.class, Bitmap.class, new a0(fVar2, eVar)).u(new a.C0509a()).d(File.class, ByteBuffer.class, new d.b()).d(File.class, InputStream.class, new f.e()).c(File.class, File.class, new f0.a()).d(File.class, ParcelFileDescriptor.class, new f.b()).d(File.class, File.class, v.a.b()).u(new k.a(bVar));
        if (ParcelFileDescriptorRewinder.c()) {
            registry.u(new ParcelFileDescriptorRewinder.a());
        }
        Class cls = Integer.TYPE;
        Object obj2 = obj;
        registry.d(cls, InputStream.class, cVar).d(cls, ParcelFileDescriptor.class, bVar2).d(Integer.class, InputStream.class, cVar).d(Integer.class, ParcelFileDescriptor.class, bVar2).d(Integer.class, Uri.class, dVar2).d(cls, AssetFileDescriptor.class, aVar3).d(Integer.class, AssetFileDescriptor.class, aVar3).d(cls, Uri.class, dVar2).d(obj2, InputStream.class, new e.c()).d(Uri.class, InputStream.class, new e.c()).d(obj2, InputStream.class, new u.c()).d(obj2, ParcelFileDescriptor.class, new u.b()).d(obj2, AssetFileDescriptor.class, new u.a()).d(Uri.class, InputStream.class, new a.c(context.getAssets())).d(Uri.class, AssetFileDescriptor.class, new a.b(context.getAssets())).d(Uri.class, InputStream.class, new d.a(context)).d(Uri.class, InputStream.class, new e.a(context));
        int i12 = i10;
        if (i12 >= 29) {
            registry.d(Uri.class, InputStream.class, new f.c(context));
            registry.d(Uri.class, ParcelFileDescriptor.class, new f.b(context));
        }
        registry.d(Uri.class, InputStream.class, new w.d(contentResolver)).d(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver)).d(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver)).d(Uri.class, InputStream.class, new x.a()).d(URL.class, InputStream.class, new g.a()).d(Uri.class, File.class, new k.a(context)).d(com.bumptech.glide.load.model.g.class, InputStream.class, new b.a()).d(byte[].class, ByteBuffer.class, new b.a()).d(byte[].class, InputStream.class, new b.d()).d(Uri.class, Uri.class, v.a.b()).d(Drawable.class, Drawable.class, v.a.b()).c(Drawable.class, Drawable.class, new com.bumptech.glide.load.resource.drawable.g()).x(Bitmap.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.transcode.b(resources)).x(Bitmap.class, byte[].class, aVar4).x(Drawable.class, byte[].class, new com.bumptech.glide.load.resource.transcode.c(eVar, aVar4, dVar3)).x(com.bumptech.glide.load.resource.gif.c.class, byte[].class, dVar3);
        if (i12 >= 23) {
            com.bumptech.glide.load.g<ByteBuffer, Bitmap> d4 = h0.d(eVar);
            registry.c(ByteBuffer.class, Bitmap.class, d4);
            registry.c(ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, d4));
        }
        this.f7139d = new e(context, bVar, registry, new com.bumptech.glide.request.target.k(), aVar, map, list, kVar, fVar, i4);
    }

    @NonNull
    public static k C(@NonNull Activity activity) {
        return p(activity).j(activity);
    }

    @NonNull
    @Deprecated
    public static k D(@NonNull Fragment fragment) {
        return p(fragment.getActivity()).k(fragment);
    }

    @NonNull
    public static k E(@NonNull Context context) {
        return p(context).l(context);
    }

    @NonNull
    public static k F(@NonNull View view) {
        return p(view.getContext()).m(view);
    }

    @NonNull
    public static k G(@NonNull androidx.fragment.app.Fragment fragment) {
        return p(fragment.getContext()).n(fragment);
    }

    @NonNull
    public static k H(@NonNull FragmentActivity fragmentActivity) {
        return p(fragmentActivity).o(fragmentActivity);
    }

    @GuardedBy("Glide.class")
    private static void a(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        if (!f7135p) {
            f7135p = true;
            s(context, generatedAppGlideModule);
            f7135p = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    @VisibleForTesting
    public static void d() {
        com.bumptech.glide.load.resource.bitmap.u.d().l();
    }

    @NonNull
    public static c e(@NonNull Context context) {
        if (f7134o == null) {
            GeneratedAppGlideModule f10 = f(context.getApplicationContext());
            synchronized (c.class) {
                if (f7134o == null) {
                    a(context, f10);
                }
            }
        }
        return f7134o;
    }

    @Nullable
    private static GeneratedAppGlideModule f(Context context) {
        try {
            return (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable(f7133n, 5)) {
                Log.w(f7133n, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e4) {
            z(e4);
            return null;
        } catch (InstantiationException e10) {
            z(e10);
            return null;
        } catch (NoSuchMethodException e11) {
            z(e11);
            return null;
        } catch (InvocationTargetException e12) {
            z(e12);
            return null;
        }
    }

    @Nullable
    public static File l(@NonNull Context context) {
        return m(context, "image_manager_disk_cache");
    }

    @Nullable
    public static File m(@NonNull Context context, @NonNull String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            File file = new File(cacheDir, str);
            if (file.isDirectory() || file.mkdirs()) {
                return file;
            }
            return null;
        }
        if (Log.isLoggable(f7133n, 6)) {
            Log.e(f7133n, "default disk cache dir is null");
        }
        return null;
    }

    @NonNull
    private static o p(@Nullable Context context) {
        m.e(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return e(context).o();
    }

    @VisibleForTesting
    public static void q(@NonNull Context context, @NonNull d dVar) {
        GeneratedAppGlideModule f10 = f(context);
        synchronized (c.class) {
            if (f7134o != null) {
                y();
            }
            t(context, dVar, f10);
        }
    }

    @VisibleForTesting
    @Deprecated
    public static synchronized void r(c cVar) {
        synchronized (c.class) {
            if (f7134o != null) {
                y();
            }
            f7134o = cVar;
        }
    }

    @GuardedBy("Glide.class")
    private static void s(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        t(context, new d(), generatedAppGlideModule);
    }

    @GuardedBy("Glide.class")
    private static void t(@NonNull Context context, @NonNull d dVar, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<com.bumptech.glide.module.c> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
            emptyList = new com.bumptech.glide.module.e(applicationContext).a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
            Set<Class<?>> d4 = generatedAppGlideModule.d();
            Iterator<com.bumptech.glide.module.c> it = emptyList.iterator();
            while (it.hasNext()) {
                com.bumptech.glide.module.c next = it.next();
                if (d4.contains(next.getClass())) {
                    if (Log.isLoggable(f7133n, 3)) {
                        Log.d(f7133n, "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable(f7133n, 3)) {
            Iterator<com.bumptech.glide.module.c> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                Log.d(f7133n, "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        dVar.u(generatedAppGlideModule != null ? generatedAppGlideModule.e() : null);
        for (com.bumptech.glide.module.c cVar : emptyList) {
            cVar.a(applicationContext, dVar);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.a(applicationContext, dVar);
        }
        c b10 = dVar.b(applicationContext);
        for (com.bumptech.glide.module.c cVar2 : emptyList) {
            try {
                cVar2.b(applicationContext, b10, b10.f7140e);
            } catch (AbstractMethodError e4) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + cVar2.getClass().getName(), e4);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, b10, b10.f7140e);
        }
        applicationContext.registerComponentCallbacks(b10);
        f7134o = b10;
    }

    @VisibleForTesting
    public static void y() {
        synchronized (c.class) {
            if (f7134o != null) {
                f7134o.j().getApplicationContext().unregisterComponentCallbacks(f7134o);
                f7134o.f7136a.m();
            }
            f7134o = null;
        }
    }

    private static void z(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public void A(int i4) {
        com.bumptech.glide.util.o.b();
        synchronized (this.f7144i) {
            for (k kVar : this.f7144i) {
                kVar.onTrimMemory(i4);
            }
        }
        this.f7138c.a(i4);
        this.f7137b.a(i4);
        this.f7141f.a(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B(k kVar) {
        synchronized (this.f7144i) {
            if (this.f7144i.contains(kVar)) {
                this.f7144i.remove(kVar);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }

    public void b() {
        com.bumptech.glide.util.o.a();
        this.f7136a.e();
    }

    public void c() {
        com.bumptech.glide.util.o.b();
        this.f7138c.b();
        this.f7137b.b();
        this.f7141f.b();
    }

    @NonNull
    public com.bumptech.glide.load.engine.bitmap_recycle.b g() {
        return this.f7141f;
    }

    @NonNull
    public com.bumptech.glide.load.engine.bitmap_recycle.e h() {
        return this.f7137b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bumptech.glide.manager.d i() {
        return this.f7143h;
    }

    @NonNull
    public Context j() {
        return this.f7139d.getBaseContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e k() {
        return this.f7139d;
    }

    @NonNull
    public Registry n() {
        return this.f7140e;
    }

    @NonNull
    public o o() {
        return this.f7142g;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        c();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i4) {
        A(i4);
    }

    public synchronized void u(@NonNull d.a... aVarArr) {
        if (this.f7147l == null) {
            this.f7147l = new com.bumptech.glide.load.engine.prefill.b(this.f7138c, this.f7137b, (DecodeFormat) this.f7145j.build().K().c(com.bumptech.glide.load.resource.bitmap.o.f9262g));
        }
        this.f7147l.c(aVarArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(k kVar) {
        synchronized (this.f7144i) {
            if (!this.f7144i.contains(kVar)) {
                this.f7144i.add(kVar);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w(@NonNull p<?> pVar) {
        synchronized (this.f7144i) {
            for (k kVar : this.f7144i) {
                if (kVar.a0(pVar)) {
                    return true;
                }
            }
            return false;
        }
    }

    @NonNull
    public MemoryCategory x(@NonNull MemoryCategory memoryCategory) {
        com.bumptech.glide.util.o.b();
        this.f7138c.c(memoryCategory.getMultiplier());
        this.f7137b.c(memoryCategory.getMultiplier());
        MemoryCategory memoryCategory2 = this.f7146k;
        this.f7146k = memoryCategory;
        return memoryCategory2;
    }
}
