package com.koushikdutta.async.future;

import android.text.TextUtils;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.future.Converter;
import com.koushikdutta.async.http.body.StringBody;
import java.io.InvalidObjectException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class Converter<R> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f44389d = "*/*";

    /* renamed from: e  reason: collision with root package name */
    public static final ConverterEntries f44390e;

    /* renamed from: a  reason: collision with root package name */
    Converters<Object, Object> f44391a;

    /* renamed from: b  reason: collision with root package name */
    MultiFuture<R> f44392b = new MultiFuture<>();

    /* renamed from: c  reason: collision with root package name */
    String f44393c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ConverterEntry<F, T> {

        /* renamed from: a  reason: collision with root package name */
        MimedType<F> f44395a;

        /* renamed from: b  reason: collision with root package name */
        MimedType<T> f44396b;

        /* renamed from: c  reason: collision with root package name */
        int f44397c;

        /* renamed from: d  reason: collision with root package name */
        TypeConverter<T, F> f44398d;

        ConverterEntry(Class<F> cls, String str, Class<T> cls2, String str2, int i4, TypeConverter<T, F> typeConverter) {
            this.f44395a = new MimedType<>(cls, str);
            this.f44396b = new MimedType<>(cls2, str2);
            this.f44397c = i4;
            this.f44398d = typeConverter;
        }

        public boolean equals(Object obj) {
            ConverterEntry converterEntry = (ConverterEntry) obj;
            return this.f44395a.equals(converterEntry.f44395a) && this.f44396b.equals(converterEntry.f44396b);
        }

        public int hashCode() {
            return this.f44395a.hashCode() ^ this.f44396b.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ConverterTransformers<F, T> extends LinkedHashMap<MimedType<T>, MultiTransformer<T, F>> {
        ConverterTransformers() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Converters<F, T> extends EnsureHashMap<MimedType<F>, ConverterTransformers<F, T>> {
        Converters() {
        }

        private static <F, T> void c(ConverterTransformers<F, T> converterTransformers, ConverterTransformers<F, T> converterTransformers2) {
            if (converterTransformers2 == null) {
                return;
            }
            converterTransformers.putAll(converterTransformers2);
        }

        public ConverterTransformers<F, T> d(MimedType<T> mimedType) {
            ConverterTransformers<F, T> converterTransformers = new ConverterTransformers<>();
            for (MimedType<F> mimedType2 : keySet()) {
                if (mimedType2.a(mimedType)) {
                    c(converterTransformers, get(mimedType2));
                }
            }
            return converterTransformers;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.future.Converter.EnsureHashMap
        /* renamed from: e */
        public ConverterTransformers b() {
            return new ConverterTransformers();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class EnsureHashMap<K, V> extends LinkedHashMap<K, V> {
        EnsureHashMap() {
        }

        synchronized V a(K k10) {
            if (!containsKey(k10)) {
                put(k10, b());
            }
            return get(k10);
        }

        protected abstract V b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MimedData<T> {

        /* renamed from: a  reason: collision with root package name */
        T f44399a;

        /* renamed from: b  reason: collision with root package name */
        String f44400b;

        public MimedData(T t9, String str) {
            this.f44399a = t9;
            this.f44400b = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MimedType<T> {

        /* renamed from: a  reason: collision with root package name */
        Class<T> f44401a;

        /* renamed from: b  reason: collision with root package name */
        String f44402b;

        MimedType(Class<T> cls, String str) {
            this.f44401a = cls;
            this.f44402b = str;
        }

        public boolean a(MimedType mimedType) {
            if (this.f44401a.isAssignableFrom(mimedType.f44401a)) {
                return b(mimedType.f44402b);
            }
            return false;
        }

        public boolean b(String str) {
            String[] split = str.split("/");
            String[] split2 = this.f44402b.split("/");
            if ("*".equals(split2[0]) || split[0].equals(split2[0])) {
                return "*".equals(split2[1]) || split[1].equals(split2[1]);
            }
            return false;
        }

        public String c() {
            return this.f44402b.split("/")[0];
        }

        public String d() {
            return this.f44402b.split("/")[1];
        }

        public boolean equals(Object obj) {
            MimedType mimedType = (MimedType) obj;
            return this.f44401a.equals(mimedType.f44401a) && this.f44402b.equals(mimedType.f44402b);
        }

        public int hashCode() {
            return this.f44401a.hashCode() ^ this.f44402b.hashCode();
        }

        public String toString() {
            return this.f44401a.getSimpleName() + " " + this.f44402b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MultiTransformer<T, F> extends MultiTransformFuture<MimedData<Future<T>>, MimedData<Future<F>>> {

        /* renamed from: m  reason: collision with root package name */
        TypeConverter<T, F> f44403m;

        /* renamed from: n  reason: collision with root package name */
        String f44404n;

        /* renamed from: o  reason: collision with root package name */
        int f44405o;

        public MultiTransformer(TypeConverter<T, F> typeConverter, String str, int i4) {
            this.f44403m = typeConverter;
            this.f44404n = str;
            this.f44405o = i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Future o0(String str, Object obj) throws Exception {
            return this.f44403m.a(obj, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void p0(MultiFuture multiFuture, Exception exc, Future future) {
            if (exc != null) {
                multiFuture.b0(exc);
            } else {
                multiFuture.Z(future);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.future.MultiTransformFuture
        /* renamed from: q0 */
        public void l0(MimedData<Future<F>> mimedData) {
            final String str = mimedData.f44400b;
            final MultiFuture multiFuture = new MultiFuture();
            e0(new MimedData(multiFuture, Converter.B(str, this.f44404n)));
            mimedData.f44399a.F(new ThenCallback() { // from class: com.koushikdutta.async.future.p
                @Override // com.koushikdutta.async.future.ThenCallback
                public final Object a(Object obj) {
                    Future o02;
                    o02 = Converter.MultiTransformer.this.o0(str, obj);
                    return o02;
                }
            }).B(new FutureCallback() { // from class: com.koushikdutta.async.future.o
                @Override // com.koushikdutta.async.future.FutureCallback
                public final void c(Exception exc, Object obj) {
                    Converter.MultiTransformer.p0(MultiFuture.this, exc, (Future) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class PathInfo {

        /* renamed from: a  reason: collision with root package name */
        MultiTransformer<Object, Object> f44406a;

        /* renamed from: b  reason: collision with root package name */
        String f44407b;

        /* renamed from: c  reason: collision with root package name */
        MimedType f44408c;

        PathInfo() {
        }

        static int a(ArrayDeque<PathInfo> arrayDeque) {
            Iterator<PathInfo> it = arrayDeque.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                i4 += it.next().f44406a.f44405o;
            }
            return i4;
        }
    }

    static {
        ConverterEntries converterEntries = new ConverterEntries();
        f44390e = converterEntries;
        d dVar = d.f44447a;
        j jVar = j.f44458a;
        i iVar = i.f44457a;
        k kVar = k.f44459a;
        e eVar = e.f44450a;
        n nVar = n.f44462a;
        m mVar = m.f44461a;
        l lVar = l.f44460a;
        b bVar = b.f44441a;
        c cVar = c.f44444a;
        converterEntries.b(ByteBuffer.class, null, ByteBufferList.class, null, nVar);
        converterEntries.b(String.class, null, byte[].class, StringBody.f44760c, mVar);
        converterEntries.b(byte[].class, null, ByteBufferList.class, null, dVar);
        converterEntries.b(ByteBufferList.class, null, byte[].class, null, jVar);
        converterEntries.b(ByteBufferList.class, null, ByteBuffer.class, null, iVar);
        converterEntries.b(ByteBufferList.class, StringBody.f44760c, String.class, null, kVar);
        converterEntries.b(byte[].class, null, ByteBuffer.class, null, eVar);
        converterEntries.b(String.class, "application/json", JSONObject.class, null, lVar);
        converterEntries.b(JSONObject.class, null, String.class, "application/json", bVar);
        converterEntries.b(byte[].class, StringBody.f44760c, String.class, null, cVar);
    }

    protected Converter(Future future, String str) {
        this.f44393c = TextUtils.isEmpty(str) ? "*/*" : str;
        this.f44392b.Z(future);
    }

    static String B(String str, String str2) {
        String[] split = str2.split("/");
        String[] split2 = str.split("/");
        String str3 = !"*".equals(split[0]) ? split[0] : split2[0];
        String str4 = !"*".equals(split[1]) ? split[1] : split2[1];
        return str3 + "/" + str4;
    }

    private <T> boolean C(MimedType<T> mimedType, ArrayDeque<PathInfo> arrayDeque, ArrayDeque<PathInfo> arrayDeque2, MimedType mimedType2, HashSet<MimedType> hashSet) {
        if (mimedType.a(mimedType2)) {
            arrayDeque.clear();
            arrayDeque.addAll(arrayDeque2);
            return true;
        }
        boolean z9 = false;
        if ((arrayDeque.isEmpty() || PathInfo.a(arrayDeque2) < PathInfo.a(arrayDeque)) && !hashSet.contains(mimedType2)) {
            hashSet.add(mimedType2);
            ConverterTransformers<Object, Object> d4 = this.f44391a.d(mimedType2);
            for (MimedType<T> mimedType3 : d4.keySet()) {
                MimedType mimedType4 = new MimedType(mimedType3.f44401a, B(mimedType2.f44402b, mimedType3.f44402b));
                PathInfo pathInfo = new PathInfo();
                pathInfo.f44406a = d4.get(mimedType3);
                pathInfo.f44407b = mimedType4.f44402b;
                pathInfo.f44408c = mimedType3;
                arrayDeque2.addLast(pathInfo);
                try {
                    z9 |= C(mimedType, arrayDeque, arrayDeque2, mimedType4, hashSet);
                } finally {
                    arrayDeque2.removeLast();
                }
            }
            if (z9) {
                hashSet.remove(mimedType2);
            }
            return z9;
        }
        return false;
    }

    private final synchronized <T> Future<T> E(Class cls, Class<T> cls2, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "*/*";
        }
        if (this.f44391a == null) {
            this.f44391a = new Converters<>();
            Iterator<ConverterEntry> it = o().f44394a.iterator();
            while (it.hasNext()) {
                ConverterEntry next = it.next();
                this.f44391a.a(next.f44395a).put(next.f44396b, new MultiTransformer(next.f44398d, next.f44396b.f44402b, next.f44397c));
            }
        }
        MimedType<T> mimedType = new MimedType<>(cls2, str);
        ArrayDeque<PathInfo> arrayDeque = new ArrayDeque<>();
        if (C(mimedType, arrayDeque, new ArrayDeque<>(), new MimedType(cls, this.f44393c), new HashSet<>())) {
            PathInfo removeFirst = arrayDeque.removeFirst();
            new SimpleFuture(new MimedData(this.f44392b, this.f44393c)).B(removeFirst.f44406a);
            while (!arrayDeque.isEmpty()) {
                PathInfo removeFirst2 = arrayDeque.removeFirst();
                removeFirst.f44406a.B(removeFirst2.f44406a);
                removeFirst = removeFirst2;
            }
            return (Future<R>) removeFirst.f44406a.t(h.f44456a);
        }
        return new SimpleFuture((Exception) new InvalidObjectException("unable to find converter"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public final synchronized <T> Future<T> A(Object obj, Class<T> cls, String str) {
        if (cls.isInstance(obj)) {
            return new SimpleFuture(obj);
        }
        return E(obj.getClass(), cls, str);
    }

    public static <T> Converter<T> m(Future<T> future) {
        return n(future, null);
    }

    public static <T> Converter<T> n(Future<T> future, String str) {
        return new Converter<>(future, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future p(JSONObject jSONObject, String str) throws Exception {
        return new SimpleFuture(jSONObject).F(a.f44438a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future q(byte[] bArr, String str) throws Exception {
        return new SimpleFuture(new String(bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future r(byte[] bArr, String str) throws Exception {
        return new SimpleFuture(new ByteBufferList(ByteBufferList.g(ByteBuffer.wrap(bArr))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future s(ByteBufferList byteBufferList, String str) throws Exception {
        return new SimpleFuture(byteBufferList.p());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future t(ByteBufferList byteBufferList, String str) throws Exception {
        return new SimpleFuture(byteBufferList.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future u(ByteBufferList byteBufferList, String str) throws Exception {
        return new SimpleFuture(byteBufferList.H());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future v(byte[] bArr, String str) throws Exception {
        return new SimpleFuture(ByteBufferList.g(ByteBuffer.wrap(bArr)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future w(ByteBuffer byteBuffer, String str) throws Exception {
        return new SimpleFuture(new ByteBufferList(ByteBufferList.g(byteBuffer)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future x(String str, String str2) throws Exception {
        return new SimpleFuture(str.getBytes());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future y(String str, String str2) throws Exception {
        return new SimpleFuture(str).F(f.f44452a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Future z(MimedData mimedData) throws Exception {
        return (Future) mimedData.f44399a;
    }

    public final <T> Future<T> D(Class<T> cls) {
        return F(cls, null);
    }

    public <T> Future<T> F(final Class<T> cls, final String str) {
        return (Future<R>) this.f44392b.t(new ThenFutureCallback() { // from class: com.koushikdutta.async.future.g
            @Override // com.koushikdutta.async.future.ThenFutureCallback
            public final Future a(Object obj) {
                Future A;
                A = Converter.this.A(cls, str, obj);
                return A;
            }
        });
    }

    protected ConverterEntries o() {
        return new ConverterEntries(f44390e);
    }

    /* loaded from: classes3.dex */
    public static class ConverterEntries {

        /* renamed from: a  reason: collision with root package name */
        public ArrayList<ConverterEntry> f44394a;

        public ConverterEntries() {
            this.f44394a = new ArrayList<>();
        }

        public synchronized <F, T> void a(Class<F> cls, String str, Class<T> cls2, String str2, int i4, TypeConverter<T, F> typeConverter) {
            if (TextUtils.isEmpty(str)) {
                str = "*/*";
            }
            String str3 = str;
            if (TextUtils.isEmpty(str2)) {
                str2 = "*/*";
            }
            this.f44394a.add(new ConverterEntry(cls, str3, cls2, str2, i4, typeConverter));
        }

        public synchronized <F, T> void b(Class<F> cls, String str, Class<T> cls2, String str2, TypeConverter<T, F> typeConverter) {
            a(cls, str, cls2, str2, 1, typeConverter);
        }

        public synchronized boolean c(TypeConverter typeConverter) {
            Iterator<ConverterEntry> it = this.f44394a.iterator();
            while (it.hasNext()) {
                ConverterEntry next = it.next();
                if (next.f44398d == typeConverter) {
                    return this.f44394a.remove(next);
                }
            }
            return false;
        }

        public ConverterEntries(ConverterEntries converterEntries) {
            ArrayList<ConverterEntry> arrayList = new ArrayList<>();
            this.f44394a = arrayList;
            arrayList.addAll(converterEntries.f44394a);
        }
    }
}
