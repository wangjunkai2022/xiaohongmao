package org.koin.core.registry;

import java.io.ByteArrayInputStream;
import java.net.URL;
import java.util.Map;
import java.util.Properties;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import m8.g;
import org.koin.core.Koin;
import org.koin.core.error.NoPropertyFileFoundException;
import org.koin.core.logger.Level;

/* compiled from: PropertyRegistryExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0005H\u0002\u001a\n\u0010\n\u001a\u00020\u0003*\u00020\u0000¨\u0006\u000b"}, d2 = {"Lorg/koin/core/registry/a;", "Ljava/util/Properties;", "properties", "", "d", "", "fileName", "b", "content", "c", "a", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {

    /* compiled from: PropertyRegistryExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f92522a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final String invoke() {
            return "load properties from environment";
        }
    }

    /* compiled from: PropertyRegistryExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: org.koin.core.registry.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0819b extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f92523a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0819b(String str) {
            super(0);
            this.f92523a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final String invoke() {
            return "load properties from " + this.f92523a;
        }
    }

    /* compiled from: PropertyRegistryExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    static final class c extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f92524a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str) {
            super(0);
            this.f92524a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final String invoke() {
            return "loaded properties from file:'" + this.f92524a + '\'';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PropertyRegistryExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class d extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Properties f92525a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Properties properties) {
            super(0);
            this.f92525a = properties;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final String invoke() {
            return "load " + this.f92525a.size() + " properties";
        }
    }

    public static final void a(@g org.koin.core.registry.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        aVar.d().u().i(Level.DEBUG, a.f92522a);
        Properties sysProperties = System.getProperties();
        Intrinsics.checkNotNullExpressionValue(sysProperties, "sysProperties");
        d(aVar, sysProperties);
        Map<String, String> map = System.getenv();
        Intrinsics.checkNotNullExpressionValue(map, "getenv()");
        Properties properties = new Properties();
        properties.putAll(map);
        d(aVar, properties);
    }

    public static final void b(@g org.koin.core.registry.a aVar, @g String fileName) {
        String str;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        aVar.d().u().i(Level.DEBUG, new C0819b(fileName));
        URL resource = Koin.class.getResource(fileName);
        if (resource != null) {
            str = new String(TextStreamsKt.readBytes(resource), Charsets.UTF_8);
        } else {
            str = null;
        }
        if (str != null) {
            aVar.d().u().i(Level.INFO, new c(fileName));
            d(aVar, c(str));
            return;
        }
        throw new NoPropertyFileFoundException("No properties found for file '" + fileName + '\'');
    }

    private static final Properties c(String str) {
        Properties properties = new Properties();
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        properties.load(new ByteArrayInputStream(bytes));
        return properties;
    }

    public static final void d(@g org.koin.core.registry.a aVar, @g Properties properties) {
        Map map;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(properties, "properties");
        aVar.d().u().i(Level.DEBUG, new d(properties));
        map = MapsKt__MapsKt.toMap(properties);
        for (Map.Entry entry : map.entrySet()) {
            aVar.f((String) entry.getKey(), (String) entry.getValue());
        }
    }
}
