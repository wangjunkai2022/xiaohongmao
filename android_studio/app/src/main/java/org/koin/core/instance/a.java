package org.koin.core.instance;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: FactoryInstanceFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\u0017\u0010\f\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lorg/koin/core/instance/a;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/instance/d;", "Lorg/koin/core/instance/c;", "context", "", "g", "Lorg/koin/core/scope/Scope;", "scope", "", "b", "d", "e", "(Lorg/koin/core/instance/c;)Ljava/lang/Object;", "Lorg/koin/core/definition/a;", "beanDefinition", "<init>", "(Lorg/koin/core/definition/a;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a<T> extends d<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@g org.koin.core.definition.a<T> beanDefinition) {
        super(beanDefinition);
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
    }

    @Override // org.koin.core.instance.d
    public void b(@h Scope scope) {
        Function1<T, Unit> d4 = f().i().d();
        if (d4 != null) {
            d4.invoke(null);
        }
    }

    @Override // org.koin.core.instance.d
    public void d() {
    }

    @Override // org.koin.core.instance.d
    public T e(@g c context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context);
    }

    @Override // org.koin.core.instance.d
    public boolean g(@h c cVar) {
        return false;
    }
}
