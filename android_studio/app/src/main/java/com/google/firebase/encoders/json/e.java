package com.google.firebase.encoders.json;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: JsonDataEncoderBuilder.java */
/* loaded from: classes2.dex */
public final class e implements m3.b<e> {

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.d<Object> f35498e = com.google.firebase.encoders.json.b.b();

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.firebase.encoders.f<String> f35499f = c.b();

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.f<Boolean> f35500g = d.b();

    /* renamed from: h  reason: collision with root package name */
    private static final b f35501h = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, com.google.firebase.encoders.d<?>> f35502a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, com.google.firebase.encoders.f<?>> f35503b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private com.google.firebase.encoders.d<Object> f35504c = f35498e;

    /* renamed from: d  reason: collision with root package name */
    private boolean f35505d = false;

    /* compiled from: JsonDataEncoderBuilder.java */
    /* loaded from: classes2.dex */
    class a implements com.google.firebase.encoders.a {
        a() {
        }

        @Override // com.google.firebase.encoders.a
        public String a(@NonNull Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                b(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }

        @Override // com.google.firebase.encoders.a
        public void b(@NonNull Object obj, @NonNull Writer writer) throws IOException {
            f fVar = new f(writer, e.this.f35502a, e.this.f35503b, e.this.f35504c, e.this.f35505d);
            fVar.x(obj, false);
            fVar.H();
        }
    }

    /* compiled from: JsonDataEncoderBuilder.java */
    /* loaded from: classes2.dex */
    private static final class b implements com.google.firebase.encoders.f<Date> {

        /* renamed from: a  reason: collision with root package name */
        private static final DateFormat f35507a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f35507a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        @Override // com.google.firebase.encoders.f, com.google.firebase.encoders.b
        /* renamed from: b */
        public void a(@NonNull Date date, @NonNull com.google.firebase.encoders.g gVar) throws IOException {
            gVar.add(f35507a.format(date));
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public e() {
        a(String.class, f35499f);
        a(Boolean.class, f35500g);
        a(Date.class, f35501h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void j(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    @NonNull
    public com.google.firebase.encoders.a g() {
        return new a();
    }

    @NonNull
    public e h(@NonNull m3.a aVar) {
        aVar.a(this);
        return this;
    }

    @NonNull
    public e i(boolean z9) {
        this.f35505d = z9;
        return this;
    }

    @Override // m3.b
    @NonNull
    /* renamed from: m */
    public <T> e b(@NonNull Class<T> cls, @NonNull com.google.firebase.encoders.d<? super T> dVar) {
        this.f35502a.put(cls, dVar);
        this.f35503b.remove(cls);
        return this;
    }

    @Override // m3.b
    @NonNull
    /* renamed from: n */
    public <T> e a(@NonNull Class<T> cls, @NonNull com.google.firebase.encoders.f<? super T> fVar) {
        this.f35503b.put(cls, fVar);
        this.f35502a.remove(cls);
        return this;
    }

    @NonNull
    public e o(@NonNull com.google.firebase.encoders.d<Object> dVar) {
        this.f35504c = dVar;
        return this;
    }
}
