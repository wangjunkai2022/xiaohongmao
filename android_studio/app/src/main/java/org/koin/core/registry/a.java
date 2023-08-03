package org.koin.core.registry;

import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.logger.Level;

/* compiled from: PropertyRegistry.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0010¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002J)\u0010\n\u001a\u00020\u0005\"\b\b\u0000\u0010\u0007*\u00020\u00012\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003J\u001d\u0010\r\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00072\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\u0005R\u001a\u0010\u0014\u001a\u00020\u00108\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016¨\u0006\u001a"}, d2 = {"Lorg/koin/core/registry/a;", "", "", "", "properties", "", "e", ExifInterface.GPS_DIRECTION_TRUE, "key", "value", "f", "(Ljava/lang/String;Ljava/lang/Object;)V", "b", "c", "(Ljava/lang/String;)Ljava/lang/Object;", "a", "Lorg/koin/core/Koin;", "Lorg/koin/core/Koin;", "d", "()Lorg/koin/core/Koin;", "_koin", "", "Ljava/util/Map;", "_values", "<init>", "(Lorg/koin/core/Koin;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Koin f92519a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f92520b;

    /* compiled from: PropertyRegistry.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: org.koin.core.registry.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0818a extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map<String, Object> f92521a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0818a(Map<String, ? extends Object> map) {
            super(0);
            this.f92521a = map;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final String invoke() {
            return "load " + this.f92521a.size() + " properties";
        }
    }

    public a(@g Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.f92519a = _koin;
        this.f92520b = d9.b.f62011a.h();
    }

    public final void a() {
        this.f92520b.clear();
    }

    public final void b(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f92520b.remove(key);
    }

    @h
    public final <T> T c(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.f92520b.get(key);
    }

    @g
    public final Koin d() {
        return this.f92519a;
    }

    public final void e(@g Map<String, ? extends Object> properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        this.f92519a.u().i(Level.DEBUG, new C0818a(properties));
        this.f92520b.putAll(properties);
    }

    public final <T> void f(@g String key, @g T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f92520b.put(key, value);
    }
}
