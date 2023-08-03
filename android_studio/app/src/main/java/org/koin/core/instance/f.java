package org.koin.core.instance;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: SingleInstanceFactory.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0003\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\u0017\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0011¨\u0006\u0017"}, d2 = {"Lorg/koin/core/instance/f;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/instance/d;", "j", "()Ljava/lang/Object;", "Lorg/koin/core/instance/c;", "context", "", "g", "Lorg/koin/core/scope/Scope;", "scope", "", "b", "d", "a", "(Lorg/koin/core/instance/c;)Ljava/lang/Object;", "e", "Ljava/lang/Object;", "value", "Lorg/koin/core/definition/a;", "beanDefinition", "<init>", "(Lorg/koin/core/definition/a;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class f<T> extends d<T> {
    @h

    /* renamed from: d  reason: collision with root package name */
    private T f92444d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleInstanceFactory.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class a extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f<T> f92445a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f92446b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(f<T> fVar, c cVar) {
            super(0);
            this.f92445a = fVar;
            this.f92446b = cVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            if (this.f92445a.g(this.f92446b)) {
                return;
            }
            f<T> fVar = this.f92445a;
            ((f) fVar).f92444d = fVar.a(this.f92446b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@g org.koin.core.definition.a<T> beanDefinition) {
        super(beanDefinition);
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
    }

    private final T j() {
        T t9 = this.f92444d;
        if (t9 != null) {
            return t9;
        }
        throw new IllegalStateException("Single instance created couldn't return value".toString());
    }

    @Override // org.koin.core.instance.d
    public T a(@g c context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.f92444d == null) {
            return (T) super.a(context);
        }
        return j();
    }

    @Override // org.koin.core.instance.d
    public void b(@h Scope scope) {
        Function1<T, Unit> d4 = f().i().d();
        if (d4 != null) {
            d4.invoke(this.f92444d);
        }
        this.f92444d = null;
    }

    @Override // org.koin.core.instance.d
    public void d() {
        d.c(this, null, 1, null);
    }

    @Override // org.koin.core.instance.d
    public T e(@g c context) {
        Intrinsics.checkNotNullParameter(context, "context");
        d9.b.f62011a.i(this, new a(this, context));
        return j();
    }

    @Override // org.koin.core.instance.d
    public boolean g(@h c cVar) {
        return this.f92444d != null;
    }
}
