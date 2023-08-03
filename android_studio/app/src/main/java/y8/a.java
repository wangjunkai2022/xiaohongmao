package y8;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.error.DefinitionParameterException;
import org.koin.core.error.NoParameterFoundException;

/* compiled from: ParametersHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0001\u001bB\u0019\u0012\u0010\b\u0002\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\"¢\u0006\u0004\b,\u0010-J)\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\t\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\u0086\n¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000b\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\u0086\n¢\u0006\u0004\b\u000b\u0010\nJ\u0018\u0010\f\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\u0086\n¢\u0006\u0004\b\f\u0010\nJ\u0018\u0010\r\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\u0086\n¢\u0006\u0004\b\r\u0010\nJ\u0018\u0010\u000e\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\u0086\n¢\u0006\u0004\b\u000e\u0010\nJ\u001e\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\u0004\u0010\u000fJ#\u0010\u0012\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00028\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0006\u0010\u0014\u001a\u00020\u0003J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015J\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0001J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0001J\u001c\u0010\u001c\u001a\u00028\u0000\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\u001c\u0010\nJ#\u0010\u001d\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00022\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010\u001f\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\u0086\b¢\u0006\u0004\b\u001f\u0010\nJ\b\u0010!\u001a\u00020 H\u0016R(\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\"8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b#\u0010$\u0012\u0004\b'\u0010(\u001a\u0004\b%\u0010&R\u0019\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010)8F¢\u0006\u0006\u001a\u0004\b*\u0010&¨\u0006."}, d2 = {"Ly8/a;", "", ExifInterface.GPS_DIRECTION_TRUE, "", ContextChain.TAG_INFRA, "Lkotlin/reflect/KClass;", "clazz", "g", "(ILkotlin/reflect/KClass;)Ljava/lang/Object;", "b", "()Ljava/lang/Object;", "c", "d", "e", "f", "(I)Ljava/lang/Object;", "t", "", "r", "(ILjava/lang/Object;)V", "s", "", "p", "q", "index", "value", "o", "a", "h", "k", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "j", "", "toString", "", "_values", "Ljava/util/List;", "m", "()Ljava/util/List;", "get_values$annotations", "()V", "", "l", "values", "<init>", "(Ljava/util/List;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public class a {
    @g

    /* renamed from: b  reason: collision with root package name */
    public static final C0851a f94744b = new C0851a(null);

    /* renamed from: c  reason: collision with root package name */
    public static final int f94745c = 5;
    @g

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f94746a;

    /* compiled from: ParametersHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Ly8/a$a;", "", "", "MAX_PARAMS", "I", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: y8.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0851a {
        private C0851a() {
        }

        public /* synthetic */ C0851a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a() {
        this(null, 1, null);
    }

    public a(@g List<Object> _values) {
        Intrinsics.checkNotNullParameter(_values, "_values");
        this.f94746a = _values;
    }

    @PublishedApi
    public static /* synthetic */ void n() {
    }

    @g
    public final a a(@g Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f94746a.add(value);
        return this;
    }

    public final /* synthetic */ <T> T b() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) g(0, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ <T> T c() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) g(1, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ <T> T d() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) g(2, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ <T> T e() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) g(3, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ <T> T f() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) g(4, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public <T> T g(int i4, @g KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (this.f94746a.size() > i4) {
            return (T) this.f94746a.get(i4);
        }
        throw new NoParameterFoundException("Can't get injected parameter #" + i4 + " from " + this + " for type '" + c9.b.a(clazz) + '\'');
    }

    public final /* synthetic */ <T> T h() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        T t9 = (T) k(Reflection.getOrCreateKotlinClass(Object.class));
        if (t9 != null) {
            return t9;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No value found for type '");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        sb.append(c9.b.a(Reflection.getOrCreateKotlinClass(Object.class)));
        sb.append('\'');
        throw new DefinitionParameterException(sb.toString());
    }

    public final <T> T i(int i4) {
        return (T) this.f94746a.get(i4);
    }

    public final /* synthetic */ <T> T j() {
        T t9;
        Iterator<T> it = m().iterator();
        do {
            t9 = null;
            if (!it.hasNext()) {
                break;
            }
            T next = it.next();
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (next instanceof Object) {
                t9 = next;
                continue;
            }
        } while (t9 == null);
        return t9;
    }

    @h
    public <T> T k(@g KClass<?> clazz) {
        T t9;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Iterator<T> it = this.f94746a.iterator();
        do {
            t9 = null;
            if (!it.hasNext()) {
                break;
            }
            T next = it.next();
            if (clazz.isInstance(next)) {
                t9 = next;
                continue;
            }
        } while (t9 == null);
        return t9;
    }

    @g
    public final List<Object> l() {
        return this.f94746a;
    }

    @g
    public final List<Object> m() {
        return this.f94746a;
    }

    @g
    public final a o(int i4, @g Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f94746a.add(i4, value);
        return this;
    }

    public final boolean p() {
        return s() == 0;
    }

    public final boolean q() {
        return !p();
    }

    public final <T> void r(int i4, T t9) {
        List<Object> list = this.f94746a;
        Objects.requireNonNull(t9, "null cannot be cast to non-null type kotlin.Any");
        list.set(i4, t9);
    }

    public final int s() {
        return this.f94746a.size();
    }

    @g
    public String toString() {
        List list;
        StringBuilder sb = new StringBuilder();
        sb.append("DefinitionParameters");
        list = CollectionsKt___CollectionsKt.toList(this.f94746a);
        sb.append(list);
        return sb.toString();
    }

    public /* synthetic */ a(List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? new ArrayList() : list);
    }
}
