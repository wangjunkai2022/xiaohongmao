package org.koin.core.instance;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: ScopedInstanceFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0017\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\fJ\b\u0010\u000e\u001a\u00020\tH\u0016J\u001a\u0010\u0014\u001a\u00020\t2\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u0013\u001a\u00020\u0012R:\u0010\u0018\u001a&\u0012\b\u0012\u00060\u000fj\u0002`\u0010\u0012\u0004\u0012\u00028\u00000\u0015j\u0012\u0012\b\u0012\u00060\u000fj\u0002`\u0010\u0012\u0004\u0012\u00028\u0000`\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0017¨\u0006\u001d"}, d2 = {"Lorg/koin/core/instance/e;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/instance/d;", "Lorg/koin/core/instance/c;", "context", "", "g", "Lorg/koin/core/scope/Scope;", "scope", "", "b", "a", "(Lorg/koin/core/instance/c;)Ljava/lang/Object;", "e", "d", "", "Lorg/koin/core/scope/ScopeID;", "scopeID", "", "instance", "j", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "values", "Lorg/koin/core/definition/a;", "beanDefinition", "<init>", "(Lorg/koin/core/definition/a;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class e<T> extends d<T> {
    @g

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, T> f92441d;

    /* compiled from: ScopedInstanceFactory.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e<T> f92442a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f92443b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(e<T> eVar, c cVar) {
            super(0);
            this.f92442a = eVar;
            this.f92443b = cVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            if (this.f92442a.g(this.f92443b)) {
                return;
            }
            ((e) this.f92442a).f92441d.put(this.f92443b.c().x(), this.f92442a.a(this.f92443b));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@g org.koin.core.definition.a<T> beanDefinition) {
        super(beanDefinition);
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.f92441d = new HashMap<>();
    }

    @Override // org.koin.core.instance.d
    public T a(@g c context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.f92441d.get(context.c().x()) == null) {
            return (T) super.a(context);
        }
        T t9 = this.f92441d.get(context.c().x());
        if (t9 != null) {
            return t9;
        }
        throw new IllegalStateException(("Scoped instance not found for " + context.c().x() + " in " + f()).toString());
    }

    @Override // org.koin.core.instance.d
    public void b(@h Scope scope) {
        if (scope != null) {
            Function1<T, Unit> d4 = f().i().d();
            if (d4 != null) {
                d4.invoke(this.f92441d.get(scope.x()));
            }
            this.f92441d.remove(scope.x());
        }
    }

    @Override // org.koin.core.instance.d
    public void d() {
        this.f92441d.clear();
    }

    @Override // org.koin.core.instance.d
    public T e(@g c context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Intrinsics.areEqual(context.c().I(), f().n())) {
            d9.b.f62011a.i(this, new a(this, context));
            T t9 = this.f92441d.get(context.c().x());
            if (t9 != null) {
                return t9;
            }
            throw new IllegalStateException(("Scoped instance not found for " + context.c().x() + " in " + f()).toString());
        }
        throw new IllegalStateException(("Wrong Scope: trying to open instance for " + context.c().x() + " in " + f()).toString());
    }

    @Override // org.koin.core.instance.d
    public boolean g(@h c cVar) {
        Scope c10;
        return this.f92441d.get((cVar == null || (c10 = cVar.c()) == null) ? null : c10.x()) != null;
    }

    public final void j(@g String scopeID, @g Object instance) {
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.f92441d.put(scopeID, instance);
    }
}
