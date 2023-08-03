package org.koin.core.instance;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.logger.Level;
import org.koin.core.scope.Scope;

/* compiled from: InstanceFactory.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 \u000e*\u0004\b\u0000\u0010\u00012\u00060\u0002j\u0002`\u0003:\u0001\bB\u0015\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\b\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u0014\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&J\u0014\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH&J\b\u0010\u000f\u001a\u00020\rH&R\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00108\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lorg/koin/core/instance/d;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lorg/koin/mp/Lockable;", "Lorg/koin/core/instance/c;", "context", "e", "(Lorg/koin/core/instance/c;)Ljava/lang/Object;", "a", "", "g", "Lorg/koin/core/scope/Scope;", "scope", "", "b", "d", "Lorg/koin/core/definition/a;", "Lorg/koin/core/definition/a;", "f", "()Lorg/koin/core/definition/a;", "beanDefinition", "<init>", "(Lorg/koin/core/definition/a;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public abstract class d<T> {
    @g

    /* renamed from: b  reason: collision with root package name */
    public static final a f92438b = new a(null);
    @g

    /* renamed from: c  reason: collision with root package name */
    public static final String f92439c = "\n\t";
    @g

    /* renamed from: a  reason: collision with root package name */
    private final org.koin.core.definition.a<T> f92440a;

    /* compiled from: InstanceFactory.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lorg/koin/core/instance/d$a;", "", "", "ERROR_SEPARATOR", "Ljava/lang/String;", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d(@g org.koin.core.definition.a<T> beanDefinition) {
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.f92440a = beanDefinition;
    }

    public static /* synthetic */ void c(d dVar, Scope scope, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drop");
        }
        if ((i4 & 1) != 0) {
            scope = null;
        }
        dVar.b(scope);
    }

    public static /* synthetic */ boolean h(d dVar, c cVar, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                cVar = null;
            }
            return dVar.g(cVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isCreated");
    }

    public T a(@g c context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Koin a10 = context.a();
        if (a10.u().g(Level.DEBUG)) {
            w8.b u9 = a10.u();
            u9.b("| create instance for " + this.f92440a);
        }
        try {
            y8.a b10 = context.b();
            if (b10 == null) {
                b10 = y8.b.a();
            }
            return this.f92440a.j().invoke(context.c(), b10);
        } catch (Exception e4) {
            String g4 = d9.b.f62011a.g(e4);
            w8.b u10 = a10.u();
            u10.d("Instance creation error : could not create instance for " + this.f92440a + ": " + g4);
            throw new InstanceCreationException("Could not create instance for " + this.f92440a, e4);
        }
    }

    public abstract void b(@h Scope scope);

    public abstract void d();

    public abstract T e(@g c cVar);

    @g
    public final org.koin.core.definition.a<T> f() {
        return this.f92440a;
    }

    public abstract boolean g(@h c cVar);
}
